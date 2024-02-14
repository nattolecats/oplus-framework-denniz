.class public Landroid/net/wifi/owm/OwmBaseUtils;
.super Ljava/lang/Object;
.source "OwmBaseUtils.java"


# static fields
.field private static final blacklist ARP_PROC_PATH:Ljava/lang/String; = "proc/net/arp"

.field public static final whitelist BAND_24_GHZ_END_FREQ_MHZ:I = 0x9b4

.field public static final whitelist BAND_24_GHZ_FIRST_CH_NUM:I = 0x1

.field public static final whitelist BAND_24_GHZ_LAST_CH_NUM:I = 0xe

.field public static final whitelist BAND_24_GHZ_START_FREQ_MHZ:I = 0x96c

.field public static final whitelist BAND_5_GHZ_END_FREQ_MHZ:I = 0x16fd

.field public static final whitelist BAND_5_GHZ_FIRST_CH_NUM:I = 0x20

.field public static final whitelist BAND_5_GHZ_LAST_CH_NUM:I = 0xb1

.field public static final whitelist BAND_5_GHZ_START_FREQ_MHZ:I = 0x1428

.field public static final whitelist BAND_6_GHZ_END_FREQ_MHZ:I = 0x1bc1

.field public static final whitelist BAND_6_GHZ_FIRST_CH_NUM:I = 0x1

.field public static final whitelist BAND_6_GHZ_LAST_CH_NUM:I = 0xe9

.field public static final whitelist BAND_6_GHZ_START_FREQ_MHZ:I = 0x1739

.field public static final whitelist DEFAULT_PRIMARY_CLIENT_IFNAME:Ljava/lang/String; = "wlan0"

.field private static final blacklist HEX_CODE:[C

.field public static final whitelist IPV4_LEN_FLG:I = 0x3

.field public static final whitelist OWM_COMM_EVENT_ID:Ljava/lang/String; = "OwmHttpMonitor"

.field public static final whitelist RSSI_GOOD_THRED:I = -0x4b

.field public static final whitelist RSSI_MIN:I = -0x64

.field private static final blacklist TAG:Ljava/lang/String; = "OwmBaseUtils"

.field private static volatile blacklist sInstance:Landroid/net/wifi/owm/OwmBaseUtils;


# instance fields
.field private blacklist mBssid:Ljava/lang/String;

.field private blacklist mConnManager:Landroid/net/ConnectivityManager;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mFreq:I

.field private blacklist mGateway:Ljava/lang/String;

.field private blacklist mHandlerThread:Landroid/os/HandlerThread;

.field private blacklist mIpAddr:Ljava/lang/String;

.field private blacklist mOplusNetworkingControlManager:Landroid/net/OplusNetworkingControlManager;

.field private blacklist mPrimaryClientIfname:Ljava/lang/String;

.field private blacklist mRssi:I

.field private blacklist mScreenOn:Z

.field private blacklist mWifiConnected:Z

.field private blacklist mWifiEnabled:Z

.field private blacklist mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private blacklist mWifiSelfCureOngoing:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 75
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Landroid/net/wifi/owm/OwmBaseUtils;->HEX_CODE:[C

    .line 99
    const/4 v0, 0x0

    sput-object v0, Landroid/net/wifi/owm/OwmBaseUtils;->sInstance:Landroid/net/wifi/owm/OwmBaseUtils;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/owm/OwmBaseUtils;->mContext:Landroid/content/Context;

    .line 101
    const/16 v1, -0x64

    iput v1, p0, Landroid/net/wifi/owm/OwmBaseUtils;->mRssi:I

    .line 102
    const/4 v1, -0x1

    iput v1, p0, Landroid/net/wifi/owm/OwmBaseUtils;->mFreq:I

    .line 103
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/wifi/owm/OwmBaseUtils;->mScreenOn:Z

    .line 104
    iput-boolean v1, p0, Landroid/net/wifi/owm/OwmBaseUtils;->mWifiEnabled:Z

    .line 105
    iput-boolean v1, p0, Landroid/net/wifi/owm/OwmBaseUtils;->mWifiConnected:Z

    .line 106
    iput-boolean v1, p0, Landroid/net/wifi/owm/OwmBaseUtils;->mWifiSelfCureOngoing:Z

    .line 107
    iput-object v0, p0, Landroid/net/wifi/owm/OwmBaseUtils;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 108
    iput-object v0, p0, Landroid/net/wifi/owm/OwmBaseUtils;->mIpAddr:Ljava/lang/String;

    .line 109
    iput-object v0, p0, Landroid/net/wifi/owm/OwmBaseUtils;->mGateway:Ljava/lang/String;

    .line 110
    iput-object v0, p0, Landroid/net/wifi/owm/OwmBaseUtils;->mBssid:Ljava/lang/String;

    .line 111
    const-string v1, ""

    iput-object v1, p0, Landroid/net/wifi/owm/OwmBaseUtils;->mPrimaryClientIfname:Ljava/lang/String;

    .line 112
    iput-object v0, p0, Landroid/net/wifi/owm/OwmBaseUtils;->mOplusNetworkingControlManager:Landroid/net/OplusNetworkingControlManager;

    .line 113
    iput-object v0, p0, Landroid/net/wifi/owm/OwmBaseUtils;->mConnManager:Landroid/net/ConnectivityManager;

    .line 114
    iput-object v0, p0, Landroid/net/wifi/owm/OwmBaseUtils;->mHandlerThread:Landroid/os/HandlerThread;

    .line 129
    iput-object p1, p0, Landroid/net/wifi/owm/OwmBaseUtils;->mContext:Landroid/content/Context;

    .line 130
    invoke-static {}, Landroid/net/OplusNetworkingControlManager;->getOplusNetworkingControlManager()Landroid/net/OplusNetworkingControlManager;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/owm/OwmBaseUtils;->mOplusNetworkingControlManager:Landroid/net/OplusNetworkingControlManager;

    .line 132
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "OwmBaseUtils"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/wifi/owm/OwmBaseUtils;->mHandlerThread:Landroid/os/HandlerThread;

    .line 133
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 134
    return-void
.end method

.method public static whitelist getFieldOnObject(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p0, "receiver"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 498
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 499
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 500
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 501
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 502
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 503
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 506
    .end local v0    # "ex":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static whitelist getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmBaseUtils;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 117
    sget-object v0, Landroid/net/wifi/owm/OwmBaseUtils;->sInstance:Landroid/net/wifi/owm/OwmBaseUtils;

    if-nez v0, :cond_1

    .line 118
    const-class v0, Landroid/net/wifi/owm/OwmBaseUtils;

    monitor-enter v0

    .line 119
    :try_start_0
    sget-object v1, Landroid/net/wifi/owm/OwmBaseUtils;->sInstance:Landroid/net/wifi/owm/OwmBaseUtils;

    if-nez v1, :cond_0

    .line 120
    new-instance v1, Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-direct {v1, p0}, Landroid/net/wifi/owm/OwmBaseUtils;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/net/wifi/owm/OwmBaseUtils;->sInstance:Landroid/net/wifi/owm/OwmBaseUtils;

    .line 122
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 125
    :cond_1
    :goto_0
    sget-object v0, Landroid/net/wifi/owm/OwmBaseUtils;->sInstance:Landroid/net/wifi/owm/OwmBaseUtils;

    return-object v0
.end method


# virtual methods
.method public whitelist getBssid()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Landroid/net/wifi/owm/OwmBaseUtils;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-nez v0, :cond_0

    .line 142
    const/4 v0, 0x0

    return-object v0

    .line 145
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCurDateTime()Ljava/lang/String;
    .locals 4

    .line 296
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCurWifiInfo()Landroid/net/wifi/WifiInfo;
    .locals 1

    .line 245
    iget-object v0, p0, Landroid/net/wifi/owm/OwmBaseUtils;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method public whitelist getFreq()I
    .locals 1

    .line 241
    iget v0, p0, Landroid/net/wifi/owm/OwmBaseUtils;->mFreq:I

    return v0
.end method

.method public whitelist getGateway()Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Landroid/net/wifi/owm/OwmBaseUtils;->mGateway:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getGatewayMac()Ljava/lang/String;
    .locals 2

    .line 419
    invoke-virtual {p0}, Landroid/net/wifi/owm/OwmBaseUtils;->getGateway()Ljava/lang/String;

    move-result-object v0

    .line 421
    .local v0, "gateway":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 422
    const/4 v1, 0x0

    return-object v1

    .line 425
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/owm/OwmBaseUtils;->mPrimaryClientIfname:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/owm/OwmBaseUtils;->getMacFromArpProc(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getIpAddr()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Landroid/net/wifi/owm/OwmBaseUtils;->mIpAddr:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getMacFromArpProc(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "ipAddress"    # Ljava/lang/String;
    .param p2, "ifname"    # Ljava/lang/String;

    .line 429
    const-string v0, "OwmBaseUtils"

    if-eqz p1, :cond_7

    if-nez p2, :cond_0

    goto/16 :goto_7

    .line 433
    :cond_0
    const/4 v1, 0x0

    .line 434
    .local v1, "macAddress":Ljava/lang/String;
    const/4 v2, 0x0

    .line 437
    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    const-string v5, "proc/net/arp"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v3

    .line 439
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 441
    .local v3, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    if-eqz v4, :cond_3

    .line 442
    const-string v4, "[ ]+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 444
    .local v4, "tokens":[Ljava/lang/String;
    array-length v5, v4

    const/4 v6, 0x6

    if-ge v5, v6, :cond_1

    .line 445
    goto :goto_0

    .line 450
    :cond_1
    const/4 v5, 0x0

    aget-object v5, v4, v5

    .line 451
    .local v5, "ip":Ljava/lang/String;
    const/4 v6, 0x2

    aget-object v7, v4, v6

    .line 452
    .local v7, "flags":Ljava/lang/String;
    const/4 v8, 0x3

    aget-object v8, v4, v8

    .line 453
    .local v8, "mac":Ljava/lang/String;
    const/4 v9, 0x5

    aget-object v9, v4, v9

    .line 455
    .local v9, "iface":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v7, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/16 v10, 0x10

    invoke-static {v6, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    .line 457
    .local v6, "outFlag":I
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 458
    move-object v1, v8

    .line 459
    goto :goto_1

    .line 461
    .end local v4    # "tokens":[Ljava/lang/String;
    .end local v5    # "ip":Ljava/lang/String;
    .end local v6    # "outFlag":I
    .end local v7    # "flags":Ljava/lang/String;
    .end local v8    # "mac":Ljava/lang/String;
    .end local v9    # "iface":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 463
    :cond_3
    :goto_1
    if-nez v1, :cond_4

    .line 464
    const-string v4, "Did not find remoteAddress in /proc/net/arp"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 470
    .end local v3    # "line":Ljava/lang/String;
    :cond_4
    nop

    .line 471
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 475
    :cond_5
    :goto_2
    goto :goto_3

    .line 473
    :catch_0
    move-exception v0

    .line 476
    goto :goto_3

    .line 469
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 466
    :catch_1
    move-exception v3

    .line 467
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "Could not open /proc/net/arp to lookup mac address"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 470
    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_5

    .line 471
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 478
    :goto_3
    return-object v1

    .line 470
    :goto_4
    if-eqz v2, :cond_6

    .line 471
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_5

    .line 473
    :catch_2
    move-exception v3

    goto :goto_6

    .line 475
    :cond_6
    :goto_5
    nop

    .line 476
    :goto_6
    throw v0

    .line 430
    .end local v1    # "macAddress":Ljava/lang/String;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    :cond_7
    :goto_7
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getNetPolicyFromPkgName(Ljava/lang/String;)I
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 364
    const/4 v0, -0x1

    if-nez p1, :cond_0

    .line 365
    return v0

    .line 368
    :cond_0
    invoke-virtual {p0, p1}, Landroid/net/wifi/owm/OwmBaseUtils;->getUidFromPkgName(Ljava/lang/String;)I

    move-result v1

    .line 370
    .local v1, "uid":I
    if-ne v1, v0, :cond_1

    .line 371
    return v0

    .line 374
    :cond_1
    invoke-virtual {p0, v1}, Landroid/net/wifi/owm/OwmBaseUtils;->getNetPolicyFromUid(I)I

    move-result v0

    return v0
.end method

.method public whitelist getNetPolicyFromUid(I)I
    .locals 1
    .param p1, "uid"    # I

    .line 355
    iget-object v0, p0, Landroid/net/wifi/owm/OwmBaseUtils;->mOplusNetworkingControlManager:Landroid/net/OplusNetworkingControlManager;

    if-nez v0, :cond_0

    .line 356
    const/4 v0, -0x1

    return v0

    .line 359
    :cond_0
    invoke-virtual {v0, p1}, Landroid/net/OplusNetworkingControlManager;->getUidPolicy(I)I

    move-result v0

    .line 360
    .local v0, "policy":I
    return v0
.end method

.method public whitelist getOwmMonitorThread()Landroid/os/HandlerThread;
    .locals 1

    .line 137
    iget-object v0, p0, Landroid/net/wifi/owm/OwmBaseUtils;->mHandlerThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method public whitelist getPkgNameFromUid(I)Ljava/lang/String;
    .locals 4
    .param p1, "uid"    # I

    .line 378
    iget-object v0, p0, Landroid/net/wifi/owm/OwmBaseUtils;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 379
    return-object v1

    .line 383
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 384
    :catch_0
    move-exception v0

    .line 385
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to getPkgNameFromUid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OwmBaseUtils"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    return-object v1
.end method

.method public whitelist getPrimaryClientIfname()Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Landroid/net/wifi/owm/OwmBaseUtils;->mPrimaryClientIfname:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public whitelist getRssi()I
    .locals 1

    .line 220
    iget v0, p0, Landroid/net/wifi/owm/OwmBaseUtils;->mRssi:I

    return v0
.end method

.method public whitelist getTopActivity()Landroid/content/ComponentName;
    .locals 4

    .line 300
    iget-object v0, p0, Landroid/net/wifi/owm/OwmBaseUtils;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 301
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 303
    .local v1, "taskInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 307
    :cond_0
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 309
    .local v3, "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    if-nez v3, :cond_1

    .line 310
    return-object v2

    .line 313
    :cond_1
    iget-object v2, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    return-object v2

    .line 304
    .end local v3    # "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_2
    :goto_0
    return-object v2
.end method

.method public whitelist getTopAppPkgName()Ljava/lang/String;
    .locals 2

    .line 317
    invoke-virtual {p0}, Landroid/net/wifi/owm/OwmBaseUtils;->getTopActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 319
    .local v0, "compName":Landroid/content/ComponentName;
    if-nez v0, :cond_0

    .line 320
    const/4 v1, 0x0

    return-object v1

    .line 323
    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getUidFromPkgName(Ljava/lang/String;)I
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 391
    const/4 v0, -0x1

    if-eqz p1, :cond_1

    iget-object v1, p0, Landroid/net/wifi/owm/OwmBaseUtils;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    goto :goto_0

    .line 396
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 397
    :catch_0
    move-exception v1

    .line 398
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to getUidFromPkgName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OwmBaseUtils"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    return v0

    .line 392
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return v0
.end method

.method public whitelist isConnect24GHz()Z
    .locals 2

    .line 253
    iget v0, p0, Landroid/net/wifi/owm/OwmBaseUtils;->mFreq:I

    const/16 v1, 0x96c

    if-lt v0, v1, :cond_0

    const/16 v1, 0x9b4

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isConnect24GHz(I)Z
    .locals 1
    .param p1, "freq"    # I

    .line 249
    const/16 v0, 0x96c

    if-lt p1, v0, :cond_0

    const/16 v0, 0x9b4

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isConnect5Ghz()Z
    .locals 2

    .line 257
    iget v0, p0, Landroid/net/wifi/owm/OwmBaseUtils;->mFreq:I

    const/16 v1, 0x1428

    if-lt v0, v1, :cond_0

    const/16 v1, 0x16fd

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isConnect6Ghz()Z
    .locals 2

    .line 261
    iget v0, p0, Landroid/net/wifi/owm/OwmBaseUtils;->mFreq:I

    const/16 v1, 0x1739

    if-lt v0, v1, :cond_0

    const/16 v1, 0x1bc1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isGoodRssi()Z
    .locals 2

    .line 224
    iget v0, p0, Landroid/net/wifi/owm/OwmBaseUtils;->mRssi:I

    const/16 v1, -0x4b

    if-le v0, v1, :cond_0

    .line 225
    const/4 v0, 0x1

    return v0

    .line 228
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isIpv4Addr(Ljava/lang/String;)Z
    .locals 2
    .param p1, "ipAddresses"    # Ljava/lang/String;

    .line 265
    if-eqz p1, :cond_0

    const-string v0, "\\d"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 266
    const/4 v0, 0x1

    return v0

    .line 269
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isMtuPorbEnabled()Z
    .locals 4

    .line 405
    :try_start_0
    const-string v0, "/proc/sys/net/ipv4/tcp_mtu_probing"

    .line 406
    .local v0, "mtuProbingFile":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v3, v2}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 408
    .local v1, "mValue":Ljava/lang/String;
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    .line 409
    return v3

    .line 413
    .end local v0    # "mtuProbingFile":Ljava/lang/String;
    .end local v1    # "mValue":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 411
    :catch_0
    move-exception v0

    .line 412
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isMtuPorbEnabled catech Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OwmBaseUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isScreenOn()Z
    .locals 1

    .line 182
    iget-boolean v0, p0, Landroid/net/wifi/owm/OwmBaseUtils;->mScreenOn:Z

    return v0
.end method

.method public whitelist isTopPkgWifiNetLimit()Z
    .locals 4

    .line 327
    invoke-virtual {p0}, Landroid/net/wifi/owm/OwmBaseUtils;->getTopAppPkgName()Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, "topPkgName":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 330
    return v1

    .line 333
    :cond_0
    invoke-virtual {p0, v0}, Landroid/net/wifi/owm/OwmBaseUtils;->getNetPolicyFromPkgName(Ljava/lang/String;)I

    move-result v2

    .line 335
    .local v2, "policyType":I
    const/4 v3, 0x6

    if-eq v2, v3, :cond_2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    goto :goto_0

    .line 341
    :cond_1
    return v1

    .line 338
    :cond_2
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist isWifiConnected()Z
    .locals 1

    .line 212
    iget-boolean v0, p0, Landroid/net/wifi/owm/OwmBaseUtils;->mWifiConnected:Z

    return v0
.end method

.method public whitelist isWifiEnabled()Z
    .locals 1

    .line 190
    iget-boolean v0, p0, Landroid/net/wifi/owm/OwmBaseUtils;->mWifiEnabled:Z

    return v0
.end method

.method public whitelist isWifiSelfCureOngoing()Z
    .locals 1

    .line 198
    iget-boolean v0, p0, Landroid/net/wifi/owm/OwmBaseUtils;->mWifiSelfCureOngoing:Z

    return v0
.end method

.method public whitelist isWlanInterface(I)Z
    .locals 7
    .param p1, "netId"    # I

    .line 273
    iget-object v0, p0, Landroid/net/wifi/owm/OwmBaseUtils;->mConnManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 274
    iget-object v0, p0, Landroid/net/wifi/owm/OwmBaseUtils;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Landroid/net/wifi/owm/OwmBaseUtils;->mConnManager:Landroid/net/ConnectivityManager;

    .line 277
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/owm/OwmBaseUtils;->mConnManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v0

    .line 279
    .local v0, "allNetworks":[Landroid/net/Network;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 280
    return v1

    .line 283
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_3

    .line 284
    aget-object v3, v0, v2

    .line 285
    .local v3, "network":Landroid/net/Network;
    iget-object v4, p0, Landroid/net/wifi/owm/OwmBaseUtils;->mConnManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v4, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 287
    .local v4, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 288
    return v6

    .line 283
    .end local v3    # "network":Landroid/net/Network;
    .end local v4    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 292
    .end local v2    # "i":I
    :cond_3
    return v1
.end method

.method public whitelist iswlan0(Ljava/lang/String;)Z
    .locals 1
    .param p1, "ifName"    # Ljava/lang/String;

    .line 174
    iget-object v0, p0, Landroid/net/wifi/owm/OwmBaseUtils;->mPrimaryClientIfname:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist printHexBinary(Ljava/lang/String;[BII)V
    .locals 4
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "bytes"    # [B
    .param p3, "off"    # I
    .param p4, "len"    # I

    .line 482
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    add-int v0, p3, p4

    array-length v1, p2

    if-le v0, v1, :cond_0

    goto :goto_1

    .line 486
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v1, p4, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 488
    .local v0, "hexStr":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p4, :cond_1

    .line 489
    sget-object v2, Landroid/net/wifi/owm/OwmBaseUtils;->HEX_CODE:[C

    add-int v3, v1, p3

    aget-byte v3, p2, v3

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v2, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 490
    add-int v3, v1, p3

    aget-byte v3, p2, v3

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 488
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 493
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "printHexBinary: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    return-void

    .line 483
    .end local v0    # "hexStr":Ljava/lang/StringBuilder;
    :cond_2
    :goto_1
    return-void
.end method

.method public whitelist setCurWifiInfo(Landroid/net/wifi/WifiInfo;)V
    .locals 1
    .param p1, "wifiInfo"    # Landroid/net/wifi/WifiInfo;

    .line 232
    if-nez p1, :cond_0

    .line 233
    return-void

    .line 236
    :cond_0
    iput-object p1, p0, Landroid/net/wifi/owm/OwmBaseUtils;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 237
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/owm/OwmBaseUtils;->mFreq:I

    .line 238
    return-void
.end method

.method public whitelist setGateway(Ljava/lang/String;)V
    .locals 0
    .param p1, "gateway"    # Ljava/lang/String;

    .line 166
    iput-object p1, p0, Landroid/net/wifi/owm/OwmBaseUtils;->mGateway:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public whitelist setIpAddr(Ljava/lang/String;)V
    .locals 0
    .param p1, "ipAddr"    # Ljava/lang/String;

    .line 158
    iput-object p1, p0, Landroid/net/wifi/owm/OwmBaseUtils;->mIpAddr:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public whitelist setPrimaryClientIfname(Ljava/lang/String;)V
    .locals 2
    .param p1, "ifname"    # Ljava/lang/String;

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPrimaryClientIfname: ifname = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OwmBaseUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iput-object p1, p0, Landroid/net/wifi/owm/OwmBaseUtils;->mPrimaryClientIfname:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public whitelist setRssi(I)V
    .locals 0
    .param p1, "rssi"    # I

    .line 216
    iput p1, p0, Landroid/net/wifi/owm/OwmBaseUtils;->mRssi:I

    .line 217
    return-void
.end method

.method public whitelist setScreenOnState(Z)V
    .locals 0
    .param p1, "isScreenOn"    # Z

    .line 178
    iput-boolean p1, p0, Landroid/net/wifi/owm/OwmBaseUtils;->mScreenOn:Z

    .line 179
    return-void
.end method

.method public whitelist setWifiConnectState(Z)V
    .locals 1
    .param p1, "isConnected"    # Z

    .line 202
    iput-boolean p1, p0, Landroid/net/wifi/owm/OwmBaseUtils;->mWifiConnected:Z

    .line 204
    if-nez p1, :cond_0

    .line 205
    const/16 v0, -0x64

    iput v0, p0, Landroid/net/wifi/owm/OwmBaseUtils;->mRssi:I

    .line 206
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/wifi/owm/OwmBaseUtils;->mFreq:I

    .line 207
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/owm/OwmBaseUtils;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 209
    :cond_0
    return-void
.end method

.method public whitelist setWifiEnabledState(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 186
    iput-boolean p1, p0, Landroid/net/wifi/owm/OwmBaseUtils;->mWifiEnabled:Z

    .line 187
    return-void
.end method

.method public whitelist setWifiSelfCureOngoingState(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 194
    iput-boolean p1, p0, Landroid/net/wifi/owm/OwmBaseUtils;->mWifiSelfCureOngoing:Z

    .line 195
    return-void
.end method
