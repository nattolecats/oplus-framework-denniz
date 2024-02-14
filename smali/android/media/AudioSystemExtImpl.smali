.class public Landroid/media/AudioSystemExtImpl;
.super Ljava/lang/Object;
.source "AudioSystemExtImpl.java"

# interfaces
.implements Landroid/media/IAudioSystemExt;


# static fields
.field public static blacklist sInstance:Landroid/media/AudioSystemExtImpl;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Landroid/media/AudioSystemExtImpl;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .line 43
    const-class v0, Landroid/media/AudioSystemExtImpl;

    monitor-enter v0

    .line 44
    :try_start_0
    sget-object v1, Landroid/media/AudioSystemExtImpl;->sInstance:Landroid/media/AudioSystemExtImpl;

    if-nez v1, :cond_0

    .line 45
    new-instance v1, Landroid/media/AudioSystemExtImpl;

    invoke-direct {v1}, Landroid/media/AudioSystemExtImpl;-><init>()V

    sput-object v1, Landroid/media/AudioSystemExtImpl;->sInstance:Landroid/media/AudioSystemExtImpl;

    .line 47
    :cond_0
    sget-object v1, Landroid/media/AudioSystemExtImpl;->sInstance:Landroid/media/AudioSystemExtImpl;

    monitor-exit v0

    return-object v1

    .line 48
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public blacklist getDefaultVolume(I)V
    .locals 3
    .param p1, "streamType"    # I

    .line 28
    const/4 v0, 0x3

    const/4 v1, -0x1

    if-ne p1, v0, :cond_0

    .line 29
    const-string v2, "ro.config.media_vol_default"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 30
    .local v2, "defaultMusicVolume":I
    if-eq v2, v1, :cond_1

    .line 31
    sget-object v1, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    aput v2, v1, v0

    goto :goto_0

    .line 33
    .end local v2    # "defaultMusicVolume":I
    :cond_0
    if-nez p1, :cond_1

    .line 34
    const-string v0, "ro.config.vc_call_vol_default"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 35
    .local v0, "defaultCallVolume":I
    if-eq v0, v1, :cond_2

    .line 36
    sget-object v1, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    const/4 v2, 0x0

    aput v0, v1, v2

    goto :goto_1

    .line 33
    .end local v0    # "defaultCallVolume":I
    :cond_1
    :goto_0
    nop

    .line 39
    :cond_2
    :goto_1
    return-void
.end method
