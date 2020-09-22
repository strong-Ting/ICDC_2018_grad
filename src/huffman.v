
module huffman(clk, reset, gray_valid, gray_data, CNT_valid, CNT1, CNT2, CNT3, CNT4, CNT5, CNT6,
    code_valid,M1, M2, M3, M4, M5, M6, HC1, HC2, HC3, HC4, HC5, HC6);

input clk;
input reset;
input gray_valid;
input [7:0] gray_data;
output CNT_valid;
output [7:0] CNT1, CNT2, CNT3, CNT4, CNT5, CNT6;
output code_valid;
output [7:0] HC1, HC2, HC3, HC4, HC5, HC6;
output [7:0] M1, M2, M3, M4, M5, M6;

//reg output 
reg CNT_valid;
reg [7:0] CNT1, CNT2, CNT3, CNT4, CNT5, CNT6;
reg code_valid;
reg [7:0] HC1, HC2, HC3, HC4, HC5, HC6;
reg [7:0] M1, M2, M3, M4, M5, M6;
//state
reg [3:0] current_state,next_state;

parameter IDLE = 4'd0;
parameter READ = 4'd1;
parameter INIT = 4'd2;
parameter C0 = 4'd3;
parameter C1 = 4'd4;
parameter C2 = 4'd5;
parameter C3 = 4'd6;
parameter C4 = 4'd7;
parameter Split_C4 = 4'd8;
parameter Split_C3 = 4'd9;
parameter Split_C2 = 4'd10;
parameter Split_C1 = 4'd11;
parameter Done = 4'd12;

//Symbol
parameter A1 = 8'd1;
parameter A2 = 8'd2;
parameter A3 = 8'd3;
parameter A4 = 8'd4;
parameter A5 = 8'd5;
parameter A6 = 8'd6;
parameter Group = 8'd7;

//array
reg [7:0] init_index_array[5:0];

reg [7:0] C1_index_array[4:0];
reg [7:0] C1_index_grouped;

reg [7:0] C2_index_array[3:0];
reg [7:0] C2_index_grouped;

reg [7:0] C3_index_array[2:0];
reg [7:0] C3_index_grouped;

reg [7:0] C4_index_array[1:0];
reg [7:0] C4_index_grouped;
//value 
reg [7:0] value_array[5:0];


//switch state
always@(posedge clk or posedge reset)
begin
    if(reset) current_state <= IDLE;
    else current_state <= next_state;
end

//nextstate logic 
always @(*) 
begin
    case (current_state)
        IDLE:
        begin
            if(gray_valid == 1'd1) next_state = READ;
            else next_state = IDLE;
        end 
        READ:
        begin
            if(gray_valid == 1'd1) next_state = READ;
            else next_state = INIT;
        end
        INIT:
        begin
            next_state = Done;
            //if() next_state = C1;
            //else next_state = INIT;
        end
        C1:
        begin
            
        end
        C2:
        begin
            
        end
        C3:
        begin
            
        end
        C4:
        begin
            
        end
        Split_C4:
        begin
            
        end
        Split_C3:
        begin
            
        end
        Split_C2:
        begin
            
        end
        Split_C1:
        begin
            
        end
        Done:
        begin
            next_state = Done;
        end
        default: 
        begin
            next_state = IDLE;
        end
    endcase
end


//output logic 

//CNT
always@(posedge clk or posedge reset)
begin
    if(reset) 
    begin
        CNT1 <= 8'd0;
        CNT2 <= 8'd0;
        CNT3 <= 8'd0;
        CNT4 <= 8'd0;
        CNT5 <= 8'd0;
        CNT6 <= 8'd0;
    end
    else if(next_state == READ)
    begin
        if(gray_data == 8'd1) CNT1 <= CNT1 + 8'd1;
        if(gray_data == 8'd2) CNT2 <= CNT2 + 8'd1;
        if(gray_data == 8'd3) CNT3 <= CNT3 + 8'd1;
        if(gray_data == 8'd4) CNT4 <= CNT4 + 8'd1;
        if(gray_data == 8'd5) CNT5 <= CNT5 + 8'd1;
        if(gray_data == 8'd6) CNT6 <= CNT6 + 8'd1;
    end
end
//CNT_valid
always@(posedge clk or posedge reset)
begin
    if(reset) CNT_valid <= 1'd0;
    else if(current_state == INIT) CNT_valid <= 1'd1;
    else CNT_valid <= 1'd0;
end

//code_valid
always@(posedge clk or posedge reset)
begin
    if(reset) code_valid <= 1'd0;
    else if(current_state == Done) code_valid <= 1'd1;    
end

wire A1_in_C4_Group = C4_index_grouped == A1 || C3_index_grouped == A1 || C2_index_grouped == A1 || C1_index_grouped == A1 || init_index_array[5] == A1;
wire A1_in_C3_Group = C3_index_grouped == A1 || C2_index_grouped == A1 || C1_index_grouped == A1 || init_index_array[5] == A1;
wire A1_in_C2_Group = C2_index_grouped == A1 || C1_index_grouped == A1 || init_index_array[5] == A1;
wire A1_in_C1_Group = C1_index_grouped == A1 || init_index_array[5] == A1;
wire A1_not_in_Group = !(A1_in_C4_Group);

//HC1
always@(posedge clk or posedge reset)
begin
    if(reset) HC1 <= 8'd0;
    else if(current_state == Split_C4)
    begin
        if(C4_index_array[1] == A1) M1[0] <= 1'd1;
        else if(C4_index_array[1] == Group && A1_in_C4_Group) M1[0] <= 1'd1;
    end
    else if(current_state == Split_C3)
    begin
        if(C3_index_array[2] == A1) M1[1] <= 1'd1;
        else if(C3_index_array[2] == Group && A1_in_C3_Group) M1[1] <= 1'd1;
    end
    else if(current_state == Split_C2)
    begin
        if(C2_index_array[3] == A1) M1[2] <= 1'd1;
        else if(C2_index_array[3] == Group && A1_in_C2_Group) M1[2] <= 1'd1;
    end
    else if(current_state == Split_C1)
    begin
        if(C1_index_array[4] == A1) M1[3] <= 1'd1;
        else if(C1_index_array[4] == Group && A1_in_C1_Group) M1[3] <= 1'd1;
    end
end

//M1
always@(posedge clk or posedge reset)
begin
    if(reset) M1 <= 8'd0;
    else if(current_state == Split_C4)
    begin
        if(init_index_array[5] == A1)
        begin
            M1 <= 8'b0001_1111;
        end
        else if(C1_index_grouped == A1) 
        begin
            M1 <= 8'b0001_1111;
        end
        else if(C2_index_grouped == A1)
        begin
            M1 <= 8'b0000_1111;
        end
        else if(C3_index_grouped == A1)
        begin
            M1 <= 8'b0000_0111;
        end
        else if(C4_index_grouped == A1)
        begin
            M1 <= 8'b0000_0011;
        end
        else
        begin
            M1 <= 8'b0000_0001;
        end
    end
end
endmodule

