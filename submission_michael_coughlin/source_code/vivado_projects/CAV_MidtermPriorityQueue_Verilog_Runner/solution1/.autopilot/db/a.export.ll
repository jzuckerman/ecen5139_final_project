; ModuleID = '/home/michael/ecen5139_final_project/CAV_MidtermPriorityQueue_Verilog_Runner/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@random_priorities_old = constant [200 x i32] [i32 325, i32 437, i32 294, i32 197, i32 295, i32 178, i32 325, i32 500, i32 207, i32 384, i32 16, i32 21, i32 95, i32 491, i32 360, i32 22, i32 10, i32 263, i32 311, i32 410, i32 381, i32 333, i32 65, i32 191, i32 137, i32 184, i32 354, i32 94, i32 302, i32 106, i32 316, i32 421, i32 166, i32 475, i32 364, i32 250, i32 91, i32 273, i32 500, i32 383, i32 329, i32 439, i32 475, i32 234, i32 439, i32 491, i32 235, i32 240, i32 310, i32 362, i32 203, i32 53, i32 78, i32 415, i32 335, i32 214, i32 100, i32 435, i32 296, i32 69, i32 447, i32 125, i32 124, i32 374, i32 65, i32 213, i32 296, i32 339, i32 211, i32 374, i32 478, i32 402, i32 85, i32 353, i32 66, i32 200, i32 463, i32 181, i32 269, i32 271, i32 412, i32 58, i32 344, i32 474, i32 90, i32 105, i32 20, i32 156, i32 406, i32 309, i32 491, i32 415, i32 270, i32 92, i32 428, i32 16, i32 227, i32 441, i32 49, i32 377, i32 418, i32 424, i32 417, i32 66, i32 241, i32 329, i32 157, i32 154, i32 226, i32 439, i32 246, i32 28, i32 36, i32 423, i32 411, i32 12, i32 173, i32 226, i32 172, i32 150, i32 298, i32 406, i32 80, i32 325, i32 358, i32 446, i32 386, i32 75, i32 284, i32 417, i32 143, i32 24, i32 168, i32 297, i32 3, i32 116, i32 37, i32 186, i32 359, i32 222, i32 41, i32 120, i32 375, i32 279, i32 366, i32 354, i32 403, i32 62, i32 429, i32 405, i32 133, i32 303, i32 388, i32 193, i32 16, i32 283, i32 427, i32 233, i32 175, i32 455, i32 129, i32 158, i32 309, i32 59, i32 366, i32 108, i32 407, i32 387, i32 216, i32 381, i32 118, i32 342, i32 12, i32 61, i32 411, i32 110, i32 457, i32 88, i32 199, i32 419, i32 474, i32 116, i32 145, i32 8, i32 144, i32 32, i32 106, i32 451, i32 253, i32 115, i32 202, i32 494, i32 239, i32 188, i32 351, i32 155, i32 28, i32 227, i32 264, i32 184], align 16
@p_str = private unnamed_addr constant [8 x i8] c"ap_none\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str2 = private unnamed_addr constant [8 x i8] c"ap_ovld\00", align 1
@p_str3 = private unnamed_addr constant [10 x i8] c"AXI4LiteS\00", align 1
@p_str4 = private unnamed_addr constant [7 x i8] c"ap_vld\00", align 1
@p_str5 = private unnamed_addr constant [11 x i8] c"ap_ctrl_hs\00", align 1
@p_str6 = private unnamed_addr constant [3 x i8] c"P1\00", align 1
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@str = internal constant [9 x i8] c"runQueue\00"
@random_priorities = constant [200 x i9] [i9 -187, i9 -75, i9 -218, i9 197, i9 -217, i9 178, i9 -187, i9 -12, i9 207, i9 -128, i9 16, i9 21, i9 95, i9 -21, i9 -152, i9 22, i9 10, i9 -249, i9 -201, i9 -102, i9 -131, i9 -179, i9 65, i9 191, i9 137, i9 184, i9 -158, i9 94, i9 -210, i9 106, i9 -196, i9 -91, i9 166, i9 -37, i9 -148, i9 250, i9 91, i9 -239, i9 -12, i9 -129, i9 -183, i9 -73, i9 -37, i9 234, i9 -73, i9 -21, i9 235, i9 240, i9 -202, i9 -150, i9 203, i9 53, i9 78, i9 -97, i9 -177, i9 214, i9 100, i9 -77, i9 -216, i9 69, i9 -65, i9 125, i9 124, i9 -138, i9 65, i9 213, i9 -216, i9 -173, i9 211, i9 -138, i9 -34, i9 -110, i9 85, i9 -159, i9 66, i9 200, i9 -49, i9 181, i9 -243, i9 -241, i9 -100, i9 58, i9 -168, i9 -38, i9 90, i9 105, i9 20, i9 156, i9 -106, i9 -203, i9 -21, i9 -97, i9 -242, i9 92, i9 -84, i9 16, i9 227, i9 -71, i9 49, i9 -135, i9 -94, i9 -88, i9 -95, i9 66, i9 241, i9 -183, i9 157, i9 154, i9 226, i9 -73, i9 246, i9 28, i9 36, i9 -89, i9 -101, i9 12, i9 173, i9 226, i9 172, i9 150, i9 -214, i9 -106, i9 80, i9 -187, i9 -154, i9 -66, i9 -126, i9 75, i9 -228, i9 -95, i9 143, i9 24, i9 168, i9 -215, i9 3, i9 116, i9 37, i9 186, i9 -153, i9 222, i9 41, i9 120, i9 -137, i9 -233, i9 -146, i9 -158, i9 -109, i9 62, i9 -83, i9 -107, i9 133, i9 -209, i9 -124, i9 193, i9 16, i9 -229, i9 -85, i9 233, i9 175, i9 -57, i9 129, i9 158, i9 -203, i9 59, i9 -146, i9 108, i9 -105, i9 -125, i9 216, i9 -131, i9 118, i9 -170, i9 12, i9 61, i9 -101, i9 110, i9 -55, i9 88, i9 199, i9 -93, i9 -38, i9 116, i9 145, i9 8, i9 144, i9 32, i9 106, i9 -61, i9 253, i9 115, i9 202, i9 -18, i9 239, i9 188, i9 -161, i9 155, i9 28, i9 227, i9 -248, i9 184]

define i32 @runQueue(i8* %priorityOut_V, i8* %priorityIn_V, i2* %cmdOut_V, i1* %empty, i1* %full, i1* %fullOut, i32 %iterations, i1* %finished, i32* %currentIteration, i32* %total) {
  %count = alloca i32, align 4
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %priorityOut_V), !map !7
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %priorityIn_V), !map !11
  call void (...)* @_ssdm_op_SpecBitsMap(i2* %cmdOut_V), !map !15
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %empty), !map !19
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %full), !map !23
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %fullOut), !map !27
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %iterations), !map !31
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %finished), !map !37
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %currentIteration), !map !41
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %total), !map !45
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !49
  call void (...)* @_ssdm_op_SpecTopModule([9 x i8]* @str) nounwind
  %iterations_read = call i32 @_ssdm_op_Read.ap_vld.i32(i32 %iterations)
  %localFull = alloca i1, align 1
  %localEmpty = alloca i1, align 1
  call void (...)* @_ssdm_op_SpecWire(i32* %total, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecWire(i32* %currentIteration, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecWire(i1* %finished, [8 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecIFCore(i32 %iterations, [1 x i8]* @p_str1, [10 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecWire(i32 %iterations, [7 x i8]* @p_str4, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecWire(i1* %fullOut, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecWire(i1* %full, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecWire(i1* %empty, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecWire(i2* %cmdOut_V, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecWire(i8* %priorityIn_V, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecWire(i8* %priorityOut_V, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecWire(i32 0, [11 x i8]* @p_str5, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecIFCore(i32 0, [1 x i8]* @p_str1, [10 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  %tmp_8 = call i32 (...)* @_ssdm_op_SpecRegionBegin([3 x i8]* @p_str6)
  call void @_ssdm_op_Write.ap_none.volatile.i2P(i2* %cmdOut_V, i2 0)
  store i32 0, i32* %count, align 4
  br label %1

; <label>:1                                       ; preds = %16, %0
  %j = phi i32 [ 0, %0 ], [ %j_1, %16 ]
  %result = phi i32 [ 0, %0 ], [ %result_3, %16 ]
  %tmp = icmp slt i32 %j, %iterations_read
  %j_1 = add nsw i32 %j, 1
  br i1 %tmp, label %2, label %17

; <label>:2                                       ; preds = %1
  call void @_ssdm_op_Write.ap_none.i32P(i32* %currentIteration, i32 %j)
  call void (...)* @_ssdm_op_SpecIFCore(i32* %currentIteration, [1 x i8]* @p_str1, [10 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  %localFull_1 = call i1 @_ssdm_op_Read.ap_none.volatile.i1P(i1* %full)
  store volatile i1 %localFull_1, i1* %localFull, align 1
  call void @_ssdm_op_Write.ap_none.volatile.i2P(i2* %cmdOut_V, i2 0)
  call void (...)* @_ssdm_op_Wait(i32 1) nounwind
  call void @_ssdm_op_Write.ap_none.volatile.i2P(i2* %cmdOut_V, i2 1)
  br label %3

; <label>:3                                       ; preds = %4, %2
  %val_assign = phi i32 [ 0, %2 ], [ %i, %4 ]
  %localFull_load = load volatile i1* %localFull, align 1
  %i = add i32 %val_assign, 1
  br i1 %localFull_load, label %5, label %4

; <label>:4                                       ; preds = %3
  %count_load_1 = load i32* %count, align 4
  call void @_ssdm_op_Write.ap_none.volatile.i2P(i2* %cmdOut_V, i2 1)
  call void (...)* @_ssdm_op_Wait(i32 1) nounwind
  %tmp_1 = trunc i32 %val_assign to i8
  call void @_ssdm_op_Write.ap_none.volatile.i8P(i8* %priorityOut_V, i8 %tmp_1)
  %full_read = call i1 @_ssdm_op_Read.ap_none.volatile.i1P(i1* %full)
  call void @_ssdm_op_Write.ap_none.volatile.i1P(i1* %fullOut, i1 %full_read)
  call void (...)* @_ssdm_op_SpecIFCore(i1* %fullOut, [1 x i8]* @p_str1, [10 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  %localFull_2 = call i1 @_ssdm_op_Read.ap_none.volatile.i1P(i1* %full)
  store volatile i1 %localFull_2, i1* %localFull, align 1
  %count_1 = add nsw i32 %count_load_1, 1
  call void (...)* @_ssdm_op_Wait(i32 1) nounwind
  call void @_ssdm_op_Write.ap_none.volatile.i2P(i2* %cmdOut_V, i2 0)
  call void (...)* @_ssdm_op_Wait(i32 1) nounwind
  store i32 %count_1, i32* %count, align 4
  br label %3

; <label>:5                                       ; preds = %3
  call void (...)* @_ssdm_op_Wait(i32 1) nounwind
  call void @_ssdm_op_Write.ap_none.volatile.i2P(i2* %cmdOut_V, i2 0)
  %localEmpty_1 = call i1 @_ssdm_op_Read.ap_none.volatile.i1P(i1* %empty)
  store volatile i1 %localEmpty_1, i1* %localEmpty, align 1
  call void (...)* @_ssdm_op_Wait(i32 1) nounwind
  call void @_ssdm_op_Write.ap_none.volatile.i2P(i2* %cmdOut_V, i2 -2)
  br label %6

; <label>:6                                       ; preds = %._crit_edge, %5
  %op2_assign = phi i32 [ 0, %5 ], [ %i_3, %._crit_edge ]
  %result_1 = phi i32 [ %result, %5 ], [ %result_2, %._crit_edge ]
  %localEmpty_load = load volatile i1* %localEmpty, align 1
  %i_3 = add i32 %op2_assign, 1
  br i1 %localEmpty_load, label %9, label %7

; <label>:7                                       ; preds = %6
  call void @_ssdm_op_Write.ap_none.volatile.i2P(i2* %cmdOut_V, i2 -2)
  call void (...)* @_ssdm_op_Wait(i32 1) nounwind
  %priorityIn_V_read = call i8 @_ssdm_op_Read.ap_none.volatile.i8P(i8* %priorityIn_V)
  %tmp_3 = zext i8 %priorityIn_V_read to i32
  %tmp_4 = icmp eq i32 %tmp_3, %op2_assign
  br i1 %tmp_4, label %._crit_edge, label %8

; <label>:8                                       ; preds = %7
  %priorityIn_V_read_1 = call i8 @_ssdm_op_Read.ap_none.volatile.i8P(i8* %priorityIn_V)
  %tmp_5 = zext i8 %priorityIn_V_read_1 to i32
  %result_5 = add nsw i32 %result_1, %tmp_5
  br label %._crit_edge

._crit_edge:                                      ; preds = %8, %7
  %result_2 = phi i32 [ %result_5, %8 ], [ %result_1, %7 ]
  %localEmpty_3 = call i1 @_ssdm_op_Read.ap_none.volatile.i1P(i1* %empty)
  store volatile i1 %localEmpty_3, i1* %localEmpty, align 1
  call void (...)* @_ssdm_op_Wait(i32 1) nounwind
  call void @_ssdm_op_Write.ap_none.volatile.i2P(i2* %cmdOut_V, i2 0)
  call void (...)* @_ssdm_op_Wait(i32 1) nounwind
  br label %6

; <label>:9                                       ; preds = %6
  call void (...)* @_ssdm_op_Wait(i32 1) nounwind
  call void @_ssdm_op_Write.ap_none.volatile.i2P(i2* %cmdOut_V, i2 0)
  %localFull_3 = call i1 @_ssdm_op_Read.ap_none.volatile.i1P(i1* %full)
  store volatile i1 %localFull_3, i1* %localFull, align 1
  call void (...)* @_ssdm_op_Wait(i32 1) nounwind
  call void @_ssdm_op_Write.ap_none.volatile.i2P(i2* %cmdOut_V, i2 1)
  br label %10

; <label>:10                                      ; preds = %11, %9
  %i_2 = phi i32 [ 0, %9 ], [ %i_1, %11 ]
  %localFull_load_1 = load volatile i1* %localFull, align 1
  %i_1 = add i32 %i_2, 1
  br i1 %localFull_load_1, label %12, label %11

; <label>:11                                      ; preds = %10
  call void @_ssdm_op_Write.ap_none.volatile.i2P(i2* %cmdOut_V, i2 1)
  call void (...)* @_ssdm_op_Wait(i32 1) nounwind
  %tmp_7 = zext i32 %i_2 to i64
  %random_priorities_addr = getelementptr [200 x i9]* @random_priorities, i64 0, i64 %tmp_7
  %random_priorities_load = load i9* %random_priorities_addr, align 2
  %tmp_9 = trunc i9 %random_priorities_load to i8
  call void @_ssdm_op_Write.ap_none.volatile.i8P(i8* %priorityOut_V, i8 %tmp_9)
  call void (...)* @_ssdm_op_Wait(i32 1) nounwind
  %localFull_4 = call i1 @_ssdm_op_Read.ap_none.volatile.i1P(i1* %full)
  store volatile i1 %localFull_4, i1* %localFull, align 1
  call void (...)* @_ssdm_op_Wait(i32 1) nounwind
  call void @_ssdm_op_Write.ap_none.volatile.i2P(i2* %cmdOut_V, i2 0)
  call void (...)* @_ssdm_op_Wait(i32 1) nounwind
  br label %10

; <label>:12                                      ; preds = %10
  call void (...)* @_ssdm_op_Wait(i32 1) nounwind
  call void @_ssdm_op_Write.ap_none.volatile.i2P(i2* %cmdOut_V, i2 0)
  %localEmpty_2 = call i1 @_ssdm_op_Read.ap_none.volatile.i1P(i1* %empty)
  store volatile i1 %localEmpty_2, i1* %localEmpty, align 1
  br label %13

; <label>:13                                      ; preds = %._crit_edge211, %12
  %last = phi i8 [ 0, %12 ], [ %priorityIn_V_read_4, %._crit_edge211 ]
  %result_3 = phi i32 [ %result_1, %12 ], [ %result_4, %._crit_edge211 ]
  %localEmpty_load_1 = load volatile i1* %localEmpty, align 1
  br i1 %localEmpty_load_1, label %16, label %14

; <label>:14                                      ; preds = %13
  call void @_ssdm_op_Write.ap_none.volatile.i2P(i2* %cmdOut_V, i2 -2)
  call void (...)* @_ssdm_op_Wait(i32 1) nounwind
  %priorityIn_V_read_2 = call i8 @_ssdm_op_Read.ap_none.volatile.i8P(i8* %priorityIn_V)
  %tmp_2 = icmp ugt i8 %last, %priorityIn_V_read_2
  br i1 %tmp_2, label %15, label %._crit_edge211

; <label>:15                                      ; preds = %14
  %priorityIn_V_read_3 = call i8 @_ssdm_op_Read.ap_none.volatile.i8P(i8* %priorityIn_V)
  %tmp_6 = zext i8 %priorityIn_V_read_3 to i32
  %result_6 = add nsw i32 %result_3, %tmp_6
  br label %._crit_edge211

._crit_edge211:                                   ; preds = %15, %14
  %result_4 = phi i32 [ %result_6, %15 ], [ %result_3, %14 ]
  call void (...)* @_ssdm_op_Wait(i32 1) nounwind
  %priorityIn_V_read_4 = call i8 @_ssdm_op_Read.ap_none.volatile.i8P(i8* %priorityIn_V)
  %localEmpty_4 = call i1 @_ssdm_op_Read.ap_none.volatile.i1P(i1* %empty)
  store volatile i1 %localEmpty_4, i1* %localEmpty, align 1
  call void (...)* @_ssdm_op_Wait(i32 1) nounwind
  call void @_ssdm_op_Write.ap_none.volatile.i2P(i2* %cmdOut_V, i2 0)
  call void (...)* @_ssdm_op_Wait(i32 1) nounwind
  br label %13

; <label>:16                                      ; preds = %13
  call void (...)* @_ssdm_op_Wait(i32 1) nounwind
  call void @_ssdm_op_Write.ap_none.volatile.i2P(i2* %cmdOut_V, i2 0)
  call void (...)* @_ssdm_op_Wait(i32 1) nounwind
  br label %1

; <label>:17                                      ; preds = %1
  %count_load = load i32* %count, align 4
  %empty_2 = call i32 (...)* @_ssdm_op_SpecRegionEnd([3 x i8]* @p_str6, i32 %tmp_8)
  call void @_ssdm_op_Write.ap_none.i32P(i32* %total, i32 %count_load)
  call void (...)* @_ssdm_op_SpecIFCore(i32* %total, [1 x i8]* @p_str1, [10 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void @_ssdm_op_Write.ap_ovld.i1P(i1* %finished, i1 true)
  call void (...)* @_ssdm_op_SpecIFCore(i1* %finished, [1 x i8]* @p_str1, [10 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  ret i32 %result
}

define weak void @_ssdm_op_SpecWire(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_Wait(...) nounwind {
entry:
  ret void
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecIFCore(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_Read.ap_vld.i32(i32) {
entry:
  ret i32 %0
}

define weak void @_ssdm_op_Write.ap_none.volatile.i8P(i8*, i8) {
entry:
  store i8 %1, i8* %0
  ret void
}

define weak i8 @_ssdm_op_Read.ap_none.volatile.i8P(i8*) {
entry:
  %empty = load i8* %0
  ret i8 %empty
}

define weak void @_ssdm_op_Write.ap_none.volatile.i2P(i2*, i2) {
entry:
  store i2 %1, i2* %0
  ret void
}

define weak i1 @_ssdm_op_Read.ap_none.volatile.i1P(i1*) {
entry:
  %empty = load i1* %0
  ret i1 %empty
}

define weak void @_ssdm_op_Write.ap_none.volatile.i1P(i1*, i1) {
entry:
  store i1 %1, i1* %0
  ret void
}

define weak void @_ssdm_op_Write.ap_ovld.i1P(i1*, i1) {
entry:
  store i1 %1, i1* %0
  ret void
}

define weak void @_ssdm_op_Write.ap_none.i32P(i32*, i32) {
entry:
  store i32 %1, i32* %0
  ret void
}

declare i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i8 @_ssdm_op_PartSelect.i8.i9.i32.i32(i9, i32, i32) nounwind readnone

!llvm.map.gv = !{!0}

!0 = metadata !{metadata !1, [1 x i32]* @llvm_global_ctors_0}
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0, i32 31, metadata !3}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !"llvm.global_ctors.0", metadata !5, metadata !""}
!5 = metadata !{metadata !6}
!6 = metadata !{i32 0, i32 0, i32 1}
!7 = metadata !{metadata !8}
!8 = metadata !{i32 0, i32 7, metadata !9}
!9 = metadata !{metadata !10}
!10 = metadata !{metadata !"priorityOut.V", metadata !5, metadata !"uint8"}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 0, i32 7, metadata !13}
!13 = metadata !{metadata !14}
!14 = metadata !{metadata !"priorityIn.V", metadata !5, metadata !"uint8"}
!15 = metadata !{metadata !16}
!16 = metadata !{i32 0, i32 1, metadata !17}
!17 = metadata !{metadata !18}
!18 = metadata !{metadata !"cmdOut.V", metadata !5, metadata !"uint2"}
!19 = metadata !{metadata !20}
!20 = metadata !{i32 0, i32 0, metadata !21}
!21 = metadata !{metadata !22}
!22 = metadata !{metadata !"empty", metadata !5, metadata !"bool"}
!23 = metadata !{metadata !24}
!24 = metadata !{i32 0, i32 0, metadata !25}
!25 = metadata !{metadata !26}
!26 = metadata !{metadata !"full", metadata !5, metadata !"bool"}
!27 = metadata !{metadata !28}
!28 = metadata !{i32 0, i32 0, metadata !29}
!29 = metadata !{metadata !30}
!30 = metadata !{metadata !"fullOut", metadata !5, metadata !"bool"}
!31 = metadata !{metadata !32}
!32 = metadata !{i32 0, i32 31, metadata !33}
!33 = metadata !{metadata !34}
!34 = metadata !{metadata !"iterations", metadata !35, metadata !"int"}
!35 = metadata !{metadata !36}
!36 = metadata !{i32 0, i32 0, i32 0}
!37 = metadata !{metadata !38}
!38 = metadata !{i32 0, i32 0, metadata !39}
!39 = metadata !{metadata !40}
!40 = metadata !{metadata !"finished", metadata !5, metadata !"bool"}
!41 = metadata !{metadata !42}
!42 = metadata !{i32 0, i32 31, metadata !43}
!43 = metadata !{metadata !44}
!44 = metadata !{metadata !"currentIteration", metadata !5, metadata !"int"}
!45 = metadata !{metadata !46}
!46 = metadata !{i32 0, i32 31, metadata !47}
!47 = metadata !{metadata !48}
!48 = metadata !{metadata !"total", metadata !5, metadata !"int"}
!49 = metadata !{metadata !50}
!50 = metadata !{i32 0, i32 31, metadata !51}
!51 = metadata !{metadata !52}
!52 = metadata !{metadata !"return", metadata !53, metadata !"int"}
!53 = metadata !{metadata !54}
!54 = metadata !{i32 0, i32 1, i32 0}
