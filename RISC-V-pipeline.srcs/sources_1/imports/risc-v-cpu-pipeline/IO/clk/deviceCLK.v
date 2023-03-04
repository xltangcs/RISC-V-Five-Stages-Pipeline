`define EXTEND 1
module DeviceCLK (
           input wire clk,
           input wire rst_n,
           input wire switch,
           output wire clk_out
       );

reg delay_sw1;
reg delay_sw2;
assign clk_out = ( !delay_sw1) & delay_sw2;

always @ ( posedge clk or negedge rst_n ) begin
    if ( ~rst_n ) begin
        delay_sw1 <= 0;
        delay_sw2 <= 0;
    end
    else begin
        delay_sw1 <= switch;
        delay_sw2 <= delay_sw1;
    end
end

endmodule
