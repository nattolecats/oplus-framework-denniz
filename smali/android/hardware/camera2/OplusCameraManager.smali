.class public final Landroid/hardware/camera2/OplusCameraManager;
.super Ljava/lang/Object;
.source "OplusCameraManager.java"

# interfaces
.implements Landroid/hardware/camera2/IOplusCameraManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/OplusCameraManager$OplusCameraManagerGlobal;
    }
.end annotation


# static fields
.field private static final blacklist KEY_OPLUS_PACKAGE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "[B>;"
        }
    .end annotation
.end field

.field private static final blacklist PERMISSION_SAFE_CAMERA:Ljava/lang/String; = "com.oplus.permission.safe.CAMERA"

.field private static blacklist SET_PACKAGE_BLACK_LIST:[Ljava/lang/String; = null

.field private static final blacklist SYSTEM_CAMERA_PACKNAME:Ljava/lang/String;

.field private static final blacklist TAG:Ljava/lang/String; = "OplusCameraManager"

.field private static blacklist mInstance:Landroid/hardware/camera2/OplusCameraManager;


# instance fields
.field private blacklist mIsCameraUnitSession:Z

.field private blacklist mOpPackageName:Ljava/lang/String;

.field private blacklist mbLoad:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 47
    const-string v0, "ro.oplus.system.camera.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/camera2/OplusCameraManager;->SYSTEM_CAMERA_PACKNAME:Ljava/lang/String;

    .line 48
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-class v1, [B

    const-string v2, "com.oplus.is.sdk.camera.package"

    invoke-direct {v0, v2, v1}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Landroid/hardware/camera2/OplusCameraManager;->KEY_OPLUS_PACKAGE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 51
    new-instance v0, Landroid/hardware/camera2/OplusCameraManager;

    invoke-direct {v0}, Landroid/hardware/camera2/OplusCameraManager;-><init>()V

    sput-object v0, Landroid/hardware/camera2/OplusCameraManager;->mInstance:Landroid/hardware/camera2/OplusCameraManager;

    .line 52
    const-string v0, "com.oplus.battery"

    const-string v1, "com.oplus.onetrace"

    const-string v2, "com.android.systemui"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/camera2/OplusCameraManager;->SET_PACKAGE_BLACK_LIST:[Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-string v0, ""

    iput-object v0, p0, Landroid/hardware/camera2/OplusCameraManager;->mOpPackageName:Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/OplusCameraManager;->mIsCameraUnitSession:Z

    .line 58
    iput-boolean v0, p0, Landroid/hardware/camera2/OplusCameraManager;->mbLoad:Z

    .line 62
    return-void
.end method

.method private blacklist checkLoadLibrary()V
    .locals 3

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkLoadHeifLibbrary, mbLoad: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/camera2/OplusCameraManager;->mbLoad:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusCameraManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-boolean v0, p0, Landroid/hardware/camera2/OplusCameraManager;->mbLoad:Z

    if-eqz v0, :cond_0

    .line 68
    return-void

    .line 72
    :cond_0
    :try_start_0
    const-string v0, "HeifWinBufExchg-jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/camera2/OplusCameraManager;->mbLoad:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 76
    const-string v2, "checkLoadHeifLibbrary, error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static whitelist generateTotalCaptureResult(Ljava/lang/Object;J)Landroid/hardware/camera2/TotalCaptureResult;
    .locals 3
    .param p0, "meta"    # Ljava/lang/Object;
    .param p1, "frameId"    # J

    .line 125
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 126
    return-object v0

    .line 127
    :cond_0
    instance-of v1, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;

    if-eqz v1, :cond_1

    .line 128
    new-instance v0, Landroid/hardware/camera2/TotalCaptureResult;

    move-object v1, p0

    check-cast v1, Landroid/hardware/camera2/impl/CameraMetadataNative;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/TotalCaptureResult;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;I)V

    .line 131
    .local v0, "r":Landroid/hardware/camera2/TotalCaptureResult;
    :try_start_0
    const-class v1, Landroid/hardware/camera2/CaptureResult;

    const-string v2, "mFrameNumber"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 132
    .local v1, "numField":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 133
    invoke-virtual {v1, v0, p1, p2}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .end local v1    # "numField":Ljava/lang/reflect/Field;
    goto :goto_0

    .line 134
    :catch_0
    move-exception v1

    .line 135
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    invoke-virtual {v1}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    .line 138
    .end local v1    # "e":Ljava/lang/ReflectiveOperationException;
    :goto_0
    return-object v0

    .line 140
    .end local v0    # "r":Landroid/hardware/camera2/TotalCaptureResult;
    :cond_1
    return-object v0
.end method

.method public static whitelist getEmptyCameraMetadataNative([J)Ljava/lang/Object;
    .locals 4
    .param p0, "metadataPtr"    # [J

    .line 114
    new-instance v0, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    .line 116
    .local v0, "meta":Landroid/hardware/camera2/impl/CameraMetadataNative;
    if-eqz p0, :cond_0

    array-length v1, p0

    if-lez v1, :cond_0

    .line 117
    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getMetadataPtr()J

    move-result-wide v2

    aput-wide v2, p0, v1

    .line 120
    :cond_0
    return-object v0
.end method

.method public static declared-synchronized whitelist getInstance()Landroid/hardware/camera2/OplusCameraManager;
    .locals 2

    const-class v0, Landroid/hardware/camera2/OplusCameraManager;

    monitor-enter v0

    .line 109
    :try_start_0
    sget-object v1, Landroid/hardware/camera2/OplusCameraManager;->mInstance:Landroid/hardware/camera2/OplusCameraManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 109
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static whitelist setOmojiJson(Ljava/lang/String;)V
    .locals 4
    .param p0, "jsonInfo"    # Ljava/lang/String;

    .line 414
    const-string v0, "setOmojiJson :"

    const-string v1, "OplusCameraManager"

    const-string v2, "setOmojiJson called."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    if-eqz p0, :cond_1

    const-string v2, ""

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    .line 420
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/hardware/camera2/OplusCameraManager$OplusCameraManagerGlobal;->get()Landroid/hardware/camera2/OplusCameraManager$OplusCameraManagerGlobal;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/hardware/camera2/OplusCameraManager$OplusCameraManagerGlobal;->setOmojiJson(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 423
    :catch_0
    move-exception v2

    .line 424
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 421
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 422
    .local v2, "e":Landroid/hardware/camera2/CameraAccessException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    .end local v2    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_0
    nop

    .line 426
    :goto_1
    return-void

    .line 416
    :cond_1
    :goto_2
    const-string v0, "jsonInfo is null"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    return-void
.end method


# virtual methods
.method public whitelist addAuthResultInfo(Landroid/content/Context;IIILjava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uid"    # I
    .param p3, "pid"    # I
    .param p4, "permBits"    # I
    .param p5, "packageName"    # Ljava/lang/String;

    .line 163
    const-string v0, "com.oplus.permission.safe.CAMERA"

    const-string v1, "OplusCameraManager"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    if-eqz p2, :cond_2

    .line 167
    if-eqz p3, :cond_1

    .line 169
    if-eqz p5, :cond_0

    .line 174
    :try_start_0
    invoke-static {}, Landroid/hardware/camera2/OplusCameraManager$OplusCameraManagerGlobal;->get()Landroid/hardware/camera2/OplusCameraManager$OplusCameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/hardware/camera2/OplusCameraManager$OplusCameraManagerGlobal;->addAuthResultInfo(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 175
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 176
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 179
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_0
    nop

    .line 180
    :goto_1
    return-void

    .line 170
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "packageName was null, which is illegal."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pid was 0, which is illegal."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "uid was 0, which is illegal."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist closeAON()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusCameraManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :try_start_0
    invoke-static {}, Landroid/hardware/camera2/OplusCameraManager$OplusCameraManagerGlobal;->get()Landroid/hardware/camera2/OplusCameraManager$OplusCameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/OplusCameraManager$OplusCameraManagerGlobal;->closeAON()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    goto :goto_0

    .line 444
    :catch_0
    move-exception v0

    .line 445
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 447
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist disconnectClients()V
    .locals 1

    .line 355
    :try_start_0
    invoke-static {}, Landroid/hardware/camera2/OplusCameraManager$OplusCameraManagerGlobal;->get()Landroid/hardware/camera2/OplusCameraManager$OplusCameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/OplusCameraManager$OplusCameraManagerGlobal;->disconnectClients()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 358
    :catch_0
    move-exception v0

    .line 359
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 356
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 357
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 360
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_0
    nop

    .line 361
    :goto_1
    return-void
.end method

.method public whitelist isAuthedClient(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 207
    if-eqz p1, :cond_0

    .line 212
    :try_start_0
    invoke-static {}, Landroid/hardware/camera2/OplusCameraManager$OplusCameraManagerGlobal;->get()Landroid/hardware/camera2/OplusCameraManager$OplusCameraManagerGlobal;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/OplusCameraManager$OplusCameraManagerGlobal;->isAuthedClient(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 213
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 214
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 217
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    nop

    .line 219
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 208
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist isCameraUnitSession()Z
    .locals 1

    .line 380
    iget-boolean v0, p0, Landroid/hardware/camera2/OplusCameraManager;->mIsCameraUnitSession:Z

    return v0
.end method

.method public whitelist isClientConnected()Z
    .locals 1

    .line 369
    :try_start_0
    invoke-static {}, Landroid/hardware/camera2/OplusCameraManager$OplusCameraManagerGlobal;->get()Landroid/hardware/camera2/OplusCameraManager$OplusCameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/OplusCameraManager$OplusCameraManagerGlobal;->isClientConnected()Z

    move-result v0
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 372
    :catch_0
    move-exception v0

    .line 373
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 370
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 371
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 374
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    nop

    .line 376
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isPrivilegedApp(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 319
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    sget-object v1, Landroid/hardware/camera2/OplusCameraManager;->SYSTEM_CAMERA_PACKNAME:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_0

    .line 323
    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 324
    const/4 v0, 0x1

    return v0

    .line 327
    :cond_1
    return v0

    .line 320
    :cond_2
    :goto_0
    return v0
.end method

.method public native whitelist nativeSendToAttachHWBufToBufQEvent(J)I
.end method

.method public native whitelist nativeSendToBufQAllocEnableEvent(J)I
.end method

.method public native whitelist nativeSendToExchgHWBufBtwBufQEvent(J)I
.end method

.method public native whitelist nativtSendToProcessHeif(J)V
.end method

.method public whitelist openAON(Landroid/hardware/IAONHECallbacks;)V
    .locals 2
    .param p1, "callback"    # Landroid/hardware/IAONHECallbacks;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusCameraManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :try_start_0
    invoke-static {}, Landroid/hardware/camera2/OplusCameraManager$OplusCameraManagerGlobal;->get()Landroid/hardware/camera2/OplusCameraManager$OplusCameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/OplusCameraManager$OplusCameraManagerGlobal;->openAON(Landroid/hardware/IAONHECallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    goto :goto_0

    .line 466
    :catch_0
    move-exception v0

    .line 467
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 469
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist oplusDetachImage(Landroid/media/Image;Landroid/media/ImageReader;)V
    .locals 6
    .param p1, "image"    # Landroid/media/Image;
    .param p2, "imgreader"    # Landroid/media/ImageReader;

    .line 404
    :try_start_0
    const-class v0, Landroid/media/ImageReader;

    const-string v1, "detachImage"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/media/Image;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 405
    .local v0, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 406
    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v5

    invoke-virtual {v0, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    nop

    .end local v0    # "method":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 407
    :catch_0
    move-exception v0

    .line 408
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    .line 410
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :goto_0
    const-string v0, "OplusCameraManager"

    const-string v1, "using reflection to visit detachImage method in ImageReader"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    return-void
.end method

.method public whitelist parseSessionParameters(Landroid/hardware/camera2/CaptureRequest;)V
    .locals 3
    .param p1, "sessionParams"    # Landroid/hardware/camera2/CaptureRequest;

    .line 384
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 385
    iput-boolean v0, p0, Landroid/hardware/camera2/OplusCameraManager;->mIsCameraUnitSession:Z

    .line 386
    return-void

    .line 389
    :cond_0
    sget-object v1, Landroid/hardware/camera2/OplusCameraManager;->KEY_OPLUS_PACKAGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 391
    .local v1, "result":[B
    if-eqz v1, :cond_3

    array-length v2, v1

    if-nez v2, :cond_1

    goto :goto_0

    .line 396
    :cond_1
    aget-byte v0, v1, v0

    const/4 v2, 0x1

    if-ne v2, v0, :cond_2

    .line 397
    iput-boolean v2, p0, Landroid/hardware/camera2/OplusCameraManager;->mIsCameraUnitSession:Z

    .line 399
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseSessionParameters mIsCameraUnitSession: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Landroid/hardware/camera2/OplusCameraManager;->mIsCameraUnitSession:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OplusCameraManager"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    return-void

    .line 392
    :cond_3
    :goto_0
    iput-boolean v0, p0, Landroid/hardware/camera2/OplusCameraManager;->mIsCameraUnitSession:Z

    .line 393
    return-void
.end method

.method public whitelist preOpenCamera(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 233
    if-eqz p1, :cond_0

    .line 237
    const-string v0, "com.oplus.permission.safe.CAMERA"

    const-string v1, "OplusCameraManager"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :try_start_0
    invoke-static {}, Landroid/hardware/camera2/OplusCameraManager$OplusCameraManagerGlobal;->get()Landroid/hardware/camera2/OplusCameraManager$OplusCameraManagerGlobal;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/OplusCameraManager$OplusCameraManagerGlobal;->preOpenCamera(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 241
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 242
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 245
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_0
    nop

    .line 246
    :goto_1
    return-void

    .line 234
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist saveOpPackageName(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 267
    iput-object p1, p0, Landroid/hardware/camera2/OplusCameraManager;->mOpPackageName:Ljava/lang/String;

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveOpPackageName, mOpPackageName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/OplusCameraManager;->mOpPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusCameraManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    return-void
.end method

.method public whitelist sendToAttachHWBufToBufQEvent(J)I
    .locals 1
    .param p1, "ptr"    # J

    .line 102
    invoke-direct {p0}, Landroid/hardware/camera2/OplusCameraManager;->checkLoadLibrary()V

    .line 103
    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/OplusCameraManager;->nativeSendToAttachHWBufToBufQEvent(J)I

    move-result v0

    return v0
.end method

.method public whitelist sendToBufQAllocEnableEvent(J)I
    .locals 1
    .param p1, "ptr"    # J

    .line 88
    invoke-direct {p0}, Landroid/hardware/camera2/OplusCameraManager;->checkLoadLibrary()V

    .line 89
    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/OplusCameraManager;->nativeSendToBufQAllocEnableEvent(J)I

    move-result v0

    return v0
.end method

.method public whitelist sendToExchgHWBufBtwBufQEvent(J)I
    .locals 1
    .param p1, "ptr"    # J

    .line 95
    invoke-direct {p0}, Landroid/hardware/camera2/OplusCameraManager;->checkLoadLibrary()V

    .line 96
    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/OplusCameraManager;->nativeSendToExchgHWBufBtwBufQEvent(J)I

    move-result v0

    return v0
.end method

.method public whitelist sendToProcessHeif(J)V
    .locals 0
    .param p1, "ptr"    # J

    .line 81
    invoke-direct {p0}, Landroid/hardware/camera2/OplusCameraManager;->checkLoadLibrary()V

    .line 82
    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/OplusCameraManager;->nativtSendToProcessHeif(J)V

    .line 83
    return-void
.end method

.method public whitelist setCallInfo()V
    .locals 1

    .line 253
    :try_start_0
    invoke-static {}, Landroid/hardware/camera2/OplusCameraManager$OplusCameraManagerGlobal;->get()Landroid/hardware/camera2/OplusCameraManager$OplusCameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/OplusCameraManager$OplusCameraManagerGlobal;->setCallInfo()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 254
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 255
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 258
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_0
    nop

    .line 259
    :goto_1
    return-void
.end method

.method public whitelist setDeathRecipient(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "client"    # Landroid/os/IBinder;

    .line 188
    if-eqz p1, :cond_0

    .line 193
    :try_start_0
    invoke-static {}, Landroid/hardware/camera2/OplusCameraManager$OplusCameraManagerGlobal;->get()Landroid/hardware/camera2/OplusCameraManager$OplusCameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/OplusCameraManager$OplusCameraManagerGlobal;->setDeathRecipient(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 194
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 195
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 198
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_0
    nop

    .line 199
    :goto_1
    return-void

    .line 189
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "client was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setPackageName()V
    .locals 5

    .line 284
    sget-object v0, Landroid/hardware/camera2/OplusCameraManager;->SET_PACKAGE_BLACK_LIST:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 285
    .local v3, "packageName":Ljava/lang/String;
    iget-object v4, p0, Landroid/hardware/camera2/OplusCameraManager;->mOpPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 286
    return-void

    .line 284
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 291
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/hardware/camera2/OplusCameraManager$OplusCameraManagerGlobal;->get()Landroid/hardware/camera2/OplusCameraManager$OplusCameraManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/OplusCameraManager;->mOpPackageName:Ljava/lang/String;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 292
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 291
    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/OplusCameraManager$OplusCameraManagerGlobal;->setClientInfo(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 295
    :catch_0
    move-exception v0

    .line 296
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 293
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 294
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 297
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_1
    nop

    .line 298
    :goto_2
    return-void
.end method

.method public whitelist setRIOClientInfo()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusCameraManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :try_start_0
    invoke-static {}, Landroid/hardware/camera2/OplusCameraManager$OplusCameraManagerGlobal;->get()Landroid/hardware/camera2/OplusCameraManager$OplusCameraManagerGlobal;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 305
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 304
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/OplusCameraManager$OplusCameraManagerGlobal;->setRIOClientInfo(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    goto :goto_0

    .line 306
    :catch_0
    move-exception v0

    .line 307
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 309
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist setTorchIntensity(I)V
    .locals 2
    .param p1, "torchIntensity"    # I

    .line 337
    if-ltz p1, :cond_0

    .line 342
    :try_start_0
    invoke-static {}, Landroid/hardware/camera2/OplusCameraManager$OplusCameraManagerGlobal;->get()Landroid/hardware/camera2/OplusCameraManager$OplusCameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/OplusCameraManager$OplusCameraManagerGlobal;->setTorchIntensity(I)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 345
    :catch_0
    move-exception v0

    .line 346
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 343
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 344
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 347
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_0
    nop

    .line 348
    :goto_1
    return-void

    .line 338
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "torchIntensity was less than 0, which is illegal."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
