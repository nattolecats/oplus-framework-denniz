.class public final enum Landroid/telephony/OplusTelephonyConstant$ApCmd2QcrilType;
.super Ljava/lang/Enum;
.source "OplusTelephonyConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/OplusTelephonyConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ApCmd2QcrilType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/telephony/OplusTelephonyConstant$ApCmd2QcrilType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/telephony/OplusTelephonyConstant$ApCmd2QcrilType;

.field public static final enum whitelist QCRILHOOK_E_NONE:Landroid/telephony/OplusTelephonyConstant$ApCmd2QcrilType;

.field public static final enum whitelist QCRILHOOK_GET_NR_INFO:Landroid/telephony/OplusTelephonyConstant$ApCmd2QcrilType;

.field public static final enum whitelist QCRILHOOK_MAX_CMD:Landroid/telephony/OplusTelephonyConstant$ApCmd2QcrilType;

.field public static final enum whitelist QCRILHOOK_SET_5G_BAND_PREF:Landroid/telephony/OplusTelephonyConstant$ApCmd2QcrilType;

.field public static final enum whitelist QCRILHOOK_SET_MODEM_ENDC_FEATURE:Landroid/telephony/OplusTelephonyConstant$ApCmd2QcrilType;

.field public static final enum whitelist QCRILHOOK_SET_NR_5G_CDRX_CMD:Landroid/telephony/OplusTelephonyConstant$ApCmd2QcrilType;

.field public static final enum whitelist QCRILHOOL_RESET_IMS_REG_TIMER:Landroid/telephony/OplusTelephonyConstant$ApCmd2QcrilType;


# instance fields
.field private blacklist value:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 16

    .line 394
    new-instance v0, Landroid/telephony/OplusTelephonyConstant$ApCmd2QcrilType;

    const-string v1, "QCRILHOOK_E_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/telephony/OplusTelephonyConstant$ApCmd2QcrilType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/telephony/OplusTelephonyConstant$ApCmd2QcrilType;->QCRILHOOK_E_NONE:Landroid/telephony/OplusTelephonyConstant$ApCmd2QcrilType;

    .line 395
    new-instance v1, Landroid/telephony/OplusTelephonyConstant$ApCmd2QcrilType;

    const-string v3, "QCRILHOOK_SET_NR_5G_CDRX_CMD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Landroid/telephony/OplusTelephonyConstant$ApCmd2QcrilType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroid/telephony/OplusTelephonyConstant$ApCmd2QcrilType;->QCRILHOOK_SET_NR_5G_CDRX_CMD:Landroid/telephony/OplusTelephonyConstant$ApCmd2QcrilType;

    .line 396
    new-instance v3, Landroid/telephony/OplusTelephonyConstant$ApCmd2QcrilType;

    const-string v5, "QCRILHOOK_GET_NR_INFO"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Landroid/telephony/OplusTelephonyConstant$ApCmd2QcrilType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Landroid/telephony/OplusTelephonyConstant$ApCmd2QcrilType;->QCRILHOOK_GET_NR_INFO:Landroid/telephony/OplusTelephonyConstant$ApCmd2QcrilType;

    .line 397
    new-instance v5, Landroid/telephony/OplusTelephonyConstant$ApCmd2QcrilType;

    const-string v7, "QCRILHOOK_SET_5G_BAND_PREF"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Landroid/telephony/OplusTelephonyConstant$ApCmd2QcrilType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Landroid/telephony/OplusTelephonyConstant$ApCmd2QcrilType;->QCRILHOOK_SET_5G_BAND_PREF:Landroid/telephony/OplusTelephonyConstant$ApCmd2QcrilType;

    .line 398
    new-instance v7, Landroid/telephony/OplusTelephonyConstant$ApCmd2QcrilType;

    const-string v9, "QCRILHOOK_SET_MODEM_ENDC_FEATURE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Landroid/telephony/OplusTelephonyConstant$ApCmd2QcrilType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Landroid/telephony/OplusTelephonyConstant$ApCmd2QcrilType;->QCRILHOOK_SET_MODEM_ENDC_FEATURE:Landroid/telephony/OplusTelephonyConstant$ApCmd2QcrilType;

    .line 399
    new-instance v9, Landroid/telephony/OplusTelephonyConstant$ApCmd2QcrilType;

    const-string v11, "QCRILHOOL_RESET_IMS_REG_TIMER"

    const/4 v12, 0x5

    const/16 v13, 0x16

    invoke-direct {v9, v11, v12, v13}, Landroid/telephony/OplusTelephonyConstant$ApCmd2QcrilType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Landroid/telephony/OplusTelephonyConstant$ApCmd2QcrilType;->QCRILHOOL_RESET_IMS_REG_TIMER:Landroid/telephony/OplusTelephonyConstant$ApCmd2QcrilType;

    .line 400
    new-instance v11, Landroid/telephony/OplusTelephonyConstant$ApCmd2QcrilType;

    const-string v13, "QCRILHOOK_MAX_CMD"

    const/4 v14, 0x6

    const v15, 0x7fffffff

    invoke-direct {v11, v13, v14, v15}, Landroid/telephony/OplusTelephonyConstant$ApCmd2QcrilType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Landroid/telephony/OplusTelephonyConstant$ApCmd2QcrilType;->QCRILHOOK_MAX_CMD:Landroid/telephony/OplusTelephonyConstant$ApCmd2QcrilType;

    .line 393
    const/4 v13, 0x7

    new-array v13, v13, [Landroid/telephony/OplusTelephonyConstant$ApCmd2QcrilType;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Landroid/telephony/OplusTelephonyConstant$ApCmd2QcrilType;->$VALUES:[Landroid/telephony/OplusTelephonyConstant$ApCmd2QcrilType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 405
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 402
    const/4 p1, 0x0

    iput p1, p0, Landroid/telephony/OplusTelephonyConstant$ApCmd2QcrilType;->value:I

    .line 406
    iput p3, p0, Landroid/telephony/OplusTelephonyConstant$ApCmd2QcrilType;->value:I

    .line 407
    return-void
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Landroid/telephony/OplusTelephonyConstant$ApCmd2QcrilType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 393
    const-class v0, Landroid/telephony/OplusTelephonyConstant$ApCmd2QcrilType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/telephony/OplusTelephonyConstant$ApCmd2QcrilType;

    return-object v0
.end method

.method public static whitelist values()[Landroid/telephony/OplusTelephonyConstant$ApCmd2QcrilType;
    .locals 1

    .line 393
    sget-object v0, Landroid/telephony/OplusTelephonyConstant$ApCmd2QcrilType;->$VALUES:[Landroid/telephony/OplusTelephonyConstant$ApCmd2QcrilType;

    invoke-virtual {v0}, [Landroid/telephony/OplusTelephonyConstant$ApCmd2QcrilType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/telephony/OplusTelephonyConstant$ApCmd2QcrilType;

    return-object v0
.end method


# virtual methods
.method public blacklist value()I
    .locals 1

    .line 411
    iget v0, p0, Landroid/telephony/OplusTelephonyConstant$ApCmd2QcrilType;->value:I

    return v0
.end method
