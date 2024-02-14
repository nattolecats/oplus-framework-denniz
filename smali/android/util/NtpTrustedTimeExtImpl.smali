.class public Landroid/util/NtpTrustedTimeExtImpl;
.super Ljava/lang/Object;
.source "NtpTrustedTimeExtImpl.java"

# interfaces
.implements Landroid/util/INtpTrustedTimeExt;


# static fields
.field private static final blacklist IS_SUPPORT_OPLUS_NTP_TRUSTED_TIME:Z = false

.field private static final blacklist LOGD:Z = true

.field private static final blacklist TAG:Ljava/lang/String; = "NtpTrustedTimeExtImpl"


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mNtpTrustedTime:Landroid/util/NtpTrustedTime;

.field protected blacklist mOplusNTPserverArray:[Ljava/lang/String;

.field private blacklist mPm:Landroid/content/pm/OplusPackageManager;

.field private blacklist mRefreshNeedReturn:Z


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "base"    # Ljava/lang/Object;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/util/NtpTrustedTimeExtImpl;->mRefreshNeedReturn:Z

    .line 57
    const-string v0, ""

    filled-new-array {v0, v0, v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/util/NtpTrustedTimeExtImpl;->mOplusNTPserverArray:[Ljava/lang/String;

    .line 60
    move-object v0, p1

    check-cast v0, Landroid/util/NtpTrustedTime;

    iput-object v0, p0, Landroid/util/NtpTrustedTimeExtImpl;->mNtpTrustedTime:Landroid/util/NtpTrustedTime;

    .line 61
    return-void
.end method

.method private blacklist foceRefreshForCnRegion(I)Z
    .locals 12
    .param p1, "localTimeout"    # I

    .line 81
    const-string v0, "persist.sys.oplus.region"

    const-string v1, "CN"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 82
    .local v7, "region":Ljava/lang/String;
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "OC"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    :cond_0
    const-string v0, "NtpTrustedTimeExtImpl"

    const-string v2, "foceRefreshForCnRegion, get feature: FEATURE_AUTOTIMEUPDATE_FORCE"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    new-instance v2, Landroid/net/OplusHttpClient;

    invoke-direct {v2}, Landroid/net/OplusHttpClient;-><init>()V

    move-object v8, v2

    .line 85
    .local v8, "oplusHttpClient":Landroid/net/OplusHttpClient;
    iget-object v2, p0, Landroid/util/NtpTrustedTimeExtImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v2, v1, p1}, Landroid/net/OplusHttpClient;->requestTime(Landroid/content/Context;II)Z

    move-result v2

    const-wide/16 v3, 0x2

    const/4 v9, 0x1

    if-eqz v2, :cond_1

    .line 86
    const-string v1, "Use oplus http server algin time success!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {v8}, Landroid/net/OplusHttpClient;->getHttpTime()J

    move-result-wide v1

    .line 88
    invoke-virtual {v8}, Landroid/net/OplusHttpClient;->getHttpTimeReference()J

    move-result-wide v5

    .line 89
    invoke-virtual {v8}, Landroid/net/OplusHttpClient;->getRoundTripTime()J

    move-result-wide v10

    div-long/2addr v10, v3

    .line 87
    move-object v0, p0

    move-wide v3, v5

    move-wide v5, v10

    invoke-direct/range {v0 .. v6}, Landroid/util/NtpTrustedTimeExtImpl;->updateCacheStatus(JJJ)V

    .line 90
    return v9

    .line 94
    :cond_1
    invoke-static {}, Ljava/net/InetAddress;->clearDnsCache()V

    .line 96
    iget-object v2, p0, Landroid/util/NtpTrustedTimeExtImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v2, v9, p1}, Landroid/net/OplusHttpClient;->requestTime(Landroid/content/Context;II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 97
    const-string v1, "Use oplus http server1 algin time success!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-virtual {v8}, Landroid/net/OplusHttpClient;->getHttpTime()J

    move-result-wide v1

    .line 99
    invoke-virtual {v8}, Landroid/net/OplusHttpClient;->getHttpTimeReference()J

    move-result-wide v5

    .line 100
    invoke-virtual {v8}, Landroid/net/OplusHttpClient;->getRoundTripTime()J

    move-result-wide v10

    div-long/2addr v10, v3

    .line 98
    move-object v0, p0

    move-wide v3, v5

    move-wide v5, v10

    invoke-direct/range {v0 .. v6}, Landroid/util/NtpTrustedTimeExtImpl;->updateCacheStatus(JJJ)V

    .line 102
    return v9

    .line 105
    .end local v8    # "oplusHttpClient":Landroid/net/OplusHttpClient;
    :cond_2
    return v1
.end method

.method private blacklist isAutomaticTimeRequested()Z
    .locals 3

    .line 73
    iget-object v0, p0, Landroid/util/NtpTrustedTimeExtImpl;->mContext:Landroid/content/Context;

    .line 74
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 73
    const-string v1, "auto_time"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private blacklist isClosedSuperFirewall()Z
    .locals 1

    .line 182
    iget-object v0, p0, Landroid/util/NtpTrustedTimeExtImpl;->mPm:Landroid/content/pm/OplusPackageManager;

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {v0}, Landroid/content/pm/OplusPackageManager;->isClosedSuperFirewall()Z

    move-result v0

    return v0

    .line 185
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist isSupportOplusNtpTrustedTime()Z
    .locals 1

    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist updateBackupStatus()Ljava/lang/String;
    .locals 1

    .line 177
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist updateCacheStatus(JJJ)V
    .locals 9
    .param p1, "cacheNtpTime"    # J
    .param p3, "cacheNtpElapRealTim"    # J
    .param p5, "cacheNtpCertainty"    # J

    .line 168
    iget-object v0, p0, Landroid/util/NtpTrustedTimeExtImpl;->mNtpTrustedTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v0}, Landroid/util/NtpTrustedTime;->getWrapper()Landroid/util/INtpTrustedTimeWrapper;

    move-result-object v0

    new-instance v8, Landroid/util/NtpTrustedTime$TimeResult;

    move-object v1, v8

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v1 .. v7}, Landroid/util/NtpTrustedTime$TimeResult;-><init>(JJJ)V

    invoke-interface {v0, v8}, Landroid/util/INtpTrustedTimeWrapper;->setTimeResult(Landroid/util/NtpTrustedTime$TimeResult;)V

    .line 170
    return-void
.end method


# virtual methods
.method public blacklist init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 64
    iput-object p1, p0, Landroid/util/NtpTrustedTimeExtImpl;->mContext:Landroid/content/Context;

    .line 66
    new-instance v0, Landroid/content/pm/OplusPackageManager;

    invoke-direct {v0, p1}, Landroid/content/pm/OplusPackageManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/util/NtpTrustedTimeExtImpl;->mPm:Landroid/content/pm/OplusPackageManager;

    .line 67
    const-string v0, "NtpTrustedTimeExtImpl"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-void
.end method

.method public blacklist isRefreshNtpNeedReturn()Z
    .locals 1

    .line 159
    iget-boolean v0, p0, Landroid/util/NtpTrustedTimeExtImpl;->mRefreshNeedReturn:Z

    return v0
.end method

.method public blacklist refreshOplusNtpTrustedTime(Landroid/net/Network;ILjava/lang/String;I)Z
    .locals 20
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "port"    # I
    .param p3, "server"    # Ljava/lang/String;
    .param p4, "localTimeout"    # I

    .line 111
    move-object/from16 v7, p0

    move/from16 v8, p4

    invoke-direct/range {p0 .. p0}, Landroid/util/NtpTrustedTimeExtImpl;->isClosedSuperFirewall()Z

    move-result v0

    const-string v1, "NtpTrustedTimeExtImpl"

    const/4 v2, 0x0

    const/4 v9, 0x1

    if-eqz v0, :cond_0

    .line 112
    const-string v0, "in test."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iput-boolean v2, v7, Landroid/util/NtpTrustedTimeExtImpl;->mRefreshNeedReturn:Z

    .line 114
    return v9

    .line 116
    :cond_0
    invoke-direct/range {p0 .. p0}, Landroid/util/NtpTrustedTimeExtImpl;->isAutomaticTimeRequested()Z

    move-result v0

    if-nez v0, :cond_1

    .line 117
    const-string v0, "Settings.Global.AUTO_TIME = 0"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iput-boolean v9, v7, Landroid/util/NtpTrustedTimeExtImpl;->mRefreshNeedReturn:Z

    .line 119
    return v2

    .line 122
    :cond_1
    invoke-direct {v7, v8}, Landroid/util/NtpTrustedTimeExtImpl;->foceRefreshForCnRegion(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 123
    iput-boolean v9, v7, Landroid/util/NtpTrustedTimeExtImpl;->mRefreshNeedReturn:Z

    .line 124
    return v9

    .line 127
    :cond_2
    invoke-direct/range {p0 .. p0}, Landroid/util/NtpTrustedTimeExtImpl;->isSupportOplusNtpTrustedTime()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 128
    iput-boolean v9, v7, Landroid/util/NtpTrustedTimeExtImpl;->mRefreshNeedReturn:Z

    .line 129
    new-instance v0, Landroid/net/SntpClient;

    invoke-direct {v0}, Landroid/net/SntpClient;-><init>()V

    move-object v10, v0

    .line 130
    .local v10, "client":Landroid/net/SntpClient;
    iget-object v0, v7, Landroid/util/NtpTrustedTimeExtImpl;->mOplusNTPserverArray:[Ljava/lang/String;

    aput-object p3, v0, v2

    .line 131
    array-length v0, v0

    .line 132
    .local v0, "size":I
    invoke-direct/range {p0 .. p0}, Landroid/util/NtpTrustedTimeExtImpl;->updateBackupStatus()Ljava/lang/String;

    move-result-object v11

    .line 133
    .local v11, "backupServer":Ljava/lang/String;
    if-eqz v11, :cond_3

    .line 134
    iget-object v1, v7, Landroid/util/NtpTrustedTimeExtImpl;->mOplusNTPserverArray:[Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v11, v1, v3

    move v12, v0

    goto :goto_0

    .line 136
    :cond_3
    iget-object v1, v7, Landroid/util/NtpTrustedTimeExtImpl;->mOplusNTPserverArray:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    move v12, v0

    .line 138
    .end local v0    # "size":I
    .local v12, "size":I
    :goto_0
    const/4 v0, 0x0

    move v13, v0

    .local v13, "i":I
    :goto_1
    if-ge v13, v12, :cond_6

    .line 139
    const-string v0, "sys.ntp.exception"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    .line 140
    .local v14, "isNtpError":Z
    if-eqz v14, :cond_4

    .line 141
    int-to-long v0, v8

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    move-object/from16 v15, p1

    goto :goto_2

    .line 143
    :cond_4
    iget-object v0, v7, Landroid/util/NtpTrustedTimeExtImpl;->mOplusNTPserverArray:[Ljava/lang/String;

    aget-object v0, v0, v13

    move-object/from16 v15, p1

    move/from16 v5, p2

    invoke-virtual {v10, v0, v5, v8, v15}, Landroid/net/SntpClient;->requestTime(Ljava/lang/String;IILandroid/net/Network;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 144
    invoke-virtual {v10}, Landroid/net/SntpClient;->getNtpTime()J

    move-result-wide v1

    .line 145
    invoke-virtual {v10}, Landroid/net/SntpClient;->getNtpTimeReference()J

    move-result-wide v3

    .line 146
    invoke-virtual {v10}, Landroid/net/SntpClient;->getRoundTripTime()J

    move-result-wide v16

    const-wide/16 v18, 0x2

    div-long v16, v16, v18

    .line 144
    move-object/from16 v0, p0

    move-wide/from16 v5, v16

    invoke-direct/range {v0 .. v6}, Landroid/util/NtpTrustedTimeExtImpl;->updateCacheStatus(JJJ)V

    .line 147
    return v9

    .line 138
    .end local v14    # "isNtpError":Z
    :cond_5
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_6
    move-object/from16 v15, p1

    .line 151
    .end local v13    # "i":I
    return v2

    .line 153
    .end local v10    # "client":Landroid/net/SntpClient;
    .end local v11    # "backupServer":Ljava/lang/String;
    .end local v12    # "size":I
    :cond_7
    move-object/from16 v15, p1

    iput-boolean v2, v7, Landroid/util/NtpTrustedTimeExtImpl;->mRefreshNeedReturn:Z

    .line 154
    return v2
.end method
