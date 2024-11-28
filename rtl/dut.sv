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

// DUT control signals
reg dut_ready_reg;
assign dut_ready = dut_ready_reg; 

// MAC control signals
reg MAC_valid; 
wire MAC_ready;
reg [`SRAM_ADDR_RANGE] sram_weight_read_base_address, sram_weight_write_start_address = 0; 

// FSM control signals
reg zero_weight_read_addr; 


//--------------------- Setting up the FSM ------------------------------
parameter [3:0] // synopsys enum states
  RESET = 4'd0,
  START_MAC = 4'd1, 
  WAIT_FOR_Q_CALC = 4'd2;

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
  zero_weight_read_addr = 0; 

  case (current_state)
    RESET: begin
      dut_ready_reg = 1; 
      if (dut_valid) begin 
        MAC_valid = 1; 
        next_state = START_MAC; 
      end
      else next_state = RESET; 
    end

    START_MAC: begin
      zero_weight_read_addr = 1; 
      next_state = WAIT_FOR_Q_CALC; 
    end

    WAIT_FOR_Q_CALC: begin
      if (!MAC_ready) begin
        next_state = WAIT_FOR_Q_CALC; 
      end
      else begin
        next_state = RESET; 
      end
    end
  endcase

end


always @(posedge clk) begin
  if (zero_weight_read_addr) begin 
  sram_weight_read_base_address <= 0; 
  end
end




// --------------------- MAC Instance ------------------------------------

MyMAC MAC (
  .reset_n(reset_n), 
  .clk(clk), 

  .MAC_valid(MAC_valid), 
  .MAC_ready(MAC_ready), 

  .sram_weight_read_base_address(sram_weight_read_base_address), 
  .sram_weight_write_start_address(sram_weight_write_start_address),

  .dut__tb__sram_input_write_enable(dut__tb__sram_input_write_enable), 
  .dut__tb__sram_input_write_address(dut__tb__sram_input_write_address), 
  .dut__tb__sram_input_write_data(dut__tb__sram_input_write_data), 
  .dut__tb__sram_input_read_address(dut__tb__sram_input_read_address), 
  .tb__dut__sram_input_read_data(tb__dut__sram_input_read_data), 

  .dut__tb__sram_weight_write_enable(dut__tb__sram_weight_write_enable), 
  .dut__tb__sram_weight_write_address(dut__tb__sram_weight_write_address), 
  .dut__tb__sram_weight_write_data(dut__tb__sram_weight_write_data), 
  .dut__tb__sram_weight_read_address(dut__tb__sram_weight_read_address), 
  .tb__dut__sram_weight_read_data(tb__dut__sram_weight_read_data), 

  .dut__tb__sram_result_write_enable(dut__tb__sram_result_write_enable), 
  .dut__tb__sram_result_write_address(dut__tb__sram_result_write_address), 
  .dut__tb__sram_result_write_data(dut__tb__sram_result_write_data), 
  .dut__tb__sram_result_read_address(dut__tb__sram_result_read_address), 
  .tb__dut__sram_result_read_data(tb__dut__sram_result_read_data)
); 



endmodule