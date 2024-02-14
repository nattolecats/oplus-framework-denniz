.class public Landroid/debug/CameraLogManager;
.super Landroid/debug/IDebugLogManager;
.source "CameraLogManager.java"


# static fields
.field private static final blacklist CAMERA_LAO_PROP:Ljava/lang/String; = "persist.sys.camera.lao.enable"

.field private static final blacklist TAG:Ljava/lang/String;

.field private static volatile blacklist sInstance:Landroid/debug/CameraLogManager;


# instance fields
.field private blacklist mContext:Landroid/content/Context;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/debug/CameraLogManager;->TAG_BASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Landroid/debug/CameraLogManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/debug/CameraLogManager;->TAG:Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    sput-object v0, Landroid/debug/CameraLogManager;->sInstance:Landroid/debug/CameraLogManager;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 27
    invoke-direct {p0}, Landroid/debug/IDebugLogManager;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/debug/CameraLogManager;->mContext:Landroid/content/Context;

    .line 28
    iput-object p1, p0, Landroid/debug/CameraLogManager;->mContext:Landroid/content/Context;

    .line 29
    return-void
.end method

.method public static blacklist getInstance(Landroid/content/Context;)Landroid/debug/CameraLogManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 32
    sget-object v0, Landroid/debug/CameraLogManager;->sInstance:Landroid/debug/CameraLogManager;

    if-nez v0, :cond_1

    .line 33
    const-class v0, Landroid/debug/CameraLogManager;

    monitor-enter v0

    .line 34
    :try_start_0
    sget-object v1, Landroid/debug/CameraLogManager;->sInstance:Landroid/debug/CameraLogManager;

    if-nez v1, :cond_0

    .line 35
    new-instance v1, Landroid/debug/CameraLogManager;

    invoke-direct {v1, p0}, Landroid/debug/CameraLogManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/debug/CameraLogManager;->sInstance:Landroid/debug/CameraLogManager;

    .line 37
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 40
    :cond_1
    :goto_0
    sget-object v0, Landroid/debug/CameraLogManager;->sInstance:Landroid/debug/CameraLogManager;

    return-object v0
.end method


# virtual methods
.method public blacklist setLogDump()V
    .locals 0

    .line 56
    return-void
.end method

.method public blacklist setLogOff()V
    .locals 2

    .line 50
    sget-object v0, Landroid/debug/CameraLogManager;->TAG:Ljava/lang/String;

    const-string v1, "setLogOff"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const-string v0, "persist.sys.camera.lao.enable"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public blacklist setLogOn(JLjava/lang/String;)V
    .locals 3
    .param p1, "maxSize"    # J
    .param p3, "param"    # Ljava/lang/String;

    .line 44
    sget-object v0, Landroid/debug/CameraLogManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLogOn, maxSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", param: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const-string v0, "persist.sys.camera.lao.enable"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void
.end method
