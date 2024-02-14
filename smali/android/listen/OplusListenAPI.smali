.class public Landroid/listen/OplusListenAPI;
.super Ljava/lang/Object;
.source "OplusListenAPI.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist query(Ljava/nio/ByteBuffer;)Lcom/qualcomm/listen/ListenTypes$SoundModelInfo;
    .locals 1
    .param p0, "soundModel"    # Ljava/nio/ByteBuffer;

    .line 27
    invoke-static {p0}, Lcom/qualcomm/listen/ListenSoundModel;->query(Ljava/nio/ByteBuffer;)Lcom/qualcomm/listen/ListenTypes$SoundModelInfo;

    move-result-object v0

    return-object v0
.end method
