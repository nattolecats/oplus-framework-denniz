.class public Landroid/os/OplusTheiaUIMonitor;
.super Ljava/lang/Object;
.source "OplusTheiaUIMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/OplusTheiaUIMonitor$MonitorThread;,
        Landroid/os/OplusTheiaUIMonitor$OplusTheiaUIMonitorHolder;,
        Landroid/os/OplusTheiaUIMonitor$TheiaConst;
    }
.end annotation


# static fields
.field private static final blacklist BIND_APPLICATION_MSG:I = 0x6e

.field private static final blacklist CLASS_LOG:Ljava/lang/String; = "android.util.Log"

.field private static final blacklist EXECUTE_TRANSACTION_MSG:I = 0x9f

.field private static final blacklist GOT_TRACE_FREQUENTLY_THRESHOLD:I = 0xea60

.field private static final blacklist JIFFIES_MS:J

.field private static final blacklist LOG_SWITCH_ON:Z

.field private static final blacklist MAX_TRACE_LENGTH:I = 0x1e

.field private static final blacklist METHOD_P:Ljava/lang/String; = "p"

.field private static final blacklist PRINT_DETAIL_LOG:Z

.field private static final blacklist PROCESS_STATS_FORMAT:[I

.field private static final blacklist PROCESS_STAT_STIME:I = 0x3

.field private static final blacklist PROCESS_STAT_UTIME:I = 0x2

.field private static final blacklist RELAUNCH_ACTIVITY_MSG:I = 0xa0

.field private static final blacklist SCREEN_OFF_WAIT_TIME:I = 0x7530

.field private static final blacklist TAG:Ljava/lang/String; = "OplusTheiaUIMonitorTag"

.field private static final blacklist UIMONITOR_ENABLE_FOR_DEBUG:Z

.field private static final blacklist mLock:Ljava/lang/Object;

.field private static blacklist sLogP:Ljava/lang/reflect/Method;


# instance fields
.field private volatile blacklist mBlockTrace:Ljava/lang/StringBuilder;

.field private blacklist mDateFormat:Ljava/text/SimpleDateFormat;

.field private blacklist mMessageGetStackCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private blacklist mMessageGetStackCountMax:I

.field private blacklist mMessageGetStackInterval:J

.field private volatile blacklist mMessageProcessStartTime:J

.field private blacklist mMonitorThread:Landroid/os/OplusTheiaUIMonitor$MonitorThread;

.field private final blacklist mProcessStatsData:[J

.field private volatile blacklist mStartUtmStmCount:J

.field private blacklist mUILooperMessageTimeout:J

.field private blacklist mUITimeoutEnable:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmMessageGetStackCountMax(Landroid/os/OplusTheiaUIMonitor;)I
    .locals 0

    iget p0, p0, Landroid/os/OplusTheiaUIMonitor;->mMessageGetStackCountMax:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMessageGetStackInterval(Landroid/os/OplusTheiaUIMonitor;)J
    .locals 2

    iget-wide v0, p0, Landroid/os/OplusTheiaUIMonitor;->mMessageGetStackInterval:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMessageProcessStartTime(Landroid/os/OplusTheiaUIMonitor;)J
    .locals 2

    iget-wide v0, p0, Landroid/os/OplusTheiaUIMonitor;->mMessageProcessStartTime:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUILooperMessageTimeout(Landroid/os/OplusTheiaUIMonitor;)J
    .locals 2

    iget-wide v0, p0, Landroid/os/OplusTheiaUIMonitor;->mUILooperMessageTimeout:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$mappendBlockTrace(Landroid/os/OplusTheiaUIMonitor;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/os/OplusTheiaUIMonitor;->appendBlockTrace(Ljava/lang/String;Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdetailLog(Landroid/os/OplusTheiaUIMonitor;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/OplusTheiaUIMonitor;->detailLog(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetBlockTrace(Landroid/os/OplusTheiaUIMonitor;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Landroid/os/OplusTheiaUIMonitor;->getBlockTrace()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetPackageName(Landroid/os/OplusTheiaUIMonitor;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Landroid/os/OplusTheiaUIMonitor;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetUIThreadMiniStackInfo(Landroid/os/OplusTheiaUIMonitor;Ljava/lang/Thread;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/os/OplusTheiaUIMonitor;->getUIThreadMiniStackInfo(Ljava/lang/Thread;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$misMessageProcessing(Landroid/os/OplusTheiaUIMonitor;)Z
    .locals 0

    invoke-direct {p0}, Landroid/os/OplusTheiaUIMonitor;->isMessageProcessing()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$msendUITimeoutEvent(Landroid/os/OplusTheiaUIMonitor;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/os/OplusTheiaUIMonitor;->sendUITimeoutEvent(Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 8

    .line 52
    const-string v0, "OplusTheiaUIMonitorTag"

    const-string v1, "persist.sys.uito.detaillog"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Landroid/os/OplusTheiaUIMonitor;->PRINT_DETAIL_LOG:Z

    .line 53
    const-string v1, "persist.sys.uito.enable"

    const/4 v3, 0x1

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Landroid/os/OplusTheiaUIMonitor;->UIMONITOR_ENABLE_FOR_DEBUG:Z

    .line 54
    const-string v1, "persist.sys.assert.panic"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Landroid/os/OplusTheiaUIMonitor;->LOG_SWITCH_ON:Z

    .line 55
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Landroid/os/OplusTheiaUIMonitor;->mLock:Ljava/lang/Object;

    .line 64
    sget v1, Landroid/system/OsConstants;->_SC_CLK_TCK:I

    invoke-static {v1}, Landroid/system/Os;->sysconf(I)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v6, v4

    sput-wide v6, Landroid/os/OplusTheiaUIMonitor;->JIFFIES_MS:J

    .line 71
    const/16 v1, 0xf

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    sput-object v1, Landroid/os/OplusTheiaUIMonitor;->PROCESS_STATS_FORMAT:[I

    .line 89
    const/4 v1, 0x0

    sput-object v1, Landroid/os/OplusTheiaUIMonitor;->sLogP:Ljava/lang/reflect/Method;

    .line 107
    :try_start_0
    const-string v1, "android.util.Log"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 108
    .local v1, "clz":Ljava/lang/Class;
    const-string v4, "p"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v2

    const-class v2, Ljava/lang/String;

    aput-object v2, v5, v3

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Landroid/os/OplusTheiaUIMonitor;->sLogP:Ljava/lang/reflect/Method;

    .line 109
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "clz":Ljava/lang/Class;
    goto :goto_0

    .line 114
    :catch_0
    move-exception v1

    .line 115
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "failed to set sLogP"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 112
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 113
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const-string v2, "failed to find method."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_0

    .line 110
    :catch_2
    move-exception v1

    .line 111
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string v2, "failed to find class."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :goto_0
    nop

    .line 117
    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x20
        0x220
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
        0x20
        0x2020
        0x20
        0x2020
        0x2020
    .end array-data
.end method

.method private constructor blacklist <init>()V
    .locals 5

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/4 v0, 0x4

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/os/OplusTheiaUIMonitor;->mProcessStatsData:[J

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/OplusTheiaUIMonitor;->mUITimeoutEnable:Z

    .line 95
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/OplusTheiaUIMonitor;->mMonitorThread:Landroid/os/OplusTheiaUIMonitor$MonitorThread;

    .line 96
    const-wide/16 v1, 0xbb8

    iput-wide v1, p0, Landroid/os/OplusTheiaUIMonitor;->mUILooperMessageTimeout:J

    .line 98
    const/4 v1, 0x2

    iput v1, p0, Landroid/os/OplusTheiaUIMonitor;->mMessageGetStackCountMax:I

    .line 99
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroid/os/OplusTheiaUIMonitor;->mStartUtmStmCount:J

    .line 100
    const-wide v1, 0x7fffffffffffffffL

    iput-wide v1, p0, Landroid/os/OplusTheiaUIMonitor;->mMessageProcessStartTime:J

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Landroid/os/OplusTheiaUIMonitor;->mBlockTrace:Ljava/lang/StringBuilder;

    .line 102
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/os/OplusTheiaUIMonitor;->mDateFormat:Ljava/text/SimpleDateFormat;

    .line 103
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Landroid/os/OplusTheiaUIMonitor;->mMessageGetStackCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 125
    iget-wide v1, p0, Landroid/os/OplusTheiaUIMonitor;->mUILooperMessageTimeout:J

    iget v3, p0, Landroid/os/OplusTheiaUIMonitor;->mMessageGetStackCountMax:I

    int-to-long v3, v3

    div-long/2addr v1, v3

    iput-wide v1, p0, Landroid/os/OplusTheiaUIMonitor;->mMessageGetStackInterval:J

    .line 126
    sget-boolean v1, Landroid/os/OplusTheiaUIMonitor;->UIMONITOR_ENABLE_FOR_DEBUG:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/os/OplusTheiaUIMonitor;->getUITimeoutEnableFromProp()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Landroid/os/OplusTheiaUIMonitor;->mUITimeoutEnable:Z

    .line 127
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/OplusTheiaUIMonitor-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/OplusTheiaUIMonitor;-><init>()V

    return-void
.end method

.method private blacklist appendBlockTrace(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "strBlockTrace"    # Ljava/lang/String;
    .param p2, "clearTrace"    # Z

    .line 389
    if-eqz p2, :cond_0

    .line 390
    iget-object v0, p0, Landroid/os/OplusTheiaUIMonitor;->mBlockTrace:Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/os/OplusTheiaUIMonitor;->mBlockTrace:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 391
    iget-object v0, p0, Landroid/os/OplusTheiaUIMonitor;->mMessageGetStackCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 392
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/OplusTheiaUIMonitor;->getCpuJiffyForPid(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/OplusTheiaUIMonitor;->mStartUtmStmCount:J

    .line 395
    :cond_0
    iget-object v0, p0, Landroid/os/OplusTheiaUIMonitor;->mBlockTrace:Ljava/lang/StringBuilder;

    const-string v1, "Stack "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/OplusTheiaUIMonitor;->mMessageGetStackCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    iget-object v0, p0, Landroid/os/OplusTheiaUIMonitor;->mBlockTrace:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    return-void
.end method

.method private blacklist callLogPStaticMethod([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "args"    # [Ljava/lang/Object;

    .line 426
    const/4 v0, 0x0

    .line 427
    .local v0, "result":Ljava/lang/Object;
    sget-object v1, Landroid/os/OplusTheiaUIMonitor;->sLogP:Ljava/lang/reflect/Method;

    const-string v2, "OplusTheiaUIMonitorTag"

    if-eqz v1, :cond_0

    .line 429
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1, v3, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 432
    :goto_0
    goto :goto_1

    .line 430
    :catch_0
    move-exception v1

    .line 431
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    const-string v3, "failed to invoke method."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/ReflectiveOperationException;
    goto :goto_0

    .line 434
    :cond_0
    const-string v1, "failed to invoke logP static method."

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :goto_1
    return-object v0
.end method

.method private blacklist checkStartMonitorThreadIfNeeded(Z)V
    .locals 2
    .param p1, "bForegroudApp"    # Z

    .line 237
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/os/OplusTheiaUIMonitor;->mMonitorThread:Landroid/os/OplusTheiaUIMonitor$MonitorThread;

    if-nez v0, :cond_0

    .line 238
    new-instance v0, Landroid/os/OplusTheiaUIMonitor$MonitorThread;

    invoke-direct {v0, p0}, Landroid/os/OplusTheiaUIMonitor$MonitorThread;-><init>(Landroid/os/OplusTheiaUIMonitor;)V

    iput-object v0, p0, Landroid/os/OplusTheiaUIMonitor;->mMonitorThread:Landroid/os/OplusTheiaUIMonitor$MonitorThread;

    .line 239
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/os/OplusTheiaUIMonitor$MonitorThread;->mStarted:Z

    .line 240
    iget-object v0, p0, Landroid/os/OplusTheiaUIMonitor;->mMonitorThread:Landroid/os/OplusTheiaUIMonitor$MonitorThread;

    invoke-virtual {v0}, Landroid/os/OplusTheiaUIMonitor$MonitorThread;->start()V

    .line 242
    :cond_0
    return-void
.end method

.method private blacklist checkStartOrStopMonitorThreadIfNeeded(Z)V
    .locals 0
    .param p1, "bForegroudApp"    # Z

    .line 253
    invoke-direct {p0, p1}, Landroid/os/OplusTheiaUIMonitor;->checkStartMonitorThreadIfNeeded(Z)V

    .line 254
    invoke-direct {p0, p1}, Landroid/os/OplusTheiaUIMonitor;->checkStopMonitorThreadIfNeeded(Z)V

    .line 255
    return-void
.end method

.method private blacklist checkStopMonitorThreadIfNeeded(Z)V
    .locals 2
    .param p1, "bForegroudApp"    # Z

    .line 245
    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/os/OplusTheiaUIMonitor;->mMonitorThread:Landroid/os/OplusTheiaUIMonitor$MonitorThread;

    if-eqz v0, :cond_0

    .line 246
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/os/OplusTheiaUIMonitor$MonitorThread;->mStarted:Z

    .line 247
    iget-object v0, p0, Landroid/os/OplusTheiaUIMonitor;->mMonitorThread:Landroid/os/OplusTheiaUIMonitor$MonitorThread;

    invoke-virtual {v0}, Landroid/os/OplusTheiaUIMonitor$MonitorThread;->interrupt()V

    .line 248
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/OplusTheiaUIMonitor;->mMonitorThread:Landroid/os/OplusTheiaUIMonitor$MonitorThread;

    .line 250
    :cond_0
    return-void
.end method

.method private blacklist detailLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 465
    sget-boolean v0, Landroid/os/OplusTheiaUIMonitor;->PRINT_DETAIL_LOG:Z

    if-eqz v0, :cond_0

    .line 466
    const-string v0, "OplusTheiaUIMonitorTag-Detail"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :cond_0
    return-void
.end method

.method private blacklist getBlockTrace()Ljava/lang/String;
    .locals 1

    .line 400
    iget-object v0, p0, Landroid/os/OplusTheiaUIMonitor;->mBlockTrace:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance()Landroid/os/OplusTheiaUIMonitor;
    .locals 1

    .line 130
    invoke-static {}, Landroid/os/OplusTheiaUIMonitor$OplusTheiaUIMonitorHolder;->-$$Nest$sfgetSINSTANCE()Landroid/os/OplusTheiaUIMonitor;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getMessageCpuCostTime(I)J
    .locals 6
    .param p1, "pid"    # I

    .line 457
    invoke-virtual {p0, p1}, Landroid/os/OplusTheiaUIMonitor;->getCpuJiffyForPid(I)J

    move-result-wide v0

    .line 458
    .local v0, "endUtmStmCount":J
    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v4, p0, Landroid/os/OplusTheiaUIMonitor;->mStartUtmStmCount:J

    cmp-long v2, v4, v2

    if-eqz v2, :cond_0

    .line 459
    iget-wide v2, p0, Landroid/os/OplusTheiaUIMonitor;->mStartUtmStmCount:J

    sub-long v2, v0, v2

    sget-wide v4, Landroid/os/OplusTheiaUIMonitor;->JIFFIES_MS:J

    mul-long/2addr v2, v4

    return-wide v2

    .line 461
    :cond_0
    const-wide/16 v2, 0x0

    return-wide v2
.end method

.method private blacklist getPackageName()Ljava/lang/String;
    .locals 2

    .line 375
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    .line 376
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 377
    const-string v0, "system"

    .line 380
    :cond_0
    return-object v0
.end method

.method private blacklist getTimeString(J)Ljava/lang/String;
    .locals 2
    .param p1, "timeMillis"    # J

    .line 297
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 298
    .local v0, "dayNow":Ljava/util/Date;
    iget-object v1, p0, Landroid/os/OplusTheiaUIMonitor;->mDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist getUIThreadInfo(Landroid/os/Message;)Ljava/lang/String;
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 341
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/os/OplusTheiaUIMonitor;->mMessageProcessStartTime:J

    sub-long/2addr v0, v2

    .line 342
    .local v0, "uptimeCost":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 344
    .local v2, "currentTimeStamp":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 345
    .local v4, "uiThreadBuffer":Ljava/lang/StringBuilder;
    const-string v5, "[UITimeout MainThread Info]\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    const-string v5, "Message:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    const-string v5, "Message start time:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v7, v2, v0

    invoke-direct {p0, v7, v8}, Landroid/os/OplusTheiaUIMonitor;->getTimeString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    const-string v5, "Message end time:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, v2, v3}, Landroid/os/OplusTheiaUIMonitor;->getTimeString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    const-string v5, "Message cost time:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    const-string v5, "Cpu cost time:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-direct {p0, v6}, Landroid/os/OplusTheiaUIMonitor;->getMessageCpuCostTime(I)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 351
    const-string v6, " ms(between first got stack to message end)\n\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    invoke-direct {p0}, Landroid/os/OplusTheiaUIMonitor;->getBlockTrace()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private blacklist getUIThreadMiniStackInfo(Ljava/lang/Thread;Ljava/lang/String;I)Ljava/lang/String;
    .locals 8
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pid"    # I

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 319
    .local v0, "infoBuffer":Ljava/lang/StringBuilder;
    const-string v1, "----- pid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 320
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Landroid/os/OplusTheiaUIMonitor;->getTimeString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -----\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    const-string v1, "Cmd line: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " prio="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Thread;->getPriority()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 323
    const-string v3, " tid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " sysTid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 324
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    invoke-virtual {p1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 326
    .local v1, "stackArray":[Ljava/lang/StackTraceElement;
    array-length v3, v1

    const/16 v4, 0x1e

    if-ge v3, v4, :cond_0

    array-length v4, v1

    :cond_0
    move v3, v4

    .line 327
    .local v3, "nTraceLength":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 328
    aget-object v5, v1, v4

    .line 329
    .local v5, "element":Ljava/lang/StackTraceElement;
    const-string v6, "  at "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .end local v5    # "element":Ljava/lang/StackTraceElement;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 331
    .end local v4    # "j":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 332
    .local v4, "info":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getUIThreadMiniStackInfo info:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/os/OplusTheiaUIMonitor;->detailLog(Ljava/lang/String;)V

    .line 335
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "stackInfo :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v4, v2, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "Quality"

    invoke-direct {p0, v5, v2}, Landroid/os/OplusTheiaUIMonitor;->logP(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    return-object v4
.end method

.method private blacklist getUITimeoutEnableFromProp()Z
    .locals 11

    .line 471
    const-string v0, "sys.theia.event_enable_mask"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v2, v0

    .line 472
    .local v2, "nEventEnableMask":J
    const-wide/16 v4, 0x5

    .line 474
    .local v4, "indexUTO":J
    long-to-int v0, v4

    const/4 v6, 0x1

    shl-int v0, v6, v0

    int-to-long v7, v0

    .line 475
    .local v7, "flagUITimeout":J
    and-long v9, v2, v7

    cmp-long v0, v9, v7

    if-nez v0, :cond_0

    move v1, v6

    :cond_0
    return v1
.end method

.method private blacklist isClickMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 228
    invoke-virtual {p1}, Landroid/os/Message;->getCallback()Ljava/lang/Runnable;

    move-result-object v0

    .line 229
    .local v0, "callback":Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PerformClick"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    const/4 v1, 0x1

    return v1

    .line 233
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist isMainLooper()Z
    .locals 2

    .line 293
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist isMessageProcessing()Z
    .locals 4

    .line 258
    iget-wide v0, p0, Landroid/os/OplusTheiaUIMonitor;->mMessageProcessStartTime:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist isMessageTimeoutBlock()Z
    .locals 4

    .line 384
    iget-object v0, p0, Landroid/os/OplusTheiaUIMonitor;->mMessageGetStackCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v1, p0, Landroid/os/OplusTheiaUIMonitor;->mMessageGetStackCountMax:I

    if-lt v0, v1, :cond_0

    .line 385
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/os/OplusTheiaUIMonitor;->mMessageProcessStartTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Landroid/os/OplusTheiaUIMonitor;->mUILooperMessageTimeout:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 384
    :goto_0
    return v0
.end method

.method private blacklist isStartupMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 404
    const/4 v0, 0x0

    .line 406
    .local v0, "bStartupMessage":Z
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x6e

    if-eq v1, v2, :cond_2

    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0xa0

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 408
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x9f

    if-ne v1, v2, :cond_3

    .line 409
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_3

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Landroid/app/servertransaction/ClientTransaction;

    if-eqz v1, :cond_3

    .line 410
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/servertransaction/ClientTransaction;

    .line 411
    .local v1, "transaction":Landroid/app/servertransaction/ClientTransaction;
    invoke-virtual {v1}, Landroid/app/servertransaction/ClientTransaction;->getLifecycleStateRequest()Landroid/app/servertransaction/ActivityLifecycleItem;

    move-result-object v2

    .line 412
    .local v2, "activityli":Landroid/app/servertransaction/ActivityLifecycleItem;
    if-eqz v2, :cond_3

    .line 413
    invoke-virtual {v2}, Landroid/app/servertransaction/ActivityLifecycleItem;->getTargetState()I

    move-result v3

    .line 414
    .local v3, "state":I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    const/4 v4, 0x7

    if-ne v3, v4, :cond_3

    .line 416
    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 407
    .end local v1    # "transaction":Landroid/app/servertransaction/ClientTransaction;
    .end local v2    # "activityli":Landroid/app/servertransaction/ActivityLifecycleItem;
    .end local v3    # "state":I
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 422
    :cond_3
    :goto_1
    return v0
.end method

.method private blacklist logP(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .line 442
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-direct {p0, v0}, Landroid/os/OplusTheiaUIMonitor;->callLogPStaticMethod([Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    return-void
.end method

.method private blacklist sendUITimeoutEvent(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "threadInfo"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "isFirstBlock"    # Z

    .line 358
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 359
    .local v0, "args":Landroid/content/Intent;
    const-string v1, "packageName"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 360
    if-eqz p4, :cond_0

    const-string v1, "blockTrace"

    goto :goto_0

    :cond_0
    const-string v1, "mainThreadInfo"

    :goto_0
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 361
    const-string v1, "pid"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 362
    if-eqz p4, :cond_1

    const-string v1, "Block"

    goto :goto_1

    :cond_1
    const-string v1, "Resume"

    :goto_1
    const-string v2, "uiotEvent"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 364
    sget-boolean v1, Landroid/os/OplusTheiaUIMonitor;->LOG_SWITCH_ON:Z

    sget-boolean v2, Landroid/os/OplusTheiaUIMonitor;->PRINT_DETAIL_LOG:Z

    or-int/2addr v1, v2

    if-eqz v1, :cond_2

    .line 365
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendUITimoutBlockEvent args:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusTheiaUIMonitorTag"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/app/OplusActivityManager;->getInstance()Landroid/app/OplusActivityManager;

    move-result-object v1

    const-wide v2, 0x100300005L

    invoke-virtual {v1, v2, v3, v0}, Landroid/app/OplusActivityManager;->sendTheiaEvent(JLandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    goto :goto_2

    .line 369
    :catch_0
    move-exception v1

    .line 370
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "sendTheiaEvent, am is null"

    invoke-direct {p0, v2}, Landroid/os/OplusTheiaUIMonitor;->detailLog(Ljava/lang/String;)V

    .line 372
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method


# virtual methods
.method public blacklist getCpuJiffyForPid(I)J
    .locals 6
    .param p1, "pid"    # I

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/proc/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/task/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/stat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 448
    .local v0, "statFile":Ljava/lang/String;
    iget-object v1, p0, Landroid/os/OplusTheiaUIMonitor;->mProcessStatsData:[J

    .line 449
    .local v1, "statsData":[J
    sget-object v2, Landroid/os/OplusTheiaUIMonitor;->PROCESS_STATS_FORMAT:[I

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1, v3}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 451
    const/4 v2, 0x2

    aget-wide v2, v1, v2

    const/4 v4, 0x3

    aget-wide v4, v1, v4

    add-long/2addr v2, v4

    return-wide v2

    .line 453
    :cond_0
    const-wide/16 v2, -0x1

    return-wide v2
.end method

.method public blacklist messageBegin(Landroid/os/Message;Z)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "bForegroudApp"    # Z

    .line 262
    iget-boolean v0, p0, Landroid/os/OplusTheiaUIMonitor;->mUITimeoutEnable:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Landroid/os/OplusTheiaUIMonitor;->isMainLooper()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 266
    :cond_0
    invoke-direct {p0, p2}, Landroid/os/OplusTheiaUIMonitor;->checkStartOrStopMonitorThreadIfNeeded(Z)V

    .line 268
    if-eqz p2, :cond_2

    invoke-direct {p0, p1}, Landroid/os/OplusTheiaUIMonitor;->isStartupMessage(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 274
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/OplusTheiaUIMonitor;->mMessageProcessStartTime:J

    .line 275
    return-void

    .line 269
    :cond_2
    :goto_0
    return-void

    .line 263
    :cond_3
    :goto_1
    return-void
.end method

.method public blacklist messageEnd(Landroid/os/Message;Z)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "bForegroudApp"    # Z

    .line 278
    iget-boolean v0, p0, Landroid/os/OplusTheiaUIMonitor;->mUITimeoutEnable:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroid/os/OplusTheiaUIMonitor;->isMainLooper()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroid/os/OplusTheiaUIMonitor;->isMessageProcessing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 283
    :cond_0
    invoke-direct {p0}, Landroid/os/OplusTheiaUIMonitor;->isMessageTimeoutBlock()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 284
    invoke-direct {p0}, Landroid/os/OplusTheiaUIMonitor;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1}, Landroid/os/OplusTheiaUIMonitor;->getUIThreadInfo(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/OplusTheiaUIMonitor;->sendUITimeoutEvent(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 287
    :cond_1
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Landroid/os/OplusTheiaUIMonitor;->mMessageProcessStartTime:J

    .line 289
    invoke-direct {p0, p2}, Landroid/os/OplusTheiaUIMonitor;->checkStopMonitorThreadIfNeeded(Z)V

    .line 290
    return-void

    .line 279
    :cond_2
    :goto_0
    return-void
.end method
