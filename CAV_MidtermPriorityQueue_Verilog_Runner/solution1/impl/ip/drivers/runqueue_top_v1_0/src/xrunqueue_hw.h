// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2014.1
// Copyright (C) 2014 Xilinx Inc. All rights reserved.
// 
// ==============================================================

// AXI4LiteS
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read)
//        bit 7  - auto_restart (Read/Write)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0  - Channel 0 (ap_done)
//        bit 1  - Channel 1 (ap_ready)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0  - Channel 0 (ap_done)
//        bit 1  - Channel 1 (ap_ready)
//        others - reserved
// 0x10 : reserved
// 0x14 : Data signal of fullOut
//        bit 0  - fullOut[0] (Read)
//        others - reserved
// 0x18 : Control signal of iterations
//        bit 0  - iterations_ap_vld (Read/Write/SC)
//        others - reserved
// 0x1c : Data signal of iterations
//        bit 31~0 - iterations[31:0] (Read/Write)
// 0x20 : Control signal of finished
//        bit 0  - finished_ap_vld (Read/COR)
//        others - reserved
// 0x24 : Data signal of finished
//        bit 0  - finished[0] (Read)
//        others - reserved
// 0x28 : reserved
// 0x2c : Data signal of currentIteration
//        bit 31~0 - currentIteration[31:0] (Read)
// 0x30 : Data signal of ap_return
//        bit 0  - ap_return[0] (Read)
//        others - reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XRUNQUEUE_AXI4LITES_ADDR_AP_CTRL               0x00
#define XRUNQUEUE_AXI4LITES_ADDR_GIE                   0x04
#define XRUNQUEUE_AXI4LITES_ADDR_IER                   0x08
#define XRUNQUEUE_AXI4LITES_ADDR_ISR                   0x0c
#define XRUNQUEUE_AXI4LITES_ADDR_FULLOUT_DATA          0x14
#define XRUNQUEUE_AXI4LITES_BITS_FULLOUT_DATA          1
#define XRUNQUEUE_AXI4LITES_ADDR_ITERATIONS_CTRL       0x18
#define XRUNQUEUE_AXI4LITES_ADDR_ITERATIONS_DATA       0x1c
#define XRUNQUEUE_AXI4LITES_BITS_ITERATIONS_DATA       32
#define XRUNQUEUE_AXI4LITES_ADDR_FINISHED_CTRL         0x20
#define XRUNQUEUE_AXI4LITES_ADDR_FINISHED_DATA         0x24
#define XRUNQUEUE_AXI4LITES_BITS_FINISHED_DATA         1
#define XRUNQUEUE_AXI4LITES_ADDR_CURRENTITERATION_DATA 0x2c
#define XRUNQUEUE_AXI4LITES_BITS_CURRENTITERATION_DATA 32
#define XRUNQUEUE_AXI4LITES_ADDR_AP_RETURN             0x30
#define XRUNQUEUE_AXI4LITES_BITS_AP_RETURN             1

