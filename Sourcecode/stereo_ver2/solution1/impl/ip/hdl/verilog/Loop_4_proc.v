// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module Loop_4_proc (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        packets_loc_dout,
        packets_loc_empty_n,
        packets_loc_read,
        cols_V,
        rows_V,
        dMapout_TDATA,
        dMapout_TVALID,
        dMapout_TREADY,
        dMap_data_stream_0_V_dout,
        dMap_data_stream_0_V_empty_n,
        dMap_data_stream_0_V_read,
        dMapout_TUSER,
        dMapout_TLAST
);

parameter    ap_ST_fsm_state1 = 7'd1;
parameter    ap_ST_fsm_state2 = 7'd2;
parameter    ap_ST_fsm_pp0_stage0 = 7'd4;
parameter    ap_ST_fsm_pp0_stage1 = 7'd8;
parameter    ap_ST_fsm_pp0_stage2 = 7'd16;
parameter    ap_ST_fsm_pp0_stage3 = 7'd32;
parameter    ap_ST_fsm_state9 = 7'd64;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [31:0] packets_loc_dout;
input   packets_loc_empty_n;
output   packets_loc_read;
input  [31:0] cols_V;
input  [31:0] rows_V;
output  [31:0] dMapout_TDATA;
output   dMapout_TVALID;
input   dMapout_TREADY;
input  [7:0] dMap_data_stream_0_V_dout;
input   dMap_data_stream_0_V_empty_n;
output   dMap_data_stream_0_V_read;
output  [0:0] dMapout_TUSER;
output  [0:0] dMapout_TLAST;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg packets_loc_read;
reg dMap_data_stream_0_V_read;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [31:0] dMapout_data_V_1_data_out;
reg    dMapout_data_V_1_vld_in;
wire    dMapout_data_V_1_vld_out;
wire    dMapout_data_V_1_ack_in;
wire    dMapout_data_V_1_ack_out;
reg   [31:0] dMapout_data_V_1_payload_A;
reg   [31:0] dMapout_data_V_1_payload_B;
reg    dMapout_data_V_1_sel_rd;
reg    dMapout_data_V_1_sel_wr;
wire    dMapout_data_V_1_sel;
wire    dMapout_data_V_1_load_A;
wire    dMapout_data_V_1_load_B;
reg   [1:0] dMapout_data_V_1_state;
wire    dMapout_data_V_1_state_cmp_full;
reg   [0:0] dMapout_user_V_1_data_out;
reg    dMapout_user_V_1_vld_in;
wire    dMapout_user_V_1_vld_out;
wire    dMapout_user_V_1_ack_in;
wire    dMapout_user_V_1_ack_out;
reg   [0:0] dMapout_user_V_1_payload_A;
reg   [0:0] dMapout_user_V_1_payload_B;
reg    dMapout_user_V_1_sel_rd;
reg    dMapout_user_V_1_sel_wr;
wire    dMapout_user_V_1_sel;
wire    dMapout_user_V_1_load_A;
wire    dMapout_user_V_1_load_B;
reg   [1:0] dMapout_user_V_1_state;
wire    dMapout_user_V_1_state_cmp_full;
reg   [0:0] dMapout_last_V_1_data_out;
reg    dMapout_last_V_1_vld_in;
wire    dMapout_last_V_1_vld_out;
wire    dMapout_last_V_1_ack_in;
wire    dMapout_last_V_1_ack_out;
reg   [0:0] dMapout_last_V_1_payload_A;
reg   [0:0] dMapout_last_V_1_payload_B;
reg    dMapout_last_V_1_sel_rd;
reg    dMapout_last_V_1_sel_wr;
wire    dMapout_last_V_1_sel;
wire    dMapout_last_V_1_load_A;
wire    dMapout_last_V_1_load_B;
reg   [1:0] dMapout_last_V_1_state;
wire    dMapout_last_V_1_state_cmp_full;
reg    packets_loc_blk_n;
reg    dMapout_TDATA_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg   [0:0] exitcond_flatten_reg_372;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1;
reg   [0:0] exitcond_flatten_reg_372_pp0_iter1_reg;
reg    dMap_data_stream_0_V_blk_n;
reg    ap_enable_reg_pp0_iter0;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3;
reg   [61:0] indvar_flatten_reg_137;
reg   [31:0] i_op_assign_reg_148;
reg   [30:0] p_1_rec_i_i_reg_159;
reg   [31:0] packets_loc_read_reg_349;
reg    ap_block_state1;
wire   [31:0] tmp_26_i_i_fu_223_p2;
reg   [31:0] tmp_26_i_i_reg_356;
wire    ap_CS_fsm_state2;
wire   [30:0] tmp_14_cast_i_i_fu_239_p1;
wire   [61:0] bound_fu_251_p2;
wire   [0:0] exitcond_flatten_fu_257_p2;
wire    ap_block_state3_pp0_stage0_iter0;
reg    ap_block_state7_pp0_stage0_iter1;
reg    ap_block_state7_io;
reg    ap_block_pp0_stage0_11001;
wire   [61:0] indvar_flatten_next_fu_262_p2;
reg   [61:0] indvar_flatten_next_reg_376;
wire   [0:0] dMapout_user_V_tmp_fu_291_p3;
reg   [0:0] dMapout_user_V_tmp_reg_381;
wire   [0:0] dMapout_last_V_tmp_fu_309_p3;
reg   [0:0] dMapout_last_V_tmp_reg_386;
wire   [31:0] i_op_assign_mid2_fu_317_p3;
reg   [31:0] i_op_assign_mid2_reg_391;
wire   [30:0] p_rec_i_i_fu_331_p3;
reg   [30:0] p_rec_i_i_reg_396;
reg   [7:0] tmp_151_reg_401;
reg    ap_block_state4_pp0_stage1_iter0;
wire    ap_block_state8_pp0_stage1_iter1;
reg    ap_block_state8_io;
reg    ap_block_pp0_stage1_11001;
reg   [7:0] tmp_152_reg_406;
reg    ap_block_state5_pp0_stage2_iter0;
reg    ap_block_pp0_stage2_11001;
reg   [7:0] tmp_153_reg_411;
reg    ap_block_state6_pp0_stage3_iter0;
reg    ap_block_pp0_stage3_11001;
wire   [31:0] p_Result_s_fu_339_p5;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state3;
reg    ap_block_pp0_stage3_subdone;
reg    ap_block_pp0_stage1_subdone;
reg   [61:0] ap_phi_mux_indvar_flatten_phi_fu_141_p4;
reg   [31:0] ap_phi_mux_i_op_assign_phi_fu_152_p4;
reg   [30:0] ap_phi_mux_p_1_rec_i_i_phi_fu_163_p4;
reg    ap_block_pp0_stage0_01001;
wire   [31:0] p_neg_i_i_fu_177_p2;
wire   [30:0] p_lshr_i_i_fu_182_p4;
wire   [31:0] tmp_s_fu_192_p1;
wire   [30:0] p_lshr_f_i_i_fu_202_p4;
wire   [0:0] tmp_fu_170_p3;
wire   [31:0] p_neg_t_i_i_fu_196_p2;
wire   [31:0] tmp_67_fu_211_p1;
wire   [31:0] tmp_25_i_i_fu_215_p3;
wire   [29:0] tmp_68_fu_229_p4;
wire   [29:0] bound_fu_251_p0;
wire   [31:0] bound_fu_251_p1;
wire   [31:0] r_fu_268_p2;
wire   [0:0] exitcond3_i_i7_fu_286_p2;
wire   [0:0] tmp_31_i_i_mid1_fu_274_p2;
wire   [0:0] tmp_31_i_i3_fu_280_p2;
wire   [0:0] tmp_32_i_i_mid1_fu_299_p2;
wire   [0:0] tmp_32_i_i2_fu_304_p2;
wire   [30:0] p_1_rec_i_i_op_fu_325_p2;
wire    ap_CS_fsm_state9;
reg    ap_block_state9;
reg   [6:0] ap_NS_fsm;
reg    ap_block_pp0_stage2_subdone;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
wire   [61:0] bound_fu_251_p00;
wire   [61:0] bound_fu_251_p10;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 7'd1;
#0 dMapout_data_V_1_sel_rd = 1'b0;
#0 dMapout_data_V_1_sel_wr = 1'b0;
#0 dMapout_data_V_1_state = 2'd0;
#0 dMapout_user_V_1_sel_rd = 1'b0;
#0 dMapout_user_V_1_sel_wr = 1'b0;
#0 dMapout_user_V_1_state = 2'd0;
#0 dMapout_last_V_1_sel_rd = 1'b0;
#0 dMapout_last_V_1_sel_wr = 1'b0;
#0 dMapout_last_V_1_state = 2'd0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if ((~((dMapout_data_V_1_ack_in == 1'b0) | (dMapout_last_V_1_ack_in == 1'b0) | (dMapout_user_V_1_ack_in == 1'b0)) & (1'b1 == ap_CS_fsm_state9))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_pp0_exit_iter0_state3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state2)) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if ((1'b1 == ap_CS_fsm_state2)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        dMapout_data_V_1_sel_rd <= 1'b0;
    end else begin
        if (((dMapout_data_V_1_ack_out == 1'b1) & (dMapout_data_V_1_vld_out == 1'b1))) begin
            dMapout_data_V_1_sel_rd <= ~dMapout_data_V_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        dMapout_data_V_1_sel_wr <= 1'b0;
    end else begin
        if (((dMapout_data_V_1_ack_in == 1'b1) & (dMapout_data_V_1_vld_in == 1'b1))) begin
            dMapout_data_V_1_sel_wr <= ~dMapout_data_V_1_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        dMapout_data_V_1_state <= 2'd0;
    end else begin
        if ((((dMapout_data_V_1_state == 2'd2) & (dMapout_data_V_1_vld_in == 1'b0)) | ((dMapout_data_V_1_state == 2'd3) & (dMapout_data_V_1_vld_in == 1'b0) & (dMapout_data_V_1_ack_out == 1'b1)))) begin
            dMapout_data_V_1_state <= 2'd2;
        end else if ((((dMapout_data_V_1_state == 2'd1) & (dMapout_data_V_1_ack_out == 1'b0)) | ((dMapout_data_V_1_state == 2'd3) & (dMapout_data_V_1_ack_out == 1'b0) & (dMapout_data_V_1_vld_in == 1'b1)))) begin
            dMapout_data_V_1_state <= 2'd1;
        end else if (((~((dMapout_data_V_1_vld_in == 1'b0) & (dMapout_data_V_1_ack_out == 1'b1)) & ~((dMapout_data_V_1_ack_out == 1'b0) & (dMapout_data_V_1_vld_in == 1'b1)) & (dMapout_data_V_1_state == 2'd3)) | ((dMapout_data_V_1_state == 2'd1) & (dMapout_data_V_1_ack_out == 1'b1)) | ((dMapout_data_V_1_state == 2'd2) & (dMapout_data_V_1_vld_in == 1'b1)))) begin
            dMapout_data_V_1_state <= 2'd3;
        end else begin
            dMapout_data_V_1_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        dMapout_last_V_1_sel_rd <= 1'b0;
    end else begin
        if (((dMapout_last_V_1_ack_out == 1'b1) & (dMapout_last_V_1_vld_out == 1'b1))) begin
            dMapout_last_V_1_sel_rd <= ~dMapout_last_V_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        dMapout_last_V_1_sel_wr <= 1'b0;
    end else begin
        if (((dMapout_last_V_1_ack_in == 1'b1) & (dMapout_last_V_1_vld_in == 1'b1))) begin
            dMapout_last_V_1_sel_wr <= ~dMapout_last_V_1_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        dMapout_last_V_1_state <= 2'd0;
    end else begin
        if ((((dMapout_last_V_1_state == 2'd2) & (dMapout_last_V_1_vld_in == 1'b0)) | ((dMapout_last_V_1_state == 2'd3) & (dMapout_last_V_1_vld_in == 1'b0) & (dMapout_last_V_1_ack_out == 1'b1)))) begin
            dMapout_last_V_1_state <= 2'd2;
        end else if ((((dMapout_last_V_1_state == 2'd1) & (dMapout_last_V_1_ack_out == 1'b0)) | ((dMapout_last_V_1_state == 2'd3) & (dMapout_last_V_1_ack_out == 1'b0) & (dMapout_last_V_1_vld_in == 1'b1)))) begin
            dMapout_last_V_1_state <= 2'd1;
        end else if (((~((dMapout_last_V_1_vld_in == 1'b0) & (dMapout_last_V_1_ack_out == 1'b1)) & ~((dMapout_last_V_1_ack_out == 1'b0) & (dMapout_last_V_1_vld_in == 1'b1)) & (dMapout_last_V_1_state == 2'd3)) | ((dMapout_last_V_1_state == 2'd1) & (dMapout_last_V_1_ack_out == 1'b1)) | ((dMapout_last_V_1_state == 2'd2) & (dMapout_last_V_1_vld_in == 1'b1)))) begin
            dMapout_last_V_1_state <= 2'd3;
        end else begin
            dMapout_last_V_1_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        dMapout_user_V_1_sel_rd <= 1'b0;
    end else begin
        if (((dMapout_user_V_1_ack_out == 1'b1) & (dMapout_user_V_1_vld_out == 1'b1))) begin
            dMapout_user_V_1_sel_rd <= ~dMapout_user_V_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        dMapout_user_V_1_sel_wr <= 1'b0;
    end else begin
        if (((dMapout_user_V_1_ack_in == 1'b1) & (dMapout_user_V_1_vld_in == 1'b1))) begin
            dMapout_user_V_1_sel_wr <= ~dMapout_user_V_1_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        dMapout_user_V_1_state <= 2'd0;
    end else begin
        if ((((dMapout_user_V_1_state == 2'd2) & (dMapout_user_V_1_vld_in == 1'b0)) | ((dMapout_user_V_1_state == 2'd3) & (dMapout_user_V_1_vld_in == 1'b0) & (dMapout_user_V_1_ack_out == 1'b1)))) begin
            dMapout_user_V_1_state <= 2'd2;
        end else if ((((dMapout_user_V_1_state == 2'd1) & (dMapout_user_V_1_ack_out == 1'b0)) | ((dMapout_user_V_1_state == 2'd3) & (dMapout_user_V_1_ack_out == 1'b0) & (dMapout_user_V_1_vld_in == 1'b1)))) begin
            dMapout_user_V_1_state <= 2'd1;
        end else if (((~((dMapout_user_V_1_vld_in == 1'b0) & (dMapout_user_V_1_ack_out == 1'b1)) & ~((dMapout_user_V_1_ack_out == 1'b0) & (dMapout_user_V_1_vld_in == 1'b1)) & (dMapout_user_V_1_state == 2'd3)) | ((dMapout_user_V_1_state == 2'd1) & (dMapout_user_V_1_ack_out == 1'b1)) | ((dMapout_user_V_1_state == 2'd2) & (dMapout_user_V_1_vld_in == 1'b1)))) begin
            dMapout_user_V_1_state <= 2'd3;
        end else begin
            dMapout_user_V_1_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten_reg_372 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_op_assign_reg_148 <= i_op_assign_mid2_reg_391;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        i_op_assign_reg_148 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten_reg_372 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten_reg_137 <= indvar_flatten_next_reg_376;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        indvar_flatten_reg_137 <= 62'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten_reg_372 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_1_rec_i_i_reg_159 <= p_rec_i_i_reg_396;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        p_1_rec_i_i_reg_159 <= 31'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((dMapout_data_V_1_load_A == 1'b1)) begin
        dMapout_data_V_1_payload_A <= p_Result_s_fu_339_p5;
    end
end

always @ (posedge ap_clk) begin
    if ((dMapout_data_V_1_load_B == 1'b1)) begin
        dMapout_data_V_1_payload_B <= p_Result_s_fu_339_p5;
    end
end

always @ (posedge ap_clk) begin
    if ((dMapout_last_V_1_load_A == 1'b1)) begin
        dMapout_last_V_1_payload_A <= dMapout_last_V_tmp_reg_386;
    end
end

always @ (posedge ap_clk) begin
    if ((dMapout_last_V_1_load_B == 1'b1)) begin
        dMapout_last_V_1_payload_B <= dMapout_last_V_tmp_reg_386;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten_fu_257_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        dMapout_last_V_tmp_reg_386 <= dMapout_last_V_tmp_fu_309_p3;
        dMapout_user_V_tmp_reg_381 <= dMapout_user_V_tmp_fu_291_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((dMapout_user_V_1_load_A == 1'b1)) begin
        dMapout_user_V_1_payload_A <= dMapout_user_V_tmp_reg_381;
    end
end

always @ (posedge ap_clk) begin
    if ((dMapout_user_V_1_load_B == 1'b1)) begin
        dMapout_user_V_1_payload_B <= dMapout_user_V_tmp_reg_381;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        exitcond_flatten_reg_372 <= exitcond_flatten_fu_257_p2;
        exitcond_flatten_reg_372_pp0_iter1_reg <= exitcond_flatten_reg_372;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten_fu_257_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_op_assign_mid2_reg_391 <= i_op_assign_mid2_fu_317_p3;
        p_rec_i_i_reg_396 <= p_rec_i_i_fu_331_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten_next_reg_376 <= indvar_flatten_next_fu_262_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((~((packets_loc_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        packets_loc_read_reg_349 <= packets_loc_dout;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten_reg_372 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_151_reg_401 <= dMap_data_stream_0_V_dout;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten_reg_372 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        tmp_152_reg_406 <= dMap_data_stream_0_V_dout;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten_reg_372 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        tmp_153_reg_411 <= dMap_data_stream_0_V_dout;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        tmp_26_i_i_reg_356 <= tmp_26_i_i_fu_223_p2;
    end
end

always @ (*) begin
    if ((exitcond_flatten_fu_257_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state3 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state3 = 1'b0;
    end
end

always @ (*) begin
    if ((~((dMapout_data_V_1_ack_in == 1'b0) | (dMapout_last_V_1_ack_in == 1'b0) | (dMapout_user_V_1_ack_in == 1'b0)) & (1'b1 == ap_CS_fsm_state9))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_flatten_reg_372 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_mux_i_op_assign_phi_fu_152_p4 = i_op_assign_mid2_reg_391;
    end else begin
        ap_phi_mux_i_op_assign_phi_fu_152_p4 = i_op_assign_reg_148;
    end
end

always @ (*) begin
    if (((exitcond_flatten_reg_372 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_mux_indvar_flatten_phi_fu_141_p4 = indvar_flatten_next_reg_376;
    end else begin
        ap_phi_mux_indvar_flatten_phi_fu_141_p4 = indvar_flatten_reg_137;
    end
end

always @ (*) begin
    if (((exitcond_flatten_reg_372 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_mux_p_1_rec_i_i_phi_fu_163_p4 = p_rec_i_i_reg_396;
    end else begin
        ap_phi_mux_p_1_rec_i_i_phi_fu_163_p4 = p_1_rec_i_i_reg_159;
    end
end

always @ (*) begin
    if ((~((dMapout_data_V_1_ack_in == 1'b0) | (dMapout_last_V_1_ack_in == 1'b0) | (dMapout_user_V_1_ack_in == 1'b0)) & (1'b1 == ap_CS_fsm_state9))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((((exitcond_flatten_reg_372 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((exitcond_flatten_reg_372 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((exitcond_flatten_reg_372 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((exitcond_flatten_reg_372 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        dMap_data_stream_0_V_blk_n = dMap_data_stream_0_V_empty_n;
    end else begin
        dMap_data_stream_0_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((((exitcond_flatten_reg_372 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((exitcond_flatten_reg_372 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((exitcond_flatten_reg_372 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((exitcond_flatten_reg_372 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        dMap_data_stream_0_V_read = 1'b1;
    end else begin
        dMap_data_stream_0_V_read = 1'b0;
    end
end

always @ (*) begin
    if ((((exitcond_flatten_reg_372_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((exitcond_flatten_reg_372 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        dMapout_TDATA_blk_n = dMapout_data_V_1_state[1'd1];
    end else begin
        dMapout_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((dMapout_data_V_1_sel == 1'b1)) begin
        dMapout_data_V_1_data_out = dMapout_data_V_1_payload_B;
    end else begin
        dMapout_data_V_1_data_out = dMapout_data_V_1_payload_A;
    end
end

always @ (*) begin
    if (((exitcond_flatten_reg_372 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        dMapout_data_V_1_vld_in = 1'b1;
    end else begin
        dMapout_data_V_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if ((dMapout_last_V_1_sel == 1'b1)) begin
        dMapout_last_V_1_data_out = dMapout_last_V_1_payload_B;
    end else begin
        dMapout_last_V_1_data_out = dMapout_last_V_1_payload_A;
    end
end

always @ (*) begin
    if (((exitcond_flatten_reg_372 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        dMapout_last_V_1_vld_in = 1'b1;
    end else begin
        dMapout_last_V_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if ((dMapout_user_V_1_sel == 1'b1)) begin
        dMapout_user_V_1_data_out = dMapout_user_V_1_payload_B;
    end else begin
        dMapout_user_V_1_data_out = dMapout_user_V_1_payload_A;
    end
end

always @ (*) begin
    if (((exitcond_flatten_reg_372 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        dMapout_user_V_1_vld_in = 1'b1;
    end else begin
        dMapout_user_V_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        packets_loc_blk_n = packets_loc_empty_n;
    end else begin
        packets_loc_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((packets_loc_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        packets_loc_read = 1'b1;
    end else begin
        packets_loc_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((packets_loc_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((exitcond_flatten_fu_257_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else if (((exitcond_flatten_fu_257_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((~((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1)) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_pp0_stage2 : begin
            if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        ap_ST_fsm_pp0_stage3 : begin
            if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        ap_ST_fsm_state9 : begin
            if ((~((dMapout_data_V_1_ack_in == 1'b0) | (dMapout_last_V_1_ack_in == 1'b0) | (dMapout_user_V_1_ack_in == 1'b0)) & (1'b1 == ap_CS_fsm_state9))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd6];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((exitcond_flatten_reg_372 == 1'd0) & (dMap_data_stream_0_V_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_enable_reg_pp0_iter1 == 1'b1) & ((1'b1 == ap_block_state7_io) | ((exitcond_flatten_reg_372 == 1'd0) & (dMap_data_stream_0_V_empty_n == 1'b0))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_enable_reg_pp0_iter1 == 1'b1) & ((1'b1 == ap_block_state7_io) | ((exitcond_flatten_reg_372 == 1'd0) & (dMap_data_stream_0_V_empty_n == 1'b0))));
end

assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage1_11001 = (((exitcond_flatten_reg_372 == 1'd0) & (dMap_data_stream_0_V_empty_n == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_block_state8_io) & (ap_enable_reg_pp0_iter1 == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage1_subdone = (((exitcond_flatten_reg_372 == 1'd0) & (dMap_data_stream_0_V_empty_n == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_block_state8_io) & (ap_enable_reg_pp0_iter1 == 1'b1)));
end

assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage2_11001 = ((exitcond_flatten_reg_372 == 1'd0) & (dMap_data_stream_0_V_empty_n == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage2_subdone = ((exitcond_flatten_reg_372 == 1'd0) & (dMap_data_stream_0_V_empty_n == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage3_11001 = ((exitcond_flatten_reg_372 == 1'd0) & (dMap_data_stream_0_V_empty_n == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage3_subdone = ((exitcond_flatten_reg_372 == 1'd0) & (dMap_data_stream_0_V_empty_n == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

always @ (*) begin
    ap_block_state1 = ((packets_loc_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_block_state3_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state4_pp0_stage1_iter0 = ((exitcond_flatten_reg_372 == 1'd0) & (dMap_data_stream_0_V_empty_n == 1'b0));
end

always @ (*) begin
    ap_block_state5_pp0_stage2_iter0 = ((exitcond_flatten_reg_372 == 1'd0) & (dMap_data_stream_0_V_empty_n == 1'b0));
end

always @ (*) begin
    ap_block_state6_pp0_stage3_iter0 = ((exitcond_flatten_reg_372 == 1'd0) & (dMap_data_stream_0_V_empty_n == 1'b0));
end

always @ (*) begin
    ap_block_state7_io = ((exitcond_flatten_reg_372 == 1'd0) & (dMapout_last_V_1_ack_in == 1'b0));
end

always @ (*) begin
    ap_block_state7_pp0_stage0_iter1 = ((exitcond_flatten_reg_372 == 1'd0) & (dMap_data_stream_0_V_empty_n == 1'b0));
end

always @ (*) begin
    ap_block_state8_io = ((exitcond_flatten_reg_372_pp0_iter1_reg == 1'd0) & (dMapout_last_V_1_ack_in == 1'b0));
end

assign ap_block_state8_pp0_stage1_iter1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state9 = ((dMapout_data_V_1_ack_in == 1'b0) | (dMapout_last_V_1_ack_in == 1'b0) | (dMapout_user_V_1_ack_in == 1'b0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign bound_fu_251_p0 = bound_fu_251_p00;

assign bound_fu_251_p00 = tmp_68_fu_229_p4;

assign bound_fu_251_p1 = bound_fu_251_p10;

assign bound_fu_251_p10 = rows_V;

assign bound_fu_251_p2 = (bound_fu_251_p0 * bound_fu_251_p1);

assign dMapout_TDATA = dMapout_data_V_1_data_out;

assign dMapout_TLAST = dMapout_last_V_1_data_out;

assign dMapout_TUSER = dMapout_user_V_1_data_out;

assign dMapout_TVALID = dMapout_last_V_1_state[1'd0];

assign dMapout_data_V_1_ack_in = dMapout_data_V_1_state[1'd1];

assign dMapout_data_V_1_ack_out = dMapout_TREADY;

assign dMapout_data_V_1_load_A = (~dMapout_data_V_1_sel_wr & dMapout_data_V_1_state_cmp_full);

assign dMapout_data_V_1_load_B = (dMapout_data_V_1_state_cmp_full & dMapout_data_V_1_sel_wr);

assign dMapout_data_V_1_sel = dMapout_data_V_1_sel_rd;

assign dMapout_data_V_1_state_cmp_full = ((dMapout_data_V_1_state != 2'd1) ? 1'b1 : 1'b0);

assign dMapout_data_V_1_vld_out = dMapout_data_V_1_state[1'd0];

assign dMapout_last_V_1_ack_in = dMapout_last_V_1_state[1'd1];

assign dMapout_last_V_1_ack_out = dMapout_TREADY;

assign dMapout_last_V_1_load_A = (~dMapout_last_V_1_sel_wr & dMapout_last_V_1_state_cmp_full);

assign dMapout_last_V_1_load_B = (dMapout_last_V_1_state_cmp_full & dMapout_last_V_1_sel_wr);

assign dMapout_last_V_1_sel = dMapout_last_V_1_sel_rd;

assign dMapout_last_V_1_state_cmp_full = ((dMapout_last_V_1_state != 2'd1) ? 1'b1 : 1'b0);

assign dMapout_last_V_1_vld_out = dMapout_last_V_1_state[1'd0];

assign dMapout_last_V_tmp_fu_309_p3 = ((exitcond3_i_i7_fu_286_p2[0:0] === 1'b1) ? tmp_32_i_i_mid1_fu_299_p2 : tmp_32_i_i2_fu_304_p2);

assign dMapout_user_V_1_ack_in = dMapout_user_V_1_state[1'd1];

assign dMapout_user_V_1_ack_out = dMapout_TREADY;

assign dMapout_user_V_1_load_A = (~dMapout_user_V_1_sel_wr & dMapout_user_V_1_state_cmp_full);

assign dMapout_user_V_1_load_B = (dMapout_user_V_1_state_cmp_full & dMapout_user_V_1_sel_wr);

assign dMapout_user_V_1_sel = dMapout_user_V_1_sel_rd;

assign dMapout_user_V_1_state_cmp_full = ((dMapout_user_V_1_state != 2'd1) ? 1'b1 : 1'b0);

assign dMapout_user_V_1_vld_out = dMapout_user_V_1_state[1'd0];

assign dMapout_user_V_tmp_fu_291_p3 = ((exitcond3_i_i7_fu_286_p2[0:0] === 1'b1) ? tmp_31_i_i_mid1_fu_274_p2 : tmp_31_i_i3_fu_280_p2);

assign exitcond3_i_i7_fu_286_p2 = ((ap_phi_mux_p_1_rec_i_i_phi_fu_163_p4 == tmp_14_cast_i_i_fu_239_p1) ? 1'b1 : 1'b0);

assign exitcond_flatten_fu_257_p2 = ((ap_phi_mux_indvar_flatten_phi_fu_141_p4 == bound_fu_251_p2) ? 1'b1 : 1'b0);

assign i_op_assign_mid2_fu_317_p3 = ((exitcond3_i_i7_fu_286_p2[0:0] === 1'b1) ? r_fu_268_p2 : ap_phi_mux_i_op_assign_phi_fu_152_p4);

assign indvar_flatten_next_fu_262_p2 = (ap_phi_mux_indvar_flatten_phi_fu_141_p4 + 62'd1);

assign p_1_rec_i_i_op_fu_325_p2 = (ap_phi_mux_p_1_rec_i_i_phi_fu_163_p4 + 31'd1);

assign p_Result_s_fu_339_p5 = {{{{dMap_data_stream_0_V_dout}, {tmp_153_reg_411}}, {tmp_152_reg_406}}, {tmp_151_reg_401}};

assign p_lshr_f_i_i_fu_202_p4 = {{packets_loc_read_reg_349[31:1]}};

assign p_lshr_i_i_fu_182_p4 = {{p_neg_i_i_fu_177_p2[31:1]}};

assign p_neg_i_i_fu_177_p2 = (32'd0 - packets_loc_read_reg_349);

assign p_neg_t_i_i_fu_196_p2 = (32'd0 - tmp_s_fu_192_p1);

assign p_rec_i_i_fu_331_p3 = ((exitcond3_i_i7_fu_286_p2[0:0] === 1'b1) ? 31'd1 : p_1_rec_i_i_op_fu_325_p2);

assign r_fu_268_p2 = (ap_phi_mux_i_op_assign_phi_fu_152_p4 + 32'd1);

assign tmp_14_cast_i_i_fu_239_p1 = tmp_68_fu_229_p4;

assign tmp_25_i_i_fu_215_p3 = ((tmp_fu_170_p3[0:0] === 1'b1) ? p_neg_t_i_i_fu_196_p2 : tmp_67_fu_211_p1);

assign tmp_26_i_i_fu_223_p2 = ($signed(tmp_25_i_i_fu_215_p3) + $signed(32'd4294967295));

assign tmp_31_i_i3_fu_280_p2 = ((ap_phi_mux_i_op_assign_phi_fu_152_p4 == 32'd0) ? 1'b1 : 1'b0);

assign tmp_31_i_i_mid1_fu_274_p2 = ((r_fu_268_p2 == 32'd0) ? 1'b1 : 1'b0);

assign tmp_32_i_i2_fu_304_p2 = ((ap_phi_mux_i_op_assign_phi_fu_152_p4 == tmp_26_i_i_reg_356) ? 1'b1 : 1'b0);

assign tmp_32_i_i_mid1_fu_299_p2 = ((r_fu_268_p2 == tmp_26_i_i_reg_356) ? 1'b1 : 1'b0);

assign tmp_67_fu_211_p1 = p_lshr_f_i_i_fu_202_p4;

assign tmp_68_fu_229_p4 = {{cols_V[31:2]}};

assign tmp_fu_170_p3 = packets_loc_read_reg_349[32'd31];

assign tmp_s_fu_192_p1 = p_lshr_i_i_fu_182_p4;

endmodule //Loop_4_proc
