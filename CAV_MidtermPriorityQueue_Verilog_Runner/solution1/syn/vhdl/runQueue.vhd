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
    priorityOut_V : OUT STD_LOGIC_VECTOR (3 downto 0);
    priorityIn_V : IN STD_LOGIC_VECTOR (3 downto 0);
    cmdOut_V : OUT STD_LOGIC_VECTOR (1 downto 0);
    empty : IN STD_LOGIC;
    full : IN STD_LOGIC;
    fullOut : OUT STD_LOGIC;
    iterations : IN STD_LOGIC_VECTOR (31 downto 0);
    iterations_ap_vld : IN STD_LOGIC;
    finished : OUT STD_LOGIC;
    finished_ap_vld : OUT STD_LOGIC;
    currentIteration : OUT STD_LOGIC_VECTOR (31 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of runQueue is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "runQueue,hls_ip_2014_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=5.463000,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=0,HLS_SYN_LUT=0}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_st1_fsm_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_ST_st2_fsm_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_ST_st3_fsm_2 : STD_LOGIC_VECTOR (2 downto 0) := "010";
    constant ap_ST_st4_fsm_3 : STD_LOGIC_VECTOR (2 downto 0) := "011";
    constant ap_ST_st5_fsm_4 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_ST_st6_fsm_5 : STD_LOGIC_VECTOR (2 downto 0) := "101";
    constant ap_ST_st7_fsm_6 : STD_LOGIC_VECTOR (2 downto 0) := "110";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (2 downto 0) := "000";
    signal iterations_in_sig : STD_LOGIC_VECTOR (31 downto 0);
    signal iterations_preg : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal iterations_ap_vld_in_sig : STD_LOGIC;
    signal iterations_ap_vld_preg : STD_LOGIC := '0';
    signal ap_sig_bdd_50 : BOOLEAN;
    signal j_1_fu_204_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal j_1_reg_289 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_fu_213_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reg_297 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_1_fu_227_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal j_reg_146 : STD_LOGIC_VECTOR (31 downto 0);
    signal localEmpty_load_load_fu_224_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal val_assign_reg_158 : STD_LOGIC_VECTOR (31 downto 0);
    signal op2_assign_reg_169 : STD_LOGIC_VECTOR (31 downto 0);
    signal result_fu_70 : STD_LOGIC_VECTOR (31 downto 0);
    signal result_1_s_fu_249_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_fu_199_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal localFull_fu_74 : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_read_fu_111_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal localFull_load_load_fu_210_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal localEmpty_fu_78 : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_read_fu_133_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal cmdOut_V_preg : STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal currentIteration_preg : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal tmp_1_fu_219_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal priorityOut_V_preg : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    signal fullOut_preg : STD_LOGIC := '0';
    signal tmp_4_fu_233_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_5_fu_237_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal result_1_fu_243_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (2 downto 0);


begin




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
                if ((ap_ST_st6_fsm_5 = ap_CS_fsm)) then 
                    cmdOut_V_preg <= ap_const_lv2_2;
                elsif ((ap_ST_st3_fsm_2 = ap_CS_fsm)) then 
                    cmdOut_V_preg <= ap_const_lv2_1;
                elsif ((((ap_ST_st1_fsm_0 = ap_CS_fsm) and not(ap_sig_bdd_50)) or ((ap_ST_st7_fsm_6 = ap_CS_fsm) and not((localEmpty_load_load_fu_224_p1 = ap_const_lv1_0))) or ((ap_ST_st2_fsm_1 = ap_CS_fsm) and not((ap_const_lv1_0 = tmp_fu_199_p2))) or ((ap_ST_st4_fsm_3 = ap_CS_fsm) and not((ap_const_lv1_0 = localFull_load_load_fu_210_p1))))) then 
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
                if (((ap_ST_st2_fsm_1 = ap_CS_fsm) and not((ap_const_lv1_0 = tmp_fu_199_p2)))) then 
                    currentIteration_preg <= j_reg_146;
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
                if (((ap_ST_st4_fsm_3 = ap_CS_fsm) and (ap_const_lv1_0 = localFull_load_load_fu_210_p1))) then 
                    fullOut_preg <= grp_read_fu_111_p2(0);
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
                if (((ap_ST_st2_fsm_1 = ap_CS_fsm) and (ap_const_lv1_0 = tmp_fu_199_p2))) then 
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
                priorityOut_V_preg <= ap_const_lv4_0;
            else
                if (((ap_ST_st4_fsm_3 = ap_CS_fsm) and (ap_const_lv1_0 = localFull_load_load_fu_210_p1))) then 
                    priorityOut_V_preg <= tmp_1_fu_219_p1;
                end if; 
            end if;
        end if;
    end process;


    -- j_reg_146 assign process. --
    j_reg_146_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_ST_st7_fsm_6 = ap_CS_fsm) and not((localEmpty_load_load_fu_224_p1 = ap_const_lv1_0)))) then 
                j_reg_146 <= j_1_reg_289;
            elsif (((ap_ST_st1_fsm_0 = ap_CS_fsm) and not(ap_sig_bdd_50))) then 
                j_reg_146 <= ap_const_lv32_0;
            end if; 
        end if;
    end process;

    -- op2_assign_reg_169 assign process. --
    op2_assign_reg_169_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_ST_st7_fsm_6 = ap_CS_fsm) and (localEmpty_load_load_fu_224_p1 = ap_const_lv1_0))) then 
                op2_assign_reg_169 <= i_1_fu_227_p2;
            elsif ((ap_ST_st6_fsm_5 = ap_CS_fsm)) then 
                op2_assign_reg_169 <= ap_const_lv32_0;
            end if; 
        end if;
    end process;

    -- result_fu_70 assign process. --
    result_fu_70_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_ST_st7_fsm_6 = ap_CS_fsm) and (localEmpty_load_load_fu_224_p1 = ap_const_lv1_0))) then 
                result_fu_70 <= result_1_s_fu_249_p3;
            elsif (((ap_ST_st1_fsm_0 = ap_CS_fsm) and not(ap_sig_bdd_50))) then 
                result_fu_70 <= ap_const_lv32_0;
            end if; 
        end if;
    end process;

    -- val_assign_reg_158 assign process. --
    val_assign_reg_158_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_ST_st5_fsm_4 = ap_CS_fsm)) then 
                val_assign_reg_158 <= i_reg_297;
            elsif ((ap_ST_st3_fsm_2 = ap_CS_fsm)) then 
                val_assign_reg_158 <= ap_const_lv32_0;
            end if; 
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_ST_st4_fsm_3 = ap_CS_fsm)) then
                i_reg_297 <= i_fu_213_p2;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_ST_st2_fsm_1 = ap_CS_fsm)) then
                j_1_reg_289 <= j_1_fu_204_p2;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_ST_st6_fsm_5 = ap_CS_fsm) or ((ap_ST_st7_fsm_6 = ap_CS_fsm) and (localEmpty_load_load_fu_224_p1 = ap_const_lv1_0)))) then
                localEmpty_fu_78 <= grp_read_fu_133_p2;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_ST_st3_fsm_2 = ap_CS_fsm) or (ap_ST_st5_fsm_4 = ap_CS_fsm))) then
                localFull_fu_74 <= grp_read_fu_111_p2;
            end if;
        end if;
    end process;

    -- the next state (ap_NS_fsm) of the state machine. --
    ap_NS_fsm_assign_proc : process (ap_CS_fsm , ap_sig_bdd_50 , localEmpty_load_load_fu_224_p1 , tmp_fu_199_p2 , localFull_load_load_fu_210_p1)
    begin
        case ap_CS_fsm is
            when ap_ST_st1_fsm_0 => 
                if (not(ap_sig_bdd_50)) then
                    ap_NS_fsm <= ap_ST_st2_fsm_1;
                else
                    ap_NS_fsm <= ap_ST_st1_fsm_0;
                end if;
            when ap_ST_st2_fsm_1 => 
                if ((ap_const_lv1_0 = tmp_fu_199_p2)) then
                    ap_NS_fsm <= ap_ST_st1_fsm_0;
                else
                    ap_NS_fsm <= ap_ST_st3_fsm_2;
                end if;
            when ap_ST_st3_fsm_2 => 
                ap_NS_fsm <= ap_ST_st4_fsm_3;
            when ap_ST_st4_fsm_3 => 
                if (not((ap_const_lv1_0 = localFull_load_load_fu_210_p1))) then
                    ap_NS_fsm <= ap_ST_st6_fsm_5;
                else
                    ap_NS_fsm <= ap_ST_st5_fsm_4;
                end if;
            when ap_ST_st5_fsm_4 => 
                ap_NS_fsm <= ap_ST_st4_fsm_3;
            when ap_ST_st6_fsm_5 => 
                ap_NS_fsm <= ap_ST_st7_fsm_6;
            when ap_ST_st7_fsm_6 => 
                if (not((localEmpty_load_load_fu_224_p1 = ap_const_lv1_0))) then
                    ap_NS_fsm <= ap_ST_st2_fsm_1;
                else
                    ap_NS_fsm <= ap_ST_st7_fsm_6;
                end if;
            when others =>  
                ap_NS_fsm <= "XXX";
        end case;
    end process;

    -- ap_done assign process. --
    ap_done_assign_proc : process(ap_CS_fsm, tmp_fu_199_p2)
    begin
        if (((ap_ST_st2_fsm_1 = ap_CS_fsm) and (ap_const_lv1_0 = tmp_fu_199_p2))) then 
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
    ap_ready_assign_proc : process(ap_CS_fsm, tmp_fu_199_p2)
    begin
        if (((ap_ST_st2_fsm_1 = ap_CS_fsm) and (ap_const_lv1_0 = tmp_fu_199_p2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    ap_return <= result_fu_70;

    -- ap_sig_bdd_50 assign process. --
    ap_sig_bdd_50_assign_proc : process(ap_start, iterations_ap_vld_in_sig)
    begin
                ap_sig_bdd_50 <= ((iterations_ap_vld_in_sig = ap_const_logic_0) or (ap_start = ap_const_logic_0));
    end process;


    -- cmdOut_V assign process. --
    cmdOut_V_assign_proc : process(ap_CS_fsm, ap_sig_bdd_50, localEmpty_load_load_fu_224_p1, tmp_fu_199_p2, localFull_load_load_fu_210_p1, cmdOut_V_preg)
    begin
        if ((ap_ST_st6_fsm_5 = ap_CS_fsm)) then 
            cmdOut_V <= ap_const_lv2_2;
        elsif ((ap_ST_st3_fsm_2 = ap_CS_fsm)) then 
            cmdOut_V <= ap_const_lv2_1;
        elsif ((((ap_ST_st1_fsm_0 = ap_CS_fsm) and not(ap_sig_bdd_50)) or ((ap_ST_st7_fsm_6 = ap_CS_fsm) and not((localEmpty_load_load_fu_224_p1 = ap_const_lv1_0))) or ((ap_ST_st2_fsm_1 = ap_CS_fsm) and not((ap_const_lv1_0 = tmp_fu_199_p2))) or ((ap_ST_st4_fsm_3 = ap_CS_fsm) and not((ap_const_lv1_0 = localFull_load_load_fu_210_p1))))) then 
            cmdOut_V <= ap_const_lv2_0;
        else 
            cmdOut_V <= cmdOut_V_preg;
        end if; 
    end process;


    -- currentIteration assign process. --
    currentIteration_assign_proc : process(ap_CS_fsm, j_reg_146, tmp_fu_199_p2, currentIteration_preg)
    begin
        if (((ap_ST_st2_fsm_1 = ap_CS_fsm) and not((ap_const_lv1_0 = tmp_fu_199_p2)))) then 
            currentIteration <= j_reg_146;
        else 
            currentIteration <= currentIteration_preg;
        end if; 
    end process;

    finished <= ap_const_logic_1;

    -- finished_ap_vld assign process. --
    finished_ap_vld_assign_proc : process(ap_CS_fsm, tmp_fu_199_p2)
    begin
        if (((ap_ST_st2_fsm_1 = ap_CS_fsm) and (ap_const_lv1_0 = tmp_fu_199_p2))) then 
            finished_ap_vld <= ap_const_logic_1;
        else 
            finished_ap_vld <= ap_const_logic_0;
        end if; 
    end process;


    -- fullOut assign process. --
    fullOut_assign_proc : process(ap_CS_fsm, full, localFull_load_load_fu_210_p1, fullOut_preg)
    begin
        if (((ap_ST_st4_fsm_3 = ap_CS_fsm) and (ap_const_lv1_0 = localFull_load_load_fu_210_p1))) then 
            fullOut <= full;
        else 
            fullOut <= fullOut_preg;
        end if; 
    end process;

    grp_read_fu_111_p2 <= (0=>full, others=>'-');
    grp_read_fu_133_p2 <= (0=>empty, others=>'-');
    i_1_fu_227_p2 <= std_logic_vector(unsigned(op2_assign_reg_169) + unsigned(ap_const_lv32_1));
    i_fu_213_p2 <= std_logic_vector(unsigned(val_assign_reg_158) + unsigned(ap_const_lv32_1));

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

    j_1_fu_204_p2 <= std_logic_vector(unsigned(j_reg_146) + unsigned(ap_const_lv32_1));
    localEmpty_load_load_fu_224_p1 <= localEmpty_fu_78;
    localFull_load_load_fu_210_p1 <= localFull_fu_74;

    -- priorityOut_V assign process. --
    priorityOut_V_assign_proc : process(ap_CS_fsm, localFull_load_load_fu_210_p1, tmp_1_fu_219_p1, priorityOut_V_preg)
    begin
        if (((ap_ST_st4_fsm_3 = ap_CS_fsm) and (ap_const_lv1_0 = localFull_load_load_fu_210_p1))) then 
            priorityOut_V <= tmp_1_fu_219_p1;
        else 
            priorityOut_V <= priorityOut_V_preg;
        end if; 
    end process;

    result_1_fu_243_p2 <= std_logic_vector(unsigned(result_fu_70) + unsigned(ap_const_lv32_1));
    result_1_s_fu_249_p3 <= 
        result_fu_70 when (tmp_5_fu_237_p2(0) = '1') else 
        result_1_fu_243_p2;
    tmp_1_fu_219_p1 <= val_assign_reg_158(4 - 1 downto 0);
    tmp_4_fu_233_p1 <= std_logic_vector(resize(unsigned(priorityIn_V),32));
    tmp_5_fu_237_p2 <= "1" when (tmp_4_fu_233_p1 = op2_assign_reg_169) else "0";
    tmp_fu_199_p2 <= "1" when (signed(j_reg_146) < signed(iterations_in_sig)) else "0";
end behav;
