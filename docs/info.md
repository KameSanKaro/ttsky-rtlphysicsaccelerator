<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

An RTL Accelerator for Grid-Based Physics Simulations

The project works by taking in a specified set of inputs over the grid (in the repository, that corresponds to SemiGaussianTestInput.v). After the inputs
are specified, turning the "Reset" input on and off starts the iteration. The project implements the Jacobi method for solving partial differential
equations on a hardware level, exploiting parallelism and custom architecture to yield rapid convergence. Similarly to the input module, the equation to be solved at each iteration over the grid can be changed by swapping out the "cellALU.v" module (for the files in the repository, the equation being solved is the homogeneous Laplace equation). The iteration is continued until convergence is reached (signalled by ConvergenceChecker.v).

The design is highly modular; main.v can be easily modified to alter the size of the accelerator grid (it is 4x4 by default). The VonNeumann input flag signals whether the equation being solved satisfies Von Neumann (the normal derivative is specified on the boundary) or Dirichlet (the value of the solution is specified on the boundary) boundary conditions, with VonNeumann=1 meaning that the solver assumes the boundary conditions to be Von Neumann (and Dirichlet if VonNeumann=0).

## How to test

The project in the repository is 8-bit by default (we also have a much more precise and useful 32-bit design that unfortunately does not fulfill the TinyTapeout
design constraints). The default (8-bit) output is of the form: 

(Bit 3 of Grid Cell (2x2)),(Bit 2 of Grid Cell (2x2)),(Bit 3 of Grid Cell (3x2)),(Bit 2 of Grid Cell (3x2)),(Bit 3 of Grid Cell (3x3)),(Bit 2 of Grid Cell (3x3)),(Bit 3 of Grid Cell (2x3))(Bit 2 of Grid Cell (2x3))

The design can be (and was) tested by calculating the desired solution mathematically and comparing the output results with the actual values. The current design is fully functional.

## External hardware

N/A
