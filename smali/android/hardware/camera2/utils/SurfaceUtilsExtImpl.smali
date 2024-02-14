.class public Landroid/hardware/camera2/utils/SurfaceUtilsExtImpl;
.super Ljava/lang/Object;
.source "SurfaceUtilsExtImpl.java"

# interfaces
.implements Landroid/hardware/camera2/utils/ISurfaceUtilsExt;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SurfaceUtilsExtImpl"

.field private static blacklist sInstance:Landroid/hardware/camera2/utils/SurfaceUtilsExtImpl;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public static declared-synchronized blacklist getInstance()Landroid/hardware/camera2/utils/SurfaceUtilsExtImpl;
    .locals 3

    const-class v0, Landroid/hardware/camera2/utils/SurfaceUtilsExtImpl;

    monitor-enter v0

    .line 15
    :try_start_0
    sget-object v1, Landroid/hardware/camera2/utils/SurfaceUtilsExtImpl;->sInstance:Landroid/hardware/camera2/utils/SurfaceUtilsExtImpl;

    if-nez v1, :cond_0

    .line 16
    new-instance v1, Landroid/hardware/camera2/utils/SurfaceUtilsExtImpl;

    invoke-direct {v1}, Landroid/hardware/camera2/utils/SurfaceUtilsExtImpl;-><init>()V

    sput-object v1, Landroid/hardware/camera2/utils/SurfaceUtilsExtImpl;->sInstance:Landroid/hardware/camera2/utils/SurfaceUtilsExtImpl;

    .line 17
    const-string v1, "SurfaceUtilsExtImpl"

    const-string v2, "getInstance success!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    :cond_0
    sget-object v1, Landroid/hardware/camera2/utils/SurfaceUtilsExtImpl;->sInstance:Landroid/hardware/camera2/utils/SurfaceUtilsExtImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 14
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public blacklist extendSession()Z
    .locals 1

    .line 24
    invoke-static {}, Landroid/hardware/camera2/OplusCameraManager;->getInstance()Landroid/hardware/camera2/OplusCameraManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/OplusCameraManager;->isCameraUnitSession()Z

    move-result v0

    return v0
.end method

.method public blacklist isPrivilegedApp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 29
    invoke-static {}, Landroid/hardware/camera2/OplusCameraManager;->getInstance()Landroid/hardware/camera2/OplusCameraManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/OplusCameraManager;->isPrivilegedApp(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
