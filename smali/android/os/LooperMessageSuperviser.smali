.class public Landroid/os/LooperMessageSuperviser;
.super Ljava/lang/Object;
.source "LooperMessageSuperviser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/LooperMessageSuperviser$CommandHandler;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z

.field private static final blacklist IS_DEBUG_PANIC:Z

.field private static final blacklist MAX_MONITOR_DELAY:I = 0x64

.field private static final blacklist MAX_OBJ_STRING_LEN:I = 0x80

.field private static final blacklist MONITOR_THREAD_ENABLED:Z

.field private static final blacklist MSGID_GET_STACK:I = 0x27d9

.field private static final blacklist MSG_BIND_APPLICATION:I = 0x6e

.field private static final blacklist MSG_EXECUTE_TRANSACTION:I = 0x9f

.field private static final blacklist PROCESS_STATUS_BACKGROUND:I = 0x0

.field private static final blacklist PROCESS_STATUS_FOREGROUND:I = 0x1

.field private static final blacklist PROCESS_STATUS_UNKNOW:I = -0x1

.field private static final blacklist SCREEN_ON:Ljava/lang/String; = "debug.tracing.screen_state"

.field private static final blacklist STACK_DEPTH_DEFAULT:I = 0xc

.field private static final blacklist STACK_DEPTH_MAX:I = 0x40

.field private static final blacklist STACK_DEPTH_PROP_NAME:Ljava/lang/String; = "persist.debug.lmsp.sd"

.field private static final blacklist STACK_TWO_DIGITAL_BIT:I = 0xa

.field private static final blacklist TAG:Ljava/lang/String; = "LooperMessageSuperviser"

.field private static final blacklist TAG_LONG_MSG_STACK_PRINT:Ljava/lang/String; = "longMsgStackPrint"

.field private static final blacklist TARGET_PKG_PROP_NAME:Ljava/lang/String; = "persist.debug.lmsp.tp"

.field private static final blacklist TIME_BASE_WAIT_MSG_FINISH:J = 0x6d6L

.field private static volatile blacklist sHandlerGetStackTrace:Landroid/os/Handler;

.field private static blacklist sMainThread:Ljava/lang/Thread;

.field private static blacklist sMethodFillStackTraceElements:Ljava/lang/reflect/Method;

.field private static final blacklist sRandomGen:Ljava/util/Random;

.field private static blacklist sStackTraceArray:[Ljava/lang/StackTraceElement;

.field private static blacklist sTargetPkgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sTaskIdGen:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static blacklist sWorkerThreadGetStackTrace:Landroid/os/HandlerThread;


# instance fields
.field private blacklist mCommonHandler:Landroid/os/LooperMessageSuperviser$CommandHandler;

.field private blacklist mForegroundFlag:I

.field private blacklist mHandlerThread:Landroid/os/HandlerThread;

.field private blacklist mHasJankInfo:Z

.field private blacklist mInForegroundRunning:Z

.field private final blacklist mPid:I

.field private final blacklist mProcNode:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetPackageName(Landroid/os/LooperMessageSuperviser;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Landroid/os/LooperMessageSuperviser;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$minnerEndLooperMessage(Landroid/os/LooperMessageSuperviser;Ljava/lang/StringBuilder;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/os/LooperMessageSuperviser;->innerEndLooperMessage(Ljava/lang/StringBuilder;Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetDEBUG()Z
    .locals 1

    sget-boolean v0, Landroid/os/LooperMessageSuperviser;->DEBUG:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsMainThread()Ljava/lang/Thread;
    .locals 1

    sget-object v0, Landroid/os/LooperMessageSuperviser;->sMainThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsMethodFillStackTraceElements()Ljava/lang/reflect/Method;
    .locals 1

    sget-object v0, Landroid/os/LooperMessageSuperviser;->sMethodFillStackTraceElements:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsStackTraceArray()[Ljava/lang/StackTraceElement;
    .locals 1

    sget-object v0, Landroid/os/LooperMessageSuperviser;->sStackTraceArray:[Ljava/lang/StackTraceElement;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsTaskIdGen()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    sget-object v0, Landroid/os/LooperMessageSuperviser;->sTaskIdGen:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfputsMethodFillStackTraceElements(Ljava/lang/reflect/Method;)V
    .locals 0

    sput-object p0, Landroid/os/LooperMessageSuperviser;->sMethodFillStackTraceElements:Ljava/lang/reflect/Method;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfputsStackTraceArray([Ljava/lang/StackTraceElement;)V
    .locals 0

    sput-object p0, Landroid/os/LooperMessageSuperviser;->sStackTraceArray:[Ljava/lang/StackTraceElement;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smisEnableLongMsgStackPrint()Z
    .locals 1

    invoke-static {}, Landroid/os/LooperMessageSuperviser;->isEnableLongMsgStackPrint()Z

    move-result v0

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 5

    .line 50
    const-string v0, "ro.build.release_type"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    sput-boolean v0, Landroid/os/LooperMessageSuperviser;->DEBUG:Z

    .line 52
    const-string v0, "sys.oplus.healthinfo.loopThread"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/os/LooperMessageSuperviser;->MONITOR_THREAD_ENABLED:Z

    .line 417
    const-string v0, "persist.sys.assert.panic"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/os/LooperMessageSuperviser;->IS_DEBUG_PANIC:Z

    .line 418
    const/4 v0, 0x0

    sput-object v0, Landroid/os/LooperMessageSuperviser;->sWorkerThreadGetStackTrace:Landroid/os/HandlerThread;

    .line 419
    sput-object v0, Landroid/os/LooperMessageSuperviser;->sHandlerGetStackTrace:Landroid/os/Handler;

    .line 420
    sput-object v0, Landroid/os/LooperMessageSuperviser;->sMainThread:Ljava/lang/Thread;

    .line 421
    sput-object v0, Landroid/os/LooperMessageSuperviser;->sStackTraceArray:[Ljava/lang/StackTraceElement;

    .line 422
    sput-object v0, Landroid/os/LooperMessageSuperviser;->sMethodFillStackTraceElements:Ljava/lang/reflect/Method;

    .line 423
    new-instance v2, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Random;-><init>(J)V

    sput-object v2, Landroid/os/LooperMessageSuperviser;->sRandomGen:Ljava/util/Random;

    .line 424
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v2, Landroid/os/LooperMessageSuperviser;->sTaskIdGen:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 433
    sput-object v0, Landroid/os/LooperMessageSuperviser;->sTargetPkgs:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 3

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/LooperMessageSuperviser;->mForegroundFlag:I

    .line 62
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iput v0, p0, Landroid/os/LooperMessageSuperviser;->mPid:I

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/proc/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/jank_info"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/LooperMessageSuperviser;->mProcNode:Ljava/lang/String;

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/LooperMessageSuperviser;->mHandlerThread:Landroid/os/HandlerThread;

    .line 66
    iput-object v0, p0, Landroid/os/LooperMessageSuperviser;->mCommonHandler:Landroid/os/LooperMessageSuperviser$CommandHandler;

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/LooperMessageSuperviser;->mHasJankInfo:Z

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/LooperMessageSuperviser;->mInForegroundRunning:Z

    return-void
.end method

.method private static blacklist beginLongMsgStackPrint(Landroid/os/Message;I)V
    .locals 7
    .param p0, "msg"    # Landroid/os/Message;
    .param p1, "pid"    # I

    .line 528
    invoke-static {}, Landroid/os/LooperMessageSuperviser;->isEnableLongMsgStackPrint()Z

    move-result v0

    if-nez v0, :cond_0

    .line 529
    return-void

    .line 532
    :cond_0
    invoke-static {}, Landroid/os/LooperMessageSuperviser;->getLongMsgStackHandler()Landroid/os/Handler;

    move-result-object v0

    .line 533
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_2

    .line 534
    sget-object v1, Landroid/os/LooperMessageSuperviser;->sRandomGen:Ljava/util/Random;

    const/16 v2, 0xfa

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-virtual {v1}, Ljava/util/Random;->nextBoolean()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_0
    mul-int/2addr v2, v1

    .line 535
    .local v2, "offest":I
    const/16 v1, 0x27d9

    invoke-virtual {p0}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 536
    .local v1, "delayMsg":Landroid/os/Message;
    const-wide/16 v3, 0x6d6

    int-to-long v5, v2

    add-long/2addr v5, v3

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 538
    .end local v1    # "delayMsg":Landroid/os/Message;
    .end local v2    # "offest":I
    :cond_2
    return-void
.end method

.method private blacklist callDeclaredMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "cls_name"    # Ljava/lang/String;
    .param p3, "method_name"    # Ljava/lang/String;
    .param p4, "parameterTypes"    # [Ljava/lang/Class;
    .param p5, "args"    # [Ljava/lang/Object;

    .line 387
    const-string v0, "LooperMessageSuperviser"

    const/4 v1, 0x0

    .line 389
    .local v1, "result":Ljava/lang/Object;
    :try_start_0
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 390
    .local v2, "cls":Ljava/lang/Class;
    invoke-virtual {v2, p3, p4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 391
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 392
    invoke-virtual {v3, p1, p5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 405
    .end local v2    # "cls":Ljava/lang/Class;
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :goto_0
    goto :goto_1

    .line 403
    :catch_0
    move-exception v0

    .line 404
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_1

    .line 401
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 402
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_0

    .line 399
    :catch_2
    move-exception v0

    .line 400
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_0

    .line 396
    :catch_3
    move-exception v2

    .line 397
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NoSuchMethodException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_0

    .line 393
    :catch_4
    move-exception v2

    .line 394
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ClassNotFoundException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    goto :goto_0

    .line 406
    :goto_1
    return-object v1
.end method

.method public static whitelist debugI(Ljava/lang/String;)V
    .locals 1
    .param p0, "logContent"    # Ljava/lang/String;

    .line 410
    sget-boolean v0, Landroid/os/LooperMessageSuperviser;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 411
    const-string v0, "LooperMessageSuperviser"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_0
    return-void
.end method

.method private static blacklist endedLongMsgStackPrint(Landroid/os/Message;JI)V
    .locals 6
    .param p0, "msg"    # Landroid/os/Message;
    .param p1, "mStartTime"    # J
    .param p3, "pid"    # I

    .line 541
    invoke-static {}, Landroid/os/LooperMessageSuperviser;->isEnableLongMsgStackPrint()Z

    move-result v0

    if-nez v0, :cond_0

    .line 542
    return-void

    .line 544
    :cond_0
    invoke-static {}, Landroid/os/LooperMessageSuperviser;->getLongMsgStackHandler()Landroid/os/Handler;

    move-result-object v0

    .line 545
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_2

    .line 546
    const/16 v1, 0x27d9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    .line 547
    .local v2, "msgNotFired":Z
    if-eqz v2, :cond_1

    .line 548
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 550
    :cond_1
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 551
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x1

    sget-object v4, Landroid/os/LooperMessageSuperviser;->sTaskIdGen:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, p1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v3

    .line 550
    const-string v3, "%d#%d finished, total cost %d ms, as getStack fired"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "longMsgStackPrint"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    .end local v2    # "msgNotFired":Z
    :cond_2
    :goto_0
    return-void
.end method

.method private static blacklist getLongMsgStackHandler()Landroid/os/Handler;
    .locals 3

    .line 457
    sget-object v0, Landroid/os/LooperMessageSuperviser;->sHandlerGetStackTrace:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 458
    const-class v0, Landroid/os/LooperMessageSuperviser;

    monitor-enter v0

    .line 459
    :try_start_0
    sget-object v1, Landroid/os/LooperMessageSuperviser;->sHandlerGetStackTrace:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 460
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "longMsgStackPrint"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v1, Landroid/os/LooperMessageSuperviser;->sWorkerThreadGetStackTrace:Landroid/os/HandlerThread;

    .line 461
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 462
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    sput-object v1, Landroid/os/LooperMessageSuperviser;->sMainThread:Ljava/lang/Thread;

    .line 463
    new-instance v1, Landroid/os/LooperMessageSuperviser$1;

    sget-object v2, Landroid/os/LooperMessageSuperviser;->sWorkerThreadGetStackTrace:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/LooperMessageSuperviser$1;-><init>(Landroid/os/Looper;)V

    sput-object v1, Landroid/os/LooperMessageSuperviser;->sHandlerGetStackTrace:Landroid/os/Handler;

    .line 522
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 524
    :cond_1
    :goto_0
    sget-object v0, Landroid/os/LooperMessageSuperviser;->sHandlerGetStackTrace:Landroid/os/Handler;

    return-object v0
.end method

.method private blacklist getPackageName()Ljava/lang/String;
    .locals 2

    .line 206
    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "packageName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 208
    const-string v1, "system_server"

    return-object v1

    .line 210
    :cond_0
    return-object v0
.end method

.method private blacklist getProcessName()Ljava/lang/String;
    .locals 2

    .line 257
    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, "processName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 259
    const-string v1, "system_server"

    return-object v1

    .line 261
    :cond_0
    return-object v0
.end method

.method private blacklist getSchedGroup(I)I
    .locals 2
    .param p1, "pid"    # I

    .line 275
    :try_start_0
    invoke-static {p1}, Landroid/os/Process;->getProcessGroup(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 276
    :catch_0
    move-exception v0

    .line 277
    .local v0, "e":Ljava/lang/Exception;
    const v1, 0x7fffffff

    return v1
.end method

.method private blacklist getThreadSchedulePolicy(I)I
    .locals 2
    .param p1, "pid"    # I

    .line 283
    :try_start_0
    invoke-static {p1}, Landroid/os/Process;->getThreadScheduler(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist innerEndLooperMessage(Ljava/lang/StringBuilder;Z)V
    .locals 2
    .param p1, "blockedMsg"    # Ljava/lang/StringBuilder;
    .param p2, "isDelayed"    # Z

    .line 319
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 320
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Blocked msg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Quality"

    invoke-direct {p0, v1, v0}, Landroid/os/LooperMessageSuperviser;->logP(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    :cond_0
    return-void
.end method

.method private blacklist isActivityLifecycleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 218
    const/4 v0, 0x0

    .line 219
    .local v0, "isActivity":Z
    invoke-direct {p0, p1}, Landroid/os/LooperMessageSuperviser;->isMessageOk(Landroid/os/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    invoke-virtual {p1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 221
    .local v1, "activityLifecycleMessageClass":Ljava/lang/String;
    iget v2, p1, Landroid/os/Message;->what:I

    .line 222
    .local v2, "what":I
    const/16 v3, 0x9f

    if-ne v2, v3, :cond_0

    const-string v3, "android.app.ActivityThread$H"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 223
    const/4 v0, 0x1

    .line 226
    .end local v1    # "activityLifecycleMessageClass":Ljava/lang/String;
    .end local v2    # "what":I
    :cond_0
    return v0
.end method

.method private blacklist isApplicationBindMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 230
    const/4 v0, 0x0

    .line 231
    .local v0, "isBind":Z
    invoke-direct {p0, p1}, Landroid/os/LooperMessageSuperviser;->isMessageOk(Landroid/os/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    invoke-virtual {p1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 233
    .local v1, "applicationBindMessageClass":Ljava/lang/String;
    iget v2, p1, Landroid/os/Message;->what:I

    .line 234
    .local v2, "what":I
    const/16 v3, 0x6e

    if-ne v2, v3, :cond_0

    const-string v3, "android.app.ActivityThread$H"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 235
    const/4 v0, 0x1

    .line 238
    .end local v1    # "applicationBindMessageClass":Ljava/lang/String;
    .end local v2    # "what":I
    :cond_0
    return v0
.end method

.method private static blacklist isEnableLongMsgStackPrint()Z
    .locals 7

    .line 436
    sget-boolean v0, Landroid/os/LooperMessageSuperviser;->IS_DEBUG_PANIC:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 437
    return v1

    .line 439
    :cond_0
    sget-object v0, Landroid/os/LooperMessageSuperviser;->sTargetPkgs:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 440
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Landroid/os/LooperMessageSuperviser;->sTargetPkgs:Ljava/util/ArrayList;

    .line 441
    const-string v0, "persist.debug.lmsp.tp"

    const-string v2, ""

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 442
    .local v0, "propValue":Ljava/lang/String;
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 443
    .local v2, "propValueSplits":[Ljava/lang/String;
    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 444
    .local v5, "pkg":Ljava/lang/String;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 445
    sget-object v6, Landroid/os/LooperMessageSuperviser;->sTargetPkgs:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    .end local v5    # "pkg":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 449
    .end local v0    # "propValue":Ljava/lang/String;
    .end local v2    # "propValueSplits":[Ljava/lang/String;
    :cond_2
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    .line 450
    .local v0, "curPkgName":Ljava/lang/String;
    sget-object v2, Landroid/os/LooperMessageSuperviser;->sTargetPkgs:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    .line 451
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 453
    :cond_3
    return v1
.end method

.method private blacklist isForegroundApp(I)Z
    .locals 3
    .param p1, "pid"    # I

    .line 265
    iget v0, p0, Landroid/os/LooperMessageSuperviser;->mForegroundFlag:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/os/LooperMessageSuperviser;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private blacklist isFrameDisplayMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 242
    const/4 v0, 0x0

    .line 243
    .local v0, "isFrame":Z
    invoke-direct {p0, p1}, Landroid/os/LooperMessageSuperviser;->isMessageOk(Landroid/os/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    invoke-virtual {p1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 245
    .local v1, "frameDisplayMessageTargetClass":Ljava/lang/String;
    const-string v2, "android.view.Choreographer$FrameHandler"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 246
    const/4 v0, 0x1

    .line 249
    .end local v1    # "frameDisplayMessageTargetClass":Ljava/lang/String;
    :cond_0
    return v0
.end method

.method private blacklist isLaunchFocusMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 214
    invoke-direct {p0, p1}, Landroid/os/LooperMessageSuperviser;->isFrameDisplayMessage(Landroid/os/Message;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Landroid/os/LooperMessageSuperviser;->isActivityLifecycleMessage(Landroid/os/Message;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Landroid/os/LooperMessageSuperviser;->isApplicationBindMessage(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private blacklist isMessageOk(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 253
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist launchMonitorThread()V
    .locals 2

    .line 145
    sget-boolean v0, Landroid/os/LooperMessageSuperviser;->MONITOR_THREAD_ENABLED:Z

    if-eqz v0, :cond_0

    .line 146
    const-string v0, "MAIN LOOP MONITOR THREAD STARTED"

    invoke-static {v0}, Landroid/os/LooperMessageSuperviser;->debugI(Ljava/lang/String;)V

    .line 147
    invoke-static {}, Landroid/os/OplusAppBackgroundThread;->get()Landroid/os/OplusAppBackgroundThread;

    move-result-object v0

    iput-object v0, p0, Landroid/os/LooperMessageSuperviser;->mHandlerThread:Landroid/os/HandlerThread;

    .line 148
    new-instance v0, Landroid/os/LooperMessageSuperviser$CommandHandler;

    iget-object v1, p0, Landroid/os/LooperMessageSuperviser;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/os/LooperMessageSuperviser$CommandHandler;-><init>(Landroid/os/LooperMessageSuperviser;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/os/LooperMessageSuperviser;->mCommonHandler:Landroid/os/LooperMessageSuperviser$CommandHandler;

    .line 150
    :cond_0
    return-void
.end method

.method private blacklist logP(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .line 381
    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v5, v2

    const-class v1, Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v1, v5, v3

    new-array v6, v0, [Ljava/lang/Object;

    aput-object p1, v6, v2

    aput-object p2, v6, v3

    const/4 v2, 0x0

    const-string v3, "android.util.Log"

    const-string v4, "p"

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Landroid/os/LooperMessageSuperviser;->callDeclaredMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    return-void
.end method

.method private blacklist monitorReady()Z
    .locals 1

    .line 153
    iget-object v0, p0, Landroid/os/LooperMessageSuperviser;->mCommonHandler:Landroid/os/LooperMessageSuperviser$CommandHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/LooperMessageSuperviser;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 153
    :goto_0
    return v0
.end method

.method private blacklist toStringLite(Landroid/os/Message;JZ)Ljava/lang/String;
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "now"    # J
    .param p4, "showObj"    # Z

    .line 326
    if-nez p1, :cond_0

    .line 327
    const-string v0, "NULL_MESSAGE"

    return-object v0

    .line 330
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 331
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string v1, "{ when="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    iget-wide v1, p1, Landroid/os/Message;->when:J

    sub-long/2addr v1, p2

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 333
    iget-object v1, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    const-string v2, " obj="

    const/16 v3, 0x80

    const-string v4, " callback="

    if-eqz v1, :cond_5

    .line 334
    const-string v1, " what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 336
    const-string v1, " target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    iget-object v1, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    iget-object v1, p1, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    .line 340
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    iget-object v1, p1, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    :cond_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_2

    .line 345
    const-string v1, " arg1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 349
    :cond_2
    iget v1, p1, Landroid/os/Message;->arg2:I

    if-eqz v1, :cond_3

    .line 350
    const-string v1, " arg2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 354
    :cond_3
    if-eqz p4, :cond_8

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_8

    .line 355
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_4

    .line 356
    const-string v1, "TOO_LONG"

    goto :goto_0

    :cond_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 357
    .local v1, "objStr":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    .end local v1    # "objStr":Ljava/lang/String;
    goto :goto_2

    .line 362
    :cond_5
    const-string v1, " barrier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 365
    iget-object v1, p1, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-eqz v1, :cond_6

    .line 366
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    iget-object v1, p1, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 369
    :cond_6
    if-eqz p4, :cond_8

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_8

    .line 370
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_7

    .line 371
    const-string v1, "TOO LONG"

    goto :goto_1

    :cond_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 372
    .restart local v1    # "objStr":Ljava/lang/String;
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    .end local v1    # "objStr":Ljava/lang/String;
    :cond_8
    :goto_2
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist uploadLongTimeMessage(JLandroid/os/Message;JI)Ljava/lang/StringBuilder;
    .locals 5
    .param p1, "processTime"    # J
    .param p3, "message"    # Landroid/os/Message;
    .param p4, "timeFirst"    # J
    .param p6, "pid"    # I

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 291
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 292
    .local v1, "briefSb":Ljava/lang/StringBuilder;
    const-string v2, "Package name: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    invoke-direct {p0}, Landroid/os/LooperMessageSuperviser;->getProcessName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    const-string v2, " [ "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    const-string v2, "schedGroup: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    invoke-direct {p0, p6}, Landroid/os/LooperMessageSuperviser;->getSchedGroup(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 297
    const-string v2, " schedPolicy: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-direct {p0, p6}, Landroid/os/LooperMessageSuperviser;->getThreadSchedulePolicy(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 299
    const-string v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    const-string v2, " process the message: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    add-long v2, p1, p4

    const/4 v4, 0x1

    invoke-direct {p0, p3, v2, v3, v4}, Landroid/os/LooperMessageSuperviser;->toStringLite(Landroid/os/Message;JZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    const-string v2, " took "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 304
    const-string v2, " ms"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    return-object v0
.end method


# virtual methods
.method public whitelist beginLooperMessage(Landroid/os/Message;I)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "loopPid"    # I

    .line 72
    sget-boolean v0, Landroid/os/OplusDebug;->DEBUG_SYSTRACE_TAG:Z

    if-eqz v0, :cond_0

    .line 73
    const-wide/16 v0, 0x8

    iget-object v2, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->getTraceName(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 77
    :cond_0
    invoke-static {p1, p2}, Landroid/os/LooperMessageSuperviser;->beginLongMsgStackPrint(Landroid/os/Message;I)V

    .line 80
    iget v0, p0, Landroid/os/LooperMessageSuperviser;->mPid:I

    invoke-direct {p0, v0}, Landroid/os/LooperMessageSuperviser;->isForegroundApp(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/LooperMessageSuperviser;->mInForegroundRunning:Z

    .line 81
    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/os/LooperMessageSuperviser;->mCommonHandler:Landroid/os/LooperMessageSuperviser$CommandHandler;

    if-nez v0, :cond_1

    .line 83
    invoke-direct {p0}, Landroid/os/LooperMessageSuperviser;->launchMonitorThread()V

    .line 86
    :cond_1
    invoke-static {}, Landroid/os/OplusTheiaUIMonitor;->getInstance()Landroid/os/OplusTheiaUIMonitor;

    move-result-object v0

    iget-boolean v1, p0, Landroid/os/LooperMessageSuperviser;->mInForegroundRunning:Z

    invoke-virtual {v0, p1, v1}, Landroid/os/OplusTheiaUIMonitor;->messageBegin(Landroid/os/Message;Z)V

    .line 87
    return-void
.end method

.method public whitelist endLooperMessage(Landroid/os/Message;JI)V
    .locals 15
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "loopStartTime"    # J
    .param p4, "loopPid"    # I

    .line 99
    move-object v7, p0

    move-object/from16 v8, p1

    invoke-static/range {p1 .. p4}, Landroid/os/LooperMessageSuperviser;->endedLongMsgStackPrint(Landroid/os/Message;JI)V

    .line 102
    iget v0, v7, Landroid/os/LooperMessageSuperviser;->mPid:I

    invoke-direct {p0, v0}, Landroid/os/LooperMessageSuperviser;->isForegroundApp(I)Z

    move-result v0

    iput-boolean v0, v7, Landroid/os/LooperMessageSuperviser;->mInForegroundRunning:Z

    .line 103
    if-eqz v0, :cond_0

    iget-object v0, v7, Landroid/os/LooperMessageSuperviser;->mCommonHandler:Landroid/os/LooperMessageSuperviser$CommandHandler;

    if-nez v0, :cond_0

    .line 105
    invoke-direct {p0}, Landroid/os/LooperMessageSuperviser;->launchMonitorThread()V

    .line 108
    :cond_0
    iget-boolean v0, v7, Landroid/os/LooperMessageSuperviser;->mInForegroundRunning:Z

    if-eqz v0, :cond_5

    invoke-direct {p0}, Landroid/os/LooperMessageSuperviser;->monitorReady()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 109
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 110
    .local v9, "nowTime":J
    sub-long v11, v9, p2

    .line 111
    .local v11, "processTime":J
    sget v0, Landroid/os/OplusDebug;->LOOPER_DELAY:I

    int-to-long v0, v0

    cmp-long v0, v11, v0

    const/4 v1, 0x1

    if-ltz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move v13, v0

    .line 113
    .local v13, "delayed":Z
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v14

    .line 114
    .local v14, "transferMsg":Landroid/os/Message;
    if-eqz v13, :cond_2

    iget-boolean v0, v7, Landroid/os/LooperMessageSuperviser;->mInForegroundRunning:Z

    if-eqz v0, :cond_2

    .line 115
    const/4 v1, 0x2

    goto :goto_1

    .line 116
    :cond_2
    nop

    :goto_1
    iput v1, v14, Landroid/os/Message;->what:I

    .line 118
    sget v0, Landroid/os/OplusDebug;->LAUNCH_DELAY:I

    int-to-long v0, v0

    cmp-long v0, v11, v0

    if-ltz v0, :cond_3

    invoke-direct/range {p0 .. p1}, Landroid/os/LooperMessageSuperviser;->isLaunchFocusMessage(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 119
    invoke-static {}, Landroid/os/OplusJankMonitor$LaunchTracker;->getInstance()Landroid/os/OplusJankMonitor$LaunchTracker;

    move-result-object v0

    invoke-direct {p0}, Landroid/os/LooperMessageSuperviser;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    iget v5, v8, Landroid/os/Message;->what:I

    move-wide v2, v11

    invoke-virtual/range {v0 .. v5}, Landroid/os/OplusJankMonitor$LaunchTracker;->setLaunchStageTime(Ljava/lang/String;JLjava/lang/String;I)V

    .line 122
    :cond_3
    if-eqz v13, :cond_5

    .line 123
    iget v6, v7, Landroid/os/LooperMessageSuperviser;->mPid:I

    move-object v0, p0

    move-wide v1, v11

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    invoke-direct/range {v0 .. v6}, Landroid/os/LooperMessageSuperviser;->uploadLongTimeMessage(JLandroid/os/Message;JI)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 124
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 125
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "blockedMsg"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 126
    iput-object v1, v14, Landroid/os/Message;->data:Landroid/os/Bundle;

    .line 127
    sget-boolean v2, Landroid/os/LooperMessageSuperviser;->DEBUG:Z

    if-eqz v2, :cond_4

    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Blocked2.0 msg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/LooperMessageSuperviser;->debugI(Ljava/lang/String;)V

    .line 131
    :cond_4
    iget-object v2, v7, Landroid/os/LooperMessageSuperviser;->mCommonHandler:Landroid/os/LooperMessageSuperviser$CommandHandler;

    invoke-virtual {v2, v14}, Landroid/os/LooperMessageSuperviser$CommandHandler;->sendMessage(Landroid/os/Message;)Z

    .line 135
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v9    # "nowTime":J
    .end local v11    # "processTime":J
    .end local v13    # "delayed":Z
    .end local v14    # "transferMsg":Landroid/os/Message;
    :cond_5
    sget-boolean v0, Landroid/os/OplusDebug;->DEBUG_SYSTRACE_TAG:Z

    if-eqz v0, :cond_6

    .line 136
    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 138
    :cond_6
    invoke-static {}, Landroid/os/OplusTheiaUIMonitor;->getInstance()Landroid/os/OplusTheiaUIMonitor;

    move-result-object v0

    iget-boolean v1, v7, Landroid/os/LooperMessageSuperviser;->mInForegroundRunning:Z

    invoke-virtual {v0, v8, v1}, Landroid/os/OplusTheiaUIMonitor;->messageEnd(Landroid/os/Message;Z)V

    .line 139
    return-void
.end method

.method blacklist isScreenOn()Z
    .locals 2

    .line 269
    const-string v0, "debug.tracing.screen_state"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 270
    .local v0, "state":I
    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public whitelist setForebackStatus()V
    .locals 2

    .line 309
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 310
    .local v0, "activityThread":Landroid/app/ActivityThread;
    iget-object v1, v0, Landroid/app/ActivityThread;->mOplusActivityThreadExt:Landroid/app/IActivityThreadExt;

    invoke-interface {v1}, Landroid/app/IActivityThreadExt;->isTopApp()Z

    move-result v1

    iput v1, p0, Landroid/os/LooperMessageSuperviser;->mForegroundFlag:I

    .line 311
    return-void
.end method
