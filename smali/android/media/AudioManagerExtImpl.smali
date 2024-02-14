.class public Landroid/media/AudioManagerExtImpl;
.super Ljava/lang/Object;
.source "AudioManagerExtImpl.java"

# interfaces
.implements Landroid/media/IAudioManagerExt;


# static fields
.field private static final blacklist ADJUST_LOWER:I = -0x1

.field private static final blacklist ADJUST_MUTE:I = -0x64

.field private static final blacklist ADJUST_RAISE:I = 0x1

.field private static final blacklist ADJUST_SAME:I = 0x0

.field private static final blacklist ADJUST_UNMUTE:I = 0x64

.field private static final blacklist AJSP_INTERFACE_NAME:Ljava/lang/String; = "adjustStreamVolumePermission"

.field private static final blacklist CONTROL_MODULE_NAME:Ljava/lang/String; = "control"

.field private static final blacklist CONTROL_PACKAGE_NAME:Ljava/lang/String; = "adjustStreamVolume"

.field private static final blacklist IN_CALL_MUSIC_SESSION_KEY:Ljava/lang/String; = "incall_music_sessionId"

.field private static final blacklist LimitGetStreamVolumePackageName:[Ljava/lang/String;

.field private static final blacklist MIN_CALL_INTERVAL_TIME:I = 0x14

.field private static final blacklist RINGER_MODE_SILENT:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "AudioManagerExtImpl"

.field private static final blacklist VDC_SERVICE_PACKAGE_NAME:Ljava/lang/String; = "com.oplus.vdc"

.field public static blacklist mDebugLog:Z = false

.field private static final blacklist mDebugkeyValuePairs:Ljava/lang/String; = "OPLUS_AUDIO_SET_DEBUG_LOG"

.field private static final blacklist mDebugkeyValuePairsOff:Ljava/lang/String; = "off"

.field private static final blacklist mDebugkeyValuePairsOn:Ljava/lang/String; = "on"

.field private static final blacklist mDumpkeyAudioDumpAAudio:Ljava/lang/String; = "vendor.aaudio.pcm"

.field private static final blacklist mDumpkeyAudioDumpDrc:Ljava/lang/String; = "vendor.af.mixer.drc.pcm"

.field private static final blacklist mDumpkeyAudioDumpEffect:Ljava/lang/String; = "vendor.af.effect.pcm"

.field private static final blacklist mDumpkeyAudioDumpMixer:Ljava/lang/String; = "vendor.af.mixer.pcm"

.field private static final blacklist mDumpkeyAudioDumpMixerEnd:Ljava/lang/String; = "vendor.af.mixer.end.pcm"

.field private static final blacklist mDumpkeyAudioDumpOffload:Ljava/lang/String; = "vendor.af.offload.write.raw"

.field private static final blacklist mDumpkeyAudioDumpRecord:Ljava/lang/String; = "vendor.af.record.dump.pcm"

.field private static final blacklist mDumpkeyAudioDumpResampler:Ljava/lang/String; = "vendor.af.resampler.pcm"

.field private static final blacklist mDumpkeyAudioDumpTrack:Ljava/lang/String; = "vendor.af.track.pcm"

.field private static final blacklist mDumpkeyValuePairs:Ljava/lang/String; = "pcm_dump"

.field private static final blacklist mDumpkeyValuePairsMtkOn:Ljava/lang/String; = "1"

.field private static final blacklist mDumpkeyValuePairsOff:Ljava/lang/String; = "0"

.field private static final blacklist mDumpkeyValuePairsQcomOn:Ljava/lang/String; = "2047"

.field private static blacklist sInstance:Landroid/media/AudioManagerExtImpl;

.field private static blacklist sService:Landroid/media/IAudioService;


# instance fields
.field private final blacklist mGetStreamVolumeLock:Ljava/lang/Object;

.field private blacklist mPrePackageName:Ljava/lang/String;

.field private blacklist mPreTimeMills:J

.field private blacklist mStreamVolumeIndex:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 12

    .line 53
    const/4 v0, 0x0

    sput-boolean v0, Landroid/media/AudioManagerExtImpl;->mDebugLog:Z

    .line 64
    const-string v1, "com.tencent.mobileqq"

    const-string v2, "com.tencent.mtt"

    const-string v3, "com.tencent.mm"

    const-string v4, "com.o.AtlasTest"

    const-string v5, "com.google.android.youtube"

    const-string v6, "com.facebook.katana"

    const-string v7, "com.google.android.apps.youtube.music"

    const-string v8, "com.google.android.googlequicksearchbox"

    const-string v9, "com.instagram.android"

    const-string v10, "com.truecaller"

    const-string v11, "android"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/AudioManagerExtImpl;->LimitGetStreamVolumePackageName:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManagerExtImpl;->mGetStreamVolumeLock:Ljava/lang/Object;

    .line 111
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/AudioManagerExtImpl;->mStreamVolumeIndex:I

    .line 112
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/AudioManagerExtImpl;->mPreTimeMills:J

    .line 113
    const-string v0, ""

    iput-object v0, p0, Landroid/media/AudioManagerExtImpl;->mPrePackageName:Ljava/lang/String;

    .line 117
    return-void
.end method

.method private blacklist canSetStreamVolumeFromAudioServer()Z
    .locals 2

    .line 314
    invoke-static {}, Landroid/media/AudioManagerExtImpl;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 316
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->setStreamVolumePermission()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 317
    :catch_0
    move-exception v1

    .line 318
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 320
    .end local v1    # "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Landroid/media/AudioManagerExtImpl;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .line 120
    const-class v0, Landroid/media/AudioManagerExtImpl;

    monitor-enter v0

    .line 121
    :try_start_0
    sget-object v1, Landroid/media/AudioManagerExtImpl;->sInstance:Landroid/media/AudioManagerExtImpl;

    if-nez v1, :cond_0

    .line 122
    new-instance v1, Landroid/media/AudioManagerExtImpl;

    invoke-direct {v1}, Landroid/media/AudioManagerExtImpl;-><init>()V

    sput-object v1, Landroid/media/AudioManagerExtImpl;->sInstance:Landroid/media/AudioManagerExtImpl;

    .line 124
    :cond_0
    sget-object v1, Landroid/media/AudioManagerExtImpl;->sInstance:Landroid/media/AudioManagerExtImpl;

    monitor-exit v0

    return-object v1

    .line 125
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static blacklist getService()Landroid/media/IAudioService;
    .locals 2

    .line 130
    sget-object v0, Landroid/media/AudioManagerExtImpl;->sService:Landroid/media/IAudioService;

    if-eqz v0, :cond_0

    .line 131
    return-object v0

    .line 133
    :cond_0
    const-string v0, "audio"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 134
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1

    sput-object v1, Landroid/media/AudioManagerExtImpl;->sService:Landroid/media/IAudioService;

    .line 135
    return-object v1
.end method

.method private blacklist getStreamVolumeInDaemon()I
    .locals 2

    .line 489
    iget-object v0, p0, Landroid/media/AudioManagerExtImpl;->mGetStreamVolumeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 490
    :try_start_0
    iget v1, p0, Landroid/media/AudioManagerExtImpl;->mStreamVolumeIndex:I

    monitor-exit v0

    return v1

    .line 491
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist isCustomApiParameters(Ljava/lang/String;)Z
    .locals 1
    .param p1, "keyValuePairs"    # Ljava/lang/String;

    .line 462
    const-string v0, "record_forbid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 463
    const-string v0, "oplus_power_analysis_command"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 466
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 464
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist isGetStreamVolumeFrequently(Ljava/lang/String;)Z
    .locals 6
    .param p1, "currentPackageName"    # Ljava/lang/String;

    .line 478
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 479
    .local v0, "currentTimeMills":J
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/media/AudioManagerExtImpl;->mPrePackageName:Ljava/lang/String;

    .line 480
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Landroid/media/AudioManagerExtImpl;->mPreTimeMills:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x14

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 482
    const/4 v2, 0x1

    return v2

    .line 484
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private blacklist oplusCheckApsAndGetStreamVolume(I)I
    .locals 3
    .param p1, "streamType"    # I

    .line 238
    sget-object v0, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    aget v0, v0, p1

    .line 240
    .local v0, "index":I
    :try_start_0
    invoke-static {}, Landroid/media/AudioSystem;->checkAudioPolicyService()I

    move-result v1

    if-nez v1, :cond_0

    .line 241
    invoke-static {}, Landroid/media/AudioSystem;->checkAudioFlinger()I

    move-result v1

    if-nez v1, :cond_0

    .line 242
    invoke-static {}, Landroid/media/AudioManagerExtImpl;->getService()Landroid/media/IAudioService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/media/IAudioService;->getStreamVolume(I)I

    move-result v1

    move v0, v1

    goto :goto_0

    .line 244
    :cond_0
    const-string v1, "AudioManagerExtImpl"

    const-string v2, "check_AudioPolicyService = false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :goto_0
    nop

    .line 249
    return v0

    .line 246
    :catch_0
    move-exception v1

    .line 247
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private blacklist setStreamVolumeInDaemon(ILjava/lang/String;)V
    .locals 3
    .param p1, "volume"    # I
    .param p2, "currentPackageName"    # Ljava/lang/String;

    .line 470
    iget-object v0, p0, Landroid/media/AudioManagerExtImpl;->mGetStreamVolumeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 471
    :try_start_0
    iput p1, p0, Landroid/media/AudioManagerExtImpl;->mStreamVolumeIndex:I

    .line 472
    iput-object p2, p0, Landroid/media/AudioManagerExtImpl;->mPrePackageName:Ljava/lang/String;

    .line 473
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/media/AudioManagerExtImpl;->mPreTimeMills:J

    .line 474
    monitor-exit v0

    .line 475
    return-void

    .line 474
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public blacklist adjustStreamVolumePermission(Landroid/content/Context;II)Z
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "streamType"    # I
    .param p3, "direction"    # I

    .line 207
    invoke-static {}, Landroid/media/AudioManagerExtImpl;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 209
    .local v0, "service":Landroid/media/IAudioService;
    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ne p2, v2, :cond_4

    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioManagerExtImpl;->canSetStreamVolumeFromAudioServer()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_0

    .line 213
    :cond_0
    invoke-static {}, Lcom/oplus/atlas/OplusAtlasManager;->getInstance()Lcom/oplus/atlas/OplusAtlasManager;

    move-result-object v3

    const-string v4, "control"

    const-string v5, "adjustStreamVolume"

    invoke-virtual {v3, v4, v5}, Lcom/oplus/atlas/OplusAtlasManager;->getAttributeByAppName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    .local v3, "result":Ljava/lang/String;
    const-string v4, "AudioManagerExtImpl"

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    :try_start_1
    const-string v6, "true"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {}, Lcom/oplus/atlas/OplusAtlasManager;->getInstance()Lcom/oplus/atlas/OplusAtlasManager;

    move-result-object v6

    const-string v7, "adjustStreamVolumePermission"

    .line 215
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/oplus/atlas/OplusAtlasManager;->interfaceCallPermissionCheck(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " do not have adjustStreamVolume permission."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    return v5

    .line 220
    :cond_1
    const-string v6, "ro.config.disable_mute"

    invoke-static {v6, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 221
    .local v6, "disableMute":Z
    if-eqz v6, :cond_3

    .line 222
    if-ne p2, v2, :cond_3

    const/16 v2, -0x64

    if-eq p3, v2, :cond_2

    const/16 v2, 0x64

    if-ne p3, v2, :cond_3

    .line 223
    :cond_2
    invoke-interface {v0, v5}, Landroid/media/IAudioService;->isMusicActive(Z)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/oplus/atlas/OplusAtlasManager;->getInstance()Lcom/oplus/atlas/OplusAtlasManager;

    move-result-object v2

    const-string v7, "adjustStreamVolumeMute"

    .line 224
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lcom/oplus/atlas/OplusAtlasManager;->interfaceCallPermissionCheck(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can not set STREAM_MUSIC mute."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 226
    return v5

    .line 232
    .end local v3    # "result":Ljava/lang/String;
    .end local v6    # "disableMute":Z
    :cond_3
    nop

    .line 233
    return v1

    .line 230
    :catch_0
    move-exception v1

    .line 231
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 210
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_4
    :goto_0
    return v1
.end method

.method public blacklist getDebugLog()Z
    .locals 2

    .line 141
    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/media/AudioManagerExtImpl;->mDebugLog:Z

    .line 142
    return v0
.end method

.method public blacklist getParametersForCommonExtends(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "keys"    # Ljava/lang/String;

    .line 453
    invoke-static {}, Landroid/media/AudioManagerExtImpl;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 455
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 456
    :catch_0
    move-exception v1

    .line 457
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist oplusGetStreamMaxVolume(Landroid/content/Context;I)I
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "streamType"    # I

    .line 276
    invoke-static {}, Landroid/media/AudioManagerExtImpl;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 278
    .local v0, "service":Landroid/media/IAudioService;
    const/4 v1, 0x3

    if-ne p2, v1, :cond_1

    .line 279
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/16 v2, 0x2710

    if-le v1, v2, :cond_1

    .line 280
    invoke-static {}, Lcom/oplus/atlas/OplusAtlasManager;->getInstance()Lcom/oplus/atlas/OplusAtlasManager;

    move-result-object v1

    const-string v2, "oplus-getStreamMaxVolume"

    .line 281
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/oplus/atlas/OplusAtlasManager;->getAttributeByAppName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 282
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 283
    const-string v2, "AudioManagerExtImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getStreamMaxVolume, value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " streamType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 284
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 283
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 286
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 287
    .local v2, "maxVolume":I
    return v2

    .line 288
    .end local v2    # "maxVolume":I
    :catch_0
    move-exception v2

    .line 289
    .local v2, "e":Ljava/lang/NumberFormatException;
    :try_start_2
    invoke-interface {v0, p2}, Landroid/media/IAudioService;->getStreamMaxVolume(I)I

    move-result v3

    return v3

    .line 292
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    invoke-interface {v0, p2}, Landroid/media/IAudioService;->getStreamMaxVolume(I)I

    move-result v2

    return v2

    .line 295
    .end local v1    # "value":Ljava/lang/String;
    :cond_1
    invoke-interface {v0, p2}, Landroid/media/IAudioService;->getStreamMaxVolume(I)I

    move-result v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    return v1

    .line 297
    :catch_1
    move-exception v1

    .line 298
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist oplusGetStreamVolume(Landroid/content/Context;I)I
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "streamType"    # I

    .line 253
    const/4 v0, -0x1

    .line 254
    .local v0, "index":I
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 255
    .local v1, "packageName":Ljava/lang/String;
    sget-object v2, Landroid/media/AudioManagerExtImpl;->LimitGetStreamVolumePackageName:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "AudioManagerExtImpl"

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    if-ne p2, v2, :cond_1

    .line 257
    invoke-direct {p0, v1}, Landroid/media/AudioManagerExtImpl;->isGetStreamVolumeFrequently(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 258
    invoke-direct {p0}, Landroid/media/AudioManagerExtImpl;->getStreamVolumeInDaemon()I

    move-result v0

    .line 259
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getStreamVolume too fast, volume index="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", package="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    return v0

    .line 262
    :cond_0
    invoke-direct {p0, p2}, Landroid/media/AudioManagerExtImpl;->oplusCheckApsAndGetStreamVolume(I)I

    move-result v0

    .line 263
    invoke-direct {p0, v0, v1}, Landroid/media/AudioManagerExtImpl;->setStreamVolumeInDaemon(ILjava/lang/String;)V

    .line 264
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getStreamVolume normal, volume index="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    return v0

    .line 268
    :cond_1
    invoke-direct {p0, p2}, Landroid/media/AudioManagerExtImpl;->oplusCheckApsAndGetStreamVolume(I)I

    move-result v0

    .line 269
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getStreamVolume packageName="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", index="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", streamType="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    return v0
.end method

.method public blacklist setBluetoothScoOnPermission()Z
    .locals 1

    .line 350
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist setCustomApiParametersPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keyValuePairs"    # Ljava/lang/String;

    .line 389
    invoke-static {}, Lcom/oplus/atlas/OplusAtlasManager;->getInstance()Lcom/oplus/atlas/OplusAtlasManager;

    move-result-object v0

    .line 390
    const-string v1, "control"

    const-string v2, "customApiParamSet"

    invoke-virtual {v0, v1, v2}, Lcom/oplus/atlas/OplusAtlasManager;->getAttributeByAppName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 393
    .local v0, "state":Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 395
    :cond_0
    invoke-static {}, Lcom/oplus/atlas/OplusAtlasManager;->getInstance()Lcom/oplus/atlas/OplusAtlasManager;

    move-result-object v3

    .line 396
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "customApi-setParameters"

    invoke-virtual {v3, v5, v4}, Lcom/oplus/atlas/OplusAtlasManager;->getAttributeByAppName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 397
    .local v3, "value":Ljava/lang/String;
    if-eqz v3, :cond_2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 398
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setParameters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " PackageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 399
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 398
    const-string v2, "AudioManagerExtImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    const/4 v1, 0x1

    return v1

    .line 397
    :cond_2
    :goto_0
    return v1

    .line 393
    .end local v3    # "value":Ljava/lang/String;
    :cond_3
    :goto_1
    return v1
.end method

.method public blacklist setLogDump()V
    .locals 2

    .line 168
    const-string v0, "AudioManagerExtImpl"

    const-string v1, "setDebugLogDump +++"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return-void
.end method

.method public blacklist setLogOff()V
    .locals 2

    .line 157
    const-string v0, "AudioManagerExtImpl"

    const-string v1, "setDebugLogOff +++"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const-string v0, "OPLUS_AUDIO_SET_DEBUG_LOG=off"

    invoke-virtual {p0, v0}, Landroid/media/AudioManagerExtImpl;->setParametersForCommonExtends(Ljava/lang/String;)Z

    .line 160
    invoke-static {}, Landroid/os/Build;->isQcomPlatform()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {p0, v1}, Landroid/media/AudioManagerExtImpl;->setQcomDump(Z)V

    goto :goto_0

    .line 162
    :cond_0
    invoke-static {}, Landroid/os/Build;->isMtkPlatform()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    invoke-virtual {p0, v1}, Landroid/media/AudioManagerExtImpl;->setMtkDump(Z)V

    .line 165
    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist setLogOn()V
    .locals 2

    .line 146
    const-string v0, "AudioManagerExtImpl"

    const-string v1, "setDebugLogOn +++"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const-string v0, "OPLUS_AUDIO_SET_DEBUG_LOG=on"

    invoke-virtual {p0, v0}, Landroid/media/AudioManagerExtImpl;->setParametersForCommonExtends(Ljava/lang/String;)Z

    .line 149
    invoke-static {}, Landroid/os/Build;->isQcomPlatform()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {p0, v1}, Landroid/media/AudioManagerExtImpl;->setQcomDump(Z)V

    goto :goto_0

    .line 151
    :cond_0
    invoke-static {}, Landroid/os/Build;->isMtkPlatform()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    invoke-virtual {p0, v1}, Landroid/media/AudioManagerExtImpl;->setMtkDump(Z)V

    .line 154
    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist setMicrophoneMutePermission(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 354
    invoke-static {}, Lcom/oplus/atlas/OplusAtlasManager;->getInstance()Lcom/oplus/atlas/OplusAtlasManager;

    move-result-object v0

    .line 355
    const-string v1, "control"

    const-string v2, "setMicrophoneMute"

    invoke-virtual {v0, v1, v2}, Lcom/oplus/atlas/OplusAtlasManager;->getAttributeByAppName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 356
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 357
    invoke-static {}, Lcom/oplus/atlas/OplusAtlasManager;->getInstance()Lcom/oplus/atlas/OplusAtlasManager;

    move-result-object v1

    .line 358
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "setMicrophoneMutePermission"

    invoke-virtual {v1, v3, v2}, Lcom/oplus/atlas/OplusAtlasManager;->interfaceCallPermissionCheck(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 359
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " do not setMicrophoneMute in call"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AudioManagerExtImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    const/4 v1, 0x0

    return v1

    .line 363
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public blacklist setMtkDump(Z)V
    .locals 1
    .param p1, "on"    # Z

    .line 172
    if-eqz p1, :cond_0

    .line 173
    const-string v0, "vendor.af.mixer.pcm=1"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 174
    const-string v0, "vendor.af.track.pcm=1"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 175
    const-string v0, "vendor.af.offload.write.raw=1"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 176
    const-string v0, "vendor.af.resampler.pcm=1"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 177
    const-string v0, "vendor.af.mixer.end.pcm=1"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 178
    const-string v0, "vendor.af.record.dump.pcm=1"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 179
    const-string v0, "vendor.af.effect.pcm=1"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 180
    const-string v0, "vendor.af.mixer.drc.pcm=1"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 181
    const-string v0, "vendor.aaudio.pcm=1"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    .line 183
    :cond_0
    const-string v0, "vendor.af.mixer.pcm=0"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 184
    const-string v0, "vendor.af.track.pcm=0"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 185
    const-string v0, "vendor.af.offload.write.raw=0"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 186
    const-string v0, "vendor.af.resampler.pcm=0"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 187
    const-string v0, "vendor.af.mixer.end.pcm=0"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 188
    const-string v0, "vendor.af.record.dump.pcm=0"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 189
    const-string v0, "vendor.af.effect.pcm=0"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 190
    const-string v0, "vendor.af.mixer.drc.pcm=0"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 191
    const-string v0, "vendor.aaudio.pcm=0"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 193
    :goto_0
    return-void
.end method

.method public blacklist setMuteUidVolumePermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keyValuePairs"    # Ljava/lang/String;

    .line 371
    invoke-static {}, Lcom/oplus/atlas/OplusAtlasManager;->getInstance()Lcom/oplus/atlas/OplusAtlasManager;

    move-result-object v0

    .line 372
    const-string v1, "control"

    const-string v2, "muteUidVolume"

    invoke-virtual {v0, v1, v2}, Lcom/oplus/atlas/OplusAtlasManager;->getAttributeByAppName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 373
    .local v0, "state":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 374
    invoke-static {}, Lcom/oplus/atlas/OplusAtlasManager;->getInstance()Lcom/oplus/atlas/OplusAtlasManager;

    move-result-object v2

    .line 375
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "oplus-muteStreamVolume"

    invoke-virtual {v2, v4, v3}, Lcom/oplus/atlas/OplusAtlasManager;->getAttributeByAppName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 376
    .local v2, "value":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 377
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setParameters: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " PackageName: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 378
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 377
    const-string v3, "AudioManagerExtImpl"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    const/4 v1, 0x1

    return v1

    .line 382
    .end local v2    # "value":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist setParametersForCommonExtends(Ljava/lang/String;)Z
    .locals 3
    .param p1, "keyValuePairs"    # Ljava/lang/String;

    .line 432
    const-string v0, "OPLUS_AUDIO_SET_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 433
    const-string v0, "DualHeadPh"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 441
    :cond_0
    const-string v0, "binaural_recording_switch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 442
    invoke-static {}, Landroid/media/AudioManagerExtImpl;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 444
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->cacheBinauralRecordParameters(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    goto :goto_0

    .line 445
    :catch_0
    move-exception v1

    .line 446
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 449
    .end local v0    # "service":Landroid/media/IAudioService;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 434
    :cond_2
    :goto_1
    invoke-static {}, Landroid/media/AudioManagerExtImpl;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 436
    .restart local v0    # "service":Landroid/media/IAudioService;
    :try_start_1
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->setParameters(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 439
    nop

    .line 440
    const/4 v1, 0x1

    return v1

    .line 437
    :catch_1
    move-exception v1

    .line 438
    .restart local v1    # "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist setParametersPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keyValuePairs"    # Ljava/lang/String;

    .line 408
    const-string v0, "oplusMuteStream"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    invoke-virtual {p0, p1, p2}, Landroid/media/AudioManagerExtImpl;->setMuteUidVolumePermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 414
    :cond_0
    invoke-direct {p0, p2}, Landroid/media/AudioManagerExtImpl;->isCustomApiParameters(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 417
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.oplus.customize.coreapp"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 418
    invoke-virtual {p0, p1, p2}, Landroid/media/AudioManagerExtImpl;->setCustomApiParametersPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    nop

    .line 417
    :goto_1
    return v1

    .line 424
    :cond_3
    const-string v0, "incall_music_sessionId"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 425
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.oplus.vdc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 428
    :cond_4
    return v1
.end method

.method public blacklist setQcomDump(Z)V
    .locals 1
    .param p1, "on"    # Z

    .line 196
    if-eqz p1, :cond_0

    .line 197
    const-string v0, "pcm_dump=2047"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    .line 199
    :cond_0
    const-string v0, "pcm_dump=0"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 201
    :goto_0
    return-void
.end method

.method public blacklist setRingerModePermission(Landroid/content/Context;I)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ringerMode"    # I

    .line 303
    if-nez p2, :cond_0

    .line 304
    invoke-static {}, Lcom/oplus/atlas/OplusAtlasManager;->getInstance()Lcom/oplus/atlas/OplusAtlasManager;

    move-result-object v0

    .line 305
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "setRingerModePermission"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/atlas/OplusAtlasManager;->interfaceCallPermissionCheck(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "do not setRingerModePermission to RINGER_MODE_SILENT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioManagerExtImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const/4 v0, 0x0

    return v0

    .line 310
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist setSpeakerphoneOnPermission()Z
    .locals 1

    .line 346
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist setStreamVolumePermission(Landroid/content/Context;I)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "streamType"    # I

    .line 324
    const/4 v0, 0x1

    const/4 v1, 0x3

    if-ne p2, v1, :cond_1

    .line 325
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 327
    .local v1, "packagename":Ljava/lang/String;
    invoke-direct {p0}, Landroid/media/AudioManagerExtImpl;->canSetStreamVolumeFromAudioServer()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 328
    return v0

    .line 330
    :cond_0
    invoke-static {}, Lcom/oplus/atlas/OplusAtlasManager;->getInstance()Lcom/oplus/atlas/OplusAtlasManager;

    move-result-object v2

    .line 331
    const-string v3, "control"

    const-string v4, "setStreamVolume"

    invoke-virtual {v2, v3, v4}, Lcom/oplus/atlas/OplusAtlasManager;->getAttributeByAppName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 332
    .local v2, "result":Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 333
    invoke-static {}, Lcom/oplus/atlas/OplusAtlasManager;->getInstance()Lcom/oplus/atlas/OplusAtlasManager;

    move-result-object v3

    .line 334
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "setStreamVolumePermission"

    invoke-virtual {v3, v5, v4}, Lcom/oplus/atlas/OplusAtlasManager;->interfaceCallPermissionCheck(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " do not have setStreamVolume Permission "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "AudioManagerExtImpl"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    const/4 v0, 0x0

    return v0

    .line 342
    .end local v1    # "packagename":Ljava/lang/String;
    .end local v2    # "result":Ljava/lang/String;
    :cond_1
    return v0
.end method
