module top_ulx4m_blink
(
    input   clk_25mhz,
    output  [7:0] led
);

    wire clk_locked;
    wire [3:0] clocks;
    ecp5pll
    #(
      .in_hz(25*1000000), // 25 MHz
      .out0_hz(100*1000000), // 100
      .out1_hz(200*1000000), // 200
      .out2_hz(300*1000000)  // 300
    )
    clk_25_video
    (
      .clk_i(clk_25mhz),
      .clk_o(clocks),
      .locked(clk_locked)
    );

    wire clk_100 = clocks[0];
    wire clk_200 = clocks[1];
    wire clk_300 = clocks[2];

    assign led[0] = clk_100;
    assign led[1] = clk_200;
    assign led[2] = clk_300;

	reg[32:0] counter100;
	initial counter100 = 0;

	always @ (posedge clk_100) begin
	    counter100 <= counter100 + 1'b1;
	end

	reg[32:0] counter200;
	initial counter200 = 0;

	always @ (posedge clk_200) begin
	    counter200 <= counter200 + 1'b1;
	end


	reg[32:0] counter300;
	initial counter300 = 0;

	always @ (posedge clk_300) begin
	    counter300 <= counter300 + 1'b1;
	end

    assign led[3] = counter100[1];
    assign led[4] = counter100[24];
    assign led[5] = counter100[25];
    assign led[6] = counter200[26];
    assign led[7] = counter300[27];

endmodule
