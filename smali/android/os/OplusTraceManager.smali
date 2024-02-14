.class public Landroid/os/OplusTraceManager;
.super Landroid/os/IOplusFilterListener$Stub;
.source "OplusTraceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/OplusTraceManager$ByteBufferOutputStream;,
        Landroid/os/OplusTraceManager$OnDurationLimitChangedListener;
    }
.end annotation


# static fields
.field private static final blacklist ASYNC_TRACE_BUFFER:Landroid/os/TraceBuffer;

.field private static final blacklist ATTACHED_THREAD:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist BINDER_RETRY_MAX_COUNT:I = 0x2

.field private static final blacklist BUFFER_SAFE_SIZE:I = 0x80

.field private static final blacklist CACHE_EXPIRED_TIME_MILLIS:J = 0x7530L

.field private static final blacklist CONTENT:Ljava/lang/Object;

.field private static final blacklist DEBUG:Z

.field private static final blacklist DEBUG_PRIVATE:Z

.field private static final blacklist DEFAULT_DURATION_LIMIT_TIME_MICRO:J = 0x0L

.field private static final blacklist DURATION_LIMIT_FLUSH_PERIOD_TIME:J = 0x7530L

.field private static final blacklist DURATION_LIMIT_LISTENERS:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/os/OplusTraceManager$OnDurationLimitChangedListener;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DURATION_LIMIT_PROP_KEY:Ljava/lang/String; = "debug.onetrace.filtertime"

.field private static final blacklist DUR_LIMIT_TASK_ID:I = 0x127

.field private static final blacklist FILTER_TASK_ID:I = 0x2d1

.field private static final blacklist FLUSH_PERIOD_DEFAULT_TIME_MILLIS:J

.field private static final blacklist FLUSH_PERIOD_MIN_TIME_MILLIS:J

.field private static final blacklist INSTANCE:Landroid/os/OplusTraceManager;

.field public static final blacklist ONETRACE_SERVICE:Ljava/lang/String; = "onetrace"

.field public static final blacklist SYS_LOG_TAG:Ljava/lang/String; = "persist.onetrace.logtag"

.field private static final blacklist TAG:Ljava/lang/String; = "OplusTraceManager"

.field private static final blacklist THREAD_BUFFER:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/os/TraceBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist THREAD_BUFFER_DEFAULT_CAPACITY:I = 0x2000

.field private static final blacklist THREAD_BUFFER_MIN_CAPACITY:I = 0x1000

.field private static final blacklist THREAD_BUFFER_SIZE_PROP:Ljava/lang/String; = "persist.onetrace.thread.buffersize"

.field private static final blacklist THREAD_FLUSH_TIME_PROP:Ljava/lang/String; = "persist.onetrace.thread.flushtime"

.field public static final blacklist TRACE_SWITCH_FLAG:Ljava/lang/String; = "debug.onetrace.tag"

.field private static final blacklist UPDATE_FILTER_PERIOD_TIME_MILLIS:J = 0x7530L

.field private static blacklist sBinderRetryCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static blacklist sContentFilter:Landroid/os/ContentFilter;

.field private static blacklist sIsForeground:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static volatile blacklist sRemoteService:Landroid/os/IOplusTraceService;


# instance fields
.field private blacklist mByteBufferOutput:Landroid/os/OplusTraceManager$ByteBufferOutputStream;

.field private blacklist mCurrentSharedMem:Landroid/os/SharedMemory;

.field private final blacklist mForegroundObserver:Landroid/os/ForegroundAppStateObserver;

.field private volatile blacklist mIsConnecting:Z

.field private blacklist mLastFlushCacheElapsedTime:J

.field private blacklist mLastProcessTreeHash:I

.field private volatile blacklist mProcessRecorder:Landroid/os/ProcessTreeRecorder;

.field private final blacklist mWorkHandler:Landroid/os/Handler;

.field private final blacklist mWorkScheduledExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic blacklist $r8$lambda$tlV4ElGWaknPYAJeyWZFAww_Nx8(Z)V
    .locals 0

    invoke-static {p0}, Landroid/os/OplusTraceManager;->upgradeOnForegroundState(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWorkHandler(Landroid/os/OplusTraceManager;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/os/OplusTraceManager;->mWorkHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetContentHashCode(Landroid/os/OplusTraceManager;)I
    .locals 0

    invoke-direct {p0}, Landroid/os/OplusTraceManager;->getContentHashCode()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsRemoteService()Landroid/os/IOplusTraceService;
    .locals 1

    sget-object v0, Landroid/os/OplusTraceManager;->sRemoteService:Landroid/os/IOplusTraceService;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smnotifyDurationLimitListener(J)V
    .locals 0

    invoke-static {p0, p1}, Landroid/os/OplusTraceManager;->notifyDurationLimitListener(J)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 8

    .line 53
    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "persist.onetrace.logtag"

    if-nez v0, :cond_1

    .line 55
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Landroid/os/OplusTraceManager;->DEBUG:Z

    .line 57
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/os/OplusTraceManager;->DEBUG_PRIVATE:Z

    .line 70
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    .line 71
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    sput-wide v2, Landroid/os/OplusTraceManager;->FLUSH_PERIOD_DEFAULT_TIME_MILLIS:J

    .line 73
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    sput-wide v2, Landroid/os/OplusTraceManager;->FLUSH_PERIOD_MIN_TIME_MILLIS:J

    .line 75
    new-instance v0, Landroid/os/OplusTraceManager$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Landroid/os/OplusTraceManager$$ExternalSyntheticLambda6;-><init>()V

    .line 76
    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Landroid/os/OplusTraceManager;->THREAD_BUFFER:Ljava/lang/ThreadLocal;

    .line 89
    new-instance v0, Landroid/os/OplusTraceManager$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Landroid/os/OplusTraceManager$$ExternalSyntheticLambda7;-><init>()V

    .line 90
    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Landroid/os/OplusTraceManager;->ATTACHED_THREAD:Ljava/lang/ThreadLocal;

    .line 103
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Landroid/os/OplusTraceManager;->DURATION_LIMIT_LISTENERS:Ljava/util/WeakHashMap;

    .line 104
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/OplusTraceManager;->CONTENT:Ljava/lang/Object;

    .line 128
    new-instance v0, Landroid/os/OplusTraceManager;

    invoke-direct {v0}, Landroid/os/OplusTraceManager;-><init>()V

    sput-object v0, Landroid/os/OplusTraceManager;->INSTANCE:Landroid/os/OplusTraceManager;

    .line 130
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Landroid/os/OplusTraceManager;->sIsForeground:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 133
    const/4 v0, 0x0

    sput-object v0, Landroid/os/OplusTraceManager;->sContentFilter:Landroid/os/ContentFilter;

    .line 139
    new-instance v0, Landroid/os/TraceBuffer;

    .line 140
    invoke-static {}, Landroid/os/OplusTraceManager;->getTraceBufferFlushPeriod()J

    move-result-wide v3

    invoke-static {}, Landroid/os/OplusTraceManager;->getTraceBufferCapacity()I

    move-result v5

    invoke-static {}, Landroid/os/OplusTraceManager;->getTraceDurationTimeLimit()J

    move-result-wide v6

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/os/TraceBuffer;-><init>(JIJ)V

    sput-object v0, Landroid/os/OplusTraceManager;->ASYNC_TRACE_BUFFER:Landroid/os/TraceBuffer;

    .line 141
    new-instance v2, Landroid/os/OplusTraceManager$$ExternalSyntheticLambda8;

    invoke-direct {v2}, Landroid/os/OplusTraceManager$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {v0, v2}, Landroid/os/TraceBuffer;->setFlushActionObserver(Landroid/os/TraceBuffer$FlushOutObserver;)V

    .line 147
    invoke-static {v0}, Landroid/os/OplusTraceManager;->addDurationLimitListener(Landroid/os/OplusTraceManager$OnDurationLimitChangedListener;)V

    .line 152
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Landroid/os/OplusTraceManager;->sBinderRetryCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 5

    .line 202
    const-string v0, "OplusTraceManager"

    invoke-direct {p0}, Landroid/os/IOplusFilterListener$Stub;-><init>()V

    .line 163
    const/4 v1, -0x1

    iput v1, p0, Landroid/os/OplusTraceManager;->mLastProcessTreeHash:I

    .line 165
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/os/OplusTraceManager;->mLastFlushCacheElapsedTime:J

    .line 203
    const/4 v1, 0x0

    .line 204
    .local v1, "threadStarted":Z
    const/4 v2, 0x0

    .line 206
    .local v2, "handlerThread":Landroid/os/HandlerThread;
    :try_start_0
    new-instance v3, Landroid/os/HandlerThread;

    invoke-direct {v3, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 207
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V
    :try_end_0
    .catch Ljava/lang/InternalError; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    const/4 v1, 0x1

    .line 212
    goto :goto_0

    .line 209
    :catch_0
    move-exception v3

    .line 210
    .local v3, "e":Ljava/lang/InternalError;
    const-string v4, "Failed to start handler thread!"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 211
    const-string v0, "debug.onetrace.tag"

    const-string v4, "0"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    .end local v3    # "e":Ljava/lang/InternalError;
    :goto_0
    const/4 v0, 0x0

    if-eqz v1, :cond_0

    new-instance v3, Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_1

    :cond_0
    move-object v3, v0

    :goto_1
    iput-object v3, p0, Landroid/os/OplusTraceManager;->mWorkHandler:Landroid/os/Handler;

    .line 215
    if-eqz v3, :cond_1

    new-instance v0, Landroid/os/HandlerExecutor;

    invoke-direct {v0, v3}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    goto :goto_2

    .line 216
    :cond_1
    nop

    :goto_2
    iput-object v0, p0, Landroid/os/OplusTraceManager;->mWorkScheduledExecutor:Ljava/util/concurrent/Executor;

    .line 217
    new-instance v0, Landroid/os/ForegroundAppStateObserver;

    new-instance v4, Landroid/os/OplusTraceManager$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Landroid/os/OplusTraceManager$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {v0, v3, v4}, Landroid/os/ForegroundAppStateObserver;-><init>(Landroid/os/Handler;Landroid/os/ForegroundAppStateObserver$StateChangeObserver;)V

    iput-object v0, p0, Landroid/os/OplusTraceManager;->mForegroundObserver:Landroid/os/ForegroundAppStateObserver;

    .line 219
    return-void
.end method

.method static blacklist addDurationLimitListener(Landroid/os/OplusTraceManager$OnDurationLimitChangedListener;)V
    .locals 4
    .param p0, "listener"    # Landroid/os/OplusTraceManager$OnDurationLimitChangedListener;

    .line 378
    sget-object v0, Landroid/os/OplusTraceManager;->DURATION_LIMIT_LISTENERS:Ljava/util/WeakHashMap;

    monitor-enter v0

    .line 379
    :try_start_0
    sget-boolean v1, Landroid/os/OplusTraceManager;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 380
    const-string v1, "OplusTraceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Add duration limit listener for thread="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 381
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 380
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_0
    sget-object v1, Landroid/os/OplusTraceManager;->CONTENT:Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    monitor-exit v0

    .line 385
    return-void

    .line 384
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist attachThread(ILjava/lang/String;)V
    .locals 2
    .param p1, "tid"    # I
    .param p2, "threadName"    # Ljava/lang/String;

    .line 425
    iget-object v0, p0, Landroid/os/OplusTraceManager;->mProcessRecorder:Landroid/os/ProcessTreeRecorder;

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Landroid/os/OplusTraceManager;->mProcessRecorder:Landroid/os/ProcessTreeRecorder;

    invoke-virtual {v0, p1, p2}, Landroid/os/ProcessTreeRecorder;->attachThread(ILjava/lang/String;)Z

    goto :goto_0

    .line 428
    :cond_0
    iget-object v0, p0, Landroid/os/OplusTraceManager;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Landroid/os/OplusTraceManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Landroid/os/OplusTraceManager$$ExternalSyntheticLambda3;-><init>(Landroid/os/OplusTraceManager;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 437
    :goto_0
    return-void
.end method

.method private static blacklist binderService()Z
    .locals 4

    .line 295
    sget-object v0, Landroid/os/OplusTraceManager;->sRemoteService:Landroid/os/IOplusTraceService;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 296
    return v1

    .line 299
    :cond_0
    invoke-static {}, Landroid/os/OplusTraceManager;->shouldRetryConnectingService()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 300
    return v2

    .line 303
    :cond_1
    const-string v0, "onetrace"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 304
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IOplusTraceService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IOplusTraceService;

    move-result-object v3

    sput-object v3, Landroid/os/OplusTraceManager;->sRemoteService:Landroid/os/IOplusTraceService;

    .line 305
    sget-object v3, Landroid/os/OplusTraceManager;->sRemoteService:Landroid/os/IOplusTraceService;

    if-nez v3, :cond_3

    .line 306
    sget-object v1, Landroid/os/OplusTraceManager;->sBinderRetryCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "binder onetrace service failed. pid = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 308
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", tid = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 307
    const-string v3, "OplusTraceManager"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-static {}, Landroid/os/OplusTraceManager;->shouldRetryConnectingService()Z

    move-result v1

    if-nez v1, :cond_2

    .line 311
    invoke-static {v2}, Landroid/os/OneTraceExtImpl;->oneTraceSetTraceEnabled(Z)V

    .line 313
    :cond_2
    return v2

    .line 315
    :cond_3
    sget-object v3, Landroid/os/OplusTraceManager;->INSTANCE:Landroid/os/OplusTraceManager;

    invoke-direct {v3}, Landroid/os/OplusTraceManager;->initAfterBindService()V

    .line 317
    sget-object v3, Landroid/os/OplusTraceManager;->sBinderRetryCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 318
    return v1
.end method

.method private blacklist checkActive()Z
    .locals 7

    .line 597
    const-string v0, "OplusTraceManager"

    iget-object v1, p0, Landroid/os/OplusTraceManager;->mCurrentSharedMem:Landroid/os/SharedMemory;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/os/OplusTraceManager;->mByteBufferOutput:Landroid/os/OplusTraceManager$ByteBufferOutputStream;

    if-eqz v1, :cond_0

    .line 598
    return v2

    .line 600
    :cond_0
    invoke-direct {p0}, Landroid/os/OplusTraceManager;->deactivate()V

    .line 603
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/os/OplusTraceManager;->getContentHashCode()I

    move-result v3

    .line 604
    .local v3, "hashCode":I
    sget-object v4, Landroid/os/OplusTraceManager;->sRemoteService:Landroid/os/IOplusTraceService;

    .line 605
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-direct {p0, v5}, Landroid/os/OplusTraceManager;->getProcessName(I)Ljava/lang/String;

    move-result-object v5

    .line 604
    invoke-interface {v4, v5, v3, p0}, Landroid/os/IOplusTraceService;->obtainMemoryCache(Ljava/lang/String;ILandroid/os/IOplusFilterListener;)Landroid/os/SharedMemory;

    move-result-object v4

    iput-object v4, p0, Landroid/os/OplusTraceManager;->mCurrentSharedMem:Landroid/os/SharedMemory;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 621
    .end local v3    # "hashCode":I
    nop

    .line 623
    if-nez v4, :cond_1

    .line 624
    const-string v2, "Failed to obtain main shared memory from pool"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    return v1

    .line 629
    :cond_1
    :try_start_1
    iget-object v3, p0, Landroid/os/OplusTraceManager;->mByteBufferOutput:Landroid/os/OplusTraceManager$ByteBufferOutputStream;

    if-eqz v3, :cond_2

    .line 630
    invoke-virtual {v3}, Landroid/os/OplusTraceManager$ByteBufferOutputStream;->close()V

    .line 632
    :cond_2
    new-instance v3, Landroid/os/OplusTraceManager$ByteBufferOutputStream;

    iget-object v4, p0, Landroid/os/OplusTraceManager;->mCurrentSharedMem:Landroid/os/SharedMemory;

    invoke-virtual {v4}, Landroid/os/SharedMemory;->mapReadWrite()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/OplusTraceManager$ByteBufferOutputStream;-><init>(Ljava/nio/ByteBuffer;)V

    iput-object v3, p0, Landroid/os/OplusTraceManager;->mByteBufferOutput:Landroid/os/OplusTraceManager$ByteBufferOutputStream;
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0

    .line 633
    return v2

    .line 634
    :catch_0
    move-exception v2

    .line 635
    .local v2, "e":Landroid/system/ErrnoException;
    invoke-direct {p0}, Landroid/os/OplusTraceManager;->deactivate()V

    .line 636
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to call mmap from shared memory! Pid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 637
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 636
    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 639
    .end local v2    # "e":Landroid/system/ErrnoException;
    return v1

    .line 611
    :catch_1
    move-exception v2

    .line 616
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-wide/16 v3, 0x8

    const-string v5, "checkActive invalid ashmem fd"

    invoke-static {v3, v4, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 617
    invoke-direct {p0}, Landroid/os/OplusTraceManager;->deactivate()V

    .line 618
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkActive IllegalArgumentException e = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 620
    return v1

    .line 606
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v2

    .line 607
    .local v2, "e":Landroid/os/RemoteException;
    invoke-direct {p0}, Landroid/os/OplusTraceManager;->deactivate()V

    .line 608
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to obtain shared memory from remote service! Pid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 609
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 608
    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 610
    return v1
.end method

.method private blacklist connectRemoteServiceAsync()V
    .locals 2

    .line 189
    invoke-static {}, Landroid/os/OplusTraceManager;->shouldRetryConnectingService()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/os/OplusTraceManager;->mIsConnecting:Z

    if-nez v0, :cond_0

    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/OplusTraceManager;->mIsConnecting:Z

    .line 191
    iget-object v0, p0, Landroid/os/OplusTraceManager;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Landroid/os/OplusTraceManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Landroid/os/OplusTraceManager$$ExternalSyntheticLambda2;-><init>(Landroid/os/OplusTraceManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 196
    :cond_0
    return-void
.end method

.method private blacklist deactivate()V
    .locals 2

    .line 643
    iget-object v0, p0, Landroid/os/OplusTraceManager;->mByteBufferOutput:Landroid/os/OplusTraceManager$ByteBufferOutputStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 644
    invoke-virtual {v0}, Landroid/os/OplusTraceManager$ByteBufferOutputStream;->close()V

    .line 645
    iput-object v1, p0, Landroid/os/OplusTraceManager;->mByteBufferOutput:Landroid/os/OplusTraceManager$ByteBufferOutputStream;

    .line 648
    :cond_0
    iget-object v0, p0, Landroid/os/OplusTraceManager;->mCurrentSharedMem:Landroid/os/SharedMemory;

    if-eqz v0, :cond_1

    .line 649
    invoke-virtual {v0}, Landroid/os/SharedMemory;->close()V

    .line 650
    iput-object v1, p0, Landroid/os/OplusTraceManager;->mCurrentSharedMem:Landroid/os/SharedMemory;

    .line 652
    :cond_1
    return-void
.end method

.method private blacklist getContentHashCode()I
    .locals 1

    .line 677
    sget-object v0, Landroid/os/OplusTraceManager;->sContentFilter:Landroid/os/ContentFilter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/os/ContentFilter;->getHashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public static blacklist getInstance()Landroid/os/OplusTraceManager;
    .locals 3

    .line 175
    sget-object v0, Landroid/os/OplusTraceManager;->INSTANCE:Landroid/os/OplusTraceManager;

    invoke-direct {v0}, Landroid/os/OplusTraceManager;->isValid()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 176
    return-object v2

    .line 180
    :cond_0
    sget-object v1, Landroid/os/OplusTraceManager;->sRemoteService:Landroid/os/IOplusTraceService;

    if-nez v1, :cond_1

    .line 181
    invoke-direct {v0}, Landroid/os/OplusTraceManager;->connectRemoteServiceAsync()V

    .line 182
    return-object v2

    .line 184
    :cond_1
    return-object v0
.end method

.method private blacklist getProcessName(I)Ljava/lang/String;
    .locals 3
    .param p1, "pid"    # I

    .line 668
    :try_start_0
    new-instance v0, Landroid/app/OplusActivityManager;

    invoke-direct {v0}, Landroid/app/OplusActivityManager;-><init>()V

    .line 669
    .local v0, "activityManager":Landroid/app/OplusActivityManager;
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/app/OplusActivityManager;->getProcCmdline([I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 670
    .end local v0    # "activityManager":Landroid/app/OplusActivityManager;
    :catch_0
    move-exception v0

    .line 671
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get process name with pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusTraceManager"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 673
    .end local v0    # "e":Ljava/lang/Exception;
    const-string v0, ""

    return-object v0
.end method

.method private static blacklist getTraceBufferCapacity()I
    .locals 2

    .line 655
    const-string v0, "persist.onetrace.thread.buffersize"

    const/16 v1, 0x2000

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 657
    .local v0, "capacity":I
    const/16 v1, 0x1000

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method private static blacklist getTraceBufferFlushPeriod()J
    .locals 4

    .line 661
    sget-wide v0, Landroid/os/OplusTraceManager;->FLUSH_PERIOD_DEFAULT_TIME_MILLIS:J

    const-string v2, "persist.onetrace.thread.flushtime"

    invoke-static {v2, v0, v1}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 663
    .local v0, "period":J
    sget-wide v2, Landroid/os/OplusTraceManager;->FLUSH_PERIOD_MIN_TIME_MILLIS:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    return-wide v2
.end method

.method static blacklist getTraceDurationTimeLimit()J
    .locals 3

    .line 398
    const-string v0, "debug.onetrace.filtertime"

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private blacklist handleAshmemDataFromNative(Ljava/io/FileDescriptor;I)V
    .locals 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "length"    # I

    .line 733
    invoke-virtual {p1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v0

    .line 734
    .local v0, "descriptor":I
    invoke-static {v0}, Landroid/os/OneTraceExtImpl;->ashmemValid(I)Z

    move-result v1

    const-string v2, "OplusTraceManager"

    const-wide/16 v3, 0x8

    if-nez v1, :cond_0

    .line 735
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid ashmem fd="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v4, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 736
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "It is not a valid ashmem fd ="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 738
    return-void

    .line 741
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 742
    .local v1, "dest":Landroid/os/Parcel;
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 743
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 745
    :try_start_0
    invoke-static {p1}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 748
    goto :goto_0

    .line 746
    :catch_0
    move-exception v5

    .line 747
    .local v5, "e":Landroid/system/ErrnoException;
    const-string v6, "Failed to close fd"

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    .end local v5    # "e":Landroid/system/ErrnoException;
    :goto_0
    :try_start_1
    sget-object v5, Landroid/os/SharedMemory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/SharedMemory;
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 751
    .local v5, "sharedMemory":Landroid/os/SharedMemory;
    :try_start_2
    invoke-virtual {v5}, Landroid/os/SharedMemory;->mapReadOnly()Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 752
    .local v6, "buffer":Ljava/nio/ByteBuffer;
    sget-boolean v7, Landroid/os/OplusTraceManager;->DEBUG_PRIVATE:Z

    if-eqz v7, :cond_1

    .line 753
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SharedMemory: read data with length="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    :cond_1
    invoke-virtual {v6, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 757
    invoke-direct {p0, v6}, Landroid/os/OplusTraceManager;->writeTraceBufferFromNative(Ljava/nio/ByteBuffer;)V

    .line 758
    invoke-static {v6}, Landroid/os/SharedMemory;->unmap(Ljava/nio/ByteBuffer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 759
    .end local v6    # "buffer":Ljava/nio/ByteBuffer;
    if-eqz v5, :cond_3

    :try_start_3
    invoke-virtual {v5}, Landroid/os/SharedMemory;->close()V
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 750
    :catchall_0
    move-exception v6

    if-eqz v5, :cond_2

    :try_start_4
    invoke-virtual {v5}, Landroid/os/SharedMemory;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v7

    :try_start_5
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "descriptor":I
    .end local v1    # "dest":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/os/OplusTraceManager;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "length":I
    :cond_2
    :goto_1
    throw v6
    :try_end_5
    .catch Landroid/system/ErrnoException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1

    .line 761
    .end local v5    # "sharedMemory":Landroid/os/SharedMemory;
    .restart local v0    # "descriptor":I
    .restart local v1    # "dest":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/os/OplusTraceManager;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "length":I
    :catch_1
    move-exception v5

    .line 774
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    const-string v6, "invalid ashmem fd"

    invoke-static {v3, v4, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 775
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleAshmemDataFromNative IllegalArgumentException e = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_3

    .line 759
    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v2

    .line 760
    .local v2, "e":Landroid/system/ErrnoException;
    invoke-virtual {v2}, Landroid/system/ErrnoException;->printStackTrace()V

    .line 777
    .end local v2    # "e":Landroid/system/ErrnoException;
    :cond_3
    :goto_2
    nop

    .line 778
    :goto_3
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 779
    return-void
.end method

.method public static blacklist handleFileDescriptor(Ljava/io/FileDescriptor;ILjava/util/Map;)V
    .locals 4
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "length"    # I
    .param p2, "threadMap"    # Ljava/util/Map;

    .line 683
    invoke-static {}, Landroid/os/OplusTraceManager;->isRemoteServiceConnected()Z

    move-result v0

    const-string v1, "OplusTraceManager"

    if-nez v0, :cond_0

    .line 684
    sget-boolean v0, Landroid/os/OplusTraceManager;->DEBUG_PRIVATE:Z

    if-eqz v0, :cond_0

    .line 685
    const-string v0, "Failed to connect remote service! try connect in async mode"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    :cond_0
    invoke-static {}, Landroid/os/OplusTraceManager;->getInstance()Landroid/os/OplusTraceManager;

    move-result-object v0

    .line 690
    .local v0, "instance":Landroid/os/OplusTraceManager;
    if-eqz v0, :cond_1

    .line 691
    invoke-direct {v0, p0, p1, p2}, Landroid/os/OplusTraceManager;->handleNativeTrace(Ljava/io/FileDescriptor;ILjava/util/Map;)V

    goto :goto_0

    .line 693
    :cond_1
    sget-boolean v2, Landroid/os/OplusTraceManager;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 694
    const-string v2, "Failed to get instance to handle file descriptor!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    :cond_2
    :try_start_0
    invoke-static {p0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 701
    goto :goto_0

    .line 699
    :catch_0
    move-exception v2

    .line 700
    .local v2, "e":Landroid/system/ErrnoException;
    const-string v3, "Failed to close fd from native callback!"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    .end local v2    # "e":Landroid/system/ErrnoException;
    :goto_0
    return-void
.end method

.method private blacklist handleNativeTrace(Ljava/io/FileDescriptor;ILjava/util/Map;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileDescriptor;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 706
    .local p3, "threadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/os/OplusTraceManager;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Landroid/os/OplusTraceManager$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p3, p1, p2}, Landroid/os/OplusTraceManager$$ExternalSyntheticLambda5;-><init>(Landroid/os/OplusTraceManager;Ljava/util/Map;Ljava/io/FileDescriptor;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 710
    return-void
.end method

.method private blacklist initAfterBindService()V
    .locals 5

    .line 334
    monitor-enter p0

    .line 336
    :try_start_0
    iget-object v0, p0, Landroid/os/OplusTraceManager;->mWorkHandler:Landroid/os/Handler;

    const/16 v1, 0x2d1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 337
    iget-object v0, p0, Landroid/os/OplusTraceManager;->mWorkHandler:Landroid/os/Handler;

    new-instance v2, Landroid/os/OplusTraceManager$1;

    invoke-direct {v2, p0}, Landroid/os/OplusTraceManager$1;-><init>(Landroid/os/OplusTraceManager;)V

    const-wide/16 v3, 0x7530

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;IJ)Z

    .line 351
    iget-object v0, p0, Landroid/os/OplusTraceManager;->mWorkHandler:Landroid/os/Handler;

    const/16 v1, 0x127

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 352
    iget-object v0, p0, Landroid/os/OplusTraceManager;->mWorkHandler:Landroid/os/Handler;

    new-instance v2, Landroid/os/OplusTraceManager$2;

    invoke-direct {v2, p0}, Landroid/os/OplusTraceManager$2;-><init>(Landroid/os/OplusTraceManager;)V

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;IJ)Z

    .line 365
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    invoke-static {}, Landroid/os/OplusTraceManager;->getTraceDurationTimeLimit()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/os/OneTraceExtImpl;->updateNativeFilterTime(J)V

    .line 369
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/OplusTraceManager;->mLastFlushCacheElapsedTime:J

    .line 372
    iget-object v0, p0, Landroid/os/OplusTraceManager;->mProcessRecorder:Landroid/os/ProcessTreeRecorder;

    if-nez v0, :cond_0

    .line 373
    new-instance v0, Landroid/os/ProcessTreeRecorder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/ProcessTreeRecorder;-><init>(I)V

    iput-object v0, p0, Landroid/os/OplusTraceManager;->mProcessRecorder:Landroid/os/ProcessTreeRecorder;

    .line 375
    :cond_0
    return-void

    .line 365
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private blacklist insertSerializedDataAsQueue([B)V
    .locals 2
    .param p1, "data"    # [B

    .line 440
    iget-object v0, p0, Landroid/os/OplusTraceManager;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Landroid/os/OplusTraceManager$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1}, Landroid/os/OplusTraceManager$$ExternalSyntheticLambda9;-><init>(Landroid/os/OplusTraceManager;[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 443
    return-void
.end method

.method public static blacklist isForeground()Z
    .locals 1

    .line 287
    sget-object v0, Landroid/os/OplusTraceManager;->sIsForeground:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public static blacklist isRemoteServiceConnected()Z
    .locals 1

    .line 199
    invoke-static {}, Landroid/os/OplusTraceManager;->binderService()Z

    move-result v0

    return v0
.end method

.method private blacklist isValid()Z
    .locals 1

    .line 291
    iget-object v0, p0, Landroid/os/OplusTraceManager;->mWorkHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic blacklist lambda$notifyDurationLimitListener$5(JLandroid/os/OplusTraceManager$OnDurationLimitChangedListener;)V
    .locals 0
    .param p0, "timeLimit"    # J
    .param p2, "listener"    # Landroid/os/OplusTraceManager$OnDurationLimitChangedListener;

    .line 407
    invoke-interface {p2, p0, p1}, Landroid/os/OplusTraceManager$OnDurationLimitChangedListener;->onLimitChanged(J)V

    return-void
.end method

.method static synthetic blacklist lambda$static$0([B)V
    .locals 1
    .param p0, "bytes"    # [B

    .line 80
    invoke-static {}, Landroid/os/OplusTraceManager;->getInstance()Landroid/os/OplusTraceManager;

    move-result-object v0

    .line 81
    .local v0, "instance":Landroid/os/OplusTraceManager;
    if-eqz v0, :cond_0

    .line 82
    invoke-direct {v0, p0}, Landroid/os/OplusTraceManager;->insertSerializedDataAsQueue([B)V

    .line 84
    :cond_0
    return-void
.end method

.method static synthetic blacklist lambda$static$1()Landroid/os/TraceBuffer;
    .locals 7

    .line 77
    new-instance v6, Landroid/os/TraceBuffer;

    invoke-static {}, Landroid/os/OplusTraceManager;->getTraceBufferFlushPeriod()J

    move-result-wide v1

    .line 78
    invoke-static {}, Landroid/os/OplusTraceManager;->getTraceBufferCapacity()I

    move-result v3

    invoke-static {}, Landroid/os/OplusTraceManager;->getTraceDurationTimeLimit()J

    move-result-wide v4

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/os/TraceBuffer;-><init>(JIJ)V

    .line 79
    .local v0, "buffer":Landroid/os/TraceBuffer;
    new-instance v1, Landroid/os/OplusTraceManager$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Landroid/os/OplusTraceManager$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/TraceBuffer;->setFlushActionObserver(Landroid/os/TraceBuffer$FlushOutObserver;)V

    .line 85
    invoke-static {v0}, Landroid/os/OplusTraceManager;->addDurationLimitListener(Landroid/os/OplusTraceManager$OnDurationLimitChangedListener;)V

    .line 86
    return-object v0
.end method

.method static synthetic blacklist lambda$static$2()Ljava/lang/Integer;
    .locals 3

    .line 91
    invoke-static {}, Landroid/os/OplusTraceManager;->getInstance()Landroid/os/OplusTraceManager;

    move-result-object v0

    .line 92
    .local v0, "instance":Landroid/os/OplusTraceManager;
    if-eqz v0, :cond_0

    .line 93
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    .line 94
    .local v1, "tid":I
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/os/OplusTraceManager;->attachThread(ILjava/lang/String;)V

    .line 95
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2

    .line 97
    .end local v1    # "tid":I
    :cond_0
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method static synthetic blacklist lambda$static$3([B)V
    .locals 1
    .param p0, "bytes"    # [B

    .line 142
    invoke-static {}, Landroid/os/OplusTraceManager;->getInstance()Landroid/os/OplusTraceManager;

    move-result-object v0

    .line 143
    .local v0, "instance":Landroid/os/OplusTraceManager;
    if-eqz v0, :cond_0

    .line 144
    invoke-direct {v0, p0}, Landroid/os/OplusTraceManager;->insertSerializedDataAsQueue([B)V

    .line 146
    :cond_0
    return-void
.end method

.method private static blacklist notifyDurationLimitListener(J)V
    .locals 4
    .param p0, "timeLimit"    # J

    .line 402
    const/4 v0, 0x0

    .line 403
    .local v0, "listenersCopy":Ljava/util/List;, "Ljava/util/List<Landroid/os/OplusTraceManager$OnDurationLimitChangedListener;>;"
    sget-object v1, Landroid/os/OplusTraceManager;->DURATION_LIMIT_LISTENERS:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 404
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v2

    .line 405
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    new-instance v1, Landroid/os/OplusTraceManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/os/OplusTraceManager$$ExternalSyntheticLambda0;-><init>(J)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 408
    return-void

    .line 405
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public static blacklist oneTraceBegin(Ljava/lang/String;)V
    .locals 2
    .param p0, "methodName"    # Ljava/lang/String;

    .line 222
    sget-object v0, Landroid/os/OplusTraceManager;->ATTACHED_THREAD:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_0

    .line 223
    sget-object v0, Landroid/os/OplusTraceManager;->THREAD_BUFFER:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/TraceBuffer;

    invoke-virtual {v0, p0}, Landroid/os/TraceBuffer;->begin(Ljava/lang/String;)V

    goto :goto_0

    .line 225
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 226
    sget-boolean v0, Landroid/os/OplusTraceManager;->DEBUG_PRIVATE:Z

    if-eqz v0, :cond_1

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to attach tid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusTraceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_1
    :goto_0
    return-void
.end method

.method public static blacklist oneTraceBeginAsync(Ljava/lang/String;I)V
    .locals 4
    .param p0, "methodName"    # Ljava/lang/String;
    .param p1, "cookie"    # I

    .line 244
    sget-object v0, Landroid/os/OplusTraceManager;->ATTACHED_THREAD:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 245
    .local v1, "tid":I
    sget-object v2, Landroid/os/OplusTraceManager;->INSTANCE:Landroid/os/OplusTraceManager;

    iget-object v2, v2, Landroid/os/OplusTraceManager;->mWorkScheduledExecutor:Ljava/util/concurrent/Executor;

    .line 246
    .local v2, "worker":Ljava/util/concurrent/Executor;
    if-ltz v1, :cond_0

    if-eqz v2, :cond_0

    .line 247
    sget-object v0, Landroid/os/OplusTraceManager;->ASYNC_TRACE_BUFFER:Landroid/os/TraceBuffer;

    invoke-virtual {v0, v2, p0, p1}, Landroid/os/TraceBuffer;->asyncBegin(Ljava/util/concurrent/Executor;Ljava/lang/String;I)V

    goto :goto_0

    .line 249
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 250
    sget-boolean v0, Landroid/os/OplusTraceManager;->DEBUG_PRIVATE:Z

    if-eqz v0, :cond_1

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to attach tid="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "OplusTraceManager"

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_1
    :goto_0
    return-void
.end method

.method public static blacklist oneTraceEnd()V
    .locals 2

    .line 233
    sget-object v0, Landroid/os/OplusTraceManager;->ATTACHED_THREAD:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_0

    .line 234
    sget-object v0, Landroid/os/OplusTraceManager;->THREAD_BUFFER:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/TraceBuffer;

    sget-object v1, Landroid/os/OplusTraceManager;->sContentFilter:Landroid/os/ContentFilter;

    invoke-virtual {v0, v1}, Landroid/os/TraceBuffer;->end(Landroid/os/ContentFilter;)V

    goto :goto_0

    .line 236
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 237
    sget-boolean v0, Landroid/os/OplusTraceManager;->DEBUG_PRIVATE:Z

    if-eqz v0, :cond_1

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to attach tid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusTraceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_1
    :goto_0
    return-void
.end method

.method public static blacklist oneTraceEndAsync(Ljava/lang/String;I)V
    .locals 9
    .param p0, "methodName"    # Ljava/lang/String;
    .param p1, "cookie"    # I

    .line 257
    sget-object v0, Landroid/os/OplusTraceManager;->ATTACHED_THREAD:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 258
    .local v1, "tid":I
    sget-object v2, Landroid/os/OplusTraceManager;->INSTANCE:Landroid/os/OplusTraceManager;

    iget-object v8, v2, Landroid/os/OplusTraceManager;->mWorkScheduledExecutor:Ljava/util/concurrent/Executor;

    .line 259
    .local v8, "worker":Ljava/util/concurrent/Executor;
    if-ltz v1, :cond_0

    if-eqz v8, :cond_0

    .line 260
    sget-object v2, Landroid/os/OplusTraceManager;->ASYNC_TRACE_BUFFER:Landroid/os/TraceBuffer;

    sget-object v7, Landroid/os/OplusTraceManager;->sContentFilter:Landroid/os/ContentFilter;

    move-object v3, v8

    move-object v4, p0

    move v5, p1

    move v6, v1

    invoke-virtual/range {v2 .. v7}, Landroid/os/TraceBuffer;->asyncEnd(Ljava/util/concurrent/Executor;Ljava/lang/String;IILandroid/os/ContentFilter;)V

    goto :goto_0

    .line 263
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 264
    sget-boolean v0, Landroid/os/OplusTraceManager;->DEBUG_PRIVATE:Z

    if-eqz v0, :cond_1

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to attach tid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OplusTraceManager"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_1
    :goto_0
    return-void
.end method

.method static blacklist removeDurationLimitListener(Landroid/os/OplusTraceManager$OnDurationLimitChangedListener;)V
    .locals 4
    .param p0, "listener"    # Landroid/os/OplusTraceManager$OnDurationLimitChangedListener;

    .line 388
    sget-object v0, Landroid/os/OplusTraceManager;->DURATION_LIMIT_LISTENERS:Ljava/util/WeakHashMap;

    monitor-enter v0

    .line 389
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    sget-boolean v1, Landroid/os/OplusTraceManager;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 391
    const-string v1, "OplusTraceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remove duration limit listener for thread="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 392
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 391
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :cond_0
    monitor-exit v0

    .line 395
    return-void

    .line 394
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static blacklist shouldRetryConnectingService()Z
    .locals 2

    .line 327
    sget-object v0, Landroid/os/OplusTraceManager;->sBinderRetryCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist updateProcessTreeMap(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 717
    .local p1, "threadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 718
    return-void

    .line 721
    :cond_0
    iget-object v0, p0, Landroid/os/OplusTraceManager;->mProcessRecorder:Landroid/os/ProcessTreeRecorder;

    if-eqz v0, :cond_1

    .line 722
    iget-object v0, p0, Landroid/os/OplusTraceManager;->mProcessRecorder:Landroid/os/ProcessTreeRecorder;

    invoke-virtual {v0, p1}, Landroid/os/ProcessTreeRecorder;->updateThreadMap(Ljava/util/Map;)V

    goto :goto_0

    .line 724
    :cond_1
    sget-boolean v0, Landroid/os/OplusTraceManager;->DEBUG_PRIVATE:Z

    if-eqz v0, :cond_2

    .line 725
    const-string v0, "OplusTraceManager"

    const-string v1, "Failed to update process tree map!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    :cond_2
    :goto_0
    return-void
.end method

.method private static blacklist upgradeOnForegroundState(Z)V
    .locals 3
    .param p0, "isForeground"    # Z

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setForeground:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 413
    sget-object v0, Landroid/os/OplusTraceManager;->sIsForeground:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 414
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 415
    return-void
.end method

.method private blacklist writeTraceBufferFromNative(Ljava/nio/ByteBuffer;)V
    .locals 13
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 515
    invoke-direct {p0}, Landroid/os/OplusTraceManager;->checkActive()Z

    move-result v0

    const-string v1, " is loss."

    const-string v2, ". The buffer with len="

    const-string v3, "OplusTraceManager"

    if-nez v0, :cond_1

    .line 516
    sget-boolean v0, Landroid/os/OplusTraceManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to find active shared memory in client.Pid="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 518
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 519
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 517
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    :cond_0
    return-void

    .line 524
    :cond_1
    iget-object v0, p0, Landroid/os/OplusTraceManager;->mByteBufferOutput:Landroid/os/OplusTraceManager$ByteBufferOutputStream;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/OplusTraceManager$ByteBufferOutputStream;

    invoke-virtual {v0}, Landroid/os/OplusTraceManager$ByteBufferOutputStream;->getCapacity()I

    move-result v0

    .line 525
    .local v0, "capacity":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    .line 526
    .local v4, "traceSize":I
    if-ge v0, v4, :cond_2

    .line 527
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to write trace with size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " into main buffer with capacity:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Pid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 529
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 527
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    return-void

    .line 533
    :cond_2
    iget-object v5, p0, Landroid/os/OplusTraceManager;->mByteBufferOutput:Landroid/os/OplusTraceManager$ByteBufferOutputStream;

    invoke-static {v5}, Landroid/os/OplusTraceManager$ByteBufferOutputStream;->-$$Nest$fgetmOffset(Landroid/os/OplusTraceManager$ByteBufferOutputStream;)I

    move-result v5

    .line 534
    .local v5, "currentPos":I
    add-int v6, v5, v4

    add-int/lit16 v6, v6, 0x80

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-gt v0, v6, :cond_3

    move v6, v7

    goto :goto_0

    :cond_3
    move v6, v8

    .line 535
    .local v6, "overLimit":Z
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    iget-wide v11, p0, Landroid/os/OplusTraceManager;->mLastFlushCacheElapsedTime:J

    sub-long/2addr v9, v11

    const-wide/16 v11, 0x7530

    cmp-long v9, v9, v11

    if-lez v9, :cond_4

    goto :goto_1

    :cond_4
    move v7, v8

    .line 537
    .local v7, "flushExpiredCache":Z
    :goto_1
    if-lez v5, :cond_a

    if-nez v6, :cond_5

    if-eqz v7, :cond_a

    .line 539
    :cond_5
    :try_start_0
    iget-object v8, p0, Landroid/os/OplusTraceManager;->mCurrentSharedMem:Landroid/os/SharedMemory;

    invoke-virtual {v8}, Landroid/os/SharedMemory;->getFd()I

    move-result v8

    invoke-static {v8}, Landroid/os/OneTraceExtImpl;->ashmemValid(I)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 541
    sget-object v8, Landroid/os/OplusTraceManager;->sRemoteService:Landroid/os/IOplusTraceService;

    iget-object v9, p0, Landroid/os/OplusTraceManager;->mCurrentSharedMem:Landroid/os/SharedMemory;

    invoke-interface {v8, v9, v5}, Landroid/os/IOplusTraceService;->handleTraceShmemBuffer(Landroid/os/SharedMemory;I)V

    .line 542
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/os/OplusTraceManager;->mLastFlushCacheElapsedTime:J

    .line 543
    sget-boolean v8, Landroid/os/OplusTraceManager;->DEBUG_PRIVATE:Z

    if-eqz v8, :cond_6

    .line 544
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Send sharedMemory obj to service, Pid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    :cond_6
    const/4 v8, 0x0

    .line 549
    .local v8, "hashCode":I
    iget-object v9, p0, Landroid/os/OplusTraceManager;->mProcessRecorder:Landroid/os/ProcessTreeRecorder;

    if-eqz v9, :cond_8

    iget-object v9, p0, Landroid/os/OplusTraceManager;->mProcessRecorder:Landroid/os/ProcessTreeRecorder;

    invoke-virtual {v9}, Landroid/os/ProcessTreeRecorder;->getHashCode()I

    move-result v9

    move v8, v9

    iget v10, p0, Landroid/os/OplusTraceManager;->mLastProcessTreeHash:I

    if-eq v9, v10, :cond_8

    .line 551
    sget-object v9, Landroid/os/OplusTraceManager;->sRemoteService:Landroid/os/IOplusTraceService;

    iget-object v10, p0, Landroid/os/OplusTraceManager;->mProcessRecorder:Landroid/os/ProcessTreeRecorder;

    invoke-virtual {v10}, Landroid/os/ProcessTreeRecorder;->getPid()I

    move-result v10

    iget-object v11, p0, Landroid/os/OplusTraceManager;->mProcessRecorder:Landroid/os/ProcessTreeRecorder;

    .line 552
    invoke-virtual {v11}, Landroid/os/ProcessTreeRecorder;->getProcessName()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Landroid/os/OplusTraceManager;->mProcessRecorder:Landroid/os/ProcessTreeRecorder;

    .line 553
    invoke-virtual {v12}, Landroid/os/ProcessTreeRecorder;->getThreadMap()Ljava/util/Map;

    move-result-object v12

    .line 551
    invoke-interface {v9, v10, v11, v12}, Landroid/os/IOplusTraceService;->uploadProcessTree(ILjava/lang/String;Ljava/util/Map;)V

    .line 554
    sget-boolean v9, Landroid/os/OplusTraceManager;->DEBUG:Z

    if-eqz v9, :cond_7

    .line 555
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Upload process tree, Pid = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :cond_7
    iput v8, p0, Landroid/os/OplusTraceManager;->mLastProcessTreeHash:I

    .line 559
    .end local v8    # "hashCode":I
    :cond_8
    goto :goto_2

    .line 565
    :cond_9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "invalid ashmem fd: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/os/OplusTraceManager;->mCurrentSharedMem:Landroid/os/SharedMemory;

    invoke-virtual {v9}, Landroid/os/SharedMemory;->getFd()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-wide/16 v9, 0x8

    invoke-static {v9, v10, v8}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 566
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "writeTraceBufferFromNative not a valid ashmem fd: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v11, p0, Landroid/os/OplusTraceManager;->mCurrentSharedMem:Landroid/os/SharedMemory;

    invoke-virtual {v11}, Landroid/os/SharedMemory;->getFd()I

    move-result v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    iget-object v8, p0, Landroid/os/OplusTraceManager;->mCurrentSharedMem:Landroid/os/SharedMemory;

    invoke-virtual {v8}, Landroid/os/SharedMemory;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    const/4 v11, -0x1

    invoke-virtual {v8, v11}, Ljava/io/FileDescriptor;->setInt$(I)V

    .line 568
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    iput-wide v11, p0, Landroid/os/OplusTraceManager;->mLastFlushCacheElapsedTime:J

    .line 569
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 573
    :goto_2
    goto :goto_3

    .line 571
    :catch_0
    move-exception v8

    .line 572
    .local v8, "e":Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    .line 575
    .end local v8    # "e":Landroid/os/RemoteException;
    :goto_3
    invoke-direct {p0}, Landroid/os/OplusTraceManager;->deactivate()V

    .line 578
    :cond_a
    invoke-direct {p0}, Landroid/os/OplusTraceManager;->checkActive()Z

    move-result v8

    if-nez v8, :cond_c

    .line 579
    sget-boolean v8, Landroid/os/OplusTraceManager;->DEBUG:Z

    if-eqz v8, :cond_b

    .line 580
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to find active shared memory in client. Pid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 581
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 580
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    :cond_b
    return-void

    .line 587
    :cond_c
    :try_start_1
    iget-object v1, p0, Landroid/os/OplusTraceManager;->mByteBufferOutput:Landroid/os/OplusTraceManager$ByteBufferOutputStream;

    invoke-virtual {v1, p1}, Landroid/os/OplusTraceManager$ByteBufferOutputStream;->write(Ljava/nio/ByteBuffer;)V

    .line 588
    sget-boolean v1, Landroid/os/OplusTraceManager;->DEBUG_PRIVATE:Z

    if-eqz v1, :cond_d

    .line 589
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Write native trace to Process cache with size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/nio/BufferOverflowException; {:try_start_1 .. :try_end_1} :catch_1

    .line 593
    :cond_d
    goto :goto_4

    .line 591
    :catch_1
    move-exception v1

    .line 592
    .local v1, "e":Ljava/nio/BufferOverflowException;
    const-string v2, "Failed to write native trace to Process cache"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 594
    .end local v1    # "e":Ljava/nio/BufferOverflowException;
    :goto_4
    return-void
.end method

.method private blacklist writeTraceData([B)V
    .locals 13
    .param p1, "data"    # [B

    .line 446
    invoke-direct {p0}, Landroid/os/OplusTraceManager;->checkActive()Z

    move-result v0

    const-string v1, " is loss."

    const-string v2, ". The data with len="

    const-string v3, "OplusTraceManager"

    if-nez v0, :cond_1

    .line 447
    sget-boolean v0, Landroid/os/OplusTraceManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to find active shared memory in client.Pid="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 449
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v2, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 448
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :cond_0
    return-void

    .line 455
    :cond_1
    iget-object v0, p0, Landroid/os/OplusTraceManager;->mByteBufferOutput:Landroid/os/OplusTraceManager$ByteBufferOutputStream;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/OplusTraceManager$ByteBufferOutputStream;

    invoke-virtual {v0}, Landroid/os/OplusTraceManager$ByteBufferOutputStream;->getCapacity()I

    move-result v0

    .line 456
    .local v0, "capacity":I
    array-length v4, p1

    .line 457
    .local v4, "traceSize":I
    if-ge v0, v4, :cond_2

    .line 458
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to write trace with size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " into main buffer with capacity:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Pid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 460
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 458
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    return-void

    .line 464
    :cond_2
    iget-object v5, p0, Landroid/os/OplusTraceManager;->mByteBufferOutput:Landroid/os/OplusTraceManager$ByteBufferOutputStream;

    invoke-static {v5}, Landroid/os/OplusTraceManager$ByteBufferOutputStream;->-$$Nest$fgetmOffset(Landroid/os/OplusTraceManager$ByteBufferOutputStream;)I

    move-result v5

    .line 465
    .local v5, "currentPos":I
    add-int v6, v5, v4

    add-int/lit16 v6, v6, 0x80

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-gt v0, v6, :cond_3

    move v6, v7

    goto :goto_0

    :cond_3
    move v6, v8

    .line 466
    .local v6, "overLimit":Z
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    iget-wide v11, p0, Landroid/os/OplusTraceManager;->mLastFlushCacheElapsedTime:J

    sub-long/2addr v9, v11

    const-wide/16 v11, 0x7530

    cmp-long v9, v9, v11

    if-lez v9, :cond_4

    goto :goto_1

    :cond_4
    move v7, v8

    .line 468
    .local v7, "flushExpiredCache":Z
    :goto_1
    if-lez v5, :cond_9

    if-nez v6, :cond_5

    if-eqz v7, :cond_9

    .line 471
    :cond_5
    :try_start_0
    sget-object v8, Landroid/os/OplusTraceManager;->sRemoteService:Landroid/os/IOplusTraceService;

    iget-object v9, p0, Landroid/os/OplusTraceManager;->mCurrentSharedMem:Landroid/os/SharedMemory;

    invoke-interface {v8, v9, v5}, Landroid/os/IOplusTraceService;->handleTraceShmemBuffer(Landroid/os/SharedMemory;I)V

    .line 472
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/os/OplusTraceManager;->mLastFlushCacheElapsedTime:J

    .line 473
    sget-boolean v8, Landroid/os/OplusTraceManager;->DEBUG_PRIVATE:Z

    if-eqz v8, :cond_6

    .line 474
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Send sharedMemory obj to service, Pid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :cond_6
    const/4 v8, 0x0

    .line 479
    .local v8, "hashCode":I
    iget-object v9, p0, Landroid/os/OplusTraceManager;->mProcessRecorder:Landroid/os/ProcessTreeRecorder;

    if-eqz v9, :cond_8

    iget-object v9, p0, Landroid/os/OplusTraceManager;->mProcessRecorder:Landroid/os/ProcessTreeRecorder;

    invoke-virtual {v9}, Landroid/os/ProcessTreeRecorder;->getHashCode()I

    move-result v9

    move v8, v9

    iget v10, p0, Landroid/os/OplusTraceManager;->mLastProcessTreeHash:I

    if-eq v9, v10, :cond_8

    .line 481
    sget-object v9, Landroid/os/OplusTraceManager;->sRemoteService:Landroid/os/IOplusTraceService;

    iget-object v10, p0, Landroid/os/OplusTraceManager;->mProcessRecorder:Landroid/os/ProcessTreeRecorder;

    invoke-virtual {v10}, Landroid/os/ProcessTreeRecorder;->getPid()I

    move-result v10

    iget-object v11, p0, Landroid/os/OplusTraceManager;->mProcessRecorder:Landroid/os/ProcessTreeRecorder;

    .line 482
    invoke-virtual {v11}, Landroid/os/ProcessTreeRecorder;->getProcessName()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Landroid/os/OplusTraceManager;->mProcessRecorder:Landroid/os/ProcessTreeRecorder;

    .line 483
    invoke-virtual {v12}, Landroid/os/ProcessTreeRecorder;->getThreadMap()Ljava/util/Map;

    move-result-object v12

    .line 481
    invoke-interface {v9, v10, v11, v12}, Landroid/os/IOplusTraceService;->uploadProcessTree(ILjava/lang/String;Ljava/util/Map;)V

    .line 484
    sget-boolean v9, Landroid/os/OplusTraceManager;->DEBUG:Z

    if-eqz v9, :cond_7

    .line 485
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Upload process tree, Pid = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :cond_7
    iput v8, p0, Landroid/os/OplusTraceManager;->mLastProcessTreeHash:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    .end local v8    # "hashCode":I
    :cond_8
    goto :goto_2

    .line 489
    :catch_0
    move-exception v8

    .line 490
    .local v8, "e":Ljava/lang/Exception;
    const-string v9, "Failed to send sharedMem to remote service"

    invoke-static {v3, v9, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 493
    .end local v8    # "e":Ljava/lang/Exception;
    :goto_2
    invoke-direct {p0}, Landroid/os/OplusTraceManager;->deactivate()V

    .line 496
    :cond_9
    invoke-direct {p0}, Landroid/os/OplusTraceManager;->checkActive()Z

    move-result v8

    if-nez v8, :cond_b

    .line 497
    sget-boolean v8, Landroid/os/OplusTraceManager;->DEBUG:Z

    if-eqz v8, :cond_a

    .line 498
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to find active shared memory in client. Pid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 499
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v8, p1

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 498
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :cond_a
    return-void

    .line 505
    :cond_b
    :try_start_1
    iget-object v1, p0, Landroid/os/OplusTraceManager;->mByteBufferOutput:Landroid/os/OplusTraceManager$ByteBufferOutputStream;

    invoke-virtual {v1, p1}, Landroid/os/OplusTraceManager$ByteBufferOutputStream;->write([B)V

    .line 506
    sget-boolean v1, Landroid/os/OplusTraceManager;->DEBUG_PRIVATE:Z

    if-eqz v1, :cond_c

    .line 507
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Write trace to Process cache with size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 511
    :cond_c
    goto :goto_3

    .line 509
    :catch_1
    move-exception v1

    .line 510
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "Failed to write trace to Process cache"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 512
    .end local v1    # "e":Ljava/io/IOException;
    :goto_3
    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$attachThread$6$android-os-OplusTraceManager(ILjava/lang/String;)V
    .locals 2
    .param p1, "tid"    # I
    .param p2, "threadName"    # Ljava/lang/String;

    .line 429
    iget-object v0, p0, Landroid/os/OplusTraceManager;->mProcessRecorder:Landroid/os/ProcessTreeRecorder;

    if-nez v0, :cond_0

    .line 430
    new-instance v0, Landroid/os/ProcessTreeRecorder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/ProcessTreeRecorder;-><init>(I)V

    iput-object v0, p0, Landroid/os/OplusTraceManager;->mProcessRecorder:Landroid/os/ProcessTreeRecorder;

    .line 432
    :cond_0
    iget-object v0, p0, Landroid/os/OplusTraceManager;->mProcessRecorder:Landroid/os/ProcessTreeRecorder;

    invoke-virtual {v0, p1, p2}, Landroid/os/ProcessTreeRecorder;->attachThread(ILjava/lang/String;)Z

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Async attach thread with tid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and threadName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusTraceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    return-void
.end method

.method synthetic blacklist lambda$connectRemoteServiceAsync$4$android-os-OplusTraceManager()V
    .locals 1

    .line 192
    invoke-static {}, Landroid/os/OplusTraceManager;->binderService()Z

    .line 193
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/OplusTraceManager;->mIsConnecting:Z

    .line 194
    return-void
.end method

.method synthetic blacklist lambda$handleNativeTrace$8$android-os-OplusTraceManager(Ljava/util/Map;Ljava/io/FileDescriptor;I)V
    .locals 0
    .param p1, "threadMap"    # Ljava/util/Map;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "length"    # I

    .line 707
    invoke-direct {p0, p1}, Landroid/os/OplusTraceManager;->updateProcessTreeMap(Ljava/util/Map;)V

    .line 708
    invoke-direct {p0, p2, p3}, Landroid/os/OplusTraceManager;->handleAshmemDataFromNative(Ljava/io/FileDescriptor;I)V

    .line 709
    return-void
.end method

.method synthetic blacklist lambda$insertSerializedDataAsQueue$7$android-os-OplusTraceManager([B)V
    .locals 0
    .param p1, "data"    # [B

    .line 441
    invoke-direct {p0, p1}, Landroid/os/OplusTraceManager;->writeTraceData([B)V

    .line 442
    return-void
.end method

.method public blacklist onFilterChanged(ILjava/util/Map;)V
    .locals 2
    .param p1, "hashCode"    # I
    .param p2, "filter"    # Ljava/util/Map;

    .line 272
    sget-boolean v0, Landroid/os/OplusTraceManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Filter changed: hashCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusTraceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_0
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 279
    :cond_1
    new-instance v0, Landroid/os/ContentFilter;

    invoke-direct {v0, p1, p2}, Landroid/os/ContentFilter;-><init>(ILjava/util/Map;)V

    sput-object v0, Landroid/os/OplusTraceManager;->sContentFilter:Landroid/os/ContentFilter;

    .line 282
    invoke-static {p2}, Landroid/os/OneTraceExtImpl;->updateNativeContentFilter(Ljava/util/Map;)V

    goto :goto_1

    .line 277
    :cond_2
    :goto_0
    const/4 v0, 0x0

    sput-object v0, Landroid/os/OplusTraceManager;->sContentFilter:Landroid/os/ContentFilter;

    .line 284
    :goto_1
    return-void
.end method
