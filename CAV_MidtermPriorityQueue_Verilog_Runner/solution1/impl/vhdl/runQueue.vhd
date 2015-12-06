-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2014.1
-- Copyright (C) 2014 Xilinx Inc. All rights reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity runQueue is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    priorityOut_V : OUT STD_LOGIC_VECTOR (7 downto 0);
    priorityIn_V : IN STD_LOGIC_VECTOR (7 downto 0);
    cmdOut_V : OUT STD_LOGIC_VECTOR (1 downto 0);
    empty : IN STD_LOGIC;
    full : IN STD_LOGIC;
    fullOut : OUT STD_LOGIC;
    iterations : IN STD_LOGIC_VECTOR (31 downto 0);
    iterations_ap_vld : IN STD_LOGIC;
    finished : OUT STD_LOGIC;
    finished_ap_vld : OUT STD_LOGIC;
    currentIteration : OUT STD_LOGIC_VECTOR (31 downto 0);
    total : OUT STD_LOGIC_VECTOR (31 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of runQueue is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "runQueue,hls_ip_2014_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=4.093000,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=0,HLS_SYN_LUT=0}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_st1_fsm_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_ST_st2_fsm_1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_ST_st3_fsm_2 : STD_LOGIC_VECTOR (4 downto 0) := "00010";
    constant ap_ST_st4_fsm_3 : STD_LOGIC_VECTOR (4 downto 0) := "00011";
    constant ap_ST_st5_fsm_4 : STD_LOGIC_VECTOR (4 downto 0) := "00100";
    constant ap_ST_st6_fsm_5 : STD_LOGIC_VECTOR (4 downto 0) := "00101";
    constant ap_ST_st7_fsm_6 : STD_LOGIC_VECTOR (4 downto 0) := "00110";
    constant ap_ST_st8_fsm_7 : STD_LOGIC_VECTOR (4 downto 0) := "00111";
    constant ap_ST_st9_fsm_8 : STD_LOGIC_VECTOR (4 downto 0) := "01000";
    constant ap_ST_st10_fsm_9 : STD_LOGIC_VECTOR (4 downto 0) := "01001";
    constant ap_ST_st11_fsm_10 : STD_LOGIC_VECTOR (4 downto 0) := "01010";
    constant ap_ST_st12_fsm_11 : STD_LOGIC_VECTOR (4 downto 0) := "01011";
    constant ap_ST_st13_fsm_12 : STD_LOGIC_VECTOR (4 downto 0) := "01100";
    constant ap_ST_st14_fsm_13 : STD_LOGIC_VECTOR (4 downto 0) := "01101";
    constant ap_ST_st15_fsm_14 : STD_LOGIC_VECTOR (4 downto 0) := "01110";
    constant ap_ST_st16_fsm_15 : STD_LOGIC_VECTOR (4 downto 0) := "01111";
    constant ap_ST_st17_fsm_16 : STD_LOGIC_VECTOR (4 downto 0) := "10000";
    constant ap_ST_st18_fsm_17 : STD_LOGIC_VECTOR (4 downto 0) := "10001";
    constant ap_ST_st19_fsm_18 : STD_LOGIC_VECTOR (4 downto 0) := "10010";
    constant ap_ST_st20_fsm_19 : STD_LOGIC_VECTOR (4 downto 0) := "10011";
    constant ap_ST_st21_fsm_20 : STD_LOGIC_VECTOR (4 downto 0) := "10100";
    constant ap_ST_st22_fsm_21 : STD_LOGIC_VECTOR (4 downto 0) := "10101";
    constant ap_ST_st23_fsm_22 : STD_LOGIC_VECTOR (4 downto 0) := "10110";
    constant ap_ST_st24_fsm_23 : STD_LOGIC_VECTOR (4 downto 0) := "10111";
    constant ap_ST_st25_fsm_24 : STD_LOGIC_VECTOR (4 downto 0) := "11000";
    constant ap_ST_st26_fsm_25 : STD_LOGIC_VECTOR (4 downto 0) := "11001";
    constant ap_ST_st27_fsm_26 : STD_LOGIC_VECTOR (4 downto 0) := "11010";
    constant ap_ST_st28_fsm_27 : STD_LOGIC_VECTOR (4 downto 0) := "11011";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    signal iterations_in_sig : STD_LOGIC_VECTOR (31 downto 0);
    signal iterations_preg : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal iterations_ap_vld_in_sig : STD_LOGIC;
    signal iterations_ap_vld_preg : STD_LOGIC := '0';
    signal random_priorities_address0 : STD_LOGIC_VECTOR (7 downto 0);
    signal random_priorities_ce0 : STD_LOGIC;
    signal random_priorities_q0 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_sig_bdd_79 : BOOLEAN;
    signal j_1_fu_330_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal j_1_reg_442 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_fu_336_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reg_450 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_1_fu_342_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_1_reg_455 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_load_fu_309_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_3_fu_357_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_3_reg_463 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_4_fu_367_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_4_reg_468 : STD_LOGIC_VECTOR (0 downto 0);
    signal result_5_fu_377_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_1_fu_383_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_1_reg_480 : STD_LOGIC_VECTOR (31 downto 0);
    signal result_6_fu_409_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal priorityIn_V_read_4_reg_501 : STD_LOGIC_VECTOR (7 downto 0);
    signal j_reg_181 : STD_LOGIC_VECTOR (31 downto 0);
    signal result_reg_193 : STD_LOGIC_VECTOR (31 downto 0);
    signal result_3_reg_275 : STD_LOGIC_VECTOR (31 downto 0);
    signal val_assign_reg_205 : STD_LOGIC_VECTOR (31 downto 0);
    signal op2_assign_reg_216 : STD_LOGIC_VECTOR (31 downto 0);
    signal result_1_reg_228 : STD_LOGIC_VECTOR (31 downto 0);
    signal result_2_reg_239 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_2_reg_251 : STD_LOGIC_VECTOR (31 downto 0);
    signal last_reg_263 : STD_LOGIC_VECTOR (7 downto 0);
    signal result_4_reg_287 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_2_fu_399_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_7_fu_389_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal count_fu_86 : STD_LOGIC_VECTOR (31 downto 0);
    signal count_1_fu_346_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_fu_325_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal localFull_fu_90 : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_read_fu_119_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_load_fu_317_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal localEmpty_fu_94 : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_read_fu_141_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal cmdOut_V_preg : STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal currentIteration_preg : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal total_preg : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal priorityOut_V_preg : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    signal tmp_9_fu_394_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal fullOut_preg : STD_LOGIC := '0';
    signal tmp_3_fu_363_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_5_fu_373_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_6_fu_405_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (4 downto 0);

    component runQueue_random_priorities IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (7 downto 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR (8 downto 0) );
    end component;



begin
    random_priorities_U : component runQueue_random_priorities
    generic map (
        DataWidth => 9,
        AddressRange => 200,
        AddressWidth => 8)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => random_priorities_address0,
        ce0 => random_priorities_ce0,
        q0 => random_priorities_q0);





    -- the current state (ap_CS_fsm) of the state machine. --
    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_st1_fsm_0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    -- cmdOut_V_preg assign process. --
    cmdOut_V_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                cmdOut_V_preg <= ap_const_lv2_0;
            else
                if (((ap_ST_st9_fsm_8 = ap_CS_fsm) or ((ap_ST_st10_fsm_9 = ap_CS_fsm) and (ap_const_lv1_0 = grp_load_fu_317_p1)) or ((ap_const_lv1_0 = grp_load_fu_317_p1) and (ap_ST_st22_fsm_21 = ap_CS_fsm)))) then 
                    cmdOut_V_preg <= ap_const_lv2_2;
                elsif ((((ap_ST_st4_fsm_3 = ap_CS_fsm) and (grp_load_fu_309_p1 = ap_const_lv1_0)) or (ap_ST_st3_fsm_2 = ap_CS_fsm) or (ap_ST_st15_fsm_14 = ap_CS_fsm) or ((grp_load_fu_309_p1 = ap_const_lv1_0) and (ap_ST_st16_fsm_15 = ap_CS_fsm)))) then 
                    cmdOut_V_preg <= ap_const_lv2_1;
                elsif ((((ap_ST_st1_fsm_0 = ap_CS_fsm) and not(ap_sig_bdd_79)) or ((ap_ST_st16_fsm_15 = ap_CS_fsm) and not((grp_load_fu_309_p1 = ap_const_lv1_0))) or ((ap_ST_st2_fsm_1 = ap_CS_fsm) and not((ap_const_lv1_0 = tmp_fu_325_p2))) or ((ap_ST_st10_fsm_9 = ap_CS_fsm) and not((ap_const_lv1_0 = grp_load_fu_317_p1))) or ((ap_ST_st4_fsm_3 = ap_CS_fsm) and not((grp_load_fu_309_p1 = ap_const_lv1_0))) or (ap_ST_st7_fsm_6 = ap_CS_fsm) or (ap_ST_st13_fsm_12 = ap_CS_fsm) or (ap_ST_st20_fsm_19 = ap_CS_fsm) or (not((ap_const_lv1_0 = grp_load_fu_317_p1)) and (ap_ST_st22_fsm_21 = ap_CS_fsm)) or (ap_ST_st26_fsm_25 = ap_CS_fsm))) then 
                    cmdOut_V_preg <= ap_const_lv2_0;
                end if; 
            end if;
        end if;
    end process;


    -- currentIteration_preg assign process. --
    currentIteration_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                currentIteration_preg <= ap_const_lv32_0;
            else
                if (((ap_ST_st2_fsm_1 = ap_CS_fsm) and not((ap_const_lv1_0 = tmp_fu_325_p2)))) then 
                    currentIteration_preg <= j_reg_181;
                end if; 
            end if;
        end if;
    end process;


    -- fullOut_preg assign process. --
    fullOut_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                fullOut_preg <= ap_const_logic_0;
            else
                if ((ap_ST_st5_fsm_4 = ap_CS_fsm)) then 
                    fullOut_preg <= grp_read_fu_119_p2(0);
                end if; 
            end if;
        end if;
    end process;


    -- iterations_ap_vld_preg assign process. --
    iterations_ap_vld_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                iterations_ap_vld_preg <= ap_const_logic_0;
            else
                if (((ap_ST_st2_fsm_1 = ap_CS_fsm) and (ap_const_lv1_0 = tmp_fu_325_p2))) then 
                    iterations_ap_vld_preg <= ap_const_logic_0;
                elsif (((ap_const_logic_1 = iterations_ap_vld) and not(((ap_ST_st1_fsm_0 = ap_CS_fsm) and (ap_const_logic_0 = ap_start))))) then 
                    iterations_ap_vld_preg <= iterations_ap_vld;
                end if; 
            end if;
        end if;
    end process;


    -- iterations_preg assign process. --
    iterations_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                iterations_preg <= ap_const_lv32_0;
            else
                if (((ap_const_logic_1 = iterations_ap_vld) and not(((ap_ST_st1_fsm_0 = ap_CS_fsm) and (ap_const_logic_0 = ap_start))))) then 
                    iterations_preg <= iterations;
                end if; 
            end if;
        end if;
    end process;


    -- priorityOut_V_preg assign process. --
    priorityOut_V_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                priorityOut_V_preg <= ap_const_lv8_0;
            else
                if ((ap_ST_st18_fsm_17 = ap_CS_fsm)) then 
                    priorityOut_V_preg <= tmp_9_fu_394_p1;
                elsif ((ap_ST_st5_fsm_4 = ap_CS_fsm)) then 
                    priorityOut_V_preg <= tmp_1_reg_455;
                end if; 
            end if;
        end if;
    end process;


    -- total_preg assign process. --
    total_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                total_preg <= ap_const_lv32_0;
            else
                if (((ap_ST_st2_fsm_1 = ap_CS_fsm) and (ap_const_lv1_0 = tmp_fu_325_p2))) then 
                    total_preg <= count_fu_86;
                end if; 
            end if;
        end if;
    end process;


    -- count_fu_86 assign process. --
    count_fu_86_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_ST_st8_fsm_7 = ap_CS_fsm)) then 
                count_fu_86 <= count_1_fu_346_p2;
            elsif (((ap_ST_st1_fsm_0 = ap_CS_fsm) and not(ap_sig_bdd_79))) then 
                count_fu_86 <= ap_const_lv32_0;
            end if; 
        end if;
    end process;

    -- i_2_reg_251 assign process. --
    i_2_reg_251_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_ST_st21_fsm_20 = ap_CS_fsm)) then 
                i_2_reg_251 <= i_1_reg_480;
            elsif ((ap_ST_st15_fsm_14 = ap_CS_fsm)) then 
                i_2_reg_251 <= ap_const_lv32_0;
            end if; 
        end if;
    end process;

    -- j_reg_181 assign process. --
    j_reg_181_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_ST_st28_fsm_27 = ap_CS_fsm)) then 
                j_reg_181 <= j_1_reg_442;
            elsif (((ap_ST_st1_fsm_0 = ap_CS_fsm) and not(ap_sig_bdd_79))) then 
                j_reg_181 <= ap_const_lv32_0;
            end if; 
        end if;
    end process;

    -- last_reg_263 assign process. --
    last_reg_263_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_ST_st27_fsm_26 = ap_CS_fsm)) then 
                last_reg_263 <= priorityIn_V_read_4_reg_501;
            elsif (((ap_ST_st16_fsm_15 = ap_CS_fsm) and not((grp_load_fu_309_p1 = ap_const_lv1_0)))) then 
                last_reg_263 <= ap_const_lv8_0;
            end if; 
        end if;
    end process;

    -- op2_assign_reg_216 assign process. --
    op2_assign_reg_216_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_ST_st14_fsm_13 = ap_CS_fsm)) then 
                op2_assign_reg_216 <= i_3_reg_463;
            elsif ((ap_ST_st9_fsm_8 = ap_CS_fsm)) then 
                op2_assign_reg_216 <= ap_const_lv32_0;
            end if; 
        end if;
    end process;

    -- result_1_reg_228 assign process. --
    result_1_reg_228_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_ST_st14_fsm_13 = ap_CS_fsm)) then 
                result_1_reg_228 <= result_2_reg_239;
            elsif ((ap_ST_st9_fsm_8 = ap_CS_fsm)) then 
                result_1_reg_228 <= result_reg_193;
            end if; 
        end if;
    end process;

    -- result_2_reg_239 assign process. --
    result_2_reg_239_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_ST_st11_fsm_10 = ap_CS_fsm) and not((ap_const_lv1_0 = tmp_4_fu_367_p2)))) then 
                result_2_reg_239 <= result_1_reg_228;
            elsif (((ap_ST_st12_fsm_11 = ap_CS_fsm) and (ap_const_lv1_0 = tmp_4_reg_468))) then 
                result_2_reg_239 <= result_5_fu_377_p2;
            end if; 
        end if;
    end process;

    -- result_3_reg_275 assign process. --
    result_3_reg_275_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_ST_st27_fsm_26 = ap_CS_fsm)) then 
                result_3_reg_275 <= result_4_reg_287;
            elsif (((ap_ST_st16_fsm_15 = ap_CS_fsm) and not((grp_load_fu_309_p1 = ap_const_lv1_0)))) then 
                result_3_reg_275 <= result_1_reg_228;
            end if; 
        end if;
    end process;

    -- result_4_reg_287 assign process. --
    result_4_reg_287_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_ST_st23_fsm_22 = ap_CS_fsm) and (ap_const_lv1_0 = tmp_2_fu_399_p2))) then 
                result_4_reg_287 <= result_3_reg_275;
            elsif ((ap_ST_st24_fsm_23 = ap_CS_fsm)) then 
                result_4_reg_287 <= result_6_fu_409_p2;
            end if; 
        end if;
    end process;

    -- result_reg_193 assign process. --
    result_reg_193_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_ST_st28_fsm_27 = ap_CS_fsm)) then 
                result_reg_193 <= result_3_reg_275;
            elsif (((ap_ST_st1_fsm_0 = ap_CS_fsm) and not(ap_sig_bdd_79))) then 
                result_reg_193 <= ap_const_lv32_0;
            end if; 
        end if;
    end process;

    -- val_assign_reg_205 assign process. --
    val_assign_reg_205_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_ST_st8_fsm_7 = ap_CS_fsm)) then 
                val_assign_reg_205 <= i_reg_450;
            elsif ((ap_ST_st3_fsm_2 = ap_CS_fsm)) then 
                val_assign_reg_205 <= ap_const_lv32_0;
            end if; 
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_ST_st16_fsm_15 = ap_CS_fsm)) then
                i_1_reg_480 <= i_1_fu_383_p2;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_ST_st10_fsm_9 = ap_CS_fsm)) then
                i_3_reg_463 <= i_3_fu_357_p2;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_ST_st4_fsm_3 = ap_CS_fsm)) then
                i_reg_450 <= i_fu_336_p2;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_ST_st2_fsm_1 = ap_CS_fsm)) then
                j_1_reg_442 <= j_1_fu_330_p2;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_ST_st12_fsm_11 = ap_CS_fsm) or (ap_ST_st25_fsm_24 = ap_CS_fsm) or ((ap_ST_st16_fsm_15 = ap_CS_fsm) and not((grp_load_fu_309_p1 = ap_const_lv1_0))) or ((ap_ST_st4_fsm_3 = ap_CS_fsm) and not((grp_load_fu_309_p1 = ap_const_lv1_0))))) then
                localEmpty_fu_94 <= grp_read_fu_141_p2;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((((ap_ST_st2_fsm_1 = ap_CS_fsm) and not((ap_const_lv1_0 = tmp_fu_325_p2))) or (ap_ST_st6_fsm_5 = ap_CS_fsm) or ((ap_ST_st10_fsm_9 = ap_CS_fsm) and not((ap_const_lv1_0 = grp_load_fu_317_p1))) or (ap_ST_st19_fsm_18 = ap_CS_fsm))) then
                localFull_fu_90 <= grp_read_fu_119_p2;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_ST_st25_fsm_24 = ap_CS_fsm)) then
                priorityIn_V_read_4_reg_501 <= priorityIn_V;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_ST_st4_fsm_3 = ap_CS_fsm) and (grp_load_fu_309_p1 = ap_const_lv1_0))) then
                tmp_1_reg_455 <= tmp_1_fu_342_p1;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_ST_st11_fsm_10 = ap_CS_fsm)) then
                tmp_4_reg_468 <= tmp_4_fu_367_p2;
            end if;
        end if;
    end process;

    -- the next state (ap_NS_fsm) of the state machine. --
    ap_NS_fsm_assign_proc : process (ap_CS_fsm , ap_sig_bdd_79 , grp_load_fu_309_p1 , tmp_2_fu_399_p2 , tmp_fu_325_p2 , grp_load_fu_317_p1)
    begin
        case ap_CS_fsm is
            when ap_ST_st1_fsm_0 => 
                if (not(ap_sig_bdd_79)) then
                    ap_NS_fsm <= ap_ST_st2_fsm_1;
                else
                    ap_NS_fsm <= ap_ST_st1_fsm_0;
                end if;
            when ap_ST_st2_fsm_1 => 
                if ((ap_const_lv1_0 = tmp_fu_325_p2)) then
                    ap_NS_fsm <= ap_ST_st1_fsm_0;
                else
                    ap_NS_fsm <= ap_ST_st3_fsm_2;
                end if;
            when ap_ST_st3_fsm_2 => 
                ap_NS_fsm <= ap_ST_st4_fsm_3;
            when ap_ST_st4_fsm_3 => 
                if (not((grp_load_fu_309_p1 = ap_const_lv1_0))) then
                    ap_NS_fsm <= ap_ST_st9_fsm_8;
                else
                    ap_NS_fsm <= ap_ST_st5_fsm_4;
                end if;
            when ap_ST_st5_fsm_4 => 
                ap_NS_fsm <= ap_ST_st6_fsm_5;
            when ap_ST_st6_fsm_5 => 
                ap_NS_fsm <= ap_ST_st7_fsm_6;
            when ap_ST_st7_fsm_6 => 
                ap_NS_fsm <= ap_ST_st8_fsm_7;
            when ap_ST_st8_fsm_7 => 
                ap_NS_fsm <= ap_ST_st4_fsm_3;
            when ap_ST_st9_fsm_8 => 
                ap_NS_fsm <= ap_ST_st10_fsm_9;
            when ap_ST_st10_fsm_9 => 
                if (not((ap_const_lv1_0 = grp_load_fu_317_p1))) then
                    ap_NS_fsm <= ap_ST_st15_fsm_14;
                else
                    ap_NS_fsm <= ap_ST_st11_fsm_10;
                end if;
            when ap_ST_st11_fsm_10 => 
                ap_NS_fsm <= ap_ST_st12_fsm_11;
            when ap_ST_st12_fsm_11 => 
                ap_NS_fsm <= ap_ST_st13_fsm_12;
            when ap_ST_st13_fsm_12 => 
                ap_NS_fsm <= ap_ST_st14_fsm_13;
            when ap_ST_st14_fsm_13 => 
                ap_NS_fsm <= ap_ST_st10_fsm_9;
            when ap_ST_st15_fsm_14 => 
                ap_NS_fsm <= ap_ST_st16_fsm_15;
            when ap_ST_st16_fsm_15 => 
                if (not((grp_load_fu_309_p1 = ap_const_lv1_0))) then
                    ap_NS_fsm <= ap_ST_st22_fsm_21;
                else
                    ap_NS_fsm <= ap_ST_st17_fsm_16;
                end if;
            when ap_ST_st17_fsm_16 => 
                ap_NS_fsm <= ap_ST_st18_fsm_17;
            when ap_ST_st18_fsm_17 => 
                ap_NS_fsm <= ap_ST_st19_fsm_18;
            when ap_ST_st19_fsm_18 => 
                ap_NS_fsm <= ap_ST_st20_fsm_19;
            when ap_ST_st20_fsm_19 => 
                ap_NS_fsm <= ap_ST_st21_fsm_20;
            when ap_ST_st21_fsm_20 => 
                ap_NS_fsm <= ap_ST_st16_fsm_15;
            when ap_ST_st22_fsm_21 => 
                if (not((ap_const_lv1_0 = grp_load_fu_317_p1))) then
                    ap_NS_fsm <= ap_ST_st28_fsm_27;
                else
                    ap_NS_fsm <= ap_ST_st23_fsm_22;
                end if;
            when ap_ST_st23_fsm_22 => 
                if ((ap_const_lv1_0 = tmp_2_fu_399_p2)) then
                    ap_NS_fsm <= ap_ST_st25_fsm_24;
                else
                    ap_NS_fsm <= ap_ST_st24_fsm_23;
                end if;
            when ap_ST_st24_fsm_23 => 
                ap_NS_fsm <= ap_ST_st25_fsm_24;
            when ap_ST_st25_fsm_24 => 
                ap_NS_fsm <= ap_ST_st26_fsm_25;
            when ap_ST_st26_fsm_25 => 
                ap_NS_fsm <= ap_ST_st27_fsm_26;
            when ap_ST_st27_fsm_26 => 
                ap_NS_fsm <= ap_ST_st22_fsm_21;
            when ap_ST_st28_fsm_27 => 
                ap_NS_fsm <= ap_ST_st2_fsm_1;
            when others =>  
                ap_NS_fsm <= "XXXXX";
        end case;
    end process;

    -- ap_done assign process. --
    ap_done_assign_proc : process(ap_CS_fsm, tmp_fu_325_p2)
    begin
        if (((ap_ST_st2_fsm_1 = ap_CS_fsm) and (ap_const_lv1_0 = tmp_fu_325_p2))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_idle assign process. --
    ap_idle_assign_proc : process(ap_start, ap_CS_fsm)
    begin
        if ((not((ap_const_logic_1 = ap_start)) and (ap_ST_st1_fsm_0 = ap_CS_fsm))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_ready assign process. --
    ap_ready_assign_proc : process(ap_CS_fsm, tmp_fu_325_p2)
    begin
        if (((ap_ST_st2_fsm_1 = ap_CS_fsm) and (ap_const_lv1_0 = tmp_fu_325_p2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    ap_return <= result_reg_193;

    -- ap_sig_bdd_79 assign process. --
    ap_sig_bdd_79_assign_proc : process(ap_start, iterations_ap_vld_in_sig)
    begin
                ap_sig_bdd_79 <= ((iterations_ap_vld_in_sig = ap_const_logic_0) or (ap_start = ap_const_logic_0));
    end process;


    -- cmdOut_V assign process. --
    cmdOut_V_assign_proc : process(ap_CS_fsm, ap_sig_bdd_79, grp_load_fu_309_p1, tmp_fu_325_p2, grp_load_fu_317_p1, cmdOut_V_preg)
    begin
        if (((ap_ST_st9_fsm_8 = ap_CS_fsm) or ((ap_ST_st10_fsm_9 = ap_CS_fsm) and (ap_const_lv1_0 = grp_load_fu_317_p1)) or ((ap_const_lv1_0 = grp_load_fu_317_p1) and (ap_ST_st22_fsm_21 = ap_CS_fsm)))) then 
            cmdOut_V <= ap_const_lv2_2;
        elsif ((((ap_ST_st4_fsm_3 = ap_CS_fsm) and (grp_load_fu_309_p1 = ap_const_lv1_0)) or (ap_ST_st3_fsm_2 = ap_CS_fsm) or (ap_ST_st15_fsm_14 = ap_CS_fsm) or ((grp_load_fu_309_p1 = ap_const_lv1_0) and (ap_ST_st16_fsm_15 = ap_CS_fsm)))) then 
            cmdOut_V <= ap_const_lv2_1;
        elsif ((((ap_ST_st1_fsm_0 = ap_CS_fsm) and not(ap_sig_bdd_79)) or ((ap_ST_st16_fsm_15 = ap_CS_fsm) and not((grp_load_fu_309_p1 = ap_const_lv1_0))) or ((ap_ST_st2_fsm_1 = ap_CS_fsm) and not((ap_const_lv1_0 = tmp_fu_325_p2))) or ((ap_ST_st10_fsm_9 = ap_CS_fsm) and not((ap_const_lv1_0 = grp_load_fu_317_p1))) or ((ap_ST_st4_fsm_3 = ap_CS_fsm) and not((grp_load_fu_309_p1 = ap_const_lv1_0))) or (ap_ST_st7_fsm_6 = ap_CS_fsm) or (ap_ST_st13_fsm_12 = ap_CS_fsm) or (ap_ST_st20_fsm_19 = ap_CS_fsm) or (not((ap_const_lv1_0 = grp_load_fu_317_p1)) and (ap_ST_st22_fsm_21 = ap_CS_fsm)) or (ap_ST_st26_fsm_25 = ap_CS_fsm))) then 
            cmdOut_V <= ap_const_lv2_0;
        else 
            cmdOut_V <= cmdOut_V_preg;
        end if; 
    end process;

    count_1_fu_346_p2 <= std_logic_vector(unsigned(count_fu_86) + unsigned(ap_const_lv32_1));

    -- currentIteration assign process. --
    currentIteration_assign_proc : process(ap_CS_fsm, j_reg_181, tmp_fu_325_p2, currentIteration_preg)
    begin
        if (((ap_ST_st2_fsm_1 = ap_CS_fsm) and not((ap_const_lv1_0 = tmp_fu_325_p2)))) then 
            currentIteration <= j_reg_181;
        else 
            currentIteration <= currentIteration_preg;
        end if; 
    end process;

    finished <= ap_const_logic_1;

    -- finished_ap_vld assign process. --
    finished_ap_vld_assign_proc : process(ap_CS_fsm, tmp_fu_325_p2)
    begin
        if (((ap_ST_st2_fsm_1 = ap_CS_fsm) and (ap_const_lv1_0 = tmp_fu_325_p2))) then 
            finished_ap_vld <= ap_const_logic_1;
        else 
            finished_ap_vld <= ap_const_logic_0;
        end if; 
    end process;


    -- fullOut assign process. --
    fullOut_assign_proc : process(ap_CS_fsm, full, fullOut_preg)
    begin
        if ((ap_ST_st5_fsm_4 = ap_CS_fsm)) then 
            fullOut <= full;
        else 
            fullOut <= fullOut_preg;
        end if; 
    end process;

    grp_load_fu_309_p1 <= localFull_fu_90;
    grp_load_fu_317_p1 <= localEmpty_fu_94;
    grp_read_fu_119_p2 <= (0=>full, others=>'-');
    grp_read_fu_141_p2 <= (0=>empty, others=>'-');
    i_1_fu_383_p2 <= std_logic_vector(unsigned(i_2_reg_251) + unsigned(ap_const_lv32_1));
    i_3_fu_357_p2 <= std_logic_vector(unsigned(op2_assign_reg_216) + unsigned(ap_const_lv32_1));
    i_fu_336_p2 <= std_logic_vector(unsigned(val_assign_reg_205) + unsigned(ap_const_lv32_1));

    -- iterations_ap_vld_in_sig assign process. --
    iterations_ap_vld_in_sig_assign_proc : process(iterations_ap_vld, iterations_ap_vld_preg)
    begin
        if ((ap_const_logic_1 = iterations_ap_vld)) then 
            iterations_ap_vld_in_sig <= iterations_ap_vld;
        else 
            iterations_ap_vld_in_sig <= iterations_ap_vld_preg;
        end if; 
    end process;


    -- iterations_in_sig assign process. --
    iterations_in_sig_assign_proc : process(iterations, iterations_preg, iterations_ap_vld)
    begin
        if ((ap_const_logic_1 = iterations_ap_vld)) then 
            iterations_in_sig <= iterations;
        else 
            iterations_in_sig <= iterations_preg;
        end if; 
    end process;

    j_1_fu_330_p2 <= std_logic_vector(unsigned(j_reg_181) + unsigned(ap_const_lv32_1));

    -- priorityOut_V assign process. --
    priorityOut_V_assign_proc : process(ap_CS_fsm, tmp_1_reg_455, priorityOut_V_preg, tmp_9_fu_394_p1)
    begin
        if ((ap_ST_st18_fsm_17 = ap_CS_fsm)) then 
            priorityOut_V <= tmp_9_fu_394_p1;
        elsif ((ap_ST_st5_fsm_4 = ap_CS_fsm)) then 
            priorityOut_V <= tmp_1_reg_455;
        else 
            priorityOut_V <= priorityOut_V_preg;
        end if; 
    end process;

    random_priorities_address0 <= tmp_7_fu_389_p1(8 - 1 downto 0);

    -- random_priorities_ce0 assign process. --
    random_priorities_ce0_assign_proc : process(ap_CS_fsm)
    begin
        if ((ap_ST_st17_fsm_16 = ap_CS_fsm)) then 
            random_priorities_ce0 <= ap_const_logic_1;
        else 
            random_priorities_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    result_5_fu_377_p2 <= std_logic_vector(unsigned(result_1_reg_228) + unsigned(tmp_5_fu_373_p1));
    result_6_fu_409_p2 <= std_logic_vector(unsigned(result_3_reg_275) + unsigned(tmp_6_fu_405_p1));
    tmp_1_fu_342_p1 <= val_assign_reg_205(8 - 1 downto 0);
    tmp_2_fu_399_p2 <= "1" when (unsigned(last_reg_263) > unsigned(priorityIn_V)) else "0";
    tmp_3_fu_363_p1 <= std_logic_vector(resize(unsigned(priorityIn_V),32));
    tmp_4_fu_367_p2 <= "1" when (tmp_3_fu_363_p1 = op2_assign_reg_216) else "0";
    tmp_5_fu_373_p1 <= std_logic_vector(resize(unsigned(priorityIn_V),32));
    tmp_6_fu_405_p1 <= std_logic_vector(resize(unsigned(priorityIn_V),32));
    tmp_7_fu_389_p1 <= std_logic_vector(resize(unsigned(i_2_reg_251),64));
    tmp_9_fu_394_p1 <= random_priorities_q0(8 - 1 downto 0);
    tmp_fu_325_p2 <= "1" when (signed(j_reg_181) < signed(iterations_in_sig)) else "0";

    -- total assign process. --
    total_assign_proc : process(ap_CS_fsm, count_fu_86, tmp_fu_325_p2, total_preg)
    begin
        if (((ap_ST_st2_fsm_1 = ap_CS_fsm) and (ap_const_lv1_0 = tmp_fu_325_p2))) then 
            total <= count_fu_86;
        else 
            total <= total_preg;
        end if; 
    end process;

end behav;
