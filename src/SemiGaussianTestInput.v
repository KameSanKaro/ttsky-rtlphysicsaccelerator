/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : SemiGaussianTestInput                                        **
 **                                                                          **
 *****************************************************************************/

module SemiGaussianTestInput( IN11,
                              IN12,
                              IN13,
                              IN14,
                              IN21,
                              IN22,
                              IN23,
                              IN24,
                              IN31,
                              IN32,
                              IN33,
                              IN34,
                              IN41,
                              IN42,
                              IN43,
                              IN44,
                              logisimClockTree0 );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input [4:0] logisimClockTree0;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output [7:0] IN11;
   output [7:0] IN12;
   output [7:0] IN13;
   output [7:0] IN14;
   output [7:0] IN21;
   output [7:0] IN22;
   output [7:0] IN23;
   output [7:0] IN24;
   output [7:0] IN31;
   output [7:0] IN32;
   output [7:0] IN33;
   output [7:0] IN34;
   output [7:0] IN41;
   output [7:0] IN42;
   output [7:0] IN43;
   output [7:0] IN44;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [7:0] s_logisimBus0;
   wire [7:0] s_logisimBus1;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign IN11 = s_logisimBus1[7:0];
   assign IN12 = s_logisimBus1[7:0];
   assign IN13 = s_logisimBus1[7:0];
   assign IN14 = s_logisimBus1[7:0];
   assign IN21 = s_logisimBus1[7:0];
   assign IN22 = s_logisimBus0[7:0];
   assign IN23 = s_logisimBus0[7:0];
   assign IN24 = s_logisimBus1[7:0];
   assign IN31 = s_logisimBus1[7:0];
   assign IN32 = s_logisimBus0[7:0];
   assign IN33 = s_logisimBus0[7:0];
   assign IN34 = s_logisimBus1[7:0];
   assign IN41 = s_logisimBus1[7:0];
   assign IN42 = s_logisimBus1[7:0];
   assign IN43 = s_logisimBus1[7:0];
   assign IN44 = s_logisimBus1[7:0];

   /*******************************************************************************
   ** Here all in-lined components are defined                                   **
   *******************************************************************************/

   // Constant
   assign  s_logisimBus1[7:0]  =  8'h00;


   // Constant
   assign  s_logisimBus0[7:0]  =  8'h10;


endmodule
