.class public Landroid/telephony/OplusOSTelephonyManager;
.super Ljava/lang/Object;
.source "OplusOSTelephonyManager.java"


# static fields
.field private static final blacklist CDMA:I = 0x48

.field private static final blacklist EVDO:I = 0x2830

.field private static final blacklist GSM:I = 0x8003

.field private static final blacklist HS:I = 0x4380

.field private static final blacklist LTE:I = 0x41000

.field private static final blacklist NR:I = 0x80000

.field public static final whitelist RAF_1xRTT:I = 0x40

.field public static final whitelist RAF_EDGE:I = 0x2

.field public static final whitelist RAF_EHRPD:I = 0x2000

.field public static final whitelist RAF_EVDO_0:I = 0x10

.field public static final whitelist RAF_EVDO_A:I = 0x20

.field public static final whitelist RAF_EVDO_B:I = 0x800

.field public static final whitelist RAF_GPRS:I = 0x1

.field public static final whitelist RAF_GSM:I = 0x8000

.field public static final whitelist RAF_HSDPA:I = 0x80

.field public static final whitelist RAF_HSPA:I = 0x200

.field public static final whitelist RAF_HSPAP:I = 0x4000

.field public static final whitelist RAF_HSUPA:I = 0x100

.field public static final whitelist RAF_IS95A:I = 0x8

.field public static final whitelist RAF_IS95B:I = 0x8

.field public static final whitelist RAF_LTE:I = 0x1000

.field public static final whitelist RAF_LTE_CA:I = 0x40000

.field public static final whitelist RAF_NR:I = 0x80000

.field public static final whitelist RAF_TD_SCDMA:I = 0x10000

.field public static final whitelist RAF_UMTS:I = 0x4

.field public static final whitelist RAF_UNKNOWN:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "OplusOSTelephonyManager"

.field private static final blacklist WCDMA:I = 0x4384

.field private static blacklist isMtkGeminiSupport:Z

.field private static blacklist isQcomGeminiSupport:Z

.field private static blacklist sInstance:Landroid/telephony/OplusOSTelephonyManager;

.field private static blacklist vDescriptor:Ljava/lang/String;


# instance fields
.field private blacklist mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mIsDualLteSupported:Z

.field private blacklist mIsExpVersion:Z

.field private blacklist mOplusTelephonyManager:Landroid/telephony/OplusTelephonyManager;

.field private blacklist mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 94
    const/4 v0, 0x0

    sput-boolean v0, Landroid/telephony/OplusOSTelephonyManager;->isQcomGeminiSupport:Z

    .line 95
    sput-boolean v0, Landroid/telephony/OplusOSTelephonyManager;->isMtkGeminiSupport:Z

    .line 96
    const-string v0, "com.android.internal.telephony.ITelephony"

    sput-object v0, Landroid/telephony/OplusOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/OplusOSTelephonyManager;->mIsExpVersion:Z

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/OplusOSTelephonyManager;->mIsDualLteSupported:Z

    .line 116
    iput-object p1, p0, Landroid/telephony/OplusOSTelephonyManager;->mContext:Landroid/content/Context;

    .line 117
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/OplusOSTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 118
    invoke-static {p1}, Landroid/telephony/OplusTelephonyManager;->getInstance(Landroid/content/Context;)Landroid/telephony/OplusTelephonyManager;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/OplusOSTelephonyManager;->mOplusTelephonyManager:Landroid/telephony/OplusTelephonyManager;

    .line 119
    invoke-direct {p0}, Landroid/telephony/OplusOSTelephonyManager;->initRemoteService()V

    .line 120
    return-void
.end method

.method private static blacklist getAdjustedRaf(I)I
    .locals 2
    .param p0, "raf"    # I

    .line 1368
    const v0, 0x8003

    and-int v1, p0, v0

    if-lez v1, :cond_0

    or-int/2addr v0, p0

    goto :goto_0

    :cond_0
    move v0, p0

    :goto_0
    move p0, v0

    .line 1369
    and-int/lit16 v0, p0, 0x4384

    if-lez v0, :cond_1

    or-int/lit16 v0, p0, 0x4384

    goto :goto_1

    :cond_1
    move v0, p0

    :goto_1
    move p0, v0

    .line 1370
    and-int/lit8 v0, p0, 0x48

    if-lez v0, :cond_2

    or-int/lit8 v0, p0, 0x48

    goto :goto_2

    :cond_2
    move v0, p0

    :goto_2
    move p0, v0

    .line 1371
    and-int/lit16 v0, p0, 0x2830

    if-lez v0, :cond_3

    or-int/lit16 v0, p0, 0x2830

    goto :goto_3

    :cond_3
    move v0, p0

    :goto_3
    move p0, v0

    .line 1372
    const v0, 0x41000

    and-int v1, p0, v0

    if-lez v1, :cond_4

    or-int/2addr v0, p0

    goto :goto_4

    :cond_4
    move v0, p0

    :goto_4
    move p0, v0

    .line 1373
    const/high16 v0, 0x80000

    and-int v1, p0, v0

    if-lez v1, :cond_5

    or-int/2addr v0, p0

    goto :goto_5

    :cond_5
    move v0, p0

    :goto_5
    move p0, v0

    .line 1375
    return p0
.end method

.method public static whitelist getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .line 1379
    const/4 v0, 0x0

    if-eqz p0, :cond_5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 1384
    :cond_0
    const-string v1, "carrier_config"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    .line 1386
    .local v1, "configManager":Landroid/telephony/CarrierConfigManager;
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    .line 1387
    .local v2, "subIds":[I
    if-eqz v2, :cond_4

    array-length v3, v2

    if-nez v3, :cond_1

    goto :goto_0

    .line 1390
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBooleanCarrierConfig: phoneId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " subId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/OplusOSTelephonyManager;->log(Ljava/lang/String;)V

    .line 1391
    const/4 v3, 0x0

    .line 1392
    .local v3, "b":Landroid/os/PersistableBundle;
    if-eqz v1, :cond_2

    .line 1393
    aget v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v3

    .line 1395
    :cond_2
    if-eqz v3, :cond_3

    .line 1396
    invoke-virtual {v3, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 1399
    :cond_3
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 1388
    .end local v3    # "b":Landroid/os/PersistableBundle;
    :cond_4
    :goto_0
    return v0

    .line 1380
    .end local v1    # "configManager":Landroid/telephony/CarrierConfigManager;
    .end local v2    # "subIds":[I
    :cond_5
    :goto_1
    const-string v1, "getBooleanCarrierConfig return false for context is null or key is null!"

    invoke-static {v1}, Landroid/telephony/OplusOSTelephonyManager;->log(Ljava/lang/String;)V

    .line 1382
    return v0
.end method

.method public static whitelist getDefault(Landroid/content/Context;)Landroid/telephony/OplusOSTelephonyManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 107
    const-class v0, Landroid/telephony/OplusOSTelephonyManager;

    monitor-enter v0

    .line 108
    :try_start_0
    sget-object v1, Landroid/telephony/OplusOSTelephonyManager;->sInstance:Landroid/telephony/OplusOSTelephonyManager;

    if-nez v1, :cond_0

    .line 109
    new-instance v1, Landroid/telephony/OplusOSTelephonyManager;

    invoke-direct {v1, p0}, Landroid/telephony/OplusOSTelephonyManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/telephony/OplusOSTelephonyManager;->sInstance:Landroid/telephony/OplusOSTelephonyManager;

    .line 111
    :cond_0
    sget-object v1, Landroid/telephony/OplusOSTelephonyManager;->sInstance:Landroid/telephony/OplusOSTelephonyManager;

    monitor-exit v0

    return-object v1

    .line 112
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist getITelephony()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .line 472
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getNetworkTypeFromRaf(I)I
    .locals 1
    .param p0, "raf"    # I

    .line 1287
    invoke-static {p0}, Landroid/telephony/OplusOSTelephonyManager;->getAdjustedRaf(I)I

    move-result p0

    .line 1289
    sparse-switch p0, :sswitch_data_0

    .line 1359
    sget v0, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    return v0

    .line 1357
    :sswitch_0
    const/16 v0, 0x21

    return v0

    .line 1355
    :sswitch_1
    const/16 v0, 0x20

    return v0

    .line 1351
    :sswitch_2
    const/16 v0, 0x1e

    return v0

    .line 1353
    :sswitch_3
    const/16 v0, 0x1f

    return v0

    .line 1349
    :sswitch_4
    const/16 v0, 0x1d

    return v0

    .line 1345
    :sswitch_5
    const/16 v0, 0x1b

    return v0

    .line 1343
    :sswitch_6
    const/16 v0, 0x1a

    return v0

    .line 1347
    :sswitch_7
    const/16 v0, 0x1c

    return v0

    .line 1341
    :sswitch_8
    const/16 v0, 0x19

    return v0

    .line 1339
    :sswitch_9
    const/16 v0, 0x18

    return v0

    .line 1337
    :sswitch_a
    const/16 v0, 0x17

    return v0

    .line 1330
    :sswitch_b
    const/16 v0, 0x14

    return v0

    .line 1324
    :sswitch_c
    const/16 v0, 0x11

    return v0

    .line 1328
    :sswitch_d
    const/16 v0, 0x13

    return v0

    .line 1320
    :sswitch_e
    const/16 v0, 0xf

    return v0

    .line 1303
    :sswitch_f
    const/16 v0, 0xa

    return v0

    .line 1335
    :sswitch_10
    const/16 v0, 0x16

    return v0

    .line 1301
    :sswitch_11
    const/16 v0, 0x9

    return v0

    .line 1307
    :sswitch_12
    const/16 v0, 0xc

    return v0

    .line 1299
    :sswitch_13
    const/16 v0, 0x8

    return v0

    .line 1305
    :sswitch_14
    const/16 v0, 0xb

    return v0

    .line 1332
    :sswitch_15
    const/16 v0, 0x15

    return v0

    .line 1326
    :sswitch_16
    const/16 v0, 0x12

    return v0

    .line 1322
    :sswitch_17
    const/16 v0, 0x10

    return v0

    .line 1318
    :sswitch_18
    const/16 v0, 0xe

    return v0

    .line 1316
    :sswitch_19
    const/16 v0, 0xd

    return v0

    .line 1314
    :sswitch_1a
    const/4 v0, 0x7

    return v0

    .line 1291
    :sswitch_1b
    const/4 v0, 0x0

    return v0

    .line 1293
    :sswitch_1c
    const/4 v0, 0x1

    return v0

    .line 1295
    :sswitch_1d
    const/4 v0, 0x2

    return v0

    .line 1297
    :sswitch_1e
    const/4 v0, 0x4

    return v0

    .line 1311
    :sswitch_1f
    const/4 v0, 0x6

    return v0

    .line 1309
    :sswitch_20
    const/4 v0, 0x5

    return v0

    :sswitch_data_0
    .sparse-switch
        0x48 -> :sswitch_20
        0x2830 -> :sswitch_1f
        0x2878 -> :sswitch_1e
        0x4384 -> :sswitch_1d
        0x8003 -> :sswitch_1c
        0xc387 -> :sswitch_1b
        0xc3cf -> :sswitch_1a
        0xebff -> :sswitch_1a
        0x10000 -> :sswitch_19
        0x14384 -> :sswitch_18
        0x18003 -> :sswitch_17
        0x1c387 -> :sswitch_16
        0x1ebff -> :sswitch_15
        0x41000 -> :sswitch_14
        0x43878 -> :sswitch_13
        0x45384 -> :sswitch_12
        0x4d387 -> :sswitch_11
        0x4d3cf -> :sswitch_10
        0x4fbff -> :sswitch_f
        0x51000 -> :sswitch_e
        0x55384 -> :sswitch_d
        0x59003 -> :sswitch_c
        0x5d387 -> :sswitch_b
        0x5fbff -> :sswitch_10
        0x80000 -> :sswitch_a
        0xc1000 -> :sswitch_9
        0xc3878 -> :sswitch_8
        0xc5384 -> :sswitch_7
        0xcd387 -> :sswitch_6
        0xcfbff -> :sswitch_5
        0xd1000 -> :sswitch_4
        0xd5384 -> :sswitch_3
        0xd9003 -> :sswitch_2
        0xdd387 -> :sswitch_1
        0xdfbff -> :sswitch_0
    .end sparse-switch
.end method

.method private static blacklist getRemoteServiceBinder()Landroid/os/IBinder;
    .locals 5

    .line 730
    const/4 v0, 0x1

    .line 731
    .local v0, "vDebugType":I
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 733
    .local v1, "mRemote":Landroid/os/IBinder;
    if-nez v1, :cond_0

    .line 734
    const-string v2, "***********************************"

    invoke-static {v2}, Landroid/telephony/OplusOSTelephonyManager;->log(Ljava/lang/String;)V

    .line 735
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OplusOSTelephonyManager is NULL !!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/OplusOSTelephonyManager;->log(Ljava/lang/String;)V

    .line 736
    invoke-static {v2}, Landroid/telephony/OplusOSTelephonyManager;->log(Ljava/lang/String;)V

    .line 737
    const/4 v2, 0x0

    return-object v2

    .line 740
    :cond_0
    return-object v1
.end method

.method private blacklist getTelecomService()Lcom/android/internal/telecom/ITelecomService;
    .locals 1

    .line 477
    const-string v0, "telecom"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telecom/ITelecomService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    return-object v0
.end method

.method private blacklist initRemoteService()V
    .locals 2

    .line 123
    const/4 v0, 0x1

    sput-boolean v0, Landroid/telephony/OplusOSTelephonyManager;->isQcomGeminiSupport:Z

    .line 124
    const/4 v0, 0x0

    sput-boolean v0, Landroid/telephony/OplusOSTelephonyManager;->isMtkGeminiSupport:Z

    .line 125
    const-string v0, "com.android.internal.telephony.ITelephony"

    sput-object v0, Landroid/telephony/OplusOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    .line 126
    iget-object v0, p0, Landroid/telephony/OplusOSTelephonyManager;->mContext:Landroid/content/Context;

    .line 127
    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    iput-object v0, p0, Landroid/telephony/OplusOSTelephonyManager;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 128
    iget-object v0, p0, Landroid/telephony/OplusOSTelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 129
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_0

    .line 130
    const-string v1, "oplus.version.exp"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/telephony/OplusOSTelephonyManager;->mIsExpVersion:Z

    .line 132
    :cond_0
    return-void
.end method

.method private static blacklist log(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 1059
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "OplusOSTelephonyManager"

    invoke-static {v1, p0, v0}, Landroid/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1060
    return-void
.end method

.method private static blacklist newCellLocationFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Landroid/telephony/CellLocation;
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "cardType"    # Ljava/lang/String;

    .line 937
    const-string v0, "type"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 939
    .local v0, "phoneType":I
    const-string v1, "CSIM"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "RUIM"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 944
    :cond_0
    new-instance v1, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v1, p0}, Landroid/telephony/gsm/GsmCellLocation;-><init>(Landroid/os/Bundle;)V

    return-object v1

    .line 941
    :cond_1
    :goto_0
    new-instance v1, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-direct {v1, p0}, Landroid/telephony/cdma/CdmaCellLocation;-><init>(Landroid/os/Bundle;)V

    return-object v1
.end method

.method public static whitelist oplusgetActiveSubInfoCount(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 954
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCount()I

    move-result v0

    return v0
.end method

.method public static whitelist oplusgetDefaultDataPhoneId(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 1010
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v0

    return v0
.end method

.method public static whitelist oplusgetDefaultDataSubId(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 1015
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 1016
    .local v0, "vRet":I
    return v0
.end method

.method public static whitelist oplusgetDefaultSmsPhoneId(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 1020
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getDefaultSmsPhoneId()I

    move-result v0

    .line 1021
    .local v0, "vRet":I
    return v0
.end method

.method public static whitelist oplusgetDefaultSmsSubId(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 1025
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result v0

    .line 1026
    .local v0, "vRet":I
    return v0
.end method

.method public static whitelist oplusgetDefaultSubId(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1031
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    .line 1032
    .local v0, "vRet":I
    return v0
.end method

.method public static whitelist oplusgetOnDemandDataSubId(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 986
    const/4 v0, -0x1

    return v0
.end method

.method public static whitelist oplusgetPhoneId(Landroid/content/Context;I)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 959
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    return v0
.end method

.method public static whitelist oplusgetSlotId(Landroid/content/Context;I)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .line 978
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v0

    return v0
.end method

.method public static whitelist oplusgetSubId(Landroid/content/Context;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I

    .line 964
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 966
    .local v0, "subId":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 967
    const/4 v1, 0x0

    aget v1, v0, v1

    .local v1, "vRetSubId":I
    goto :goto_0

    .line 970
    .end local v1    # "vRetSubId":I
    :cond_0
    const/16 v1, -0x3e8

    .line 972
    .restart local v1    # "vRetSubId":I
    :goto_0
    return v1
.end method

.method public static whitelist oplusgetSubState(Landroid/content/Context;I)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 994
    const/4 v0, -0x1

    return v0
.end method

.method public static whitelist oplusisValidPhoneId(Landroid/content/Context;I)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I

    .line 998
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    return v0
.end method

.method public static whitelist oplusisValidSlotId(Landroid/content/Context;I)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I

    .line 1002
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v0

    return v0
.end method

.method public static whitelist oplusisValidSubId(Landroid/content/Context;I)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .line 1006
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    return v0
.end method

.method public static whitelist setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .line 1055
    invoke-static {p0, p1}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V

    .line 1056
    return-void
.end method


# virtual methods
.method public whitelist activateSubId(I)V
    .locals 2
    .param p1, "subId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1408
    iget-object v0, p0, Landroid/telephony/OplusOSTelephonyManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/telephony/SubscriptionManager;->setUiccApplicationsEnabled(IZ)V

    .line 1409
    return-void
.end method

.method public whitelist answerRingingCallGemini(I)V
    .locals 2
    .param p1, "subscription"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 502
    :try_start_0
    sget-boolean v0, Landroid/telephony/OplusOSTelephonyManager;->isQcomGeminiSupport:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 503
    invoke-direct {p0}, Landroid/telephony/OplusOSTelephonyManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/OplusOSTelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/ITelecomService;->acceptRingingCall(Ljava/lang/String;)V

    goto :goto_0

    .line 505
    :cond_0
    sget-boolean v0, Landroid/telephony/OplusOSTelephonyManager;->isMtkGeminiSupport:Z

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 508
    :cond_1
    invoke-direct {p0}, Landroid/telephony/OplusOSTelephonyManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/OplusOSTelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/ITelecomService;->acceptRingingCall(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 511
    :catch_0
    move-exception v0

    goto :goto_1

    .line 510
    :catch_1
    move-exception v0

    .line 512
    :goto_0
    nop

    .line 513
    :goto_1
    return-void
.end method

.method public whitelist deactivateSubId(I)V
    .locals 2
    .param p1, "subId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1416
    iget-object v0, p0, Landroid/telephony/OplusOSTelephonyManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/telephony/SubscriptionManager;->setUiccApplicationsEnabled(IZ)V

    .line 1417
    return-void
.end method

.method public whitelist endCallGemini(I)Z
    .locals 4
    .param p1, "slotID"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 485
    const/4 v0, 0x0

    .line 488
    .local v0, "vRet":Z
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusOSTelephonyManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/OplusOSTelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telecom/ITelecomService;->endCall(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 491
    :catch_0
    move-exception v2

    .line 492
    .local v2, "ex":Ljava/lang/NullPointerException;
    return v1

    .line 489
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    .line 490
    .local v2, "ex":Landroid/os/RemoteException;
    return v1
.end method

.method public whitelist getBooleanCarrierConfig(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .line 1249
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1250
    const-string v0, "getBooleanCarrierConfig return false for key is null!"

    invoke-static {v0}, Landroid/telephony/OplusOSTelephonyManager;->log(Ljava/lang/String;)V

    .line 1251
    return v1

    .line 1253
    :cond_0
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 1254
    .local v0, "subIds":[I
    if-eqz v0, :cond_4

    array-length v2, v0

    if-nez v2, :cond_1

    goto :goto_0

    .line 1257
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBooleanCarrierConfig: phoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " subId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/OplusOSTelephonyManager;->log(Ljava/lang/String;)V

    .line 1258
    const/4 v2, 0x0

    .line 1259
    .local v2, "b":Landroid/os/PersistableBundle;
    iget-object v3, p0, Landroid/telephony/OplusOSTelephonyManager;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    if-eqz v3, :cond_2

    .line 1260
    aget v1, v0, v1

    invoke-virtual {v3, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 1262
    :cond_2
    if-eqz v2, :cond_3

    .line 1263
    invoke-virtual {v2, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 1266
    :cond_3
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 1255
    .end local v2    # "b":Landroid/os/PersistableBundle;
    :cond_4
    :goto_0
    return v1
.end method

.method public whitelist getCallStateGemini(I)I
    .locals 4
    .param p1, "slotID"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 173
    const/4 v0, 0x0

    .line 175
    .local v0, "vRet":I
    sget-boolean v1, Landroid/telephony/OplusOSTelephonyManager;->isQcomGeminiSupport:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 176
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 177
    .local v1, "subId":[I
    if-eqz v1, :cond_0

    array-length v3, v1

    if-lez v3, :cond_0

    .line 178
    iget-object v3, p0, Landroid/telephony/OplusOSTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    aget v2, v1, v2

    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result v0

    .line 180
    .end local v1    # "subId":[I
    :cond_0
    goto :goto_0

    .line 181
    :cond_1
    sget-boolean v1, Landroid/telephony/OplusOSTelephonyManager;->isMtkGeminiSupport:Z

    if-ne v1, v3, :cond_2

    goto :goto_0

    .line 184
    :cond_2
    if-nez p1, :cond_3

    .line 185
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 186
    .restart local v1    # "subId":[I
    if-eqz v1, :cond_3

    array-length v3, v1

    if-lez v3, :cond_3

    .line 187
    iget-object v3, p0, Landroid/telephony/OplusOSTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    aget v2, v1, v2

    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result v0

    .line 191
    .end local v1    # "subId":[I
    :cond_3
    :goto_0
    return v0
.end method

.method public whitelist getCellLocation(I)Landroid/telephony/CellLocation;
    .locals 1
    .param p1, "slotId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 933
    iget-object v0, p0, Landroid/telephony/OplusOSTelephonyManager;->mOplusTelephonyManager:Landroid/telephony/OplusTelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/OplusTelephonyManager;->getCellLocation(I)Landroid/telephony/CellLocation;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCurrentPhoneTypeGemini(I)I
    .locals 4
    .param p1, "slotID"    # I

    .line 435
    const/4 v0, 0x0

    .line 437
    .local v0, "vRet":I
    sget-boolean v1, Landroid/telephony/OplusOSTelephonyManager;->isQcomGeminiSupport:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 438
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 439
    .local v1, "subId":[I
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 440
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v1, v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I

    move-result v0

    .line 441
    .end local v1    # "subId":[I
    :cond_0
    goto :goto_0

    .line 442
    :cond_1
    sget-boolean v1, Landroid/telephony/OplusOSTelephonyManager;->isMtkGeminiSupport:Z

    if-ne v1, v2, :cond_2

    goto :goto_0

    .line 445
    :cond_2
    if-nez p1, :cond_3

    .line 446
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    .line 449
    :cond_3
    :goto_0
    return v0
.end method

.method public whitelist getDeviceIdGemini(I)Ljava/lang/String;
    .locals 3
    .param p1, "slotID"    # I

    .line 309
    const/4 v0, 0x0

    .line 311
    .local v0, "vRet":Ljava/lang/String;
    sget-boolean v1, Landroid/telephony/OplusOSTelephonyManager;->isQcomGeminiSupport:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 312
    iget-object v1, p0, Landroid/telephony/OplusOSTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 314
    :cond_0
    sget-boolean v1, Landroid/telephony/OplusOSTelephonyManager;->isMtkGeminiSupport:Z

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 317
    :cond_1
    iget-object v1, p0, Landroid/telephony/OplusOSTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    .line 320
    :goto_0
    return-object v0
.end method

.method public whitelist getIccCardTypeGemini(I)Ljava/lang/String;
    .locals 1
    .param p1, "slotId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 833
    iget-object v0, p0, Landroid/telephony/OplusOSTelephonyManager;->mOplusTelephonyManager:Landroid/telephony/OplusTelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/OplusTelephonyManager;->getIccCardType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getIccOperatorNumeric(I)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1051
    iget-object v0, p0, Landroid/telephony/OplusOSTelephonyManager;->mOplusTelephonyManager:Landroid/telephony/OplusTelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/OplusTelephonyManager;->getOperatorNumericForData(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getLine1NumberGemini(I)Ljava/lang/String;
    .locals 4
    .param p1, "slotID"    # I

    .line 214
    const/4 v0, 0x0

    .line 216
    .local v0, "vRet":Ljava/lang/String;
    sget-boolean v1, Landroid/telephony/OplusOSTelephonyManager;->isQcomGeminiSupport:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 217
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 219
    .local v1, "subId":[I
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 220
    iget-object v2, p0, Landroid/telephony/OplusOSTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v3, 0x0

    aget v3, v1, v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getLine1Number(I)Ljava/lang/String;

    move-result-object v0

    .line 223
    .end local v1    # "subId":[I
    :cond_0
    goto :goto_0

    .line 224
    :cond_1
    sget-boolean v1, Landroid/telephony/OplusOSTelephonyManager;->isMtkGeminiSupport:Z

    if-ne v1, v2, :cond_2

    goto :goto_0

    .line 227
    :cond_2
    iget-object v1, p0, Landroid/telephony/OplusOSTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 230
    :goto_0
    return-object v0
.end method

.method public whitelist getNetworkCountryIso(I)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I

    .line 1036
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getNetworkOperatorGemini(I)Ljava/lang/String;
    .locals 4
    .param p1, "slotID"    # I

    .line 379
    const-string v0, ""

    .line 381
    .local v0, "vRet":Ljava/lang/String;
    sget-boolean v1, Landroid/telephony/OplusOSTelephonyManager;->isQcomGeminiSupport:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 382
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 383
    .local v1, "subId":[I
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 384
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v1, v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getNetworkOperator(I)Ljava/lang/String;

    move-result-object v0

    .line 386
    .end local v1    # "subId":[I
    :cond_0
    goto :goto_0

    .line 387
    :cond_1
    sget-boolean v1, Landroid/telephony/OplusOSTelephonyManager;->isMtkGeminiSupport:Z

    if-ne v1, v2, :cond_2

    goto :goto_0

    .line 390
    :cond_2
    if-nez p1, :cond_3

    .line 391
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    .line 394
    :cond_3
    :goto_0
    return-object v0
.end method

.method public whitelist getNetworkTypeGemini(I)I
    .locals 4
    .param p1, "slotID"    # I

    .line 267
    const/4 v0, 0x0

    .line 269
    .local v0, "vRet":I
    sget-boolean v1, Landroid/telephony/OplusOSTelephonyManager;->isQcomGeminiSupport:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 270
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 272
    .local v1, "subId":[I
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 273
    iget-object v2, p0, Landroid/telephony/OplusOSTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v3, 0x0

    aget v3, v1, v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getNetworkType(I)I

    move-result v0

    .line 275
    .end local v1    # "subId":[I
    :cond_0
    goto :goto_0

    .line 276
    :cond_1
    sget-boolean v1, Landroid/telephony/OplusOSTelephonyManager;->isMtkGeminiSupport:Z

    if-ne v1, v2, :cond_2

    goto :goto_0

    .line 279
    :cond_2
    iget-object v1, p0, Landroid/telephony/OplusOSTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 282
    :goto_0
    return v0
.end method

.method public whitelist getSelectableSubscriptionInfoList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 1281
    iget-object v0, p0, Landroid/telephony/OplusOSTelephonyManager;->mContext:Landroid/content/Context;

    .line 1282
    const-string v1, "telephony_subscription_service"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    .line 1283
    .local v0, "sm":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getSelectableSubscriptionInfoList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getSimOperatorGemini(I)Ljava/lang/String;
    .locals 4
    .param p1, "slotID"    # I

    .line 398
    const-string v0, ""

    .line 400
    .local v0, "vRet":Ljava/lang/String;
    sget-boolean v1, Landroid/telephony/OplusOSTelephonyManager;->isQcomGeminiSupport:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 401
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 402
    .local v1, "subId":[I
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 403
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v1, v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    .line 404
    .end local v1    # "subId":[I
    :cond_0
    goto :goto_0

    .line 405
    :cond_1
    sget-boolean v1, Landroid/telephony/OplusOSTelephonyManager;->isMtkGeminiSupport:Z

    if-ne v1, v2, :cond_2

    goto :goto_0

    .line 408
    :cond_2
    if-nez p1, :cond_3

    .line 409
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 412
    :cond_3
    :goto_0
    return-object v0
.end method

.method public whitelist getSimSerialNumberGemini(I)Ljava/lang/String;
    .locals 4
    .param p1, "slotID"    # I

    .line 453
    const-string v0, ""

    .line 455
    .local v0, "vRet":Ljava/lang/String;
    sget-boolean v1, Landroid/telephony/OplusOSTelephonyManager;->isQcomGeminiSupport:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 456
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 458
    .local v1, "subId":[I
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 459
    iget-object v2, p0, Landroid/telephony/OplusOSTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v3, 0x0

    aget v3, v1, v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v0

    .line 461
    .end local v1    # "subId":[I
    :cond_0
    goto :goto_0

    .line 462
    :cond_1
    sget-boolean v1, Landroid/telephony/OplusOSTelephonyManager;->isMtkGeminiSupport:Z

    if-ne v1, v2, :cond_2

    goto :goto_0

    .line 465
    :cond_2
    iget-object v1, p0, Landroid/telephony/OplusOSTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    .line 468
    :goto_0
    return-object v0
.end method

.method public whitelist getSimStateGemini(I)I
    .locals 3
    .param p1, "slotID"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 235
    const/4 v0, -0x1

    .line 237
    .local v0, "vRet":I
    sget-boolean v1, Landroid/telephony/OplusOSTelephonyManager;->isQcomGeminiSupport:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 238
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    goto :goto_0

    .line 240
    :cond_0
    sget-boolean v1, Landroid/telephony/OplusOSTelephonyManager;->isMtkGeminiSupport:Z

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 243
    :cond_1
    if-nez p1, :cond_2

    .line 244
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 247
    :cond_2
    :goto_0
    return v0
.end method

.method public whitelist getSubState(I)I
    .locals 1
    .param p1, "subId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1424
    iget-object v0, p0, Landroid/telephony/OplusOSTelephonyManager;->mOplusTelephonyManager:Landroid/telephony/OplusTelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/OplusTelephonyManager;->getSubState(I)I

    move-result v0

    return v0
.end method

.method public whitelist getSubscriberIdGemini(I)Ljava/lang/String;
    .locals 4
    .param p1, "slotID"    # I

    .line 150
    const/4 v0, 0x0

    .line 152
    .local v0, "vRet":Ljava/lang/String;
    sget-boolean v1, Landroid/telephony/OplusOSTelephonyManager;->isQcomGeminiSupport:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 153
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 155
    .local v1, "subId":[I
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 156
    iget-object v2, p0, Landroid/telephony/OplusOSTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v3, 0x0

    aget v3, v1, v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    .line 158
    .end local v1    # "subId":[I
    :cond_0
    goto :goto_0

    .line 159
    :cond_1
    sget-boolean v1, Landroid/telephony/OplusOSTelephonyManager;->isMtkGeminiSupport:Z

    if-ne v1, v2, :cond_2

    goto :goto_0

    .line 162
    :cond_2
    iget-object v1, p0, Landroid/telephony/OplusOSTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 165
    :goto_0
    return-object v0
.end method

.method public whitelist getVoiceMailNumberGemini(I)Ljava/lang/String;
    .locals 4
    .param p1, "slotID"    # I

    .line 195
    const/4 v0, 0x0

    .line 197
    .local v0, "vRet":Ljava/lang/String;
    sget-boolean v1, Landroid/telephony/OplusOSTelephonyManager;->isQcomGeminiSupport:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 198
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 200
    .local v1, "subId":[I
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 201
    iget-object v2, p0, Landroid/telephony/OplusOSTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v3, 0x0

    aget v3, v1, v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v0

    .line 203
    .end local v1    # "subId":[I
    :cond_0
    goto :goto_0

    .line 204
    :cond_1
    sget-boolean v1, Landroid/telephony/OplusOSTelephonyManager;->isMtkGeminiSupport:Z

    if-ne v1, v2, :cond_2

    goto :goto_0

    .line 207
    :cond_2
    iget-object v1, p0, Landroid/telephony/OplusOSTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    .line 210
    :goto_0
    return-object v0
.end method

.method public whitelist getVoiceNetworkTypeGemini(I)I
    .locals 4
    .param p1, "slotID"    # I

    .line 416
    const/4 v0, 0x0

    .line 418
    .local v0, "vRet":I
    sget-boolean v1, Landroid/telephony/OplusOSTelephonyManager;->isQcomGeminiSupport:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 419
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 421
    .local v1, "subId":[I
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 422
    iget-object v2, p0, Landroid/telephony/OplusOSTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v3, 0x0

    aget v3, v1, v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType(I)I

    move-result v0

    .line 424
    .end local v1    # "subId":[I
    :cond_0
    goto :goto_0

    .line 425
    :cond_1
    sget-boolean v1, Landroid/telephony/OplusOSTelephonyManager;->isMtkGeminiSupport:Z

    if-ne v1, v2, :cond_2

    goto :goto_0

    .line 428
    :cond_2
    iget-object v1, p0, Landroid/telephony/OplusOSTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v0

    .line 431
    :goto_0
    return v0
.end method

.method public whitelist handlePinMmiForSubscriber(ILjava/lang/String;)Z
    .locals 2
    .param p1, "subId"    # I
    .param p2, "dialString"    # Ljava/lang/String;

    .line 1041
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusOSTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->handlePinMmiForSubscriber(ILjava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1044
    :catch_0
    move-exception v1

    .line 1045
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v0

    .line 1042
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 1043
    .local v1, "ex":Landroid/os/RemoteException;
    return v0
.end method

.method public whitelist hasIccCardGemini(I)Z
    .locals 3
    .param p1, "slotID"    # I

    .line 251
    const/4 v0, 0x0

    .line 253
    .local v0, "vRet":Z
    sget-boolean v1, Landroid/telephony/OplusOSTelephonyManager;->isQcomGeminiSupport:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 254
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v0

    goto :goto_0

    .line 256
    :cond_0
    sget-boolean v1, Landroid/telephony/OplusOSTelephonyManager;->isMtkGeminiSupport:Z

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 259
    :cond_1
    if-nez p1, :cond_2

    .line 260
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    .line 263
    :cond_2
    :goto_0
    return v0
.end method

.method public whitelist isDualLteEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1229
    iget-object v0, p0, Landroid/telephony/OplusOSTelephonyManager;->mOplusTelephonyManager:Landroid/telephony/OplusTelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/OplusTelephonyManager;->isDualLteEnabled()Z

    move-result v0

    return v0
.end method

.method public whitelist isDualLteSupportedByPlatform()Z
    .locals 5

    .line 1233
    iget-boolean v0, p0, Landroid/telephony/OplusOSTelephonyManager;->mIsExpVersion:Z

    if-eqz v0, :cond_4

    .line 1234
    const-string v0, "config_oplus_dual_lte_available_bool"

    .line 1235
    .local v0, "key":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 1236
    .local v1, "defaultValue":Z
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 1237
    invoke-virtual {p0, v0, v3}, Landroid/telephony/OplusOSTelephonyManager;->getBooleanCarrierConfig(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1238
    invoke-virtual {p0, v0, v2}, Landroid/telephony/OplusOSTelephonyManager;->getBooleanCarrierConfig(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iput-boolean v2, p0, Landroid/telephony/OplusOSTelephonyManager;->mIsDualLteSupported:Z

    goto :goto_3

    .line 1240
    :cond_1
    invoke-virtual {p0, v0, v3}, Landroid/telephony/OplusOSTelephonyManager;->getBooleanCarrierConfig(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1241
    invoke-virtual {p0, v0, v2}, Landroid/telephony/OplusOSTelephonyManager;->getBooleanCarrierConfig(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2

    :cond_3
    :goto_1
    nop

    :goto_2
    iput-boolean v2, p0, Landroid/telephony/OplusOSTelephonyManager;->mIsDualLteSupported:Z

    .line 1244
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "defaultValue":Z
    :cond_4
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isDualLteSupportedByPlatform mIsDualLteSupported = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/OplusOSTelephonyManager;->mIsDualLteSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/OplusOSTelephonyManager;->log(Ljava/lang/String;)V

    .line 1245
    iget-boolean v0, p0, Landroid/telephony/OplusOSTelephonyManager;->mIsDualLteSupported:Z

    return v0
.end method

.method public whitelist isIdleGemini(I)Z
    .locals 1
    .param p1, "slotId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1104
    iget-object v0, p0, Landroid/telephony/OplusOSTelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1105
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/telephony/OplusOSTelephonyManager;->isIdleGemini(ILjava/lang/String;)Z

    move-result v0

    return v0

    .line 1107
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist isIdleGemini(ILjava/lang/String;)Z
    .locals 3
    .param p1, "slotID"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 536
    const/4 v0, 0x1

    .line 539
    .local v0, "vRet":Z
    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Landroid/telephony/OplusOSTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isIdle()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 542
    :catch_0
    move-exception v2

    .line 543
    .local v2, "ex":Ljava/lang/Exception;
    return v1

    .line 540
    .end local v2    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 541
    .local v2, "ex":Ljava/lang/NullPointerException;
    return v1
.end method

.method public whitelist isNetworkRoamingGemini(I)Z
    .locals 4
    .param p1, "slotID"    # I

    .line 286
    const/4 v0, 0x0

    .line 288
    .local v0, "vRet":Z
    sget-boolean v1, Landroid/telephony/OplusOSTelephonyManager;->isQcomGeminiSupport:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 289
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 290
    .local v1, "subId":[I
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 291
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v1, v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v0

    .line 293
    .end local v1    # "subId":[I
    :cond_0
    goto :goto_0

    .line 294
    :cond_1
    sget-boolean v1, Landroid/telephony/OplusOSTelephonyManager;->isMtkGeminiSupport:Z

    if-ne v1, v2, :cond_2

    goto :goto_0

    .line 297
    :cond_2
    if-nez p1, :cond_3

    .line 298
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    .line 301
    :cond_3
    :goto_0
    return v0
.end method

.method public whitelist isOffhookGemini(ILjava/lang/String;)Z
    .locals 3
    .param p1, "slotID"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 552
    const/4 v0, 0x0

    .line 555
    .local v0, "vRet":Z
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/telephony/OplusOSTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isOffhook()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 558
    :catch_0
    move-exception v2

    .line 559
    .local v2, "ex":Ljava/lang/Exception;
    return v1

    .line 556
    .end local v2    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 557
    .local v2, "ex":Ljava/lang/NullPointerException;
    return v1
.end method

.method public whitelist isOplusHasSoftSimCard()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1113
    invoke-virtual {p0}, Landroid/telephony/OplusOSTelephonyManager;->oplusGetSoftSimCardSlotId()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isOplusSingleSimCard()Z
    .locals 1

    .line 1163
    invoke-static {}, Landroid/telephony/OplusTelephonyFunction;->oplusGetSingleSimCard()Z

    move-result v0

    return v0
.end method

.method public whitelist isRingingGemini(I)Z
    .locals 1
    .param p1, "slotID"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1076
    iget-object v0, p0, Landroid/telephony/OplusOSTelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1077
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/telephony/OplusOSTelephonyManager;->isRingingGemini(ILjava/lang/String;)Z

    move-result v0

    return v0

    .line 1079
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isRingingGemini(ILjava/lang/String;)Z
    .locals 3
    .param p1, "slotID"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 520
    const/4 v0, 0x0

    .line 523
    .local v0, "vRet":Z
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/telephony/OplusOSTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isRinging()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 526
    :catch_0
    move-exception v2

    .line 527
    .local v2, "ex":Ljava/lang/Exception;
    return v1

    .line 524
    .end local v2    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 525
    .local v2, "ex":Ljava/lang/NullPointerException;
    return v1
.end method

.method public whitelist isSimInsert(I)Z
    .locals 3
    .param p1, "slotID"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 341
    const/4 v0, 0x0

    .line 343
    .local v0, "vRet":Z
    sget-boolean v1, Landroid/telephony/OplusOSTelephonyManager;->isQcomGeminiSupport:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 344
    invoke-virtual {p0, p1}, Landroid/telephony/OplusOSTelephonyManager;->hasIccCardGemini(I)Z

    move-result v0

    goto :goto_0

    .line 346
    :cond_0
    sget-boolean v1, Landroid/telephony/OplusOSTelephonyManager;->isMtkGeminiSupport:Z

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 349
    :cond_1
    if-nez p1, :cond_2

    .line 350
    invoke-virtual {p0, p1}, Landroid/telephony/OplusOSTelephonyManager;->hasIccCardGemini(I)Z

    move-result v0

    .line 353
    :cond_2
    :goto_0
    return v0
.end method

.method public whitelist isUriFileExist(Ljava/lang/String;)Z
    .locals 1
    .param p1, "vUri"    # Ljava/lang/String;

    .line 925
    iget-object v0, p0, Landroid/telephony/OplusOSTelephonyManager;->mOplusTelephonyManager:Landroid/telephony/OplusTelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/OplusTelephonyManager;->isUriFileExist(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist listenGemini(Landroid/content/Context;Landroid/telephony/PhoneStateListener;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/telephony/PhoneStateListener;
    .param p3, "events"    # I
    .param p4, "slotID"    # I

    .line 324
    const/4 v0, 0x0

    .line 325
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-static {p4}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 326
    .local v1, "subIds":[I
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 327
    new-instance v2, Landroid/telephony/TelephonyManager;

    const/4 v3, 0x0

    aget v3, v1, v3

    invoke-direct {v2, p1, v3}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;I)V

    move-object v0, v2

    .line 329
    :cond_0
    if-eqz v0, :cond_1

    .line 330
    invoke-virtual {v0, p2, p3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0

    .line 332
    :cond_1
    const-string v2, "listenGemini ERROR!"

    invoke-static {v2}, Landroid/telephony/OplusOSTelephonyManager;->log(Ljava/lang/String;)V

    .line 334
    :goto_0
    return-void
.end method

.method public whitelist listenGemini(Landroid/telephony/PhoneStateListener;II)V
    .locals 1
    .param p1, "listener"    # Landroid/telephony/PhoneStateListener;
    .param p2, "events"    # I
    .param p3, "slotID"    # I

    .line 1094
    iget-object v0, p0, Landroid/telephony/OplusOSTelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1095
    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/telephony/OplusOSTelephonyManager;->listenGemini(Landroid/content/Context;Landroid/telephony/PhoneStateListener;II)V

    .line 1097
    :cond_0
    return-void
.end method

.method public whitelist oplusGetActiveSubscriptionsCount(Landroid/content/Context;)I
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 694
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCount()I

    move-result v0

    return v0
.end method

.method public whitelist oplusGetDataSubscription()I
    .locals 2

    .line 707
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 708
    .local v0, "vSUBID":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v1

    .line 710
    .local v1, "vSlotID":I
    return v1
.end method

.method public whitelist oplusGetDefaultSubscription()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 702
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    .line 703
    .local v0, "vRet":I
    return v0
.end method

.method public whitelist oplusGetIccCardTypeGemini(I)Ljava/lang/String;
    .locals 3
    .param p1, "slotID"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 361
    const-string v0, ""

    .line 363
    .local v0, "vRet":Ljava/lang/String;
    sget-boolean v1, Landroid/telephony/OplusOSTelephonyManager;->isQcomGeminiSupport:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 365
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/telephony/OplusOSTelephonyManager;->getIccCardTypeGemini(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 368
    :goto_0
    goto :goto_1

    .line 367
    :catch_0
    move-exception v1

    goto :goto_0

    .line 370
    :cond_0
    nop

    .line 375
    :goto_1
    return-object v0
.end method

.method public whitelist oplusGetIccId(I)Ljava/lang/String;
    .locals 3
    .param p1, "slotId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1197
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 1198
    .local v0, "subId":[I
    if-eqz v0, :cond_1

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_0

    .line 1201
    :cond_0
    iget-object v1, p0, Landroid/telephony/OplusOSTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v2, 0x0

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1199
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist oplusGetIccLockEnabled(I)Z
    .locals 1
    .param p1, "slotId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 812
    iget-object v0, p0, Landroid/telephony/OplusOSTelephonyManager;->mOplusTelephonyManager:Landroid/telephony/OplusTelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/OplusTelephonyManager;->oplusGetIccLockEnabled(I)Z

    move-result v0

    return v0
.end method

.method public whitelist oplusGetMeid(I)Ljava/lang/String;
    .locals 1
    .param p1, "subscription"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 918
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist oplusGetOemSpn(I)Ljava/lang/String;
    .locals 1
    .param p1, "slotId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1149
    iget-object v0, p0, Landroid/telephony/OplusOSTelephonyManager;->mOplusTelephonyManager:Landroid/telephony/OplusTelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/OplusTelephonyManager;->getOemSpn(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist oplusGetPlmnOverride(Ljava/lang/String;Landroid/telephony/ServiceState;)Ljava/lang/String;
    .locals 1
    .param p1, "operatorNumic"    # Ljava/lang/String;
    .param p2, "ss"    # Landroid/telephony/ServiceState;

    .line 1141
    iget-object v0, p0, Landroid/telephony/OplusOSTelephonyManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Landroid/telephony/OplusTelephonyFunction;->oplusGetPlmnOverride(Landroid/content/Context;Ljava/lang/String;Landroid/telephony/ServiceState;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist oplusGetQcomActiveSubscriptionsCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 142
    iget-object v0, p0, Landroid/telephony/OplusOSTelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 143
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCount()I

    move-result v0

    return v0

    .line 145
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist oplusGetQcomImeiGemini(I)Ljava/lang/String;
    .locals 1
    .param p1, "subscription"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 869
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist oplusGetQcomLTECDMAImei(I)[Ljava/lang/String;
    .locals 1
    .param p1, "phoneId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 877
    iget-object v0, p0, Landroid/telephony/OplusOSTelephonyManager;->mOplusTelephonyManager:Landroid/telephony/OplusTelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/OplusTelephonyManager;->getLteCdmaImsi(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist oplusGetScAddressGemini(II)Ljava/lang/String;
    .locals 1
    .param p1, "subscription"    # I
    .param p2, "slotId"    # I

    .line 820
    iget-object v0, p0, Landroid/telephony/OplusOSTelephonyManager;->mOplusTelephonyManager:Landroid/telephony/OplusTelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/OplusTelephonyManager;->getScAddressGemini(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist oplusGetSimIndicatorState(I)I
    .locals 1
    .param p1, "subscription"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 748
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist oplusGetSoftSimCardSlotId()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1118
    iget-object v0, p0, Landroid/telephony/OplusOSTelephonyManager;->mOplusTelephonyManager:Landroid/telephony/OplusTelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/OplusTelephonyManager;->getSoftSimCardSlotId()I

    move-result v0

    return v0
.end method

.method public whitelist oplusIsImsRegistered(Landroid/content/Context;I)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "slotId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1134
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 1135
    .local v0, "subId":[I
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    array-length v2, v0

    if-nez v2, :cond_0

    goto :goto_0

    .line 1138
    :cond_0
    iget-object v2, p0, Landroid/telephony/OplusOSTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    aget v1, v0, v1

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->isImsRegistered(I)Z

    move-result v1

    return v1

    .line 1136
    :cond_1
    :goto_0
    return v1
.end method

.method public whitelist oplusIsQcomSubActive(I)Z
    .locals 4
    .param p1, "slotId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1064
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 1065
    .local v0, "subId":[I
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    array-length v2, v0

    if-nez v2, :cond_0

    goto :goto_0

    .line 1068
    :cond_0
    aget v2, v0, v1

    invoke-virtual {p0, v2}, Landroid/telephony/OplusOSTelephonyManager;->getSubState(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    move v1, v3

    :cond_1
    return v1

    .line 1066
    :cond_2
    :goto_0
    return v1
.end method

.method public whitelist oplusIsSubActive(I)Z
    .locals 3
    .param p1, "subscription"    # I

    .line 676
    const/4 v0, 0x0

    .line 678
    .local v0, "vRet":Z
    invoke-virtual {p0, p1}, Landroid/telephony/OplusOSTelephonyManager;->getSimStateGemini(I)I

    move-result v1

    .line 679
    .local v1, "vCardState":I
    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 680
    const/4 v0, 0x1

    goto :goto_0

    .line 683
    :cond_0
    const/4 v0, 0x0

    .line 686
    :goto_0
    return v0
.end method

.method public whitelist oplusIsVolteEnabledByPlatform(Landroid/content/Context;I)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1173
    iget-object v0, p0, Landroid/telephony/OplusOSTelephonyManager;->mOplusTelephonyManager:Landroid/telephony/OplusTelephonyManager;

    invoke-virtual {v0, p2}, Landroid/telephony/OplusTelephonyManager;->isVolteEnabledByPlatform(I)Z

    move-result v0

    return v0
.end method

.method public whitelist oplusIsVtEnabledByPlatform(Landroid/content/Context;I)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1181
    iget-object v0, p0, Landroid/telephony/OplusOSTelephonyManager;->mOplusTelephonyManager:Landroid/telephony/OplusTelephonyManager;

    invoke-virtual {v0, p2}, Landroid/telephony/OplusTelephonyManager;->isVtEnabledByPlatform(I)Z

    move-result v0

    return v0
.end method

.method public whitelist oplusIsWfcEnabledByPlatform(Landroid/content/Context;I)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1189
    iget-object v0, p0, Landroid/telephony/OplusOSTelephonyManager;->mOplusTelephonyManager:Landroid/telephony/OplusTelephonyManager;

    invoke-virtual {v0, p2}, Landroid/telephony/OplusTelephonyManager;->isWfcEnabledByPlatform(I)Z

    move-result v0

    return v0
.end method

.method public whitelist oplusIsWhiteSIMCard(I)Z
    .locals 1
    .param p1, "slotId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 882
    iget-object v0, p0, Landroid/telephony/OplusOSTelephonyManager;->mOplusTelephonyManager:Landroid/telephony/OplusTelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/OplusTelephonyManager;->isTestCard(I)Z

    move-result v0

    return v0
.end method

.method public whitelist oplusMvnoMatches(IILjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "family"    # I
    .param p3, "mvnoType"    # Ljava/lang/String;
    .param p4, "mvnoMatchData"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1157
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist oplusSetDataRoamingEnabled(IZ)V
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "enable"    # Z

    .line 1126
    iget-object v0, p0, Landroid/telephony/OplusOSTelephonyManager;->mOplusTelephonyManager:Landroid/telephony/OplusTelephonyManager;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/OplusTelephonyManager;->setDataRoamingEnabled(IZ)V

    .line 1127
    return-void
.end method

.method public whitelist oplusSetDataSubscription(Landroid/content/Context;I)V
    .locals 3
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "slotId"    # I

    .line 714
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 715
    .local v0, "subId":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 716
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    const/4 v2, 0x0

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    .line 718
    :cond_0
    return-void
.end method

.method public whitelist oplusSetLine1Number(ILjava/lang/String;)Z
    .locals 2
    .param p1, "subscription"    # I
    .param p2, "phoneNumber"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 804
    iget-object v0, p0, Landroid/telephony/OplusOSTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Landroid/telephony/TelephonyManager;->setLine1NumberForDisplay(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist oplusSetPreferredNetworkType(II)I
    .locals 6
    .param p1, "slotID"    # I
    .param p2, "type"    # I

    .line 776
    const/4 v0, 0x0

    .line 779
    .local v0, "vSetPreNetWorkType":Z
    const/4 v1, 0x1

    :try_start_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    .line 780
    .local v2, "subId":[I
    if-eqz v2, :cond_0

    array-length v3, v2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 789
    .end local v2    # "subId":[I
    :cond_0
    goto :goto_0

    .line 787
    :catch_0
    move-exception v2

    .line 788
    .local v2, "ex":Ljava/lang/NullPointerException;
    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const-string v4, "OplusOSTelephonyManager"

    const-string v5, "setPreferredNetworkType NPE"

    invoke-static {v4, v5, v3}, Landroid/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 790
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :goto_0
    if-ne v0, v1, :cond_1

    .line 791
    const/4 v1, 0x0

    .local v1, "_result":I
    goto :goto_1

    .line 794
    .end local v1    # "_result":I
    :cond_1
    const/4 v1, -0x1

    .line 796
    .restart local v1    # "_result":I
    :goto_1
    return v1
.end method

.method public whitelist oplusSetScAddressGemini(ILjava/lang/String;I)V
    .locals 1
    .param p1, "subscription"    # I
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "simId"    # I

    .line 828
    iget-object v0, p0, Landroid/telephony/OplusOSTelephonyManager;->mOplusTelephonyManager:Landroid/telephony/OplusTelephonyManager;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/OplusTelephonyManager;->setScAddressGemini(ILjava/lang/String;)V

    .line 829
    return-void
.end method

.method public whitelist setDualLteEnabled(Z)V
    .locals 6
    .param p1, "enable"    # Z

    .line 1205
    invoke-static {}, Landroid/telephony/OplusOSTelephonyManager;->getRemoteServiceBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1206
    .local v0, "remoteServiceBinder":Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 1207
    const-string v1, "setDualLteEnabled remoteServiceBinder is null, return!"

    invoke-static {v1}, Landroid/telephony/OplusOSTelephonyManager;->log(Ljava/lang/String;)V

    .line 1208
    return-void

    .line 1210
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1211
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1213
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v3, Landroid/telephony/OplusOSTelephonyManager;->vDescriptor:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1214
    const/4 v3, 0x0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1215
    const/16 v4, 0x274e

    invoke-interface {v0, v4, v1, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1216
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1220
    :goto_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1221
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1222
    goto :goto_2

    .line 1220
    :catchall_0
    move-exception v3

    goto :goto_3

    .line 1217
    :catch_0
    move-exception v3

    .line 1218
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setDualLteEnabled ERROR !!! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/OplusOSTelephonyManager;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 1223
    :goto_2
    return-void

    .line 1220
    :goto_3
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1221
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1222
    throw v3
.end method

.method public whitelist showInCallScreenGemini(ZLjava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "showDialpad"    # Z
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;

    .line 578
    const/4 v0, 0x0

    .line 580
    .local v0, "vRet":Z
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusOSTelephonyManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/telecom/ITelecomService;->showInCallScreen(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 581
    const/4 v0, 0x1

    .line 586
    :goto_0
    goto :goto_1

    .line 584
    :catch_0
    move-exception v1

    .line 585
    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .line 582
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 583
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v3, "OplusOSTelephonyManager"

    const-string v4, "Error calling ITelecomService#showInCallScreen"

    invoke-static {v3, v4, v2}, Landroid/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 588
    :goto_1
    return v0
.end method

.method public whitelist silenceRingerGemini(I)V
    .locals 1
    .param p1, "slotID"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1088
    iget-object v0, p0, Landroid/telephony/OplusOSTelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1089
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/telephony/OplusOSTelephonyManager;->silenceRingerGemini(ILjava/lang/String;)V

    .line 1091
    :cond_0
    return-void
.end method

.method public whitelist silenceRingerGemini(ILjava/lang/String;)V
    .locals 4
    .param p1, "slotID"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 569
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusOSTelephonyManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/internal/telecom/ITelecomService;->silenceRinger(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 572
    :catch_0
    move-exception v0

    .line 573
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .line 570
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 571
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v2, "OplusOSTelephonyManager"

    const-string v3, "Error calling ITelecomService#silenceRinger"

    invoke-static {v2, v3, v1}, Landroid/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 574
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 575
    :goto_1
    return-void
.end method

.method public whitelist supplyPin(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "slotID"    # I

    .line 613
    const/4 v0, 0x0

    .line 616
    .local v0, "vRet":Z
    const/4 v1, 0x0

    :try_start_0
    sget-boolean v2, Landroid/telephony/OplusOSTelephonyManager;->isQcomGeminiSupport:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 617
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    .line 618
    .local v2, "subId":[I
    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    .line 619
    invoke-direct {p0}, Landroid/telephony/OplusOSTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    aget v4, v2, v1

    invoke-interface {v3, v4, p1}, Lcom/android/internal/telephony/ITelephony;->supplyPinForSubscriber(ILjava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 620
    :cond_0
    return v0

    .line 622
    .end local v2    # "subId":[I
    :cond_1
    nop

    .line 623
    return v1

    .line 627
    :catch_0
    move-exception v2

    .line 628
    .local v2, "ex":Ljava/lang/NullPointerException;
    return v1

    .line 625
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    .line 626
    .local v2, "ex":Landroid/os/RemoteException;
    return v1
.end method

.method public whitelist supplyPinReportResult(Ljava/lang/String;I)[I
    .locals 4
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "slotID"    # I

    .line 656
    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Landroid/telephony/OplusOSTelephonyManager;->isQcomGeminiSupport:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 657
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 658
    .local v1, "subId":[I
    if-eqz v1, :cond_0

    .line 659
    invoke-direct {p0}, Landroid/telephony/OplusOSTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v1, v3

    invoke-interface {v2, v3, p1}, Lcom/android/internal/telephony/ITelephony;->supplyPinReportResultForSubscriber(ILjava/lang/String;)[I

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 661
    :cond_0
    return-object v0

    .line 663
    .end local v1    # "subId":[I
    :cond_1
    nop

    .line 664
    return-object v0

    .line 668
    :catch_0
    move-exception v1

    .line 669
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v0

    .line 666
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 667
    .local v1, "ex":Landroid/os/RemoteException;
    return-object v0
.end method

.method public whitelist supplyPuk(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 5
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;
    .param p3, "slotID"    # I

    .line 592
    const/4 v0, 0x0

    .line 595
    .local v0, "vRet":Z
    const/4 v1, 0x0

    :try_start_0
    sget-boolean v2, Landroid/telephony/OplusOSTelephonyManager;->isQcomGeminiSupport:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 596
    invoke-static {p3}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    .line 597
    .local v2, "subId":[I
    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    .line 598
    invoke-direct {p0}, Landroid/telephony/OplusOSTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    aget v4, v2, v1

    invoke-interface {v3, v4, p1, p2}, Lcom/android/internal/telephony/ITelephony;->supplyPukForSubscriber(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 600
    :cond_0
    return v0

    .line 601
    .end local v2    # "subId":[I
    :cond_1
    nop

    .line 602
    return v1

    .line 606
    :catch_0
    move-exception v2

    .line 607
    .local v2, "ex":Ljava/lang/NullPointerException;
    return v1

    .line 604
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    .line 605
    .local v2, "ex":Landroid/os/RemoteException;
    return v1
.end method

.method public whitelist supplyPukReportResult(Ljava/lang/String;Ljava/lang/String;I)[I
    .locals 4
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;
    .param p3, "slotID"    # I

    .line 635
    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Landroid/telephony/OplusOSTelephonyManager;->isQcomGeminiSupport:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 636
    invoke-static {p3}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 637
    .local v1, "subId":[I
    if-eqz v1, :cond_0

    .line 638
    invoke-direct {p0}, Landroid/telephony/OplusOSTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v1, v3

    invoke-interface {v2, v3, p1, p2}, Lcom/android/internal/telephony/ITelephony;->supplyPukReportResultForSubscriber(ILjava/lang/String;Ljava/lang/String;)[I

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 640
    :cond_0
    return-object v0

    .line 643
    .end local v1    # "subId":[I
    :cond_1
    nop

    .line 644
    return-object v0

    .line 648
    :catch_0
    move-exception v1

    .line 649
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v0

    .line 646
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 647
    .local v1, "ex":Landroid/os/RemoteException;
    return-object v0
.end method
