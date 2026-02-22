/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : main                                                         **
 **                                                                          **
 *****************************************************************************/

module main( RESULT,
             Reset,
             VonNeumann,
             logisimClockTree0 );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input       Reset;
   input       VonNeumann;
   input [4:0] logisimClockTree0;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output [7:0] RESULT;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [7:0] s_logisimBus0;
   wire [7:0] s_logisimBus1;
   wire [7:0] s_logisimBus10;
   wire [7:0] s_logisimBus11;
   wire [7:0] s_logisimBus12;
   wire [7:0] s_logisimBus13;
   wire [7:0] s_logisimBus14;
   wire [7:0] s_logisimBus15;
   wire [7:0] s_logisimBus16;
   wire [7:0] s_logisimBus17;
   wire [7:0] s_logisimBus18;
   wire [7:0] s_logisimBus19;
   wire [7:0] s_logisimBus20;
   wire [7:0] s_logisimBus21;
   wire [7:0] s_logisimBus22;
   wire [7:0] s_logisimBus23;
   wire [7:0] s_logisimBus24;
   wire [7:0] s_logisimBus25;
   wire [7:0] s_logisimBus26;
   wire [7:0] s_logisimBus27;
   wire [7:0] s_logisimBus28;
   wire [7:0] s_logisimBus30;
   wire [7:0] s_logisimBus31;
   wire [7:0] s_logisimBus32;
   wire [7:0] s_logisimBus35;
   wire [7:0] s_logisimBus36;
   wire [7:0] s_logisimBus39;
   wire [7:0] s_logisimBus4;
   wire [7:0] s_logisimBus6;
   wire [7:0] s_logisimBus8;
   wire [7:0] s_logisimBus9;
   wire       s_logisimNet2;
   wire       s_logisimNet29;
   wire       s_logisimNet3;
   wire       s_logisimNet33;
   wire       s_logisimNet34;
   wire       s_logisimNet37;
   wire       s_logisimNet38;
   wire       s_logisimNet40;
   wire       s_logisimNet41;
   wire       s_logisimNet5;
   wire       s_logisimNet7;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** All clock generator connections are defined here                           **
   *******************************************************************************/
   assign s_logisimNet3 = logisimClockTree0[0];

   /*******************************************************************************
   ** Here all wiring is defined                                                 **
   *******************************************************************************/
   assign s_logisimBus39[0] = s_logisimNet29;
   assign s_logisimBus39[1] = s_logisimNet40;
   assign s_logisimBus39[2] = s_logisimNet41;
   assign s_logisimBus39[3] = s_logisimNet33;
   assign s_logisimBus39[4] = s_logisimNet37;
   assign s_logisimBus39[5] = s_logisimNet34;
   assign s_logisimBus39[6] = s_logisimNet7;
   assign s_logisimBus39[7] = s_logisimNet38;
   assign s_logisimNet29    = s_logisimBus4[2];
   assign s_logisimNet33    = s_logisimBus0[3];
   assign s_logisimNet34    = s_logisimBus11[3];
   assign s_logisimNet37    = s_logisimBus11[2];
   assign s_logisimNet38    = s_logisimBus23[3];
   assign s_logisimNet40    = s_logisimBus4[3];
   assign s_logisimNet41    = s_logisimBus0[2];
   assign s_logisimNet7     = s_logisimBus23[2];

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimNet2 = VonNeumann;
   assign s_logisimNet5 = Reset;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign RESULT = s_logisimBus39[7:0];

   /*******************************************************************************
   ** Here all in-lined components are defined                                   **
   *******************************************************************************/

   // Constant
   assign  s_logisimBus12[7:0]  =  8'h02;


   // Constant
   assign  s_logisimBus1[7:0]  =  8'h01;


   /*******************************************************************************
   ** Here all sub-circuits are defined                                          **
   *******************************************************************************/

   gridcell   gridcell_3 (.Clk(s_logisimNet3),
                          .ERR_TOL(s_logisimBus12[7:0]),
                          .GC_VAL(s_logisimBus11[7:0]),
                          .IN01(s_logisimBus23[7:0]),
                          .IN0NEG1(s_logisimBus16[7:0]),
                          .IN10(s_logisimBus0[7:0]),
                          .INNEG10(s_logisimBus31[7:0]),
                          .MIN_TOL(s_logisimBus1[7:0]),
                          .Reset(s_logisimNet5),
                          .VAL(s_logisimBus6[7:0]),
                          .logisimClockTree0(logisimClockTree0));

   BoundaryCell   BoundaryCell_10 (.Clk(s_logisimNet3),
                                   .GC_VAL(s_logisimBus16[7:0]),
                                   .INIT_VAL(s_logisimBus28[7:0]),
                                   .NEXT_VAL(s_logisimBus11[7:0]),
                                   .Reset(s_logisimNet5),
                                   .VonNeumann(s_logisimNet2),
                                   .logisimClockTree0(logisimClockTree0));

   BoundaryCell   BoundaryCell_2 (.Clk(s_logisimNet3),
                                  .GC_VAL(s_logisimBus19[7:0]),
                                  .INIT_VAL(s_logisimBus15[7:0]),
                                  .NEXT_VAL(s_logisimBus23[7:0]),
                                  .Reset(s_logisimNet5),
                                  .VonNeumann(s_logisimNet2),
                                  .logisimClockTree0(logisimClockTree0));

   gridcell   gridcell_1 (.Clk(s_logisimNet3),
                          .ERR_TOL(s_logisimBus12[7:0]),
                          .GC_VAL(s_logisimBus23[7:0]),
                          .IN01(s_logisimBus19[7:0]),
                          .IN0NEG1(s_logisimBus11[7:0]),
                          .IN10(s_logisimBus4[7:0]),
                          .INNEG10(s_logisimBus24[7:0]),
                          .MIN_TOL(s_logisimBus1[7:0]),
                          .Reset(s_logisimNet5),
                          .VAL(s_logisimBus13[7:0]),
                          .logisimClockTree0(logisimClockTree0));

   gridcell   gridcell_4 (.Clk(s_logisimNet3),
                          .ERR_TOL(s_logisimBus12[7:0]),
                          .GC_VAL(s_logisimBus0[7:0]),
                          .IN01(s_logisimBus4[7:0]),
                          .IN0NEG1(s_logisimBus27[7:0]),
                          .IN10(s_logisimBus35[7:0]),
                          .INNEG10(s_logisimBus11[7:0]),
                          .MIN_TOL(s_logisimBus1[7:0]),
                          .Reset(s_logisimNet5),
                          .VAL(s_logisimBus21[7:0]),
                          .logisimClockTree0(logisimClockTree0));

   BoundaryCell   BoundaryCell_11 (.Clk(s_logisimNet3),
                                   .GC_VAL(s_logisimBus27[7:0]),
                                   .INIT_VAL(s_logisimBus25[7:0]),
                                   .NEXT_VAL(s_logisimBus0[7:0]),
                                   .Reset(s_logisimNet5),
                                   .VonNeumann(s_logisimNet2),
                                   .logisimClockTree0(logisimClockTree0));

   BoundaryCell   BoundaryCell_3 (.Clk(s_logisimNet3),
                                  .GC_VAL(s_logisimBus20[7:0]),
                                  .INIT_VAL(s_logisimBus36[7:0]),
                                  .NEXT_VAL(s_logisimBus4[7:0]),
                                  .Reset(s_logisimNet5),
                                  .VonNeumann(s_logisimNet2),
                                  .logisimClockTree0(logisimClockTree0));

   gridcell   gridcell_2 (.Clk(s_logisimNet3),
                          .ERR_TOL(s_logisimBus12[7:0]),
                          .GC_VAL(s_logisimBus4[7:0]),
                          .IN01(s_logisimBus20[7:0]),
                          .IN0NEG1(s_logisimBus0[7:0]),
                          .IN10(s_logisimBus8[7:0]),
                          .INNEG10(s_logisimBus23[7:0]),
                          .MIN_TOL(s_logisimBus1[7:0]),
                          .Reset(s_logisimNet5),
                          .VAL(s_logisimBus22[7:0]),
                          .logisimClockTree0(logisimClockTree0));

   BoundaryCell   BoundaryCell_8 (.Clk(s_logisimNet3),
                                  .GC_VAL(s_logisimBus35[7:0]),
                                  .INIT_VAL(s_logisimBus10[7:0]),
                                  .NEXT_VAL(s_logisimBus0[7:0]),
                                  .Reset(s_logisimNet5),
                                  .VonNeumann(s_logisimNet2),
                                  .logisimClockTree0(logisimClockTree0));

   BoundaryCell   BoundaryCell_12 (.Clk(s_logisimNet3),
                                   .GC_VAL(),
                                   .INIT_VAL(s_logisimBus9[7:0]),
                                   .NEXT_VAL(s_logisimBus0[7:0]),
                                   .Reset(s_logisimNet5),
                                   .VonNeumann(s_logisimNet2),
                                   .logisimClockTree0(logisimClockTree0));

   BoundaryCell   BoundaryCell_4 (.Clk(s_logisimNet3),
                                  .GC_VAL(),
                                  .INIT_VAL(s_logisimBus32[7:0]),
                                  .NEXT_VAL(s_logisimBus4[7:0]),
                                  .Reset(s_logisimNet5),
                                  .VonNeumann(s_logisimNet2),
                                  .logisimClockTree0(logisimClockTree0));

   BoundaryCell   BoundaryCell_6 (.Clk(s_logisimNet3),
                                  .GC_VAL(s_logisimBus8[7:0]),
                                  .INIT_VAL(s_logisimBus18[7:0]),
                                  .NEXT_VAL(s_logisimBus4[7:0]),
                                  .Reset(s_logisimNet5),
                                  .VonNeumann(s_logisimNet2),
                                  .logisimClockTree0(logisimClockTree0));

   SemiGaussianTestInput   TESTINPUT (.IN11(s_logisimBus30[7:0]),
                                      .IN12(s_logisimBus15[7:0]),
                                      .IN13(s_logisimBus36[7:0]),
                                      .IN14(s_logisimBus32[7:0]),
                                      .IN21(s_logisimBus17[7:0]),
                                      .IN22(s_logisimBus13[7:0]),
                                      .IN23(s_logisimBus22[7:0]),
                                      .IN24(s_logisimBus18[7:0]),
                                      .IN31(s_logisimBus26[7:0]),
                                      .IN32(s_logisimBus6[7:0]),
                                      .IN33(s_logisimBus21[7:0]),
                                      .IN34(s_logisimBus10[7:0]),
                                      .IN41(s_logisimBus14[7:0]),
                                      .IN42(s_logisimBus28[7:0]),
                                      .IN43(s_logisimBus25[7:0]),
                                      .IN44(s_logisimBus9[7:0]),
                                      .logisimClockTree0(logisimClockTree0));

   BoundaryCell   BoundaryCell_7 (.Clk(s_logisimNet3),
                                  .GC_VAL(s_logisimBus31[7:0]),
                                  .INIT_VAL(s_logisimBus26[7:0]),
                                  .NEXT_VAL(s_logisimBus11[7:0]),
                                  .Reset(s_logisimNet5),
                                  .VonNeumann(s_logisimNet2),
                                  .logisimClockTree0(logisimClockTree0));

   BoundaryCell   BoundaryCell_9 (.Clk(s_logisimNet3),
                                  .GC_VAL(),
                                  .INIT_VAL(s_logisimBus14[7:0]),
                                  .NEXT_VAL(s_logisimBus11[7:0]),
                                  .Reset(s_logisimNet5),
                                  .VonNeumann(s_logisimNet2),
                                  .logisimClockTree0(logisimClockTree0));

   BoundaryCell   BoundaryCell_1 (.Clk(s_logisimNet3),
                                  .GC_VAL(),
                                  .INIT_VAL(s_logisimBus30[7:0]),
                                  .NEXT_VAL(s_logisimBus23[7:0]),
                                  .Reset(s_logisimNet5),
                                  .VonNeumann(s_logisimNet2),
                                  .logisimClockTree0(logisimClockTree0));

   BoundaryCell   BoundaryCell_5 (.Clk(s_logisimNet3),
                                  .GC_VAL(s_logisimBus24[7:0]),
                                  .INIT_VAL(s_logisimBus17[7:0]),
                                  .NEXT_VAL(s_logisimBus23[7:0]),
                                  .Reset(s_logisimNet5),
                                  .VonNeumann(s_logisimNet2),
                                  .logisimClockTree0(logisimClockTree0));

endmodule
