.class public interface abstract Lcom/itgsa/opensdk/roiencode/RoiEncodeInterface;
.super Ljava/lang/Object;
.source "RoiEncodeInterface.java"


# virtual methods
.method public abstract blacklist enableRoiEncode(Landroid/media/MediaFormat;I)I
.end method

.method public abstract blacklist isRoiEncodeEnable(Landroid/media/MediaCodec;)Z
.end method

.method public abstract blacklist isRoiEncodeSupported()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract blacklist isRoiEncodeSupported(Landroid/media/MediaCodec;)I
.end method

.method public abstract blacklist setRoiParameter(Landroid/media/MediaCodec;Ljava/lang/String;J)I
.end method
