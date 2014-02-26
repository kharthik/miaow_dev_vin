module fetch(
      dispatch2cu_wf_dispatch,
      dispatch2cu_wf_tag_dispatch,
      dispatch2cu_start_pc_dispatch,
      dispatch2cu_vgpr_base_dispatch,
      dispatch2cu_sgpr_base_dispatch,
      dispatch2cu_lds_base_dispatch,
      dispatch2cu_wf_size_dispatch,
      dispatch2cu_wg_wf_count,
      buff_ack,
      wave_stop_fetch,
      issue_wf_done_en,
      issue_wf_done_wf_id,
      issue_wg_wfid,
      salu_branch_wfid,
      salu_branch_en,
      salu_branch_taken,
      salu_branch_pc_value,
      cu2dispatch_wf_tag_done,
      cu2dispatch_wf_done,
      buff_addr,
      buff_tag,
      buff_rd_en,
      wave_reserve_slotid,
      wave_reserve_valid,
      wave_basereg_wr,
      wave_basereg_wfid,
      wave_vgpr_base,
      wave_sgpr_base,
      wave_lds_base,
      exec_init_wf_en,
      exec_init_wf_id,
      exec_init_value,
      issue_wg_wgid,
      issue_wg_wf_count,
      tracemon_dispatch,
      tracemon_wf_tag_dispatch,
      tracemon_new_wfid,
      clk,
      rst
 );
input clk;
input rst;
input dispatch2cu_wf_dispatch, buff_ack, issue_wf_done_en, salu_branch_en,
         salu_branch_taken;
input[3:0] dispatch2cu_wg_wf_count;
input[5:0] dispatch2cu_wf_size_dispatch, issue_wf_done_wf_id, issue_wg_wfid,
         salu_branch_wfid;
input[8:0] dispatch2cu_sgpr_base_dispatch;
input[9:0] dispatch2cu_vgpr_base_dispatch;
input[14:0] dispatch2cu_wf_tag_dispatch;
input[15:0] dispatch2cu_lds_base_dispatch;
input[31:0] dispatch2cu_start_pc_dispatch, salu_branch_pc_value;
input[39:0] wave_stop_fetch;
output cu2dispatch_wf_done, buff_rd_en, wave_reserve_valid, wave_basereg_wr,
         exec_init_wf_en, tracemon_dispatch;
output[3:0] issue_wg_wf_count;
output[5:0] wave_reserve_slotid, wave_basereg_wfid, exec_init_wf_id,
         issue_wg_wgid, tracemon_new_wfid;
output[8:0] wave_sgpr_base;
output[9:0] wave_vgpr_base;
output[14:0] cu2dispatch_wf_tag_done;
output[14:0] tracemon_wf_tag_dispatch;
output[15:0] wave_lds_base;
output[31:0] buff_addr;
output[38:0] buff_tag;
output[63:0] exec_init_value;
endmodule
