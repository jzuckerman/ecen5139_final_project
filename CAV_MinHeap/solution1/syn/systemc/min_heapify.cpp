// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2014.1
// Copyright (C) 2014 Xilinx Inc. All rights reserved.
// 
// ===========================================================

#include "min_heapify.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic min_heapify::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic min_heapify::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<3> min_heapify::ap_ST_st1_fsm_0 = "000";
const sc_lv<3> min_heapify::ap_ST_st2_fsm_1 = "1";
const sc_lv<3> min_heapify::ap_ST_st3_fsm_2 = "10";
const sc_lv<3> min_heapify::ap_ST_st4_fsm_3 = "11";
const sc_lv<3> min_heapify::ap_ST_st5_fsm_4 = "100";
const sc_lv<3> min_heapify::ap_ST_st6_fsm_5 = "101";
const sc_lv<3> min_heapify::ap_ST_st7_fsm_6 = "110";
const sc_lv<3> min_heapify::ap_ST_st8_fsm_7 = "111";
const sc_lv<1> min_heapify::ap_const_lv1_0 = "0";
const sc_lv<32> min_heapify::ap_const_lv32_1 = "1";
const sc_lv<1> min_heapify::ap_const_lv1_1 = "1";
const sc_lv<32> min_heapify::ap_const_lv32_1F = "11111";
const sc_lv<32> min_heapify::ap_const_lv32_0 = "00000000000000000000000000000000";

min_heapify::min_heapify(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_a_data_address0);
    sensitive << ( ap_CS_fsm );
    sensitive << ( tmp_5_reg_413 );
    sensitive << ( tmp_fu_149_p1 );
    sensitive << ( tmp_10_fu_273_p1 );
    sensitive << ( tmp_8_fu_335_p1 );

    SC_METHOD(thread_a_data_ce0);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_a_data_d0);
    sensitive << ( ap_CS_fsm );
    sensitive << ( a_data_q0 );
    sensitive << ( temp_data_reg_368 );

    SC_METHOD(thread_a_data_we0);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_a_priority_address0);
    sensitive << ( ap_CS_fsm );
    sensitive << ( tmp_fu_149_p1 );
    sensitive << ( tmp_2_fu_183_p1 );
    sensitive << ( tmp_10_fu_273_p1 );

    SC_METHOD(thread_a_priority_address1);
    sensitive << ( ap_CS_fsm );
    sensitive << ( tmp_5_fu_211_p1 );
    sensitive << ( tmp_3_fu_188_p1 );
    sensitive << ( tmp_8_fu_335_p1 );

    SC_METHOD(thread_a_priority_ce0);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_a_priority_ce1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_a_priority_d0);
    sensitive << ( ap_CS_fsm );
    sensitive << ( a_priority_load_2_reg_423 );

    SC_METHOD(thread_a_priority_d1);
    sensitive << ( ap_CS_fsm );
    sensitive << ( temp_priority_reg_362 );

    SC_METHOD(thread_a_priority_we0);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_a_priority_we1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_j_1_fu_205_p3);
    sensitive << ( j_reg_373 );
    sensitive << ( tmp_1_reg_383 );
    sensitive << ( p_j_fu_199_p3 );

    SC_METHOD(thread_j_2_fu_175_p3);
    sensitive << ( tmp_11_fu_155_p1 );

    SC_METHOD(thread_j_fu_159_p2);
    sensitive << ( j_0_in_reg_130 );

    SC_METHOD(thread_p_j_fu_199_p3);
    sensitive << ( j_reg_373 );
    sensitive << ( j_2_reg_388 );
    sensitive << ( tmp_4_fu_193_p2 );

    SC_METHOD(thread_p_lshr1_fu_293_p4);
    sensitive << ( p_neg1_fu_287_p2 );

    SC_METHOD(thread_p_lshr_f1_fu_313_p4);
    sensitive << ( j_3_reg_139 );

    SC_METHOD(thread_p_lshr_f_fu_252_p4);
    sensitive << ( j_1_reg_403 );

    SC_METHOD(thread_p_lshr_fu_232_p4);
    sensitive << ( p_neg_fu_227_p2 );

    SC_METHOD(thread_p_neg1_fu_287_p2);
    sensitive << ( j_3_reg_139 );

    SC_METHOD(thread_p_neg_fu_227_p2);
    sensitive << ( j_1_reg_403 );

    SC_METHOD(thread_p_neg_t1_fu_307_p2);
    sensitive << ( tmp_12_fu_303_p1 );

    SC_METHOD(thread_p_neg_t_fu_246_p2);
    sensitive << ( tmp_14_fu_242_p1 );

    SC_METHOD(thread_tmp_10_fu_273_p1);
    sensitive << ( tmp_9_fu_265_p3 );

    SC_METHOD(thread_tmp_11_fu_155_p1);
    sensitive << ( j_0_in_reg_130 );

    SC_METHOD(thread_tmp_12_fu_303_p1);
    sensitive << ( p_lshr1_fu_293_p4 );

    SC_METHOD(thread_tmp_13_fu_323_p1);
    sensitive << ( p_lshr_f1_fu_313_p4 );

    SC_METHOD(thread_tmp_14_fu_242_p1);
    sensitive << ( p_lshr_fu_232_p4 );

    SC_METHOD(thread_tmp_15_fu_261_p1);
    sensitive << ( p_lshr_f_fu_252_p4 );

    SC_METHOD(thread_tmp_17_fu_279_p3);
    sensitive << ( j_3_reg_139 );

    SC_METHOD(thread_tmp_18_fu_220_p3);
    sensitive << ( j_1_reg_403 );

    SC_METHOD(thread_tmp_1_fu_170_p2);
    sensitive << ( ap_CS_fsm );
    sensitive << ( n );
    sensitive << ( j_fu_159_p2 );
    sensitive << ( tmp_s_fu_165_p2 );

    SC_METHOD(thread_tmp_2_fu_183_p1);
    sensitive << ( j_2_fu_175_p3 );

    SC_METHOD(thread_tmp_3_fu_188_p1);
    sensitive << ( j_fu_159_p2 );

    SC_METHOD(thread_tmp_4_fu_193_p2);
    sensitive << ( ap_CS_fsm );
    sensitive << ( a_priority_q0 );
    sensitive << ( a_priority_q1 );
    sensitive << ( tmp_1_reg_383 );

    SC_METHOD(thread_tmp_5_fu_211_p1);
    sensitive << ( j_1_reg_403 );

    SC_METHOD(thread_tmp_6_fu_215_p2);
    sensitive << ( ap_CS_fsm );
    sensitive << ( a_priority_q1 );
    sensitive << ( temp_priority_reg_362 );

    SC_METHOD(thread_tmp_7_fu_327_p3);
    sensitive << ( tmp_17_fu_279_p3 );
    sensitive << ( p_neg_t1_fu_307_p2 );
    sensitive << ( tmp_13_fu_323_p1 );

    SC_METHOD(thread_tmp_8_fu_335_p1);
    sensitive << ( tmp_7_fu_327_p3 );

    SC_METHOD(thread_tmp_9_fu_265_p3);
    sensitive << ( tmp_18_fu_220_p3 );
    sensitive << ( p_neg_t_fu_246_p2 );
    sensitive << ( tmp_15_fu_261_p1 );

    SC_METHOD(thread_tmp_fu_149_p1);
    sensitive << ( i );

    SC_METHOD(thread_tmp_s_fu_165_p2);
    sensitive << ( ap_CS_fsm );
    sensitive << ( n );
    sensitive << ( j_fu_159_p2 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( tmp_s_fu_165_p2 );
    sensitive << ( tmp_6_fu_215_p2 );

    ap_CS_fsm = "000";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "min_heapify_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, a_priority_address0, "(port)a_priority_address0");
    sc_trace(mVcdFile, a_priority_ce0, "(port)a_priority_ce0");
    sc_trace(mVcdFile, a_priority_we0, "(port)a_priority_we0");
    sc_trace(mVcdFile, a_priority_d0, "(port)a_priority_d0");
    sc_trace(mVcdFile, a_priority_q0, "(port)a_priority_q0");
    sc_trace(mVcdFile, a_priority_address1, "(port)a_priority_address1");
    sc_trace(mVcdFile, a_priority_ce1, "(port)a_priority_ce1");
    sc_trace(mVcdFile, a_priority_we1, "(port)a_priority_we1");
    sc_trace(mVcdFile, a_priority_d1, "(port)a_priority_d1");
    sc_trace(mVcdFile, a_priority_q1, "(port)a_priority_q1");
    sc_trace(mVcdFile, a_data_address0, "(port)a_data_address0");
    sc_trace(mVcdFile, a_data_ce0, "(port)a_data_ce0");
    sc_trace(mVcdFile, a_data_we0, "(port)a_data_we0");
    sc_trace(mVcdFile, a_data_d0, "(port)a_data_d0");
    sc_trace(mVcdFile, a_data_q0, "(port)a_data_q0");
    sc_trace(mVcdFile, i, "(port)i");
    sc_trace(mVcdFile, n, "(port)n");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, temp_priority_reg_362, "temp_priority_reg_362");
    sc_trace(mVcdFile, temp_data_reg_368, "temp_data_reg_368");
    sc_trace(mVcdFile, j_fu_159_p2, "j_fu_159_p2");
    sc_trace(mVcdFile, j_reg_373, "j_reg_373");
    sc_trace(mVcdFile, tmp_1_fu_170_p2, "tmp_1_fu_170_p2");
    sc_trace(mVcdFile, tmp_1_reg_383, "tmp_1_reg_383");
    sc_trace(mVcdFile, tmp_s_fu_165_p2, "tmp_s_fu_165_p2");
    sc_trace(mVcdFile, j_2_fu_175_p3, "j_2_fu_175_p3");
    sc_trace(mVcdFile, j_2_reg_388, "j_2_reg_388");
    sc_trace(mVcdFile, j_1_fu_205_p3, "j_1_fu_205_p3");
    sc_trace(mVcdFile, j_1_reg_403, "j_1_reg_403");
    sc_trace(mVcdFile, tmp_5_fu_211_p1, "tmp_5_fu_211_p1");
    sc_trace(mVcdFile, tmp_5_reg_413, "tmp_5_reg_413");
    sc_trace(mVcdFile, a_priority_load_2_reg_423, "a_priority_load_2_reg_423");
    sc_trace(mVcdFile, tmp_6_fu_215_p2, "tmp_6_fu_215_p2");
    sc_trace(mVcdFile, j_0_in_reg_130, "j_0_in_reg_130");
    sc_trace(mVcdFile, j_3_reg_139, "j_3_reg_139");
    sc_trace(mVcdFile, tmp_fu_149_p1, "tmp_fu_149_p1");
    sc_trace(mVcdFile, tmp_2_fu_183_p1, "tmp_2_fu_183_p1");
    sc_trace(mVcdFile, tmp_3_fu_188_p1, "tmp_3_fu_188_p1");
    sc_trace(mVcdFile, tmp_10_fu_273_p1, "tmp_10_fu_273_p1");
    sc_trace(mVcdFile, tmp_8_fu_335_p1, "tmp_8_fu_335_p1");
    sc_trace(mVcdFile, tmp_11_fu_155_p1, "tmp_11_fu_155_p1");
    sc_trace(mVcdFile, tmp_4_fu_193_p2, "tmp_4_fu_193_p2");
    sc_trace(mVcdFile, p_j_fu_199_p3, "p_j_fu_199_p3");
    sc_trace(mVcdFile, p_neg_fu_227_p2, "p_neg_fu_227_p2");
    sc_trace(mVcdFile, p_lshr_fu_232_p4, "p_lshr_fu_232_p4");
    sc_trace(mVcdFile, tmp_14_fu_242_p1, "tmp_14_fu_242_p1");
    sc_trace(mVcdFile, p_lshr_f_fu_252_p4, "p_lshr_f_fu_252_p4");
    sc_trace(mVcdFile, tmp_18_fu_220_p3, "tmp_18_fu_220_p3");
    sc_trace(mVcdFile, p_neg_t_fu_246_p2, "p_neg_t_fu_246_p2");
    sc_trace(mVcdFile, tmp_15_fu_261_p1, "tmp_15_fu_261_p1");
    sc_trace(mVcdFile, tmp_9_fu_265_p3, "tmp_9_fu_265_p3");
    sc_trace(mVcdFile, p_neg1_fu_287_p2, "p_neg1_fu_287_p2");
    sc_trace(mVcdFile, p_lshr1_fu_293_p4, "p_lshr1_fu_293_p4");
    sc_trace(mVcdFile, tmp_12_fu_303_p1, "tmp_12_fu_303_p1");
    sc_trace(mVcdFile, p_lshr_f1_fu_313_p4, "p_lshr_f1_fu_313_p4");
    sc_trace(mVcdFile, tmp_17_fu_279_p3, "tmp_17_fu_279_p3");
    sc_trace(mVcdFile, p_neg_t1_fu_307_p2, "p_neg_t1_fu_307_p2");
    sc_trace(mVcdFile, tmp_13_fu_323_p1, "tmp_13_fu_323_p1");
    sc_trace(mVcdFile, tmp_7_fu_327_p3, "tmp_7_fu_327_p3");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

min_heapify::~min_heapify() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

}

void min_heapify::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_st1_fsm_0;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if (esl_seteq<1,3,3>(ap_ST_st7_fsm_6, ap_CS_fsm.read())) {
        j_0_in_reg_130 = j_1_reg_403.read();
    } else if (esl_seteq<1,3,3>(ap_ST_st2_fsm_1, ap_CS_fsm.read())) {
        j_0_in_reg_130 = i.read();
    }
    if ((esl_seteq<1,3,3>(ap_ST_st6_fsm_5, ap_CS_fsm.read()) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_6_fu_215_p2.read()))) {
        j_3_reg_139 = j_1_reg_403.read();
    } else if ((esl_seteq<1,3,3>(ap_ST_st3_fsm_2, ap_CS_fsm.read()) && 
                !esl_seteq<1,1,1>(tmp_s_fu_165_p2.read(), ap_const_lv1_0))) {
        j_3_reg_139 = j_fu_159_p2.read();
    }
    if (esl_seteq<1,3,3>(ap_ST_st6_fsm_5, ap_CS_fsm.read())) {
        a_priority_load_2_reg_423 = a_priority_q1.read();
    }
    if (esl_seteq<1,3,3>(ap_ST_st4_fsm_3, ap_CS_fsm.read())) {
        j_1_reg_403 = j_1_fu_205_p3.read();
    }
    if ((esl_seteq<1,3,3>(ap_ST_st3_fsm_2, ap_CS_fsm.read()) && esl_seteq<1,1,1>(tmp_s_fu_165_p2.read(), ap_const_lv1_0))) {
        j_2_reg_388 = j_2_fu_175_p3.read();
        tmp_1_reg_383 = tmp_1_fu_170_p2.read();
    }
    if (esl_seteq<1,3,3>(ap_ST_st3_fsm_2, ap_CS_fsm.read())) {
        j_reg_373 = j_fu_159_p2.read();
    }
    if (esl_seteq<1,3,3>(ap_ST_st2_fsm_1, ap_CS_fsm.read())) {
        temp_data_reg_368 = a_data_q0.read();
        temp_priority_reg_362 = a_priority_q0.read();
    }
    if (esl_seteq<1,3,3>(ap_ST_st5_fsm_4, ap_CS_fsm.read())) {
        tmp_5_reg_413 = tmp_5_fu_211_p1.read();
    }
}

void min_heapify::thread_a_data_address0() {
    if (esl_seteq<1,3,3>(ap_ST_st8_fsm_7, ap_CS_fsm.read())) {
        a_data_address0 =  (sc_lv<8>) (tmp_8_fu_335_p1.read());
    } else if (esl_seteq<1,3,3>(ap_ST_st7_fsm_6, ap_CS_fsm.read())) {
        a_data_address0 =  (sc_lv<8>) (tmp_10_fu_273_p1.read());
    } else if (esl_seteq<1,3,3>(ap_ST_st6_fsm_5, ap_CS_fsm.read())) {
        a_data_address0 =  (sc_lv<8>) (tmp_5_reg_413.read());
    } else if (esl_seteq<1,3,3>(ap_ST_st1_fsm_0, ap_CS_fsm.read())) {
        a_data_address0 =  (sc_lv<8>) (tmp_fu_149_p1.read());
    } else {
        a_data_address0 = "XXXXXXXX";
    }
}

void min_heapify::thread_a_data_ce0() {
    if (((esl_seteq<1,3,3>(ap_ST_st1_fsm_0, ap_CS_fsm.read()) && 
          !esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0)) || 
         esl_seteq<1,3,3>(ap_ST_st6_fsm_5, ap_CS_fsm.read()) || 
         esl_seteq<1,3,3>(ap_ST_st7_fsm_6, ap_CS_fsm.read()) || 
         esl_seteq<1,3,3>(ap_ST_st8_fsm_7, ap_CS_fsm.read()))) {
        a_data_ce0 = ap_const_logic_1;
    } else {
        a_data_ce0 = ap_const_logic_0;
    }
}

void min_heapify::thread_a_data_d0() {
    if (esl_seteq<1,3,3>(ap_ST_st8_fsm_7, ap_CS_fsm.read())) {
        a_data_d0 = temp_data_reg_368.read();
    } else if (esl_seteq<1,3,3>(ap_ST_st7_fsm_6, ap_CS_fsm.read())) {
        a_data_d0 = a_data_q0.read();
    } else {
        a_data_d0 =  (sc_lv<32>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void min_heapify::thread_a_data_we0() {
    if ((esl_seteq<1,3,3>(ap_ST_st7_fsm_6, ap_CS_fsm.read()) || 
         esl_seteq<1,3,3>(ap_ST_st8_fsm_7, ap_CS_fsm.read()))) {
        a_data_we0 = ap_const_logic_1;
    } else {
        a_data_we0 = ap_const_logic_0;
    }
}

void min_heapify::thread_a_priority_address0() {
    if (esl_seteq<1,3,3>(ap_ST_st7_fsm_6, ap_CS_fsm.read())) {
        a_priority_address0 =  (sc_lv<8>) (tmp_10_fu_273_p1.read());
    } else if (esl_seteq<1,3,3>(ap_ST_st3_fsm_2, ap_CS_fsm.read())) {
        a_priority_address0 =  (sc_lv<8>) (tmp_2_fu_183_p1.read());
    } else if (esl_seteq<1,3,3>(ap_ST_st1_fsm_0, ap_CS_fsm.read())) {
        a_priority_address0 =  (sc_lv<8>) (tmp_fu_149_p1.read());
    } else {
        a_priority_address0 = "XXXXXXXX";
    }
}

void min_heapify::thread_a_priority_address1() {
    if (esl_seteq<1,3,3>(ap_ST_st8_fsm_7, ap_CS_fsm.read())) {
        a_priority_address1 =  (sc_lv<8>) (tmp_8_fu_335_p1.read());
    } else if (esl_seteq<1,3,3>(ap_ST_st5_fsm_4, ap_CS_fsm.read())) {
        a_priority_address1 =  (sc_lv<8>) (tmp_5_fu_211_p1.read());
    } else if (esl_seteq<1,3,3>(ap_ST_st3_fsm_2, ap_CS_fsm.read())) {
        a_priority_address1 =  (sc_lv<8>) (tmp_3_fu_188_p1.read());
    } else {
        a_priority_address1 = "XXXXXXXX";
    }
}

void min_heapify::thread_a_priority_ce0() {
    if (((esl_seteq<1,3,3>(ap_ST_st1_fsm_0, ap_CS_fsm.read()) && 
          !esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0)) || 
         esl_seteq<1,3,3>(ap_ST_st3_fsm_2, ap_CS_fsm.read()) || 
         esl_seteq<1,3,3>(ap_ST_st7_fsm_6, ap_CS_fsm.read()))) {
        a_priority_ce0 = ap_const_logic_1;
    } else {
        a_priority_ce0 = ap_const_logic_0;
    }
}

void min_heapify::thread_a_priority_ce1() {
    if ((esl_seteq<1,3,3>(ap_ST_st3_fsm_2, ap_CS_fsm.read()) || 
         esl_seteq<1,3,3>(ap_ST_st5_fsm_4, ap_CS_fsm.read()) || 
         esl_seteq<1,3,3>(ap_ST_st8_fsm_7, ap_CS_fsm.read()))) {
        a_priority_ce1 = ap_const_logic_1;
    } else {
        a_priority_ce1 = ap_const_logic_0;
    }
}

void min_heapify::thread_a_priority_d0() {
    a_priority_d0 = a_priority_load_2_reg_423.read();
}

void min_heapify::thread_a_priority_d1() {
    a_priority_d1 = temp_priority_reg_362.read();
}

void min_heapify::thread_a_priority_we0() {
    if ((esl_seteq<1,3,3>(ap_ST_st7_fsm_6, ap_CS_fsm.read()))) {
        a_priority_we0 = ap_const_logic_1;
    } else {
        a_priority_we0 = ap_const_logic_0;
    }
}

void min_heapify::thread_a_priority_we1() {
    if ((esl_seteq<1,3,3>(ap_ST_st8_fsm_7, ap_CS_fsm.read()))) {
        a_priority_we1 = ap_const_logic_1;
    } else {
        a_priority_we1 = ap_const_logic_0;
    }
}

void min_heapify::thread_ap_done() {
    if (((!esl_seteq<1,1,1>(ap_const_logic_1, ap_start.read()) && 
          esl_seteq<1,3,3>(ap_ST_st1_fsm_0, ap_CS_fsm.read())) || 
         esl_seteq<1,3,3>(ap_ST_st8_fsm_7, ap_CS_fsm.read()))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void min_heapify::thread_ap_idle() {
    if ((!esl_seteq<1,1,1>(ap_const_logic_1, ap_start.read()) && 
         esl_seteq<1,3,3>(ap_ST_st1_fsm_0, ap_CS_fsm.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void min_heapify::thread_ap_ready() {
    if (esl_seteq<1,3,3>(ap_ST_st8_fsm_7, ap_CS_fsm.read())) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void min_heapify::thread_j_1_fu_205_p3() {
    j_1_fu_205_p3 = (!tmp_1_reg_383.read()[0].is_01())? sc_lv<32>(): ((tmp_1_reg_383.read()[0].to_bool())? p_j_fu_199_p3.read(): j_reg_373.read());
}

void min_heapify::thread_j_2_fu_175_p3() {
    j_2_fu_175_p3 = esl_concat<31,1>(tmp_11_fu_155_p1.read(), ap_const_lv1_1);
}

void min_heapify::thread_j_fu_159_p2() {
    j_fu_159_p2 = (!ap_const_lv32_1.is_01())? sc_lv<32>(): j_0_in_reg_130.read() << (unsigned short)ap_const_lv32_1.to_uint();
}

void min_heapify::thread_p_j_fu_199_p3() {
    p_j_fu_199_p3 = (!tmp_4_fu_193_p2.read()[0].is_01())? sc_lv<32>(): ((tmp_4_fu_193_p2.read()[0].to_bool())? j_2_reg_388.read(): j_reg_373.read());
}

void min_heapify::thread_p_lshr1_fu_293_p4() {
    p_lshr1_fu_293_p4 = p_neg1_fu_287_p2.read().range(31, 1);
}

void min_heapify::thread_p_lshr_f1_fu_313_p4() {
    p_lshr_f1_fu_313_p4 = j_3_reg_139.read().range(31, 1);
}

void min_heapify::thread_p_lshr_f_fu_252_p4() {
    p_lshr_f_fu_252_p4 = j_1_reg_403.read().range(31, 1);
}

void min_heapify::thread_p_lshr_fu_232_p4() {
    p_lshr_fu_232_p4 = p_neg_fu_227_p2.read().range(31, 1);
}

void min_heapify::thread_p_neg1_fu_287_p2() {
    p_neg1_fu_287_p2 = (!ap_const_lv32_0.is_01() || !j_3_reg_139.read().is_01())? sc_lv<32>(): (sc_bigint<32>(ap_const_lv32_0) - sc_biguint<32>(j_3_reg_139.read()));
}

void min_heapify::thread_p_neg_fu_227_p2() {
    p_neg_fu_227_p2 = (!ap_const_lv32_0.is_01() || !j_1_reg_403.read().is_01())? sc_lv<32>(): (sc_bigint<32>(ap_const_lv32_0) - sc_biguint<32>(j_1_reg_403.read()));
}

void min_heapify::thread_p_neg_t1_fu_307_p2() {
    p_neg_t1_fu_307_p2 = (!ap_const_lv32_0.is_01() || !tmp_12_fu_303_p1.read().is_01())? sc_lv<32>(): (sc_bigint<32>(ap_const_lv32_0) - sc_biguint<32>(tmp_12_fu_303_p1.read()));
}

void min_heapify::thread_p_neg_t_fu_246_p2() {
    p_neg_t_fu_246_p2 = (!ap_const_lv32_0.is_01() || !tmp_14_fu_242_p1.read().is_01())? sc_lv<32>(): (sc_bigint<32>(ap_const_lv32_0) - sc_biguint<32>(tmp_14_fu_242_p1.read()));
}

void min_heapify::thread_tmp_10_fu_273_p1() {
    tmp_10_fu_273_p1 = esl_sext<64,32>(tmp_9_fu_265_p3.read());
}

void min_heapify::thread_tmp_11_fu_155_p1() {
    tmp_11_fu_155_p1 = j_0_in_reg_130.read().range(31-1, 0);
}

void min_heapify::thread_tmp_12_fu_303_p1() {
    tmp_12_fu_303_p1 = esl_zext<32,31>(p_lshr1_fu_293_p4.read());
}

void min_heapify::thread_tmp_13_fu_323_p1() {
    tmp_13_fu_323_p1 = esl_zext<32,31>(p_lshr_f1_fu_313_p4.read());
}

void min_heapify::thread_tmp_14_fu_242_p1() {
    tmp_14_fu_242_p1 = esl_zext<32,31>(p_lshr_fu_232_p4.read());
}

void min_heapify::thread_tmp_15_fu_261_p1() {
    tmp_15_fu_261_p1 = esl_zext<32,31>(p_lshr_f_fu_252_p4.read());
}

void min_heapify::thread_tmp_17_fu_279_p3() {
    tmp_17_fu_279_p3 = j_3_reg_139.read().range(31, 31);
}

void min_heapify::thread_tmp_18_fu_220_p3() {
    tmp_18_fu_220_p3 = j_1_reg_403.read().range(31, 31);
}

void min_heapify::thread_tmp_1_fu_170_p2() {
    tmp_1_fu_170_p2 = (!j_fu_159_p2.read().is_01() || !n.read().is_01())? sc_lv<1>(): (sc_bigint<32>(j_fu_159_p2.read()) < sc_bigint<32>(n.read()));
}

void min_heapify::thread_tmp_2_fu_183_p1() {
    tmp_2_fu_183_p1 = esl_sext<64,32>(j_2_fu_175_p3.read());
}

void min_heapify::thread_tmp_3_fu_188_p1() {
    tmp_3_fu_188_p1 = esl_sext<64,32>(j_fu_159_p2.read());
}

void min_heapify::thread_tmp_4_fu_193_p2() {
    tmp_4_fu_193_p2 = (!a_priority_q0.read().is_01() || !a_priority_q1.read().is_01())? sc_lv<1>(): (sc_bigint<32>(a_priority_q0.read()) < sc_bigint<32>(a_priority_q1.read()));
}

void min_heapify::thread_tmp_5_fu_211_p1() {
    tmp_5_fu_211_p1 = esl_sext<64,32>(j_1_reg_403.read());
}

void min_heapify::thread_tmp_6_fu_215_p2() {
    tmp_6_fu_215_p2 = (!temp_priority_reg_362.read().is_01() || !a_priority_q1.read().is_01())? sc_lv<1>(): (sc_bigint<32>(temp_priority_reg_362.read()) < sc_bigint<32>(a_priority_q1.read()));
}

void min_heapify::thread_tmp_7_fu_327_p3() {
    tmp_7_fu_327_p3 = (!tmp_17_fu_279_p3.read()[0].is_01())? sc_lv<32>(): ((tmp_17_fu_279_p3.read()[0].to_bool())? p_neg_t1_fu_307_p2.read(): tmp_13_fu_323_p1.read());
}

void min_heapify::thread_tmp_8_fu_335_p1() {
    tmp_8_fu_335_p1 = esl_sext<64,32>(tmp_7_fu_327_p3.read());
}

void min_heapify::thread_tmp_9_fu_265_p3() {
    tmp_9_fu_265_p3 = (!tmp_18_fu_220_p3.read()[0].is_01())? sc_lv<32>(): ((tmp_18_fu_220_p3.read()[0].to_bool())? p_neg_t_fu_246_p2.read(): tmp_15_fu_261_p1.read());
}

void min_heapify::thread_tmp_fu_149_p1() {
    tmp_fu_149_p1 = esl_sext<64,32>(i.read());
}

void min_heapify::thread_tmp_s_fu_165_p2() {
    tmp_s_fu_165_p2 = (!j_fu_159_p2.read().is_01() || !n.read().is_01())? sc_lv<1>(): (sc_bigint<32>(j_fu_159_p2.read()) > sc_bigint<32>(n.read()));
}

void min_heapify::thread_ap_NS_fsm() {
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
            if (!esl_seteq<1,1,1>(tmp_s_fu_165_p2.read(), ap_const_lv1_0)) {
                ap_NS_fsm = ap_ST_st8_fsm_7;
            } else {
                ap_NS_fsm = ap_ST_st4_fsm_3;
            }
            break;
        case 3 : 
            ap_NS_fsm = ap_ST_st5_fsm_4;
            break;
        case 4 : 
            ap_NS_fsm = ap_ST_st6_fsm_5;
            break;
        case 5 : 
            if (!esl_seteq<1,1,1>(ap_const_lv1_0, tmp_6_fu_215_p2.read())) {
                ap_NS_fsm = ap_ST_st8_fsm_7;
            } else {
                ap_NS_fsm = ap_ST_st7_fsm_6;
            }
            break;
        case 6 : 
            ap_NS_fsm = ap_ST_st3_fsm_2;
            break;
        case 7 : 
            ap_NS_fsm = ap_ST_st1_fsm_0;
            break;
        default : 
            ap_NS_fsm =  (sc_lv<3>) ("XXX");
            break;
    }
}
}

