/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : ConvergenceChecker                                           **
 **                                                                          **
 *****************************************************************************/

module ConvergenceChecker( CONV_FLAG,
                           ERR_TOL,
                           MIN_TOL,
                           NEW_VAL,
                           OLD_VAL,
                           logisimClockTree0 );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input [7:0] ERR_TOL;
   input [7:0] MIN_TOL;
   input [7:0] NEW_VAL;
   input [7:0] OLD_VAL;
   input [4:0] logisimClockTree0;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output CONV_FLAG;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [7:0] s_logisimBus0;
   wire [8:0] s_logisimBus1;
   wire [7:0] s_logisimBus16;
   wire [7:0] s_logisimBus17;
   wire [8:0] s_logisimBus2;
   wire [7:0] s_logisimBus3;
   wire [7:0] s_logisimBus6;
   wire [8:0] s_logisimBus7;
   wire       s_logisimNet10;
   wire       s_logisimNet11;
   wire       s_logisimNet12;
   wire       s_logisimNet13;
   wire       s_logisimNet14;
   wire       s_logisimNet15;
   wire       s_logisimNet18;
   wire       s_logisimNet4;
   wire       s_logisimNet5;
   wire       s_logisimNet8;
   wire       s_logisimNet9;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all wiring is defined                                                 **
   *******************************************************************************/
   assign s_logisimBus0[0] = s_logisimNet8;
   assign s_logisimBus0[1] = s_logisimNet9;
   assign s_logisimBus0[2] = s_logisimNet10;
   assign s_logisimBus0[3] = s_logisimNet11;
   assign s_logisimBus0[4] = s_logisimNet12;
   assign s_logisimBus0[5] = s_logisimNet13;
   assign s_logisimBus0[6] = s_logisimNet14;
   assign s_logisimBus0[7] = s_logisimNet15;
   assign s_logisimNet10   = s_logisimBus7[2];
   assign s_logisimNet11   = s_logisimBus7[3];
   assign s_logisimNet12   = s_logisimBus7[4];
   assign s_logisimNet13   = s_logisimBus7[5];
   assign s_logisimNet14   = s_logisimBus7[6];
   assign s_logisimNet15   = s_logisimBus7[7];
   assign s_logisimNet8    = s_logisimBus7[0];
   assign s_logisimNet9    = s_logisimBus7[1];

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimBus16[7:0] = OLD_VAL;
   assign s_logisimBus17[7:0] = NEW_VAL;
   assign s_logisimBus3[7:0]  = ERR_TOL;
   assign s_logisimBus6[7:0]  = MIN_TOL;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign CONV_FLAG = s_logisimNet18;

   /*******************************************************************************
   ** Here all in-lined components are defined                                   **
   *******************************************************************************/

   // Bit Extender
   assign  s_logisimBus1[0]  =  s_logisimBus16[0];
   assign  s_logisimBus1[1]  =  s_logisimBus16[1];
   assign  s_logisimBus1[2]  =  s_logisimBus16[2];
   assign  s_logisimBus1[3]  =  s_logisimBus16[3];
   assign  s_logisimBus1[4]  =  s_logisimBus16[4];
   assign  s_logisimBus1[5]  =  s_logisimBus16[5];
   assign  s_logisimBus1[6]  =  s_logisimBus16[6];
   assign  s_logisimBus1[7]  =  s_logisimBus16[7];
   assign  s_logisimBus1[8]  =  1'b0;


   // Bit Extender
   assign  s_logisimBus2[0]  =  s_logisimBus17[0];
   assign  s_logisimBus2[1]  =  s_logisimBus17[1];
   assign  s_logisimBus2[2]  =  s_logisimBus17[2];
   assign  s_logisimBus2[3]  =  s_logisimBus17[3];
   assign  s_logisimBus2[4]  =  s_logisimBus17[4];
   assign  s_logisimBus2[5]  =  s_logisimBus17[5];
   assign  s_logisimBus2[6]  =  s_logisimBus17[6];
   assign  s_logisimBus2[7]  =  s_logisimBus17[7];
   assign  s_logisimBus2[8]  =  1'b0;


   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   AND_GATE #(.BubblesMask(2'b00))
      GATES_1 (.input1(s_logisimNet4),
               .input2(s_logisimNet5),
               .result(s_logisimNet18));

   Subtractor #(.extendedBits(10),
                .nrOfBits(9))
      ARITH_2 (.borrowIn(1'b0),
               .borrowOut(),
               .dataA(s_logisimBus1[8:0]),
               .dataB(s_logisimBus2[8:0]),
               .result(s_logisimBus7[8:0]));

   Comparator #(.nrOfBits(8),
                .twosComplement(1))
      ARITH_3 (.aEqualsB(),
               .aGreaterThanB(),
               .aLessThanB(s_logisimNet4),
               .dataA(s_logisimBus0[7:0]),
               .dataB(s_logisimBus3[7:0]));

   Comparator #(.nrOfBits(8),
                .twosComplement(1))
      ARITH_4 (.aEqualsB(),
               .aGreaterThanB(s_logisimNet5),
               .aLessThanB(),
               .dataA(s_logisimBus0[7:0]),
               .dataB(s_logisimBus6[7:0]));


endmodule
