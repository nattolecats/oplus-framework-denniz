.class public Landroid/telephony/CyberSenseLocationManager;
.super Ljava/lang/Object;
.source "CyberSenseLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/CyberSenseLocationManager$ICslMockCallback;,
        Landroid/telephony/CyberSenseLocationManager$ICslCallback;
    }
.end annotation


# static fields
.field private static final blacklist DELAY_INIT_TIME:J = 0x1f4L

.field private static final blacklist FAILURE:Z = false

.field private static final blacklist RETRY_INIT_LIMIT:I = 0x5

.field public static final blacklist SERVICE_NAME:Ljava/lang/String; = "ICyberSenseLocationSrv"

.field private static final blacklist SUCCESS:Z = true

.field private static final blacklist TAG:Ljava/lang/String;

.field private static blacklist sInstance:Landroid/telephony/CyberSenseLocationManager;

.field private static final blacklist sLock:Ljava/lang/Object;

.field private static blacklist sRetryCount:I


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private final blacklist mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mLocationCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/CyberSenseLocationManager$ICslCallback;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mLocationMockCallback:Landroid/telephony/CyberSenseLocationManager$ICslMockCallback;

.field private blacklist mLocationService:Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationService;

.field private blacklist mRemoteCslCallback:Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationCallback;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmLocationCallbacks(Landroid/telephony/CyberSenseLocationManager;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroid/telephony/CyberSenseLocationManager;->mLocationCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLocationMockCallback(Landroid/telephony/CyberSenseLocationManager;)Landroid/telephony/CyberSenseLocationManager$ICslMockCallback;
    .locals 0

    iget-object p0, p0, Landroid/telephony/CyberSenseLocationManager;->mLocationMockCallback:Landroid/telephony/CyberSenseLocationManager$ICslMockCallback;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 48
    const-class v0, Landroid/telephony/CyberSenseLocationManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/CyberSenseLocationManager;->TAG:Ljava/lang/String;

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/telephony/CyberSenseLocationManager;->sLock:Ljava/lang/Object;

    .line 84
    const/4 v0, 0x0

    sput v0, Landroid/telephony/CyberSenseLocationManager;->sRetryCount:I

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 493
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Landroid/telephony/CyberSenseLocationManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/telephony/CyberSenseLocationManager$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/CyberSenseLocationManager;)V

    iput-object v0, p0, Landroid/telephony/CyberSenseLocationManager;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/CyberSenseLocationManager;->mLocationCallbacks:Ljava/util/List;

    .line 164
    new-instance v0, Landroid/telephony/CyberSenseLocationManager$1;

    invoke-direct {v0, p0}, Landroid/telephony/CyberSenseLocationManager$1;-><init>(Landroid/telephony/CyberSenseLocationManager;)V

    iput-object v0, p0, Landroid/telephony/CyberSenseLocationManager;->mRemoteCslCallback:Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationCallback;

    .line 494
    iput-object p1, p0, Landroid/telephony/CyberSenseLocationManager;->mContext:Landroid/content/Context;

    .line 495
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "QoSPredictionManager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 496
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 497
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/telephony/CyberSenseLocationManager;->mHandler:Landroid/os/Handler;

    .line 499
    invoke-direct {p0}, Landroid/telephony/CyberSenseLocationManager;->registerLocationService()V

    .line 500
    return-void
.end method

.method private blacklist getICyberSenseLocationService()Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationService;
    .locals 1

    .line 547
    const-string v0, "ICyberSenseLocationSrv"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationService;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance(Landroid/content/Context;)Landroid/telephony/CyberSenseLocationManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 479
    const-class v0, Landroid/telephony/CyberSenseLocationManager;

    monitor-enter v0

    .line 480
    :try_start_0
    sget-object v1, Landroid/telephony/CyberSenseLocationManager;->sInstance:Landroid/telephony/CyberSenseLocationManager;

    if-nez v1, :cond_0

    .line 481
    new-instance v1, Landroid/telephony/CyberSenseLocationManager;

    invoke-direct {v1, p0}, Landroid/telephony/CyberSenseLocationManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/telephony/CyberSenseLocationManager;->sInstance:Landroid/telephony/CyberSenseLocationManager;

    .line 483
    :cond_0
    sget-object v1, Landroid/telephony/CyberSenseLocationManager;->sInstance:Landroid/telephony/CyberSenseLocationManager;

    monitor-exit v0

    return-object v1

    .line 484
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 569
    sget-object v0, Landroid/telephony/CyberSenseLocationManager;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    return-void
.end method

.method private blacklist onRemovedOrDied()V
    .locals 3

    .line 555
    const/4 v0, 0x0

    sput v0, Landroid/telephony/CyberSenseLocationManager;->sRetryCount:I

    .line 556
    iget-object v1, p0, Landroid/telephony/CyberSenseLocationManager;->mLocationService:Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationService;

    if-eqz v1, :cond_0

    .line 557
    invoke-interface {v1}, Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 558
    .local v1, "binder":Landroid/os/IBinder;
    iget-object v2, p0, Landroid/telephony/CyberSenseLocationManager;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v1, v2, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 559
    invoke-direct {p0}, Landroid/telephony/CyberSenseLocationManager;->registerLocationService()V

    .line 561
    .end local v1    # "binder":Landroid/os/IBinder;
    :cond_0
    return-void
.end method

.method private blacklist registerLocationService()V
    .locals 5

    .line 508
    const-string v0, "register csl service"

    invoke-direct {p0, v0}, Landroid/telephony/CyberSenseLocationManager;->logd(Ljava/lang/String;)V

    .line 509
    sget v0, Landroid/telephony/CyberSenseLocationManager;->sRetryCount:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_2

    .line 510
    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/telephony/CyberSenseLocationManager;->sRetryCount:I

    .line 514
    invoke-direct {p0}, Landroid/telephony/CyberSenseLocationManager;->getICyberSenseLocationService()Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationService;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/CyberSenseLocationManager;->mLocationService:Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationService;

    .line 515
    if-eqz v0, :cond_1

    .line 516
    const/4 v0, 0x0

    sput v0, Landroid/telephony/CyberSenseLocationManager;->sRetryCount:I

    .line 517
    iget-object v1, p0, Landroid/telephony/CyberSenseLocationManager;->mLocationCallbacks:Ljava/util/List;

    monitor-enter v1

    .line 518
    :try_start_0
    iget-object v2, p0, Landroid/telephony/CyberSenseLocationManager;->mLocationCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 520
    :try_start_1
    iget-object v2, p0, Landroid/telephony/CyberSenseLocationManager;->mLocationService:Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationService;

    iget-object v3, p0, Landroid/telephony/CyberSenseLocationManager;->mContext:Landroid/content/Context;

    .line 521
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/telephony/CyberSenseLocationManager;->mRemoteCslCallback:Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationCallback;

    .line 520
    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationService;->registerCslClient(Ljava/lang/String;Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationCallback;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 524
    goto :goto_0

    .line 522
    :catch_0
    move-exception v2

    .line 523
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerCslClient  e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/telephony/CyberSenseLocationManager;->logd(Ljava/lang/String;)V

    .line 526
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 529
    :try_start_3
    iget-object v1, p0, Landroid/telephony/CyberSenseLocationManager;->mLocationService:Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationService;

    invoke-interface {v1}, Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 530
    .local v1, "binder":Landroid/os/IBinder;
    iget-object v2, p0, Landroid/telephony/CyberSenseLocationManager;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v1, v2, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .end local v1    # "binder":Landroid/os/IBinder;
    goto :goto_1

    .line 531
    :catch_1
    move-exception v0

    .line 532
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

    invoke-direct {p0, v1}, Landroid/telephony/CyberSenseLocationManager;->logd(Ljava/lang/String;)V

    .line 533
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_1
    goto :goto_2

    .line 526
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 535
    :cond_1
    const-string v0, "mLocationService is null"

    invoke-direct {p0, v0}, Landroid/telephony/CyberSenseLocationManager;->logd(Ljava/lang/String;)V

    .line 536
    iget-object v0, p0, Landroid/telephony/CyberSenseLocationManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/telephony/CyberSenseLocationManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/telephony/CyberSenseLocationManager$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/CyberSenseLocationManager;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 538
    :goto_2
    return-void

    .line 512
    :cond_2
    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$new$0$android-telephony-CyberSenseLocationManager()V
    .locals 1

    .line 99
    const-string v0, "DeathRecipient triggered, binder died."

    invoke-direct {p0, v0}, Landroid/telephony/CyberSenseLocationManager;->logd(Ljava/lang/String;)V

    .line 100
    invoke-direct {p0}, Landroid/telephony/CyberSenseLocationManager;->onRemovedOrDied()V

    .line 101
    return-void
.end method

.method synthetic blacklist lambda$registerLocationService$1$android-telephony-CyberSenseLocationManager()V
    .locals 0

    .line 536
    invoke-direct {p0}, Landroid/telephony/CyberSenseLocationManager;->registerLocationService()V

    return-void
.end method

.method public blacklist pauseCslService()V
    .locals 3

    .line 295
    const-string v0, "pause csl service"

    invoke-direct {p0, v0}, Landroid/telephony/CyberSenseLocationManager;->logd(Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Landroid/telephony/CyberSenseLocationManager;->mLocationService:Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationService;

    if-eqz v0, :cond_0

    .line 298
    :try_start_0
    invoke-interface {v0}, Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationService;->pauseCslService()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    goto :goto_0

    .line 299
    :catch_0
    move-exception v0

    .line 300
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pauseCslService  err="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/telephony/CyberSenseLocationManager;->logd(Ljava/lang/String;)V

    .line 303
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist registerCslClient(Landroid/telephony/CyberSenseLocationManager$ICslCallback;)Z
    .locals 4
    .param p1, "callback"    # Landroid/telephony/CyberSenseLocationManager$ICslCallback;

    .line 224
    iget-object v0, p0, Landroid/telephony/CyberSenseLocationManager;->mLocationCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 225
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "register csl client size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/CyberSenseLocationManager;->mLocationCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/telephony/CyberSenseLocationManager;->logd(Ljava/lang/String;)V

    .line 226
    iget-object v1, p0, Landroid/telephony/CyberSenseLocationManager;->mLocationCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    iget-object v1, p0, Landroid/telephony/CyberSenseLocationManager;->mLocationService:Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 229
    :try_start_1
    iget-object v2, p0, Landroid/telephony/CyberSenseLocationManager;->mContext:Landroid/content/Context;

    .line 230
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/CyberSenseLocationManager;->mRemoteCslCallback:Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationCallback;

    .line 229
    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationService;->registerCslClient(Ljava/lang/String;Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationCallback;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 233
    goto :goto_0

    .line 231
    :catch_0
    move-exception v1

    .line 232
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerCslClient  err="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/telephony/CyberSenseLocationManager;->logd(Ljava/lang/String;)V

    .line 237
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/telephony/CyberSenseLocationManager;->mLocationCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 238
    iget-object v1, p0, Landroid/telephony/CyberSenseLocationManager;->mLocationCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 241
    :cond_1
    monitor-exit v0

    .line 242
    const/4 v0, 0x0

    return v0

    .line 241
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public blacklist reportCslMockData(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CyberSenseCellInfo;",
            ">;)V"
        }
    .end annotation

    .line 407
    .local p1, "cells":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CyberSenseCellInfo;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "report csl mock data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/telephony/CyberSenseLocationManager;->logd(Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Landroid/telephony/CyberSenseLocationManager;->mLocationService:Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationService;

    if-eqz v0, :cond_0

    .line 410
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationService;->reportCslMockData(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    goto :goto_0

    .line 411
    :catch_0
    move-exception v0

    .line 412
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportCslMockData  err="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/telephony/CyberSenseLocationManager;->logd(Ljava/lang/String;)V

    .line 415
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist reportCslMockLocationResult(Landroid/telephony/LocationResult;)V
    .locals 3
    .param p1, "lr"    # Landroid/telephony/LocationResult;

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "report csl mock location result"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/telephony/CyberSenseLocationManager;->logd(Ljava/lang/String;)V

    .line 426
    iget-object v0, p0, Landroid/telephony/CyberSenseLocationManager;->mLocationService:Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationService;

    if-eqz v0, :cond_0

    .line 428
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationService;->reportCslMockLocationResult(Landroid/telephony/LocationResult;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    goto :goto_0

    .line 429
    :catch_0
    move-exception v0

    .line 430
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportCslMockLocationResult  err="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/telephony/CyberSenseLocationManager;->logd(Ljava/lang/String;)V

    .line 433
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist reportCslMockLocationResults(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/LocationResult;",
            ">;)V"
        }
    .end annotation

    .line 443
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/LocationResult;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "report csl mock location results"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/telephony/CyberSenseLocationManager;->logd(Ljava/lang/String;)V

    .line 444
    iget-object v0, p0, Landroid/telephony/CyberSenseLocationManager;->mLocationService:Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationService;

    if-eqz v0, :cond_0

    .line 446
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationService;->reportCslMockLocationResults(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    goto :goto_0

    .line 447
    :catch_0
    move-exception v0

    .line 448
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportCslMockLocationResults  err="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/telephony/CyberSenseLocationManager;->logd(Ljava/lang/String;)V

    .line 451
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist reportCslMockState(I)V
    .locals 3
    .param p1, "state"    # I

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "report cls mock state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/telephony/CyberSenseLocationManager;->logd(Ljava/lang/String;)V

    .line 462
    iget-object v0, p0, Landroid/telephony/CyberSenseLocationManager;->mLocationService:Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationService;

    if-eqz v0, :cond_0

    .line 464
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationService;->reportCslMockState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 467
    goto :goto_0

    .line 465
    :catch_0
    move-exception v0

    .line 466
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportCslMockState  err="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/telephony/CyberSenseLocationManager;->logd(Ljava/lang/String;)V

    .line 469
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist resumeCslService()V
    .locals 3

    .line 278
    const-string v0, "resume csl service"

    invoke-direct {p0, v0}, Landroid/telephony/CyberSenseLocationManager;->logd(Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Landroid/telephony/CyberSenseLocationManager;->mLocationService:Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationService;

    if-eqz v0, :cond_0

    .line 281
    :try_start_0
    invoke-interface {v0}, Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationService;->resumeCslService()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    goto :goto_0

    .line 282
    :catch_0
    move-exception v0

    .line 283
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resumeCslService  err="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/telephony/CyberSenseLocationManager;->logd(Ljava/lang/String;)V

    .line 286
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist setMockCallback(Landroid/telephony/CyberSenseLocationManager$ICslMockCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/telephony/CyberSenseLocationManager$ICslMockCallback;

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set mock cb ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/telephony/CyberSenseLocationManager;->logd(Ljava/lang/String;)V

    .line 314
    iput-object p1, p0, Landroid/telephony/CyberSenseLocationManager;->mLocationMockCallback:Landroid/telephony/CyberSenseLocationManager$ICslMockCallback;

    .line 315
    iget-object v0, p0, Landroid/telephony/CyberSenseLocationManager;->mLocationCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 316
    :try_start_0
    iget-object v1, p0, Landroid/telephony/CyberSenseLocationManager;->mLocationService:Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 318
    :try_start_1
    iget-object v2, p0, Landroid/telephony/CyberSenseLocationManager;->mLocationMockCallback:Landroid/telephony/CyberSenseLocationManager$ICslMockCallback;

    if-eqz v2, :cond_0

    .line 319
    iget-object v2, p0, Landroid/telephony/CyberSenseLocationManager;->mContext:Landroid/content/Context;

    .line 320
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/CyberSenseLocationManager;->mRemoteCslCallback:Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationCallback;

    .line 319
    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationService;->registerCslMockClient(Ljava/lang/String;Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationCallback;)I

    goto :goto_0

    .line 322
    :cond_0
    iget-object v2, p0, Landroid/telephony/CyberSenseLocationManager;->mRemoteCslCallback:Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationCallback;

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationService;->unregisterCslMockClient(Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationCallback;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 326
    :goto_0
    goto :goto_1

    .line 324
    :catch_0
    move-exception v1

    .line 325
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMockCallback  err="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/telephony/CyberSenseLocationManager;->logd(Ljava/lang/String;)V

    .line 328
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    monitor-exit v0

    .line 329
    return-void

    .line 328
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public blacklist startCslCollectData()V
    .locals 3

    .line 372
    const-string v0, "start csl collect data"

    invoke-direct {p0, v0}, Landroid/telephony/CyberSenseLocationManager;->logd(Ljava/lang/String;)V

    .line 373
    iget-object v0, p0, Landroid/telephony/CyberSenseLocationManager;->mLocationService:Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationService;

    if-eqz v0, :cond_0

    .line 375
    :try_start_0
    invoke-interface {v0}, Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationService;->startCslCollectData()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    goto :goto_0

    .line 376
    :catch_0
    move-exception v0

    .line 377
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startCslCollectData  err="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/telephony/CyberSenseLocationManager;->logd(Ljava/lang/String;)V

    .line 380
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist startCslMockTest()V
    .locals 3

    .line 338
    const-string v0, "start csl mock test"

    invoke-direct {p0, v0}, Landroid/telephony/CyberSenseLocationManager;->logd(Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Landroid/telephony/CyberSenseLocationManager;->mLocationService:Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationService;

    if-eqz v0, :cond_0

    .line 341
    :try_start_0
    invoke-interface {v0}, Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationService;->startCslMockTest()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    goto :goto_0

    .line 342
    :catch_0
    move-exception v0

    .line 343
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startCslMockTest  err="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/telephony/CyberSenseLocationManager;->logd(Ljava/lang/String;)V

    .line 346
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist stopCslCollectData()V
    .locals 3

    .line 389
    const-string v0, "stop csl collect data"

    invoke-direct {p0, v0}, Landroid/telephony/CyberSenseLocationManager;->logd(Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Landroid/telephony/CyberSenseLocationManager;->mLocationService:Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationService;

    if-eqz v0, :cond_0

    .line 392
    :try_start_0
    invoke-interface {v0}, Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationService;->stopCslCollectData()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    goto :goto_0

    .line 393
    :catch_0
    move-exception v0

    .line 394
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopCslCollectData  err="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/telephony/CyberSenseLocationManager;->logd(Ljava/lang/String;)V

    .line 397
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist stopCslMockTest()V
    .locals 3

    .line 355
    const-string v0, "stop csl mock test"

    invoke-direct {p0, v0}, Landroid/telephony/CyberSenseLocationManager;->logd(Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Landroid/telephony/CyberSenseLocationManager;->mLocationService:Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationService;

    if-eqz v0, :cond_0

    .line 358
    :try_start_0
    invoke-interface {v0}, Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationService;->stopCslMockTest()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    goto :goto_0

    .line 359
    :catch_0
    move-exception v0

    .line 360
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopCslMockTest  err="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/telephony/CyberSenseLocationManager;->logd(Ljava/lang/String;)V

    .line 363
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist unregisterCslClient(Landroid/telephony/CyberSenseLocationManager$ICslCallback;)Z
    .locals 4
    .param p1, "callback"    # Landroid/telephony/CyberSenseLocationManager$ICslCallback;

    .line 254
    iget-object v0, p0, Landroid/telephony/CyberSenseLocationManager;->mLocationCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 255
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregister csl client "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/CyberSenseLocationManager;->mLocationCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/telephony/CyberSenseLocationManager;->logd(Ljava/lang/String;)V

    .line 256
    iget-object v1, p0, Landroid/telephony/CyberSenseLocationManager;->mLocationCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 257
    iget-object v1, p0, Landroid/telephony/CyberSenseLocationManager;->mLocationCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 258
    iget-object v1, p0, Landroid/telephony/CyberSenseLocationManager;->mLocationService:Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 260
    :try_start_1
    iget-object v2, p0, Landroid/telephony/CyberSenseLocationManager;->mRemoteCslCallback:Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationCallback;

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationService;->unregisterCslClient(Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationCallback;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 261
    const/4 v1, 0x1

    :try_start_2
    monitor-exit v0

    return v1

    .line 262
    :catch_0
    move-exception v1

    .line 263
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterCslClient  err="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/telephony/CyberSenseLocationManager;->logd(Ljava/lang/String;)V

    .line 267
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    monitor-exit v0

    .line 268
    const/4 v0, 0x0

    return v0

    .line 267
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
