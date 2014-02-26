module rfa(
      simd0_queue_entry_valid,
      simd1_queue_entry_valid,
      simd2_queue_entry_valid,
      simd3_queue_entry_valid,
      simf0_queue_entry_valid,
      simf1_queue_entry_valid,
      simf2_queue_entry_valid,
      simf3_queue_entry_valid,
      simd0_queue_entry_serviced,
      simd1_queue_entry_serviced,
      simd2_queue_entry_serviced,
      simd3_queue_entry_serviced,
      simf0_queue_entry_serviced,
      simf1_queue_entry_serviced,
      simf2_queue_entry_serviced,
      simf3_queue_entry_serviced,
      execvgprsgpr_select_fu,
      clk,
      rst
 );
input clk;
input rst;
input simd0_queue_entry_valid, simd1_queue_entry_valid, simd2_queue_entry_valid,
         simd3_queue_entry_valid, simf0_queue_entry_valid, simf1_queue_entry_valid,
         simf2_queue_entry_valid, simf3_queue_entry_valid;
output simd0_queue_entry_serviced, simd1_queue_entry_serviced, simd2_queue_entry_serviced,
         simd3_queue_entry_serviced, simf0_queue_entry_serviced, simf1_queue_entry_serviced,
         simf2_queue_entry_serviced, simf3_queue_entry_serviced;
output[15:0] execvgprsgpr_select_fu;
endmodule
