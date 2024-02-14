.class public Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClient;
.super Ljava/lang/Object;
.source "RoiEncodeUnitClient.java"


# static fields
.field private static final blacklist ROI_ENCODE_SUPPORT:I = 0x1

.field private static final blacklist ROI_ENCODE_UNSUPPORT:I = 0x0

.field private static final blacklist SDK_VERSION:I = 0x2710

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mRoiEncodeInterface:Lcom/itgsa/opensdk/roiencode/RoiEncodeInterface;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 30
    const-class v0, Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClient;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClientImpl;

    invoke-direct {v0}, Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClientImpl;-><init>()V

    iput-object v0, p0, Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClient;->mRoiEncodeInterface:Lcom/itgsa/opensdk/roiencode/RoiEncodeInterface;

    .line 45
    iput-object p1, p0, Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClient;->mContext:Landroid/content/Context;

    .line 46
    return-void
.end method


# virtual methods
.method public whitelist enableRoiEncode(Landroid/media/MediaFormat;I)I
    .locals 2
    .param p1, "mediaFormat"    # Landroid/media/MediaFormat;
    .param p2, "roiEnable"    # I

    .line 101
    const/4 v0, -0x1

    .line 102
    .local v0, "ext":I
    iget-object v1, p0, Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClient;->mRoiEncodeInterface:Lcom/itgsa/opensdk/roiencode/RoiEncodeInterface;

    if-eqz v1, :cond_0

    .line 103
    invoke-interface {v1, p1, p2}, Lcom/itgsa/opensdk/roiencode/RoiEncodeInterface;->enableRoiEncode(Landroid/media/MediaFormat;I)I

    move-result v0

    .line 105
    :cond_0
    return v0
.end method

.method public whitelist getVersion()I
    .locals 1

    .line 55
    const/16 v0, 0x2710

    return v0
.end method

.method public whitelist isRoiEncodeEnable(Landroid/media/MediaCodec;)Z
    .locals 2
    .param p1, "mediaCodec"    # Landroid/media/MediaCodec;

    .line 116
    const/4 v0, 0x0

    .line 117
    .local v0, "enable":Z
    iget-object v1, p0, Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClient;->mRoiEncodeInterface:Lcom/itgsa/opensdk/roiencode/RoiEncodeInterface;

    if-eqz v1, :cond_0

    .line 118
    invoke-interface {v1, p1}, Lcom/itgsa/opensdk/roiencode/RoiEncodeInterface;->isRoiEncodeEnable(Landroid/media/MediaCodec;)Z

    move-result v0

    .line 120
    :cond_0
    return v0
.end method

.method public whitelist isRoiEncodeSupported()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oplus.software.video.roiencode_support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 67
    .local v0, "isRoiSupport":Z
    if-eqz v0, :cond_0

    .line 68
    const/4 v1, 0x1

    return v1

    .line 70
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist isRoiEncodeSupported(Landroid/media/MediaCodec;)I
    .locals 2
    .param p1, "mediaCodec"    # Landroid/media/MediaCodec;

    .line 82
    iget-object v0, p0, Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oplus.software.video.roiencode_support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 83
    .local v0, "isRoiSupport":Z
    if-eqz v0, :cond_0

    .line 84
    const/4 v1, 0x1

    return v1

    .line 86
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist setRoiParameter(Landroid/media/MediaCodec;Ljava/lang/String;J)I
    .locals 2
    .param p1, "mediaCodec"    # Landroid/media/MediaCodec;
    .param p2, "roiInfo"    # Ljava/lang/String;
    .param p3, "pts"    # J

    .line 140
    const/4 v0, -0x1

    .line 141
    .local v0, "ext":I
    iget-object v1, p0, Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClient;->mRoiEncodeInterface:Lcom/itgsa/opensdk/roiencode/RoiEncodeInterface;

    if-eqz v1, :cond_0

    .line 142
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/itgsa/opensdk/roiencode/RoiEncodeInterface;->setRoiParameter(Landroid/media/MediaCodec;Ljava/lang/String;J)I

    move-result v0

    .line 144
    :cond_0
    return v0
.end method
