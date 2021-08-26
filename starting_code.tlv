\m4_TLV_version 1d -p verilog --bestsv --noline: tl-x.org
\SV
   // Include the virtual lab library.
   m4_include_lib(['https://raw.githubusercontent.com/BalaDhinesh/Virtual-FPGA-Lab/main/tlv_lib/fpga_includes.tlv'])                   
   
   // The top-level module definition, either as required by Makerchip, or by the FPGA with led outputs.
   m4_ifelse_block(M4_MAKERCHIP, 1,['
   m4_makerchip_module   
   '],['
   module top(input clk, input reset, output [15:0] led);
   '])

   // A signal providing LED outputs.
   logic [15:0] led;
   logic [7:0] digit;
   logic [6:0] sseg;
   logic dp;
/* SV version
\SV_plus
   wire refresh = |fpga>>0$refresh;
\SV
   always @(posedge clk) begin
      led = reset   ? 16'b0 :
            refresh ? led + 1 :
                      led;
   end
*/
\TLV
   |fpga   // (not to be confused with "lead pipe")
      @0
         m4+fpga_refresh($refresh, m4_ifelse(M4_MAKERCHIP, 1, 1, 50000000)) 
         $reset = *reset;
         ?$refresh
            
            // ----------------------------
            // Drive $Leds[15:0] here.
            //$Leds[15:0] <= $reset ? 16'b0 : $Leds + 1;
            
            $Leds[15:0] <=
               $reset                  ? 16'b1 :
               ($Leds == 16'b10000000) ? 16'b1 :
                                         ($Leds << 1);
            // ----------------------------
         
         *led = $Leds;
   
   // M4_BOARD numbering
   // 1 - Zedboard
   // 2 - Artix-7
   // 3 - Basys3
   // 4 - Icebreaker  // TODO: fix
   // 5 - Nexys
   m4_define(M4_BOARD, 5)
   m4+fpga_init()
   m4+fpga_led(*led)
   m4+fpga_sseg(*digit, *sseg, *dp)
\SV
   endmodule
   