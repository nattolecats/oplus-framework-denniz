.class public Landroid/net/wifi/owm/OwmRouterMonitor;
.super Ljava/lang/Object;
.source "OwmRouterMonitor.java"

# interfaces
.implements Landroid/net/wifi/owm/IOwmMonitorCommon;
.implements Landroid/net/wifi/owm/IOwmNetHealthCommon;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/owm/OwmRouterMonitor$AsyncHandler;
    }
.end annotation


# static fields
.field private static final blacklist MSG_ADD_ROUTER_INFO:I = 0x1

.field private static final blacklist MSG_BASE:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "OwmRouterMonitor"

.field private static volatile blacklist sInstance:Landroid/net/wifi/owm/OwmRouterMonitor;


# instance fields
.field private blacklist mApName:Ljava/lang/String;

.field private blacklist mAsyncHandler:Landroid/os/Handler;

.field private blacklist mBrcLimitEvtCnt:I

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mIs1x1IOTAp:Z

.field private blacklist mIsBrcLimitAp:Z

.field private blacklist mIsMetredAp:Z

.field private blacklist mIsNetLimitAp:Z

.field private blacklist mIsSpeedLimitAp:Z

.field private blacklist mNetLimitEvtCnt:I

.field private blacklist mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

.field private blacklist mSpeedLimitEvtCnt:I

.field private blacklist mVerboseLoggingEnabled:Z

.field private blacklist mWifiConnected:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$mlogD(Landroid/net/wifi/owm/OwmRouterMonitor;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/owm/OwmRouterMonitor;->logD(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 42
    const/4 v0, 0x0

    sput-object v0, Landroid/net/wifi/owm/OwmRouterMonitor;->sInstance:Landroid/net/wifi/owm/OwmRouterMonitor;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/owm/OwmRouterMonitor;->mContext:Landroid/content/Context;

    .line 44
    iput-object v0, p0, Landroid/net/wifi/owm/OwmRouterMonitor;->mAsyncHandler:Landroid/os/Handler;

    .line 45
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/wifi/owm/OwmRouterMonitor;->mVerboseLoggingEnabled:Z

    .line 46
    iput-object v0, p0, Landroid/net/wifi/owm/OwmRouterMonitor;->mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    .line 52
    iput-object v0, p0, Landroid/net/wifi/owm/OwmRouterMonitor;->mApName:Ljava/lang/String;

    .line 53
    iput-boolean v1, p0, Landroid/net/wifi/owm/OwmRouterMonitor;->mWifiConnected:Z

    .line 56
    iput-boolean v1, p0, Landroid/net/wifi/owm/OwmRouterMonitor;->mIs1x1IOTAp:Z

    .line 57
    iput-boolean v1, p0, Landroid/net/wifi/owm/OwmRouterMonitor;->mIsMetredAp:Z

    .line 58
    iput-boolean v1, p0, Landroid/net/wifi/owm/OwmRouterMonitor;->mIsSpeedLimitAp:Z

    .line 59
    iput-boolean v1, p0, Landroid/net/wifi/owm/OwmRouterMonitor;->mIsNetLimitAp:Z

    .line 60
    iput-boolean v1, p0, Landroid/net/wifi/owm/OwmRouterMonitor;->mIsBrcLimitAp:Z

    .line 63
    iput v1, p0, Landroid/net/wifi/owm/OwmRouterMonitor;->mSpeedLimitEvtCnt:I

    .line 64
    iput v1, p0, Landroid/net/wifi/owm/OwmRouterMonitor;->mNetLimitEvtCnt:I

    .line 65
    iput v1, p0, Landroid/net/wifi/owm/OwmRouterMonitor;->mBrcLimitEvtCnt:I

    .line 80
    iput-object p1, p0, Landroid/net/wifi/owm/OwmRouterMonitor;->mContext:Landroid/content/Context;

    .line 81
    invoke-static {p1}, Landroid/net/wifi/owm/OwmBaseUtils;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmBaseUtils;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/owm/OwmRouterMonitor;->mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    .line 87
    return-void
.end method

.method private blacklist generateRecordToDatabaseMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 156
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 158
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmRouterMonitor;->mSpeedLimitEvtCnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "SpeedLimitEvtCnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmRouterMonitor;->mNetLimitEvtCnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "NetLimitEvtCnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/owm/OwmRouterMonitor;->mBrcLimitEvtCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BrcLimitEvtCnt"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    return-object v0
.end method

.method public static whitelist getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmRouterMonitor;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 68
    sget-object v0, Landroid/net/wifi/owm/OwmRouterMonitor;->sInstance:Landroid/net/wifi/owm/OwmRouterMonitor;

    if-nez v0, :cond_1

    .line 69
    const-class v0, Landroid/net/wifi/owm/OwmRouterMonitor;

    monitor-enter v0

    .line 70
    :try_start_0
    sget-object v1, Landroid/net/wifi/owm/OwmRouterMonitor;->sInstance:Landroid/net/wifi/owm/OwmRouterMonitor;

    if-nez v1, :cond_0

    .line 71
    new-instance v1, Landroid/net/wifi/owm/OwmRouterMonitor;

    invoke-direct {v1, p0}, Landroid/net/wifi/owm/OwmRouterMonitor;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/net/wifi/owm/OwmRouterMonitor;->sInstance:Landroid/net/wifi/owm/OwmRouterMonitor;

    .line 73
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 76
    :cond_1
    :goto_0
    sget-object v0, Landroid/net/wifi/owm/OwmRouterMonitor;->sInstance:Landroid/net/wifi/owm/OwmRouterMonitor;

    return-object v0
.end method

.method private blacklist initTempParamsForWifiDisconnect()V
    .locals 1

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/owm/OwmRouterMonitor;->mApName:Ljava/lang/String;

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/owm/OwmRouterMonitor;->mIs1x1IOTAp:Z

    .line 146
    iput-boolean v0, p0, Landroid/net/wifi/owm/OwmRouterMonitor;->mIsMetredAp:Z

    .line 147
    return-void
.end method

.method private blacklist logD(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .line 206
    iget-boolean v0, p0, Landroid/net/wifi/owm/OwmRouterMonitor;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mScreenOn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/owm/OwmRouterMonitor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/wifi/owm/OwmBaseUtils;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmBaseUtils;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmBaseUtils;->isScreenOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OwmRouterMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_0
    return-void
.end method

.method private blacklist resetAllRecord()V
    .locals 1

    .line 150
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/owm/OwmRouterMonitor;->mSpeedLimitEvtCnt:I

    .line 151
    iput v0, p0, Landroid/net/wifi/owm/OwmRouterMonitor;->mNetLimitEvtCnt:I

    .line 152
    iput v0, p0, Landroid/net/wifi/owm/OwmRouterMonitor;->mBrcLimitEvtCnt:I

    .line 153
    return-void
.end method


# virtual methods
.method public whitelist addAp1x1IotFlagRecord(Z)V
    .locals 2
    .param p1, "isConn1x1IotAp"    # Z

    .line 113
    iput-boolean p1, p0, Landroid/net/wifi/owm/OwmRouterMonitor;->mIs1x1IOTAp:Z

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addAp1x1IotFlagRecord, isConn1x1IotAp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmRouterMonitor;->logD(Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public whitelist addApMetredFlagRecord(Z)V
    .locals 2
    .param p1, "isConnSoftAp"    # Z

    .line 123
    iput-boolean p1, p0, Landroid/net/wifi/owm/OwmRouterMonitor;->mIsMetredAp:Z

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addApMetredFlagRecord, isConnSoftAp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmRouterMonitor;->logD(Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public whitelist addApNameRecord(Ljava/lang/String;)V
    .locals 2
    .param p1, "apName"    # Ljava/lang/String;

    .line 118
    iput-object p1, p0, Landroid/net/wifi/owm/OwmRouterMonitor;->mApName:Ljava/lang/String;

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addApNameRecord, apName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmRouterMonitor;->logD(Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public whitelist enableVerboseLogging(Z)V
    .locals 0
    .param p1, "verbose"    # Z

    .line 202
    iput-boolean p1, p0, Landroid/net/wifi/owm/OwmRouterMonitor;->mVerboseLoggingEnabled:Z

    .line 203
    return-void
.end method

.method public whitelist getApName()Ljava/lang/String;
    .locals 1

    .line 182
    iget-object v0, p0, Landroid/net/wifi/owm/OwmRouterMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmBaseUtils;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmBaseUtils;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/owm/OwmBaseUtils;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Landroid/net/wifi/owm/OwmRouterMonitor;->mApName:Ljava/lang/String;

    return-object v0

    .line 186
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getCurRecordForNetHealth()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 190
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 192
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Landroid/net/wifi/owm/OwmRouterMonitor;->mIs1x1IOTAp:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Is1x1IOTAp"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Landroid/net/wifi/owm/OwmRouterMonitor;->mIsMetredAp:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "IsMetredAp"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Landroid/net/wifi/owm/OwmRouterMonitor;->mIsSpeedLimitAp:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "IsSpeedLimitAp"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Landroid/net/wifi/owm/OwmRouterMonitor;->mIsNetLimitAp:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "IsNetLimitAp"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/owm/OwmRouterMonitor;->mIsBrcLimitAp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IsBrcLimitAp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    return-object v0
.end method

.method public whitelist getRecordToDatabase()Ljava/lang/String;
    .locals 2

    .line 166
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmRouterMonitor;->generateRecordToDatabaseMap()Ljava/util/Map;

    move-result-object v0

    .line 168
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist saveRecordToDatabase()V
    .locals 5

    .line 172
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmRouterMonitor;->generateRecordToDatabaseMap()Ljava/util/Map;

    move-result-object v0

    .line 174
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveRecordToDatabase, the map: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/wifi/owm/OwmRouterMonitor;->logD(Ljava/lang/String;)V

    .line 176
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmRouterMonitor;->resetAllRecord()V

    .line 178
    iget-object v1, p0, Landroid/net/wifi/owm/OwmRouterMonitor;->mContext:Landroid/content/Context;

    const-string v2, "wifi_fool_proof"

    const-string v3, "OwmRouterMonitor"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Loplus/util/OplusStatistics;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 179
    return-void
.end method

.method public whitelist setWifiConnState(Z)V
    .locals 2
    .param p1, "isConnected"    # Z

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setWifiConnState, mWifiConnected = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/owm/OwmRouterMonitor;->mWifiConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isConnected = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmRouterMonitor;->logD(Ljava/lang/String;)V

    .line 130
    iget-boolean v0, p0, Landroid/net/wifi/owm/OwmRouterMonitor;->mWifiConnected:Z

    if-ne p1, v0, :cond_0

    .line 132
    return-void

    .line 135
    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    .line 139
    :cond_1
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmRouterMonitor;->initTempParamsForWifiDisconnect()V

    .line 141
    :goto_0
    return-void
.end method
