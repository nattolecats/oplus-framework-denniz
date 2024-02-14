.class public Landroid/net/wifi/owm/OwmGatewayMonitor;
.super Ljava/lang/Object;
.source "OwmGatewayMonitor.java"

# interfaces
.implements Landroid/net/wifi/owm/IOwmMonitorCommon;
.implements Landroid/net/wifi/owm/IOwmNetHealthCommon;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/owm/OwmGatewayMonitor$AsyncHandler;
    }
.end annotation


# static fields
.field private static final blacklist EVT_RECORD_SIZE:I = 0x8

.field private static final blacklist MSG_ADD_ROUTER_INFO:I = 0x1

.field private static final blacklist MSG_BASE:I = 0x0

.field private static final blacklist RTT_GOOD_MS:I = 0x64

.field private static final blacklist RTT_NORM_MS:I = 0xc8

.field private static final blacklist RTT_POOR_MS:I = 0x12c

.field private static final blacklist TAG:Ljava/lang/String; = "OwmGatewayMonitor"

.field private static volatile blacklist sInstance:Landroid/net/wifi/owm/OwmGatewayMonitor;


# instance fields
.field private blacklist mAsyncHandler:Landroid/os/Handler;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mCurWifiGatewayConflict:Z

.field private blacklist mFailCnt:I

.field private blacklist mNudFailCnt:I

.field private blacklist mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

.field private blacklist mOwmRouterMonitor:Landroid/net/wifi/owm/OwmRouterMonitor;

.field private blacklist mRttBadCnt:I

.field private blacklist mRttGoodCnt:I

.field private blacklist mRttNormCnt:I

.field private blacklist mRttPoorCnt:I

.field private blacklist mTotalCnt:I

.field private blacklist mVerboseLoggingEnabled:Z

.field private blacklist mWifiConnected:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$mlogD(Landroid/net/wifi/owm/OwmGatewayMonitor;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/owm/OwmGatewayMonitor;->logD(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 42
    const/4 v0, 0x0

    sput-object v0, Landroid/net/wifi/owm/OwmGatewayMonitor;->sInstance:Landroid/net/wifi/owm/OwmGatewayMonitor;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/owm/OwmGatewayMonitor;->mNudFailCnt:I

    .line 58
    iput v0, p0, Landroid/net/wifi/owm/OwmGatewayMonitor;->mFailCnt:I

    .line 59
    iput v0, p0, Landroid/net/wifi/owm/OwmGatewayMonitor;->mTotalCnt:I

    .line 62
    iput v0, p0, Landroid/net/wifi/owm/OwmGatewayMonitor;->mRttGoodCnt:I

    .line 63
    iput v0, p0, Landroid/net/wifi/owm/OwmGatewayMonitor;->mRttNormCnt:I

    .line 64
    iput v0, p0, Landroid/net/wifi/owm/OwmGatewayMonitor;->mRttPoorCnt:I

    .line 65
    iput v0, p0, Landroid/net/wifi/owm/OwmGatewayMonitor;->mRttBadCnt:I

    .line 68
    iput-boolean v0, p0, Landroid/net/wifi/owm/OwmGatewayMonitor;->mWifiConnected:Z

    .line 69
    iput-boolean v0, p0, Landroid/net/wifi/owm/OwmGatewayMonitor;->mCurWifiGatewayConflict:Z

    .line 71
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/net/wifi/owm/OwmGatewayMonitor;->mContext:Landroid/content/Context;

    .line 72
    iput-object v1, p0, Landroid/net/wifi/owm/OwmGatewayMonitor;->mAsyncHandler:Landroid/os/Handler;

    .line 73
    iput-boolean v0, p0, Landroid/net/wifi/owm/OwmGatewayMonitor;->mVerboseLoggingEnabled:Z

    .line 74
    iput-object v1, p0, Landroid/net/wifi/owm/OwmGatewayMonitor;->mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    .line 75
    iput-object v1, p0, Landroid/net/wifi/owm/OwmGatewayMonitor;->mOwmRouterMonitor:Landroid/net/wifi/owm/OwmRouterMonitor;

    .line 90
    iput-object p1, p0, Landroid/net/wifi/owm/OwmGatewayMonitor;->mContext:Landroid/content/Context;

    .line 96
    invoke-static {p1}, Landroid/net/wifi/owm/OwmBaseUtils;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmBaseUtils;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/owm/OwmGatewayMonitor;->mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    .line 97
    iget-object v0, p0, Landroid/net/wifi/owm/OwmGatewayMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmRouterMonitor;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmRouterMonitor;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/owm/OwmGatewayMonitor;->mOwmRouterMonitor:Landroid/net/wifi/owm/OwmRouterMonitor;

    .line 98
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

    .line 249
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 251
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmGatewayMonitor;->mNudFailCnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "NudFailCnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmGatewayMonitor;->mFailCnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "FailCnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmGatewayMonitor;->mTotalCnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "TotalCnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmGatewayMonitor;->mRttGoodCnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "RttGoodCnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmGatewayMonitor;->mRttNormCnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "RttNormCnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmGatewayMonitor;->mRttPoorCnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "RttPoorCnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/owm/OwmGatewayMonitor;->mRttBadCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RttBadCnt"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    return-object v0
.end method

.method public static whitelist getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmGatewayMonitor;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 78
    sget-object v0, Landroid/net/wifi/owm/OwmGatewayMonitor;->sInstance:Landroid/net/wifi/owm/OwmGatewayMonitor;

    if-nez v0, :cond_1

    .line 79
    const-class v0, Landroid/net/wifi/owm/OwmGatewayMonitor;

    monitor-enter v0

    .line 80
    :try_start_0
    sget-object v1, Landroid/net/wifi/owm/OwmGatewayMonitor;->sInstance:Landroid/net/wifi/owm/OwmGatewayMonitor;

    if-nez v1, :cond_0

    .line 81
    new-instance v1, Landroid/net/wifi/owm/OwmGatewayMonitor;

    invoke-direct {v1, p0}, Landroid/net/wifi/owm/OwmGatewayMonitor;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/net/wifi/owm/OwmGatewayMonitor;->sInstance:Landroid/net/wifi/owm/OwmGatewayMonitor;

    .line 83
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 86
    :cond_1
    :goto_0
    sget-object v0, Landroid/net/wifi/owm/OwmGatewayMonitor;->sInstance:Landroid/net/wifi/owm/OwmGatewayMonitor;

    return-object v0
.end method

.method private blacklist initTempParamsForWifiDisconnect()V
    .locals 1

    .line 202
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/owm/OwmGatewayMonitor;->mCurWifiGatewayConflict:Z

    .line 203
    return-void
.end method

.method private blacklist logD(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .line 299
    iget-boolean v0, p0, Landroid/net/wifi/owm/OwmGatewayMonitor;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mScreenOn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/owm/OwmGatewayMonitor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/wifi/owm/OwmBaseUtils;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmBaseUtils;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmBaseUtils;->isScreenOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OwmGatewayMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_0
    return-void
.end method

.method private blacklist resetAllRecord()V
    .locals 1

    .line 236
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/owm/OwmGatewayMonitor;->mNudFailCnt:I

    .line 238
    iput v0, p0, Landroid/net/wifi/owm/OwmGatewayMonitor;->mFailCnt:I

    .line 239
    iput v0, p0, Landroid/net/wifi/owm/OwmGatewayMonitor;->mTotalCnt:I

    .line 242
    iput v0, p0, Landroid/net/wifi/owm/OwmGatewayMonitor;->mRttGoodCnt:I

    .line 243
    iput v0, p0, Landroid/net/wifi/owm/OwmGatewayMonitor;->mRttNormCnt:I

    .line 244
    iput v0, p0, Landroid/net/wifi/owm/OwmGatewayMonitor;->mRttPoorCnt:I

    .line 245
    iput v0, p0, Landroid/net/wifi/owm/OwmGatewayMonitor;->mRttBadCnt:I

    .line 246
    return-void
.end method

.method private blacklist saveGatewayConflictToDatabase()V
    .locals 8

    .line 206
    iget-boolean v0, p0, Landroid/net/wifi/owm/OwmGatewayMonitor;->mCurWifiGatewayConflict:Z

    if-eqz v0, :cond_0

    .line 208
    return-void

    .line 211
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/owm/OwmGatewayMonitor;->mCurWifiGatewayConflict:Z

    .line 213
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 215
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/net/wifi/owm/OwmGatewayMonitor;->mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmBaseUtils;->getCurDateTime()Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, "dateTime":Ljava/lang/String;
    iget-object v2, p0, Landroid/net/wifi/owm/OwmGatewayMonitor;->mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v2}, Landroid/net/wifi/owm/OwmBaseUtils;->getTopAppPkgName()Ljava/lang/String;

    move-result-object v2

    .line 217
    .local v2, "topPkgName":Ljava/lang/String;
    iget-object v3, p0, Landroid/net/wifi/owm/OwmGatewayMonitor;->mOwmRouterMonitor:Landroid/net/wifi/owm/OwmRouterMonitor;

    invoke-virtual {v3}, Landroid/net/wifi/owm/OwmRouterMonitor;->getApName()Ljava/lang/String;

    move-result-object v3

    .line 219
    .local v3, "apName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "happenTime"

    invoke-interface {v0, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "topPkg"

    invoke-interface {v0, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "apName"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    iget-object v4, p0, Landroid/net/wifi/owm/OwmGatewayMonitor;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const-string v6, "wifi_fool_proof"

    const-string v7, "OwmGatewayConflictEvtMonitor"

    invoke-static {v4, v6, v7, v0, v5}, Loplus/util/OplusStatistics;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 224
    return-void
.end method

.method private blacklist updateRttRecord(I)V
    .locals 2
    .param p1, "rtt"    # I

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateRttRecord, rtt = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmGatewayMonitor;->logD(Ljava/lang/String;)V

    .line 190
    const/16 v0, 0x64

    if-gt p1, v0, :cond_0

    .line 191
    iget v0, p0, Landroid/net/wifi/owm/OwmGatewayMonitor;->mRttGoodCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/owm/OwmGatewayMonitor;->mRttGoodCnt:I

    goto :goto_0

    .line 192
    :cond_0
    const/16 v0, 0xc8

    if-gt p1, v0, :cond_1

    .line 193
    iget v0, p0, Landroid/net/wifi/owm/OwmGatewayMonitor;->mRttNormCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/owm/OwmGatewayMonitor;->mRttNormCnt:I

    goto :goto_0

    .line 194
    :cond_1
    const/16 v0, 0x12c

    if-gt p1, v0, :cond_2

    .line 195
    iget v0, p0, Landroid/net/wifi/owm/OwmGatewayMonitor;->mRttPoorCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/owm/OwmGatewayMonitor;->mRttPoorCnt:I

    goto :goto_0

    .line 197
    :cond_2
    iget v0, p0, Landroid/net/wifi/owm/OwmGatewayMonitor;->mRttBadCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/owm/OwmGatewayMonitor;->mRttBadCnt:I

    .line 199
    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist addArpDetectResultRecord(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 149
    .local p1, "arpResult":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    iget-object v0, p0, Landroid/net/wifi/owm/OwmGatewayMonitor;->mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v0}, Landroid/net/wifi/owm/OwmBaseUtils;->isWifiSelfCureOngoing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    return-void

    .line 153
    :cond_0
    const-string v0, "addArpDetectResultRecord, the arpResult: "

    const/4 v1, 0x1

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 161
    :cond_1
    iget v2, p0, Landroid/net/wifi/owm/OwmGatewayMonitor;->mTotalCnt:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/net/wifi/owm/OwmGatewayMonitor;->mTotalCnt:I

    .line 163
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    if-le v2, v1, :cond_2

    .line 165
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmGatewayMonitor;->saveGatewayConflictToDatabase()V

    .line 166
    iget-object v1, p0, Landroid/net/wifi/owm/OwmGatewayMonitor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OplusOwmMonitorKit;

    move-result-object v1

    const-string v2, "wlan0"

    invoke-virtual {v1, v2}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->sendMultiGatewayEventMesg(Ljava/lang/String;)V

    .line 169
    :cond_2
    iget-object v1, p0, Landroid/net/wifi/owm/OwmGatewayMonitor;->mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmBaseUtils;->getGatewayMac()Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, "curGatewayMac":Ljava/lang/String;
    if-nez v1, :cond_3

    .line 171
    const-string v0, "addArpDetectResultRecord, curGatewayMaic = null"

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmGatewayMonitor;->logD(Ljava/lang/String;)V

    .line 172
    return-void

    .line 175
    :cond_3
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 176
    .local v2, "arpResultRtt":Ljava/lang/Long;
    if-nez v2, :cond_4

    .line 177
    const-string v0, "addArpDetectResultRecord, arpResultRtt = null"

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmGatewayMonitor;->logD(Ljava/lang/String;)V

    .line 178
    return-void

    .line 181
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    long-to-int v3, v3

    .line 182
    .local v3, "rtt":I
    invoke-direct {p0, v3}, Landroid/net/wifi/owm/OwmGatewayMonitor;->updateRttRecord(I)V

    .line 184
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmGatewayMonitor;->logD(Ljava/lang/String;)V

    .line 185
    return-void

    .line 155
    .end local v1    # "curGatewayMac":Ljava/lang/String;
    .end local v2    # "arpResultRtt":Ljava/lang/Long;
    .end local v3    # "rtt":I
    :cond_5
    :goto_0
    iget v2, p0, Landroid/net/wifi/owm/OwmGatewayMonitor;->mFailCnt:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/net/wifi/owm/OwmGatewayMonitor;->mFailCnt:I

    .line 156
    iget v2, p0, Landroid/net/wifi/owm/OwmGatewayMonitor;->mTotalCnt:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/net/wifi/owm/OwmGatewayMonitor;->mTotalCnt:I

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmGatewayMonitor;->logD(Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public whitelist addNudFailRecord(Ljava/lang/String;)V
    .locals 1
    .param p1, "nudMsg"    # Ljava/lang/String;

    .line 138
    iget-object v0, p0, Landroid/net/wifi/owm/OwmGatewayMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OplusOwmMonitorKit;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->sendNudFailEventMesg(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Landroid/net/wifi/owm/OwmGatewayMonitor;->mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v0}, Landroid/net/wifi/owm/OwmBaseUtils;->isWifiSelfCureOngoing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    return-void

    .line 145
    :cond_0
    iget v0, p0, Landroid/net/wifi/owm/OwmGatewayMonitor;->mNudFailCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/owm/OwmGatewayMonitor;->mNudFailCnt:I

    .line 146
    return-void
.end method

.method public whitelist enableVerboseLogging(Z)V
    .locals 0
    .param p1, "verbose"    # Z

    .line 295
    iput-boolean p1, p0, Landroid/net/wifi/owm/OwmGatewayMonitor;->mVerboseLoggingEnabled:Z

    .line 296
    return-void
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

    .line 280
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 282
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmGatewayMonitor;->mNudFailCnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "NudFailCnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmGatewayMonitor;->mFailCnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "FailCnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmGatewayMonitor;->mTotalCnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "TotalCnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmGatewayMonitor;->mRttGoodCnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "RttGoodCnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmGatewayMonitor;->mRttNormCnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "RttNormCnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmGatewayMonitor;->mRttPoorCnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "RttPoorCnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/owm/OwmGatewayMonitor;->mRttBadCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RttBadCnt"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    return-object v0
.end method

.method public whitelist getGatewayConflictState(Z)Z
    .locals 1
    .param p1, "forceNewDetect"    # Z

    .line 227
    if-nez p1, :cond_0

    .line 228
    iget-boolean v0, p0, Landroid/net/wifi/owm/OwmGatewayMonitor;->mCurWifiGatewayConflict:Z

    return v0

    .line 232
    :cond_0
    iget-boolean v0, p0, Landroid/net/wifi/owm/OwmGatewayMonitor;->mCurWifiGatewayConflict:Z

    return v0
.end method

.method public whitelist getRecordToDatabase()Ljava/lang/String;
    .locals 2

    .line 264
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmGatewayMonitor;->generateRecordToDatabaseMap()Ljava/util/Map;

    move-result-object v0

    .line 266
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist saveRecordToDatabase()V
    .locals 5

    .line 270
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmGatewayMonitor;->generateRecordToDatabaseMap()Ljava/util/Map;

    move-result-object v0

    .line 272
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

    invoke-direct {p0, v1}, Landroid/net/wifi/owm/OwmGatewayMonitor;->logD(Ljava/lang/String;)V

    .line 274
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmGatewayMonitor;->resetAllRecord()V

    .line 276
    iget-object v1, p0, Landroid/net/wifi/owm/OwmGatewayMonitor;->mContext:Landroid/content/Context;

    const-string v2, "wifi_fool_proof"

    const-string v3, "OwmGatewayMonitor"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Loplus/util/OplusStatistics;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 277
    return-void
.end method

.method public whitelist setWifiConnState(Z)V
    .locals 2
    .param p1, "isConnected"    # Z

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setWifiConnState, mWifiConnected = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/owm/OwmGatewayMonitor;->mWifiConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isConnected = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmGatewayMonitor;->logD(Ljava/lang/String;)V

    .line 122
    iget-boolean v0, p0, Landroid/net/wifi/owm/OwmGatewayMonitor;->mWifiConnected:Z

    if-ne p1, v0, :cond_0

    .line 124
    return-void

    .line 127
    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    .line 131
    :cond_1
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmGatewayMonitor;->initTempParamsForWifiDisconnect()V

    .line 134
    :goto_0
    iput-boolean p1, p0, Landroid/net/wifi/owm/OwmGatewayMonitor;->mWifiConnected:Z

    .line 135
    return-void
.end method
