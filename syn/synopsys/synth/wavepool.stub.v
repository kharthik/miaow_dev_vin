module wavepool( 
      fetch_reserve_slotid,
      fetch_reserve_valid,
      fetch_basereg_wr,
      fetch_basereg_wfid,
      fetch_vgpr_base,
      fetch_sgpr_base,
      fetch_lds_base,
      issue_valid_entries,
      buff_tag,
      buff_instr,
      buff2fetchwave_ack,
      issue_wf_done_en,
      issue_wf_done_wf_id,
      salu_branch_wfid,
      salu_branch_en,
      salu_branch_taken,
      decode_ins_half_rqd,
      decode_ins_half_wfid,
      fetch_stop_fetch,
      decode_instr_valid,
      decode_instr,
      decode_wfid,
      decode_vgpr_base,
      decode_sgpr_base,
      decode_lds_base,
      decode_instr_pc,
      clk,
      rst
 );
input clk;
input rst;
input fetch_reserve_valid, fetch_basereg_wr, buff2fetchwave_ack, issue_wf_done_en,
         salu_branch_en, salu_branch_taken, decode_ins_half_rqd;
input[5:0] fetch_reserve_slotid, fetch_basereg_wfid, issue_wf_done_wf_id,
         salu_branch_wfid, decode_ins_half_wfid;
input[8:0] fetch_sgpr_base;
input[9:0] fetch_vgpr_base;
input[15:0] fetch_lds_base;
input[31:0] buff_instr;
input[38:0] buff_tag;
input[39:0] issue_valid_entries;
output decode_instr_valid;
output[5:0] decode_wfid;
output[8:0] decode_sgpr_base;
output[9:0] decode_vgpr_base;
output[15:0] decode_lds_base;
output[31:0] decode_instr, decode_instr_pc;
output[39:0] fetch_stop_fetch;
endmodule
