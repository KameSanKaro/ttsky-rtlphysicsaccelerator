/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : cellALU                                                      **
 **                                                                          **
 *****************************************************************************/

module cellALU( IN01,
                IN0NEG1,
                IN10,
                INNEG10,
                NEW_VAL,
                logisimClockTree0 );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input [7:0] IN01;
   input [7:0] IN0NEG1;
   input [7:0] IN10;
   input [7:0] INNEG10;
   input [4:0] logisimClockTree0;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output [7:0] NEW_VAL;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [7:0] s_logisimBus0;
   wire [7:0] s_logisimBus1;
   wire [7:0] s_logisimBus2;
   wire [7:0] s_logisimBus3;
   wire [7:0] s_logisimBus4;
   wire [7:0] s_logisimBus5;
   wire [7:0] s_logisimBus6;
   wire [7:0] s_logisimBus7;
   wire [2:0] s_logisimBus8;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimBus1[7:0] = IN10;
   assign s_logisimBus2[7:0] = IN0NEG1;
   assign s_logisimBus4[7:0] = IN01;
   assign s_logisimBus5[7:0] = INNEG10;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign NEW_VAL = s_logisimBus0[7:0];

   /*******************************************************************************
   ** Here all in-lined components are defined                                   **
   *******************************************************************************/

   // Constant
   assign  s_logisimBus8[2:0]  =  3'b010;


   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   Adder #(.extendedBits(9),
           .nrOfBits(8))
      ARITH_1 (.carryIn(1'b0),
               .carryOut(),
               .dataA(s_logisimBus4[7:0]),
               .dataB(s_logisimBus1[7:0]),
               .result(s_logisimBus6[7:0]));

   Adder #(.extendedBits(9),
           .nrOfBits(8))
      ARITH_2 (.carryIn(1'b0),
               .carryOut(),
               .dataA(s_logisimBus2[7:0]),
               .dataB(s_logisimBus5[7:0]),
               .result(s_logisimBus7[7:0]));

   Adder #(.extendedBits(9),
           .nrOfBits(8))
      ARITH_3 (.carryIn(1'b0),
               .carryOut(),
               .dataA(s_logisimBus6[7:0]),
               .dataB(s_logisimBus7[7:0]),
               .result(s_logisimBus3[7:0]));

   Shifter_8_bit #(.shifterMode(2))
      ARITH_4 (.dataA(s_logisimBus3[7:0]),
               .result(s_logisimBus0[7:0]),
               .shiftAmount(s_logisimBus8[2:0]));


endmodule
