/*
 * Copyright (c) 2025 Canberk Soytekin
 * SPDX-License-Identifier: Apache-2.0
 */

`default_nettype none

module tt_um_rtlphysicsaccelerator (
    input  wire [7:0] ui_in,    // Dedicated inputs
    output wire [7:0] uo_out,   // Dedicated outputs
    input  wire [7:0] uio_in,   // IOs: Input path
    output wire [7:0] uio_out,  // IOs: Output path
    output wire [7:0] uio_oe,   // IOs: Enable path (active high: 0=input, 1=output)
    input  wire       ena,      // always 1 when the design is powered, so you can ignore it
    input  wire       clk,      // clock
    input  wire       rst_n     // reset_n - low to reset
);

   wire [7:0] s_RESULT;         // Define wires
   wire       s_Reset;
   wire       s_VonNeumann;
   wire       s_fpgaTick;
   wire [4:0] s_logisimClockTree0;
   wire       s_synthesizedClock;

   assign uo_out[0]   = ~s_RESULT[0];
   assign uo_out[1]   = ~s_RESULT[1];
   assign uo_out[2]   = ~s_RESULT[2];
   assign uo_out[3]   = ~s_RESULT[3];
   assign uo_out[4]   = ~s_RESULT[4];
   assign uo_out[5]   = ~s_RESULT[5];
   assign uo_out[6]   = ~s_RESULT[6];
   assign uo_out[7]   = ~s_RESULT[7];
   assign s_Reset = ~rst_n;
   assign s_VonNeumann = ui_in[0];

   synthesizedClockGenerator   BASE_0 (.FPGAClock(clk),
                                       .SynthesizedClock(s_synthesizedClock));

   logisimTickGenerator #(.nrOfBits(7),
                          .reloadValue(98))
      BASE_1 (.FPGAClock(s_synthesizedClock),
              .FPGATick(s_fpgaTick));

   LogisimClockComponent #(.highTicks(1),
                           .lowTicks(1),
                           .nrOfBits(1),
                           .phase(1))
      Clk (.clockBus(s_logisimClockTree0),
           .clockTick(s_fpgaTick),
           .globalClock(s_synthesizedClock));

   main   CIRCUIT_0 (.RESULT(s_RESULT),
                     .Reset(s_Reset),
                     .VonNeumann(s_VonNeumann),
                     .logisimClockTree0(s_logisimClockTree0));

  // All output pins must be assigned. If not used, assign to 0.
  assign uio_out = 0;
  assign uio_oe  = 0;

  // List all unused inputs to prevent warnings
  wire _unused = &{ui_in[7:1], uio_in, ena, 1'b0};

endmodule
