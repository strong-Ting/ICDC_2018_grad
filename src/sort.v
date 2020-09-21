module sort (
    input clk,
    input reset,
    input [7:0] indata [0:5],
    input indata_valid,
    output outdata_valid,
    output [7:0] outdata[0:5]
);
reg outdata_valid;
reg outdata;

reg index_odd_even;
reg [2:0] counter;

always@(posedge clk or posedge reset)
begin
    if(reset) index_odd_even <= 1'd0;
    else if(indata_valid == 1'd1) index_odd_even <= ~index_odd_even;
end

always@(posedge clk or posedge reset)
begin
    if(reset) counter <= 3'd0;
    else if(indata_valid) 
    begin
        if(counter == 3'd6) counter <= counter;
        else counter <= counter + 3'd1;
    end
end

always@(posedge clk or posedge reset)
begin
    if(reset) 
    begin
        outdata[0] <= 
    end
end

endmodule