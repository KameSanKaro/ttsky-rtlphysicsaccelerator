/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : cellFSM                                                      **
 **                                                                          **
 *****************************************************************************/

module cellFSM( CONV_FLAG,
                Clk,
                Load,
                Reset,
                Shift,
                logisimClockTree0 );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input       CONV_FLAG;
   input       Clk;
   input       Reset;
   input [4:0] logisimClockTree0;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output Load;
   output Shift;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire s_logisimNet0;
   wire s_logisimNet1;
   wire s_logisimNet2;
   wire s_logisimNet3;
   wire s_logisimNet4;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimNet0 = Reset;
   assign s_logisimNet1 = Clk;
   assign s_logisimNet4 = CONV_FLAG;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign Load  = s_logisimNet2;
   assign Shift = s_logisimNet3;

   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   NOR_GATE #(.BubblesMask(2'b00))
      GATES_1 (.input1(s_logisimNet0),
               .input2(s_logisimNet4),
               .result(s_logisimNet3));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_2 (.clock(logisimClockTree0[4]),
                .d(s_logisimNet0),
                .preset(1'b0),
                .q(s_logisimNet2),
                .qBar(),
                .reset(1'b0),
                .tick(logisimClockTree0[2]));


endmodule
