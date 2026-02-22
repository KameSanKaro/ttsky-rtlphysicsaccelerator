/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : Shifter_8_bit                                                **
 **                                                                          **
 *****************************************************************************/

module Shifter_8_bit( dataA,
                      result,
                      shiftAmount );

   /*******************************************************************************
   ** Here all module parameters are defined with a dummy value                  **
   *******************************************************************************/
   parameter shifterMode = 1;

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input [7:0] dataA;
   input [2:0] shiftAmount;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output [7:0] result;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [7:0] s_stage0Result;
   wire       s_stage0ShiftIn;
   wire [7:0] s_stage1Result;
   wire [1:0] s_stage1ShiftIn;
   wire [7:0] s_stage2Result;
   wire [3:0] s_stage2ShiftIn;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/
   /*******************************************************************************
   ** ShifterMode represents when:                                               **
   ** 0 : Logical Shift Left                                                     **
   ** 1 : Rotate Left                                                            **
   ** 2 :                                                                        **
   ** Logical Shift Right                                                        **
   ** 3 : Arithmetic Shift Right                                                 **
   ** 4 : Rotate Right                                                           **
   *******************************************************************************/

   /*******************************************************************************
   ** Stage 0 of the binary shift tree is defined here                           **
   *******************************************************************************/
   assign s_stage0ShiftIn = ((shifterMode == 1) || (shifterMode == 3))
        ? dataA[shifterMode] : (7 == 4) ? dataA[0] : 0;

   assign s_stage0Result  = (shiftAmount == 0)
        ? dataA
        : ((shifterMode == 0) || (shifterMode == 1))
           ? {dataA[6:0],s_stage0ShiftIn}
           : {s_stage0ShiftIn,dataA[7:1]};

   /*******************************************************************************
   ** Stage 1 of the binary shift tree is defined here                           **
   *******************************************************************************/
   assign s_stage1ShiftIn = (shifterMode == 1) ?
                              s_stage0Result[7:6] :
                              (shifterMode == 3) ?
                              { 2{s_stage0Result[7]} } :
                              (shifterMode == 4) ?
                              s_stage0Result[1:0] : 0;

   assign s_stage1Result  = (shiftAmount[1]==0) ?
                              s_stage0Result :
                              ((shifterMode == 0)||(shifterMode == 1)) ?
                              {s_stage0Result[5:0],s_stage1ShiftIn} :
                              {s_stage1ShiftIn,s_stage0Result[7:2]};

   /*******************************************************************************
   ** Stage 2 of the binary shift tree is defined here                           **
   *******************************************************************************/
   assign s_stage2ShiftIn = (shifterMode == 1) ?
                              s_stage1Result[7:4] :
                              (shifterMode == 3) ?
                              { 4{s_stage1Result[7]} } :
                              (shifterMode == 4) ?
                              s_stage1Result[3:0] : 0;

   assign s_stage2Result  = (shiftAmount[2]==0) ?
                              s_stage1Result :
                              ((shifterMode == 0)||(shifterMode == 1)) ?
                              {s_stage1Result[3:0],s_stage2ShiftIn} :
                              {s_stage2ShiftIn,s_stage1Result[7:4]};

   /*******************************************************************************
   ** The result is assigned here                                                **
   *******************************************************************************/
   assign result = s_stage2Result;

endmodule
