// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2014.1
// Copyright (C) 2014 Xilinx Inc. All rights reserved.
// 
// ==============================================================

`timescale 1 ns / 1 ps
module runqueue_top (
s_axi_AXI4LiteS_AWADDR,
s_axi_AXI4LiteS_AWVALID,
s_axi_AXI4LiteS_AWREADY,
s_axi_AXI4LiteS_WDATA,
s_axi_AXI4LiteS_WSTRB,
s_axi_AXI4LiteS_WVALID,
s_axi_AXI4LiteS_WREADY,
s_axi_AXI4LiteS_BRESP,
s_axi_AXI4LiteS_BVALID,
s_axi_AXI4LiteS_BREADY,
s_axi_AXI4LiteS_ARADDR,
s_axi_AXI4LiteS_ARVALID,
s_axi_AXI4LiteS_ARREADY,
s_axi_AXI4LiteS_RDATA,
s_axi_AXI4LiteS_RRESP,
s_axi_AXI4LiteS_RVALID,
s_axi_AXI4LiteS_RREADY,
interrupt,
aresetn,
aclk,
priorityOut_V,
priorityIn_V,
cmdOut_V,
empty,
full
);

parameter C_S_AXI_AXI4LITES_ADDR_WIDTH = 6;
parameter C_S_AXI_AXI4LITES_DATA_WIDTH = 32;
parameter RESET_ACTIVE_LOW = 1;

input [C_S_AXI_AXI4LITES_ADDR_WIDTH - 1:0] s_axi_AXI4LiteS_AWADDR ;
input s_axi_AXI4LiteS_AWVALID ;
output s_axi_AXI4LiteS_AWREADY ;
input [C_S_AXI_AXI4LITES_DATA_WIDTH - 1:0] s_axi_AXI4LiteS_WDATA ;
input [C_S_AXI_AXI4LITES_DATA_WIDTH/8 - 1:0] s_axi_AXI4LiteS_WSTRB ;
input s_axi_AXI4LiteS_WVALID ;
output s_axi_AXI4LiteS_WREADY ;
output [2 - 1:0] s_axi_AXI4LiteS_BRESP ;
output s_axi_AXI4LiteS_BVALID ;
input s_axi_AXI4LiteS_BREADY ;
input [C_S_AXI_AXI4LITES_ADDR_WIDTH - 1:0] s_axi_AXI4LiteS_ARADDR ;
input s_axi_AXI4LiteS_ARVALID ;
output s_axi_AXI4LiteS_ARREADY ;
output [C_S_AXI_AXI4LITES_DATA_WIDTH - 1:0] s_axi_AXI4LiteS_RDATA ;
output [2 - 1:0] s_axi_AXI4LiteS_RRESP ;
output s_axi_AXI4LiteS_RVALID ;
input s_axi_AXI4LiteS_RREADY ;
output interrupt ;

input aresetn ;

input aclk ;

output [4 - 1:0] priorityOut_V ;
input [4 - 1:0] priorityIn_V ;
output [2 - 1:0] cmdOut_V ;
input empty ;
input full ;


wire [C_S_AXI_AXI4LITES_ADDR_WIDTH - 1:0] s_axi_AXI4LiteS_AWADDR;
wire s_axi_AXI4LiteS_AWVALID;
wire s_axi_AXI4LiteS_AWREADY;
wire [C_S_AXI_AXI4LITES_DATA_WIDTH - 1:0] s_axi_AXI4LiteS_WDATA;
wire [C_S_AXI_AXI4LITES_DATA_WIDTH/8 - 1:0] s_axi_AXI4LiteS_WSTRB;
wire s_axi_AXI4LiteS_WVALID;
wire s_axi_AXI4LiteS_WREADY;
wire [2 - 1:0] s_axi_AXI4LiteS_BRESP;
wire s_axi_AXI4LiteS_BVALID;
wire s_axi_AXI4LiteS_BREADY;
wire [C_S_AXI_AXI4LITES_ADDR_WIDTH - 1:0] s_axi_AXI4LiteS_ARADDR;
wire s_axi_AXI4LiteS_ARVALID;
wire s_axi_AXI4LiteS_ARREADY;
wire [C_S_AXI_AXI4LITES_DATA_WIDTH - 1:0] s_axi_AXI4LiteS_RDATA;
wire [2 - 1:0] s_axi_AXI4LiteS_RRESP;
wire s_axi_AXI4LiteS_RVALID;
wire s_axi_AXI4LiteS_RREADY;
wire interrupt;

wire aresetn;


wire [1 - 1:0] sig_runQueue_fullOut;
wire [32 - 1:0] sig_runQueue_iterations;
wire sig_runQueue_iterations_ap_vld;
wire sig_runQueue_ap_start;
wire sig_runQueue_ap_ready;
wire sig_runQueue_ap_done;
wire sig_runQueue_ap_idle;
wire [1 - 1:0] sig_runQueue_ap_return;

wire sig_runQueue_ap_rst;



runQueue runQueue_U(
    .fullOut(sig_runQueue_fullOut),
    .iterations(sig_runQueue_iterations),
    .iterations_ap_vld(sig_runQueue_iterations_ap_vld),
    .ap_start(sig_runQueue_ap_start),
    .ap_ready(sig_runQueue_ap_ready),
    .ap_done(sig_runQueue_ap_done),
    .ap_idle(sig_runQueue_ap_idle),
    .ap_return(sig_runQueue_ap_return),
    .ap_rst(sig_runQueue_ap_rst),
    .ap_clk(aclk),
    .priorityOut_V(priorityOut_V),
    .priorityIn_V(priorityIn_V),
    .cmdOut_V(cmdOut_V),
    .empty(empty),
    .full(full)
);

runQueue_AXI4LiteS_if #(
    .C_ADDR_WIDTH(C_S_AXI_AXI4LITES_ADDR_WIDTH),
    .C_DATA_WIDTH(C_S_AXI_AXI4LITES_DATA_WIDTH))
runQueue_AXI4LiteS_if_U(
    .ACLK(aclk),
    .ARESETN(aresetn),
    .O_fullOut(sig_runQueue_fullOut),
    .I_iterations(sig_runQueue_iterations),
    .I_iterations_ap_vld(sig_runQueue_iterations_ap_vld),
    .I_ap_start(sig_runQueue_ap_start),
    .O_ap_ready(sig_runQueue_ap_ready),
    .O_ap_done(sig_runQueue_ap_done),
    .O_ap_idle(sig_runQueue_ap_idle),
    .O_ap_return(sig_runQueue_ap_return),
    .AWADDR(s_axi_AXI4LiteS_AWADDR),
    .AWVALID(s_axi_AXI4LiteS_AWVALID),
    .AWREADY(s_axi_AXI4LiteS_AWREADY),
    .WDATA(s_axi_AXI4LiteS_WDATA),
    .WSTRB(s_axi_AXI4LiteS_WSTRB),
    .WVALID(s_axi_AXI4LiteS_WVALID),
    .WREADY(s_axi_AXI4LiteS_WREADY),
    .BRESP(s_axi_AXI4LiteS_BRESP),
    .BVALID(s_axi_AXI4LiteS_BVALID),
    .BREADY(s_axi_AXI4LiteS_BREADY),
    .ARADDR(s_axi_AXI4LiteS_ARADDR),
    .ARVALID(s_axi_AXI4LiteS_ARVALID),
    .ARREADY(s_axi_AXI4LiteS_ARREADY),
    .RDATA(s_axi_AXI4LiteS_RDATA),
    .RRESP(s_axi_AXI4LiteS_RRESP),
    .RVALID(s_axi_AXI4LiteS_RVALID),
    .RREADY(s_axi_AXI4LiteS_RREADY),
    .interrupt(interrupt));

runQueue_ap_rst_if #(
    .RESET_ACTIVE_LOW(RESET_ACTIVE_LOW))
ap_rst_if_U(
    .dout(sig_runQueue_ap_rst),
    .din(aresetn));

endmodule
