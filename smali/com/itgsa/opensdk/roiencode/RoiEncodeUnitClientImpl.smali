.class public Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClientImpl;
.super Ljava/lang/Object;
.source "RoiEncodeUnitClientImpl.java"

# interfaces
.implements Lcom/itgsa/opensdk/roiencode/RoiEncodeInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClientImpl$ErrorCode;
    }
.end annotation


# static fields
.field public static final blacklist TYPE_LENGTH:I = 0x6

.field public static blacklist sRoiEnable:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 32
    const/4 v0, 0x0

    sput-boolean v0, Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClientImpl;->sRoiEnable:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist enableRoiEncode(Landroid/media/MediaFormat;I)I
    .locals 5
    .param p1, "mediaFormat"    # Landroid/media/MediaFormat;
    .param p2, "roiEnable"    # I

    .line 91
    if-nez p1, :cond_0

    .line 92
    sget-object v0, Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClientImpl$ErrorCode;->ERROR_ENABLE_PARAMETER:Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClientImpl$ErrorCode;

    invoke-virtual {v0}, Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClientImpl$ErrorCode;->getCode()I

    move-result v0

    return v0

    .line 94
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClientImpl;->sRoiEnable:Z

    .line 95
    const-string v0, "mime"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "encodeType":Ljava/lang/String;
    const-string v1, "video/avc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "video/hevc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 97
    sget-object v1, Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClientImpl$ErrorCode;->ERROR_ENCODE_TYPE:Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClientImpl$ErrorCode;

    invoke-virtual {v1}, Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClientImpl$ErrorCode;->getCode()I

    move-result v1

    return v1

    .line 99
    :cond_1
    const-string v1, "bitrate-mode"

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    .line 100
    .local v1, "bitrateMode":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 101
    sget-object v2, Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClientImpl$ErrorCode;->ERROR_BIT_MODE:Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClientImpl$ErrorCode;

    invoke-virtual {v2}, Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClientImpl$ErrorCode;->getCode()I

    move-result v2

    return v2

    .line 103
    :cond_2
    if-eqz p2, :cond_4

    if-ne p2, v2, :cond_3

    goto :goto_0

    .line 112
    :cond_3
    sget-object v2, Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClientImpl$ErrorCode;->ERROR_ENABLE_PARAMETER:Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClientImpl$ErrorCode;

    invoke-virtual {v2}, Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClientImpl$ErrorCode;->getCode()I

    move-result v2

    return v2

    .line 104
    :cond_4
    :goto_0
    if-ne p2, v2, :cond_5

    .line 105
    const-string v3, "RoiEncodeUnitClientImpl"

    const-string v4, "enable ROI"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    sput-boolean v2, Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClientImpl;->sRoiEnable:Z

    .line 107
    const-string v2, "roi-on"

    invoke-virtual {p1, v2, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 108
    const-string v2, "vendor.qti-ext-extradata-enable.types"

    const-string v3, "roiinfo"

    invoke-virtual {p1, v2, v3}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_5
    sget-object v2, Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClientImpl$ErrorCode;->ERROR_NON:Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClientImpl$ErrorCode;

    invoke-virtual {v2}, Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClientImpl$ErrorCode;->getCode()I

    move-result v2

    return v2
.end method

.method public blacklist isRoiEncodeEnable(Landroid/media/MediaCodec;)Z
    .locals 2
    .param p1, "mediaCodec"    # Landroid/media/MediaCodec;

    .line 124
    const/4 v0, 0x0

    .line 125
    .local v0, "roiFlag":Z
    sget-boolean v1, Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClientImpl;->sRoiEnable:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 126
    const/4 v1, 0x1

    return v1

    .line 128
    :cond_0
    return v0
.end method

.method public blacklist isRoiEncodeSupported()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 65
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isRoiEncodeSupported(Landroid/media/MediaCodec;)I
    .locals 1
    .param p1, "mediaCodec"    # Landroid/media/MediaCodec;

    .line 76
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist setRoiParameter(Landroid/media/MediaCodec;Ljava/lang/String;J)I
    .locals 5
    .param p1, "mediaCodec"    # Landroid/media/MediaCodec;
    .param p2, "roiInfo"    # Ljava/lang/String;
    .param p3, "pts"    # J

    .line 149
    sget-boolean v0, Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClientImpl;->sRoiEnable:Z

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 150
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 151
    .local v0, "param":Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/media/MediaCodec;->getName()Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, "codecName":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-le v2, v3, :cond_1

    .line 153
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 154
    .local v2, "codecType":Ljava/lang/String;
    const-string v3, "c2.qti"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 155
    const-string v3, "vendor.qti-ext-enc-roiinfo.timestamp"

    invoke-virtual {v0, v3, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 156
    const-string v3, "vendor.qti-ext-enc-roiinfo.type"

    const-string v4, "rect"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v3, "vendor.qti-ext-enc-roiinfo.rect-payload"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 159
    :cond_0
    const-string v3, "roi-rect"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v3, "roi-timestamp"

    invoke-virtual {v0, v3, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 163
    .end local v2    # "codecType":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    .line 164
    sget-object v2, Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClientImpl$ErrorCode;->ERROR_NON:Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClientImpl$ErrorCode;

    invoke-virtual {v2}, Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClientImpl$ErrorCode;->getCode()I

    move-result v2

    return v2

    .line 166
    .end local v0    # "param":Landroid/os/Bundle;
    .end local v1    # "codecName":Ljava/lang/String;
    :cond_2
    sget-object v0, Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClientImpl$ErrorCode;->ERROR_UNKNOWN:Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClientImpl$ErrorCode;

    invoke-virtual {v0}, Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClientImpl$ErrorCode;->getCode()I

    move-result v0

    return v0
.end method
