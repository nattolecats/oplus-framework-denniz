.class public Landroid/hardware/CameraExtImpl;
.super Ljava/lang/Object;
.source "CameraExtImpl.java"

# interfaces
.implements Landroid/hardware/ICameraExt;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "CameraExtImpl"

.field private static blacklist sInstance:Landroid/hardware/CameraExtImpl;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static declared-synchronized blacklist getInstance()Landroid/hardware/CameraExtImpl;
    .locals 3

    const-class v0, Landroid/hardware/CameraExtImpl;

    monitor-enter v0

    .line 21
    :try_start_0
    sget-object v1, Landroid/hardware/CameraExtImpl;->sInstance:Landroid/hardware/CameraExtImpl;

    if-nez v1, :cond_0

    .line 22
    new-instance v1, Landroid/hardware/CameraExtImpl;

    invoke-direct {v1}, Landroid/hardware/CameraExtImpl;-><init>()V

    sput-object v1, Landroid/hardware/CameraExtImpl;->sInstance:Landroid/hardware/CameraExtImpl;

    .line 23
    const-string v1, "CameraExtImpl"

    const-string v2, "getInstance success!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :cond_0
    sget-object v1, Landroid/hardware/CameraExtImpl;->sInstance:Landroid/hardware/CameraExtImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 20
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static blacklist interceptOpen()Z
    .locals 5

    .line 121
    sget-object v0, Lcom/oplus/permission/IOplusPermissionCheckInjector;->DEFAULT:Lcom/oplus/permission/IOplusPermissionCheckInjector;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Lcom/oplus/permission/IOplusPermissionCheckInjector;

    .line 122
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 123
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 122
    const-string v3, "android.permission.CAMERA"

    const-string v4, "openCamera"

    invoke-interface {v0, v3, v1, v2, v4}, Lcom/oplus/permission/IOplusPermissionCheckInjector;->checkPermission(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    .line 121
    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static blacklist interceptOpenLegacy()Z
    .locals 5

    .line 130
    sget-object v0, Lcom/oplus/permission/IOplusPermissionCheckInjector;->DEFAULT:Lcom/oplus/permission/IOplusPermissionCheckInjector;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Lcom/oplus/permission/IOplusPermissionCheckInjector;

    .line 131
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 132
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 131
    const-string v3, "android.permission.CAMERA"

    const-string v4, "openLegacyCamera"

    invoke-interface {v0, v3, v1, v2, v4}, Lcom/oplus/permission/IOplusPermissionCheckInjector;->checkPermission(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    .line 130
    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static blacklist interceptOpenWithCameraId()Z
    .locals 5

    .line 112
    sget-object v0, Lcom/oplus/permission/IOplusPermissionCheckInjector;->DEFAULT:Lcom/oplus/permission/IOplusPermissionCheckInjector;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Lcom/oplus/permission/IOplusPermissionCheckInjector;

    .line 113
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 114
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 113
    const-string v3, "android.permission.CAMERA"

    const-string v4, "openCamera"

    invoke-interface {v0, v3, v1, v2, v4}, Lcom/oplus/permission/IOplusPermissionCheckInjector;->checkPermission(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    .line 112
    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public whitelist extendCamera(IJ)V
    .locals 3
    .param p1, "cameraId"    # I
    .param p2, "connectTime"    # J

    .line 35
    invoke-static {}, Landroid/hardware/OplusCameraStatisticsManager;->getInstance()Landroid/hardware/OplusCameraStatisticsManager;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/hardware/OplusCameraStatisticsManager;->setConnectTime(J)V

    .line 36
    invoke-static {}, Landroid/hardware/OplusCameraStatisticsManager;->getInstance()Landroid/hardware/OplusCameraStatisticsManager;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/OplusCameraStatisticsManager;->addInfo(IJ)V

    .line 37
    return-void
.end method

.method public whitelist extendRelease(J)V
    .locals 2
    .param p1, "disconnectTime"    # J

    .line 41
    invoke-static {}, Landroid/hardware/OplusCameraStatisticsManager;->getInstance()Landroid/hardware/OplusCameraStatisticsManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/hardware/OplusCameraStatisticsManager;->setDisconnectTime(J)V

    .line 42
    invoke-static {}, Landroid/hardware/OplusCameraStatisticsManager;->getInstance()Landroid/hardware/OplusCameraStatisticsManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/OplusCameraStatisticsManager;->getCameraId()I

    move-result v0

    .line 43
    .local v0, "mCameraId":I
    invoke-static {}, Landroid/hardware/OplusCameraStatisticsManager;->getInstance()Landroid/hardware/OplusCameraStatisticsManager;

    move-result-object v1

    invoke-virtual {v1, v0, p1, p2}, Landroid/hardware/OplusCameraStatisticsManager;->addInfo(IJ)V

    .line 44
    return-void
.end method

.method public whitelist extendhandleMessage(I)V
    .locals 1
    .param p1, "curFaceCount"    # I

    .line 58
    invoke-static {}, Landroid/hardware/OplusCameraStatisticsManager;->getInstance()Landroid/hardware/OplusCameraStatisticsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/OplusCameraStatisticsManager;->setCurFaceCount(I)V

    .line 59
    return-void
.end method

.method public whitelist extendstopPreview(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .line 53
    invoke-static {}, Landroid/hardware/OplusCameraStatisticsManager;->getInstance()Landroid/hardware/OplusCameraStatisticsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/OplusCameraStatisticsManager;->addPreviewInfo(Landroid/hardware/Camera$Parameters;)V

    .line 54
    return-void
.end method

.method public whitelist extendtakePicture(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .line 48
    invoke-static {}, Landroid/hardware/OplusCameraStatisticsManager;->getInstance()Landroid/hardware/OplusCameraStatisticsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/OplusCameraStatisticsManager;->addCaptureInfo(Landroid/hardware/Camera$Parameters;)V

    .line 49
    return-void
.end method

.method public whitelist getComponentName()Ljava/lang/String;
    .locals 1

    .line 30
    invoke-static {}, Landroid/hardware/OplusCameraUtils;->getInstance()Landroid/hardware/OplusCameraUtils;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/OplusCameraUtils;->getComponentName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getNumPhysicalCameras(Ljava/lang/String;)I
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .line 63
    const/4 v0, 0x2

    .line 64
    .local v0, "numPhysicalCameras":I
    if-nez p1, :cond_0

    .line 65
    return v0

    .line 67
    :cond_0
    invoke-static {}, Landroid/hardware/OplusCameraUtils;->getInstance()Landroid/hardware/OplusCameraUtils;

    move-result-object v1

    const v2, 0xc0401ba

    invoke-virtual {v1, v2}, Landroid/hardware/OplusCameraUtils;->getStringResource(I)Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "packageList":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const v3, 0xc0d0003

    const/16 v4, 0x2c

    if-lez v2, :cond_2

    .line 70
    new-instance v2, Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-direct {v2, v4}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 71
    .local v2, "splitter":Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v2, v1}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 72
    invoke-interface {v2}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 73
    .local v6, "str":Ljava/lang/String;
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 74
    invoke-static {}, Landroid/hardware/OplusCameraUtils;->getInstance()Landroid/hardware/OplusCameraUtils;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/hardware/OplusCameraUtils;->getIntegerResource(I)I

    move-result v0

    .line 75
    goto :goto_1

    .line 77
    .end local v6    # "str":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 79
    .end local v2    # "splitter":Landroid/text/TextUtils$StringSplitter;
    :cond_2
    :goto_1
    invoke-static {}, Landroid/hardware/OplusCameraUtils;->getInstance()Landroid/hardware/OplusCameraUtils;

    move-result-object v2

    const v5, 0xc0401bb

    invoke-virtual {v2, v5}, Landroid/hardware/OplusCameraUtils;->getStringResource(I)Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 82
    new-instance v2, Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-direct {v2, v4}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 83
    .restart local v2    # "splitter":Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v2, v1}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 84
    invoke-interface {v2}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 85
    .local v5, "str":Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 86
    invoke-static {}, Landroid/hardware/OplusCameraUtils;->getInstance()Landroid/hardware/OplusCameraUtils;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/hardware/OplusCameraUtils;->getIntegerResource(I)I

    move-result v0

    .line 87
    goto :goto_3

    .line 89
    .end local v5    # "str":Ljava/lang/String;
    :cond_3
    goto :goto_2

    .line 91
    .end local v2    # "splitter":Landroid/text/TextUtils$StringSplitter;
    :cond_4
    :goto_3
    const/4 v2, 0x2

    if-ge v0, v2, :cond_5

    .line 92
    const/4 v0, 0x2

    .line 95
    :cond_5
    return v0
.end method

.method public whitelist interceptTakePicture()Z
    .locals 5

    .line 102
    sget-object v0, Lcom/oplus/permission/IOplusPermissionCheckInjector;->DEFAULT:Lcom/oplus/permission/IOplusPermissionCheckInjector;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Lcom/oplus/permission/IOplusPermissionCheckInjector;

    .line 103
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 104
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 103
    const-string v3, "android.permission.CAMERA_TAKEPICTURE"

    const-string v4, "takePicture"

    invoke-interface {v0, v3, v1, v2, v4}, Lcom/oplus/permission/IOplusPermissionCheckInjector;->checkPermission(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    .line 102
    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
