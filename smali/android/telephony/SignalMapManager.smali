.class public Landroid/telephony/SignalMapManager;
.super Ljava/lang/Object;
.source "SignalMapManager.java"

# interfaces
.implements Landroid/telephony/ISignalMapManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/SignalMapManager$IRetryTimeout;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String;

.field private static blacklist mInfoCallbacks:Landroid/telephony/IQoSServiceInfoCallBack;

.field private static final blacklist mOlkPkgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist mQoSCbDebug:Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSCollectCallBack;

.field private static final blacklist mQoSInfoCb:Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSServiceInfoCallBack;

.field private static final blacklist mQosCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/IQoSPredictionCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist mQosCbToRemote:Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSPredictionCallBack;

.field private static blacklist mQosCollectCallback:Landroid/telephony/IQoSCollectCallBack;

.field private static blacklist mSignalMapSupport:Z

.field private static blacklist sInstance:Landroid/telephony/ISignalMapManager;

.field private static final blacklist sLock:Ljava/lang/Object;


# instance fields
.field private blacklist RETRY_COUNTER:I

.field private blacklist RETRY_TIMEOUT_MS:I

.field private blacklist hasQoSReg:Z

.field private blacklist mContext:Landroid/content/Context;

.field private final blacklist mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private final blacklist mGetServiceRunnable:Ljava/lang/Runnable;

.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mRetryBackOffTime:Landroid/telephony/SignalMapManager$IRetryTimeout;

.field private blacklist mRetryCount:I

.field private blacklist mSignalMap:Lcom/android/internal/telephony/signalMap/ISignalMap;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetmInfoCallbacks()Landroid/telephony/IQoSServiceInfoCallBack;
    .locals 1

    sget-object v0, Landroid/telephony/SignalMapManager;->mInfoCallbacks:Landroid/telephony/IQoSServiceInfoCallBack;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetmQosCallbacks()Ljava/util/List;
    .locals 1

    sget-object v0, Landroid/telephony/SignalMapManager;->mQosCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetmQosCollectCallback()Landroid/telephony/IQoSCollectCallBack;
    .locals 1

    sget-object v0, Landroid/telephony/SignalMapManager;->mQosCollectCallback:Landroid/telephony/IQoSCollectCallBack;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 32
    const-class v0, Landroid/telephony/SignalMapManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/SignalMapManager;->TAG:Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/telephony/SignalMapManager;->sLock:Ljava/lang/Object;

    .line 37
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Landroid/telephony/SignalMapManager;->mQosCallbacks:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Landroid/telephony/SignalMapManager;->mOlkPkgs:Ljava/util/List;

    .line 53
    sget-boolean v0, Lcom/android/internal/telephony/OplusFeature;->OPLUS_FEATURE_SIGNAL_MAP:Z

    sput-boolean v0, Landroid/telephony/SignalMapManager;->mSignalMapSupport:Z

    .line 70
    new-instance v0, Landroid/telephony/SignalMapManager$1;

    invoke-direct {v0}, Landroid/telephony/SignalMapManager$1;-><init>()V

    sput-object v0, Landroid/telephony/SignalMapManager;->mQosCbToRemote:Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSPredictionCallBack;

    .line 88
    new-instance v0, Landroid/telephony/SignalMapManager$2;

    invoke-direct {v0}, Landroid/telephony/SignalMapManager$2;-><init>()V

    sput-object v0, Landroid/telephony/SignalMapManager;->mQoSCbDebug:Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSCollectCallBack;

    .line 98
    new-instance v0, Landroid/telephony/SignalMapManager$3;

    invoke-direct {v0}, Landroid/telephony/SignalMapManager$3;-><init>()V

    sput-object v0, Landroid/telephony/SignalMapManager;->mQoSInfoCb:Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSServiceInfoCallBack;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/SignalMapManager;->hasQoSReg:Z

    .line 48
    iput v0, p0, Landroid/telephony/SignalMapManager;->mRetryCount:I

    .line 50
    const/16 v0, 0x1f4

    iput v0, p0, Landroid/telephony/SignalMapManager;->RETRY_TIMEOUT_MS:I

    .line 51
    const/16 v0, 0xb

    iput v0, p0, Landroid/telephony/SignalMapManager;->RETRY_COUNTER:I

    .line 59
    new-instance v0, Landroid/telephony/SignalMapManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Landroid/telephony/SignalMapManager$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/SignalMapManager;)V

    iput-object v0, p0, Landroid/telephony/SignalMapManager;->mRetryBackOffTime:Landroid/telephony/SignalMapManager$IRetryTimeout;

    .line 107
    new-instance v0, Landroid/telephony/SignalMapManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Landroid/telephony/SignalMapManager$$ExternalSyntheticLambda2;-><init>(Landroid/telephony/SignalMapManager;)V

    iput-object v0, p0, Landroid/telephony/SignalMapManager;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 127
    new-instance v0, Landroid/telephony/SignalMapManager$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Landroid/telephony/SignalMapManager$$ExternalSyntheticLambda3;-><init>(Landroid/telephony/SignalMapManager;)V

    iput-object v0, p0, Landroid/telephony/SignalMapManager;->mGetServiceRunnable:Ljava/lang/Runnable;

    .line 246
    iput-object p1, p0, Landroid/telephony/SignalMapManager;->mContext:Landroid/content/Context;

    .line 247
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "QoSPredictionManager"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 248
    .local v1, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 249
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/telephony/SignalMapManager;->mHandler:Landroid/os/Handler;

    .line 250
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QoSPredictionManager Created for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SignalMapManager;->logd(Ljava/lang/String;)V

    .line 252
    return-void
.end method

.method private blacklist connectToSignalMapService()V
    .locals 2

    .line 216
    const-string v0, "connecting to SignalMapService..."

    invoke-static {v0}, Landroid/telephony/SignalMapManager;->logd(Ljava/lang/String;)V

    .line 218
    invoke-static {}, Landroid/telephony/SignalMapManager;->isSignalMapSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    const-string v0, "SignalMapService not supported"

    invoke-static {v0}, Landroid/telephony/SignalMapManager;->logd(Ljava/lang/String;)V

    .line 220
    return-void

    .line 223
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SignalMapManager;->mRetryCount:I

    .line 224
    iget-object v0, p0, Landroid/telephony/SignalMapManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/telephony/SignalMapManager;->mGetServiceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 225
    return-void
.end method

.method private blacklist getEventFromSignalMapCallback(Landroid/telephony/SignalMapCallback;)Ljava/util/Set;
    .locals 2
    .param p1, "callback"    # Landroid/telephony/SignalMapCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/SignalMapCallback;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 228
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 230
    .local v0, "eventList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    instance-of v1, p1, Landroid/telephony/SignalMapCallback$QoSPredictListener;

    if-eqz v1, :cond_0

    .line 231
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 234
    :cond_0
    instance-of v1, p1, Landroid/telephony/SignalMapCallback$GeoFenceStateListener;

    if-eqz v1, :cond_1

    .line 235
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 238
    :cond_1
    instance-of v1, p1, Landroid/telephony/SignalMapCallback$GeoFenceStateListenerSecondly;

    if-eqz v1, :cond_2

    .line 239
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 242
    :cond_2
    return-object v0
.end method

.method public static blacklist getInstance(Landroid/content/Context;)Landroid/telephony/ISignalMapManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 262
    const-class v0, Landroid/telephony/SignalMapManager;

    monitor-enter v0

    .line 263
    :try_start_0
    sget-object v1, Landroid/telephony/SignalMapManager;->sInstance:Landroid/telephony/ISignalMapManager;

    if-nez v1, :cond_1

    .line 264
    invoke-static {}, Landroid/telephony/SignalMapManager;->isSignalMapSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 265
    new-instance v1, Landroid/telephony/SignalMapManager;

    invoke-direct {v1, p0}, Landroid/telephony/SignalMapManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/telephony/SignalMapManager;->sInstance:Landroid/telephony/ISignalMapManager;

    goto :goto_0

    .line 267
    :cond_0
    new-instance v1, Landroid/telephony/SignalMapManager$4;

    invoke-direct {v1}, Landroid/telephony/SignalMapManager$4;-><init>()V

    sput-object v1, Landroid/telephony/SignalMapManager;->sInstance:Landroid/telephony/ISignalMapManager;

    .line 270
    :cond_1
    :goto_0
    sget-object v1, Landroid/telephony/SignalMapManager;->sInstance:Landroid/telephony/ISignalMapManager;

    monitor-exit v0

    return-object v1

    .line 271
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist getSignalMapServicee()Lcom/android/internal/telephony/signalMap/ISignalMap;
    .locals 1

    .line 211
    const-string v0, "SignalMap"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/signalMap/ISignalMap$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/signalMap/ISignalMap;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist isSignalMapSupported()Z
    .locals 1

    .line 194
    sget-boolean v0, Landroid/telephony/SignalMapManager;->mSignalMapSupport:Z

    return v0
.end method

.method static synthetic blacklist lambda$registerSignalMapCallback$3(Ljava/lang/Integer;)I
    .locals 1
    .param p0, "i"    # Ljava/lang/Integer;

    .line 391
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private static blacklist logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 694
    sget-object v0, Landroid/telephony/SignalMapManager;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    return-void
.end method

.method private blacklist onRemovedOrDied()V
    .locals 4

    .line 199
    sget-object v0, Landroid/telephony/SignalMapManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 200
    const/4 v1, 0x0

    :try_start_0
    iput v1, p0, Landroid/telephony/SignalMapManager;->mRetryCount:I

    .line 201
    iget-object v2, p0, Landroid/telephony/SignalMapManager;->mSignalMap:Lcom/android/internal/telephony/signalMap/ISignalMap;

    if-eqz v2, :cond_0

    .line 202
    invoke-interface {v2}, Lcom/android/internal/telephony/signalMap/ISignalMap;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 203
    .local v2, "binder":Landroid/os/IBinder;
    iget-object v3, p0, Landroid/telephony/SignalMapManager;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v2, v3, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 204
    invoke-direct {p0}, Landroid/telephony/SignalMapManager;->connectToSignalMapService()V

    .line 206
    .end local v2    # "binder":Landroid/os/IBinder;
    :cond_0
    monitor-exit v0

    .line 207
    return-void

    .line 206
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist retryGetService()V
    .locals 5

    .line 114
    iget-object v0, p0, Landroid/telephony/SignalMapManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/telephony/SignalMapManager;->mGetServiceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 115
    iget-object v0, p0, Landroid/telephony/SignalMapManager;->mRetryBackOffTime:Landroid/telephony/SignalMapManager$IRetryTimeout;

    invoke-interface {v0}, Landroid/telephony/SignalMapManager$IRetryTimeout;->getBackOffTime()I

    move-result v0

    .line 117
    .local v0, "backofftime":I
    iget v1, p0, Landroid/telephony/SignalMapManager;->mRetryCount:I

    iget v2, p0, Landroid/telephony/SignalMapManager;->RETRY_COUNTER:I

    if-lt v1, v2, :cond_0

    .line 118
    const-string v1, "retryGetQosService: max times was hit."

    invoke-static {v1}, Landroid/telephony/SignalMapManager;->logd(Ljava/lang/String;)V

    .line 119
    return-void

    .line 122
    :cond_0
    iget-object v1, p0, Landroid/telephony/SignalMapManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/telephony/SignalMapManager;->mGetServiceRunnable:Ljava/lang/Runnable;

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "retryGetQosService : mRetryCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/SignalMapManager;->mRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , backofftime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SignalMapManager;->logd(Ljava/lang/String;)V

    .line 124
    return-void
.end method


# virtual methods
.method public blacklist canUseQoSService(Ljava/lang/String;)Z
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "canUseQoSService from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SignalMapManager;->logd(Ljava/lang/String;)V

    .line 466
    const/4 v0, 0x0

    .line 467
    .local v0, "ret":Z
    if-nez p1, :cond_0

    .line 468
    const-string v1, "canUseQoSService para invalid ..."

    invoke-static {v1}, Landroid/telephony/SignalMapManager;->logd(Ljava/lang/String;)V

    .line 469
    return v0

    .line 472
    :cond_0
    iget-object v1, p0, Landroid/telephony/SignalMapManager;->mSignalMap:Lcom/android/internal/telephony/signalMap/ISignalMap;

    if-nez v1, :cond_1

    .line 473
    const-string v1, "canUseQoSService mSignalMap invalid ..."

    invoke-static {v1}, Landroid/telephony/SignalMapManager;->logd(Ljava/lang/String;)V

    .line 474
    invoke-direct {p0}, Landroid/telephony/SignalMapManager;->connectToSignalMapService()V

    .line 475
    return v0

    .line 479
    :cond_1
    :try_start_0
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/signalMap/ISignalMap;->canUseQoSService(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 483
    nop

    .line 484
    return v0

    .line 480
    :catch_0
    move-exception v1

    .line 481
    .local v1, "e1":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canUseQoSService ex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SignalMapManager;->logd(Ljava/lang/String;)V

    .line 482
    const/4 v2, 0x0

    return v2
.end method

.method public blacklist getQoSPredictState()I
    .locals 4

    .line 439
    const/4 v0, 0x0

    .line 440
    .local v0, "ret":I
    iget-object v1, p0, Landroid/telephony/SignalMapManager;->mSignalMap:Lcom/android/internal/telephony/signalMap/ISignalMap;

    if-nez v1, :cond_0

    .line 441
    invoke-direct {p0}, Landroid/telephony/SignalMapManager;->connectToSignalMapService()V

    .line 442
    return v0

    .line 445
    :cond_0
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/telephony/signalMap/ISignalMap;->getQoSPredictState()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 448
    goto :goto_0

    .line 446
    :catch_0
    move-exception v1

    .line 447
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getQoSPredictState : e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SignalMapManager;->logd(Ljava/lang/String;)V

    .line 449
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getQoSPredictState : ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SignalMapManager;->logd(Ljava/lang/String;)V

    .line 450
    return v0
.end method

.method synthetic blacklist lambda$new$0$android-telephony-SignalMapManager()I
    .locals 5

    .line 60
    sget-object v0, Landroid/telephony/SignalMapManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 61
    :try_start_0
    iget v1, p0, Landroid/telephony/SignalMapManager;->mRetryCount:I

    const/4 v2, 0x1

    shl-int v3, v2, v1

    iget v4, p0, Landroid/telephony/SignalMapManager;->RETRY_TIMEOUT_MS:I

    mul-int/2addr v3, v4

    .line 62
    .local v3, "timeout":I
    iget v4, p0, Landroid/telephony/SignalMapManager;->RETRY_COUNTER:I

    if-gt v1, v4, :cond_0

    .line 63
    add-int/2addr v1, v2

    iput v1, p0, Landroid/telephony/SignalMapManager;->mRetryCount:I

    .line 65
    :cond_0
    monitor-exit v0

    return v3

    .line 66
    .end local v3    # "timeout":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method synthetic blacklist lambda$new$1$android-telephony-SignalMapManager()V
    .locals 2

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/telephony/SignalMapManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " DeathRecipient triggered"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SignalMapManager;->logd(Ljava/lang/String;)V

    .line 109
    invoke-direct {p0}, Landroid/telephony/SignalMapManager;->onRemovedOrDied()V

    .line 110
    return-void
.end method

.method synthetic blacklist lambda$new$2$android-telephony-SignalMapManager()V
    .locals 5

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connecting to QoSPreSrv at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalMapManager;->mRetryCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SignalMapManager;->logd(Ljava/lang/String;)V

    .line 129
    invoke-direct {p0}, Landroid/telephony/SignalMapManager;->getSignalMapServicee()Lcom/android/internal/telephony/signalMap/ISignalMap;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SignalMapManager;->mSignalMap:Lcom/android/internal/telephony/signalMap/ISignalMap;

    .line 130
    if-nez v0, :cond_0

    .line 131
    invoke-direct {p0}, Landroid/telephony/SignalMapManager;->retryGetService()V

    .line 132
    return-void

    .line 135
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QosPrediction Service Connected mQosCallbacks isEmpty = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/telephony/SignalMapManager;->mQosCallbacks:Ljava/util/List;

    .line 136
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " , mQosCollectCallbacks = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Landroid/telephony/SignalMapManager;->mQosCollectCallback:Landroid/telephony/IQoSCollectCallBack;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-static {v0}, Landroid/telephony/SignalMapManager;->logd(Ljava/lang/String;)V

    .line 139
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 141
    :try_start_0
    iget-object v0, p0, Landroid/telephony/SignalMapManager;->mSignalMap:Lcom/android/internal/telephony/signalMap/ISignalMap;

    iget-object v2, p0, Landroid/telephony/SignalMapManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/telephony/SignalMapManager;->mQosCbToRemote:Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSPredictionCallBack;

    invoke-interface {v0, v2, v3}, Lcom/android/internal/telephony/signalMap/ISignalMap;->registerQosClient(Ljava/lang/String;Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSPredictionCallBack;)Z

    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/SignalMapManager;->hasQoSReg:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Landroid/os/RemoteException;
    iput-boolean v1, p0, Landroid/telephony/SignalMapManager;->hasQoSReg:Z

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mGetQosServiceRunnable e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SignalMapManager;->logd(Ljava/lang/String;)V

    .line 146
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 148
    :cond_1
    iget-boolean v0, p0, Landroid/telephony/SignalMapManager;->hasQoSReg:Z

    if-eqz v0, :cond_2

    .line 150
    :try_start_1
    iget-object v0, p0, Landroid/telephony/SignalMapManager;->mSignalMap:Lcom/android/internal/telephony/signalMap/ISignalMap;

    sget-object v2, Landroid/telephony/SignalMapManager;->mQosCbToRemote:Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSPredictionCallBack;

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/signalMap/ISignalMap;->unregisterQosClient(Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSPredictionCallBack;)Z

    .line 151
    iput-boolean v1, p0, Landroid/telephony/SignalMapManager;->hasQoSReg:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 154
    goto :goto_1

    .line 152
    :catch_1
    move-exception v0

    .line 153
    .restart local v0    # "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterQosClient ex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SignalMapManager;->logd(Ljava/lang/String;)V

    .line 158
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_1
    sget-object v0, Landroid/telephony/SignalMapManager;->mQosCollectCallback:Landroid/telephony/IQoSCollectCallBack;

    if-eqz v0, :cond_3

    .line 160
    :try_start_2
    iget-object v0, p0, Landroid/telephony/SignalMapManager;->mSignalMap:Lcom/android/internal/telephony/signalMap/ISignalMap;

    iget-object v2, p0, Landroid/telephony/SignalMapManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/telephony/SignalMapManager;->mQoSCbDebug:Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSCollectCallBack;

    invoke-interface {v0, v2, v3}, Lcom/android/internal/telephony/signalMap/ISignalMap;->registerQosCollectClient(Ljava/lang/String;Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSCollectCallBack;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 161
    :catch_2
    move-exception v0

    .line 162
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mGetQosServiceRunnable ex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SignalMapManager;->logd(Ljava/lang/String;)V

    .line 163
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_2
    goto :goto_3

    .line 166
    :cond_3
    :try_start_3
    iget-object v0, p0, Landroid/telephony/SignalMapManager;->mSignalMap:Lcom/android/internal/telephony/signalMap/ISignalMap;

    sget-object v2, Landroid/telephony/SignalMapManager;->mQoSCbDebug:Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSCollectCallBack;

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/signalMap/ISignalMap;->unregisterQosCollectClient(Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSCollectCallBack;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 169
    goto :goto_3

    .line 167
    :catch_3
    move-exception v0

    .line 168
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterQosCollectClient ex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SignalMapManager;->logd(Ljava/lang/String;)V

    .line 172
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_3
    const-string v0, "android"

    iget-object v2, p0, Landroid/telephony/SignalMapManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 173
    sget-object v0, Landroid/telephony/SignalMapManager;->mOlkPkgs:Ljava/util/List;

    monitor-enter v0

    .line 175
    :try_start_4
    iget-object v2, p0, Landroid/telephony/SignalMapManager;->mSignalMap:Lcom/android/internal/telephony/signalMap/ISignalMap;

    invoke-interface {v2, v0}, Lcom/android/internal/telephony/signalMap/ISignalMap;->setOlkQoSClientPackages(Ljava/util/List;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 178
    goto :goto_4

    .line 179
    :catchall_0
    move-exception v1

    goto :goto_5

    .line 176
    :catch_4
    move-exception v2

    .line 177
    .local v2, "ex":Landroid/os/RemoteException;
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mGetQosServiceRunnable ex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SignalMapManager;->logd(Ljava/lang/String;)V

    .line 179
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_4
    monitor-exit v0

    goto :goto_6

    :goto_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v1

    .line 183
    :cond_4
    :goto_6
    :try_start_6
    iput v1, p0, Landroid/telephony/SignalMapManager;->mRetryCount:I

    .line 184
    iget-object v0, p0, Landroid/telephony/SignalMapManager;->mSignalMap:Lcom/android/internal/telephony/signalMap/ISignalMap;

    invoke-interface {v0}, Lcom/android/internal/telephony/signalMap/ISignalMap;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 185
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v2, p0, Landroid/telephony/SignalMapManager;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIQoSPredictionServicee linkToDeath : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/SignalMapManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SignalMapManager;->logd(Ljava/lang/String;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_5

    .line 189
    .end local v0    # "binder":Landroid/os/IBinder;
    goto :goto_7

    .line 187
    :catch_5
    move-exception v0

    .line 188
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SignalMapManager;->logd(Ljava/lang/String;)V

    .line 190
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_7
    return-void
.end method

.method public blacklist registerQosClient(Landroid/telephony/IQoSPredictionCallBack;)Z
    .locals 5
    .param p1, "cb"    # Landroid/telephony/IQoSPredictionCallBack;

    .line 285
    iget-object v0, p0, Landroid/telephony/SignalMapManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, "pkgName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerQosClient from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SignalMapManager;->logd(Ljava/lang/String;)V

    .line 287
    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 288
    const-string v2, "registerQosClient para invalid ..."

    invoke-static {v2}, Landroid/telephony/SignalMapManager;->logd(Ljava/lang/String;)V

    .line 289
    return v1

    .line 292
    :cond_0
    sget-object v2, Landroid/telephony/SignalMapManager;->mQosCallbacks:Ljava/util/List;

    monitor-enter v2

    .line 293
    :try_start_0
    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 294
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerQosClient already register cb = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SignalMapManager;->logd(Ljava/lang/String;)V

    .line 295
    monitor-exit v2

    return v4

    .line 297
    :cond_1
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    iget-object v2, p0, Landroid/telephony/SignalMapManager;->mSignalMap:Lcom/android/internal/telephony/signalMap/ISignalMap;

    if-nez v2, :cond_2

    .line 301
    const-string v1, "registerQosClient mSignalMap invalid ..."

    invoke-static {v1}, Landroid/telephony/SignalMapManager;->logd(Ljava/lang/String;)V

    .line 302
    invoke-direct {p0}, Landroid/telephony/SignalMapManager;->connectToSignalMapService()V

    .line 303
    return v4

    .line 306
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerQosClient hasQoSReg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/telephony/SignalMapManager;->hasQoSReg:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SignalMapManager;->logd(Ljava/lang/String;)V

    .line 307
    iget-boolean v2, p0, Landroid/telephony/SignalMapManager;->hasQoSReg:Z

    if-nez v2, :cond_3

    .line 309
    :try_start_1
    iget-object v2, p0, Landroid/telephony/SignalMapManager;->mSignalMap:Lcom/android/internal/telephony/signalMap/ISignalMap;

    sget-object v3, Landroid/telephony/SignalMapManager;->mQosCbToRemote:Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSPredictionCallBack;

    invoke-interface {v2, v0, v3}, Lcom/android/internal/telephony/signalMap/ISignalMap;->registerQosClient(Ljava/lang/String;Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSPredictionCallBack;)Z

    .line 310
    iput-boolean v4, p0, Landroid/telephony/SignalMapManager;->hasQoSReg:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 315
    goto :goto_0

    .line 311
    :catch_0
    move-exception v2

    .line 312
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerQosClient ex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SignalMapManager;->logd(Ljava/lang/String;)V

    .line 313
    sget-object v3, Landroid/telephony/SignalMapManager;->mQosCallbacks:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 314
    return v1

    .line 317
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_0
    const-string v1, "registerQosClient client end"

    invoke-static {v1}, Landroid/telephony/SignalMapManager;->logd(Ljava/lang/String;)V

    .line 318
    return v4

    .line 298
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public blacklist registerQosCollectClient(Landroid/telephony/IQoSCollectCallBack;)Z
    .locals 4
    .param p1, "cb"    # Landroid/telephony/IQoSCollectCallBack;

    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerQosCollectClient from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/SignalMapManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SignalMapManager;->logd(Ljava/lang/String;)V

    .line 500
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 501
    const-string v1, "registerQosCollectClient para invalid ..."

    invoke-static {v1}, Landroid/telephony/SignalMapManager;->logd(Ljava/lang/String;)V

    .line 502
    return v0

    .line 504
    :cond_0
    iget-object v1, p0, Landroid/telephony/SignalMapManager;->mSignalMap:Lcom/android/internal/telephony/signalMap/ISignalMap;

    if-nez v1, :cond_1

    .line 505
    const-string v1, "registerQosCollectClient mSignalMap invalid ..."

    invoke-static {v1}, Landroid/telephony/SignalMapManager;->logd(Ljava/lang/String;)V

    .line 506
    invoke-direct {p0}, Landroid/telephony/SignalMapManager;->connectToSignalMapService()V

    .line 507
    return v0

    .line 510
    :cond_1
    sget-object v2, Landroid/telephony/SignalMapManager;->mQosCollectCallback:Landroid/telephony/IQoSCollectCallBack;

    if-nez v2, :cond_2

    .line 512
    :try_start_0
    iget-object v2, p0, Landroid/telephony/SignalMapManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/telephony/SignalMapManager;->mQoSCbDebug:Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSCollectCallBack;

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/signalMap/ISignalMap;->registerQosCollectClient(Ljava/lang/String;Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSCollectCallBack;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    nop

    .line 517
    sput-object p1, Landroid/telephony/SignalMapManager;->mQosCollectCallback:Landroid/telephony/IQoSCollectCallBack;

    .line 518
    const/4 v0, 0x1

    return v0

    .line 513
    :catch_0
    move-exception v1

    .line 514
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerQosCollectClient ex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SignalMapManager;->logd(Ljava/lang/String;)V

    .line 515
    return v0

    .line 520
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    const-string v1, "registerQosCollectClient client was regisiter already"

    invoke-static {v1}, Landroid/telephony/SignalMapManager;->logd(Ljava/lang/String;)V

    .line 521
    return v0
.end method

.method public blacklist registerServiceInfoCallback(Landroid/telephony/IQoSServiceInfoCallBack;)Z
    .locals 4
    .param p1, "cb"    # Landroid/telephony/IQoSServiceInfoCallBack;

    .line 573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerServiceInfoCallback from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/SignalMapManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SignalMapManager;->logd(Ljava/lang/String;)V

    .line 574
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 575
    const-string v1, "registerServiceInfoCallback para invalid ..."

    invoke-static {v1}, Landroid/telephony/SignalMapManager;->logd(Ljava/lang/String;)V

    .line 576
    return v0

    .line 578
    :cond_0
    iget-object v1, p0, Landroid/telephony/SignalMapManager;->mSignalMap:Lcom/android/internal/telephony/signalMap/ISignalMap;

    if-nez v1, :cond_1

    .line 579
    const-string v1, "registerServiceInfoCallback mSignalMap invalid ..."

    invoke-static {v1}, Landroid/telephony/SignalMapManager;->logd(Ljava/lang/String;)V

    .line 580
    invoke-direct {p0}, Landroid/telephony/SignalMapManager;->connectToSignalMapService()V

    .line 581
    return v0

    .line 584
    :cond_1
    sget-object v2, Landroid/telephony/SignalMapManager;->mInfoCallbacks:Landroid/telephony/IQoSServiceInfoCallBack;

    if-nez v2, :cond_2

    .line 586
    :try_start_0
    iget-object v2, p0, Landroid/telephony/SignalMapManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/telephony/SignalMapManager;->mQoSInfoCb:Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSServiceInfoCallBack;

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/signalMap/ISignalMap;->registerServiceInfoCallback(Ljava/lang/String;Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSServiceInfoCallBack;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 590
    nop

    .line 591
    sput-object p1, Landroid/telephony/SignalMapManager;->mInfoCallbacks:Landroid/telephony/IQoSServiceInfoCallBack;

    .line 592
    const/4 v0, 0x1

    return v0

    .line 587
    :catch_0
    move-exception v1

    .line 588
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerServiceInfoCallback ex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SignalMapManager;->logd(Ljava/lang/String;)V

    .line 589
    return v0

    .line 594
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    const-string v1, "registerServiceInfoCallback client was regisiter already"

    invoke-static {v1}, Landroid/telephony/SignalMapManager;->logd(Ljava/lang/String;)V

    .line 595
    return v0
.end method

.method public blacklist registerSignalMapCallback(Ljava/util/concurrent/Executor;Landroid/telephony/SignalMapCallback;)Z
    .locals 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/telephony/SignalMapCallback;

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerSignalMapCallback from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/SignalMapManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SignalMapManager;->logd(Ljava/lang/String;)V

    .line 380
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 384
    :cond_0
    iget-object v1, p0, Landroid/telephony/SignalMapManager;->mSignalMap:Lcom/android/internal/telephony/signalMap/ISignalMap;

    if-nez v1, :cond_1

    .line 385
    invoke-direct {p0}, Landroid/telephony/SignalMapManager;->connectToSignalMapService()V

    .line 386
    return v0

    .line 389
    :cond_1
    :try_start_0
    invoke-virtual {p2, p1}, Landroid/telephony/SignalMapCallback;->init(Ljava/util/concurrent/Executor;)V

    .line 390
    iget-object v1, p0, Landroid/telephony/SignalMapManager;->mSignalMap:Lcom/android/internal/telephony/signalMap/ISignalMap;

    iget-object v2, p0, Landroid/telephony/SignalMapManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p2, Landroid/telephony/SignalMapCallback;->mCallback:Lcom/android/internal/telephony/signalMap/ISignalMapCallback;

    .line 391
    invoke-direct {p0, p2}, Landroid/telephony/SignalMapManager;->getEventFromSignalMapCallback(Landroid/telephony/SignalMapCallback;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Landroid/telephony/SignalMapManager$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Landroid/telephony/SignalMapManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v4

    .line 390
    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/signalMap/ISignalMap;->listenToSignalMapEvent(Ljava/lang/String;Lcom/android/internal/telephony/signalMap/ISignalMapCallback;[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    nop

    .line 396
    const/4 v0, 0x1

    return v0

    .line 392
    :catch_0
    move-exception v1

    .line 393
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerSignalMapCallback ex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SignalMapManager;->logd(Ljava/lang/String;)V

    .line 394
    return v0

    .line 381
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    const-string v1, "registerSignalMapCallback : Para Invalid"

    invoke-static {v1}, Landroid/telephony/SignalMapManager;->logd(Ljava/lang/String;)V

    .line 382
    return v0
.end method

.method public blacklist removeOlkQoSClientPackages(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 676
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeOlkQoSClientPackages : packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SignalMapManager;->logd(Ljava/lang/String;)V

    .line 677
    const-string v0, "android"

    iget-object v1, p0, Landroid/telephony/SignalMapManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 678
    const-string v0, "removeOlkQoSClientPackages : only can be call from system_server"

    invoke-static {v0}, Landroid/telephony/SignalMapManager;->logd(Ljava/lang/String;)V

    .line 679
    return-void

    .line 681
    :cond_0
    sget-object v0, Landroid/telephony/SignalMapManager;->mOlkPkgs:Ljava/util/List;

    monitor-enter v0

    .line 682
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 683
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 686
    :cond_1
    :try_start_1
    iget-object v1, p0, Landroid/telephony/SignalMapManager;->mSignalMap:Lcom/android/internal/telephony/signalMap/ISignalMap;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/signalMap/ISignalMap;->setOlkQoSClientPackages(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 689
    goto :goto_0

    .line 687
    :catch_0
    move-exception v1

    .line 688
    .local v1, "ex":Landroid/os/RemoteException;
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeOlkQoSClientPackages ex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SignalMapManager;->logd(Ljava/lang/String;)V

    .line 690
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 691
    return-void

    .line 690
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public blacklist setOlkQoSClientPackages(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOlkQoSClientPackages : packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SignalMapManager;->logd(Ljava/lang/String;)V

    .line 648
    const-string v0, "android"

    iget-object v1, p0, Landroid/telephony/SignalMapManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 649
    const-string v0, "removeOlkQoSClientPackages : only can be call from system_server"

    invoke-static {v0}, Landroid/telephony/SignalMapManager;->logd(Ljava/lang/String;)V

    .line 650
    return-void

    .line 652
    :cond_0
    sget-object v0, Landroid/telephony/SignalMapManager;->mOlkPkgs:Ljava/util/List;

    monitor-enter v0

    .line 653
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 654
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 657
    :cond_1
    :try_start_1
    iget-object v1, p0, Landroid/telephony/SignalMapManager;->mSignalMap:Lcom/android/internal/telephony/signalMap/ISignalMap;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/signalMap/ISignalMap;->setOlkQoSClientPackages(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 660
    goto :goto_0

    .line 658
    :catch_0
    move-exception v1

    .line 659
    .local v1, "ex":Landroid/os/RemoteException;
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setOlkQoSClientPackages ex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SignalMapManager;->logd(Ljava/lang/String;)V

    .line 661
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 662
    return-void

    .line 661
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public blacklist unregisterQosClient(Landroid/telephony/IQoSPredictionCallBack;)Z
    .locals 4
    .param p1, "cb"    # Landroid/telephony/IQoSPredictionCallBack;

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterQosClient from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/SignalMapManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SignalMapManager;->logd(Ljava/lang/String;)V

    .line 333
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 334
    const-string v1, "unregisterQosClient para invalid ..."

    invoke-static {v1}, Landroid/telephony/SignalMapManager;->logd(Ljava/lang/String;)V

    .line 335
    return v0

    .line 338
    :cond_0
    sget-object v1, Landroid/telephony/SignalMapManager;->mQosCallbacks:Ljava/util/List;

    monitor-enter v1

    .line 339
    :try_start_0
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 340
    const-string v2, "unregisterQosClient remove cb ..."

    invoke-static {v2}, Landroid/telephony/SignalMapManager;->logd(Ljava/lang/String;)V

    .line 341
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 343
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    iget-object v2, p0, Landroid/telephony/SignalMapManager;->mSignalMap:Lcom/android/internal/telephony/signalMap/ISignalMap;

    const/4 v3, 0x1

    if-nez v2, :cond_2

    .line 346
    const-string v0, "unregisterQosClient mSignalMap invalid ..."

    invoke-static {v0}, Landroid/telephony/SignalMapManager;->logd(Ljava/lang/String;)V

    .line 347
    invoke-direct {p0}, Landroid/telephony/SignalMapManager;->connectToSignalMapService()V

    .line 348
    return v3

    .line 351
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 352
    iget-boolean v1, p0, Landroid/telephony/SignalMapManager;->hasQoSReg:Z

    if-eqz v1, :cond_3

    .line 354
    :try_start_1
    iget-object v1, p0, Landroid/telephony/SignalMapManager;->mSignalMap:Lcom/android/internal/telephony/signalMap/ISignalMap;

    sget-object v2, Landroid/telephony/SignalMapManager;->mQosCbToRemote:Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSPredictionCallBack;

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/signalMap/ISignalMap;->unregisterQosClient(Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSPredictionCallBack;)Z

    .line 355
    iput-boolean v0, p0, Landroid/telephony/SignalMapManager;->hasQoSReg:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 360
    goto :goto_0

    .line 356
    :catch_0
    move-exception v1

    .line 357
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterQosClient ex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SignalMapManager;->logd(Ljava/lang/String;)V

    .line 358
    sget-object v2, Landroid/telephony/SignalMapManager;->mQosCallbacks:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 359
    return v0

    .line 363
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_0
    const-string v0, "unregisterQosClient client end"

    invoke-static {v0}, Landroid/telephony/SignalMapManager;->logd(Ljava/lang/String;)V

    .line 364
    return v3

    .line 343
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public blacklist unregisterQosCollectClient(Landroid/telephony/IQoSCollectCallBack;)Z
    .locals 4
    .param p1, "cb"    # Landroid/telephony/IQoSCollectCallBack;

    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterQosCollectClient from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/SignalMapManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SignalMapManager;->logd(Ljava/lang/String;)V

    .line 537
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 538
    const-string v1, "unregisterQosCollectClient para invalid ..."

    invoke-static {v1}, Landroid/telephony/SignalMapManager;->logd(Ljava/lang/String;)V

    .line 539
    return v0

    .line 541
    :cond_0
    iget-object v1, p0, Landroid/telephony/SignalMapManager;->mSignalMap:Lcom/android/internal/telephony/signalMap/ISignalMap;

    if-nez v1, :cond_1

    .line 542
    const-string v1, "unregisterQosCollectClient mSignalMap invalid ..."

    invoke-static {v1}, Landroid/telephony/SignalMapManager;->logd(Ljava/lang/String;)V

    .line 543
    invoke-direct {p0}, Landroid/telephony/SignalMapManager;->connectToSignalMapService()V

    .line 544
    return v0

    .line 547
    :cond_1
    sget-object v2, Landroid/telephony/SignalMapManager;->mQosCollectCallback:Landroid/telephony/IQoSCollectCallBack;

    if-eqz v2, :cond_2

    .line 549
    :try_start_0
    sget-object v2, Landroid/telephony/SignalMapManager;->mQoSCbDebug:Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSCollectCallBack;

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/signalMap/ISignalMap;->unregisterQosCollectClient(Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSCollectCallBack;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 553
    nop

    .line 554
    const/4 v0, 0x0

    sput-object v0, Landroid/telephony/SignalMapManager;->mQosCollectCallback:Landroid/telephony/IQoSCollectCallBack;

    .line 555
    const/4 v0, 0x1

    return v0

    .line 550
    :catch_0
    move-exception v1

    .line 551
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterQosCollectClient ex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SignalMapManager;->logd(Ljava/lang/String;)V

    .line 552
    return v0

    .line 557
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    const-string v1, "unregisterQosCollectClient client failure"

    invoke-static {v1}, Landroid/telephony/SignalMapManager;->logd(Ljava/lang/String;)V

    .line 558
    return v0
.end method

.method public blacklist unregisterServiceInfoCallback(Landroid/telephony/IQoSServiceInfoCallBack;)Z
    .locals 4
    .param p1, "cb"    # Landroid/telephony/IQoSServiceInfoCallBack;

    .line 610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterServiceInfoCallback from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/SignalMapManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SignalMapManager;->logd(Ljava/lang/String;)V

    .line 611
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 612
    const-string v1, "unregisterServiceInfoCallback para invalid ..."

    invoke-static {v1}, Landroid/telephony/SignalMapManager;->logd(Ljava/lang/String;)V

    .line 613
    return v0

    .line 615
    :cond_0
    iget-object v1, p0, Landroid/telephony/SignalMapManager;->mSignalMap:Lcom/android/internal/telephony/signalMap/ISignalMap;

    if-nez v1, :cond_1

    .line 616
    const-string v1, "unregisterServiceInfoCallback mSignalMap invalid ..."

    invoke-static {v1}, Landroid/telephony/SignalMapManager;->logd(Ljava/lang/String;)V

    .line 617
    invoke-direct {p0}, Landroid/telephony/SignalMapManager;->connectToSignalMapService()V

    .line 618
    return v0

    .line 621
    :cond_1
    sget-object v2, Landroid/telephony/SignalMapManager;->mInfoCallbacks:Landroid/telephony/IQoSServiceInfoCallBack;

    if-eqz v2, :cond_2

    .line 623
    :try_start_0
    sget-object v2, Landroid/telephony/SignalMapManager;->mQoSInfoCb:Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSServiceInfoCallBack;

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/signalMap/ISignalMap;->unregisterServiceInfoCallback(Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSServiceInfoCallBack;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 627
    nop

    .line 628
    const/4 v0, 0x0

    sput-object v0, Landroid/telephony/SignalMapManager;->mInfoCallbacks:Landroid/telephony/IQoSServiceInfoCallBack;

    .line 629
    const/4 v0, 0x1

    return v0

    .line 624
    :catch_0
    move-exception v1

    .line 625
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterServiceInfoCallback ex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SignalMapManager;->logd(Ljava/lang/String;)V

    .line 626
    return v0

    .line 631
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    const-string v1, "unregisterServiceInfoCallback client failure"

    invoke-static {v1}, Landroid/telephony/SignalMapManager;->logd(Ljava/lang/String;)V

    .line 632
    return v0
.end method

.method public blacklist unregisterSignalMapCallback(Landroid/telephony/SignalMapCallback;)Z
    .locals 5
    .param p1, "callback"    # Landroid/telephony/SignalMapCallback;

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterSignalMapCallback from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/SignalMapManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SignalMapManager;->logd(Ljava/lang/String;)V

    .line 412
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 413
    const-string v1, "unregisterSignalMapCallback : Para Invalid"

    invoke-static {v1}, Landroid/telephony/SignalMapManager;->logd(Ljava/lang/String;)V

    .line 414
    return v0

    .line 416
    :cond_0
    iget-object v1, p0, Landroid/telephony/SignalMapManager;->mSignalMap:Lcom/android/internal/telephony/signalMap/ISignalMap;

    if-nez v1, :cond_1

    .line 417
    invoke-direct {p0}, Landroid/telephony/SignalMapManager;->connectToSignalMapService()V

    .line 418
    return v0

    .line 421
    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/telephony/SignalMapManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Landroid/telephony/SignalMapCallback;->mCallback:Lcom/android/internal/telephony/signalMap/ISignalMapCallback;

    new-array v4, v0, [I

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/signalMap/ISignalMap;->listenToSignalMapEvent(Ljava/lang/String;Lcom/android/internal/telephony/signalMap/ISignalMapCallback;[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    nop

    .line 426
    const/4 v0, 0x1

    return v0

    .line 422
    :catch_0
    move-exception v1

    .line 423
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterSignalMapCallback ex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SignalMapManager;->logd(Ljava/lang/String;)V

    .line 424
    return v0
.end method
