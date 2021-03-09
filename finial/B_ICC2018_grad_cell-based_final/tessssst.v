module test;

reg clk;

reg [19:0] RSSIA;
reg [19:0] RSSIB;
reg [19:0] RSSIC;

reg [11:0] expA,expB,expC;
always @(*) begin
    expA = RSSIA[11:0];
    expB = RSSIB[11:0];
    expC = RSSIC[11:0];
end
wire [15:0] valueA,valueB,valueC;
TABLE u_TABLEA(.exp        (12'h66f       ),
               .value      (valueA     )
              );

TABLE u_TABLEB(.exp        (expB       ),
               .value      (valueB     )
              );

TABLE u_TABLEC(.exp        (expC       ),
               .value      (valueC     )
              );





reg [99:0] d_a,d_b,d_c;
wire [35:0] d_a_R = d_a[47:13];
reg [7:0] xt,yt,A_x,A_y,B_x,B_y,C_x,C_y;
wire [7:0] RSSIA_R = RSSIA[19:12];
initial begin
    clk = 1'd0;

    A_x = 8'd2;
    A_y = 8'd2;

    B_x = 8'd62;
    B_y = 8'd2;

    C_x = 8'd62;
    C_y = 8'd62; 

    //xt = 8'd0;
    //yt = 8'd0;
    xt = 8'd52;
    yt = 8'd7;

    RSSIA = 20'hA2FA4;
    RSSIB = 20'hB007F;
    RSSIC = 20'hA20D3;
    
    //RSSIA = 20'hA608D;
    //RSSIB = 20'hA6F61;
    //RSSIC = 20'hA283C;

    RSSIA = 20'hB1819;
    RSSIB = 20'hA2A3E;
    RSSIC = 20'h9F6B6;
#1
    RSSIA = ~(RSSIA-20'h1);
    RSSIB = ~(RSSIB-20'h1);
    RSSIC = ~(RSSIC-20'h1);
#1    
    RSSIA = RSSIA - {8'd59,12'd0};
    RSSIB = RSSIB - {8'd59,12'd0};
    RSSIC = RSSIC - {8'd59,12'd0};
#1
    RSSIA = (RSSIA)/20;
    RSSIB = (RSSIB)/20;
    RSSIC = (RSSIC)/20;
#1
    d_a = (4'd10**8'd3 * valueA);
    //d_a = (4'd10**RSSIA[19:12]) * (valueA[15:0]);
    d_b = (4'd10**RSSIB[19:12]) * (valueB[15:0]);
    d_c = (4'd10**RSSIC[19:12]) * (valueC[15:0]);
#1 
    d_a = (d_a >> 12) + d_a[11];
    d_b = d_b >> 12;
    d_c = d_c >> 12;
 
end



always #10 clk = ~clk;



wire [7:0] x_a_minus_t = (A_x > xt) ? (A_x - xt) : (xt - A_x);
wire [7:0] x_b_minus_t = (B_x > xt) ? (B_x - xt) : (xt - B_x);
wire [7:0] x_c_minus_t = (C_x > xt) ? (C_x - xt) : (xt - C_x);

wire [7:0] y_a_minus_t = (A_y > yt) ? (A_y - yt) : (yt - A_y);
wire [7:0] y_b_minus_t = (B_y > yt) ? (B_y - yt) : (yt - B_y);
wire [7:0] y_c_minus_t = (C_y > yt) ? (C_y - yt) : (yt - C_y);

wire [16:0] dd_a =(x_a_minus_t)*(x_a_minus_t) + (y_a_minus_t)*(y_a_minus_t);
wire [15:0] dd_b =(x_b_minus_t)**2 + (y_b_minus_t)**2;
wire [15:0] dd_c =(x_c_minus_t)**2 + (y_c_minus_t)**2;

wire flag_A = (dd_a <= d_a*d_a+100 && dd_a >= d_a*d_a-100);
wire flag_B = (dd_b <= d_b*d_b+100 && dd_b >= d_b*d_b-100);
wire flag_C = (dd_c <= d_c*d_c+100);


always @(posedge clk) begin
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


initial begin
    #1000000 $finish;
end

initial begin
$fsdbDumpfile("tesssst.fsdb");
$fsdbDumpvars;
$fsdbDumpMDA;
end

endmodule