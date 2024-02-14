.class public Landroid/debug/AudioLogManager;
.super Landroid/debug/IDebugLogManager;
.source "AudioLogManager.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;

.field private static volatile blacklist sInstance:Landroid/debug/AudioLogManager;


# instance fields
.field private blacklist mAudioManager:Landroid/media/AudioManager;

.field private blacklist mContext:Landroid/content/Context;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/debug/AudioLogManager;->TAG_BASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Landroid/debug/AudioLogManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/debug/AudioLogManager;->TAG:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    sput-object v0, Landroid/debug/AudioLogManager;->sInstance:Landroid/debug/AudioLogManager;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 29
    invoke-direct {p0}, Landroid/debug/IDebugLogManager;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/debug/AudioLogManager;->mAudioManager:Landroid/media/AudioManager;

    .line 30
    iput-object p1, p0, Landroid/debug/AudioLogManager;->mContext:Landroid/content/Context;

    .line 31
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/debug/AudioLogManager;->mAudioManager:Landroid/media/AudioManager;

    .line 32
    return-void
.end method

.method public static blacklist getInstance(Landroid/content/Context;)Landroid/debug/AudioLogManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 35
    sget-object v0, Landroid/debug/AudioLogManager;->sInstance:Landroid/debug/AudioLogManager;

    if-nez v0, :cond_1

    .line 36
    const-class v0, Landroid/debug/AudioLogManager;

    monitor-enter v0

    .line 37
    :try_start_0
    sget-object v1, Landroid/debug/AudioLogManager;->sInstance:Landroid/debug/AudioLogManager;

    if-nez v1, :cond_0

    .line 38
    new-instance v1, Landroid/debug/AudioLogManager;

    invoke-direct {v1, p0}, Landroid/debug/AudioLogManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/debug/AudioLogManager;->sInstance:Landroid/debug/AudioLogManager;

    .line 40
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 42
    :cond_1
    :goto_0
    sget-object v0, Landroid/debug/AudioLogManager;->sInstance:Landroid/debug/AudioLogManager;

    return-object v0
.end method


# virtual methods
.method public blacklist setLogDump()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 60
    sget-object v0, Landroid/debug/AudioLogManager;->TAG:Ljava/lang/String;

    const-string v1, "setLogDump, audio setLogOff begin."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v0, p0, Landroid/debug/AudioLogManager;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0}, Landroid/media/AudioManager;->getWrapper()Landroid/media/IAudioManagerWrapper;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioManagerWrapper;->getExtImpl()Landroid/media/IAudioManagerExt;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioManagerExt;->setLogDump()V

    .line 64
    :cond_0
    invoke-virtual {p0}, Landroid/debug/AudioLogManager;->setLogOff()V

    .line 65
    return-void
.end method

.method public blacklist setLogOff()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    sget-object v0, Landroid/debug/AudioLogManager;->TAG:Ljava/lang/String;

    const-string v1, "setLogOff: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v0, p0, Landroid/debug/AudioLogManager;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {v0}, Landroid/media/AudioManager;->getWrapper()Landroid/media/IAudioManagerWrapper;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioManagerWrapper;->getExtImpl()Landroid/media/IAudioManagerExt;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioManagerExt;->setLogOff()V

    .line 57
    :cond_0
    return-void
.end method

.method public blacklist setLogOn(JLjava/lang/String;)V
    .locals 3
    .param p1, "maxSize"    # J
    .param p3, "param"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    sget-object v0, Landroid/debug/AudioLogManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLogOn: maxSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", param = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v0, p0, Landroid/debug/AudioLogManager;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0}, Landroid/media/AudioManager;->getWrapper()Landroid/media/IAudioManagerWrapper;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioManagerWrapper;->getExtImpl()Landroid/media/IAudioManagerExt;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioManagerExt;->setLogOn()V

    .line 50
    :cond_0
    return-void
.end method
