.class final Landroid/hardware/camera2/OplusCameraManager$OplusCameraManagerGlobal;
.super Ljava/lang/Object;
.source "OplusCameraManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/OplusCameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OplusCameraManagerGlobal"
.end annotation


# static fields
.field private static final blacklist ADD_AUTH_RESULT:I = 0x2711

.field private static final blacklist CAMERA_SERVICE_BINDER_NAME:Ljava/lang/String; = "media.camera"

.field private static final blacklist CLIENT_IS_AUTHED:I = 0x2714

.field private static final blacklist CLOSE_AON:I = 0x271d

.field private static final blacklist CONNECT_STATUS:I = 0x271b

.field private static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.hardware.camera"

.field private static final blacklist DISCONNECT_CLIENTS:I = 0x2719

.field private static final blacklist OPEN_AON:I = 0x271c

.field private static final blacklist OPLUS_CAMERA_FIRST_CALL_TRANSACTION:I = 0x2710

.field private static final blacklist PRE_OPEN_CAMERA:I = 0x271e

.field private static final blacklist SET_CALL_INFO:I = 0x2716

.field private static final blacklist SET_CLIENT_INFO:I = 0x2715

.field private static final blacklist SET_DEATH_RECIPIENT:I = 0x2712

.field private static final blacklist SET_OMOJI_JSON:I = 0x271a

.field private static final blacklist SET_PACKAGE_NAME:I = 0x2713

.field private static final blacklist SET_RIO_CLIENT_INFO:I = 0x2717

.field private static final blacklist SET_TORCH_INTENSITY:I = 0x2718

.field private static final blacklist TAG:Ljava/lang/String; = "OplusCameraManagerGlobal"

.field private static final blacklist gCameraManager:Landroid/hardware/camera2/OplusCameraManager$OplusCameraManagerGlobal;

.field public static final blacklist sCameraServiceDisabled:Z


# instance fields
.field private final blacklist DEBUG:Z

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mRemote:Landroid/os/IBinder;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 496
    new-instance v0, Landroid/hardware/camera2/OplusCameraManager$OplusCameraManagerGlobal;

    invoke-direct {v0}, Landroid/hardware/camera2/OplusCameraManager$OplusCameraManagerGlobal;-><init>()V

    sput-object v0, Landroid/hardware/camera2/OplusCameraManager$OplusCameraManagerGlobal;->gCameraManager:Landroid/hardware/camera2/OplusCameraManager$OplusCameraManagerGlobal;

    .line 510
    nop

    .line 511
    const-string v0, "config.disable_cameraservice"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/hardware/camera2/OplusCameraManager$OplusCameraManagerGlobal;->sCameraServiceDisabled:Z

    .line 510
    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 1

    .line 507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 477
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/OplusCameraManager$OplusCameraManagerGlobal;->DEBUG:Z

    .line 503
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/OplusCameraManager$OplusCameraManagerGlobal;->mLock:Ljava/lang/Object;

    .line 504
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/camera2/OplusCameraManager$OplusCameraManagerGlobal;->mRemote:Landroid/os/IBinder;

    .line 508
    return-void
.end method

.method private blacklist connectCameraServiceLocked()V
    .locals 2

    .line 518
    iget-object v0, p0, Landroid/hardware/camera2/OplusCameraManager$OplusCameraManagerGlobal;->mRemote:Landroid/os/IBinder;

    if-nez v0, :cond_2

    sget-boolean v0, Landroid/hardware/camera2/OplusCameraManager$OplusCameraManagerGlobal;->sCameraServiceDisabled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 522
    :cond_0
    const-string v0, "OplusCameraManagerGlobal"

    const-string v1, "Connecting to camera service"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    const-string v0, "media.camera"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/OplusCameraManager$OplusCameraManagerGlobal;->mRemote:Landroid/os/IBinder;

    .line 526
    if-nez v0, :cond_1

    .line 528
    return-void

    .line 532
    :cond_1
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 536
    nop

    .line 537
    return-void

    .line 533
    :catch_0
    move-exception v0

    .line 535
    .local v0, "e":Landroid/os/RemoteException;
    return-void

    .line 519
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    return-void
.end method

.method public static blacklist get()Landroid/hardware/camera2/OplusCameraManager$OplusCameraManagerGlobal;
    .locals 1

    .line 514
    sget-object v0, Landroid/hardware/camera2/OplusCameraManager$OplusCameraManagerGlobal;->gCameraManager:Landroid/hardware/camera2/OplusCameraManager$OplusCameraManagerGlobal;

    return-object v0
.end method


# virtual methods
.method public blacklist addAuthResultInfo(IIILjava/lang/String;)V
    .locals 6
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "permBits"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 550
    const-string v0, "OplusCameraManagerGlobal"

    const-string v1, "addAuthResultInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    invoke-virtual {p0}, Landroid/hardware/camera2/OplusCameraManager$OplusCameraManagerGlobal;->getCameraServiceRemote()Landroid/os/IBinder;

    move-result-object v0

    .line 554
    .local v0, "remote":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 559
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 560
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 563
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.hardware.camera"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 564
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 565
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 566
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 567
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 568
    iget-object v3, p0, Landroid/hardware/camera2/OplusCameraManager$OplusCameraManagerGlobal;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2711

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 569
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 571
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 572
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 573
    nop

    .line 574
    return-void

    .line 571
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 572
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 573
    throw v3

    .line 555
    .end local v1    # "data":Landroid/os/Parcel;
    .end local v2    # "reply":Landroid/os/Parcel;
    :cond_0
    new-instance v1, Landroid/hardware/camera2/CameraAccessException;

    const/4 v2, 0x2

    const-string v3, "Camera service is currently unavailable"

    invoke-direct {v1, v2, v3}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public whitelist binderDied()V
    .locals 1

    .line 914
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/camera2/OplusCameraManager$OplusCameraManagerGlobal;->mRemote:Landroid/os/IBinder;

    .line 915
    return-void
.end method

.method public blacklist closeAON()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 890
    const-string v0, "OplusCameraManagerGlobal"

    const-string v1, "closeAON E"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    invoke-virtual {p0}, Landroid/hardware/camera2/OplusCameraManager$OplusCameraManagerGlobal;->getCameraServiceRemote()Landroid/os/IBinder;

    move-result-object v0

    .line 893
    .local v0, "remote":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 899
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 900
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 903
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.hardware.camera"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 904
    const/16 v3, 0x271d

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 905
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 907
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 908
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 909
    nop

    .line 910
    return-void

    .line 907
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 908
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 909
    throw v3

    .line 894
    .end local v1    # "data":Landroid/os/Parcel;
    .end local v2    # "reply":Landroid/os/Parcel;
    :cond_0
    new-instance v1, Landroid/hardware/camera2/CameraAccessException;

    const/4 v2, 0x2

    const-string v3, "Camera service is currently unavailable"

    invoke-direct {v1, v2, v3}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public blacklist disconnectClients()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 813
    const-string v0, "OplusCameraManagerGlobal"

    const-string v1, "disconnectClients"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    invoke-virtual {p0}, Landroid/hardware/camera2/OplusCameraManager$OplusCameraManagerGlobal;->getCameraServiceRemote()Landroid/os/IBinder;

    move-result-object v0

    .line 817
    .local v0, "remote":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 822
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 823
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 826
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.hardware.camera"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 827
    iget-object v3, p0, Landroid/hardware/camera2/OplusCameraManager$OplusCameraManagerGlobal;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2719

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 828
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 830
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 831
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 832
    nop

    .line 833
    return-void

    .line 830
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 831
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 832
    throw v3

    .line 818
    .end local v1    # "data":Landroid/os/Parcel;
    .end local v2    # "reply":Landroid/os/Parcel;
    :cond_0
    new-instance v1, Landroid/hardware/camera2/CameraAccessException;

    const/4 v2, 0x2

    const-string v3, "Camera service is currently unavailable"

    invoke-direct {v1, v2, v3}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public blacklist getCameraServiceRemote()Landroid/os/IBinder;
    .locals 3

    .line 539
    iget-object v0, p0, Landroid/hardware/camera2/OplusCameraManager$OplusCameraManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 540
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/OplusCameraManager$OplusCameraManagerGlobal;->connectCameraServiceLocked()V

    .line 541
    iget-object v1, p0, Landroid/hardware/camera2/OplusCameraManager$OplusCameraManagerGlobal;->mRemote:Landroid/os/IBinder;

    if-nez v1, :cond_0

    sget-boolean v1, Landroid/hardware/camera2/OplusCameraManager$OplusCameraManagerGlobal;->sCameraServiceDisabled:Z

    if-nez v1, :cond_0

    .line 542
    const-string v1, "OplusCameraManagerGlobal"

    const-string v2, "Camera service is unavailable"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :cond_0
    iget-object v1, p0, Landroid/hardware/camera2/OplusCameraManager$OplusCameraManagerGlobal;->mRemote:Landroid/os/IBinder;

    monitor-exit v0

    return-object v1

    .line 545
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist isAuthedClient(Ljava/lang/String;)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isAuthedClient, need check packageName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusCameraManagerGlobal"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    invoke-virtual {p0}, Landroid/hardware/camera2/OplusCameraManager$OplusCameraManagerGlobal;->getCameraServiceRemote()Landroid/os/IBinder;

    move-result-object v0

    .line 605
    .local v0, "remote":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 610
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 611
    .local v2, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 612
    .local v3, "reply":Landroid/os/Parcel;
    const/4 v4, 0x0

    .line 614
    .local v4, "isAuthed":Z
    :try_start_0
    const-string v5, "android.hardware.camera"

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 615
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 616
    iget-object v5, p0, Landroid/hardware/camera2/OplusCameraManager$OplusCameraManagerGlobal;->mRemote:Landroid/os/IBinder;

    const/16 v6, 0x2714

    const/4 v7, 0x0

    invoke-interface {v5, v6, v2, v3, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 617
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 618
    invoke-virtual {v3}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v4, v5

    .line 620
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 621
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 622
    nop

    .line 624
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isAuthedClient, the "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is Authed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    return v4

    .line 620
    :catchall_0
    move-exception v1

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 621
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 622
    throw v1

    .line 606
    .end local v2    # "data":Landroid/os/Parcel;
    .end local v3    # "reply":Landroid/os/Parcel;
    .end local v4    # "isAuthed":Z
    :cond_0
    new-instance v1, Landroid/hardware/camera2/CameraAccessException;

    const/4 v2, 0x2

    const-string v3, "Camera service is currently unavailable"

    invoke-direct {v1, v2, v3}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public blacklist isClientConnected()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 836
    const-string v0, "OplusCameraManagerGlobal"

    const-string v1, "isClientConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    invoke-virtual {p0}, Landroid/hardware/camera2/OplusCameraManager$OplusCameraManagerGlobal;->getCameraServiceRemote()Landroid/os/IBinder;

    move-result-object v1

    .line 840
    .local v1, "remote":Landroid/os/IBinder;
    if-eqz v1, :cond_0

    .line 845
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 846
    .local v2, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 847
    .local v3, "reply":Landroid/os/Parcel;
    const/4 v4, 0x0

    .line 849
    .local v4, "isConnected":Z
    :try_start_0
    const-string v5, "android.hardware.camera"

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 850
    iget-object v5, p0, Landroid/hardware/camera2/OplusCameraManager$OplusCameraManagerGlobal;->mRemote:Landroid/os/IBinder;

    const/16 v6, 0x271b

    const/4 v7, 0x0

    invoke-interface {v5, v6, v2, v3, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 851
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 852
    invoke-virtual {v3}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v4, v5

    .line 854
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 855
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 856
    nop

    .line 858
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isClientConnected: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    return v4

    .line 854
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 855
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 856
    throw v0

    .line 841
    .end local v2    # "data":Landroid/os/Parcel;
    .end local v3    # "reply":Landroid/os/Parcel;
    .end local v4    # "isConnected":Z
    :cond_0
    new-instance v0, Landroid/hardware/camera2/CameraAccessException;

    const/4 v2, 0x2

    const-string v3, "Camera service is currently unavailable"

    invoke-direct {v0, v2, v3}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public blacklist openAON(Landroid/hardware/IAONHECallbacks;)V
    .locals 5
    .param p1, "callback"    # Landroid/hardware/IAONHECallbacks;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 865
    const-string v0, "OplusCameraManagerGlobal"

    const-string v1, "openAON E"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    invoke-virtual {p0}, Landroid/hardware/camera2/OplusCameraManager$OplusCameraManagerGlobal;->getCameraServiceRemote()Landroid/os/IBinder;

    move-result-object v0

    .line 868
    .local v0, "remote":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 874
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 875
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 878
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.hardware.camera"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 879
    invoke-interface {p1}, Landroid/hardware/IAONHECallbacks;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 880
    const/16 v3, 0x271c

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 881
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 883
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 884
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 885
    nop

    .line 886
    return-void

    .line 883
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 884
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 885
    throw v3

    .line 869
    .end local v1    # "data":Landroid/os/Parcel;
    .end local v2    # "reply":Landroid/os/Parcel;
    :cond_0
    new-instance v1, Landroid/hardware/camera2/CameraAccessException;

    const/4 v2, 0x2

    const-string v3, "Camera service is currently unavailable"

    invoke-direct {v1, v2, v3}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public blacklist preOpenCamera(Ljava/lang/String;)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "preOpenCamera, need check packageName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusCameraManagerGlobal"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    invoke-virtual {p0}, Landroid/hardware/camera2/OplusCameraManager$OplusCameraManagerGlobal;->getCameraServiceRemote()Landroid/os/IBinder;

    move-result-object v0

    .line 634
    .local v0, "remote":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 639
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 640
    .local v2, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 643
    .local v3, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.hardware.camera"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 644
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 645
    iget-object v4, p0, Landroid/hardware/camera2/OplusCameraManager$OplusCameraManagerGlobal;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x271e

    const/4 v6, 0x0

    invoke-interface {v4, v5, v2, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 646
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 649
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 650
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 651
    nop

    .line 653
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "preOpenCamera, the "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " preOpenSend "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    return-void

    .line 649
    :catchall_0
    move-exception v1

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 650
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 651
    throw v1

    .line 635
    .end local v2    # "data":Landroid/os/Parcel;
    .end local v3    # "reply":Landroid/os/Parcel;
    :cond_0
    new-instance v1, Landroid/hardware/camera2/CameraAccessException;

    const/4 v2, 0x2

    const-string v3, "Camera service is currently unavailable"

    invoke-direct {v1, v2, v3}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public blacklist setCallInfo()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 660
    const-string v0, "OplusCameraManagerGlobal"

    const-string v1, "setCallInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    invoke-virtual {p0}, Landroid/hardware/camera2/OplusCameraManager$OplusCameraManagerGlobal;->getCameraServiceRemote()Landroid/os/IBinder;

    move-result-object v0

    .line 664
    .local v0, "remote":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 669
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 670
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 672
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.hardware.camera"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 673
    iget-object v3, p0, Landroid/hardware/camera2/OplusCameraManager$OplusCameraManagerGlobal;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2716

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 674
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 676
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 677
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 678
    nop

    .line 679
    return-void

    .line 676
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 677
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 678
    throw v3

    .line 665
    .end local v1    # "data":Landroid/os/Parcel;
    .end local v2    # "reply":Landroid/os/Parcel;
    :cond_0
    new-instance v1, Landroid/hardware/camera2/CameraAccessException;

    const/4 v2, 0x2

    const-string v3, "Camera service is currently unavailable"

    invoke-direct {v1, v2, v3}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public blacklist setClientInfo(Ljava/lang/String;II)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "pid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 708
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setClientInfo, packageName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusCameraManagerGlobal"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    invoke-virtual {p0}, Landroid/hardware/camera2/OplusCameraManager$OplusCameraManagerGlobal;->getCameraServiceRemote()Landroid/os/IBinder;

    move-result-object v0

    .line 713
    .local v0, "remote":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 718
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 719
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 722
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.hardware.camera"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 723
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 724
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 725
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 726
    const/16 v3, 0x2715

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 727
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 729
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 730
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 731
    nop

    .line 732
    return-void

    .line 729
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 730
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 731
    throw v3

    .line 714
    .end local v1    # "data":Landroid/os/Parcel;
    .end local v2    # "reply":Landroid/os/Parcel;
    :cond_0
    new-instance v1, Landroid/hardware/camera2/CameraAccessException;

    const/4 v2, 0x2

    const-string v3, "Camera service is currently unavailable"

    invoke-direct {v1, v2, v3}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public blacklist setDeathRecipient(Landroid/os/IBinder;)V
    .locals 6
    .param p1, "client"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 577
    const-string v0, "OplusCameraManagerGlobal"

    const-string v1, "setDeathRecipient"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    invoke-virtual {p0}, Landroid/hardware/camera2/OplusCameraManager$OplusCameraManagerGlobal;->getCameraServiceRemote()Landroid/os/IBinder;

    move-result-object v0

    .line 581
    .local v0, "remote":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 586
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 587
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 590
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.hardware.camera"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 591
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 592
    iget-object v3, p0, Landroid/hardware/camera2/OplusCameraManager$OplusCameraManagerGlobal;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2712

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 593
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 595
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 596
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 597
    nop

    .line 598
    return-void

    .line 595
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 596
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 597
    throw v3

    .line 582
    .end local v1    # "data":Landroid/os/Parcel;
    .end local v2    # "reply":Landroid/os/Parcel;
    :cond_0
    new-instance v1, Landroid/hardware/camera2/CameraAccessException;

    const/4 v2, 0x2

    const-string v3, "Camera service is currently unavailable"

    invoke-direct {v1, v2, v3}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public blacklist setOmojiJson(Ljava/lang/String;)V
    .locals 7
    .param p1, "atavatarInfo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 762
    const-string v0, "OplusCameraManagerGlobal"

    const-string v1, "setOmojiJson E"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    invoke-virtual {p0}, Landroid/hardware/camera2/OplusCameraManager$OplusCameraManagerGlobal;->getCameraServiceRemote()Landroid/os/IBinder;

    move-result-object v1

    .line 765
    .local v1, "remote":Landroid/os/IBinder;
    if-eqz v1, :cond_0

    .line 770
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 771
    .local v2, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 774
    .local v3, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.hardware.camera"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 775
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 776
    const-string v4, "setOmojiJson process E"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    iget-object v4, p0, Landroid/hardware/camera2/OplusCameraManager$OplusCameraManagerGlobal;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x271a

    const/4 v6, 0x0

    invoke-interface {v4, v5, v2, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 778
    const-string v4, "setOmojiJson process X"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 781
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 782
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 783
    nop

    .line 784
    const-string v4, "setOmojiJson X"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    return-void

    .line 781
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 782
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 783
    throw v0

    .line 766
    .end local v2    # "data":Landroid/os/Parcel;
    .end local v3    # "reply":Landroid/os/Parcel;
    :cond_0
    new-instance v0, Landroid/hardware/camera2/CameraAccessException;

    const/4 v2, 0x2

    const-string v3, "Camera service is currently unavailable"

    invoke-direct {v0, v2, v3}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public blacklist setPackageName(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 683
    const-string v0, "OplusCameraManagerGlobal"

    const-string v1, "setPackageName"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    invoke-virtual {p0}, Landroid/hardware/camera2/OplusCameraManager$OplusCameraManagerGlobal;->getCameraServiceRemote()Landroid/os/IBinder;

    move-result-object v0

    .line 687
    .local v0, "remote":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 692
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 693
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 696
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.hardware.camera"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 697
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 698
    const/16 v3, 0x2713

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 699
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 701
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 702
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 703
    nop

    .line 704
    return-void

    .line 701
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 702
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 703
    throw v3

    .line 688
    .end local v1    # "data":Landroid/os/Parcel;
    .end local v2    # "reply":Landroid/os/Parcel;
    :cond_0
    new-instance v1, Landroid/hardware/camera2/CameraAccessException;

    const/4 v2, 0x2

    const-string v3, "Camera service is currently unavailable"

    invoke-direct {v1, v2, v3}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public blacklist setRIOClientInfo(II)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 736
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusCameraManagerGlobal"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    invoke-virtual {p0}, Landroid/hardware/camera2/OplusCameraManager$OplusCameraManagerGlobal;->getCameraServiceRemote()Landroid/os/IBinder;

    move-result-object v0

    .line 740
    .local v0, "remote":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 745
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 746
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 749
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.hardware.camera"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 750
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 751
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 752
    const/16 v3, 0x2717

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 753
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 755
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 756
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 757
    nop

    .line 758
    return-void

    .line 755
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 756
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 757
    throw v3

    .line 741
    .end local v1    # "data":Landroid/os/Parcel;
    .end local v2    # "reply":Landroid/os/Parcel;
    :cond_0
    new-instance v1, Landroid/hardware/camera2/CameraAccessException;

    const/4 v2, 0x2

    const-string v3, "Camera service is currently unavailable"

    invoke-direct {v1, v2, v3}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public blacklist setTorchIntensity(I)V
    .locals 5
    .param p1, "torchIntensity"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 789
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTorchIntensity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusCameraManagerGlobal"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    invoke-virtual {p0}, Landroid/hardware/camera2/OplusCameraManager$OplusCameraManagerGlobal;->getCameraServiceRemote()Landroid/os/IBinder;

    move-result-object v0

    .line 793
    .local v0, "remote":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 798
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 799
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 802
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.hardware.camera"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 803
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 804
    const/16 v3, 0x2718

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 805
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 807
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 808
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 809
    nop

    .line 810
    return-void

    .line 807
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 808
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 809
    throw v3

    .line 794
    .end local v1    # "data":Landroid/os/Parcel;
    .end local v2    # "reply":Landroid/os/Parcel;
    :cond_0
    new-instance v1, Landroid/hardware/camera2/CameraAccessException;

    const/4 v2, 0x2

    const-string v3, "Camera service is currently unavailable"

    invoke-direct {v1, v2, v3}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw v1
.end method
