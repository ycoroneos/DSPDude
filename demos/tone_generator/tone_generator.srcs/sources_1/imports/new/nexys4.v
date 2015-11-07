`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2015 03:40:49 PM
// Design Name: 
// Module Name: nexys4
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module nexys4(
input CLK100MHZ, //input clock
input RESET, //switches
output [10:1] JA, //output ports
output[7:0] SEG,  // segments A-G (0-6), DP (7)
output[7:0] AN,    // Display 0-7
output [15:0] LED,
output LED16_B
    );
    //  instantiate 7-segment display;
    wire [20:0] statedisplay;
    //wire [31:0] data={{11{1'b0}}, statedisplay};
    //wire [31:0] data={{16{1'b1}},{16{1'b0}}};
    //wire [6:0] segments;
    //display_8hex display(.clk(akm_mclk),.data(data), .seg(segments), .strobe(AN));    
    //assign SEG[6:0] = segments;
    assign SEG[7] = 1'b1;
    assign LED[15:0]=statedisplay[20:5];
    assign LED16_B = codecidle;
    //assign LED[15:0]={16{codecidle}};
    //assign LED[15:0]={16{1'b1}};
    
    
    wire akm_mclk, akm_lrclk, akm_bclk, serial_clk;
    wire codecwritedata, codec_cs, codec_dataline, PDN, start, codecidle, codec_sdata;
    assign codec_sdata=0;
    assign JA[1]=akm_mclk;
    assign JA[10]=akm_lrclk;
    assign JA[3]=akm_bclk;
    assign JA[4] = codec_sdata;
    assign JA[2]=PDN;
    clockmaker clocks(.clk100mhz(CLK100MHZ), .reset(0), .akm_mclk(akm_mclk), .akm_lrclk(akm_lrclk), .akm_bclk(akm_bclk), .serial_clk(serial_clk));
    assign JA[9] = codec_cs;
    assign JA[8] = serial_clk;
    assign JA[7] = codec_dataline;
    wire [23:0] sound;
    tonegen tone(.clock(akm_mclk), .ready(akm_lrclk), .pcm_data(sound));
    serialcontroller codecbus(.serialclk(serial_clk), .data(codecwritedata), .cs(codec_cs), .shiftout(codec_dataline), .start(start));
    akm4396settingscontroller codecfsm(.clk100mhz(akm_mclk), .reset(RESET), .done(codec_cs), .data(codecwritedata), .start(start), .PDN(PDN), .idle(codecidle), .statedisplay(statedisplay));
    //i2s_output noisemaker(.reset(RESET), .bick(akm_bclk), .lrck(akm_lrclk), .data_left(sound), .data_right(sound), .start(akm_lrclk), .stop(i2sdone), .sdata(codec_sdata));
    
endmodule
