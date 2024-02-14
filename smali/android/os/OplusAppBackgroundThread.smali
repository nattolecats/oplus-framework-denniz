.class public final Landroid/os/OplusAppBackgroundThread;
.super Landroid/os/HandlerThread;
.source "OplusAppBackgroundThread.java"


# static fields
.field private static final blacklist SLOW_DELIVERY_THRESHOLD_MS:J = 0x7530L

.field private static final blacklist SLOW_DISPATCH_THRESHOLD_MS:J = 0x2710L

.field private static blacklist sHandler:Landroid/os/Handler;

.field private static blacklist sHandlerExecutor:Landroid/os/HandlerExecutor;

.field private static blacklist sInstance:Landroid/os/OplusAppBackgroundThread;


# direct methods
.method private constructor blacklist <init>()V
    .locals 2

    .line 42
    const-string v0, "oplus.app.bg"

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 43
    return-void
.end method

.method private static blacklist ensureThreadLocked()V
    .locals 5

    .line 46
    sget-object v0, Landroid/os/OplusAppBackgroundThread;->sInstance:Landroid/os/OplusAppBackgroundThread;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Landroid/os/OplusAppBackgroundThread;

    invoke-direct {v0}, Landroid/os/OplusAppBackgroundThread;-><init>()V

    sput-object v0, Landroid/os/OplusAppBackgroundThread;->sInstance:Landroid/os/OplusAppBackgroundThread;

    .line 48
    invoke-virtual {v0}, Landroid/os/OplusAppBackgroundThread;->start()V

    .line 49
    sget-object v0, Landroid/os/OplusAppBackgroundThread;->sInstance:Landroid/os/OplusAppBackgroundThread;

    invoke-virtual {v0}, Landroid/os/OplusAppBackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 50
    .local v0, "looper":Landroid/os/Looper;
    const-wide/32 v1, 0x80000

    invoke-virtual {v0, v1, v2}, Landroid/os/Looper;->setTraceTag(J)V

    .line 51
    const-wide/16 v1, 0x2710

    const-wide/16 v3, 0x7530

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Looper;->setSlowLogThresholdMs(JJ)V

    .line 53
    new-instance v1, Landroid/os/Handler;

    sget-object v2, Landroid/os/OplusAppBackgroundThread;->sInstance:Landroid/os/OplusAppBackgroundThread;

    invoke-virtual {v2}, Landroid/os/OplusAppBackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Landroid/os/OplusAppBackgroundThread;->sHandler:Landroid/os/Handler;

    .line 54
    new-instance v1, Landroid/os/HandlerExecutor;

    sget-object v2, Landroid/os/OplusAppBackgroundThread;->sHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    sput-object v1, Landroid/os/OplusAppBackgroundThread;->sHandlerExecutor:Landroid/os/HandlerExecutor;

    .line 56
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_0
    return-void
.end method

.method public static blacklist get()Landroid/os/OplusAppBackgroundThread;
    .locals 2

    .line 59
    const-class v0, Landroid/os/OplusAppBackgroundThread;

    monitor-enter v0

    .line 60
    :try_start_0
    invoke-static {}, Landroid/os/OplusAppBackgroundThread;->ensureThreadLocked()V

    .line 61
    sget-object v1, Landroid/os/OplusAppBackgroundThread;->sInstance:Landroid/os/OplusAppBackgroundThread;

    monitor-exit v0

    return-object v1

    .line 62
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static blacklist getExecutor()Ljava/util/concurrent/Executor;
    .locals 2

    .line 73
    const-class v0, Landroid/os/OplusAppBackgroundThread;

    monitor-enter v0

    .line 74
    :try_start_0
    invoke-static {}, Landroid/os/OplusAppBackgroundThread;->ensureThreadLocked()V

    .line 75
    sget-object v1, Landroid/os/OplusAppBackgroundThread;->sHandlerExecutor:Landroid/os/HandlerExecutor;

    monitor-exit v0

    return-object v1

    .line 76
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static blacklist getHandler()Landroid/os/Handler;
    .locals 2

    .line 66
    const-class v0, Landroid/os/OplusAppBackgroundThread;

    monitor-enter v0

    .line 67
    :try_start_0
    invoke-static {}, Landroid/os/OplusAppBackgroundThread;->ensureThreadLocked()V

    .line 68
    sget-object v1, Landroid/os/OplusAppBackgroundThread;->sHandler:Landroid/os/Handler;

    monitor-exit v0

    return-object v1

    .line 69
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
