module lsu( 
      issue_lsu_select,
      issue_source_reg1,
      issue_source_reg2,
      issue_source_reg3,
      issue_dest_reg,
      issue_imm_value0,
      issue_imm_value1,
      issue_opcode,
      issue_mem_sgpr,
      issue_wfid,
      issue_lds_base,
      vgpr_source1_data,
      vgpr_source2_data,
      mem_rd_data,
      mem_tag_resp,
      mem_ack,
      sgpr_source1_data,
      sgpr_source2_data,
      exec_exec_value,
      exec_rd_m0_value,
      issue_instr_pc,
      issue_ready,
      vgpr_source1_addr,
      vgpr_source2_addr,
      vgpr_dest_addr,
      vgpr_dest_data,
      vgpr_dest_wr_en,
      vgpr_dest_wr_mask,
      vgpr_instr_done_wfid,
      vgpr_instr_done,
      vgpr_source1_rd_en,
      vgpr_source2_rd_en,
      exec_rd_wfid,
      mem_rd_en,
      mem_wr_en,
      mem_addr,
      mem_wr_data,
      mem_tag_req,
      mem_wr_mask,
      sgpr_source1_addr,
      sgpr_source2_addr,
      sgpr_dest_addr,
      sgpr_dest_data,
      sgpr_dest_wr_en,
      sgpr_instr_done_wfid,
      sgpr_instr_done,
      sgpr_source1_rd_en,
      sgpr_source2_rd_en,
      tracemon_retire_pc,
      mem_gm_or_lds,
      tracemon_gm_or_lds,
      clk,
      rst
 );
input clk;
input rst;
input issue_lsu_select, mem_ack;
input[5:0] issue_wfid;
input[6:0] mem_tag_resp;
input[11:0] issue_source_reg1, issue_source_reg2, issue_source_reg3,
         issue_dest_reg, issue_mem_sgpr;
input[15:0] issue_imm_value0, issue_lds_base;
input[31:0] issue_imm_value1, issue_opcode, sgpr_source2_data, exec_rd_m0_value,
         issue_instr_pc;
input[63:0] exec_exec_value;
input[127:0] sgpr_source1_data;
input[2047:0] vgpr_source2_data;
input[8191:0] vgpr_source1_data, mem_rd_data;
output issue_ready, vgpr_instr_done, vgpr_source1_rd_en, vgpr_source2_rd_en,
         sgpr_instr_done, sgpr_source1_rd_en, sgpr_source2_rd_en, mem_gm_or_lds,
         tracemon_gm_or_lds;
output[3:0] vgpr_dest_wr_en, mem_rd_en, mem_wr_en, sgpr_dest_wr_en;
output[5:0] vgpr_instr_done_wfid, exec_rd_wfid, sgpr_instr_done_wfid;
output[6:0] mem_tag_req;
output[8:0] sgpr_source1_addr, sgpr_source2_addr, sgpr_dest_addr;
output[9:0] vgpr_source1_addr, vgpr_source2_addr, vgpr_dest_addr;
output[31:0] tracemon_retire_pc;
output[63:0] vgpr_dest_wr_mask, mem_wr_mask;
output[127:0] sgpr_dest_data;
output[2047:0] mem_addr;
output[8191:0] vgpr_dest_data, mem_wr_data;
endmodule
