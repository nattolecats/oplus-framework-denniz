.class Landroid/os/LooperMessageSuperviser$1;
.super Landroid/os/Handler;
.source "LooperMessageSuperviser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/LooperMessageSuperviser;->getLongMsgStackHandler()Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>(Landroid/os/Looper;)V
    .locals 0
    .param p1, "arg0"    # Landroid/os/Looper;

    .line 463
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 18
    .param p1, "msg1"    # Landroid/os/Message;

    .line 466
    move-object/from16 v1, p1

    invoke-static {}, Landroid/os/LooperMessageSuperviser;->-$$Nest$smisEnableLongMsgStackPrint()Z

    move-result v0

    if-nez v0, :cond_0

    .line 467
    return-void

    .line 469
    :cond_0
    invoke-static {}, Landroid/os/LooperMessageSuperviser;->-$$Nest$sfgetsTaskIdGen()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    .line 470
    .local v2, "taskId":I
    iget v3, v1, Landroid/os/Message;->arg1:I

    .line 471
    .local v3, "pid":I
    iget v4, v1, Landroid/os/Message;->arg2:I

    .line 472
    .local v4, "offest":I
    invoke-static {}, Landroid/os/LooperMessageSuperviser;->-$$Nest$sfgetsStackTraceArray()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const-string v5, "longMsgStackPrint"

    if-nez v0, :cond_3

    .line 473
    const/16 v6, 0xa

    .line 475
    .local v6, "stackDepth":I
    :try_start_0
    const-string v0, "persist.debug.lmsp.sd"

    const/16 v7, 0xc

    invoke-static {v0, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v6, v0

    .line 478
    goto :goto_0

    .line 476
    :catch_0
    move-exception v0

    .line 477
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "visit persist.debug.lmsp.sd got Exception:"

    invoke-static {v5, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 479
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    if-gtz v6, :cond_1

    .line 480
    const/16 v6, 0xc

    goto :goto_1

    .line 481
    :cond_1
    const/16 v0, 0x40

    if-le v6, v0, :cond_2

    .line 482
    const/16 v6, 0x40

    .line 484
    :cond_2
    :goto_1
    new-array v0, v6, [Ljava/lang/StackTraceElement;

    invoke-static {v0}, Landroid/os/LooperMessageSuperviser;->-$$Nest$sfputsStackTraceArray([Ljava/lang/StackTraceElement;)V

    .line 486
    .end local v6    # "stackDepth":I
    :cond_3
    invoke-static {}, Landroid/os/LooperMessageSuperviser;->-$$Nest$sfgetsMethodFillStackTraceElements()Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v0, :cond_4

    .line 488
    :try_start_1
    const-string v0, "dalvik.system.VMStack"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 489
    .local v0, "cls":Ljava/lang/Class;
    const-string v9, "fillStackTraceElements"

    new-array v10, v6, [Ljava/lang/Class;

    const-class v11, Ljava/lang/Thread;

    aput-object v11, v10, v7

    invoke-static {}, Landroid/os/LooperMessageSuperviser;->-$$Nest$sfgetsStackTraceArray()[Ljava/lang/StackTraceElement;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-virtual {v0, v9, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    invoke-static {v9}, Landroid/os/LooperMessageSuperviser;->-$$Nest$sfputsMethodFillStackTraceElements(Ljava/lang/reflect/Method;)V

    .line 490
    invoke-static {}, Landroid/os/LooperMessageSuperviser;->-$$Nest$sfgetsMethodFillStackTraceElements()Ljava/lang/reflect/Method;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 493
    .end local v0    # "cls":Ljava/lang/Class;
    goto :goto_2

    .line 491
    :catch_1
    move-exception v0

    .line 492
    .local v0, "e":Ljava/lang/Exception;
    const-string v9, "init sMethodFillStackTraceElements got Exception:"

    invoke-static {v5, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 494
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    invoke-static {}, Landroid/os/LooperMessageSuperviser;->-$$Nest$sfgetsMethodFillStackTraceElements()Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_4

    .line 495
    return-void

    .line 498
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 499
    .local v9, "start":J
    const/4 v0, 0x3

    new-array v11, v0, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v8

    const-wide/16 v12, 0x6d6

    int-to-long v14, v4

    add-long/2addr v14, v12

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v11, v6

    const-string v12, "%d#%d getStack start: running %d ms"

    invoke-static {v12, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :try_start_2
    invoke-static {}, Landroid/os/LooperMessageSuperviser;->-$$Nest$sfgetsMethodFillStackTraceElements()Ljava/lang/reflect/Method;

    move-result-object v11

    const/4 v12, 0x0

    new-array v13, v6, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/LooperMessageSuperviser;->-$$Nest$sfgetsMainThread()Ljava/lang/Thread;

    move-result-object v14

    aput-object v14, v13, v7

    invoke-static {}, Landroid/os/LooperMessageSuperviser;->-$$Nest$sfgetsStackTraceArray()[Ljava/lang/StackTraceElement;

    move-result-object v14

    aput-object v14, v13, v8

    invoke-virtual {v11, v12, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 504
    .local v11, "wrapDepth":Ljava/lang/Integer;
    if-eqz v11, :cond_6

    .line 505
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 506
    .local v12, "depth":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    sub-long/2addr v13, v9

    .line 507
    .local v13, "cost":J
    const-string v15, "%d#%d getStack ended: cost %d ms for %s"

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v0, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v0, v8

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v0, v6

    iget-object v8, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v16, 0x3

    aput-object v8, v0, v16

    invoke-static {v15, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    if-ge v0, v12, :cond_6

    .line 509
    const/16 v8, 0xa

    if-le v12, v8, :cond_5

    .line 510
    const-string v8, "  [%02d] %s"

    new-array v15, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v15, v7

    invoke-static {}, Landroid/os/LooperMessageSuperviser;->-$$Nest$sfgetsStackTraceArray()[Ljava/lang/StackTraceElement;

    move-result-object v16

    aget-object v16, v16, v0

    const/16 v17, 0x1

    aput-object v16, v15, v17

    invoke-static {v8, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v17, 0x1

    goto :goto_4

    .line 512
    :cond_5
    const-string v8, "  [%d] %s"

    new-array v15, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v15, v7

    invoke-static {}, Landroid/os/LooperMessageSuperviser;->-$$Nest$sfgetsStackTraceArray()[Ljava/lang/StackTraceElement;

    move-result-object v16

    aget-object v16, v16, v0

    const/16 v17, 0x1

    aput-object v16, v15, v17

    invoke-static {v8, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 508
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 518
    .end local v0    # "i":I
    .end local v11    # "wrapDepth":Ljava/lang/Integer;
    .end local v12    # "depth":I
    .end local v13    # "cost":J
    :cond_6
    goto :goto_5

    .line 516
    :catch_2
    move-exception v0

    .line 517
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "invoke sMethodFillStackTraceElements got Exception:"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 519
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5
    return-void
.end method
