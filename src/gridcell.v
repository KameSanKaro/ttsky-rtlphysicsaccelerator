/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : gridcell                                                     **
 **                                                                          **
 *****************************************************************************/

module gridcell( Clk,
                 ERR_TOL,
                 GC_VAL,
                 IN01,
                 IN0NEG1,
                 IN10,
                 INNEG10,
                 MIN_TOL,
                 Reset,
                 VAL,
                 logisimClockTree0 );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input       Clk;
   input [7:0] ERR_TOL;
   input [7:0] IN01;
   input [7:0] IN0NEG1;
   input [7:0] IN10;
   input [7:0] INNEG10;
   input [7:0] MIN_TOL;
   input       Reset;
   input [7:0] VAL;
   input [4:0] logisimClockTree0;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output [7:0] GC_VAL;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [7:0] s_logisimBus0;
   wire [7:0] s_logisimBus11;
   wire [7:0] s_logisimBus12;
   wire [7:0] s_logisimBus13;
   wire [7:0] s_logisimBus3;
   wire [7:0] s_logisimBus4;
   wire [7:0] s_logisimBus6;
   wire [7:0] s_logisimBus8;
   wire [7:0] s_logisimBus9;
   wire       s_logisimNet1;
   wire       s_logisimNet10;
   wire       s_logisimNet2;
   wire       s_logisimNet5;
   wire       s_logisimNet7;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimBus0[7:0]  = MIN_TOL;
   assign s_logisimBus11[7:0] = IN10;
   assign s_logisimBus12[7:0] = ERR_TOL;
   assign s_logisimBus13[7:0] = INNEG10;
   assign s_logisimBus3[7:0]  = VAL;
   assign s_logisimBus6[7:0]  = IN01;
   assign s_logisimBus9[7:0]  = IN0NEG1;
   assign s_logisimNet1       = Reset;
   assign s_logisimNet2       = Clk;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign GC_VAL = s_logisimBus4[7:0];

   /*******************************************************************************
   ** Here all sub-circuits are defined                                          **
   *******************************************************************************/

   gridcellREGALU   gridcellREGALU_1 (.Clk(s_logisimNet2),
                                      .IN01(s_logisimBus6[7:0]),
                                      .IN0NEG1(s_logisimBus9[7:0]),
                                      .IN10(s_logisimBus11[7:0]),
                                      .INNEG10(s_logisimBus13[7:0]),
                                      .Load(s_logisimNet7),
                                      .NEW_VAL(s_logisimBus4[7:0]),
                                      .OLD_VAL(s_logisimBus8[7:0]),
                                      .Reset(s_logisimNet1),
                                      .Shift(s_logisimNet10),
                                      .VAL(s_logisimBus3[7:0]),
                                      .logisimClockTree0(logisimClockTree0));

   cellFSM   cellFSM_1 (.CONV_FLAG(s_logisimNet5),
                        .Clk(s_logisimNet2),
                        .Load(s_logisimNet7),
                        .Reset(s_logisimNet1),
                        .Shift(s_logisimNet10),
                        .logisimClockTree0(logisimClockTree0));

   ConvergenceChecker   ConvergenceChecker_1 (.CONV_FLAG(s_logisimNet5),
                                              .ERR_TOL(s_logisimBus12[7:0]),
                                              .MIN_TOL(s_logisimBus0[7:0]),
                                              .NEW_VAL(s_logisimBus4[7:0]),
                                              .OLD_VAL(s_logisimBus8[7:0]),
                                              .logisimClockTree0(logisimClockTree0));

endmodule
