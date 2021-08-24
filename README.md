# VIRTUAL_FPGA_LAB_WORKSHOP

## About the Workshop:
__Course: “Getting Started with FPGAs”,__
a one-hour primer to get you off the ground developing your first FPGA logic. Several low-cost FPGA boards are supported. This course uses a virtual FPGA lab within the Makerchip online IDE.

Within Makerchip, you’ll use Verilog or the latest Transaction-Level Verilog to build and simulate a counter circuit and show the count on the virtual 7-segment display. Then, if you have a supported FPGA board, such as Basys 3 or iCEBreaker (+ 7-segment display), you’ll be able to run your design on your own FPGA. From there, the sky’s the limit.

## Makerchip and TL-Verilog:
[Makerchip](https://www.makerchip.com/) is a free web-based IDE as well as available as [makerchip-app](https://gitlab.com/rweda/makerchip-app), a virtual desktop application for developing high-quality integrated circuits. You can code, compile, simulate, and debug Verilog designs, all from your browser. Your code, block diagrams, and waveforms are tightly integrated. [Makerchip](https://www.makerchip.com/) supports the emerging Transaction-Level Verilog standard. [Transaction-Level Verilog](http://tl-x.org/), or [TL-Verilog](http://tl-x.org/), represents a huge step forward, by eliminating the need for the legacy language features of Verilog and by introducing simpler syntax. At the same time, TL-Verilog adds powerful constructs for pipelines and transactions. More details about TL-Verilog: [https://www.redwoodeda.com/tl-verilog](https://www.redwoodeda.com/tl-verilog)

## Features of Virtual FPGA Lab:
- Move back and forth between cycles so that we can visualize what's happening in each and every cycle.
- Faster to see the output for simple designs. No need to wait for Synthesis, Implementation and Bitstream Generation.
- Abstraction in writing the digital logic in TL-Verilog over standard HDL languages.
- Compatible code structure (works inside and outside of Makerchip)
### FPGA Boards demonstrated in Makerchip:
1. Basys 3 Artix-7 FPGA Trainer Board ([Product Link](https://store.digilentinc.com/basys-3-artix-7-fpga-beginner-board-recommended-for-introductory-users/)) 
3. EDGE Artix 7 FPGA Development Board ([Product Link](https://allaboutfpga.com/product/edge-artix-7-fpga-development-board/))
4. Zedboard Zynq-7000 ARM/FPGA SoC Development Board ([Product Link](https://www.avnet.com/wps/portal/us/products/avnet-boards/avnet-board-families/zedboard/))

## Demos:
### 1. LED:
__Counter Demo:__  https://makerchip.com/sandbox/0mZf5hLPG/0y8h64Z#

__Output on Virtual Basys3 board:__ 

<img src="https://user-images.githubusercontent.com/64545984/130662713-a4831559-f909-4b1e-856d-6f736de6e4b5.gif" alt="Basys3_LED" width="600">

__Output on Virtual Edge Artix7 board:__ 

<img src="https://user-images.githubusercontent.com/64545984/130662812-ae1ea3b2-2ff2-40dd-bf99-9929980c9173.gif" alt="EDGE_Artix7_LED" width="600">

### 2. Seven Segment Display:
__Counter Demo:__  https://makerchip.com/sandbox/0mZf5hLPG/0zmh8rV

__Output on Virtual Basys3 board:__


<img src="https://user-images.githubusercontent.com/64545984/130662877-0aa08c7c-c8cc-4a93-b05e-1aab1850bf74.gif" alt="Basys3_7seg" width="600">


__Output on Virtual Edge Artix7 board:__

<img src="https://user-images.githubusercontent.com/64545984/130662897-a4d6751c-9699-4ba7-9616-26b58b2031cf.gif" alt="EDGE_Artix7_7seg" width="600">



## Run on FPGA:
### 1. LED:
__Output on Basys3 board:__

<img src="https://user-images.githubusercontent.com/64545984/130660764-bff7d357-cfb9-41b5-8e39-23cf214b5f4f.gif" alt="Basys3_LED" width="600">

__Output on Edge Artix7 board:__ 

<img src="https://user-images.githubusercontent.com/64545984/130660844-6949ce20-51c2-4435-931f-39f94b5f8d84.gif" alt="EDGE_Artix7_LED" width="600">

### 2. Seven Segment Display:
__Output on Basys3 board:__

<img src="https://user-images.githubusercontent.com/64545984/130660899-e51d4217-4e5b-401f-b543-08a4d829e369.gif" alt="Basys3_7seg" width="600">

__Output on Edge Artix7 board:__

<img src="https://user-images.githubusercontent.com/64545984/130660934-b51a670e-577e-4fc4-a0a6-a28db593af61.gif" alt="EDGE_Artix7_7seg" width="600">


