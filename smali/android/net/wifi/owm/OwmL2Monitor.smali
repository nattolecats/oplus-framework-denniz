.class public Landroid/net/wifi/owm/OwmL2Monitor;
.super Ljava/lang/Object;
.source "OwmL2Monitor.java"

# interfaces
.implements Landroid/net/wifi/owm/IOwmMonitorCommon;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/owm/OwmL2Monitor$DataStallEvtRecord;,
        Landroid/net/wifi/owm/OwmL2Monitor$AsyncHandler;
    }
.end annotation


# static fields
.field private static final blacklist DEFAULT_OWM_ENVIR_GOOD_THRED:I = 0x50

.field private static final blacklist DEFAULT_OWM_GOOD_RSSI_THRED:I = -0x4b

.field private static final blacklist DEFAULT_OWM_PER_GOOD_THRED:I = 0x50

.field private static final blacklist ENVIR_GOOD_THRED:I = 0x50

.field private static final blacklist EVT_RECORD_SIZE:I = 0x8

.field private static final blacklist PER_GOOD_THRED:I = 0x50

.field private static final blacklist TAG:Ljava/lang/String; = "OwmL2Monitor"

.field private static volatile blacklist sInstance:Landroid/net/wifi/owm/OwmL2Monitor;


# instance fields
.field private blacklist mAsyncHandler:Landroid/os/Handler;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mCurDataStallEvtRecord:Landroid/net/wifi/owm/OwmL2Monitor$DataStallEvtRecord;

.field private blacklist mDataStallEvtRecordList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/owm/OwmL2Monitor$DataStallEvtRecord;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDataStallReasonFromFW:I

.field private blacklist mEnvirBadCnt:I

.field private blacklist mEnvirGoodCnt:I

.field private blacklist mLastBssid:Ljava/lang/String;

.field private blacklist mLastCcaBusyTimeMs:I

.field private blacklist mLastRadioOnTimeMs:I

.field private blacklist mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

.field private blacklist mOwmNetHealthMonitor:Landroid/net/wifi/owm/OwmNetHealthMonitor;

.field private blacklist mOwmRouterMonitor:Landroid/net/wifi/owm/OwmRouterMonitor;

.field private blacklist mPerBadCnt:I

.field private blacklist mPerGoodCnt:I

.field private blacklist mRoamingCnt:I

.field private blacklist mRssiBadCnt:I

.field private blacklist mRssiGoodCnt:I

.field private blacklist mRusEnvirGoodThred:I

.field private blacklist mRusGoodRssiThred:I

.field private blacklist mRusPerGoodThred:I

.field private blacklist mRxDataStallCnt:I

.field private blacklist mRxPkgCnt:J

.field private blacklist mScanAtWifiConnectedCnt:J

.field private blacklist mTxDataStallCnt:I

.field private blacklist mTxPkgCnt:J

.field private blacklist mTxRetryPkgCnt:J

.field private blacklist mTxRxDataStallCnt:I

.field private blacklist mVerboseLoggingEnabled:Z

.field private blacklist mWifiConnected:Z

.field private blacklist mWifiRomUpdateHelper:Landroid/net/wifi/IWifiRomUpdateHelper;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mlogD(Landroid/net/wifi/owm/OwmL2Monitor;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/owm/OwmL2Monitor;->logD(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 62
    const/4 v0, 0x0

    sput-object v0, Landroid/net/wifi/owm/OwmL2Monitor;->sInstance:Landroid/net/wifi/owm/OwmL2Monitor;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mVerboseLoggingEnabled:Z

    .line 64
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mAsyncHandler:Landroid/os/Handler;

    .line 65
    iput-object v1, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mContext:Landroid/content/Context;

    .line 66
    iput-boolean v0, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mWifiConnected:Z

    .line 67
    const-string v2, ""

    iput-object v2, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mLastBssid:Ljava/lang/String;

    .line 69
    iput-object v1, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    .line 70
    iput-object v1, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mOwmRouterMonitor:Landroid/net/wifi/owm/OwmRouterMonitor;

    .line 71
    iput-object v1, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mOwmNetHealthMonitor:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    .line 72
    iput-object v1, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mWifiRomUpdateHelper:Landroid/net/wifi/IWifiRomUpdateHelper;

    .line 74
    iput v0, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mLastRadioOnTimeMs:I

    .line 75
    iput v0, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mLastCcaBusyTimeMs:I

    .line 78
    const/16 v2, -0x4b

    iput v2, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mRusGoodRssiThred:I

    .line 79
    const/16 v2, 0x50

    iput v2, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mRusPerGoodThred:I

    .line 80
    iput v2, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mRusEnvirGoodThred:I

    .line 83
    iput v0, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mRssiGoodCnt:I

    .line 84
    iput v0, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mRssiBadCnt:I

    .line 87
    iput v0, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mEnvirGoodCnt:I

    .line 88
    iput v0, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mEnvirBadCnt:I

    .line 91
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mTxPkgCnt:J

    .line 92
    iput-wide v2, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mTxRetryPkgCnt:J

    .line 93
    iput-wide v2, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mRxPkgCnt:J

    .line 96
    iput v0, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mPerGoodCnt:I

    .line 97
    iput v0, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mPerBadCnt:I

    .line 100
    iput v0, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mRoamingCnt:I

    .line 103
    iput v0, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mTxDataStallCnt:I

    .line 104
    iput v0, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mRxDataStallCnt:I

    .line 105
    iput v0, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mTxRxDataStallCnt:I

    .line 108
    const/4 v4, -0x1

    iput v4, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mDataStallReasonFromFW:I

    .line 111
    iput-wide v2, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mScanAtWifiConnectedCnt:J

    .line 113
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mDataStallEvtRecordList:Ljava/util/List;

    .line 114
    new-instance v2, Landroid/net/wifi/owm/OwmL2Monitor$DataStallEvtRecord;

    invoke-direct {v2, p0, v1}, Landroid/net/wifi/owm/OwmL2Monitor$DataStallEvtRecord;-><init>(Landroid/net/wifi/owm/OwmL2Monitor;Landroid/net/wifi/owm/OwmL2Monitor$DataStallEvtRecord-IA;)V

    iput-object v2, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mCurDataStallEvtRecord:Landroid/net/wifi/owm/OwmL2Monitor$DataStallEvtRecord;

    .line 129
    iput-object p1, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mContext:Landroid/content/Context;

    .line 135
    invoke-static {p1}, Landroid/net/wifi/owm/OwmBaseUtils;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmBaseUtils;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    .line 136
    iget-object v1, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/wifi/owm/OwmRouterMonitor;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmRouterMonitor;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mOwmRouterMonitor:Landroid/net/wifi/owm/OwmRouterMonitor;

    .line 137
    iget-object v1, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmNetHealthMonitor;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mOwmNetHealthMonitor:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    .line 139
    invoke-static {}, Landroid/common/OplusFrameworkFactory;->getInstance()Landroid/common/OplusFrameworkFactory;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/IWifiRomUpdateHelper;->DEFAULT:Landroid/net/wifi/IWifiRomUpdateHelper;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mContext:Landroid/content/Context;

    aput-object v4, v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/common/OplusFrameworkFactory;->getFeature(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/IWifiRomUpdateHelper;

    iput-object v0, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mWifiRomUpdateHelper:Landroid/net/wifi/IWifiRomUpdateHelper;

    .line 140
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmL2Monitor;->updateRusConfig()V

    .line 141
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

    .line 428
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 430
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mTxDataStallCnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "TxDataStallCnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mRxDataStallCnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "RxDataStallCnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mTxRxDataStallCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TxRxDataStallCnt"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    return-object v0
.end method

.method public static whitelist getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmL2Monitor;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 117
    sget-object v0, Landroid/net/wifi/owm/OwmL2Monitor;->sInstance:Landroid/net/wifi/owm/OwmL2Monitor;

    if-nez v0, :cond_1

    .line 118
    const-class v0, Landroid/net/wifi/owm/OwmL2Monitor;

    monitor-enter v0

    .line 119
    :try_start_0
    sget-object v1, Landroid/net/wifi/owm/OwmL2Monitor;->sInstance:Landroid/net/wifi/owm/OwmL2Monitor;

    if-nez v1, :cond_0

    .line 120
    new-instance v1, Landroid/net/wifi/owm/OwmL2Monitor;

    invoke-direct {v1, p0}, Landroid/net/wifi/owm/OwmL2Monitor;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/net/wifi/owm/OwmL2Monitor;->sInstance:Landroid/net/wifi/owm/OwmL2Monitor;

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
    sget-object v0, Landroid/net/wifi/owm/OwmL2Monitor;->sInstance:Landroid/net/wifi/owm/OwmL2Monitor;

    return-object v0
.end method

.method private blacklist initTempParamsForWifiDisconnect()V
    .locals 3

    .line 342
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mRssiGoodCnt:I

    .line 343
    iput v0, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mRssiBadCnt:I

    .line 346
    iput v0, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mEnvirGoodCnt:I

    .line 347
    iput v0, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mEnvirBadCnt:I

    .line 350
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mTxPkgCnt:J

    .line 351
    iput-wide v1, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mTxRetryPkgCnt:J

    .line 352
    iput-wide v1, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mRxPkgCnt:J

    .line 355
    iput v0, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mPerGoodCnt:I

    .line 356
    iput v0, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mPerBadCnt:I

    .line 359
    iput v0, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mRoamingCnt:I

    .line 361
    iput v0, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mLastRadioOnTimeMs:I

    .line 362
    iput v0, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mLastCcaBusyTimeMs:I

    .line 364
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mLastBssid:Ljava/lang/String;

    .line 365
    return-void
.end method

.method private blacklist logD(Ljava/lang/String;)V
    .locals 2
    .param p1, "log"    # Ljava/lang/String;

    .line 525
    iget-boolean v0, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mScreenOn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/wifi/owm/OwmBaseUtils;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmBaseUtils;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmBaseUtils;->isScreenOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OwmL2Monitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    :cond_0
    return-void
.end method

.method private blacklist resetAllRecord()V
    .locals 2

    .line 370
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mTxDataStallCnt:I

    .line 371
    iput v0, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mRxDataStallCnt:I

    .line 372
    iput v0, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mTxRxDataStallCnt:I

    .line 373
    iget-object v0, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mDataStallEvtRecordList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 376
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mDataStallReasonFromFW:I

    .line 379
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mScanAtWifiConnectedCnt:J

    .line 380
    return-void
.end method

.method private blacklist saveDataStallEvtToDatabase()V
    .locals 5

    .line 414
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 416
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mDataStallEvtRecordList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/owm/OwmL2Monitor$DataStallEvtRecord;

    .line 417
    .local v2, "record":Landroid/net/wifi/owm/OwmL2Monitor$DataStallEvtRecord;
    iget-object v3, v2, Landroid/net/wifi/owm/OwmL2Monitor$DataStallEvtRecord;->startTime:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/net/wifi/owm/OwmL2Monitor$DataStallEvtRecord;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    .end local v2    # "record":Landroid/net/wifi/owm/OwmL2Monitor$DataStallEvtRecord;
    goto :goto_0

    .line 420
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mDataStallEvtRecordList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 422
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveDataStallEvtToDatabase map:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/wifi/owm/OwmL2Monitor;->logD(Ljava/lang/String;)V

    .line 424
    iget-object v1, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const-string v3, "wifi_fool_proof"

    const-string v4, "OwmDataStallEvtMonitor"

    invoke-static {v1, v3, v4, v0, v2}, Loplus/util/OplusStatistics;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 425
    return-void
.end method

.method private blacklist updateDataStallEvtRecord(I)V
    .locals 4
    .param p1, "dataStalltype"    # I

    .line 383
    const-string v0, "updateDataStallEvtRecord"

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmL2Monitor;->logD(Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mCurDataStallEvtRecord:Landroid/net/wifi/owm/OwmL2Monitor$DataStallEvtRecord;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 386
    new-instance v0, Landroid/net/wifi/owm/OwmL2Monitor$DataStallEvtRecord;

    invoke-direct {v0, p0, v1}, Landroid/net/wifi/owm/OwmL2Monitor$DataStallEvtRecord;-><init>(Landroid/net/wifi/owm/OwmL2Monitor;Landroid/net/wifi/owm/OwmL2Monitor$DataStallEvtRecord-IA;)V

    iput-object v0, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mCurDataStallEvtRecord:Landroid/net/wifi/owm/OwmL2Monitor$DataStallEvtRecord;

    goto :goto_0

    .line 388
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/owm/OwmL2Monitor$DataStallEvtRecord;->resetRecord()V

    .line 391
    :goto_0
    iget-object v0, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mCurDataStallEvtRecord:Landroid/net/wifi/owm/OwmL2Monitor$DataStallEvtRecord;

    iget-object v2, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v2}, Landroid/net/wifi/owm/OwmBaseUtils;->getCurDateTime()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/owm/OwmL2Monitor$DataStallEvtRecord;->startTime:Ljava/lang/String;

    .line 392
    iget-object v0, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mCurDataStallEvtRecord:Landroid/net/wifi/owm/OwmL2Monitor$DataStallEvtRecord;

    iget-object v2, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mOwmRouterMonitor:Landroid/net/wifi/owm/OwmRouterMonitor;

    invoke-virtual {v2}, Landroid/net/wifi/owm/OwmRouterMonitor;->getApName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/owm/OwmL2Monitor$DataStallEvtRecord;->apName:Ljava/lang/String;

    .line 393
    iget-object v0, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mCurDataStallEvtRecord:Landroid/net/wifi/owm/OwmL2Monitor$DataStallEvtRecord;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v3}, Landroid/net/wifi/owm/OwmBaseUtils;->getFreq()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/owm/OwmL2Monitor$DataStallEvtRecord;->apFreq:Ljava/lang/String;

    .line 394
    iget-object v0, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mCurDataStallEvtRecord:Landroid/net/wifi/owm/OwmL2Monitor$DataStallEvtRecord;

    iget-object v2, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v2}, Landroid/net/wifi/owm/OwmBaseUtils;->getTopAppPkgName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/owm/OwmL2Monitor$DataStallEvtRecord;->topPkg:Ljava/lang/String;

    .line 395
    iget-object v0, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mCurDataStallEvtRecord:Landroid/net/wifi/owm/OwmL2Monitor$DataStallEvtRecord;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/owm/OwmL2Monitor$DataStallEvtRecord;->dataStallType:Ljava/lang/String;

    .line 397
    iget-object v0, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mCurDataStallEvtRecord:Landroid/net/wifi/owm/OwmL2Monitor$DataStallEvtRecord;

    iget-object v2, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mOwmNetHealthMonitor:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-virtual {v2}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->getLastFeatActHealthMonitorRecord()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/owm/OwmL2Monitor$DataStallEvtRecord;->featHealthStat:Ljava/lang/String;

    .line 398
    iget-object v0, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mCurDataStallEvtRecord:Landroid/net/wifi/owm/OwmL2Monitor$DataStallEvtRecord;

    iget-object v2, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mOwmNetHealthMonitor:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-virtual {v2}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->getLastRouterHealthMonitorRecord()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/owm/OwmL2Monitor$DataStallEvtRecord;->routerHealthStat:Ljava/lang/String;

    .line 399
    iget-object v0, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mCurDataStallEvtRecord:Landroid/net/wifi/owm/OwmL2Monitor$DataStallEvtRecord;

    iget-object v2, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mOwmNetHealthMonitor:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-virtual {v2}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->getLastCoexistHealthMonitorRecord()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/owm/OwmL2Monitor$DataStallEvtRecord;->coexistHealthStat:Ljava/lang/String;

    .line 400
    iget-object v0, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mCurDataStallEvtRecord:Landroid/net/wifi/owm/OwmL2Monitor$DataStallEvtRecord;

    iget-object v2, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mOwmNetHealthMonitor:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-virtual {v2}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->getLastL2HealthMonitorRecord()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/owm/OwmL2Monitor$DataStallEvtRecord;->l2HealthStat:Ljava/lang/String;

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDataStallEvtRecord, the mCurDataStallEvtRecord:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mCurDataStallEvtRecord:Landroid/net/wifi/owm/OwmL2Monitor$DataStallEvtRecord;

    invoke-virtual {v2}, Landroid/net/wifi/owm/OwmL2Monitor$DataStallEvtRecord;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmL2Monitor;->logD(Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mDataStallEvtRecordList:Ljava/util/List;

    iget-object v2, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mCurDataStallEvtRecord:Landroid/net/wifi/owm/OwmL2Monitor$DataStallEvtRecord;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    iput-object v1, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mCurDataStallEvtRecord:Landroid/net/wifi/owm/OwmL2Monitor$DataStallEvtRecord;

    .line 407
    iget-object v0, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mDataStallEvtRecordList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    .line 408
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmL2Monitor;->saveDataStallEvtToDatabase()V

    .line 410
    :cond_1
    return-void
.end method

.method private blacklist updateEnvironmentRecord(II)V
    .locals 4
    .param p1, "radioOnTimeMs"    # I
    .param p2, "ccaBusyTimeMs"    # I

    .line 306
    if-ltz p1, :cond_5

    if-gez p2, :cond_0

    goto :goto_2

    .line 313
    :cond_0
    iget v0, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mLastRadioOnTimeMs:I

    if-eqz v0, :cond_4

    iget v1, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mLastCcaBusyTimeMs:I

    if-nez v1, :cond_1

    goto :goto_1

    .line 319
    :cond_1
    sub-int v0, p1, v0

    .line 320
    .local v0, "radioOnDiff":I
    sub-int v1, p2, v1

    .line 321
    .local v1, "ccaBusyDiff":I
    const/4 v2, 0x0

    .line 323
    .local v2, "ccaBusyPercent":I
    if-lez v0, :cond_2

    .line 324
    mul-int/lit8 v3, v1, 0x64

    div-int v2, v3, v0

    .line 327
    :cond_2
    iget v3, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mRusEnvirGoodThred:I

    if-ge v2, v3, :cond_3

    .line 328
    iget v3, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mEnvirGoodCnt:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mEnvirGoodCnt:I

    goto :goto_0

    .line 330
    :cond_3
    iget v3, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mEnvirBadCnt:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mEnvirBadCnt:I

    .line 332
    :goto_0
    return-void

    .line 314
    .end local v0    # "radioOnDiff":I
    .end local v1    # "ccaBusyDiff":I
    .end local v2    # "ccaBusyPercent":I
    :cond_4
    :goto_1
    iput p1, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mLastRadioOnTimeMs:I

    .line 315
    iput p2, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mLastCcaBusyTimeMs:I

    .line 316
    return-void

    .line 308
    :cond_5
    :goto_2
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mLastRadioOnTimeMs:I

    .line 309
    iput v0, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mLastCcaBusyTimeMs:I

    .line 310
    return-void
.end method

.method private blacklist updateRusConfig()V
    .locals 4

    .line 272
    iget-object v0, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mWifiRomUpdateHelper:Landroid/net/wifi/IWifiRomUpdateHelper;

    if-eqz v0, :cond_0

    .line 273
    const-string v0, "updateL2MonitorRusVal"

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmL2Monitor;->logD(Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mWifiRomUpdateHelper:Landroid/net/wifi/IWifiRomUpdateHelper;

    const/16 v1, -0x4b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "OWM_GOOD_RSSI_THRED"

    invoke-interface {v0, v2, v1}, Landroid/net/wifi/IWifiRomUpdateHelper;->getIntegerValue(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mRusGoodRssiThred:I

    .line 275
    iget-object v0, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mWifiRomUpdateHelper:Landroid/net/wifi/IWifiRomUpdateHelper;

    const/16 v1, 0x50

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "OWM_PER_GOOD_THRED"

    invoke-interface {v0, v3, v2}, Landroid/net/wifi/IWifiRomUpdateHelper;->getIntegerValue(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mRusPerGoodThred:I

    .line 276
    iget-object v0, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mWifiRomUpdateHelper:Landroid/net/wifi/IWifiRomUpdateHelper;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "OWM_ENVIR_GOOD_THRED"

    invoke-interface {v0, v2, v1}, Landroid/net/wifi/IWifiRomUpdateHelper;->getIntegerValue(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mRusEnvirGoodThred:I

    .line 278
    :cond_0
    return-void
.end method

.method private blacklist updateStallRecord(I)V
    .locals 2
    .param p1, "dataStallType"    # I

    .line 281
    if-nez p1, :cond_0

    .line 282
    return-void

    .line 285
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateStallRecord, unkown dataStallType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmL2Monitor;->logD(Ljava/lang/String;)V

    .line 298
    return-void

    .line 293
    :pswitch_0
    iget v0, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mTxRxDataStallCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mTxRxDataStallCnt:I

    .line 294
    goto :goto_0

    .line 290
    :pswitch_1
    iget v0, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mRxDataStallCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mRxDataStallCnt:I

    .line 291
    goto :goto_0

    .line 287
    :pswitch_2
    iget v0, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mTxDataStallCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mTxDataStallCnt:I

    .line 288
    nop

    .line 301
    :goto_0
    iget-object v0, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OplusOwmMonitorKit;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->sendL2StuckEventMesg(I)V

    .line 302
    invoke-direct {p0, p1}, Landroid/net/wifi/owm/OwmL2Monitor;->updateDataStallEvtRecord(I)V

    .line 303
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist updateTxPerRecord(I)V
    .locals 1
    .param p1, "txPer"    # I

    .line 264
    iget v0, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mRusPerGoodThred:I

    if-ge p1, v0, :cond_0

    .line 265
    iget v0, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mPerGoodCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mPerGoodCnt:I

    goto :goto_0

    .line 267
    :cond_0
    iget v0, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mPerBadCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mPerBadCnt:I

    .line 269
    :goto_0
    return-void
.end method

.method private blacklist updateTxRxPkgRecord(JJJ)V
    .locals 2
    .param p1, "txSuccess"    # J
    .param p3, "txRetries"    # J
    .param p5, "rxSuccess"    # J

    .line 335
    add-long v0, p1, p3

    iput-wide v0, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mTxPkgCnt:J

    .line 336
    iput-wide p3, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mTxRetryPkgCnt:J

    .line 337
    iput-wide p5, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mRxPkgCnt:J

    .line 338
    return-void
.end method


# virtual methods
.method public whitelist addConnL2StatsRecord(IIII)V
    .locals 2
    .param p1, "radioOnTimeMs"    # I
    .param p2, "ccaBusyTimeMs"    # I
    .param p3, "txPer"    # I
    .param p4, "dataStallType"    # I

    .line 231
    iget-object v0, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v0}, Landroid/net/wifi/owm/OwmBaseUtils;->isWifiSelfCureOngoing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    return-void

    .line 235
    :cond_0
    invoke-direct {p0, p3}, Landroid/net/wifi/owm/OwmL2Monitor;->updateTxPerRecord(I)V

    .line 236
    invoke-direct {p0, p4}, Landroid/net/wifi/owm/OwmL2Monitor;->updateStallRecord(I)V

    .line 237
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/owm/OwmL2Monitor;->updateEnvironmentRecord(II)V

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addConnL2StatsRecord, radioOnTimeMs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ccaBusyTimeMs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " txPer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dataStallType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmL2Monitor;->logD(Ljava/lang/String;)V

    .line 239
    return-void
.end method

.method public whitelist addConnWifiInfoRecord(Landroid/net/wifi/WifiInfo;JJJ)V
    .locals 7
    .param p1, "curWifiInfo"    # Landroid/net/wifi/WifiInfo;
    .param p2, "txSuccess"    # J
    .param p4, "txRetries"    # J
    .param p6, "rxSuccess"    # J

    .line 217
    if-nez p1, :cond_0

    .line 218
    return-void

    .line 221
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addConnWifiInfoRecord, curWifiInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmL2Monitor;->logD(Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v0}, Landroid/net/wifi/owm/OwmBaseUtils;->isWifiSelfCureOngoing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    return-void

    .line 227
    :cond_1
    move-object v0, p0

    move-wide v1, p2

    move-wide v3, p4

    move-wide v5, p6

    invoke-direct/range {v0 .. v6}, Landroid/net/wifi/owm/OwmL2Monitor;->updateTxRxPkgRecord(JJJ)V

    .line 228
    return-void
.end method

.method public whitelist addDataStallReportedFromFirmwareRecord(I)V
    .locals 2
    .param p1, "errCode"    # I

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addDataStallReportedFromFirmwareRecord, the errCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmL2Monitor;->logD(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v0}, Landroid/net/wifi/owm/OwmBaseUtils;->isWifiSelfCureOngoing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    return-void

    .line 249
    :cond_0
    iput p1, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mDataStallReasonFromFW:I

    .line 250
    return-void
.end method

.method public whitelist addRoamingRecord(ZLjava/lang/String;)V
    .locals 1
    .param p1, "isSucced"    # Z
    .param p2, "lastBssid"    # Ljava/lang/String;

    .line 196
    if-eqz p2, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 200
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mLastBssid:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    return-void

    .line 205
    :cond_1
    iput-object p2, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mLastBssid:Ljava/lang/String;

    .line 207
    iget-object v0, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OplusOwmMonitorKit;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->sendRoamingEventMesg(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v0}, Landroid/net/wifi/owm/OwmBaseUtils;->isWifiSelfCureOngoing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 210
    return-void

    .line 213
    :cond_2
    iget v0, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mRoamingCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mRoamingCnt:I

    .line 214
    return-void

    .line 197
    :cond_3
    :goto_0
    return-void
.end method

.method public whitelist addWifiScanEventRecord()V
    .locals 5

    .line 254
    iget-object v0, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v0}, Landroid/net/wifi/owm/OwmBaseUtils;->isWifiConnected()Z

    move-result v0

    .line 256
    .local v0, "isWifiConnected":Z
    if-eqz v0, :cond_0

    .line 257
    iget-wide v1, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mScanAtWifiConnectedCnt:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mScanAtWifiConnectedCnt:J

    .line 260
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addWifiScanEventRecord, mScanAtWifiConnectedCnt:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mScanAtWifiConnectedCnt:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/wifi/owm/OwmL2Monitor;->logD(Ljava/lang/String;)V

    .line 261
    return-void
.end method

.method public whitelist enableVerboseLogging(Z)V
    .locals 0
    .param p1, "verbose"    # Z

    .line 521
    iput-boolean p1, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mVerboseLoggingEnabled:Z

    .line 522
    return-void
.end method

.method public whitelist getCurRecordForNetHealth()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 452
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 454
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mRssiGoodCnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "RssiGoodCnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mRssiBadCnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "RssiBadCnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mEnvirGoodCnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "EnvirGoodCnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mEnvirBadCnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "EnvirBadCnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mTxPkgCnt:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "TxPkgCnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mTxRetryPkgCnt:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "TxRetryPkgCnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mRxPkgCnt:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "RxPkgCnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mPerGoodCnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "PerGoodCnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mPerBadCnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "PerBadCnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mScanAtWifiConnectedCnt:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ScanCnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mRoamingCnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "RoamingCnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mTxDataStallCnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "TxDataStallCnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mRxDataStallCnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "RxDataStallCnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mTxRxDataStallCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TxRxDataStallCnt"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    return-object v0
.end method

.method public whitelist getRecordToDatabase()Ljava/lang/String;
    .locals 2

    .line 437
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmL2Monitor;->generateRecordToDatabaseMap()Ljava/util/Map;

    move-result-object v0

    .line 438
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist saveRecordToDatabase()V
    .locals 5

    .line 442
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmL2Monitor;->generateRecordToDatabaseMap()Ljava/util/Map;

    move-result-object v0

    .line 444
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

    invoke-direct {p0, v1}, Landroid/net/wifi/owm/OwmL2Monitor;->logD(Ljava/lang/String;)V

    .line 446
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmL2Monitor;->resetAllRecord()V

    .line 448
    iget-object v1, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mContext:Landroid/content/Context;

    const-string v2, "wifi_fool_proof"

    const-string v3, "OwmL2Monitor"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Loplus/util/OplusStatistics;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 449
    return-void
.end method

.method public whitelist setRssi(I)V
    .locals 2
    .param p1, "rssi"    # I

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRssi, rssi = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmL2Monitor;->logD(Ljava/lang/String;)V

    .line 188
    iget v0, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mRusGoodRssiThred:I

    if-le p1, v0, :cond_0

    .line 189
    iget v0, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mRssiGoodCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mRssiGoodCnt:I

    goto :goto_0

    .line 191
    :cond_0
    iget v0, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mRssiBadCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mRssiBadCnt:I

    .line 193
    :goto_0
    return-void
.end method

.method public whitelist setWifiConnState(Z)V
    .locals 2
    .param p1, "isConnected"    # Z

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setWifiConnState, mWifiConnected = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mWifiConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isConnected = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmL2Monitor;->logD(Ljava/lang/String;)V

    .line 162
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmL2Monitor;->updateRusConfig()V

    .line 164
    iget-boolean v0, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mWifiConnected:Z

    if-ne p1, v0, :cond_0

    .line 166
    return-void

    .line 169
    :cond_0
    iput-boolean p1, p0, Landroid/net/wifi/owm/OwmL2Monitor;->mWifiConnected:Z

    .line 171
    if-eqz p1, :cond_1

    goto :goto_0

    .line 175
    :cond_1
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmL2Monitor;->initTempParamsForWifiDisconnect()V

    .line 177
    :goto_0
    return-void
.end method
