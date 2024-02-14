.class public Landroid/media/MediaCodecListExtImpl;
.super Ljava/lang/Object;
.source "MediaCodecListExtImpl.java"

# interfaces
.implements Landroid/media/IMediaCodecListExt;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "MediaCodecListExtImpl"

.field private static volatile blacklist sInstance:Landroid/media/MediaCodecListExtImpl;


# instance fields
.field private blacklist mIsDisableAv1:Z


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "base"    # Ljava/lang/Object;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/MediaCodecListExtImpl;->mIsDisableAv1:Z

    .line 42
    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Landroid/media/MediaCodecListExtImpl;
    .locals 2
    .param p0, "base"    # Ljava/lang/Object;

    .line 45
    sget-object v0, Landroid/media/MediaCodecListExtImpl;->sInstance:Landroid/media/MediaCodecListExtImpl;

    if-nez v0, :cond_1

    .line 46
    const-class v0, Landroid/media/MediaCodecListExtImpl;

    monitor-enter v0

    .line 47
    :try_start_0
    sget-object v1, Landroid/media/MediaCodecListExtImpl;->sInstance:Landroid/media/MediaCodecListExtImpl;

    if-nez v1, :cond_0

    .line 48
    new-instance v1, Landroid/media/MediaCodecListExtImpl;

    invoke-direct {v1, p0}, Landroid/media/MediaCodecListExtImpl;-><init>(Ljava/lang/Object;)V

    sput-object v1, Landroid/media/MediaCodecListExtImpl;->sInstance:Landroid/media/MediaCodecListExtImpl;

    .line 50
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 52
    :cond_1
    :goto_0
    sget-object v0, Landroid/media/MediaCodecListExtImpl;->sInstance:Landroid/media/MediaCodecListExtImpl;

    return-object v0
.end method


# virtual methods
.method public blacklist isNeedDisableAv1()Z
    .locals 5

    .line 57
    const-string v0, "ro.hardware"

    const-string v1, "default"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "hardware":Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, "packageName":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 60
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 61
    invoke-static {}, Lcom/oplus/atlas/OplusAtlasManager;->getInstance()Lcom/oplus/atlas/OplusAtlasManager;

    move-result-object v2

    .line 62
    const-string v3, "disable-av1"

    invoke-virtual {v2, v3, v1}, Lcom/oplus/atlas/OplusAtlasManager;->getAttributeByAppName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, "value":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 64
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 65
    .local v3, "platforms":[Ljava/lang/String;
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Landroid/media/MediaCodecListExtImpl;->mIsDisableAv1:Z

    .line 69
    .end local v2    # "value":Ljava/lang/String;
    .end local v3    # "platforms":[Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsDisableAv1="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/media/MediaCodecListExtImpl;->mIsDisableAv1:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MediaCodecListExtImpl"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-boolean v2, p0, Landroid/media/MediaCodecListExtImpl;->mIsDisableAv1:Z

    return v2
.end method
