.class public Landroid/view/performance/OplusChoreographerPerfInjector;
.super Ljava/lang/Object;
.source "OplusChoreographerPerfInjector.java"


# static fields
.field private static blacklist CALLBACK_LAST:I

.field private static blacklist DEBUG:Z

.field private static blacklist MSG_DO_FRAME:I

.field private static blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mCallbackQueues:Ljava/lang/Object;

.field private blacklist mChoreographer:Landroid/view/Choreographer;

.field private blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mLock:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 31
    const/4 v0, 0x0

    sput v0, Landroid/view/performance/OplusChoreographerPerfInjector;->MSG_DO_FRAME:I

    .line 32
    const/4 v1, 0x4

    sput v1, Landroid/view/performance/OplusChoreographerPerfInjector;->CALLBACK_LAST:I

    .line 33
    const-string v1, "OplusChoreographerPerfInjector"

    sput-object v1, Landroid/view/performance/OplusChoreographerPerfInjector;->TAG:Ljava/lang/String;

    .line 34
    const-string v1, "persist.sys.assert.panic"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/performance/OplusChoreographerPerfInjector;->DEBUG:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/Choreographer;)V
    .locals 1
    .param p1, "choreographer"    # Landroid/view/Choreographer;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Landroid/view/performance/OplusChoreographerPerfInjector;->mChoreographer:Landroid/view/Choreographer;

    .line 37
    invoke-virtual {p1}, Landroid/view/Choreographer;->getWrapper()Landroid/view/IChoreographerWrapper;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IChoreographerWrapper;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Landroid/view/performance/OplusChoreographerPerfInjector;->mHandler:Landroid/os/Handler;

    .line 38
    iget-object v0, p0, Landroid/view/performance/OplusChoreographerPerfInjector;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v0}, Landroid/view/Choreographer;->getWrapper()Landroid/view/IChoreographerWrapper;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IChoreographerWrapper;->getCallbackQueues()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/view/performance/OplusChoreographerPerfInjector;->mCallbackQueues:Ljava/lang/Object;

    .line 39
    invoke-virtual {p1}, Landroid/view/Choreographer;->getWrapper()Landroid/view/IChoreographerWrapper;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IChoreographerWrapper;->getLock()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/view/performance/OplusChoreographerPerfInjector;->mLock:Ljava/lang/Object;

    .line 40
    invoke-virtual {p1}, Landroid/view/Choreographer;->getWrapper()Landroid/view/IChoreographerWrapper;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IChoreographerWrapper;->getCallbackLastConst()I

    move-result v0

    sput v0, Landroid/view/performance/OplusChoreographerPerfInjector;->CALLBACK_LAST:I

    .line 41
    invoke-virtual {p1}, Landroid/view/Choreographer;->getWrapper()Landroid/view/IChoreographerWrapper;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IChoreographerWrapper;->getMsgDoFrameConst()I

    move-result v0

    sput v0, Landroid/view/performance/OplusChoreographerPerfInjector;->MSG_DO_FRAME:I

    .line 42
    return-void
.end method


# virtual methods
.method public blacklist doFrameImmediately()V
    .locals 4

    .line 46
    iget-object v0, p0, Landroid/view/performance/OplusChoreographerPerfInjector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 47
    :try_start_0
    iget-object v1, p0, Landroid/view/performance/OplusChoreographerPerfInjector;->mHandler:Landroid/os/Handler;

    sget v2, Landroid/view/performance/OplusChoreographerPerfInjector;->MSG_DO_FRAME:I

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 48
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 49
    iget-object v2, p0, Landroid/view/performance/OplusChoreographerPerfInjector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 50
    sget-boolean v2, Landroid/view/performance/OplusChoreographerPerfInjector;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Landroid/view/performance/OplusChoreographerPerfInjector;->TAG:Ljava/lang/String;

    const-string v3, "doFrameImmediately"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    monitor-exit v0

    .line 52
    return-void

    .line 51
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist postCallbackImmediately(ILjava/lang/Object;Ljava/lang/Object;J)V
    .locals 14
    .param p1, "callbackType"    # I
    .param p2, "action"    # Ljava/lang/Object;
    .param p3, "token"    # Ljava/lang/Object;
    .param p4, "delayMillis"    # J

    .line 57
    move-object v1, p0

    move v2, p1

    if-eqz p2, :cond_2

    .line 60
    if-ltz v2, :cond_1

    sget v0, Landroid/view/performance/OplusChoreographerPerfInjector;->CALLBACK_LAST:I

    if-gt v2, v0, :cond_1

    .line 64
    iget-object v9, v1, Landroid/view/performance/OplusChoreographerPerfInjector;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 65
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    move-wide v10, v3

    .line 66
    .local v10, "now":J
    add-long v12, v10, p4

    .line 67
    .local v12, "dueTime":J
    iget-object v0, v1, Landroid/view/performance/OplusChoreographerPerfInjector;->mCallbackQueues:Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    .line 68
    .local v4, "callBackQueue":Ljava/lang/Object;
    iget-object v0, v1, Landroid/view/performance/OplusChoreographerPerfInjector;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v0}, Landroid/view/Choreographer;->getWrapper()Landroid/view/IChoreographerWrapper;

    move-result-object v3

    move-wide v5, v12

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-interface/range {v3 .. v8}, Landroid/view/IChoreographerWrapper;->addCallbackLockedForCallbackQueue(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)V

    .line 69
    sget-boolean v0, Landroid/view/performance/OplusChoreographerPerfInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 70
    sget-object v0, Landroid/view/performance/OplusChoreographerPerfInjector;->TAG:Ljava/lang/String;

    const-string v3, "CallbackQueue addCallbackLocked"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .end local v4    # "callBackQueue":Ljava/lang/Object;
    .end local v10    # "now":J
    .end local v12    # "dueTime":J
    :cond_0
    monitor-exit v9

    .line 73
    return-void

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 61
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "callbackType is invalid"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "action must not be null"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
