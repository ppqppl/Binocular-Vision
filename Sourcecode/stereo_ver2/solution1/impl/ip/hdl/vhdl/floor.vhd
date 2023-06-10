-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.3
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity floor is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    ap_ce : IN STD_LOGIC;
    x : IN STD_LOGIC_VECTOR (31 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of floor is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";
    constant ap_const_lv32_17 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010111";
    constant ap_const_lv32_1E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011110";
    constant ap_const_lv32_1B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011011";
    constant ap_const_lv8_7F : STD_LOGIC_VECTOR (7 downto 0) := "01111111";
    constant ap_const_lv8_96 : STD_LOGIC_VECTOR (7 downto 0) := "10010110";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv23_7FFFFF : STD_LOGIC_VECTOR (22 downto 0) := "11111111111111111111111";
    constant ap_const_lv23_0 : STD_LOGIC_VECTOR (22 downto 0) := "00000000000000000000000";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv31_0 : STD_LOGIC_VECTOR (30 downto 0) := "0000000000000000000000000000000";
    constant ap_const_lv32_BF800000 : STD_LOGIC_VECTOR (31 downto 0) := "10111111100000000000000000000000";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal mask_table1_address0 : STD_LOGIC_VECTOR (4 downto 0);
    signal mask_table1_ce0 : STD_LOGIC;
    signal mask_table1_q0 : STD_LOGIC_VECTOR (22 downto 0);
    signal x_read_reg_265 : STD_LOGIC_VECTOR (31 downto 0);
    signal x_read_reg_265_pp0_iter1_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal p_Result_s_reg_270 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_s_reg_270_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_V_reg_279 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_V_1_fu_83_p1 : STD_LOGIC_VECTOR (22 downto 0);
    signal tmp_V_1_reg_287 : STD_LOGIC_VECTOR (22 downto 0);
    signal tmp_3_fu_102_p1 : STD_LOGIC_VECTOR (30 downto 0);
    signal tmp_3_reg_298 : STD_LOGIC_VECTOR (30 downto 0);
    signal tmp_i_fu_106_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_i_reg_303 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_3_i_fu_111_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_3_i_reg_310 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_8_fu_184_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_Result_8_reg_316 : STD_LOGIC_VECTOR (31 downto 0);
    signal notlhs_i_fu_194_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal notlhs_i_reg_321 : STD_LOGIC_VECTOR (0 downto 0);
    signal notrhs_i_fu_199_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal notrhs_i_reg_326 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal tmp_6_i_fu_97_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal p_Val2_s_fu_61_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal index_V_fu_87_p4 : STD_LOGIC_VECTOR (4 downto 0);
    signal mask_cast_i_fu_116_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_Result_6_fu_120_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_Val2_5_fu_127_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_V_3_fu_151_p1 : STD_LOGIC_VECTOR (22 downto 0);
    signal tmp_V_2_fu_141_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_Result_7_fu_133_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal xs_sig_V_1_fu_155_p3 : STD_LOGIC_VECTOR (22 downto 0);
    signal tmp_i_18_fu_172_p2 : STD_LOGIC_VECTOR (22 downto 0);
    signal xs_sign_V_fu_167_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xs_exp_V_fu_161_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal xs_sig_V_fu_178_p2 : STD_LOGIC_VECTOR (22 downto 0);
    signal sel_tmp2_demorgan_i_fu_211_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_5_fu_204_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal sel_tmp3_v_i_fu_215_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal sel_tmp4_i_fu_226_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal sel_tmp5_i_fu_231_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal sel_tmp3_i_fu_222_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal sel_tmp8_i_fu_243_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_fu_247_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal sel_tmp9_i_fu_252_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal sel_tmp6_i_fu_236_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_idle_pp0_0to1 : STD_LOGIC;
    signal ap_reset_idle_pp0 : STD_LOGIC;
    signal ap_reset_start_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;

    component floor_mask_table1 IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (4 downto 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR (22 downto 0) );
    end component;



begin
    mask_table1_U : component floor_mask_table1
    generic map (
        DataWidth => 23,
        AddressRange => 32,
        AddressWidth => 5)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => mask_table1_address0,
        ce0 => mask_table1_ce0,
        q0 => mask_table1_q0);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_enable_reg_pp0_iter1 <= ap_start;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter2_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                end if; 
            end if;
        end if;
    end process;

    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_ce) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                notlhs_i_reg_321 <= notlhs_i_fu_194_p2;
                notrhs_i_reg_326 <= notrhs_i_fu_199_p2;
                p_Result_8_reg_316 <= p_Result_8_fu_184_p4;
                p_Result_s_reg_270 <= p_Val2_s_fu_61_p1(31 downto 31);
                p_Result_s_reg_270_pp0_iter1_reg <= p_Result_s_reg_270;
                tmp_3_i_reg_310 <= tmp_3_i_fu_111_p2;
                tmp_3_reg_298 <= tmp_3_fu_102_p1;
                tmp_V_1_reg_287 <= tmp_V_1_fu_83_p1;
                tmp_V_reg_279 <= p_Val2_s_fu_61_p1(30 downto 23);
                tmp_i_reg_303 <= tmp_i_fu_106_p2;
                x_read_reg_265 <= x;
                x_read_reg_265_pp0_iter1_reg <= x_read_reg_265;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm, ap_block_pp0_stage0_subdone, ap_reset_idle_pp0, ap_reset_start_pp0)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_11001_assign_proc : process(ap_start)
    begin
                ap_block_pp0_stage0_11001 <= ((ap_start = ap_const_logic_0) and (ap_start = ap_const_logic_1));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(ap_start, ap_ce)
    begin
                ap_block_pp0_stage0_subdone <= ((ap_const_logic_0 = ap_ce) or ((ap_start = ap_const_logic_0) and (ap_start = ap_const_logic_1)));
    end process;


    ap_block_state1_pp0_stage0_iter0_assign_proc : process(ap_start)
    begin
                ap_block_state1_pp0_stage0_iter0 <= (ap_start = ap_const_logic_0);
    end process;

        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001, ap_ce)
    begin
        if ((((ap_start = ap_const_logic_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) or ((ap_const_logic_1 = ap_ce) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start;

    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_idle_pp0)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_idle_pp0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_0to1_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0_0to1 <= ap_const_logic_1;
        else 
            ap_idle_pp0_0to1 <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_ce)
    begin
        if (((ap_const_logic_1 = ap_ce) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    ap_reset_idle_pp0_assign_proc : process(ap_start, ap_idle_pp0_0to1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_idle_pp0_0to1 = ap_const_logic_1))) then 
            ap_reset_idle_pp0 <= ap_const_logic_1;
        else 
            ap_reset_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_reset_start_pp0_assign_proc : process(ap_start, ap_idle_pp0_0to1)
    begin
        if (((ap_start = ap_const_logic_1) and (ap_idle_pp0_0to1 = ap_const_logic_1))) then 
            ap_reset_start_pp0 <= ap_const_logic_1;
        else 
            ap_reset_start_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_return <= 
        ap_const_lv32_BF800000 when (sel_tmp9_i_fu_252_p2(0) = '1') else 
        sel_tmp6_i_fu_236_p3;
    index_V_fu_87_p4 <= p_Val2_s_fu_61_p1(27 downto 23);
    mask_cast_i_fu_116_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(mask_table1_q0),32));
    mask_table1_address0 <= tmp_6_i_fu_97_p1(5 - 1 downto 0);

    mask_table1_ce0_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_ce)
    begin
        if (((ap_const_logic_1 = ap_ce) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            mask_table1_ce0 <= ap_const_logic_1;
        else 
            mask_table1_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    notlhs_i_fu_194_p2 <= "0" when (tmp_V_1_reg_287 = ap_const_lv23_0) else "1";
    notrhs_i_fu_199_p2 <= "0" when (tmp_V_reg_279 = ap_const_lv8_0) else "1";
    p_Result_5_fu_204_p3 <= (p_Result_s_reg_270_pp0_iter1_reg & ap_const_lv31_0);
    p_Result_6_fu_120_p3 <= (ap_const_lv1_1 & tmp_3_reg_298);
    p_Result_7_fu_133_p3 <= p_Val2_5_fu_127_p2(31 downto 31);
    p_Result_8_fu_184_p4 <= ((xs_sign_V_fu_167_p2 & xs_exp_V_fu_161_p3) & xs_sig_V_fu_178_p2);
    p_Val2_5_fu_127_p2 <= std_logic_vector(unsigned(mask_cast_i_fu_116_p1) + unsigned(p_Result_6_fu_120_p3));
    p_Val2_s_fu_61_p1 <= x;
    sel_tmp2_demorgan_i_fu_211_p2 <= (tmp_i_reg_303 or tmp_3_i_reg_310);
    sel_tmp3_i_fu_222_p1 <= sel_tmp3_v_i_fu_215_p3;
    sel_tmp3_v_i_fu_215_p3 <= 
        p_Result_5_fu_204_p3 when (sel_tmp2_demorgan_i_fu_211_p2(0) = '1') else 
        p_Result_8_reg_316;
    sel_tmp4_i_fu_226_p2 <= (tmp_i_reg_303 xor ap_const_lv1_1);
    sel_tmp5_i_fu_231_p2 <= (tmp_3_i_reg_310 and sel_tmp4_i_fu_226_p2);
    sel_tmp6_i_fu_236_p3 <= 
        x_read_reg_265_pp0_iter1_reg when (sel_tmp5_i_fu_231_p2(0) = '1') else 
        sel_tmp3_i_fu_222_p1;
    sel_tmp8_i_fu_243_p2 <= (notrhs_i_reg_326 or notlhs_i_reg_321);
    sel_tmp9_i_fu_252_p2 <= (tmp_i_reg_303 and tmp_fu_247_p2);
    tmp_3_fu_102_p1 <= p_Val2_s_fu_61_p1(31 - 1 downto 0);
    tmp_3_i_fu_111_p2 <= "1" when (unsigned(tmp_V_reg_279) > unsigned(ap_const_lv8_96)) else "0";
    tmp_6_i_fu_97_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(index_V_fu_87_p4),64));
    tmp_V_1_fu_83_p1 <= p_Val2_s_fu_61_p1(23 - 1 downto 0);
    tmp_V_2_fu_141_p4 <= p_Val2_5_fu_127_p2(30 downto 23);
    tmp_V_3_fu_151_p1 <= p_Val2_5_fu_127_p2(23 - 1 downto 0);
    tmp_fu_247_p2 <= (sel_tmp8_i_fu_243_p2 and p_Result_s_reg_270_pp0_iter1_reg);
    tmp_i_18_fu_172_p2 <= (mask_table1_q0 xor ap_const_lv23_7FFFFF);
    tmp_i_fu_106_p2 <= "1" when (unsigned(tmp_V_reg_279) < unsigned(ap_const_lv8_7F)) else "0";
    xs_exp_V_fu_161_p3 <= 
        tmp_V_2_fu_141_p4 when (p_Result_s_reg_270(0) = '1') else 
        tmp_V_reg_279;
    xs_sig_V_1_fu_155_p3 <= 
        tmp_V_3_fu_151_p1 when (p_Result_s_reg_270(0) = '1') else 
        tmp_V_1_reg_287;
    xs_sig_V_fu_178_p2 <= (xs_sig_V_1_fu_155_p3 and tmp_i_18_fu_172_p2);
    xs_sign_V_fu_167_p2 <= (p_Result_s_reg_270 and p_Result_7_fu_133_p3);
end behav;