.class public Landroid/hardware/camera2/CameraManagerExtImpl;
.super Ljava/lang/Object;
.source "CameraManagerExtImpl.java"

# interfaces
.implements Landroid/hardware/camera2/ICameraManagerExt;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "CameraManagerExtImpl"

.field private static blacklist sInstance:Landroid/hardware/camera2/CameraManagerExtImpl;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static declared-synchronized blacklist getInstance()Landroid/hardware/camera2/CameraManagerExtImpl;
    .locals 3

    const-class v0, Landroid/hardware/camera2/CameraManagerExtImpl;

    monitor-enter v0

    .line 27
    :try_start_0
    sget-object v1, Landroid/hardware/camera2/CameraManagerExtImpl;->sInstance:Landroid/hardware/camera2/CameraManagerExtImpl;

    if-nez v1, :cond_0

    .line 28
    new-instance v1, Landroid/hardware/camera2/CameraManagerExtImpl;

    invoke-direct {v1}, Landroid/hardware/camera2/CameraManagerExtImpl;-><init>()V

    sput-object v1, Landroid/hardware/camera2/CameraManagerExtImpl;->sInstance:Landroid/hardware/camera2/CameraManagerExtImpl;

    .line 29
    const-string v1, "CameraManagerExtImpl"

    const-string v2, "getInstance success!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :cond_0
    sget-object v1, Landroid/hardware/camera2/CameraManagerExtImpl;->sInstance:Landroid/hardware/camera2/CameraManagerExtImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 26
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public whitelist extendCameraManager(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "packagename is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManagerExtImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-static {}, Landroid/hardware/camera2/OplusCameraManager;->getInstance()Landroid/hardware/camera2/OplusCameraManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/OplusCameraManager;->saveOpPackageName(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public whitelist extendGetComponentName()Ljava/lang/String;
    .locals 1

    .line 42
    invoke-static {}, Landroid/hardware/OplusCameraUtils;->getInstance()Landroid/hardware/OplusCameraUtils;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/OplusCameraUtils;->getComponentName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist extendSetPackageName()V
    .locals 1

    .line 47
    invoke-static {}, Landroid/hardware/camera2/OplusCameraManager;->getInstance()Landroid/hardware/camera2/OplusCameraManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/OplusCameraManager;->setPackageName()V

    .line 48
    return-void
.end method

.method public whitelist getNumPhysicalCameras(Ljava/lang/String;)I
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .line 52
    const/4 v0, -0x1

    .line 53
    .local v0, "numPhysicalCameras":I
    if-nez p1, :cond_0

    .line 54
    return v0

    .line 56
    :cond_0
    invoke-static {}, Landroid/hardware/OplusCameraUtils;->getInstance()Landroid/hardware/OplusCameraUtils;

    move-result-object v1

    const v2, 0xc0401ba

    invoke-virtual {v1, v2}, Landroid/hardware/OplusCameraUtils;->getStringResource(I)Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "packageList":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const v3, 0xc0d0003

    const/16 v4, 0x2c

    if-lez v2, :cond_2

    .line 59
    new-instance v2, Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-direct {v2, v4}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 60
    .local v2, "splitter":Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v2, v1}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 61
    invoke-interface {v2}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 62
    .local v6, "str":Ljava/lang/String;
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 63
    invoke-static {}, Landroid/hardware/OplusCameraUtils;->getInstance()Landroid/hardware/OplusCameraUtils;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/hardware/OplusCameraUtils;->getIntegerResource(I)I

    move-result v0

    .line 64
    goto :goto_1

    .line 66
    .end local v6    # "str":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 68
    .end local v2    # "splitter":Landroid/text/TextUtils$StringSplitter;
    :cond_2
    :goto_1
    invoke-static {}, Landroid/hardware/OplusCameraUtils;->getInstance()Landroid/hardware/OplusCameraUtils;

    move-result-object v2

    const v5, 0xc0401bb

    invoke-virtual {v2, v5}, Landroid/hardware/OplusCameraUtils;->getStringResource(I)Ljava/lang/String;

    move-result-object v1

    .line 70
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 71
    new-instance v2, Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-direct {v2, v4}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 72
    .restart local v2    # "splitter":Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v2, v1}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 73
    invoke-interface {v2}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 74
    .local v5, "str":Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 75
    invoke-static {}, Landroid/hardware/OplusCameraUtils;->getInstance()Landroid/hardware/OplusCameraUtils;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/hardware/OplusCameraUtils;->getIntegerResource(I)I

    move-result v0

    .line 76
    goto :goto_3

    .line 78
    .end local v5    # "str":Ljava/lang/String;
    :cond_3
    goto :goto_2

    .line 81
    .end local v2    # "splitter":Landroid/text/TextUtils$StringSplitter;
    :cond_4
    :goto_3
    return v0
.end method

.method public whitelist interceptOpenCameraForUid()Z
    .locals 6

    .line 88
    sget-object v0, Lcom/oplus/permission/IOplusPermissionCheckInjector;->DEFAULT:Lcom/oplus/permission/IOplusPermissionCheckInjector;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Lcom/oplus/permission/IOplusPermissionCheckInjector;

    .line 89
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 90
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 89
    const-string v4, "android.permission.CAMERA"

    const-string v5, "openCamera"

    invoke-interface {v0, v4, v2, v3, v5}, Lcom/oplus/permission/IOplusPermissionCheckInjector;->checkPermission(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    const/4 v0, 0x1

    return v0

    .line 94
    :cond_0
    return v1
.end method

.method public whitelist ormsSetSceneAction(Ljava/lang/String;I)V
    .locals 5
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "timeout"    # I

    .line 99
    invoke-static {}, Landroid/common/OplusFrameworkFactory;->getInstance()Landroid/common/OplusFrameworkFactory;

    move-result-object v0

    sget-object v1, Lcom/oplus/orms/IOplusResourceManager;->DEFAULT:Lcom/oplus/orms/IOplusResourceManager;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-class v4, Landroid/hardware/camera2/CameraManagerExtImpl;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/common/OplusFrameworkFactory;->getFeature(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Lcom/oplus/orms/IOplusResourceManager;

    new-instance v1, Lcom/oplus/orms/info/OrmsSaParam;

    const-string v2, ""

    invoke-direct {v1, v2, p1, p2}, Lcom/oplus/orms/info/OrmsSaParam;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Lcom/oplus/orms/IOplusResourceManager;->ormsSetSceneAction(Lcom/oplus/orms/info/OrmsSaParam;)J

    move-result-wide v0

    .line 100
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

    const-string v3, "CameraManagerExtImpl"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return-void
.end method
