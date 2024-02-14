.class public Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;
.super Ljava/lang/Object;
.source "OplusDeepThinkerManagerDecor.java"

# interfaces
.implements Lcom/oplus/deepthinker/IOplusDeepThinkerManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor$DeepThinkerThreadFactory;,
        Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor$EnableStateChangeReceiver;
    }
.end annotation


# static fields
.field public static final blacklist OPLUS_PKG:Ljava/lang/String; = "com.oplus.deepthinker"

.field private static final blacklist TAG:Ljava/lang/String; = "ManagerDecor"

.field private static final blacklist THREAD_LIVE_TIME:J = 0x0L

.field private static final blacklist THREAD_NAME_FORMAT:Ljava/lang/String; = "deepthinker-"

.field private static final blacklist THREAD_POOL_SIZE:I = 0x5

.field private static volatile blacklist sInstance:Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mEnableStateChangeReceiver:Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor$EnableStateChangeReceiver;

.field private final blacklist mEnableStateRunnable:Ljava/lang/Runnable;

.field private final blacklist mExecutor:Ljava/util/concurrent/ExecutorService;

.field private blacklist mImpl:Lcom/oplus/deepthinker/IOplusDeepThinkerManager;

.field private blacklist mIsApplicationEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final blacklist mMainHandler:Landroid/os/Handler;

.field private blacklist mObserverRefs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/oplus/deepthinker/ServiceStateObserver;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$monApplicationEnabled(Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;->onApplicationEnabled()V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v7, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor$DeepThinkerThreadFactory;

    const-string v0, "deepthinker-"

    invoke-direct {v7, p0, v0}, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor$DeepThinkerThreadFactory;-><init>(Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;Ljava/lang/String;)V

    const/4 v1, 0x5

    const/4 v2, 0x5

    const-wide/16 v3, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v8, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 73
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;->mMainHandler:Landroid/os/Handler;

    .line 75
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;->mObserverRefs:Ljava/util/Vector;

    .line 77
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;->mIsApplicationEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 84
    new-instance v0, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor$$ExternalSyntheticLambda0;-><init>(Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;)V

    iput-object v0, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;->mEnableStateRunnable:Ljava/lang/Runnable;

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;->mContext:Landroid/content/Context;

    .line 115
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;->setImpl(Z)V

    .line 117
    iget-object v0, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;->checkApplicationEnableState(Landroid/content/Context;)V

    .line 118
    return-void
.end method

.method private blacklist checkApplicationEnableState(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 121
    invoke-direct {p0}, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;->registerEnableStateReceiver()V

    .line 123
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 124
    .local v0, "userManager":Landroid/os/UserManager;
    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v1

    const-string v2, "ManagerDecor"

    if-eqz v1, :cond_0

    .line 125
    const-string v1, "UserUnlocked, checkApplicationEnableState : enable state true "

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-direct {p0}, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;->onApplicationEnabled()V

    goto :goto_0

    .line 128
    :cond_0
    const-string v1, "Userlocked, checkApplicationEnableState : enable state false "

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-direct {p0}, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;->onApplicationDisabled()V

    .line 131
    :goto_0
    return-void
.end method

.method public static blacklist getInstance(Landroid/content/Context;)Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 103
    sget-object v0, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;->sInstance:Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;

    if-nez v0, :cond_1

    .line 104
    const-class v0, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;

    monitor-enter v0

    .line 105
    :try_start_0
    sget-object v1, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;->sInstance:Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;

    if-nez v1, :cond_0

    .line 106
    new-instance v1, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;

    invoke-direct {v1, p0}, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;->sInstance:Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;

    .line 108
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 110
    :cond_1
    :goto_0
    sget-object v0, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;->sInstance:Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;

    return-object v0
.end method

.method static synthetic blacklist lambda$registerServiceStateObserver$1(Ljava/lang/ref/WeakReference;)Z
    .locals 1
    .param p0, "it"    # Ljava/lang/ref/WeakReference;

    .line 155
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

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

.method private blacklist onApplicationDisabled()V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;->mIsApplicationEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 135
    return-void
.end method

.method private blacklist onApplicationEnabled()V
    .locals 2

    .line 138
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;->setImpl(Z)V

    .line 139
    iget-object v0, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;->mIsApplicationEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 140
    iget-object v0, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;->mEnableStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 141
    return-void
.end method

.method private blacklist registerEnableStateReceiver()V
    .locals 3

    .line 144
    new-instance v0, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor$EnableStateChangeReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor$EnableStateChangeReceiver;-><init>(Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor$EnableStateChangeReceiver-IA;)V

    iput-object v0, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;->mEnableStateChangeReceiver:Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor$EnableStateChangeReceiver;

    .line 145
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 146
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    iget-object v1, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;->mEnableStateChangeReceiver:Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor$EnableStateChangeReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 148
    return-void
.end method

.method private blacklist setImpl(Z)V
    .locals 3
    .param p1, "stub"    # Z

    .line 317
    iget-object v0, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;->mImpl:Lcom/oplus/deepthinker/IOplusDeepThinkerManager;

    if-eqz v0, :cond_0

    .line 318
    instance-of v0, v0, Lcom/oplus/deepthinker/OplusDeepThinkerManager;

    xor-int/lit8 v0, v0, 0x1

    .line 319
    .local v0, "current":Z
    if-ne p1, v0, :cond_0

    .line 320
    return-void

    .line 323
    .end local v0    # "current":Z
    :cond_0
    if-eqz p1, :cond_1

    .line 324
    new-instance v0, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor$1;

    invoke-direct {v0, p0}, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor$1;-><init>(Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;)V

    iput-object v0, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;->mImpl:Lcom/oplus/deepthinker/IOplusDeepThinkerManager;

    goto :goto_0

    .line 327
    :cond_1
    new-instance v0, Lcom/oplus/deepthinker/OplusDeepThinkerManager;

    iget-object v1, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, v1, v2}, Lcom/oplus/deepthinker/OplusDeepThinkerManager;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;->mImpl:Lcom/oplus/deepthinker/IOplusDeepThinkerManager;

    .line 329
    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist call(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p1, "request"    # Landroid/os/Bundle;

    .line 265
    iget-object v0, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;->mImpl:Lcom/oplus/deepthinker/IOplusDeepThinkerManager;

    invoke-interface {v0, p1}, Lcom/oplus/deepthinker/IOplusDeepThinkerManager;->call(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getAlgorithmPlatformVersion()I
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;->mImpl:Lcom/oplus/deepthinker/IOplusDeepThinkerManager;

    invoke-interface {v0}, Lcom/oplus/deepthinker/IOplusDeepThinkerManager;->getAlgorithmPlatformVersion()I

    move-result v0

    return v0
.end method

.method public whitelist getAppPredictResult(Ljava/lang/String;)Lcom/oplus/deepthinker/sdk/aidl/proton/appactionpredict/PredictResult;
    .locals 1
    .param p1, "callerName"    # Ljava/lang/String;

    .line 180
    iget-object v0, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;->mImpl:Lcom/oplus/deepthinker/IOplusDeepThinkerManager;

    invoke-interface {v0, p1}, Lcom/oplus/deepthinker/IOplusDeepThinkerManager;->getAppPredictResult(Ljava/lang/String;)Lcom/oplus/deepthinker/sdk/aidl/proton/appactionpredict/PredictResult;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getAppPredictResultMap(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "callerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/oplus/deepthinker/sdk/aidl/proton/appactionpredict/PredictResult;",
            ">;"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;->mImpl:Lcom/oplus/deepthinker/IOplusDeepThinkerManager;

    invoke-interface {v0, p1}, Lcom/oplus/deepthinker/IOplusDeepThinkerManager;->getAppPredictResultMap(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getAppQueueSortedByComplex()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 280
    iget-object v0, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;->mImpl:Lcom/oplus/deepthinker/IOplusDeepThinkerManager;

    invoke-interface {v0}, Lcom/oplus/deepthinker/IOplusDeepThinkerManager;->getAppQueueSortedByComplex()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getAppQueueSortedByCount()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 275
    iget-object v0, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;->mImpl:Lcom/oplus/deepthinker/IOplusDeepThinkerManager;

    invoke-interface {v0}, Lcom/oplus/deepthinker/IOplusDeepThinkerManager;->getAppQueueSortedByCount()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getAppQueueSortedByTime()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 270
    iget-object v0, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;->mImpl:Lcom/oplus/deepthinker/IOplusDeepThinkerManager;

    invoke-interface {v0}, Lcom/oplus/deepthinker/IOplusDeepThinkerManager;->getAppQueueSortedByTime()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getAppType(Ljava/lang/String;)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 205
    iget-object v0, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;->mImpl:Lcom/oplus/deepthinker/IOplusDeepThinkerManager;

    invoke-interface {v0, p1}, Lcom/oplus/deepthinker/IOplusDeepThinkerManager;->getAppType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist getAppTypeMap(Ljava/util/List;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map;"
        }
    .end annotation

    .line 210
    .local p1, "packageNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;->mImpl:Lcom/oplus/deepthinker/IOplusDeepThinkerManager;

    invoke-interface {v0, p1}, Lcom/oplus/deepthinker/IOplusDeepThinkerManager;->getAppTypeMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAvailableEvent()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/eventhub/sdk/aidl/Event;",
            ">;"
        }
    .end annotation

    .line 255
    iget-object v0, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;->mImpl:Lcom/oplus/deepthinker/IOplusDeepThinkerManager;

    invoke-interface {v0}, Lcom/oplus/deepthinker/IOplusDeepThinkerManager;->getAvailableEvent()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDeepSleepPredictResult()Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepPredictResult;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;->mImpl:Lcom/oplus/deepthinker/IOplusDeepThinkerManager;

    invoke-interface {v0}, Lcom/oplus/deepthinker/IOplusDeepThinkerManager;->getDeepSleepPredictResult()Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepPredictResult;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDeepSleepTotalPredictResult()Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TotalPredictResult;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;->mImpl:Lcom/oplus/deepthinker/IOplusDeepThinkerManager;

    invoke-interface {v0}, Lcom/oplus/deepthinker/IOplusDeepThinkerManager;->getDeepSleepTotalPredictResult()Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TotalPredictResult;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getInOutDoorState()I
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;->mImpl:Lcom/oplus/deepthinker/IOplusDeepThinkerManager;

    invoke-interface {v0}, Lcom/oplus/deepthinker/IOplusDeepThinkerManager;->getInOutDoorState()I

    move-result v0

    return v0
.end method

.method public whitelist getInOutDoorState(Landroid/os/Bundle;)I
    .locals 1
    .param p1, "args"    # Landroid/os/Bundle;

    .line 295
    iget-object v0, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;->mImpl:Lcom/oplus/deepthinker/IOplusDeepThinkerManager;

    invoke-interface {v0, p1}, Lcom/oplus/deepthinker/IOplusDeepThinkerManager;->getInOutDoorState(Landroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method public blacklist getLastDeepSleepRecord()Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/SleepRecord;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;->mImpl:Lcom/oplus/deepthinker/IOplusDeepThinkerManager;

    invoke-interface {v0}, Lcom/oplus/deepthinker/IOplusDeepThinkerManager;->getLastDeepSleepRecord()Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/SleepRecord;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPredictAABResult()Lcom/oplus/deepthinker/sdk/aidl/proton/appactionpredict/PredictAABResult;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;->mImpl:Lcom/oplus/deepthinker/IOplusDeepThinkerManager;

    invoke-interface {v0}, Lcom/oplus/deepthinker/IOplusDeepThinkerManager;->getPredictAABResult()Lcom/oplus/deepthinker/sdk/aidl/proton/appactionpredict/PredictAABResult;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPredictResultWithFeedBack()Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepPredictResult;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;->mImpl:Lcom/oplus/deepthinker/IOplusDeepThinkerManager;

    invoke-interface {v0}, Lcom/oplus/deepthinker/IOplusDeepThinkerManager;->getPredictResultWithFeedBack()Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepPredictResult;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSmartGpsBssidList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;->mImpl:Lcom/oplus/deepthinker/IOplusDeepThinkerManager;

    invoke-interface {v0}, Lcom/oplus/deepthinker/IOplusDeepThinkerManager;->getSmartGpsBssidList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getWifiLocationLabels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/deepthinker/sdk/aidl/proton/userprofile/WifiLocationLabel;",
            ">;"
        }
    .end annotation

    .line 285
    iget-object v0, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;->mImpl:Lcom/oplus/deepthinker/IOplusDeepThinkerManager;

    invoke-interface {v0}, Lcom/oplus/deepthinker/IOplusDeepThinkerManager;->getWifiLocationLabels()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist isApplicationEnable()Z
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;->mIsApplicationEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public blacklist isAvailableEvent(Lcom/oplus/eventhub/sdk/aidl/Event;)Z
    .locals 1
    .param p1, "event"    # Lcom/oplus/eventhub/sdk/aidl/Event;

    .line 260
    iget-object v0, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;->mImpl:Lcom/oplus/deepthinker/IOplusDeepThinkerManager;

    invoke-interface {v0, p1}, Lcom/oplus/deepthinker/IOplusDeepThinkerManager;->isAvailableEvent(Lcom/oplus/eventhub/sdk/aidl/Event;)Z

    move-result v0

    return v0
.end method

.method synthetic blacklist lambda$new$0$com-oplus-deepthinker-OplusDeepThinkerManagerDecor()V
    .locals 6

    .line 85
    iget-object v0, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;->mEnableStateChangeReceiver:Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor$EnableStateChangeReceiver;

    if-eqz v0, :cond_0

    .line 86
    iget-object v1, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;->mEnableStateChangeReceiver:Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor$EnableStateChangeReceiver;

    .line 90
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;->mObserverRefs:Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 91
    .local v0, "refsCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/oplus/deepthinker/ServiceStateObserver;>;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 92
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/oplus/deepthinker/ServiceStateObserver;>;"
    if-nez v2, :cond_1

    .line 93
    goto :goto_0

    .line 95
    :cond_1
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/deepthinker/ServiceStateObserver;

    .line 96
    .local v3, "observer":Lcom/oplus/deepthinker/ServiceStateObserver;
    if-eqz v3, :cond_2

    .line 97
    iget-object v4, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor$$ExternalSyntheticLambda2;

    invoke-direct {v5, v3}, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor$$ExternalSyntheticLambda2;-><init>(Lcom/oplus/deepthinker/ServiceStateObserver;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 99
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/oplus/deepthinker/ServiceStateObserver;>;"
    .end local v3    # "observer":Lcom/oplus/deepthinker/ServiceStateObserver;
    :cond_2
    goto :goto_0

    .line 100
    :cond_3
    return-void
.end method

.method synthetic blacklist lambda$registerServiceStateObserver$2$com-oplus-deepthinker-OplusDeepThinkerManagerDecor(Lcom/oplus/deepthinker/ServiceStateObserver;)V
    .locals 2
    .param p1, "observer"    # Lcom/oplus/deepthinker/ServiceStateObserver;

    .line 153
    iget-object v0, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;->mObserverRefs:Ljava/util/Vector;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 154
    const-string v0, "ManagerDecor"

    const-string v1, "registerServiceStateObserver success "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v0, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;->mObserverRefs:Ljava/util/Vector;

    new-instance v1, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeIf(Ljava/util/function/Predicate;)Z

    .line 156
    return-void
.end method

.method public blacklist onServiceDied()V
    .locals 6

    .line 304
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;->mObserverRefs:Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 305
    .local v0, "refsCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/oplus/deepthinker/ServiceStateObserver;>;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 306
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/oplus/deepthinker/ServiceStateObserver;>;"
    if-nez v2, :cond_0

    .line 307
    goto :goto_0

    .line 309
    :cond_0
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/deepthinker/ServiceStateObserver;

    .line 310
    .local v3, "observer":Lcom/oplus/deepthinker/ServiceStateObserver;
    if-eqz v3, :cond_1

    .line 311
    iget-object v4, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor$$ExternalSyntheticLambda3;

    invoke-direct {v5, v3}, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor$$ExternalSyntheticLambda3;-><init>(Lcom/oplus/deepthinker/ServiceStateObserver;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 313
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/oplus/deepthinker/ServiceStateObserver;>;"
    .end local v3    # "observer":Lcom/oplus/deepthinker/ServiceStateObserver;
    :cond_1
    goto :goto_0

    .line 314
    :cond_2
    return-void
.end method

.method public whitelist registerCallback(Lcom/oplus/eventhub/sdk/aidl/IEventCallback;Lcom/oplus/eventhub/sdk/aidl/EventRequestConfig;)Z
    .locals 1
    .param p1, "callback"    # Lcom/oplus/eventhub/sdk/aidl/IEventCallback;
    .param p2, "config"    # Lcom/oplus/eventhub/sdk/aidl/EventRequestConfig;

    .line 235
    iget-object v0, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;->mImpl:Lcom/oplus/deepthinker/IOplusDeepThinkerManager;

    invoke-interface {v0, p1, p2}, Lcom/oplus/deepthinker/IOplusDeepThinkerManager;->registerCallback(Lcom/oplus/eventhub/sdk/aidl/IEventCallback;Lcom/oplus/eventhub/sdk/aidl/EventRequestConfig;)Z

    move-result v0

    return v0
.end method

.method public blacklist registerEventCallback(Lcom/oplus/eventhub/sdk/aidl/IEventCallback;Lcom/oplus/eventhub/sdk/aidl/EventConfig;)I
    .locals 1
    .param p1, "callback"    # Lcom/oplus/eventhub/sdk/aidl/IEventCallback;
    .param p2, "config"    # Lcom/oplus/eventhub/sdk/aidl/EventConfig;

    .line 245
    iget-object v0, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;->mImpl:Lcom/oplus/deepthinker/IOplusDeepThinkerManager;

    invoke-interface {v0, p1, p2}, Lcom/oplus/deepthinker/IOplusDeepThinkerManager;->registerEventCallback(Lcom/oplus/eventhub/sdk/aidl/IEventCallback;Lcom/oplus/eventhub/sdk/aidl/EventConfig;)I

    move-result v0

    return v0
.end method

.method public whitelist registerServiceStateObserver(Lcom/oplus/deepthinker/ServiceStateObserver;)V
    .locals 2
    .param p1, "observer"    # Lcom/oplus/deepthinker/ServiceStateObserver;

    .line 152
    iget-object v0, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor$$ExternalSyntheticLambda1;-><init>(Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;Lcom/oplus/deepthinker/ServiceStateObserver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 157
    return-void
.end method

.method public whitelist run(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 300
    iget-object v0, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;->mImpl:Lcom/oplus/deepthinker/IOplusDeepThinkerManager;

    invoke-interface {v0, p1}, Lcom/oplus/deepthinker/IOplusDeepThinkerManager;->run(Ljava/lang/Runnable;)V

    .line 301
    return-void
.end method

.method public whitelist triggerHookEvent(IILjava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "eventType"    # I
    .param p2, "uid"    # I
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "extra"    # Landroid/os/Bundle;

    .line 225
    iget-object v0, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;->mImpl:Lcom/oplus/deepthinker/IOplusDeepThinkerManager;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/oplus/deepthinker/IOplusDeepThinkerManager;->triggerHookEvent(IILjava/lang/String;Landroid/os/Bundle;)V

    .line 226
    return-void
.end method

.method public whitelist triggerHookEvent(Lcom/oplus/eventhub/sdk/aidl/TriggerEvent;)V
    .locals 1
    .param p1, "triggerEvent"    # Lcom/oplus/eventhub/sdk/aidl/TriggerEvent;

    .line 220
    iget-object v0, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;->mImpl:Lcom/oplus/deepthinker/IOplusDeepThinkerManager;

    invoke-interface {v0, p1}, Lcom/oplus/deepthinker/IOplusDeepThinkerManager;->triggerHookEvent(Lcom/oplus/eventhub/sdk/aidl/TriggerEvent;)V

    .line 221
    return-void
.end method

.method public whitelist triggerHookEventAsync(Landroid/os/Handler;IILjava/lang/String;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "eventID"    # I
    .param p3, "uid"    # I
    .param p4, "pkg"    # Ljava/lang/String;
    .param p5, "extra"    # Landroid/os/Bundle;

    .line 230
    iget-object v0, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;->mImpl:Lcom/oplus/deepthinker/IOplusDeepThinkerManager;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/oplus/deepthinker/IOplusDeepThinkerManager;->triggerHookEventAsync(Landroid/os/Handler;IILjava/lang/String;Landroid/os/Bundle;)V

    .line 231
    return-void
.end method

.method public whitelist unregisterCallback(Lcom/oplus/eventhub/sdk/aidl/IEventCallback;)Z
    .locals 1
    .param p1, "callback"    # Lcom/oplus/eventhub/sdk/aidl/IEventCallback;

    .line 240
    iget-object v0, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;->mImpl:Lcom/oplus/deepthinker/IOplusDeepThinkerManager;

    invoke-interface {v0, p1}, Lcom/oplus/deepthinker/IOplusDeepThinkerManager;->unregisterCallback(Lcom/oplus/eventhub/sdk/aidl/IEventCallback;)Z

    move-result v0

    return v0
.end method

.method public whitelist unregisterEventCallback(Lcom/oplus/eventhub/sdk/aidl/IEventCallback;)I
    .locals 1
    .param p1, "callback"    # Lcom/oplus/eventhub/sdk/aidl/IEventCallback;

    .line 250
    iget-object v0, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;->mImpl:Lcom/oplus/deepthinker/IOplusDeepThinkerManager;

    invoke-interface {v0, p1}, Lcom/oplus/deepthinker/IOplusDeepThinkerManager;->unregisterEventCallback(Lcom/oplus/eventhub/sdk/aidl/IEventCallback;)I

    move-result v0

    return v0
.end method
