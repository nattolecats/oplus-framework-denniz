.class public final enum Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClientImpl$ErrorCode;
.super Ljava/lang/Enum;
.source "RoiEncodeUnitClientImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClientImpl$ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClientImpl$ErrorCode;

.field public static final enum blacklist ERROR_BIT_MODE:Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClientImpl$ErrorCode;

.field public static final enum blacklist ERROR_ENABLE_PARAMETER:Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClientImpl$ErrorCode;

.field public static final enum blacklist ERROR_ENCODE_TYPE:Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClientImpl$ErrorCode;

.field public static final enum blacklist ERROR_NON:Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClientImpl$ErrorCode;

.field public static final enum blacklist ERROR_ROI_DELTAQP:Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClientImpl$ErrorCode;

.field public static final enum blacklist ERROR_ROI_REGION:Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClientImpl$ErrorCode;

.field public static final enum blacklist ERROR_ROI_REGION_NUM:Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClientImpl$ErrorCode;

.field public static final enum blacklist ERROR_UNKNOWN:Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClientImpl$ErrorCode;


# instance fields
.field private blacklist mCode:I

.field private blacklist message:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 16

    .line 34
    new-instance v0, Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClientImpl$ErrorCode;

    const-string v1, "ERROR_NON"

    const/4 v2, 0x0

    const-string v3, "all param are supported"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClientImpl$ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClientImpl$ErrorCode;->ERROR_NON:Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClientImpl$ErrorCode;

    .line 35
    new-instance v1, Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClientImpl$ErrorCode;

    const-string v3, "ERROR_ENCODE_TYPE"

    const/4 v4, 0x1

    const/16 v5, -0x2711

    const-string v6, "do not support this encode type"

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClientImpl$ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClientImpl$ErrorCode;->ERROR_ENCODE_TYPE:Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClientImpl$ErrorCode;

    .line 36
    new-instance v3, Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClientImpl$ErrorCode;

    const-string v5, "ERROR_BIT_MODE"

    const/4 v6, 0x2

    const/16 v7, -0x2712

    const-string v8, "do not support this bitrate mode"

    invoke-direct {v3, v5, v6, v7, v8}, Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClientImpl$ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClientImpl$ErrorCode;->ERROR_BIT_MODE:Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClientImpl$ErrorCode;

    .line 37
    new-instance v5, Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClientImpl$ErrorCode;

    const-string v7, "ERROR_ENABLE_PARAMETER"

    const/4 v8, 0x3

    const/16 v9, -0x2713

    const-string v10, "do not support this enable parameter"

    invoke-direct {v5, v7, v8, v9, v10}, Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClientImpl$ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClientImpl$ErrorCode;->ERROR_ENABLE_PARAMETER:Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClientImpl$ErrorCode;

    .line 38
    new-instance v7, Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClientImpl$ErrorCode;

    const-string v9, "ERROR_ROI_REGION_NUM"

    const/4 v10, 0x4

    const/16 v11, -0x2714

    const-string v12, "roi nums is out of range"

    invoke-direct {v7, v9, v10, v11, v12}, Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClientImpl$ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClientImpl$ErrorCode;->ERROR_ROI_REGION_NUM:Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClientImpl$ErrorCode;

    .line 39
    new-instance v9, Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClientImpl$ErrorCode;

    const-string v11, "ERROR_ROI_DELTAQP"

    const/4 v12, 0x5

    const/16 v13, -0x2715

    const-string v14, "delta qp is out of range"

    invoke-direct {v9, v11, v12, v13, v14}, Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClientImpl$ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v9, Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClientImpl$ErrorCode;->ERROR_ROI_DELTAQP:Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClientImpl$ErrorCode;

    .line 40
    new-instance v11, Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClientImpl$ErrorCode;

    const-string v13, "ERROR_ROI_REGION"

    const/4 v14, 0x6

    const/16 v15, -0x2716

    const-string v12, "region is out of range"

    invoke-direct {v11, v13, v14, v15, v12}, Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClientImpl$ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v11, Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClientImpl$ErrorCode;->ERROR_ROI_REGION:Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClientImpl$ErrorCode;

    .line 41
    new-instance v12, Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClientImpl$ErrorCode;

    const-string v13, "ERROR_UNKNOWN"

    const/4 v15, 0x7

    const/16 v14, -0x2717

    const-string v10, "unknow error"

    invoke-direct {v12, v13, v15, v14, v10}, Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClientImpl$ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v12, Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClientImpl$ErrorCode;->ERROR_UNKNOWN:Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClientImpl$ErrorCode;

    .line 33
    const/16 v10, 0x8

    new-array v10, v10, [Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClientImpl$ErrorCode;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    aput-object v5, v10, v8

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    aput-object v12, v10, v15

    sput-object v10, Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClientImpl$ErrorCode;->$VALUES:[Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClientImpl$ErrorCode;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "code"    # I
    .param p4, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    iput p3, p0, Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClientImpl$ErrorCode;->mCode:I

    .line 46
    iput-object p4, p0, Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClientImpl$ErrorCode;->message:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClientImpl$ErrorCode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 33
    const-class v0, Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClientImpl$ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClientImpl$ErrorCode;

    return-object v0
.end method

.method public static blacklist values()[Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClientImpl$ErrorCode;
    .locals 1

    .line 33
    sget-object v0, Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClientImpl$ErrorCode;->$VALUES:[Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClientImpl$ErrorCode;

    invoke-virtual {v0}, [Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClientImpl$ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClientImpl$ErrorCode;

    return-object v0
.end method


# virtual methods
.method public blacklist getCode()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClientImpl$ErrorCode;->mCode:I

    return v0
.end method

.method public blacklist getMessage()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/itgsa/opensdk/roiencode/RoiEncodeUnitClientImpl$ErrorCode;->message:Ljava/lang/String;

    return-object v0
.end method
