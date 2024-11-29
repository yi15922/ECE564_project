//---------------------------------------------------------------------------
// DUT - Mini project 
//---------------------------------------------------------------------------
`include "common.vh"

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

//Outputs for number of cols and rows
  output wire [`SRAM_DATA_RANGE] input_num_rows_output, 
  output wire [`SRAM_DATA_RANGE] input_num_cols_output,
  output wire [`SRAM_DATA_RANGE] weight_num_rows_output, 
  output wire [`SRAM_DATA_RANGE] weight_num_cols_output,

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
  weight_read_start_address;

assign input_num_rows_output = input_num_rows; 
assign input_num_cols_output = input_num_cols; 
assign weight_num_rows_output = weight_num_rows; 
assign weight_num_cols_output = weight_num_cols; 

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

// --------------------- Accum registers ------------------------
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
      start_accum = 1;
      next_state = WAIT_FOR_DATA1; 
    end

    WAIT_FOR_DATA1: begin
      next_state = WAIT_FOR_DATA2;
    end

    WAIT_FOR_DATA2: begin
      zero_accum_result = 1; 
      next_state = ACCUM_LOOP;
    end

    // Stay in this state until a result is ready to populate
    ACCUM_LOOP: begin
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
    // When weight read address wraps around, update start address with current read address
    if (weight_wraparound) begin 
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
