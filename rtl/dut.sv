//---------------------------------------------------------------------------
// DUT - 564/464 Project
//---------------------------------------------------------------------------
`include "common.vh"

module MyDesign(
//---------------------------------------------------------------------------
//System signals
  input wire reset_n                      ,  
  input wire clk                          ,

//---------------------------------------------------------------------------
//Control signals
  input wire dut_valid                    , 
  output wire dut_ready                   ,


//---------------------------------------------------------------------------
//input SRAM interface
  output wire                           dut__tb__sram_input_write_enable  ,
  output wire [`SRAM_ADDR_RANGE     ]   dut__tb__sram_input_write_address ,
  output wire [`SRAM_DATA_RANGE     ]   dut__tb__sram_input_write_data    ,
  output wire [`SRAM_ADDR_RANGE     ]   dut__tb__sram_input_read_address  , 
  input  wire [`SRAM_DATA_RANGE     ]   tb__dut__sram_input_read_data     ,     

//weight SRAM interface
  output wire                           dut__tb__sram_weight_write_enable  ,
  output wire [`SRAM_ADDR_RANGE     ]   dut__tb__sram_weight_write_address ,
  output wire [`SRAM_DATA_RANGE     ]   dut__tb__sram_weight_write_data    ,
  output wire [`SRAM_ADDR_RANGE     ]   dut__tb__sram_weight_read_address  , 
  input  wire [`SRAM_DATA_RANGE     ]   tb__dut__sram_weight_read_data     ,     

//result SRAM interface
  output wire                           dut__tb__sram_result_write_enable  ,
  output wire [`SRAM_ADDR_RANGE     ]   dut__tb__sram_result_write_address ,
  output wire [`SRAM_DATA_RANGE     ]   dut__tb__sram_result_write_data    ,
  output wire [`SRAM_ADDR_RANGE     ]   dut__tb__sram_result_read_address  , 
  input  wire [`SRAM_DATA_RANGE     ]   tb__dut__sram_result_read_data     ,     

//scratchpad SRAM interface
  output wire                           dut__tb__sram_scratchpad_write_enable  ,
  output wire [`SRAM_ADDR_RANGE     ]   dut__tb__sram_scratchpad_write_address ,
  output wire [`SRAM_DATA_RANGE     ]   dut__tb__sram_scratchpad_write_data    ,
  output wire [`SRAM_ADDR_RANGE     ]   dut__tb__sram_scratchpad_read_address  , 
  input  wire [`SRAM_DATA_RANGE     ]   tb__dut__sram_scratchpad_read_data  

);

// Multiplexed MAC inputs and outputs
wire [`SRAM_ADDR_RANGE] MAC_input_A_read_addr, MAC_input_B_read_addr;
reg [`SRAM_DATA_RANGE] MAC_input_A_read_data, MAC_input_B_read_data; 




// Scratchpad control registers
reg scratchpad_write_enable; 
reg [`SRAM_DATA_RANGE] scratchpad_write_data; 
reg [`SRAM_ADDR_RANGE] scratchpad_write_address, transposed_addr;

assign dut__tb__sram_scratchpad_write_enable = scratchpad_write_enable; 
assign dut__tb__sram_scratchpad_write_data = scratchpad_write_data; 
assign dut__tb__sram_scratchpad_write_address = scratchpad_write_address; 


// DUT control signals
reg dut_ready_reg;
assign dut_ready = dut_ready_reg; 

// MAC control signals
reg MAC_valid, override_dimensions, override_input_weight_read_base_addresses; 
wire MAC_ready;
wire [`SRAM_DATA_RANGE] input_num_rows, input_num_cols, weight_num_rows, weight_num_cols; 
reg [`SRAM_ADDR_RANGE] sram_weight_read_base_address, sram_input_read_base_address, sram_result_write_start_address; 
reg [`SRAM_ADDR_RANGE] scratchpad_V_read_start_addr, scratchpad_K_read_start_addr, result_S_read_start_addr;
reg [`SRAM_DATA_RANGE] override_input_num_rows_cols, override_weight_num_rows_cols; 
wire [`SRAM_DATA_RANGE] MAC_curr_row, MAC_curr_col; 

// FSM control signals
reg reset_read_write_start_addr, 
    save_current_read_write_addr, 
    save_scratchpad_V_read_start_addr, 
    save_scratchpad_K_read_start_addr,
    save_result_S_read_start_addr,
    write_to_scratchpad, 
    MAC_input_A_from_result_SRAM, 
    MAC_input_B_from_scratchpad_SRAM, 
    transpose_scratchpad_write_address, 
    set_scratchpad_K_read_start_address, 
    set_scratchpad_V_read_start_address; 


//--------------------- Setting up the FSM ------------------------------
parameter [3:0] // synopsys enum states
  RESET = 4'd0,
  START_Q_CALC = 4'd1, 
  WAIT_FOR_Q_CALC = 4'd2, 
  START_K_CALC = 4'd3, 
  WAIT_FOR_K_CALC = 4'd4, 
  START_V_CALC = 4'd5, 
  WAIT_FOR_V_CALC = 4'd6, 
  START_S_CALC = 4'd7, 
  WAIT_FOR_S_CALC = 4'd8, 
  START_Z_CALC = 4'd9, 
  WAIT_FOR_Z_CALC = 4'd10; 

reg [3:0] /* synopsys enum states */ current_state, next_state;
// synopsys state_vector current_state

// Reset logic
always @(posedge clk or negedge reset_n) begin 
  if (!reset_n) current_state <= RESET; 
  else current_state <= next_state; 
end

//--------------------- FSM -----------------------------------------------
always @(*) begin
  dut_ready_reg = 0; 
  MAC_valid = 0; 
  override_dimensions = 0; 
  reset_read_write_start_addr = 0; 
  save_current_read_write_addr = 0; 
  save_scratchpad_V_read_start_addr = 0; 
  save_scratchpad_K_read_start_addr = 0; 
  save_result_S_read_start_addr = 0; 
  write_to_scratchpad = 0; 
  MAC_input_A_from_result_SRAM = 0; 
  MAC_input_B_from_scratchpad_SRAM = 0; 
  set_scratchpad_K_read_start_address = 0; 
  set_scratchpad_V_read_start_address = 0;
  transpose_scratchpad_write_address = 0; 
  override_weight_num_rows_cols = 0;
  override_input_num_rows_cols = 0; 

  case (current_state) // synopsys full_case parallel_case
    RESET: begin
      dut_ready_reg = 1; 
      sram_input_read_base_address = 1; 
      if (dut_valid) begin 
        next_state = START_Q_CALC; 
      end
      else next_state = RESET; 
    end

    START_Q_CALC: begin
      MAC_valid = 1; 
      next_state = WAIT_FOR_Q_CALC; 
      sram_input_read_base_address = 1;
    end

    WAIT_FOR_Q_CALC: begin
      sram_input_read_base_address = 1;
      if (!MAC_ready) begin // Loop until MAC is done
        next_state = WAIT_FOR_Q_CALC; 
      end
      else begin // When MAC is done, save current address
        save_current_read_write_addr = 1; 
        next_state = START_K_CALC; 
      end
    end

    START_K_CALC: begin // Wait for MAC to be ready again, then restart MAC with new address
      sram_input_read_base_address = 1;
      if (!MAC_ready) next_state = START_K_CALC; 
      else begin 
        MAC_valid = 1; 
        next_state = WAIT_FOR_K_CALC;
      end
    end

    WAIT_FOR_K_CALC: begin
      sram_input_read_base_address = 1;
      save_scratchpad_K_read_start_addr = 1; 
      write_to_scratchpad = 1; 
      if (!MAC_ready) begin
        next_state = WAIT_FOR_K_CALC;
      end
      else begin 
        save_current_read_write_addr = 1; 
        next_state = START_V_CALC; 
      end
    end

    START_V_CALC: begin
      sram_input_read_base_address = 1;
      if (!MAC_ready) next_state = START_V_CALC; 
      else begin 
        MAC_valid = 1; 
        next_state = WAIT_FOR_V_CALC;
      end
    end

    WAIT_FOR_V_CALC: begin 
      sram_input_read_base_address = 1;
      save_scratchpad_V_read_start_addr = 1; 
      write_to_scratchpad = 1; 
      transpose_scratchpad_write_address = 1;
      if (!MAC_ready) begin
        next_state = WAIT_FOR_V_CALC; 
      end
      else begin 
        save_current_read_write_addr = 1; 
        next_state = START_S_CALC; 
      end
    end

    START_S_CALC: begin
      sram_input_read_base_address = 1;
      set_scratchpad_K_read_start_address = 1; 
      if (!MAC_ready) next_state = START_S_CALC;
      else begin 
        MAC_valid = 1; 
        sram_input_read_base_address = 0; 
        override_input_num_rows_cols = {input_num_rows[15:0], weight_num_cols[15:0]};
        override_weight_num_rows_cols = {weight_num_cols[15:0], input_num_rows[15:0]}; 
        override_dimensions = 1; 
        next_state = WAIT_FOR_S_CALC; 
      end
    end

    WAIT_FOR_S_CALC: begin
      sram_input_read_base_address = 0; 
      MAC_input_A_from_result_SRAM = 1; 
      MAC_input_B_from_scratchpad_SRAM = 1; 
      save_result_S_read_start_addr = 1; 
      override_input_num_rows_cols = {input_num_rows[15:0], weight_num_cols[15:0]};
      override_weight_num_rows_cols = {weight_num_cols[15:0], input_num_rows[15:0]}; 
      override_dimensions = 1; 
      if (!MAC_ready) begin
        next_state = WAIT_FOR_S_CALC;
      end
      else begin 
        save_current_read_write_addr = 1; 
        next_state = START_Z_CALC; 
      end
    end

    START_Z_CALC: begin
      sram_input_read_base_address = 0; 
      set_scratchpad_V_read_start_address = 1; 
      if (!MAC_ready) next_state = START_Z_CALC; 
      else begin
        MAC_valid = 1; 
        sram_input_read_base_address = result_S_read_start_addr; 
        override_input_num_rows_cols = {input_num_rows[15:0], weight_num_cols[15:0]}; 
        override_weight_num_rows_cols = {input_num_rows[15:0], input_num_cols[15:0]}; 
        override_dimensions = 1; 
        next_state = WAIT_FOR_Z_CALC; 
      end
    end

    WAIT_FOR_Z_CALC: begin
      sram_input_read_base_address = result_S_read_start_addr;
      MAC_input_A_from_result_SRAM = 1; 
      MAC_input_B_from_scratchpad_SRAM = 1; 
      override_input_num_rows_cols = {input_num_rows[15:0], weight_num_cols[15:0]}; 
      override_weight_num_rows_cols = {input_num_rows[15:0], input_num_cols[15:0]};
      override_dimensions = 1; 
      if (!MAC_ready) begin
        next_state = WAIT_FOR_Z_CALC; 
      end
      else begin
        save_current_read_write_addr = 1; 
        next_state = RESET; 
      end
    end

    default: begin
      sram_input_read_base_address = 1;
      next_state = RESET;
    end
  endcase

end

// ----------------------- Read/Write start address calculation -----------
always @(posedge clk) begin

  // Save the current read/write start address + 1 to use as new base address
  
  if (current_state == RESET) begin
    sram_result_write_start_address <= 0;
    sram_weight_read_base_address <= 1; 
  end

  if (set_scratchpad_K_read_start_address) begin
    sram_weight_read_base_address <= scratchpad_K_read_start_addr; 
  end

  if (set_scratchpad_V_read_start_address) begin
    sram_weight_read_base_address <= scratchpad_V_read_start_addr; 
  end

  if (save_current_read_write_addr) begin
    sram_weight_read_base_address <= dut__tb__sram_weight_read_address + 1; 
    sram_result_write_start_address <= dut__tb__sram_result_write_address + 1; 
  end
end


// ------------------------ Transpose address calculation -----------------
assign transposed_addr = MAC_curr_col * input_num_rows + MAC_curr_row + sram_result_write_start_address; 

// ------------------------ Writing to scratchpad -------------------------
always @(posedge clk) begin
  if (write_to_scratchpad) begin // Write MAC result to scratchpad simultaneously
    scratchpad_write_enable <= dut__tb__sram_result_write_enable; 
    
    // Transpose the address when requested, however do not transpose if input is 1x1
    if (transpose_scratchpad_write_address && !(input_num_cols == 1 && input_num_rows == 1)) begin 
      scratchpad_write_address <= transposed_addr; 
    end 
    else begin
      scratchpad_write_address <= dut__tb__sram_result_write_address; 
    end
    scratchpad_write_data <= dut__tb__sram_result_write_data; 

    
  end
  else begin
    scratchpad_write_enable <= 0; 
    scratchpad_write_address <= scratchpad_write_address; 
    scratchpad_write_data <= scratchpad_write_data; 
  end
end

// Save a pointer to the beginning address when writing to scratchpad so that
// it can be read later. 
always @(posedge clk) begin
  if (save_scratchpad_K_read_start_addr) begin
    scratchpad_K_read_start_addr <= sram_result_write_start_address; 
  end

  if (save_scratchpad_V_read_start_addr) begin
    scratchpad_V_read_start_addr <= sram_result_write_start_address; 
  end

  if (save_result_S_read_start_addr) begin
    result_S_read_start_addr <= sram_result_write_start_address; 
  end

end


// ----------------------- Controlling MAC input interface muxes ---------
// Multiplex the interfaces so that MAC input A can read from both result and input SRAM
// and MAC input B can read from both weight and scratchpad SRAM

assign dut__tb__sram_result_read_address = MAC_input_A_read_addr; 
assign dut__tb__sram_input_read_address = MAC_input_A_read_addr; 
assign MAC_input_A_read_data = MAC_input_A_from_result_SRAM ? tb__dut__sram_result_read_data : tb__dut__sram_input_read_data; 

assign dut__tb__sram_weight_read_address = MAC_input_B_read_addr; 
assign dut__tb__sram_scratchpad_read_address = MAC_input_B_read_addr;
assign MAC_input_B_read_data = MAC_input_B_from_scratchpad_SRAM ? tb__dut__sram_scratchpad_read_data : tb__dut__sram_weight_read_data;


// --------------------- MAC Instance ------------------------------------

MyMAC MAC (
  .reset_n(reset_n), 
  .clk(clk), 

  .MAC_valid(MAC_valid), 
  .MAC_ready(MAC_ready), 

  .override_dimensions(override_dimensions), 
  .override_input_num_rows_cols(override_input_num_rows_cols), 
  .override_weight_num_rows_cols(override_weight_num_rows_cols),

  .input_num_rows_output(input_num_rows), 
  .input_num_cols_output(input_num_cols), 
  .weight_num_rows_output(weight_num_rows), 
  .weight_num_cols_output(weight_num_cols), 
  .curr_row_output(MAC_curr_row), 
  .curr_col_output(MAC_curr_col), 

  .sram_weight_read_base_address(sram_weight_read_base_address), 
  .sram_input_read_base_address(sram_input_read_base_address),
  .sram_result_write_start_address(sram_result_write_start_address),

  .dut__tb__sram_input_write_enable(dut__tb__sram_input_write_enable), 
  .dut__tb__sram_input_write_address(dut__tb__sram_input_write_address), 
  .dut__tb__sram_input_write_data(dut__tb__sram_input_write_data), 
  .dut__tb__sram_input_read_address(MAC_input_A_read_addr), 
  .tb__dut__sram_input_read_data(MAC_input_A_read_data), 

  .dut__tb__sram_weight_write_enable(dut__tb__sram_weight_write_enable), 
  .dut__tb__sram_weight_write_address(dut__tb__sram_weight_write_address), 
  .dut__tb__sram_weight_write_data(dut__tb__sram_weight_write_data), 
  .dut__tb__sram_weight_read_address(MAC_input_B_read_addr), 
  .tb__dut__sram_weight_read_data(MAC_input_B_read_data), 

  .dut__tb__sram_result_write_enable(dut__tb__sram_result_write_enable), 
  .dut__tb__sram_result_write_address(dut__tb__sram_result_write_address), 
  .dut__tb__sram_result_write_data(dut__tb__sram_result_write_data), 
  .dut__tb__sram_result_read_address(dut__tb__sram_result_read_address), 
  .tb__dut__sram_result_read_data(tb__dut__sram_result_read_data)
); 



endmodule


// ------------------------ Modified MAC module from HW6 --------------------

module MyMAC(
//---------------------------------------------------------------------------
//System signals
  input wire reset_n                      ,  
  input wire clk                          ,

//---------------------------------------------------------------------------
//Control signals
  input wire MAC_valid                    , 
  output wire MAC_ready                   ,

//---------------------------------------------------------------------------
//Allow override of cols and rows
  input wire override_dimensions,
  input wire [`SRAM_DATA_RANGE] override_input_num_rows_cols, 
  input wire [`SRAM_DATA_RANGE] override_weight_num_rows_cols,

//Comm ports for number of cols and rows
  output wire [`SRAM_DATA_RANGE] input_num_rows_output, 
  output wire [`SRAM_DATA_RANGE] input_num_cols_output,
  output wire [`SRAM_DATA_RANGE] weight_num_rows_output, 
  output wire [`SRAM_DATA_RANGE] weight_num_cols_output,
  output wire [`SRAM_DATA_RANGE] curr_row_output, 
  output wire [`SRAM_DATA_RANGE] curr_col_output,

//---------------------------------------------------------------------------
//Read/write start address signals
  input wire [`SRAM_ADDR_RANGE] sram_weight_read_base_address, 
  input wire [`SRAM_ADDR_RANGE] sram_input_read_base_address,
  input wire [`SRAM_ADDR_RANGE] sram_result_write_start_address,

//---------------------------------------------------------------------------
//input SRAM interface
  output wire                           dut__tb__sram_input_write_enable  ,
  output wire [`SRAM_ADDR_RANGE     ]   dut__tb__sram_input_write_address ,
  output wire [`SRAM_DATA_RANGE     ]   dut__tb__sram_input_write_data    ,
  output wire [`SRAM_ADDR_RANGE     ]   dut__tb__sram_input_read_address  , 
  input  wire [`SRAM_DATA_RANGE     ]   tb__dut__sram_input_read_data     ,     

//weight SRAM interface
  output wire                           dut__tb__sram_weight_write_enable  ,
  output wire [`SRAM_ADDR_RANGE     ]   dut__tb__sram_weight_write_address ,
  output wire [`SRAM_DATA_RANGE     ]   dut__tb__sram_weight_write_data    ,
  output wire [`SRAM_ADDR_RANGE     ]   dut__tb__sram_weight_read_address  , 
  input  wire [`SRAM_DATA_RANGE     ]   tb__dut__sram_weight_read_data     , 

//result SRAM interface
  output wire                           dut__tb__sram_result_write_enable  ,
  output wire [`SRAM_ADDR_RANGE     ]   dut__tb__sram_result_write_address ,
  output wire [`SRAM_DATA_RANGE     ]   dut__tb__sram_result_write_data    ,
  output wire [`SRAM_ADDR_RANGE     ]   dut__tb__sram_result_read_address  , 
  input  wire [`SRAM_DATA_RANGE     ]   tb__dut__sram_result_read_data         

);

//--------------------- SRAM control registers -----------------------
reg [`SRAM_ADDR_RANGE] sram_weight_read_address, sram_input_read_address; 
reg signed [`SRAM_ADDR_RANGE] sram_result_write_address;
assign dut__tb__sram_weight_read_address = sram_weight_read_address;
assign dut__tb__sram_input_read_address = sram_input_read_address;
assign dut__tb__sram_result_write_address = sram_result_write_address; 

reg [`SRAM_DATA_RANGE] sram_input_read_data, sram_weight_read_data, sram_result_write_data, sram_scratchpad_read_data; 
always @(posedge clk) begin
  sram_input_read_data <= tb__dut__sram_input_read_data; 
  sram_weight_read_data <= tb__dut__sram_weight_read_data; 
end


assign dut__tb__sram_weight_write_enable = 0;
assign dut__tb__sram_input_write_enable = 0; 
assign dut__tb__sram_result_write_data = sram_result_write_data; 

// --------------------- Control signals ----------------
reg MAC_ready_reg;
assign MAC_ready = MAC_ready_reg;

reg [15:0] loop_count;


reg [`SRAM_ADDR_RANGE] input_num_rows, 
  input_num_cols, 
  weight_num_rows, 
  weight_num_cols, 
  input_read_start_address, 
  weight_read_start_address, 
  curr_col, 
  curr_row;

assign input_num_rows_output = input_num_rows; 
assign input_num_cols_output = input_num_cols; 
assign weight_num_rows_output = weight_num_rows; 
assign weight_num_cols_output = weight_num_cols; 
assign curr_row_output = curr_row; 
assign curr_col_output = curr_col; 

reg [`SRAM_DATA_RANGE] input_num_rows_cols, weight_num_rows_cols; 

reg [`SRAM_ADDR_RANGE] weight_max_addr; 

reg save_dimensions, 
  read_matrix_dimensions, 
  start_accum, 
  zero_accum_result,
  input_wraparound, 
  weight_wraparound, 
  freeze_address_regs,
  sram_result_write_enable, 
  increment_write_address, 
  capture_data_result, 
  calculation_done; 

assign dut__tb__sram_result_write_enable = sram_result_write_enable; 

// --------------------- Accum result register ------------------------
reg [`SRAM_DATA_RANGE] mac_result_z;
reg [`SRAM_DATA_RANGE] accum_result;
always @(posedge clk) begin 
  if (zero_accum_result) accum_result <= 0;
  else accum_result <= mac_result_z; 
end



//--------------------- Setting up the FSM ------------------------------
parameter [3:0] // synopsys enum states
  RESET = 4'd0,
  LOAD_READ_ADDR = 4'd1, 
  SAVE_MATRIX_DIMENSIONS = 4'd2, 
  BEGIN_ACCUM = 4'd3,
  WAIT_FOR_DATA1 = 4'd4,
  WAIT_FOR_DATA2 = 4'd5,
  ACCUM_LOOP = 4'd6, 
  WAIT_FOR_RESULT1 = 4'd7,
  WAIT_FOR_RESULT2 = 4'd8, 
  WRITE_RESULT = 4'd9, 
  HOLD_ADDRESS = 4'd10; // Holds the current addresses for 1 more cycle to allow dut to save it

reg [3:0] /* synopsys enum states */ current_state, next_state;
// synopsys state_vector current_state



// Reset logic
always @(posedge clk or negedge reset_n) begin
  if (!reset_n) current_state <= RESET;
  else current_state <= next_state;
end

//--------------------- FSM -----------------------------------------------
always @(*) begin
  MAC_ready_reg = 0;
  save_dimensions = 0;
  read_matrix_dimensions = 0;
  start_accum = 0;
  input_wraparound = 0;
  zero_accum_result = 0; 
  sram_result_write_enable = 0; 
  freeze_address_regs = 0; 
  increment_write_address = 0; 
  capture_data_result = 0; 
  if (calculation_done) calculation_done = 1; 
  else calculation_done = 0;
  case (current_state) // synopsys full_case parallel_case
    RESET: begin
      calculation_done = 0;
      MAC_ready_reg = 1;
      read_matrix_dimensions = 1;
      zero_accum_result = 1; 
      if (MAC_valid) begin
        next_state = LOAD_READ_ADDR;
      end
      else next_state = RESET; 
    end

    LOAD_READ_ADDR: begin
      next_state = SAVE_MATRIX_DIMENSIONS;
    end

    // Matrix dimensions will have populated at this point, save them
    SAVE_MATRIX_DIMENSIONS: begin
      save_dimensions = 1; 
      next_state = BEGIN_ACCUM;
    end

    // The next 3 states fills the pipeline with read data
    BEGIN_ACCUM: begin
      next_state = WAIT_FOR_DATA1; 
    end

    WAIT_FOR_DATA1: begin
      start_accum = 1;
      next_state = WAIT_FOR_DATA2;
    end

    WAIT_FOR_DATA2: begin
      zero_accum_result = 1; 
      next_state = ACCUM_LOOP;

      // Edge case for 1x1 input matrix
      if (input_num_rows == 1 && input_num_cols == 1) begin 
        zero_accum_result = 1;
        next_state = WAIT_FOR_RESULT1; 
        input_wraparound = 1; 
        if (sram_weight_read_address - (sram_weight_read_base_address - 1) == weight_max_addr) begin
          calculation_done = 1; 
        end
      end
    end

    // Stay in this state until a result is ready to populate
    ACCUM_LOOP: begin
      if (loop_count == 2) zero_accum_result = 1; 
      

      if (loop_count == input_num_cols) begin // Reached the end of an input row
        if (sram_input_read_address - (sram_input_read_base_address - 1) == input_num_cols * input_num_rows && 
            // Subtract base address to correctly detect reaching end of matrix
            sram_weight_read_address - (sram_weight_read_base_address - 1) == weight_max_addr) begin
              calculation_done = 1; 
        end
        next_state = WAIT_FOR_RESULT1;
        input_wraparound = 1; 
      end 
      else begin 
        next_state = ACCUM_LOOP;
      end
    end

    // The next 2 states waits for the results to exit the pipeline
    WAIT_FOR_RESULT1: begin
      if (input_num_rows == 1 && input_num_cols == 1) zero_accum_result = 1; 
      freeze_address_regs = 1;
      next_state = WAIT_FOR_RESULT2;
    end

    // Also calculates the write address
    WAIT_FOR_RESULT2: begin
      freeze_address_regs = 1;
      increment_write_address = 1; 
      capture_data_result = 1; 
      next_state = WRITE_RESULT; 
    end

    // Commits the write address to result SRAM
    WRITE_RESULT: begin
      freeze_address_regs = 1;
      sram_result_write_enable = 1;
      if (calculation_done) begin 
        MAC_ready_reg = 1; 
        next_state = HOLD_ADDRESS; 
      end
      else next_state = BEGIN_ACCUM; 
    end

    HOLD_ADDRESS: begin
      freeze_address_regs = 1; 
      next_state = RESET; 
    end

    default: next_state = RESET; 

  endcase


end


//----------------------- Weights address calculation --------------------

always @(posedge clk) begin
  weight_wraparound <= 0;
  // Since this signal appears in RESET state, use it as an address reset
  if (read_matrix_dimensions) begin
    sram_weight_read_address <= 0; 
    // weight_read_start_address <= 1; 
    weight_read_start_address <= sram_weight_read_base_address; // Wrap back to dynamic base address instead
  end
  else if (start_accum) begin
    sram_weight_read_address <= weight_read_start_address;
  end
  else if (!freeze_address_regs) begin
    // Synchronize the address wrap-around back to 1 with the input reads
    if (input_wraparound) begin
      if (sram_weight_read_address - (sram_weight_read_base_address - 1) == weight_max_addr) begin
        weight_wraparound <= 1;
        // weight_read_start_address <= 1;
        weight_read_start_address <= sram_weight_read_base_address; // Wrap back to dynamic base address instead
      end 
      // If not at the end of matrix yet, simply increment
      else begin 
        weight_read_start_address <= sram_weight_read_address + 1; 
      end
    end
    else begin
      sram_weight_read_address <= sram_weight_read_address + 1; 
    end
  end
end


//----------------------- Input read address calculation -----------------------
always @(posedge clk) begin
  // Since this signal appears in RESET state, use it as an address reset
  if (read_matrix_dimensions) begin 
    sram_input_read_address <= 0; 
    // input_read_start_address <= 1; // Store the start address, this only changes on weights wrap-around
    input_read_start_address <= sram_input_read_base_address; 
  end
  else if (start_accum) begin
    sram_input_read_address <= input_read_start_address; 
    loop_count <= 1; 
  end

  else begin

    // Edge case: do not increment read address if input is a 1x1 matrix
    if (input_num_rows == 1 && input_num_cols == 1) begin
      sram_input_read_address <= sram_input_read_address; 
    end
    // When weight read address wraps around, update start address with current read address
    else if (weight_wraparound) begin 
      input_read_start_address <= sram_input_read_address;
      // weight_wraparound <= 0; 
    end
    // Otherwise simply increment 
    else if (!freeze_address_regs) begin 
      sram_input_read_address <= sram_input_read_address + 1; 
    end
    // Loop counter for the FSM
    loop_count <= loop_count + 1; 
  end
end




// --------------------- Saving matrix dimensions ----------------------
// Allows override by parent module when dimensions are not available in address 0 
// of the SRAM read
always @(*) begin
  if (override_dimensions) begin
    input_num_rows_cols = override_input_num_rows_cols; 
    weight_num_rows_cols = override_weight_num_rows_cols; 
  end
  else begin
    input_num_rows_cols = tb__dut__sram_input_read_data; 
    weight_num_rows_cols = tb__dut__sram_weight_read_data; 
  end
end


always @(posedge clk) begin 
  if (save_dimensions) begin
    input_num_rows <= input_num_rows_cols[31:16]; 
    input_num_cols <= input_num_rows_cols[15:0]; 
    weight_num_rows <= weight_num_rows_cols[31:16]; 
    weight_num_cols <= weight_num_rows_cols[15:0]; 
    // Calculate the max address of weights matrix and save it for use throughout
    weight_max_addr <= weight_num_rows_cols[31:16] * weight_num_rows_cols[15:0]; 
  end
end


// ---------------------- Write address calculation ----------------------
always @(posedge clk) begin
  if (read_matrix_dimensions) begin
    // sram_result_write_address <= -1; 
    sram_result_write_address <= sram_result_write_start_address - 1; // Use dynamic write start address instead
  end

  if (increment_write_address) begin
    sram_result_write_address <= sram_result_write_address + 1; 
  end
end

// ------------------------ Find current row/col written to --------------
// This information is helpful for transposing the matrix
always @(posedge clk) begin 
  if (MAC_valid) begin 
    curr_col <= -1; 
    curr_row <= 0; 
  end
  if (capture_data_result) begin
    curr_col <= curr_col + 1; 
    if (curr_col == weight_num_cols-1) begin
      curr_col <= 0; 
      curr_row <= curr_row + 1; 
    end
  end
end


// ------------------------ Data result population -----------------------
always @(posedge clk) begin
  if (capture_data_result) begin
    sram_result_write_data <= mac_result_z; 
  end
end


// -------------------------- Multiply accumulate --------------------------
always @(*) begin
  mac_result_z = sram_input_read_data * sram_weight_read_data + accum_result; 
end

endmodule