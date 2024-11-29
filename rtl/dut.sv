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
reg [`SRAM_ADDR_RANGE] scratchpad_write_address;

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
reg [`SRAM_ADDR_RANGE] sram_weight_read_base_address, sram_input_read_base_address, sram_result_write_start_address, new_input_read_base_address, new_weight_read_base_address = 0; 
reg [`SRAM_DATA_RANGE] override_input_num_rows_cols, override_weight_num_rows_cols; 

// FSM control signals
reg reset_read_write_start_addr, 
    save_current_read_write_addr, 
    write_to_scratchpad, 
    MAC_input_A_from_result_SRAM, 
    MAC_input_B_from_scratchpad_SRAM; 


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
  WAIT_FOR_S_CALC = 4'd8; 

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
  write_to_scratchpad = 0; 
  MAC_input_A_from_result_SRAM = 0; 
  MAC_input_B_from_scratchpad_SRAM = 0; 
  override_input_weight_read_base_addresses = 0; 

  case (current_state)
    RESET: begin
      dut_ready_reg = 1; 
      reset_read_write_start_addr = 1; 
      if (dut_valid) begin 
        next_state = START_Q_CALC; 
      end
      else next_state = RESET; 
    end

    START_Q_CALC: begin
      MAC_valid = 1; 
      next_state = WAIT_FOR_Q_CALC; 
    end

    WAIT_FOR_Q_CALC: begin
      if (!MAC_ready) begin // Loop until MAC is done
        next_state = WAIT_FOR_Q_CALC; 
      end
      else begin // When MAC is done, save current address
        save_current_read_write_addr = 1; 
        next_state = START_K_CALC; 
      end
    end

    START_K_CALC: begin // Wait for MAC to be ready again, then restart MAC with new address
      if (!MAC_ready) next_state = START_K_CALC; 
      else begin 
        MAC_valid = 1; 
        next_state = WAIT_FOR_K_CALC;
      end
    end

    WAIT_FOR_K_CALC: begin
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
      if (!MAC_ready) next_state = START_V_CALC; 
      else begin 
        MAC_valid = 1; 
        next_state = WAIT_FOR_V_CALC;
      end
    end

    WAIT_FOR_V_CALC: begin 
      if (!MAC_ready) begin
        next_state = WAIT_FOR_V_CALC; 
      end
      else begin 
        save_current_read_write_addr = 1; 
        next_state = START_S_CALC; 
      end
    end

    START_S_CALC: begin
      if (!MAC_ready) next_state = START_S_CALC;
      else begin 
        MAC_valid = 1; 
        sram_input_read_base_address = 0; 
        sram_weight_read_base_address = 0; 
        override_input_weight_read_base_addresses = 1; 
        override_input_num_rows_cols = {input_num_rows[15:0], weight_num_cols[15:0]};
        override_weight_num_rows_cols = {weight_num_cols[15:0], input_num_rows[15:0]}; 
        override_dimensions = 1; 
        next_state = WAIT_FOR_S_CALC; 
      end
    end

    WAIT_FOR_S_CALC: begin
      MAC_input_A_from_result_SRAM = 1; 
      MAC_input_B_from_scratchpad_SRAM = 1; 
      override_dimensions = 1; 
      if (!MAC_ready) begin
        next_state = WAIT_FOR_S_CALC;
      end
      else begin 
        save_current_read_write_addr = 1; 
        next_state = RESET; 
      end
    end

    default: next_state = RESET;
  endcase

end

// ----------------------- Read/Write start address calculation -----------
always @(posedge clk) begin
  // Reset the read/write start addresses to initial values
  if (reset_read_write_start_addr) begin 
    sram_weight_read_base_address <= 1; 
    sram_input_read_base_address <= 1; 
    sram_result_write_start_address <= 0;
  end

  // if (override_input_weight_read_base_addresses) begin
  //   sram_input_read_base_address <= new_input_read_base_address; 
  //   sram_weight_read_base_address <= new_weight_read_base_address;
  // end

  // Save the current read/write start address + 1 to use as new base
  if (save_current_read_write_addr) begin
    sram_weight_read_base_address <= dut__tb__sram_weight_read_address + 1; 
    sram_result_write_start_address <= dut__tb__sram_result_write_address + 1; 
  end
end


// ------------------------ Writing to scratchpad -------------------------
always @(posedge clk) begin
  if (write_to_scratchpad) begin // Write MAC result to scratchpad simultaneously
    scratchpad_write_enable <= dut__tb__sram_result_write_enable; 
    scratchpad_write_address <= dut__tb__sram_result_write_address - sram_result_write_start_address; 
    scratchpad_write_data <= dut__tb__sram_result_write_data; 
  end
  else begin
    scratchpad_write_enable <= 0; 
  end
end


// ----------------------- Controlling MAC input interface muxes ---------

assign dut__tb__sram_result_read_address = MAC_input_A_read_addr; 
assign dut__tb__sram_input_read_address = MAC_input_A_read_addr; 
assign MAC_input_A_read_data = MAC_input_A_from_result_SRAM ? tb__dut__sram_result_read_data : tb__dut__sram_input_read_data; 

assign dut__tb__sram_weight_read_address = MAC_input_B_read_addr; 
assign dut__tb__sram_scratchpad_read_address = MAC_input_B_read_addr;
assign MAC_input_B_read_data = MAC_input_B_from_scratchpad_SRAM ? tb__dut__sram_scratchpad_read_data : tb__dut__sram_weight_read_data;

// always @(*) begin
//   // MAC input A mux
//   if (MAC_input_A_from_result_SRAM) begin
//     assign dut__tb__sram_result_read_address = MAC_input_A_read_addr; 
//     MAC_input_A_read_data = tb__dut__sram_result_read_data; 
//   end
//   else begin
//     assign dut__tb__sram_input_read_address = MAC_input_A_read_addr; 
//     MAC_input_A_read_data = tb__dut__sram_input_read_data; 
//   end


//   // MAC input B mux
//   if (MAC_input_B_from_result_SRAM) begin
//     MAC_input_B_read_addr = dut__tb__sram_result_read_address; 
//     MAC_input_B_read_data = tb__dut__sram_result_read_data; 
//   end
//   else if (MAC_input_B_from_scratchpad_SRAM) begin
//     MAC_input_B_read_addr = dut__tb__sram_scratchpad_read_address; 
//     MAC_input_B_read_data = tb__dut__sram_scratchpad_read_data; 
//   end
//   else begin
//     MAC_input_B_read_addr = dut__tb__sram_weight_read_address; 
//     MAC_input_B_read_data = tb__dut__sram_weight_read_data; 
//   end
// end




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