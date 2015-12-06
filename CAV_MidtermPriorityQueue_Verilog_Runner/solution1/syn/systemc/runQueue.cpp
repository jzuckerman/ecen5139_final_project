// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2014.1
// Copyright (C) 2014 Xilinx Inc. All rights reserved.
// 
// ===========================================================

#include "runQueue.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic runQueue::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic runQueue::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<4> runQueue::ap_ST_st1_fsm_0 = "0000";
const sc_lv<4> runQueue::ap_ST_st2_fsm_1 = "1";
const sc_lv<4> runQueue::ap_ST_st3_fsm_2 = "10";
const sc_lv<4> runQueue::ap_ST_st4_fsm_3 = "11";
const sc_lv<4> runQueue::ap_ST_st5_fsm_4 = "100";
const sc_lv<4> runQueue::ap_ST_st6_fsm_5 = "101";
const sc_lv<4> runQueue::ap_ST_st7_fsm_6 = "110";
const sc_lv<4> runQueue::ap_ST_st8_fsm_7 = "111";
const sc_lv<4> runQueue::ap_ST_st9_fsm_8 = "1000";
const sc_lv<4> runQueue::ap_ST_st10_fsm_9 = "1001";
const sc_lv<4> runQueue::ap_ST_st11_fsm_10 = "1010";
const sc_lv<4> runQueue::ap_ST_st12_fsm_11 = "1011";
const sc_lv<4> runQueue::ap_ST_st13_fsm_12 = "1100";
const sc_lv<4> runQueue::ap_ST_st14_fsm_13 = "1101";
const sc_lv<4> runQueue::ap_ST_st15_fsm_14 = "1110";
const sc_lv<4> runQueue::ap_ST_st16_fsm_15 = "1111";
const sc_lv<1> runQueue::ap_const_lv1_0 = "0";
const sc_lv<32> runQueue::ap_const_lv32_1 = "1";
const sc_lv<4> runQueue::ap_const_lv4_0 = "0000";
const sc_lv<32> runQueue::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<1> runQueue::ap_const_lv1_1 = "1";
const sc_lv<4> runQueue::ap_const_lv4_5 = "101";
const sc_lv<2> runQueue::ap_const_lv2_1 = "1";
const sc_lv<2> runQueue::ap_const_lv2_0 = "00";
const sc_lv<2> runQueue::ap_const_lv2_2 = "10";

runQueue::runQueue(sc_module_name name) : sc_module(name), mVcdFile(0) {
    random_priorities_U = new runQueue_random_priorities("random_priorities_U");
    random_priorities_U->clk(ap_clk);
    random_priorities_U->reset(ap_rst);
    random_priorities_U->address0(random_priorities_address0);
    random_priorities_U->ce0(random_priorities_ce0);
    random_priorities_U->q0(random_priorities_q0);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_CS_fsm );
    sensitive << ( grp_load_fu_285_p1 );
    sensitive << ( localEmpty_load_2_reg_479 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm );
    sensitive << ( grp_load_fu_285_p1 );
    sensitive << ( localEmpty_load_2_reg_479 );

    SC_METHOD(thread_ap_return);
    sensitive << ( ap_CS_fsm );
    sensitive << ( grp_load_fu_285_p1 );
    sensitive << ( localEmpty_load_2_reg_479 );
    sensitive << ( result_3_reg2mem_phi_fu_257_p4 );

    SC_METHOD(thread_ap_sig_bdd_195);
    sensitive << ( ap_CS_fsm );
    sensitive << ( localEmpty_load_2_reg_479 );

    SC_METHOD(thread_ap_sig_bdd_60);
    sensitive << ( ap_CS_fsm );
    sensitive << ( localFull_load_reg_410 );

    SC_METHOD(thread_ap_sig_bdd_75);
    sensitive << ( ap_CS_fsm );
    sensitive << ( localEmpty_load_reg_439 );

    SC_METHOD(thread_cmdOut_V);
    sensitive << ( ap_CS_fsm );
    sensitive << ( grp_load_fu_274_p1 );
    sensitive << ( localFull_load_reg_410 );
    sensitive << ( grp_load_fu_285_p1 );
    sensitive << ( localEmpty_load_reg_439 );
    sensitive << ( localFull_load_2_reg_457 );
    sensitive << ( localEmpty_load_2_reg_479 );
    sensitive << ( cmdOut_V_preg );

    SC_METHOD(thread_currentPriority_V);
    sensitive << ( ap_CS_fsm );
    sensitive << ( priorityIn_V );
    sensitive << ( localFull_load_reg_410 );
    sensitive << ( localEmpty_load_reg_439 );
    sensitive << ( localFull_load_2_reg_457 );
    sensitive << ( tmp_reg2mem_reg_172 );
    sensitive << ( tmp_6_reg2mem_reg_242 );
    sensitive << ( currentPriority_V_preg );

    SC_METHOD(thread_empty_read_read_fu_104_p2);
    sensitive << ( ap_CS_fsm );
    sensitive << ( empty );

    SC_METHOD(thread_fullOut);
    sensitive << ( ap_CS_fsm );
    sensitive << ( full_assign_fu_82 );
    sensitive << ( fullOut_preg );

    SC_METHOD(thread_full_read_read_fu_98_p2);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( full );

    SC_METHOD(thread_grp_load_fu_274_p1);
    sensitive << ( ap_CS_fsm );
    sensitive << ( localFull_load_reg_410 );
    sensitive << ( localFull_load_2_reg_457 );
    sensitive << ( localFull_fu_86 );

    SC_METHOD(thread_grp_load_fu_285_p1);
    sensitive << ( ap_CS_fsm );
    sensitive << ( localEmpty_load_reg_439 );
    sensitive << ( localEmpty_load_2_reg_479 );
    sensitive << ( localEmpty_fu_90 );

    SC_METHOD(thread_i_1_fu_338_p2);
    sensitive << ( i_3_reg2mem_reg_231 );

    SC_METHOD(thread_i_fu_302_p2);
    sensitive << ( i_reg2mem_reg_161 );

    SC_METHOD(thread_i_s_fu_332_p2);
    sensitive << ( i_1_reg2mem_reg_206 );

    SC_METHOD(thread_last_1_fu_298_p1);
    sensitive << ( priorityIn_V );

    SC_METHOD(thread_p_result_s_fu_364_p2);
    sensitive << ( result_1_reg2mem_1_reg_219 );
    sensitive << ( rev_fu_358_p2 );

    SC_METHOD(thread_priorityOut_V);
    sensitive << ( ap_CS_fsm );
    sensitive << ( grp_load_fu_274_p1 );
    sensitive << ( localFull_load_reg_410 );
    sensitive << ( tmp_fu_308_p1 );
    sensitive << ( tmp_1_fu_349_p1 );
    sensitive << ( priorityOut_V_preg );

    SC_METHOD(thread_random_priorities_address0);
    sensitive << ( ap_CS_fsm );
    sensitive << ( tmp_s_fu_344_p1 );

    SC_METHOD(thread_random_priorities_ce0);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_result_1_s_fu_326_p2);
    sensitive << ( result_1_reg2mem_reg_195 );
    sensitive << ( tmp_3_fu_321_p2 );

    SC_METHOD(thread_result_3_reg2mem_phi_fu_257_p4);
    sensitive << ( ap_CS_fsm );
    sensitive << ( grp_load_fu_285_p1 );
    sensitive << ( localEmpty_load_2_reg_479 );
    sensitive << ( p_result_s_reg_483 );
    sensitive << ( result_3_reg2mem_reg_254 );

    SC_METHOD(thread_rev_fu_358_p2);
    sensitive << ( ult_fu_354_p2 );

    SC_METHOD(thread_tmp_1_fu_349_p1);
    sensitive << ( random_priorities_q0 );

    SC_METHOD(thread_tmp_3_fu_321_p2);
    sensitive << ( ap_CS_fsm );
    sensitive << ( last_1_reg_403 );
    sensitive << ( localEmpty_load_reg_439 );
    sensitive << ( op2_assign_reg2mem_reg_184 );

    SC_METHOD(thread_tmp_fu_308_p1);
    sensitive << ( i_reg2mem_reg_161 );

    SC_METHOD(thread_tmp_s_fu_344_p1);
    sensitive << ( i_3_reg2mem_reg_231 );

    SC_METHOD(thread_ult_fu_354_p2);
    sensitive << ( ap_CS_fsm );
    sensitive << ( last_1_reg_403 );
    sensitive << ( last_load_reg_434 );
    sensitive << ( grp_load_fu_285_p1 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( grp_load_fu_274_p1 );
    sensitive << ( localFull_load_reg_410 );
    sensitive << ( grp_load_fu_285_p1 );
    sensitive << ( localEmpty_load_reg_439 );
    sensitive << ( localFull_load_2_reg_457 );
    sensitive << ( localEmpty_load_2_reg_479 );

    SC_THREAD(thread_hdltv_gen);
    sensitive << ( ap_clk.pos() );

    ap_CS_fsm = "0000";
    cmdOut_V_preg = "00";
    priorityOut_V_preg = "0000";
    fullOut_preg = SC_LOGIC_0;
    currentPriority_V_preg = "0000";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "runQueue_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, priorityOut_V, "(port)priorityOut_V");
    sc_trace(mVcdFile, priorityIn_V, "(port)priorityIn_V");
    sc_trace(mVcdFile, cmdOut_V, "(port)cmdOut_V");
    sc_trace(mVcdFile, empty, "(port)empty");
    sc_trace(mVcdFile, full, "(port)full");
    sc_trace(mVcdFile, currentPriority_V, "(port)currentPriority_V");
    sc_trace(mVcdFile, fullOut, "(port)fullOut");
    sc_trace(mVcdFile, ap_return, "(port)ap_return");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, random_priorities_address0, "random_priorities_address0");
    sc_trace(mVcdFile, random_priorities_ce0, "random_priorities_ce0");
    sc_trace(mVcdFile, random_priorities_q0, "random_priorities_q0");
    sc_trace(mVcdFile, last_1_fu_298_p1, "last_1_fu_298_p1");
    sc_trace(mVcdFile, last_1_reg_403, "last_1_reg_403");
    sc_trace(mVcdFile, grp_load_fu_274_p1, "grp_load_fu_274_p1");
    sc_trace(mVcdFile, localFull_load_reg_410, "localFull_load_reg_410");
    sc_trace(mVcdFile, i_fu_302_p2, "i_fu_302_p2");
    sc_trace(mVcdFile, tmp_fu_308_p1, "tmp_fu_308_p1");
    sc_trace(mVcdFile, last_load_reg_434, "last_load_reg_434");
    sc_trace(mVcdFile, grp_load_fu_285_p1, "grp_load_fu_285_p1");
    sc_trace(mVcdFile, localEmpty_load_reg_439, "localEmpty_load_reg_439");
    sc_trace(mVcdFile, result_1_s_fu_326_p2, "result_1_s_fu_326_p2");
    sc_trace(mVcdFile, i_s_fu_332_p2, "i_s_fu_332_p2");
    sc_trace(mVcdFile, localFull_load_2_reg_457, "localFull_load_2_reg_457");
    sc_trace(mVcdFile, i_1_fu_338_p2, "i_1_fu_338_p2");
    sc_trace(mVcdFile, i_1_reg_464, "i_1_reg_464");
    sc_trace(mVcdFile, tmp_1_fu_349_p1, "tmp_1_fu_349_p1");
    sc_trace(mVcdFile, localEmpty_load_2_reg_479, "localEmpty_load_2_reg_479");
    sc_trace(mVcdFile, p_result_s_fu_364_p2, "p_result_s_fu_364_p2");
    sc_trace(mVcdFile, p_result_s_reg_483, "p_result_s_reg_483");
    sc_trace(mVcdFile, i_reg2mem_reg_161, "i_reg2mem_reg_161");
    sc_trace(mVcdFile, tmp_reg2mem_reg_172, "tmp_reg2mem_reg_172");
    sc_trace(mVcdFile, op2_assign_reg2mem_reg_184, "op2_assign_reg2mem_reg_184");
    sc_trace(mVcdFile, result_1_reg2mem_reg_195, "result_1_reg2mem_reg_195");
    sc_trace(mVcdFile, i_1_reg2mem_reg_206, "i_1_reg2mem_reg_206");
    sc_trace(mVcdFile, result_1_reg2mem_1_reg_219, "result_1_reg2mem_1_reg_219");
    sc_trace(mVcdFile, i_3_reg2mem_reg_231, "i_3_reg2mem_reg_231");
    sc_trace(mVcdFile, tmp_6_reg2mem_reg_242, "tmp_6_reg2mem_reg_242");
    sc_trace(mVcdFile, result_3_reg2mem_phi_fu_257_p4, "result_3_reg2mem_phi_fu_257_p4");
    sc_trace(mVcdFile, result_3_reg2mem_reg_254, "result_3_reg2mem_reg_254");
    sc_trace(mVcdFile, tmp_s_fu_344_p1, "tmp_s_fu_344_p1");
    sc_trace(mVcdFile, empty_assign_fu_78, "empty_assign_fu_78");
    sc_trace(mVcdFile, empty_read_read_fu_104_p2, "empty_read_read_fu_104_p2");
    sc_trace(mVcdFile, full_assign_fu_82, "full_assign_fu_82");
    sc_trace(mVcdFile, full_read_read_fu_98_p2, "full_read_read_fu_98_p2");
    sc_trace(mVcdFile, localFull_fu_86, "localFull_fu_86");
    sc_trace(mVcdFile, localEmpty_fu_90, "localEmpty_fu_90");
    sc_trace(mVcdFile, last_fu_94, "last_fu_94");
    sc_trace(mVcdFile, cmdOut_V_preg, "cmdOut_V_preg");
    sc_trace(mVcdFile, priorityOut_V_preg, "priorityOut_V_preg");
    sc_trace(mVcdFile, fullOut_preg, "fullOut_preg");
    sc_trace(mVcdFile, currentPriority_V_preg, "currentPriority_V_preg");
    sc_trace(mVcdFile, tmp_3_fu_321_p2, "tmp_3_fu_321_p2");
    sc_trace(mVcdFile, ult_fu_354_p2, "ult_fu_354_p2");
    sc_trace(mVcdFile, rev_fu_358_p2, "rev_fu_358_p2");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
    sc_trace(mVcdFile, ap_sig_bdd_75, "ap_sig_bdd_75");
    sc_trace(mVcdFile, ap_sig_bdd_60, "ap_sig_bdd_60");
    sc_trace(mVcdFile, ap_sig_bdd_195, "ap_sig_bdd_195");
#endif

    }
    mHdltvinHandle.open("runQueue.hdltvin.dat");
    mHdltvoutHandle.open("runQueue.hdltvout.dat");
}

runQueue::~runQueue() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    mHdltvinHandle << "] " << endl;
    mHdltvoutHandle << "] " << endl;
    mHdltvinHandle.close();
    mHdltvoutHandle.close();
    delete random_priorities_U;
}

void runQueue::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_st1_fsm_0;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        cmdOut_V_preg = ap_const_lv2_0;
    } else {
        if (((esl_seteq<1,4,4>(ap_ST_st14_fsm_13, ap_CS_fsm.read()) && 
              esl_seteq<1,1,1>(ap_const_lv1_0, grp_load_fu_285_p1.read())) || 
             (esl_seteq<1,4,4>(ap_ST_st7_fsm_6, ap_CS_fsm.read()) && 
              esl_seteq<1,1,1>(ap_const_lv1_0, grp_load_fu_285_p1.read())) || 
             (esl_seteq<1,4,4>(ap_ST_st9_fsm_8, ap_CS_fsm.read()) && 
              esl_seteq<1,1,1>(ap_const_lv1_0, localEmpty_load_reg_439.read()) && 
              esl_seteq<1,1,1>(ap_const_lv1_0, grp_load_fu_285_p1.read())) || 
             (esl_seteq<1,1,1>(ap_const_lv1_0, grp_load_fu_285_p1.read()) && 
              esl_seteq<1,4,4>(ap_ST_st16_fsm_15, ap_CS_fsm.read()) && 
              esl_seteq<1,1,1>(ap_const_lv1_0, localEmpty_load_2_reg_479.read())))) {
            cmdOut_V_preg = ap_const_lv2_2;
        } else if (((esl_seteq<1,4,4>(ap_ST_st6_fsm_5, ap_CS_fsm.read()) && 
                     (!esl_seteq<1,1,1>(localFull_load_reg_410.read(), ap_const_lv1_0) || 
                      !esl_seteq<1,1,1>(grp_load_fu_274_p1.read(), ap_const_lv1_0))) || 
                    (esl_seteq<1,4,4>(ap_ST_st12_fsm_11, ap_CS_fsm.read()) && 
                     (!esl_seteq<1,1,1>(grp_load_fu_274_p1.read(), ap_const_lv1_0) || 
                      !esl_seteq<1,1,1>(ap_const_lv1_0, localFull_load_2_reg_457.read()))) || 
                    (esl_seteq<1,4,4>(ap_ST_st9_fsm_8, ap_CS_fsm.read()) && 
                     (!esl_seteq<1,1,1>(ap_const_lv1_0, grp_load_fu_285_p1.read()) || 
                      !esl_seteq<1,1,1>(ap_const_lv1_0, localEmpty_load_reg_439.read()))) || 
                    (esl_seteq<1,4,4>(ap_ST_st16_fsm_15, ap_CS_fsm.read()) && 
                     (!esl_seteq<1,1,1>(ap_const_lv1_0, grp_load_fu_285_p1.read()) || 
                      !esl_seteq<1,1,1>(ap_const_lv1_0, localEmpty_load_2_reg_479.read()))))) {
            cmdOut_V_preg = ap_const_lv2_0;
        } else if (((esl_seteq<1,4,4>(ap_ST_st6_fsm_5, ap_CS_fsm.read()) && 
                     esl_seteq<1,1,1>(localFull_load_reg_410.read(), ap_const_lv1_0) && 
                     esl_seteq<1,1,1>(grp_load_fu_274_p1.read(), ap_const_lv1_0)) || 
                    esl_seteq<1,4,4>(ap_ST_st13_fsm_12, ap_CS_fsm.read()) || 
                    (esl_seteq<1,4,4>(ap_ST_st3_fsm_2, ap_CS_fsm.read()) && 
                     esl_seteq<1,1,1>(grp_load_fu_274_p1.read(), ap_const_lv1_0)) || 
                    (esl_seteq<1,1,1>(grp_load_fu_274_p1.read(), ap_const_lv1_0) && 
                     esl_seteq<1,4,4>(ap_ST_st10_fsm_9, ap_CS_fsm.read())))) {
            cmdOut_V_preg = ap_const_lv2_1;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        currentPriority_V_preg = ap_const_lv4_0;
    } else {
        if ((esl_seteq<1,4,4>(ap_ST_st12_fsm_11, ap_CS_fsm.read()) && 
             esl_seteq<1,1,1>(ap_const_lv1_0, localFull_load_2_reg_457.read()))) {
            currentPriority_V_preg = tmp_6_reg2mem_reg_242.read();
        } else if (((esl_seteq<1,4,4>(ap_ST_st9_fsm_8, ap_CS_fsm.read()) && 
                     esl_seteq<1,1,1>(ap_const_lv1_0, localEmpty_load_reg_439.read())) || 
                    esl_seteq<1,4,4>(ap_ST_st15_fsm_14, ap_CS_fsm.read()))) {
            currentPriority_V_preg = priorityIn_V.read();
        } else if ((esl_seteq<1,4,4>(ap_ST_st6_fsm_5, ap_CS_fsm.read()) && 
                    esl_seteq<1,1,1>(localFull_load_reg_410.read(), ap_const_lv1_0))) {
            currentPriority_V_preg = tmp_reg2mem_reg_172.read();
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        fullOut_preg = ap_const_logic_0;
    } else {
        if (esl_seteq<1,4,4>(ap_ST_st4_fsm_3, ap_CS_fsm.read())) {
            fullOut_preg =  (sc_logic) (full_assign_fu_82.read()[0]);
        }
    }
    if (esl_seteq<1,1,1>(ap_const_lv1_0, grp_load_fu_285_p1.read())) {
        if (ap_sig_bdd_75.read()) {
            i_1_reg2mem_reg_206 = i_s_fu_332_p2.read();
        } else if (esl_seteq<1,4,4>(ap_ST_st7_fsm_6, ap_CS_fsm.read())) {
            i_1_reg2mem_reg_206 = ap_const_lv32_1;
        }
    }
    if (esl_seteq<1,4,4>(ap_ST_st13_fsm_12, ap_CS_fsm.read())) {
        i_3_reg2mem_reg_231 = i_1_reg_464.read();
    } else if ((esl_seteq<1,1,1>(grp_load_fu_274_p1.read(), ap_const_lv1_0) && 
                esl_seteq<1,4,4>(ap_ST_st10_fsm_9, ap_CS_fsm.read()))) {
        i_3_reg2mem_reg_231 = ap_const_lv32_1;
    }
    if (esl_seteq<1,1,1>(grp_load_fu_274_p1.read(), ap_const_lv1_0)) {
        if (esl_seteq<1,4,4>(ap_ST_st3_fsm_2, ap_CS_fsm.read())) {
            i_reg2mem_reg_161 = ap_const_lv32_1;
        } else if (ap_sig_bdd_60.read()) {
            i_reg2mem_reg_161 = i_fu_302_p2.read();
        }
    }
    if ((!esl_seteq<1,1,1>(ap_const_lv1_0, grp_load_fu_285_p1.read()) && 
         esl_seteq<1,4,4>(ap_ST_st16_fsm_15, ap_CS_fsm.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, localEmpty_load_2_reg_479.read()))) {
        last_fu_94 = last_1_reg_403.read();
    } else if ((esl_seteq<1,4,4>(ap_ST_st6_fsm_5, ap_CS_fsm.read()) && 
                (!esl_seteq<1,1,1>(localFull_load_reg_410.read(), ap_const_lv1_0) || 
                 !esl_seteq<1,1,1>(grp_load_fu_274_p1.read(), ap_const_lv1_0)))) {
        last_fu_94 = ap_const_lv32_0;
    }
    if (esl_seteq<1,1,1>(ap_const_lv1_0, grp_load_fu_285_p1.read())) {
        if (ap_sig_bdd_75.read()) {
            op2_assign_reg2mem_reg_184 = i_1_reg2mem_reg_206.read();
        } else if (esl_seteq<1,4,4>(ap_ST_st7_fsm_6, ap_CS_fsm.read())) {
            op2_assign_reg2mem_reg_184 = ap_const_lv32_0;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        priorityOut_V_preg = ap_const_lv4_0;
    } else {
        if (esl_seteq<1,4,4>(ap_ST_st13_fsm_12, ap_CS_fsm.read())) {
            priorityOut_V_preg = tmp_1_fu_349_p1.read();
        } else if ((esl_seteq<1,1,1>(grp_load_fu_274_p1.read(), ap_const_lv1_0) && 
                    esl_seteq<1,4,4>(ap_ST_st10_fsm_9, ap_CS_fsm.read()))) {
            priorityOut_V_preg = ap_const_lv4_5;
        } else if ((esl_seteq<1,4,4>(ap_ST_st6_fsm_5, ap_CS_fsm.read()) && 
                    esl_seteq<1,1,1>(localFull_load_reg_410.read(), ap_const_lv1_0) && 
                    esl_seteq<1,1,1>(grp_load_fu_274_p1.read(), ap_const_lv1_0))) {
            priorityOut_V_preg = tmp_fu_308_p1.read();
        } else if ((esl_seteq<1,4,4>(ap_ST_st3_fsm_2, ap_CS_fsm.read()) && 
                    esl_seteq<1,1,1>(grp_load_fu_274_p1.read(), ap_const_lv1_0))) {
            priorityOut_V_preg = ap_const_lv4_0;
        }
    }
    if (!esl_seteq<1,1,1>(ap_const_lv1_0, grp_load_fu_285_p1.read())) {
        if (ap_sig_bdd_75.read()) {
            result_1_reg2mem_1_reg_219 = result_1_s_fu_326_p2.read();
        } else if (esl_seteq<1,4,4>(ap_ST_st7_fsm_6, ap_CS_fsm.read())) {
            result_1_reg2mem_1_reg_219 = ap_const_lv1_1;
        }
    }
    if (esl_seteq<1,1,1>(ap_const_lv1_0, grp_load_fu_285_p1.read())) {
        if (ap_sig_bdd_75.read()) {
            result_1_reg2mem_reg_195 = result_1_s_fu_326_p2.read();
        } else if (esl_seteq<1,4,4>(ap_ST_st7_fsm_6, ap_CS_fsm.read())) {
            result_1_reg2mem_reg_195 = ap_const_lv1_1;
        }
    }
    if (!esl_seteq<1,1,1>(ap_const_lv1_0, grp_load_fu_285_p1.read())) {
        if (ap_sig_bdd_195.read()) {
            result_3_reg2mem_reg_254 = p_result_s_reg_483.read();
        } else if (esl_seteq<1,4,4>(ap_ST_st14_fsm_13, ap_CS_fsm.read())) {
            result_3_reg2mem_reg_254 = result_1_reg2mem_1_reg_219.read();
        }
    }
    if (esl_seteq<1,4,4>(ap_ST_st13_fsm_12, ap_CS_fsm.read())) {
        tmp_6_reg2mem_reg_242 = tmp_1_fu_349_p1.read();
    } else if ((esl_seteq<1,1,1>(grp_load_fu_274_p1.read(), ap_const_lv1_0) && 
                esl_seteq<1,4,4>(ap_ST_st10_fsm_9, ap_CS_fsm.read()))) {
        tmp_6_reg2mem_reg_242 = ap_const_lv4_5;
    }
    if (esl_seteq<1,1,1>(grp_load_fu_274_p1.read(), ap_const_lv1_0)) {
        if (esl_seteq<1,4,4>(ap_ST_st3_fsm_2, ap_CS_fsm.read())) {
            tmp_reg2mem_reg_172 = ap_const_lv4_0;
        } else if (ap_sig_bdd_60.read()) {
            tmp_reg2mem_reg_172 = tmp_fu_308_p1.read();
        }
    }
    if (esl_seteq<1,4,4>(ap_ST_st3_fsm_2, ap_CS_fsm.read())) {
        empty_assign_fu_78 = empty_read_read_fu_104_p2.read();
        last_1_reg_403 = last_1_fu_298_p1.read();
        localFull_load_reg_410 = localFull_fu_86.read();
    }
    if ((esl_seteq<1,4,4>(ap_ST_st1_fsm_0, ap_CS_fsm.read()) && !esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0))) {
        full_assign_fu_82 = full_read_read_fu_98_p2.read();
    }
    if ((esl_seteq<1,4,4>(ap_ST_st12_fsm_11, ap_CS_fsm.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, localFull_load_2_reg_457.read()))) {
        i_1_reg_464 = i_1_fu_338_p2.read();
    }
    if (esl_seteq<1,4,4>(ap_ST_st7_fsm_6, ap_CS_fsm.read())) {
        last_load_reg_434 = last_fu_94.read();
        localEmpty_load_reg_439 = localEmpty_fu_90.read();
    }
    if (((esl_seteq<1,4,4>(ap_ST_st6_fsm_5, ap_CS_fsm.read()) && 
  (!esl_seteq<1,1,1>(localFull_load_reg_410.read(), ap_const_lv1_0) || 
   !esl_seteq<1,1,1>(grp_load_fu_274_p1.read(), ap_const_lv1_0))) || esl_seteq<1,4,4>(ap_ST_st8_fsm_7, ap_CS_fsm.read()) || (esl_seteq<1,4,4>(ap_ST_st12_fsm_11, ap_CS_fsm.read()) && 
  (!esl_seteq<1,1,1>(grp_load_fu_274_p1.read(), ap_const_lv1_0) || 
   !esl_seteq<1,1,1>(ap_const_lv1_0, localFull_load_2_reg_457.read()))) || esl_seteq<1,4,4>(ap_ST_st15_fsm_14, ap_CS_fsm.read()))) {
        localEmpty_fu_90 = empty_assign_fu_78.read();
    }
    if (esl_seteq<1,4,4>(ap_ST_st14_fsm_13, ap_CS_fsm.read())) {
        localEmpty_load_2_reg_479 = localEmpty_fu_90.read();
    }
    if ((esl_seteq<1,4,4>(ap_ST_st2_fsm_1, ap_CS_fsm.read()) || esl_seteq<1,4,4>(ap_ST_st5_fsm_4, ap_CS_fsm.read()) || (esl_seteq<1,4,4>(ap_ST_st9_fsm_8, ap_CS_fsm.read()) && 
  (!esl_seteq<1,1,1>(ap_const_lv1_0, grp_load_fu_285_p1.read()) || 
   !esl_seteq<1,1,1>(ap_const_lv1_0, localEmpty_load_reg_439.read()))) || esl_seteq<1,4,4>(ap_ST_st11_fsm_10, ap_CS_fsm.read()))) {
        localFull_fu_86 = full_assign_fu_82.read();
    }
    if (esl_seteq<1,4,4>(ap_ST_st10_fsm_9, ap_CS_fsm.read())) {
        localFull_load_2_reg_457 = localFull_fu_86.read();
    }
    if ((esl_seteq<1,4,4>(ap_ST_st14_fsm_13, ap_CS_fsm.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, grp_load_fu_285_p1.read()))) {
        p_result_s_reg_483 = p_result_s_fu_364_p2.read();
    }
}

void runQueue::thread_ap_done() {
    if ((esl_seteq<1,4,4>(ap_ST_st16_fsm_15, ap_CS_fsm.read()) && 
         (!esl_seteq<1,1,1>(ap_const_lv1_0, grp_load_fu_285_p1.read()) || 
          !esl_seteq<1,1,1>(ap_const_lv1_0, localEmpty_load_2_reg_479.read())))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void runQueue::thread_ap_idle() {
    if ((!esl_seteq<1,1,1>(ap_const_logic_1, ap_start.read()) && 
         esl_seteq<1,4,4>(ap_ST_st1_fsm_0, ap_CS_fsm.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void runQueue::thread_ap_ready() {
    if ((esl_seteq<1,4,4>(ap_ST_st16_fsm_15, ap_CS_fsm.read()) && 
         (!esl_seteq<1,1,1>(ap_const_lv1_0, grp_load_fu_285_p1.read()) || 
          !esl_seteq<1,1,1>(ap_const_lv1_0, localEmpty_load_2_reg_479.read())))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void runQueue::thread_ap_return() {
    ap_return = result_3_reg2mem_phi_fu_257_p4.read();
}

void runQueue::thread_ap_sig_bdd_195() {
    ap_sig_bdd_195 = (esl_seteq<1,4,4>(ap_ST_st16_fsm_15, ap_CS_fsm.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, localEmpty_load_2_reg_479.read()));
}

void runQueue::thread_ap_sig_bdd_60() {
    ap_sig_bdd_60 = (esl_seteq<1,4,4>(ap_ST_st6_fsm_5, ap_CS_fsm.read()) && esl_seteq<1,1,1>(localFull_load_reg_410.read(), ap_const_lv1_0));
}

void runQueue::thread_ap_sig_bdd_75() {
    ap_sig_bdd_75 = (esl_seteq<1,4,4>(ap_ST_st9_fsm_8, ap_CS_fsm.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, localEmpty_load_reg_439.read()));
}

void runQueue::thread_cmdOut_V() {
    if (((esl_seteq<1,4,4>(ap_ST_st14_fsm_13, ap_CS_fsm.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, grp_load_fu_285_p1.read())) || 
         (esl_seteq<1,4,4>(ap_ST_st7_fsm_6, ap_CS_fsm.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, grp_load_fu_285_p1.read())) || 
         (esl_seteq<1,4,4>(ap_ST_st9_fsm_8, ap_CS_fsm.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, localEmpty_load_reg_439.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, grp_load_fu_285_p1.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_0, grp_load_fu_285_p1.read()) && 
          esl_seteq<1,4,4>(ap_ST_st16_fsm_15, ap_CS_fsm.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, localEmpty_load_2_reg_479.read())))) {
        cmdOut_V = ap_const_lv2_2;
    } else if (((esl_seteq<1,4,4>(ap_ST_st6_fsm_5, ap_CS_fsm.read()) && 
                 (!esl_seteq<1,1,1>(localFull_load_reg_410.read(), ap_const_lv1_0) || 
                  !esl_seteq<1,1,1>(grp_load_fu_274_p1.read(), ap_const_lv1_0))) || 
                (esl_seteq<1,4,4>(ap_ST_st12_fsm_11, ap_CS_fsm.read()) && 
                 (!esl_seteq<1,1,1>(grp_load_fu_274_p1.read(), ap_const_lv1_0) || 
                  !esl_seteq<1,1,1>(ap_const_lv1_0, localFull_load_2_reg_457.read()))) || 
                (esl_seteq<1,4,4>(ap_ST_st9_fsm_8, ap_CS_fsm.read()) && 
                 (!esl_seteq<1,1,1>(ap_const_lv1_0, grp_load_fu_285_p1.read()) || 
                  !esl_seteq<1,1,1>(ap_const_lv1_0, localEmpty_load_reg_439.read()))) || 
                (esl_seteq<1,4,4>(ap_ST_st16_fsm_15, ap_CS_fsm.read()) && 
                 (!esl_seteq<1,1,1>(ap_const_lv1_0, grp_load_fu_285_p1.read()) || 
                  !esl_seteq<1,1,1>(ap_const_lv1_0, localEmpty_load_2_reg_479.read()))))) {
        cmdOut_V = ap_const_lv2_0;
    } else if (((esl_seteq<1,4,4>(ap_ST_st6_fsm_5, ap_CS_fsm.read()) && 
                 esl_seteq<1,1,1>(localFull_load_reg_410.read(), ap_const_lv1_0) && 
                 esl_seteq<1,1,1>(grp_load_fu_274_p1.read(), ap_const_lv1_0)) || 
                esl_seteq<1,4,4>(ap_ST_st13_fsm_12, ap_CS_fsm.read()) || 
                (esl_seteq<1,4,4>(ap_ST_st3_fsm_2, ap_CS_fsm.read()) && 
                 esl_seteq<1,1,1>(grp_load_fu_274_p1.read(), ap_const_lv1_0)) || 
                (esl_seteq<1,1,1>(grp_load_fu_274_p1.read(), ap_const_lv1_0) && 
                 esl_seteq<1,4,4>(ap_ST_st10_fsm_9, ap_CS_fsm.read())))) {
        cmdOut_V = ap_const_lv2_1;
    } else {
        cmdOut_V = cmdOut_V_preg.read();
    }
}

void runQueue::thread_currentPriority_V() {
    if ((esl_seteq<1,4,4>(ap_ST_st12_fsm_11, ap_CS_fsm.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, localFull_load_2_reg_457.read()))) {
        currentPriority_V = tmp_6_reg2mem_reg_242.read();
    } else if (((esl_seteq<1,4,4>(ap_ST_st9_fsm_8, ap_CS_fsm.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, localEmpty_load_reg_439.read())) || 
                esl_seteq<1,4,4>(ap_ST_st15_fsm_14, ap_CS_fsm.read()))) {
        currentPriority_V = priorityIn_V.read();
    } else if ((esl_seteq<1,4,4>(ap_ST_st6_fsm_5, ap_CS_fsm.read()) && 
                esl_seteq<1,1,1>(localFull_load_reg_410.read(), ap_const_lv1_0))) {
        currentPriority_V = tmp_reg2mem_reg_172.read();
    } else {
        currentPriority_V = currentPriority_V_preg.read();
    }
}

void runQueue::thread_empty_read_read_fu_104_p2() {
    empty_read_read_fu_104_p2 =  (sc_lv<1>) (empty.read());
}

void runQueue::thread_fullOut() {
    if (esl_seteq<1,4,4>(ap_ST_st4_fsm_3, ap_CS_fsm.read())) {
        fullOut =  (sc_logic) (full_assign_fu_82.read()[0]);
    } else {
        fullOut = fullOut_preg.read();
    }
}

void runQueue::thread_full_read_read_fu_98_p2() {
    full_read_read_fu_98_p2 =  (sc_lv<1>) (full.read());
}

void runQueue::thread_grp_load_fu_274_p1() {
    grp_load_fu_274_p1 = localFull_fu_86.read();
}

void runQueue::thread_grp_load_fu_285_p1() {
    grp_load_fu_285_p1 = localEmpty_fu_90.read();
}

void runQueue::thread_i_1_fu_338_p2() {
    i_1_fu_338_p2 = (!i_3_reg2mem_reg_231.read().is_01() || !ap_const_lv32_1.is_01())? sc_lv<32>(): (sc_bigint<32>(i_3_reg2mem_reg_231.read()) + sc_biguint<32>(ap_const_lv32_1));
}

void runQueue::thread_i_fu_302_p2() {
    i_fu_302_p2 = (!i_reg2mem_reg_161.read().is_01() || !ap_const_lv32_1.is_01())? sc_lv<32>(): (sc_bigint<32>(i_reg2mem_reg_161.read()) + sc_biguint<32>(ap_const_lv32_1));
}

void runQueue::thread_i_s_fu_332_p2() {
    i_s_fu_332_p2 = (!i_1_reg2mem_reg_206.read().is_01() || !ap_const_lv32_1.is_01())? sc_lv<32>(): (sc_bigint<32>(i_1_reg2mem_reg_206.read()) + sc_biguint<32>(ap_const_lv32_1));
}

void runQueue::thread_last_1_fu_298_p1() {
    last_1_fu_298_p1 = esl_zext<32,4>(priorityIn_V.read());
}

void runQueue::thread_p_result_s_fu_364_p2() {
    p_result_s_fu_364_p2 = (rev_fu_358_p2.read() & result_1_reg2mem_1_reg_219.read());
}

void runQueue::thread_priorityOut_V() {
    if (esl_seteq<1,4,4>(ap_ST_st13_fsm_12, ap_CS_fsm.read())) {
        priorityOut_V = tmp_1_fu_349_p1.read();
    } else if ((esl_seteq<1,1,1>(grp_load_fu_274_p1.read(), ap_const_lv1_0) && 
                esl_seteq<1,4,4>(ap_ST_st10_fsm_9, ap_CS_fsm.read()))) {
        priorityOut_V = ap_const_lv4_5;
    } else if ((esl_seteq<1,4,4>(ap_ST_st6_fsm_5, ap_CS_fsm.read()) && 
                esl_seteq<1,1,1>(localFull_load_reg_410.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(grp_load_fu_274_p1.read(), ap_const_lv1_0))) {
        priorityOut_V = tmp_fu_308_p1.read();
    } else if ((esl_seteq<1,4,4>(ap_ST_st3_fsm_2, ap_CS_fsm.read()) && 
                esl_seteq<1,1,1>(grp_load_fu_274_p1.read(), ap_const_lv1_0))) {
        priorityOut_V = ap_const_lv4_0;
    } else {
        priorityOut_V = priorityOut_V_preg.read();
    }
}

void runQueue::thread_random_priorities_address0() {
    random_priorities_address0 =  (sc_lv<8>) (tmp_s_fu_344_p1.read());
}

void runQueue::thread_random_priorities_ce0() {
    if (esl_seteq<1,4,4>(ap_ST_st12_fsm_11, ap_CS_fsm.read())) {
        random_priorities_ce0 = ap_const_logic_1;
    } else {
        random_priorities_ce0 = ap_const_logic_0;
    }
}

void runQueue::thread_result_1_s_fu_326_p2() {
    result_1_s_fu_326_p2 = (tmp_3_fu_321_p2.read() & result_1_reg2mem_reg_195.read());
}

void runQueue::thread_result_3_reg2mem_phi_fu_257_p4() {
    if ((!esl_seteq<1,1,1>(ap_const_lv1_0, grp_load_fu_285_p1.read()) && 
         esl_seteq<1,4,4>(ap_ST_st16_fsm_15, ap_CS_fsm.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, localEmpty_load_2_reg_479.read()))) {
        result_3_reg2mem_phi_fu_257_p4 = p_result_s_reg_483.read();
    } else {
        result_3_reg2mem_phi_fu_257_p4 = result_3_reg2mem_reg_254.read();
    }
}

void runQueue::thread_rev_fu_358_p2() {
    rev_fu_358_p2 = (ult_fu_354_p2.read() ^ ap_const_lv1_1);
}

void runQueue::thread_tmp_1_fu_349_p1() {
    tmp_1_fu_349_p1 = random_priorities_q0.read().range(4-1, 0);
}

void runQueue::thread_tmp_3_fu_321_p2() {
    tmp_3_fu_321_p2 = (!last_1_reg_403.read().is_01() || !op2_assign_reg2mem_reg_184.read().is_01())? sc_lv<1>(): sc_lv<1>(last_1_reg_403.read() == op2_assign_reg2mem_reg_184.read());
}

void runQueue::thread_tmp_fu_308_p1() {
    tmp_fu_308_p1 = i_reg2mem_reg_161.read().range(4-1, 0);
}

void runQueue::thread_tmp_s_fu_344_p1() {
    tmp_s_fu_344_p1 = esl_sext<64,32>(i_3_reg2mem_reg_231.read());
}

void runQueue::thread_ult_fu_354_p2() {
    ult_fu_354_p2 = (!last_1_reg_403.read().is_01() || !last_load_reg_434.read().is_01())? sc_lv<1>(): (sc_biguint<32>(last_1_reg_403.read()) < sc_biguint<32>(last_load_reg_434.read()));
}

void runQueue::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint()) {
        case 0 : 
            if (!esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0)) {
                ap_NS_fsm = ap_ST_st2_fsm_1;
            } else {
                ap_NS_fsm = ap_ST_st1_fsm_0;
            }
            break;
        case 1 : 
            ap_NS_fsm = ap_ST_st3_fsm_2;
            break;
        case 2 : 
            if (esl_seteq<1,1,1>(grp_load_fu_274_p1.read(), ap_const_lv1_0)) {
                ap_NS_fsm = ap_ST_st4_fsm_3;
            } else {
                ap_NS_fsm = ap_ST_st6_fsm_5;
            }
            break;
        case 3 : 
            ap_NS_fsm = ap_ST_st5_fsm_4;
            break;
        case 4 : 
            ap_NS_fsm = ap_ST_st6_fsm_5;
            break;
        case 5 : 
            if ((esl_seteq<1,1,1>(localFull_load_reg_410.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(grp_load_fu_274_p1.read(), ap_const_lv1_0))) {
                ap_NS_fsm = ap_ST_st4_fsm_3;
            } else {
                ap_NS_fsm = ap_ST_st7_fsm_6;
            }
            break;
        case 6 : 
            if (esl_seteq<1,1,1>(ap_const_lv1_0, grp_load_fu_285_p1.read())) {
                ap_NS_fsm = ap_ST_st8_fsm_7;
            } else {
                ap_NS_fsm = ap_ST_st9_fsm_8;
            }
            break;
        case 7 : 
            ap_NS_fsm = ap_ST_st9_fsm_8;
            break;
        case 8 : 
            if ((esl_seteq<1,1,1>(ap_const_lv1_0, localEmpty_load_reg_439.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, grp_load_fu_285_p1.read()))) {
                ap_NS_fsm = ap_ST_st8_fsm_7;
            } else {
                ap_NS_fsm = ap_ST_st10_fsm_9;
            }
            break;
        case 9 : 
            if (esl_seteq<1,1,1>(grp_load_fu_274_p1.read(), ap_const_lv1_0)) {
                ap_NS_fsm = ap_ST_st11_fsm_10;
            } else {
                ap_NS_fsm = ap_ST_st12_fsm_11;
            }
            break;
        case 10 : 
            ap_NS_fsm = ap_ST_st12_fsm_11;
            break;
        case 11 : 
            if ((!esl_seteq<1,1,1>(grp_load_fu_274_p1.read(), ap_const_lv1_0) || !esl_seteq<1,1,1>(ap_const_lv1_0, localFull_load_2_reg_457.read()))) {
                ap_NS_fsm = ap_ST_st14_fsm_13;
            } else {
                ap_NS_fsm = ap_ST_st13_fsm_12;
            }
            break;
        case 12 : 
            ap_NS_fsm = ap_ST_st11_fsm_10;
            break;
        case 13 : 
            if (esl_seteq<1,1,1>(ap_const_lv1_0, grp_load_fu_285_p1.read())) {
                ap_NS_fsm = ap_ST_st15_fsm_14;
            } else {
                ap_NS_fsm = ap_ST_st16_fsm_15;
            }
            break;
        case 14 : 
            ap_NS_fsm = ap_ST_st16_fsm_15;
            break;
        case 15 : 
            if ((!esl_seteq<1,1,1>(ap_const_lv1_0, grp_load_fu_285_p1.read()) || !esl_seteq<1,1,1>(ap_const_lv1_0, localEmpty_load_2_reg_479.read()))) {
                ap_NS_fsm = ap_ST_st1_fsm_0;
            } else {
                ap_NS_fsm = ap_ST_st15_fsm_14;
            }
            break;
        default : 
            ap_NS_fsm = "XXXX";
            break;
    }
}
void runQueue::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"ap_rst\" :  \"" << ap_rst.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"ap_start\" :  \"" << ap_start.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"ap_done\" :  \"" << ap_done.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_idle\" :  \"" << ap_idle.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_ready\" :  \"" << ap_ready.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"priorityOut_V\" :  \"" << priorityOut_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"priorityIn_V\" :  \"" << priorityIn_V.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"cmdOut_V\" :  \"" << cmdOut_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"empty\" :  \"" << empty.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"full\" :  \"" << full.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"currentPriority_V\" :  \"" << currentPriority_V.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"fullOut\" :  \"" << fullOut.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_return\" :  \"" << ap_return.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

