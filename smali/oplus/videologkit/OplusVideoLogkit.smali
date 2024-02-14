.class public Loplus/videologkit/OplusVideoLogkit;
.super Ljava/lang/Object;
.source "OplusVideoLogkit.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "OplusVideoDebug"

.field private static final blacklist VIDEO_LOGKITEXT_IMPL_NAME:Ljava/lang/String; = "com.oplus.videologkitext.OplusVideoLogkitExt"

.field private static final blacklist VIDEO_LOGKITEXT_JAR_PATH:Ljava/lang/String; = "/system_ext/framework/videoLogcatExt.jar"

.field private static final blacklist isMTKPlatform:Z

.field private static final blacklist isQcomPlatform:Z

.field private static volatile blacklist sInstance:Loplus/videologkit/OplusVideoLogkit;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 4

    .line 31
    const/4 v0, 0x0

    sput-object v0, Loplus/videologkit/OplusVideoLogkit;->sInstance:Loplus/videologkit/OplusVideoLogkit;

    .line 32
    nop

    .line 33
    const-string v0, "ro.boot.hardware"

    const-string v1, "unknow"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "qcom"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Loplus/videologkit/OplusVideoLogkit;->isQcomPlatform:Z

    .line 34
    nop

    .line 35
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Loplus/videologkit/OplusVideoLogkit;->isMTKPlatform:Z

    .line 34
    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-string v0, "OplusVideoDebug"

    const-string v1, "context:[OplusVideoLogkit]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    return-void
.end method

.method public static blacklist getInstance()Loplus/videologkit/OplusVideoLogkit;
    .locals 5

    .line 58
    sget-object v0, Loplus/videologkit/OplusVideoLogkit;->sInstance:Loplus/videologkit/OplusVideoLogkit;

    if-nez v0, :cond_1

    .line 60
    const-class v0, Loplus/videologkit/OplusVideoLogkit;

    monitor-enter v0

    .line 62
    :try_start_0
    sget-object v1, Loplus/videologkit/OplusVideoLogkit;->sInstance:Loplus/videologkit/OplusVideoLogkit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 65
    :try_start_1
    const-string v1, "/system_ext/framework/videoLogcatExt.jar"

    const-string v2, "com.oplus.videologkitext.OplusVideoLogkitExt"

    invoke-static {v1, v2}, Loplus/videologkit/OplusVideoLogkit;->newInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Loplus/videologkit/OplusVideoLogkit;

    sput-object v1, Loplus/videologkit/OplusVideoLogkit;->sInstance:Loplus/videologkit/OplusVideoLogkit;

    .line 66
    const-string v1, "OplusVideoDebug"

    const-string v2, "new Instance"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    goto :goto_0

    .line 67
    :catch_0
    move-exception v1

    .line 68
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "OplusVideoDebug"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Reflect exception getInstance: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    new-instance v2, Loplus/videologkit/OplusVideoLogkit;

    invoke-direct {v2}, Loplus/videologkit/OplusVideoLogkit;-><init>()V

    sput-object v2, Loplus/videologkit/OplusVideoLogkit;->sInstance:Loplus/videologkit/OplusVideoLogkit;

    .line 72
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 74
    :cond_1
    :goto_1
    sget-object v0, Loplus/videologkit/OplusVideoLogkit;->sInstance:Loplus/videologkit/OplusVideoLogkit;

    return-object v0
.end method

.method private static blacklist newInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p0, "libPath"    # Ljava/lang/String;
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 123
    new-instance v0, Ldalvik/system/PathClassLoader;

    const-class v1, Loplus/videologkit/OplusVideoLogkit;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 124
    .local v0, "classLoader":Ldalvik/system/PathClassLoader;
    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 125
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 126
    .local v3, "constructor":Ljava/lang/reflect/Constructor;
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public blacklist setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 86
    return-void
.end method

.method public blacklist setVideoLogOff()V
    .locals 2

    .line 113
    const-string v0, "OplusVideoDebug"

    const-string v1, "setVideoLogOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const-string v0, "debug.oplus.video.log.switch"

    const-string v1, "Off"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    sget-boolean v0, Loplus/videologkit/OplusVideoLogkit;->isQcomPlatform:Z

    if-eqz v0, :cond_0

    .line 116
    const-string v0, "debug.qcom.video.log.switch"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :cond_0
    sget-boolean v0, Loplus/videologkit/OplusVideoLogkit;->isMTKPlatform:Z

    if-eqz v0, :cond_1

    .line 118
    const-string v0, "debug.mtk.video.log.switch"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist setVideoLogOn()V
    .locals 2

    .line 96
    const-string v0, "OplusVideoDebug"

    const-string v1, "setVideoLogOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const-string v0, "debug.oplus.video.log.switch"

    const-string v1, "On"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    sget-boolean v0, Loplus/videologkit/OplusVideoLogkit;->isQcomPlatform:Z

    if-eqz v0, :cond_0

    .line 99
    const-string v0, "debug.qcom.video.log.switch"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :cond_0
    sget-boolean v0, Loplus/videologkit/OplusVideoLogkit;->isMTKPlatform:Z

    if-eqz v0, :cond_1

    .line 101
    const-string v0, "debug.mtk.video.log.switch"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_1
    :goto_0
    return-void
.end method
