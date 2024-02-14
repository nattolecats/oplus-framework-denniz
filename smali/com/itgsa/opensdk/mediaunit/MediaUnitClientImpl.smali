.class public Lcom/itgsa/opensdk/mediaunit/MediaUnitClientImpl;
.super Ljava/lang/Object;
.source "MediaUnitClientImpl.java"

# interfaces
.implements Lcom/itgsa/opensdk/mediaunit/MediaInterface;


# static fields
.field private static final blacklist KARAOKE_SERVICE:Ljava/lang/String; = "oplus.intent.action.FKARAOKE_SERVICE"

.field private static final blacklist PACKGE_NAME:Ljava/lang/String; = "com.coloros.karaoke"


# instance fields
.field private final blacklist TAG:Ljava/lang/String;

.field private blacklist mBinder:Landroid/os/IBinder;

.field private blacklist mCallback:Lcom/itgsa/opensdk/mediaunit/KaraokeMediaHelper;

.field private blacklist mConnection:Landroid/content/ServiceConnection;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mIsActive:Z

.field private blacklist mKaraokeService:Lcom/oplus/karaoke/framework/IKaraokeServiceAidlInterface;

.field private blacklist mPackageName:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmIsActive(Lcom/itgsa/opensdk/mediaunit/MediaUnitClientImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itgsa/opensdk/mediaunit/MediaUnitClientImpl;->mIsActive:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmKaraokeService(Lcom/itgsa/opensdk/mediaunit/MediaUnitClientImpl;)Lcom/oplus/karaoke/framework/IKaraokeServiceAidlInterface;
    .locals 0

    iget-object p0, p0, Lcom/itgsa/opensdk/mediaunit/MediaUnitClientImpl;->mKaraokeService:Lcom/oplus/karaoke/framework/IKaraokeServiceAidlInterface;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBinder(Lcom/itgsa/opensdk/mediaunit/MediaUnitClientImpl;Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/itgsa/opensdk/mediaunit/MediaUnitClientImpl;->mBinder:Landroid/os/IBinder;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmKaraokeService(Lcom/itgsa/opensdk/mediaunit/MediaUnitClientImpl;Lcom/oplus/karaoke/framework/IKaraokeServiceAidlInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/itgsa/opensdk/mediaunit/MediaUnitClientImpl;->mKaraokeService:Lcom/oplus/karaoke/framework/IKaraokeServiceAidlInterface;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mrestartService(Lcom/itgsa/opensdk/mediaunit/MediaUnitClientImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/itgsa/opensdk/mediaunit/MediaUnitClientImpl;->restartService()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "MediaUnitClientImpl"

    iput-object v0, p0, Lcom/itgsa/opensdk/mediaunit/MediaUnitClientImpl;->TAG:Ljava/lang/String;

    .line 65
    new-instance v0, Lcom/itgsa/opensdk/mediaunit/MediaUnitClientImpl$1;

    invoke-direct {v0, p0}, Lcom/itgsa/opensdk/mediaunit/MediaUnitClientImpl$1;-><init>(Lcom/itgsa/opensdk/mediaunit/MediaUnitClientImpl;)V

    iput-object v0, p0, Lcom/itgsa/opensdk/mediaunit/MediaUnitClientImpl;->mConnection:Landroid/content/ServiceConnection;

    .line 40
    iput-object p1, p0, Lcom/itgsa/opensdk/mediaunit/MediaUnitClientImpl;->mContext:Landroid/content/Context;

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itgsa/opensdk/mediaunit/MediaUnitClientImpl;->mPackageName:Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itgsa/opensdk/mediaunit/MediaUnitClientImpl;->mIsActive:Z

    .line 43
    invoke-direct {p0}, Lcom/itgsa/opensdk/mediaunit/MediaUnitClientImpl;->bindKaraokeService()V

    .line 44
    return-void
.end method

.method private blacklist bindKaraokeService()V
    .locals 5

    .line 52
    iget-object v0, p0, Lcom/itgsa/opensdk/mediaunit/MediaUnitClientImpl;->mContext:Landroid/content/Context;

    const-string v1, "MediaUnitClientImpl"

    if-nez v0, :cond_0

    .line 53
    const-string v0, "context is null"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/itgsa/opensdk/mediaunit/MediaUnitClientImpl;->mKaraokeService:Lcom/oplus/karaoke/framework/IKaraokeServiceAidlInterface;

    if-nez v0, :cond_2

    .line 58
    new-instance v0, Landroid/content/Intent;

    const-string v2, "oplus.intent.action.FKARAOKE_SERVICE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 59
    .local v0, "serviceIntent":Landroid/content/Intent;
    const-string v2, "com.coloros.karaoke"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    iget-object v2, p0, Lcom/itgsa/opensdk/mediaunit/MediaUnitClientImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/itgsa/opensdk/mediaunit/MediaUnitClientImpl;->mConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    .line 61
    .local v2, "res":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindService "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v2, :cond_1

    const-string v4, "succeeded"

    goto :goto_0

    :cond_1
    const-string v4, "failed"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .end local v0    # "serviceIntent":Landroid/content/Intent;
    .end local v2    # "res":Z
    :cond_2
    return-void
.end method

.method private blacklist resetActiveClient(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "isShowDialog"    # Z

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetActiveClient+++ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isShowDialog = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaUnitClientImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    if-nez p1, :cond_0

    :try_start_0
    const-string v0, "null"

    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    goto :goto_1

    .line 99
    :cond_0
    move-object v0, p1

    .line 100
    .local v0, "name":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetActiveClient "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v2, p0, Lcom/itgsa/opensdk/mediaunit/MediaUnitClientImpl;->mKaraokeService:Lcom/oplus/karaoke/framework/IKaraokeServiceAidlInterface;

    if-eqz v2, :cond_1

    .line 103
    invoke-interface {v2, v0, p2}, Lcom/oplus/karaoke/framework/IKaraokeServiceAidlInterface;->resetActiveClient(Ljava/lang/String;Z)V

    .line 104
    const-string v2, "resetActiveClient mKaraokeService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .end local v0    # "name":Ljava/lang/String;
    :cond_1
    goto :goto_2

    .line 107
    .local v0, "e":Landroid/os/RemoteException;
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetActiveClient() could not link to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/itgsa/opensdk/mediaunit/MediaUnitClientImpl;->mKaraokeService:Lcom/oplus/karaoke/framework/IKaraokeServiceAidlInterface;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " binder death"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    :goto_3
    iput-boolean v0, p0, Lcom/itgsa/opensdk/mediaunit/MediaUnitClientImpl;->mIsActive:Z

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetActiveClient--- "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/itgsa/opensdk/mediaunit/MediaUnitClientImpl;->mIsActive:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-void
.end method

.method private blacklist restartService()V
    .locals 0

    .line 92
    invoke-direct {p0}, Lcom/itgsa/opensdk/mediaunit/MediaUnitClientImpl;->bindKaraokeService()V

    .line 93
    return-void
.end method


# virtual methods
.method public blacklist closeKTVDevice()V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/itgsa/opensdk/mediaunit/MediaUnitClientImpl;->mBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 82
    const/4 v0, 0x0

    const-string v1, ""

    invoke-direct {p0, v1, v0}, Lcom/itgsa/opensdk/mediaunit/MediaUnitClientImpl;->resetActiveClient(Ljava/lang/String;Z)V

    .line 84
    iget-object v0, p0, Lcom/itgsa/opensdk/mediaunit/MediaUnitClientImpl;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 85
    iget-object v1, p0, Lcom/itgsa/opensdk/mediaunit/MediaUnitClientImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itgsa/opensdk/mediaunit/MediaUnitClientImpl;->mBinder:Landroid/os/IBinder;

    .line 89
    :cond_0
    return-void
.end method

.method public blacklist openKTVDevice()V
    .locals 2

    .line 47
    invoke-direct {p0}, Lcom/itgsa/opensdk/mediaunit/MediaUnitClientImpl;->bindKaraokeService()V

    .line 48
    iget-object v0, p0, Lcom/itgsa/opensdk/mediaunit/MediaUnitClientImpl;->mPackageName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/itgsa/opensdk/mediaunit/MediaUnitClientImpl;->resetActiveClient(Ljava/lang/String;Z)V

    .line 49
    return-void
.end method

.method public blacklist setEqualizerType(I)V
    .locals 3
    .param p1, "equalizerType"    # I

    .line 233
    :try_start_0
    iget-object v0, p0, Lcom/itgsa/opensdk/mediaunit/MediaUnitClientImpl;->mKaraokeService:Lcom/oplus/karaoke/framework/IKaraokeServiceAidlInterface;

    if-eqz v0, :cond_0

    .line 234
    invoke-interface {v0, p1}, Lcom/oplus/karaoke/framework/IKaraokeServiceAidlInterface;->setEqualizerType(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :cond_0
    goto :goto_0

    .line 236
    :catch_0
    move-exception v0

    .line 237
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEqualizerType() could not link to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/itgsa/opensdk/mediaunit/MediaUnitClientImpl;->mKaraokeService:Lcom/oplus/karaoke/framework/IKaraokeServiceAidlInterface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " binder death"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaUnitClientImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist setListenRecordSame(I)V
    .locals 5
    .param p1, "param"    # I

    .line 126
    const-string v0, "MediaUnitClientImpl"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    if-eqz p1, :cond_0

    .line 127
    const-string v1, "setListenRecordSame param invalid !"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return-void

    .line 131
    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 133
    .local v1, "isWetSound":Z
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/itgsa/opensdk/mediaunit/MediaUnitClientImpl;->mKaraokeService:Lcom/oplus/karaoke/framework/IKaraokeServiceAidlInterface;

    if-eqz v2, :cond_2

    .line 134
    invoke-interface {v2, v1}, Lcom/oplus/karaoke/framework/IKaraokeServiceAidlInterface;->setRecordingWetSound(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :cond_2
    goto :goto_1

    .line 136
    :catch_0
    move-exception v2

    .line 137
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setListenRecordSame() could not link to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/itgsa/opensdk/mediaunit/MediaUnitClientImpl;->mKaraokeService:Lcom/oplus/karaoke/framework/IKaraokeServiceAidlInterface;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " binder death"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method public blacklist setMicVolParam(I)V
    .locals 3
    .param p1, "param"    # I

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/itgsa/opensdk/mediaunit/MediaUnitClientImpl;->mKaraokeService:Lcom/oplus/karaoke/framework/IKaraokeServiceAidlInterface;

    if-eqz v0, :cond_0

    .line 194
    invoke-interface {v0, p1}, Lcom/oplus/karaoke/framework/IKaraokeServiceAidlInterface;->setVolume(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :cond_0
    goto :goto_0

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVolume() could not link to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/itgsa/opensdk/mediaunit/MediaUnitClientImpl;->mKaraokeService:Lcom/oplus/karaoke/framework/IKaraokeServiceAidlInterface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " binder death"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaUnitClientImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist setMixerSoundType(I)V
    .locals 3
    .param p1, "param"    # I

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/itgsa/opensdk/mediaunit/MediaUnitClientImpl;->mKaraokeService:Lcom/oplus/karaoke/framework/IKaraokeServiceAidlInterface;

    if-eqz v0, :cond_0

    .line 155
    invoke-interface {v0, p1}, Lcom/oplus/karaoke/framework/IKaraokeServiceAidlInterface;->setMixSoundType(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :cond_0
    goto :goto_0

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMixSoundType() could not link to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/itgsa/opensdk/mediaunit/MediaUnitClientImpl;->mKaraokeService:Lcom/oplus/karaoke/framework/IKaraokeServiceAidlInterface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " binder death"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaUnitClientImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist setPlayFeedbackParam(I)V
    .locals 3
    .param p1, "param"    # I

    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/itgsa/opensdk/mediaunit/MediaUnitClientImpl;->mKaraokeService:Lcom/oplus/karaoke/framework/IKaraokeServiceAidlInterface;

    if-eqz v0, :cond_1

    .line 173
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 174
    invoke-interface {v0, v1}, Lcom/oplus/karaoke/framework/IKaraokeServiceAidlInterface;->setAudioLoopbackOn(Z)V

    goto :goto_0

    .line 175
    :cond_0
    if-nez p1, :cond_1

    .line 176
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oplus/karaoke/framework/IKaraokeServiceAidlInterface;->setAudioLoopbackOn(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :cond_1
    :goto_0
    goto :goto_1

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAudioLoopbackOn() could not link to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/itgsa/opensdk/mediaunit/MediaUnitClientImpl;->mKaraokeService:Lcom/oplus/karaoke/framework/IKaraokeServiceAidlInterface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " binder death"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaUnitClientImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method public blacklist setToneMode(I)V
    .locals 3
    .param p1, "toneValue"    # I

    .line 212
    :try_start_0
    iget-object v0, p0, Lcom/itgsa/opensdk/mediaunit/MediaUnitClientImpl;->mKaraokeService:Lcom/oplus/karaoke/framework/IKaraokeServiceAidlInterface;

    if-eqz v0, :cond_0

    .line 213
    invoke-interface {v0, p1}, Lcom/oplus/karaoke/framework/IKaraokeServiceAidlInterface;->setTones(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :cond_0
    goto :goto_0

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTones() could not link to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/itgsa/opensdk/mediaunit/MediaUnitClientImpl;->mKaraokeService:Lcom/oplus/karaoke/framework/IKaraokeServiceAidlInterface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " binder death"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaUnitClientImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
