`timescale 1ns/10ps
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

reg done,busy;
reg out_valid;
reg pow_a,pow_b,pow_c;
reg [31:0] d_a,d_b,d_c;

reg signed [15:0] X_0,X_1,Y_0,Y_1,C_0,C_1;
reg signed [31:0] delt_x,delt_y,delt;

reg [7:0] xt,yt;
reg [7:0] d_ar,d_br,d_cr;
reg [7:0] cnt_pow_a,cnt_pow_b,cnt_pow_c;

reg [11:0] expA;
reg [11:0] expB;
reg [11:0] expC;

parameter IDLE = 2'd0;
parameter RECV = 2'd3;
parameter PROCESS = 2'd1;
parameter OUT = 2'd2;

parameter P_IDLE = 4'd0;
parameter P_RSSI_2S = 4'd1;
parameter P_DISTANCE_0 = 4'd2;
parameter P_DISTANCE_1 = 4'd3;
parameter P_DISTANCE_2 = 4'd4;
parameter P_DISTANCE_3 = 4'd5;
parameter P_DISTANCE_4 = 4'd6;
parameter P_COMPUTE_0 = 4'd7;
parameter P_COMPUTE_1 = 4'd8;
parameter P_COMPUTE_2 = 4'd9;
parameter P_COMPUTE_3 = 4'd10;
parameter P_COMPUTE_4 = 4'd11;
parameter P_POW = 4'd12;
parameter P_DONE = 4'd15;

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
        P_RSSI_2S: ns_p = P_DISTANCE_0;
        P_DISTANCE_0: ns_p = P_DISTANCE_1;
        P_DISTANCE_1: begin
            ns_p = P_DISTANCE_2;
        end
        P_DISTANCE_2: begin
            ns_p = P_POW;
        end
        P_POW: begin
            if(pow_a == 1'd1 && pow_b == 1'd1 && pow_c == 1'd1) ns_p = P_DISTANCE_3;
            else ns_p = P_POW;
        end
        P_DISTANCE_3: begin
            ns_p = P_DISTANCE_4;
        end
        P_DISTANCE_4: begin
            ns_p = P_COMPUTE_0;
        end
        P_COMPUTE_0: begin
            ns_p = P_COMPUTE_1;
        end
        P_COMPUTE_1: begin
            ns_p = P_COMPUTE_2;
        end
        P_COMPUTE_2: begin
            ns_p = P_COMPUTE_3;
        end
        P_COMPUTE_3: begin
            ns_p = P_COMPUTE_4;
        end
        P_COMPUTE_4: begin
            ns_p = P_DONE;
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

        pow_a <= 1'd0;
        pow_b <= 1'd0;
        pow_c <= 1'd0;

        xt <= 8'd0;
        yt <= 8'd0;

        X_0 <= 17'd0;
        X_1 <= 17'd0;

        Y_0 <= 17'd0;
        Y_1 <= 17'd0;

        C_0 <= 17'd0;
        C_1 <= 17'd0;

        delt_x <= 33'd0;
        delt_y <= 33'd0;
        delt <= 33'd0;

        cnt_pow_a <= 8'd0;
        cnt_pow_b <= 8'd0;
        cnt_pow_c <= 8'd0;

        expA <= 12'd0;
        expB <= 12'd0;
        expC <= 12'd0;
    end
    else if(cs_p == IDLE) begin
        pow_a <= 1'd0;
        pow_b <= 1'd0;
        pow_c <= 1'd0;
    end
    else if(cs_p == P_RSSI_2S) begin
        d_a[19:0] <= ~(rssiA-20'h1);
        d_b[19:0] <= ~(rssiB-20'h1);
        d_c[19:0] <= ~(rssiC-20'h1);
    end
    else if(cs_p == P_DISTANCE_0) begin
        d_a <= ((d_a[19:0]-{8'd59,12'd0})>>1);
        d_b <= ((d_b[19:0]-{8'd59,12'd0})>>1);
        d_c <= ((d_c[19:0]-{8'd59,12'd0})>>1);
    end
    else if(cs_p == P_DISTANCE_1) begin
        d_a <= d_a / 4'd10;
        d_b <= d_b / 4'd10;
        d_c <= d_c / 4'd10;
    end
    else if(cs_p == P_DISTANCE_2) begin
        d_ar <= d_a[19:12];
        d_br <= d_b[19:12];
        d_cr <= d_c[19:12];

        d_a <= 32'd1;
        d_b <= 32'd1;
        d_c <= 32'd1;

        cnt_pow_a <= 8'd0;
        cnt_pow_b <= 8'd0;
        cnt_pow_c <= 8'd0;

        expA <= d_a[11:0];
        expB <= d_b[11:0];
        expC <= d_c[11:0];
    end
    else if(cs_p == P_POW) begin
        if(cnt_pow_a < d_ar) begin
            d_a <= d_a*4'd10;
            cnt_pow_a <= cnt_pow_a + 8'd1;
        end
        else pow_a <= 1'd1;
        
        if(cnt_pow_b < d_br) begin
            d_b <= d_b*4'd10;
            cnt_pow_b <= cnt_pow_b + 8'd1;
        end
        else pow_b <= 1'd1;

        if(cnt_pow_c < d_cr) begin
            d_c <= d_c*4'd10;
            cnt_pow_c <= cnt_pow_c + 8'd1;
        end
        else pow_c <= 1'd1;
        
    end
    else if(cs_p == P_DISTANCE_3) begin
        pow_a <= 1'd0;
        pow_b <= 1'd0;
        pow_c <= 1'd0;

        d_a <= (d_a * valueA)>>12;
        d_b <= (d_b * valueB)>>12;
        d_c <= (d_c * valueC)>>12;
    end
    else if(cs_p == P_DISTANCE_4) begin
        d_a <= d_a*d_a;
        d_b <= d_b*d_b;
        d_c <= d_c*d_c;
    end
    else if(cs_p == P_COMPUTE_0) begin
        C_0 <= (d_a - d_b) - A_x*A_x + B_x*B_x - A_y*A_y + B_y*B_y;
    end
    else if(cs_p == P_COMPUTE_1) begin
        C_1 <= (d_b - d_c) - B_x*B_x + C_x*C_x - B_y*B_y + C_y*C_y;
    end
    else if(cs_p == P_COMPUTE_2) begin
        X_0 <= (B_x - A_x)<<1;
        X_1 <= (C_x - B_x)<<1;
        Y_0 <= (B_y - A_y)<<1;
        Y_1 <= (C_y - B_y)<<1;
    end
    else if(cs_p == P_COMPUTE_3) begin
        delt <= X_0*Y_1 - X_1*Y_0;
        delt_x <= C_0*Y_1 - Y_0*C_1;
        delt_y <= X_0*C_1 - X_1*C_0;
    end
    else if(cs_p == P_COMPUTE_4) begin
        xt <= delt_x / delt;
        yt <= delt_y / delt;
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
