.class public final enum Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;
.super Ljava/lang/Enum;
.source "OplusTelephonyConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/OplusTelephonyConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ApCmd2ModemType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;

.field public static final enum whitelist AP_2_MODEM_DISABLE_TUNER_ACL:Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;

.field public static final enum whitelist AP_2_MODEM_GET_ANTENNA_POS:Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;

.field public static final enum whitelist AP_2_MODEM_MAX_CMD:Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;

.field public static final enum whitelist AP_2_MODEM_NV_BACKUP:Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;

.field public static final enum whitelist AP_2_MODEM_NV_CHECK:Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;

.field public static final enum whitelist AP_2_MODEM_NV_MISC_INFO:Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;

.field public static final enum whitelist AP_2_MODEM_NV_READ_ADRC_CONFIG:Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;

.field public static final enum whitelist AP_2_MODEM_NV_RESTORE:Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;

.field public static final enum whitelist AP_2_MODEM_NV_WRITE_ADRC_CONFIG:Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;

.field public static final enum whitelist AP_2_MODEM_OEM_GET_DSI:Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;

.field public static final enum whitelist AP_2_MODEM_OEM_GET_MCC:Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;

.field public static final enum whitelist AP_2_MODEM_OEM_GET_NR_BAND_LOCK:Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;

.field public static final enum whitelist AP_2_MODEM_OEM_GET_SAR_STATE:Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;

.field public static final enum whitelist AP_2_MODEM_OEM_GET_SIMLOCK_CATEGORY_DATA:Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;

.field public static final enum whitelist AP_2_MODEM_OEM_GET_SIMLOCK_FUSE_STATUS:Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;

.field public static final enum whitelist AP_2_MODEM_OEM_GET_SIMLOCK_RSU_MODE:Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;

.field public static final enum whitelist AP_2_MODEM_OEM_GET_SIMLOCK_STATUS:Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;

.field public static final enum whitelist AP_2_MODEM_OEM_SET_BAR_CELL_INFO:Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;

.field public static final enum whitelist AP_2_MODEM_OEM_SET_DSI:Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;

.field public static final enum whitelist AP_2_MODEM_OEM_SET_MCC:Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;

.field public static final enum whitelist AP_2_MODEM_OEM_SET_NR_BAND_LOCK:Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;

.field public static final enum whitelist AP_2_MODEM_OEM_SET_NR_STATE:Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;

.field public static final enum whitelist AP_2_MODEM_OEM_SET_SAR_STATE:Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;

.field public static final enum whitelist AP_2_MODEM_OEM_SET_SSR:Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;

.field public static final enum whitelist AP_2_MODEM_SAR_FUC_OPERATOR:Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;

.field public static final enum whitelist AP_2_MODEM_SAR_SENSOR_OPERATE:Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;

.field public static final enum whitelist AP_2_MODEM_SET_ANTENNA:Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;


# instance fields
.field private blacklist value:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 30

    .line 351
    new-instance v0, Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;

    const-string v1, "AP_2_MODEM_NV_BACKUP"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;->AP_2_MODEM_NV_BACKUP:Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;

    .line 352
    new-instance v1, Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;

    const-string v2, "AP_2_MODEM_NV_RESTORE"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;->AP_2_MODEM_NV_RESTORE:Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;

    .line 353
    new-instance v2, Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;

    const-string v5, "AP_2_MODEM_NV_CHECK"

    const/4 v6, 0x3

    invoke-direct {v2, v5, v4, v6}, Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;->AP_2_MODEM_NV_CHECK:Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;

    .line 354
    new-instance v5, Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;

    const-string v7, "AP_2_MODEM_SET_ANTENNA"

    const/4 v8, 0x4

    invoke-direct {v5, v7, v6, v8}, Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;->AP_2_MODEM_SET_ANTENNA:Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;

    .line 355
    new-instance v7, Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;

    const-string v9, "AP_2_MODEM_GET_ANTENNA_POS"

    const/4 v10, 0x5

    invoke-direct {v7, v9, v8, v10}, Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;->AP_2_MODEM_GET_ANTENNA_POS:Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;

    .line 356
    new-instance v9, Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;

    const-string v11, "AP_2_MODEM_DISABLE_TUNER_ACL"

    const/4 v12, 0x6

    invoke-direct {v9, v11, v10, v12}, Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;->AP_2_MODEM_DISABLE_TUNER_ACL:Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;

    .line 357
    new-instance v11, Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;

    const-string v13, "AP_2_MODEM_SAR_SENSOR_OPERATE"

    const/4 v14, 0x7

    invoke-direct {v11, v13, v12, v14}, Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;->AP_2_MODEM_SAR_SENSOR_OPERATE:Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;

    .line 358
    new-instance v13, Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;

    const-string v15, "AP_2_MODEM_SAR_FUC_OPERATOR"

    const/16 v12, 0x8

    invoke-direct {v13, v15, v14, v12}, Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;->AP_2_MODEM_SAR_FUC_OPERATOR:Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;

    .line 359
    new-instance v15, Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;

    const-string v14, "AP_2_MODEM_OEM_SET_MCC"

    const/16 v10, 0x9

    invoke-direct {v15, v14, v12, v10}, Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;-><init>(Ljava/lang/String;II)V

    sput-object v15, Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;->AP_2_MODEM_OEM_SET_MCC:Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;

    .line 360
    new-instance v14, Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;

    const-string v12, "AP_2_MODEM_OEM_GET_MCC"

    const/16 v8, 0xa

    invoke-direct {v14, v12, v10, v8}, Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;-><init>(Ljava/lang/String;II)V

    sput-object v14, Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;->AP_2_MODEM_OEM_GET_MCC:Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;

    .line 361
    new-instance v12, Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;

    const-string v10, "AP_2_MODEM_OEM_SET_DSI"

    const/16 v6, 0xb

    invoke-direct {v12, v10, v8, v6}, Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;-><init>(Ljava/lang/String;II)V

    sput-object v12, Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;->AP_2_MODEM_OEM_SET_DSI:Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;

    .line 362
    new-instance v10, Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;

    const-string v8, "AP_2_MODEM_OEM_GET_DSI"

    const/16 v4, 0xc

    invoke-direct {v10, v8, v6, v4}, Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;-><init>(Ljava/lang/String;II)V

    sput-object v10, Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;->AP_2_MODEM_OEM_GET_DSI:Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;

    .line 363
    new-instance v8, Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;

    const-string v6, "AP_2_MODEM_OEM_SET_SSR"

    const/16 v3, 0xd

    invoke-direct {v8, v6, v4, v3}, Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;->AP_2_MODEM_OEM_SET_SSR:Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;

    .line 364
    new-instance v6, Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;

    const-string v4, "AP_2_MODEM_OEM_GET_NR_BAND_LOCK"

    move-object/from16 v16, v8

    const/16 v8, 0xe

    invoke-direct {v6, v4, v3, v8}, Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;->AP_2_MODEM_OEM_GET_NR_BAND_LOCK:Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;

    .line 365
    new-instance v4, Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;

    const-string v3, "AP_2_MODEM_OEM_SET_NR_BAND_LOCK"

    move-object/from16 v17, v6

    const/16 v6, 0xf

    invoke-direct {v4, v3, v8, v6}, Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;->AP_2_MODEM_OEM_SET_NR_BAND_LOCK:Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;

    .line 366
    new-instance v3, Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;

    const-string v8, "AP_2_MODEM_OEM_SET_BAR_CELL_INFO"

    move-object/from16 v18, v4

    const/16 v4, 0x10

    invoke-direct {v3, v8, v6, v4}, Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;->AP_2_MODEM_OEM_SET_BAR_CELL_INFO:Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;

    .line 367
    new-instance v8, Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;

    const-string v6, "AP_2_MODEM_OEM_SET_NR_STATE"

    move-object/from16 v19, v3

    const/16 v3, 0x11

    invoke-direct {v8, v6, v4, v3}, Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;->AP_2_MODEM_OEM_SET_NR_STATE:Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;

    .line 368
    new-instance v6, Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;

    const-string v4, "AP_2_MODEM_OEM_SET_SAR_STATE"

    move-object/from16 v20, v8

    const/16 v8, 0x12

    invoke-direct {v6, v4, v3, v8}, Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;->AP_2_MODEM_OEM_SET_SAR_STATE:Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;

    .line 369
    new-instance v4, Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;

    const-string v3, "AP_2_MODEM_OEM_GET_SAR_STATE"

    move-object/from16 v21, v6

    const/16 v6, 0x13

    invoke-direct {v4, v3, v8, v6}, Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;->AP_2_MODEM_OEM_GET_SAR_STATE:Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;

    .line 370
    new-instance v3, Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;

    const-string v8, "AP_2_MODEM_NV_MISC_INFO"

    move-object/from16 v22, v4

    const/16 v4, 0x14

    invoke-direct {v3, v8, v6, v4}, Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;->AP_2_MODEM_NV_MISC_INFO:Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;

    .line 371
    new-instance v8, Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;

    const-string v6, "AP_2_MODEM_NV_WRITE_ADRC_CONFIG"

    move-object/from16 v23, v3

    const/16 v3, 0x15

    invoke-direct {v8, v6, v4, v3}, Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;->AP_2_MODEM_NV_WRITE_ADRC_CONFIG:Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;

    .line 372
    new-instance v6, Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;

    const-string v4, "AP_2_MODEM_NV_READ_ADRC_CONFIG"

    move-object/from16 v24, v8

    const/16 v8, 0x16

    invoke-direct {v6, v4, v3, v8}, Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;->AP_2_MODEM_NV_READ_ADRC_CONFIG:Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;

    .line 373
    new-instance v4, Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;

    const-string v3, "AP_2_MODEM_OEM_GET_SIMLOCK_STATUS"

    move-object/from16 v25, v6

    const/16 v6, 0x17

    invoke-direct {v4, v3, v8, v6}, Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;->AP_2_MODEM_OEM_GET_SIMLOCK_STATUS:Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;

    .line 374
    new-instance v3, Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;

    const-string v6, "AP_2_MODEM_OEM_GET_SIMLOCK_CATEGORY_DATA"

    const/16 v8, 0x17

    move-object/from16 v26, v4

    const/16 v4, 0x18

    invoke-direct {v3, v6, v8, v4}, Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;->AP_2_MODEM_OEM_GET_SIMLOCK_CATEGORY_DATA:Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;

    .line 375
    new-instance v4, Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;

    const-string v6, "AP_2_MODEM_OEM_GET_SIMLOCK_FUSE_STATUS"

    const/16 v8, 0x18

    move-object/from16 v27, v3

    const/16 v3, 0x19

    invoke-direct {v4, v6, v8, v3}, Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;->AP_2_MODEM_OEM_GET_SIMLOCK_FUSE_STATUS:Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;

    .line 376
    new-instance v3, Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;

    const-string v6, "AP_2_MODEM_OEM_GET_SIMLOCK_RSU_MODE"

    const/16 v8, 0x19

    move-object/from16 v28, v4

    const/16 v4, 0x1a

    invoke-direct {v3, v6, v8, v4}, Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;->AP_2_MODEM_OEM_GET_SIMLOCK_RSU_MODE:Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;

    .line 378
    new-instance v4, Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;

    const-string v6, "AP_2_MODEM_MAX_CMD"

    const/16 v8, 0x1a

    move-object/from16 v29, v3

    const v3, 0x7fffffff

    invoke-direct {v4, v6, v8, v3}, Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;->AP_2_MODEM_MAX_CMD:Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;

    .line 350
    const/16 v3, 0x1b

    new-array v3, v3, [Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;

    const/4 v6, 0x0

    aput-object v0, v3, v6

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    const/4 v0, 0x3

    aput-object v5, v3, v0

    const/4 v0, 0x4

    aput-object v7, v3, v0

    const/4 v0, 0x5

    aput-object v9, v3, v0

    const/4 v0, 0x6

    aput-object v11, v3, v0

    const/4 v0, 0x7

    aput-object v13, v3, v0

    const/16 v0, 0x8

    aput-object v15, v3, v0

    const/16 v0, 0x9

    aput-object v14, v3, v0

    const/16 v0, 0xa

    aput-object v12, v3, v0

    const/16 v0, 0xb

    aput-object v10, v3, v0

    const/16 v0, 0xc

    aput-object v16, v3, v0

    const/16 v0, 0xd

    aput-object v17, v3, v0

    const/16 v0, 0xe

    aput-object v18, v3, v0

    const/16 v0, 0xf

    aput-object v19, v3, v0

    const/16 v0, 0x10

    aput-object v20, v3, v0

    const/16 v0, 0x11

    aput-object v21, v3, v0

    const/16 v0, 0x12

    aput-object v22, v3, v0

    const/16 v0, 0x13

    aput-object v23, v3, v0

    const/16 v0, 0x14

    aput-object v24, v3, v0

    const/16 v0, 0x15

    aput-object v25, v3, v0

    const/16 v0, 0x16

    aput-object v26, v3, v0

    const/16 v0, 0x17

    aput-object v27, v3, v0

    const/16 v0, 0x18

    aput-object v28, v3, v0

    const/16 v0, 0x19

    aput-object v29, v3, v0

    const/16 v0, 0x1a

    aput-object v4, v3, v0

    sput-object v3, Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;->$VALUES:[Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;

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

    .line 383
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 380
    const/4 p1, 0x0

    iput p1, p0, Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;->value:I

    .line 384
    iput p3, p0, Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;->value:I

    .line 385
    return-void
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 350
    const-class v0, Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;

    return-object v0
.end method

.method public static whitelist values()[Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;
    .locals 1

    .line 350
    sget-object v0, Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;->$VALUES:[Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;

    invoke-virtual {v0}, [Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;

    return-object v0
.end method


# virtual methods
.method public blacklist value()I
    .locals 1

    .line 389
    iget v0, p0, Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;->value:I

    return v0
.end method
