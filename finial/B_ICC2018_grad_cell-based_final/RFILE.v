`timescale 1ns/10ps
`define THE_NUM 75
module RFILE(clk, rst, A_x, A_y, B_x, B_y, C_x, C_y, rssiA, rssiB, rssiC, valueA, valueB, valueC, expA, expB, expC, busy, out_valid, xt, yt);
input           clk;
input           rst;
input  [7:0]    A_x;
input  [7:0]    A_y; 
input  [7:0]    B_x; 
input  [7:0]    B_y; 
input  [7:0]    C_x; 
input  [7:0]    C_y;
input  [19:0]   rssiA;
input  [19:0]   rssiB;
input  [19:0]   rssiC;
input  [15:0]   valueA;
input  [15:0]   valueB;
input  [15:0]   valueC;
output [11:0]   expA;
output [11:0]   expB;
output [11:0]   expC;
output          busy;
output          out_valid;
output [7:0]    xt;
output [7:0]    yt;

reg [1:0] cs,ns;
reg [3:0] cs_p,ns_p; //process state 
reg [7:0] xt,yt;
reg done,busy;
reg out_valid;
reg pow_a,pow_b,pow_c,find;
reg [47:0] d_a,d_b,d_c;

wire [11:0] expA = d_a[11:0];
wire [11:0] expB = d_b[11:0];
wire [11:0] expC = d_c[11:0];

parameter IDLE = 2'd0;
parameter RECV = 2'd3;
parameter PROCESS = 2'd1;
parameter OUT = 2'd2;

parameter P_IDLE = 4'd0;
parameter P_RSSI_2S = 4'd1;
parameter P_SUB_MOD = 4'd2;
parameter P_POW_10 = 4'd3;
parameter P_EXP = 4'd4;
parameter P_DONE = 4'd5;
parameter P_FIND = 4'd6;

wire [7:0] x_a_minus_t = (A_x > xt) ? (A_x - xt) : (xt - A_x);
wire [7:0] x_b_minus_t = (B_x > xt) ? (B_x - xt) : (xt - B_x);
wire [7:0] x_c_minus_t = (C_x > xt) ? (C_x - xt) : (xt - C_x);

wire [7:0] y_a_minus_t = (A_y > yt) ? (A_y - yt) : (yt - A_y);
wire [7:0] y_b_minus_t = (B_y > yt) ? (B_y - yt) : (yt - B_y);
wire [7:0] y_c_minus_t = (C_y > yt) ? (C_y - yt) : (yt - C_y);

wire [16:0] dd_a =(x_a_minus_t)*(x_a_minus_t) + (y_a_minus_t)*(y_a_minus_t);
wire [16:0] dd_b =(x_b_minus_t)**2 + (y_b_minus_t)**2;
wire [16:0] dd_c =(x_c_minus_t)**2 + (y_c_minus_t)**2;

wire flag_A = (d_a > `THE_NUM) ? (dd_a <= d_a+`THE_NUM && dd_a >= d_a - `THE_NUM) :
                   (dd_a <= d_a+`THE_NUM );
wire flag_B = (d_b > `THE_NUM) ? (dd_b <= d_b+`THE_NUM && dd_b >= d_b - `THE_NUM) :
                   (dd_b <= d_b+`THE_NUM);
wire flag_C = (dd_c <= d_c );


always@(posedge clk or posedge rst) begin
    if(rst) begin
        cs <= IDLE;
        cs_p <= P_IDLE;
    end 
    else begin
        cs <= ns;
        cs_p <= ns_p;
    end
end

always@(*) begin
    case(cs)
    IDLE: ns = RECV;
    RECV: ns = PROCESS;
    PROCESS: begin
        if(done == 1'd1) ns = OUT;
        else ns = PROCESS;
    end
    OUT: ns = RECV;
    default: ns = IDLE; 
    endcase
end

always@(*) begin
    if(cs == PROCESS) begin
        case(cs_p)
        P_IDLE: ns_p = P_RSSI_2S;
        P_RSSI_2S: ns_p = P_SUB_MOD;
        P_SUB_MOD: ns_p = P_POW_10;
        P_POW_10: begin
            if(pow_a == 1'd1 && pow_b == 1'd1 && pow_c == 1'd1) ns_p = P_EXP;
            else ns_p = P_POW_10;
        end
        P_EXP: begin
            ns_p = P_FIND;
        end
        P_FIND: begin
            if(find == 1'd1) ns_p = P_DONE;
            else ns_p = P_FIND;
        end
        P_DONE: begin
            ns_p = P_DONE;
        end
        endcase 
    end
    else ns_p = P_IDLE;
end

always@(posedge clk or posedge rst) begin
    if(rst) begin
       d_a <= 48'd0;
       d_b <= 48'd0;
       d_c <= 48'd0; 
       pow_a <= 1'd1;
       pow_b <= 1'd1;
       pow_c <= 1'd1;
       find <= 1'd0;
    end
    else if(cs_p == P_IDLE) begin
        //d_a[19:0] <= rssiA;
        //d_b[19:0] <= rssiB;
        //d_c[19:0] <= rssiC;
        find <= 1'd0;
    end
    else if(cs_p == P_RSSI_2S) begin
        d_a[19:0] <= ~(rssiA-20'h1);
        d_b[19:0] <= ~(rssiB-20'h1);
        d_c[19:0] <= ~(rssiC-20'h1);
    end
    else if(cs_p == P_SUB_MOD) begin
        d_a <= ((d_a[19:0]-{8'd59,12'd0})>>1)/10;
        d_b <= ((d_b[19:0]-{8'd59,12'd0})>>1)/10;
        d_c <= ((d_c[19:0]-{8'd59,12'd0})>>1)/10;
    end
    else if(cs_p == P_POW_10) begin
        d_a <= ((4'd10**d_a[19:12]) * (valueA[15:0])>>12);
        d_b <= ((4'd10**d_b[19:12]) * (valueB[15:0])>>12);
        d_c <= ((4'd10**d_c[19:12]) * (valueC[15:0])>>12);
        //d_a <= (4'd10**(d_a[19:12]) * valueA[15:0]);
        //d_b <= (4'd10**(d_b[19:12]) * valueB[15:0]);
        //d_c <= (4'd10**(d_c[19:12]) * valueC[15:0]);
    end
    else if(cs_p == P_EXP) begin
        //d_a <= ((d_a>>12)+d_a[11])**2;
        //d_b <= ((d_b>>12)+d_b[11])**2;
        //d_c <= ((d_c>>12)+d_c[11])**2;
        d_a <= d_a **2;
        d_b <= d_b **2;
        d_c <= (d_c*1.01)**2;
    end
    else if(cs_p == P_FIND) begin
        if(flag_A == 1'd1 && flag_B == 1'd1 && flag_C == 1'd1) begin
            find <= 1'd1;
        end
    end
end

always@(posedge clk or posedge rst) begin
    if(rst) begin
        xt <= 8'd0;
        yt <= 8'd0;
    end
    else if(cs_p == P_IDLE) begin
        xt <= 8'd0;
        yt <= 8'd0;
    end 
    else if(cs_p == P_FIND) begin
        if( flag_A && flag_B && flag_C) begin
            xt <= xt;
            yt <= yt;
        end
        else if(xt == 8'd255) begin
            xt <= xt + 8'd1;
            yt <= yt + 8'd1;
        end
        else begin
            xt <= xt + 8'd1;
        end
    end
end

always@(posedge clk or posedge rst) begin
    if(rst) busy <= 1'd0;
    else if(ns == RECV || ns == PROCESS) busy <= 1'd1;
    else if(ns == OUT) busy <= 1'd0;
end

always@(posedge clk or posedge rst) begin
    if(rst) out_valid <= 1'd0;
    else if(ns == OUT) out_valid <= 1'd1;
    else out_valid <= 1'd0;
end

always@(posedge clk or posedge rst) begin
    if(rst) done <= 1'd0;
    else if(ns_p == P_DONE) done <= 1'd1;
    else done <= 1'd0;
end

endmodule
