/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : BoundaryCell                                                 **
 **                                                                          **
 *****************************************************************************/

module BoundaryCell( Clk,
                     GC_VAL,
                     INIT_VAL,
                     NEXT_VAL,
                     Reset,
                     VonNeumann,
                     logisimClockTree0 );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input       Clk;
   input [7:0] INIT_VAL;
   input [7:0] NEXT_VAL;
   input       Reset;
   input       VonNeumann;
   input [4:0] logisimClockTree0;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output [7:0] GC_VAL;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [7:0] s_logisimBus1;
   wire [7:0] s_logisimBus2;
   wire [7:0] s_logisimBus5;
   wire [7:0] s_logisimBus7;
   wire       s_logisimNet0;
   wire       s_logisimNet3;
   wire       s_logisimNet4;
   wire       s_logisimNet6;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimBus2[7:0] = INIT_VAL;
   assign s_logisimBus5[7:0] = NEXT_VAL;
   assign s_logisimNet3      = Clk;
   assign s_logisimNet4      = Reset;
   assign s_logisimNet6      = VonNeumann;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign GC_VAL = s_logisimBus7[7:0];

   /*******************************************************************************
   ** Here all in-lined components are defined                                   **
   *******************************************************************************/

   // Constant
   assign  s_logisimNet0  =  1'b1;


   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   Multiplexer_bus_2 #(.nrOfBits(8))
      PLEXERS_1 (.enable(1'b1),
                 .muxIn_0(s_logisimBus2[7:0]),
                 .muxIn_1(s_logisimBus5[7:0]),
                 .muxOut(s_logisimBus1[7:0]),
                 .sel(s_logisimNet6));

   Shift_Register #(.negateClock(0),
                    .nrOfBits(8),
                    .nrOfParBits(8),
                    .nrOfStages(1))
      MEMORY_2 (.clock(logisimClockTree0[4]),
                .d({s_logisimBus1[7],
                    s_logisimBus1[6],
                    s_logisimBus1[5],
                    s_logisimBus1[4],
                    s_logisimBus1[3],
                    s_logisimBus1[2],
                    s_logisimBus1[1],
                    s_logisimBus1[0]}),
                .parLoad(s_logisimNet0),
                .q({open,
                    open,
                    open,
                    open,
                    open,
                    open,
                    open,
                    open}),
                .reset(s_logisimNet4),
                .shiftEnable(1'b0),
                .shiftIn(8'd0),
                .shiftOut(s_logisimBus7[7:0]),
                .tick(logisimClockTree0[2]));


endmodule
