/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : gridcellREGALU                                               **
 **                                                                          **
 *****************************************************************************/

module gridcellREGALU( Clk,
                       IN01,
                       IN0NEG1,
                       IN10,
                       INNEG10,
                       Load,
                       NEW_VAL,
                       OLD_VAL,
                       Reset,
                       Shift,
                       VAL,
                       logisimClockTree0 );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input       Clk;
   input [7:0] IN01;
   input [7:0] IN0NEG1;
   input [7:0] IN10;
   input [7:0] INNEG10;
   input       Load;
   input       Reset;
   input       Shift;
   input [7:0] VAL;
   input [4:0] logisimClockTree0;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output [7:0] NEW_VAL;
   output [7:0] OLD_VAL;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [7:0] s_logisimBus1;
   wire [7:0] s_logisimBus10;
   wire [7:0] s_logisimBus11;
   wire [7:0] s_logisimBus3;
   wire [7:0] s_logisimBus5;
   wire [7:0] s_logisimBus6;
   wire [7:0] s_logisimBus8;
   wire [7:0] s_logisimBus9;
   wire       s_logisimNet0;
   wire       s_logisimNet2;
   wire       s_logisimNet4;
   wire       s_logisimNet7;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimBus10[7:0] = IN01;
   assign s_logisimBus11[7:0] = VAL;
   assign s_logisimBus5[7:0]  = IN10;
   assign s_logisimBus6[7:0]  = IN0NEG1;
   assign s_logisimBus9[7:0]  = INNEG10;
   assign s_logisimNet0       = Shift;
   assign s_logisimNet2       = Reset;
   assign s_logisimNet4       = Clk;
   assign s_logisimNet7       = Load;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign NEW_VAL = s_logisimBus8[7:0];
   assign OLD_VAL = s_logisimBus3[7:0];

   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   Shift_Register #(.negateClock(0),
                    .nrOfBits(8),
                    .nrOfParBits(16),
                    .nrOfStages(2))
      MEMORY_1 (.clock(logisimClockTree0[4]),
                .d({s_logisimBus8[7],
                    s_logisimBus11[7],
                    s_logisimBus8[6],
                    s_logisimBus11[6],
                    s_logisimBus8[5],
                    s_logisimBus11[5],
                    s_logisimBus8[4],
                    s_logisimBus11[4],
                    s_logisimBus8[3],
                    s_logisimBus11[3],
                    s_logisimBus8[2],
                    s_logisimBus11[2],
                    s_logisimBus8[1],
                    s_logisimBus11[1],
                    s_logisimBus8[0],
                    s_logisimBus11[0]}),
                .parLoad(s_logisimNet7),
                .q({open,
                    s_logisimBus8[7],
                    open,
                    s_logisimBus8[6],
                    open,
                    s_logisimBus8[5],
                    open,
                    s_logisimBus8[4],
                    open,
                    s_logisimBus8[3],
                    open,
                    s_logisimBus8[2],
                    open,
                    s_logisimBus8[1],
                    open,
                    s_logisimBus8[0]}),
                .reset(s_logisimNet2),
                .shiftEnable(s_logisimNet0),
                .shiftIn(s_logisimBus1[7:0]),
                .shiftOut(s_logisimBus3[7:0]),
                .tick(logisimClockTree0[2]));


   /*******************************************************************************
   ** Here all sub-circuits are defined                                          **
   *******************************************************************************/

   cellALU   cellALUlolol (.IN01(s_logisimBus10[7:0]),
                           .IN0NEG1(s_logisimBus6[7:0]),
                           .IN10(s_logisimBus5[7:0]),
                           .INNEG10(s_logisimBus9[7:0]),
                           .NEW_VAL(s_logisimBus1[7:0]),
                           .logisimClockTree0(logisimClockTree0));

endmodule
