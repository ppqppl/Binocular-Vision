// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module Loop_disparityMap_la (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        rows_V,
        in_stream_TDATA,
        in_stream_TVALID,
        in_stream_TREADY,
        p_read,
        p_read1,
        leftImage_in_V_address0,
        leftImage_in_V_ce0,
        leftImage_in_V_we0,
        leftImage_in_V_d0,
        leftImage_in_V_address1,
        leftImage_in_V_ce1,
        leftImage_in_V_we1,
        leftImage_in_V_d1,
        rightImage_in_V_address0,
        rightImage_in_V_ce0,
        rightImage_in_V_we0,
        rightImage_in_V_d0,
        rightImage_in_V_address1,
        rightImage_in_V_ce1,
        rightImage_in_V_we1,
        rightImage_in_V_d1
);

parameter    ap_ST_fsm_state1 = 5'd1;
parameter    ap_ST_fsm_state2 = 5'd2;
parameter    ap_ST_fsm_state3 = 5'd4;
parameter    ap_ST_fsm_state4 = 5'd8;
parameter    ap_ST_fsm_state5 = 5'd16;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [31:0] rows_V;
input  [31:0] in_stream_TDATA;
input   in_stream_TVALID;
output   in_stream_TREADY;
input  [31:0] p_read;
input  [62:0] p_read1;
output  [16:0] leftImage_in_V_address0;
output   leftImage_in_V_ce0;
output   leftImage_in_V_we0;
output  [7:0] leftImage_in_V_d0;
output  [16:0] leftImage_in_V_address1;
output   leftImage_in_V_ce1;
output   leftImage_in_V_we1;
output  [7:0] leftImage_in_V_d1;
output  [16:0] rightImage_in_V_address0;
output   rightImage_in_V_ce0;
output   rightImage_in_V_we0;
output  [7:0] rightImage_in_V_d0;
output  [16:0] rightImage_in_V_address1;
output   rightImage_in_V_ce1;
output   rightImage_in_V_we1;
output  [7:0] rightImage_in_V_d1;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg leftImage_in_V_ce0;
reg leftImage_in_V_we0;
reg leftImage_in_V_ce1;
reg leftImage_in_V_we1;
reg rightImage_in_V_ce0;
reg rightImage_in_V_we0;
reg rightImage_in_V_ce1;
reg rightImage_in_V_we1;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [31:0] in_stream_data_V_0_data_out;
wire    in_stream_data_V_0_vld_in;
wire    in_stream_data_V_0_vld_out;
wire    in_stream_data_V_0_ack_in;
reg    in_stream_data_V_0_ack_out;
reg   [31:0] in_stream_data_V_0_payload_A;
reg   [31:0] in_stream_data_V_0_payload_B;
reg    in_stream_data_V_0_sel_rd;
reg    in_stream_data_V_0_sel_wr;
wire    in_stream_data_V_0_sel;
wire    in_stream_data_V_0_load_A;
wire    in_stream_data_V_0_load_B;
reg   [1:0] in_stream_data_V_0_state;
wire    in_stream_data_V_0_state_cmp_full;
reg    in_stream_TDATA_blk_n;
wire    ap_CS_fsm_state4;
reg    ap_block_state1;
wire   [17:0] tmp_fu_185_p1;
reg   [17:0] tmp_reg_319;
wire    ap_CS_fsm_state2;
wire   [40:0] next_mul_fu_189_p2;
reg   [40:0] next_mul_reg_325;
wire   [0:0] exitcond_i_fu_195_p2;
wire   [31:0] r_fu_200_p2;
reg   [31:0] r_reg_334;
wire   [30:0] c_fu_215_p2;
reg   [30:0] c_reg_342;
wire    ap_CS_fsm_state3;
wire   [17:0] tmp_1_fu_237_p2;
reg   [17:0] tmp_1_reg_347;
wire   [0:0] exitcond2_i_fu_210_p2;
wire   [17:0] tmp_2_fu_256_p2;
reg   [17:0] tmp_2_reg_352;
reg   [31:0] i_op_assign_reg_152;
wire    ap_CS_fsm_state5;
reg   [40:0] phi_mul_reg_163;
reg   [30:0] i_op_assign_1_reg_174;
wire   [63:0] tmp_1_cast_fu_261_p1;
wire   [63:0] tmp_2_cast_fu_271_p1;
wire   [31:0] lftr_wideiv_cast_i_fu_206_p1;
wire   [16:0] tmp_7_fu_225_p1;
wire   [17:0] tmp_22_i_cast_fu_229_p3;
wire   [16:0] tmp_6_fu_221_p1;
wire   [17:0] tmp_9_fu_242_p3;
wire   [17:0] tmp_10_fu_250_p2;
reg   [4:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 5'd1;
#0 in_stream_data_V_0_sel_rd = 1'b0;
#0 in_stream_data_V_0_sel_wr = 1'b0;
#0 in_stream_data_V_0_state = 2'd0;
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
        end else if (((exitcond_i_fu_195_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        in_stream_data_V_0_sel_rd <= 1'b0;
    end else begin
        if (((in_stream_data_V_0_ack_out == 1'b1) & (in_stream_data_V_0_vld_out == 1'b1))) begin
            in_stream_data_V_0_sel_rd <= ~in_stream_data_V_0_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        in_stream_data_V_0_sel_wr <= 1'b0;
    end else begin
        if (((in_stream_data_V_0_ack_in == 1'b1) & (in_stream_data_V_0_vld_in == 1'b1))) begin
            in_stream_data_V_0_sel_wr <= ~in_stream_data_V_0_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        in_stream_data_V_0_state <= 2'd0;
    end else begin
        if ((((in_stream_data_V_0_state == 2'd2) & (in_stream_data_V_0_vld_in == 1'b0)) | ((in_stream_data_V_0_state == 2'd3) & (in_stream_data_V_0_vld_in == 1'b0) & (in_stream_data_V_0_ack_out == 1'b1)))) begin
            in_stream_data_V_0_state <= 2'd2;
        end else if ((((in_stream_data_V_0_state == 2'd1) & (in_stream_data_V_0_ack_out == 1'b0)) | ((in_stream_data_V_0_state == 2'd3) & (in_stream_data_V_0_ack_out == 1'b0) & (in_stream_data_V_0_vld_in == 1'b1)))) begin
            in_stream_data_V_0_state <= 2'd1;
        end else if (((~((in_stream_data_V_0_vld_in == 1'b0) & (in_stream_data_V_0_ack_out == 1'b1)) & ~((in_stream_data_V_0_ack_out == 1'b0) & (in_stream_data_V_0_vld_in == 1'b1)) & (in_stream_data_V_0_state == 2'd3)) | ((in_stream_data_V_0_state == 2'd1) & (in_stream_data_V_0_ack_out == 1'b1)) | ((in_stream_data_V_0_state == 2'd2) & (in_stream_data_V_0_vld_in == 1'b1)))) begin
            in_stream_data_V_0_state <= 2'd3;
        end else begin
            in_stream_data_V_0_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((in_stream_data_V_0_vld_out == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        i_op_assign_1_reg_174 <= c_reg_342;
    end else if (((exitcond_i_fu_195_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        i_op_assign_1_reg_174 <= 31'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        i_op_assign_reg_152 <= r_reg_334;
    end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        i_op_assign_reg_152 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        phi_mul_reg_163 <= next_mul_reg_325;
    end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        phi_mul_reg_163 <= 41'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        c_reg_342 <= c_fu_215_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((in_stream_data_V_0_load_A == 1'b1)) begin
        in_stream_data_V_0_payload_A <= in_stream_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if ((in_stream_data_V_0_load_B == 1'b1)) begin
        in_stream_data_V_0_payload_B <= in_stream_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        next_mul_reg_325 <= next_mul_fu_189_p2;
        r_reg_334 <= r_fu_200_p2;
        tmp_reg_319 <= tmp_fu_185_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond2_i_fu_210_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        tmp_1_reg_347 <= tmp_1_fu_237_p2;
        tmp_2_reg_352 <= tmp_2_fu_256_p2;
    end
end

always @ (*) begin
    if (((exitcond_i_fu_195_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if (((exitcond_i_fu_195_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        in_stream_TDATA_blk_n = in_stream_data_V_0_state[1'd0];
    end else begin
        in_stream_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((in_stream_data_V_0_vld_out == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        in_stream_data_V_0_ack_out = 1'b1;
    end else begin
        in_stream_data_V_0_ack_out = 1'b0;
    end
end

always @ (*) begin
    if ((in_stream_data_V_0_sel == 1'b1)) begin
        in_stream_data_V_0_data_out = in_stream_data_V_0_payload_B;
    end else begin
        in_stream_data_V_0_data_out = in_stream_data_V_0_payload_A;
    end
end

always @ (*) begin
    if (((in_stream_data_V_0_vld_out == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        leftImage_in_V_ce0 = 1'b1;
    end else begin
        leftImage_in_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((in_stream_data_V_0_vld_out == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        leftImage_in_V_ce1 = 1'b1;
    end else begin
        leftImage_in_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((in_stream_data_V_0_vld_out == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        leftImage_in_V_we0 = 1'b1;
    end else begin
        leftImage_in_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((in_stream_data_V_0_vld_out == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        leftImage_in_V_we1 = 1'b1;
    end else begin
        leftImage_in_V_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((in_stream_data_V_0_vld_out == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        rightImage_in_V_ce0 = 1'b1;
    end else begin
        rightImage_in_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((in_stream_data_V_0_vld_out == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        rightImage_in_V_ce1 = 1'b1;
    end else begin
        rightImage_in_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((in_stream_data_V_0_vld_out == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        rightImage_in_V_we0 = 1'b1;
    end else begin
        rightImage_in_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((in_stream_data_V_0_vld_out == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        rightImage_in_V_we1 = 1'b1;
    end else begin
        rightImage_in_V_we1 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((exitcond_i_fu_195_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((exitcond2_i_fu_210_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((in_stream_data_V_0_vld_out == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

assign c_fu_215_p2 = (i_op_assign_1_reg_174 + 31'd1);

assign exitcond2_i_fu_210_p2 = ((lftr_wideiv_cast_i_fu_206_p1 == p_read) ? 1'b1 : 1'b0);

assign exitcond_i_fu_195_p2 = ((i_op_assign_reg_152 == rows_V) ? 1'b1 : 1'b0);

assign in_stream_TREADY = in_stream_data_V_0_state[1'd1];

assign in_stream_data_V_0_ack_in = in_stream_data_V_0_state[1'd1];

assign in_stream_data_V_0_load_A = (in_stream_data_V_0_state_cmp_full & ~in_stream_data_V_0_sel_wr);

assign in_stream_data_V_0_load_B = (in_stream_data_V_0_state_cmp_full & in_stream_data_V_0_sel_wr);

assign in_stream_data_V_0_sel = in_stream_data_V_0_sel_rd;

assign in_stream_data_V_0_state_cmp_full = ((in_stream_data_V_0_state != 2'd1) ? 1'b1 : 1'b0);

assign in_stream_data_V_0_vld_in = in_stream_TVALID;

assign in_stream_data_V_0_vld_out = in_stream_data_V_0_state[1'd0];

assign leftImage_in_V_address0 = tmp_1_cast_fu_261_p1;

assign leftImage_in_V_address1 = tmp_2_cast_fu_271_p1;

assign leftImage_in_V_d0 = in_stream_data_V_0_data_out[7:0];

assign leftImage_in_V_d1 = {{in_stream_data_V_0_data_out[15:8]}};

assign lftr_wideiv_cast_i_fu_206_p1 = i_op_assign_1_reg_174;

assign next_mul_fu_189_p2 = (41'd360 + phi_mul_reg_163);

assign r_fu_200_p2 = (32'd1 + i_op_assign_reg_152);

assign rightImage_in_V_address0 = tmp_1_cast_fu_261_p1;

assign rightImage_in_V_address1 = tmp_2_cast_fu_271_p1;

assign rightImage_in_V_d0 = {{in_stream_data_V_0_data_out[23:16]}};

assign rightImage_in_V_d1 = {{in_stream_data_V_0_data_out[31:24]}};

assign tmp_10_fu_250_p2 = (tmp_9_fu_242_p3 | 18'd1);

assign tmp_1_cast_fu_261_p1 = tmp_1_reg_347;

assign tmp_1_fu_237_p2 = (tmp_22_i_cast_fu_229_p3 + tmp_reg_319);

assign tmp_22_i_cast_fu_229_p3 = {{tmp_7_fu_225_p1}, {1'd0}};

assign tmp_2_cast_fu_271_p1 = tmp_2_reg_352;

assign tmp_2_fu_256_p2 = (tmp_10_fu_250_p2 + tmp_reg_319);

assign tmp_6_fu_221_p1 = i_op_assign_1_reg_174[16:0];

assign tmp_7_fu_225_p1 = i_op_assign_1_reg_174[16:0];

assign tmp_9_fu_242_p3 = {{tmp_6_fu_221_p1}, {1'd0}};

assign tmp_fu_185_p1 = phi_mul_reg_163[17:0];

endmodule //Loop_disparityMap_la
