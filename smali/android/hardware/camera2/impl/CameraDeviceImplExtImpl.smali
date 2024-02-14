.class public Landroid/hardware/camera2/impl/CameraDeviceImplExtImpl;
.super Ljava/lang/Object;
.source "CameraDeviceImplExtImpl.java"

# interfaces
.implements Landroid/hardware/camera2/impl/ICameraDeviceImplExt;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "CameraDeviceImplExtImpl"

.field private static blacklist sInstance:Landroid/hardware/camera2/impl/CameraDeviceImplExtImpl;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static declared-synchronized blacklist getInstance()Landroid/hardware/camera2/impl/CameraDeviceImplExtImpl;
    .locals 3

    const-class v0, Landroid/hardware/camera2/impl/CameraDeviceImplExtImpl;

    monitor-enter v0

    .line 22
    :try_start_0
    sget-object v1, Landroid/hardware/camera2/impl/CameraDeviceImplExtImpl;->sInstance:Landroid/hardware/camera2/impl/CameraDeviceImplExtImpl;

    if-nez v1, :cond_0

    .line 23
    new-instance v1, Landroid/hardware/camera2/impl/CameraDeviceImplExtImpl;

    invoke-direct {v1}, Landroid/hardware/camera2/impl/CameraDeviceImplExtImpl;-><init>()V

    sput-object v1, Landroid/hardware/camera2/impl/CameraDeviceImplExtImpl;->sInstance:Landroid/hardware/camera2/impl/CameraDeviceImplExtImpl;

    .line 24
    const-string v1, "CameraDeviceImplExtImpl"

    const-string v2, "getInstance success!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    :cond_0
    sget-object v1, Landroid/hardware/camera2/impl/CameraDeviceImplExtImpl;->sInstance:Landroid/hardware/camera2/impl/CameraDeviceImplExtImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 21
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public blacklist extendParseSessionParameters(Landroid/hardware/camera2/CaptureRequest;)V
    .locals 1
    .param p1, "sessionParams"    # Landroid/hardware/camera2/CaptureRequest;

    .line 31
    invoke-static {}, Landroid/hardware/camera2/OplusCameraManager;->getInstance()Landroid/hardware/camera2/OplusCameraManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/OplusCameraManager;->parseSessionParameters(Landroid/hardware/camera2/CaptureRequest;)V

    .line 32
    return-void
.end method

.method public blacklist extendPrivilegedAppList(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 36
    invoke-static {}, Landroid/hardware/camera2/OplusCameraManager;->getInstance()Landroid/hardware/camera2/OplusCameraManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/OplusCameraManager;->isPrivilegedApp(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public blacklist extendSession()Z
    .locals 1

    .line 41
    invoke-static {}, Landroid/hardware/camera2/OplusCameraManager;->getInstance()Landroid/hardware/camera2/OplusCameraManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/OplusCameraManager;->isCameraUnitSession()Z

    move-result v0

    return v0
.end method

.method public blacklist extendaddCaptureInfo(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 1
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;
    .param p3, "resultAsCapture"    # Landroid/hardware/camera2/TotalCaptureResult;

    .line 59
    invoke-static {}, Landroid/hardware/camera2/OplusCamera2StatisticsManager;->getInstance()Landroid/hardware/camera2/OplusCamera2StatisticsManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/camera2/OplusCamera2StatisticsManager;->addCaptureInfo(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 60
    return-void
.end method

.method public blacklist extendsetCloseInfo(Ljava/lang/String;J)V
    .locals 1
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "connectTime"    # J

    .line 52
    invoke-static {}, Landroid/hardware/camera2/OplusCamera2StatisticsManager;->getInstance()Landroid/hardware/camera2/OplusCamera2StatisticsManager;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/hardware/camera2/OplusCamera2StatisticsManager;->setDisconnectTime(J)V

    .line 53
    invoke-static {}, Landroid/hardware/camera2/OplusCamera2StatisticsManager;->getInstance()Landroid/hardware/camera2/OplusCamera2StatisticsManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/camera2/OplusCamera2StatisticsManager;->addPreviewInfo(Ljava/lang/String;J)V

    .line 54
    invoke-static {}, Landroid/hardware/camera2/OplusCamera2StatisticsManager;->getInstance()Landroid/hardware/camera2/OplusCamera2StatisticsManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/camera2/OplusCamera2StatisticsManager;->addInfo(Ljava/lang/String;J)V

    .line 55
    return-void
.end method

.method public blacklist extendsetInfo(Ljava/lang/String;J)V
    .locals 3
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "connectTime"    # J

    .line 46
    invoke-static {}, Landroid/hardware/camera2/OplusCamera2StatisticsManager;->getInstance()Landroid/hardware/camera2/OplusCamera2StatisticsManager;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/hardware/camera2/OplusCamera2StatisticsManager;->setConnectTime(J)V

    .line 47
    invoke-static {}, Landroid/hardware/camera2/OplusCamera2StatisticsManager;->getInstance()Landroid/hardware/camera2/OplusCamera2StatisticsManager;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/camera2/OplusCamera2StatisticsManager;->addInfo(Ljava/lang/String;J)V

    .line 48
    return-void
.end method

.method public blacklist ormsSetSceneAction(Ljava/lang/String;I)V
    .locals 5
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "timeout"    # I

    .line 64
    invoke-static {}, Landroid/common/OplusFrameworkFactory;->getInstance()Landroid/common/OplusFrameworkFactory;

    move-result-object v0

    sget-object v1, Lcom/oplus/orms/IOplusResourceManager;->DEFAULT:Lcom/oplus/orms/IOplusResourceManager;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-class v4, Landroid/hardware/camera2/impl/CameraDeviceImplExtImpl;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/common/OplusFrameworkFactory;->getFeature(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Lcom/oplus/orms/IOplusResourceManager;

    new-instance v1, Lcom/oplus/orms/info/OrmsSaParam;

    const-string v2, ""

    invoke-direct {v1, v2, p1, p2}, Lcom/oplus/orms/info/OrmsSaParam;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Lcom/oplus/orms/IOplusResourceManager;->ormsSetSceneAction(Lcom/oplus/orms/info/OrmsSaParam;)J

    move-result-wide v0

    .line 65
    .local v0, "rc":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ormsSetSceneAction "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms rc = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CameraDeviceImplExtImpl"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return-void
.end method
