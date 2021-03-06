#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("priorityOut_V", 8, hls_out, 0, "ap_none", "out_data", 1),
	Port_Property("priorityIn_V", 8, hls_in, 1, "ap_none", "in_data", 1),
	Port_Property("cmdOut_V", 2, hls_out, 2, "ap_none", "out_data", 1),
	Port_Property("empty", 1, hls_in, 3, "ap_none", "in_data", 1),
	Port_Property("full", 1, hls_in, 4, "ap_none", "in_data", 1),
	Port_Property("fullOut", 1, hls_out, 5, "ap_none", "out_data", 1),
	Port_Property("iterations", 32, hls_in, 6, "ap_vld", "in_data", 1),
	Port_Property("iterations_ap_vld", 1, hls_in, 6, "ap_vld", "in_vld", 1),
	Port_Property("finished", 1, hls_out, 7, "ap_ovld", "out_data", 1),
	Port_Property("finished_ap_vld", 1, hls_out, 7, "ap_ovld", "out_vld", 1),
	Port_Property("currentIteration", 32, hls_out, 8, "ap_none", "out_data", 1),
	Port_Property("total", 32, hls_out, 9, "ap_none", "out_data", 1),
	Port_Property("ap_return", 32, hls_out, -1, "", "", 1),
};
const char* HLS_Design_Meta::dut_name = "runQueue";
