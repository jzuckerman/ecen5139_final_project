// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2014.1
// Copyright (C) 2014 Xilinx Inc. All rights reserved.
// 
// ===========================================================

#ifndef _min_HH_
#define _min_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct min : public sc_module {
    // Port declarations 12
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<32> > first_priority;
    sc_in< sc_lv<32> > first_data;
    sc_in< sc_lv<32> > second_priority;
    sc_in< sc_lv<32> > second_data;
    sc_out< sc_lv<32> > ap_return_0;
    sc_out< sc_lv<32> > ap_return_1;


    // Module declarations
    min(sc_module_name name);
    SC_HAS_PROCESS(min);

    ~min();

    sc_trace_file* mVcdFile;

    sc_signal< sc_lv<1> > ap_CS_fsm;
    sc_signal< sc_lv<1> > tmp_fu_37_p2;
    sc_signal< sc_lv<32> > agg_result_priority_write_assign_fu_41_p3;
    sc_signal< sc_lv<32> > agg_result_data_write_assign_fu_47_p3;
    sc_signal< sc_lv<1> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<1> ap_ST_st1_fsm_0;
    static const sc_lv<1> ap_ST_st2_fsm_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_agg_result_data_write_assign_fu_47_p3();
    void thread_agg_result_priority_write_assign_fu_41_p3();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_return_0();
    void thread_ap_return_1();
    void thread_tmp_fu_37_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
