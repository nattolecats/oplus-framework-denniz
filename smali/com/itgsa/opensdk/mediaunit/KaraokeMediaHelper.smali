.class public Lcom/itgsa/opensdk/mediaunit/KaraokeMediaHelper;
.super Ljava/lang/Object;
.source "KaraokeMediaHelper.java"


# static fields
.field private static final blacklist SDK_VERSION:I = 0x2710

.field private static final blacklist TAG:Ljava/lang/String;

.field private static final blacklist UNSUPPORT:I = -0x1


# instance fields
.field private blacklist mediaInterface:Lcom/itgsa/opensdk/mediaunit/MediaInterface;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lcom/itgsa/opensdk/mediaunit/KaraokeMediaHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/itgsa/opensdk/mediaunit/KaraokeMediaHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/itgsa/opensdk/mediaunit/MediaUnitClientImpl;

    invoke-direct {v0, p1}, Lcom/itgsa/opensdk/mediaunit/MediaUnitClientImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/itgsa/opensdk/mediaunit/KaraokeMediaHelper;->mediaInterface:Lcom/itgsa/opensdk/mediaunit/MediaInterface;

    .line 41
    return-void
.end method


# virtual methods
.method public whitelist closeKTVDevice()V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/itgsa/opensdk/mediaunit/KaraokeMediaHelper;->mediaInterface:Lcom/itgsa/opensdk/mediaunit/MediaInterface;

    if-nez v0, :cond_0

    .line 116
    return-void

    .line 118
    :cond_0
    invoke-interface {v0}, Lcom/itgsa/opensdk/mediaunit/MediaInterface;->closeKTVDevice()V

    .line 119
    return-void
.end method

.method public whitelist getExtSpeakerParam()I
    .locals 2

    .line 207
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "method not support!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getKaraokeSupportParameters()Ljava/lang/String;
    .locals 1

    .line 72
    const-string v0, "{ \"audioTrackParam\":[\n                      {\"streamType\":\"3\",\n                       \"sampleRate\":\"48000\",\n                       \"format\":\"2\",\n                       \"flag\":\"8\"\n                      }],\n         \"audioRecordParam\":[\n                      {\"streamType\":\"default\",\n                       \"sampleRate\":\"48000\",\n                       \"format\":\"2\",\n                       \"flag\":\"8\",\n                       \"source\":\"1\"}],\n         \"isSupportExtSpeakerParam\":false,\n         \"isAppSupportKaraoke\":false,\n         \"setExtSpeakerParam\":false,\n         \"getExtSpeakerParam\":false,\n         \"getMicVolParam\":false,\n         \"getPlayFeedbackParam\":false,\n         \"getListenRecordSame\":false,\n         \"getExtEqualizerType\":false,\n         \"getExtMixerSoundType\":false     }"

    .line 93
    .local v0, "audioParams":Ljava/lang/String;
    return-object v0
.end method

.method public whitelist getListenRecordSame()I
    .locals 2

    .line 249
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "method not support!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getMicVolParam()I
    .locals 2

    .line 235
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "method not support!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getPlayFeedbackParam()I
    .locals 2

    .line 221
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "method not support!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getVersion()I
    .locals 1

    .line 50
    const/16 v0, 0x2710

    return v0
.end method

.method public whitelist isAppSupportKaraoke(Ljava/lang/String;)Z
    .locals 1
    .param p1, "appName"    # Ljava/lang/String;

    .line 128
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist isDeviceSupportKaraoke()Z
    .locals 2

    .line 60
    invoke-static {}, Lcom/oplus/content/OplusFeatureConfigManager;->getInstance()Lcom/oplus/content/OplusFeatureConfigManager;

    move-result-object v0

    .line 61
    const-string v1, "oplus.software.audio.karaoke_v2.support"

    invoke-virtual {v0, v1}, Lcom/oplus/content/OplusFeatureConfigManager;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    .line 62
    .local v0, "isKaraokeSupport":Z
    return v0
.end method

.method public whitelist openKTVDevice()V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/itgsa/opensdk/mediaunit/KaraokeMediaHelper;->mediaInterface:Lcom/itgsa/opensdk/mediaunit/MediaInterface;

    if-nez v0, :cond_0

    .line 103
    return-void

    .line 105
    :cond_0
    invoke-interface {v0}, Lcom/itgsa/opensdk/mediaunit/MediaInterface;->openKTVDevice()V

    .line 106
    return-void
.end method

.method public whitelist setEqualizerType(I)V
    .locals 1
    .param p1, "equalizerType"    # I

    .line 281
    iget-object v0, p0, Lcom/itgsa/opensdk/mediaunit/KaraokeMediaHelper;->mediaInterface:Lcom/itgsa/opensdk/mediaunit/MediaInterface;

    if-nez v0, :cond_0

    .line 282
    return-void

    .line 284
    :cond_0
    invoke-interface {v0, p1}, Lcom/itgsa/opensdk/mediaunit/MediaInterface;->setEqualizerType(I)V

    .line 285
    return-void
.end method

.method public whitelist setExtSpeakerParam(I)V
    .locals 2
    .param p1, "param"    # I

    .line 196
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "method not support!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setListenRecordSame(I)V
    .locals 1
    .param p1, "param"    # I

    .line 139
    iget-object v0, p0, Lcom/itgsa/opensdk/mediaunit/KaraokeMediaHelper;->mediaInterface:Lcom/itgsa/opensdk/mediaunit/MediaInterface;

    if-nez v0, :cond_0

    .line 140
    return-void

    .line 142
    :cond_0
    invoke-interface {v0, p1}, Lcom/itgsa/opensdk/mediaunit/MediaInterface;->setListenRecordSame(I)V

    .line 143
    return-void
.end method

.method public whitelist setMicVolParam(I)V
    .locals 1
    .param p1, "param"    # I

    .line 183
    iget-object v0, p0, Lcom/itgsa/opensdk/mediaunit/KaraokeMediaHelper;->mediaInterface:Lcom/itgsa/opensdk/mediaunit/MediaInterface;

    if-nez v0, :cond_0

    .line 184
    return-void

    .line 186
    :cond_0
    invoke-interface {v0, p1}, Lcom/itgsa/opensdk/mediaunit/MediaInterface;->setMicVolParam(I)V

    .line 187
    return-void
.end method

.method public whitelist setMixerSoundType(I)V
    .locals 1
    .param p1, "param"    # I

    .line 156
    iget-object v0, p0, Lcom/itgsa/opensdk/mediaunit/KaraokeMediaHelper;->mediaInterface:Lcom/itgsa/opensdk/mediaunit/MediaInterface;

    if-nez v0, :cond_0

    .line 157
    return-void

    .line 159
    :cond_0
    invoke-interface {v0, p1}, Lcom/itgsa/opensdk/mediaunit/MediaInterface;->setMixerSoundType(I)V

    .line 160
    return-void
.end method

.method public whitelist setPlayFeedbackParam(I)V
    .locals 1
    .param p1, "param"    # I

    .line 170
    iget-object v0, p0, Lcom/itgsa/opensdk/mediaunit/KaraokeMediaHelper;->mediaInterface:Lcom/itgsa/opensdk/mediaunit/MediaInterface;

    if-nez v0, :cond_0

    .line 171
    return-void

    .line 173
    :cond_0
    invoke-interface {v0, p1}, Lcom/itgsa/opensdk/mediaunit/MediaInterface;->setPlayFeedbackParam(I)V

    .line 174
    return-void
.end method

.method public whitelist setToneMode(I)V
    .locals 1
    .param p1, "toneValue"    # I

    .line 264
    iget-object v0, p0, Lcom/itgsa/opensdk/mediaunit/KaraokeMediaHelper;->mediaInterface:Lcom/itgsa/opensdk/mediaunit/MediaInterface;

    if-nez v0, :cond_0

    .line 265
    return-void

    .line 267
    :cond_0
    invoke-interface {v0, p1}, Lcom/itgsa/opensdk/mediaunit/MediaInterface;->setToneMode(I)V

    .line 268
    return-void
.end method
