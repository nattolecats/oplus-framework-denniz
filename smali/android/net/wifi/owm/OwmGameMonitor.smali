.class public Landroid/net/wifi/owm/OwmGameMonitor;
.super Ljava/lang/Object;
.source "OwmGameMonitor.java"

# interfaces
.implements Landroid/net/wifi/owm/IOwmMonitorCommon;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;,
        Landroid/net/wifi/owm/OwmGameMonitor$AsyncHandler;
    }
.end annotation


# static fields
.field private static final blacklist DEFAULT_OWM_GAME_RTT_BAD_EVT_SAVE_DURING_THRED_SEC:I = 0x3

.field private static final blacklist DEFAULT_OWM_GAME_RTT_BAD_EVT_SAVE_INTVAL_THRED_SEC:I = 0x12c

.field private static final blacklist DEFAULT_OWM_GOOD_RSSI_THRED:I = -0x4b

.field private static final blacklist EVT_RECORD_SIZE:I = 0x8

.field private static final blacklist GAME_LATENCY_TEMP_INVALID_SEC:I = 0x3

.field private static final blacklist MIN_30_MS:I = 0x1b7740

.field private static final blacklist MSG_BASE:I = 0x0

.field private static final blacklist MSG_GAME_RTT_DAD_EVT_ENTER:I = 0x1

.field private static final blacklist MSG_GAME_RTT_DAD_EVT_EXIT:I = 0x2

.field private static final blacklist MSG_SELF_SEND_GAME_OVER_EVT:I = 0x4

.field private static final blacklist MSG_SET_GAME_LATENCY_VALID_FLAG:I = 0x3

.field private static final blacklist RSSI_BAD_STATE:I = 0x5

.field private static final blacklist RSSI_GOOD_STATE:I = 0x4

.field private static final blacklist RSSI_MIN:I = -0x64

.field private static final blacklist RTT_BAD_STATE:I = 0x3

.field private static final blacklist RTT_DEFAULT_STATE:I = -0x1

.field private static final blacklist RTT_GOOD_MS:I = 0x6e

.field private static final blacklist RTT_GOOD_STATE:I = 0x0

.field private static final blacklist RTT_NORM_MS:I = 0xbe

.field private static final blacklist RTT_NORM_STATE:I = 0x1

.field private static final blacklist RTT_POOR_MS:I = 0x12c

.field private static final blacklist RTT_POOR_STATE:I = 0x2

.field private static final blacklist SEC_OF_MS:I = 0x3e8

.field private static final blacklist TAG:Ljava/lang/String; = "OwmGameMonitor"

.field private static volatile blacklist sInstance:Landroid/net/wifi/owm/OwmGameMonitor;


# instance fields
.field private blacklist m2GGoodRssiRttBadTimeSec:I

.field private blacklist m2GRttBadEvtCnt:I

.field private blacklist m2GRttBadTimeSec:I

.field private blacklist m2GRttGoodTimeSec:I

.field private blacklist m2GRttNormTimeSec:I

.field private blacklist m2GRttPoorTimeSec:I

.field private blacklist m5GGoodRssiRttBadTimeSec:I

.field private blacklist m5GRttBadEvtCnt:I

.field private blacklist m5GRttBadTimeSec:I

.field private blacklist m5GRttGoodTimeSec:I

.field private blacklist m5GRttNormTimeSec:I

.field private blacklist m5GRttPoorTimeSec:I

.field private blacklist mAsyncHandler:Landroid/os/Handler;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mCurRttBadEvtRecord:Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;

.field private blacklist mGameOverCnt:I

.field private blacklist mGamePkgName:Ljava/lang/String;

.field private blacklist mGamePlayCnt:I

.field private blacklist mGamePlaying:Z

.field private blacklist mGameRttBadEvtEnter:Z

.field private blacklist mGameStartTime:Ljava/lang/String;

.field private blacklist mGoodRssiRttBadTimeSec:I

.field private blacklist mIsGameSpaceLatencyValid:Z

.field private blacklist mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

.field private blacklist mOwmFeatActMonitor:Landroid/net/wifi/owm/OwmFeatureActiveMonitor;

.field private blacklist mOwmNetHealthMonitor:Landroid/net/wifi/owm/OwmNetHealthMonitor;

.field private blacklist mOwmRouterMonitor:Landroid/net/wifi/owm/OwmRouterMonitor;

.field private blacklist mPreGoodRssiNetInvalidTimeSec:J

.field private blacklist mPreGoodRssiNetSlowTimeSec:J

.field private blacklist mPreGoodRssiRttBadTimeSec:I

.field private blacklist mPreRssiChangeSysTime:J

.field private blacklist mPreRssiState:I

.field private blacklist mPreRtt:I

.field private blacklist mPreRttBadSysTime:J

.field private blacklist mPreRttChangeSysTime:J

.field private blacklist mPreRttState:I

.field private blacklist mRssi:I

.field private blacklist mRttBadEvtRecordList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRusGoodRssiThred:I

.field private blacklist mRusRttBadDuringThredSec:I

.field private blacklist mRusRttBadSaveIntvalThredSec:I

.field private blacklist mVerboseLoggingEnabled:Z

.field private blacklist mWifiConnected:Z

.field private blacklist mWifiRomUpdateHelper:Landroid/net/wifi/IWifiRomUpdateHelper;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmIsGameSpaceLatencyValid(Landroid/net/wifi/owm/OwmGameMonitor;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mIsGameSpaceLatencyValid:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlogD(Landroid/net/wifi/owm/OwmGameMonitor;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/owm/OwmGameMonitor;->logD(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateEvtRttBadEnterRecord(Landroid/net/wifi/owm/OwmGameMonitor;)V
    .locals 0

    invoke-direct {p0}, Landroid/net/wifi/owm/OwmGameMonitor;->updateEvtRttBadEnterRecord()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateEvtRttBadExitRecord(Landroid/net/wifi/owm/OwmGameMonitor;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/net/wifi/owm/OwmGameMonitor;->updateEvtRttBadExitRecord(II)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 82
    const/4 v0, 0x0

    sput-object v0, Landroid/net/wifi/owm/OwmGameMonitor;->sInstance:Landroid/net/wifi/owm/OwmGameMonitor;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mContext:Landroid/content/Context;

    .line 86
    const/4 v1, 0x0

    iput v1, p0, Landroid/net/wifi/owm/OwmGameMonitor;->m2GRttGoodTimeSec:I

    .line 87
    iput v1, p0, Landroid/net/wifi/owm/OwmGameMonitor;->m2GRttNormTimeSec:I

    .line 88
    iput v1, p0, Landroid/net/wifi/owm/OwmGameMonitor;->m2GRttPoorTimeSec:I

    .line 89
    iput v1, p0, Landroid/net/wifi/owm/OwmGameMonitor;->m2GRttBadTimeSec:I

    .line 90
    iput v1, p0, Landroid/net/wifi/owm/OwmGameMonitor;->m2GGoodRssiRttBadTimeSec:I

    .line 92
    iput v1, p0, Landroid/net/wifi/owm/OwmGameMonitor;->m5GRttGoodTimeSec:I

    .line 93
    iput v1, p0, Landroid/net/wifi/owm/OwmGameMonitor;->m5GRttNormTimeSec:I

    .line 94
    iput v1, p0, Landroid/net/wifi/owm/OwmGameMonitor;->m5GRttPoorTimeSec:I

    .line 95
    iput v1, p0, Landroid/net/wifi/owm/OwmGameMonitor;->m5GRttBadTimeSec:I

    .line 96
    iput v1, p0, Landroid/net/wifi/owm/OwmGameMonitor;->m5GGoodRssiRttBadTimeSec:I

    .line 98
    const-string v2, ""

    iput-object v2, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mGameStartTime:Ljava/lang/String;

    .line 99
    iput v1, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mGamePlayCnt:I

    .line 100
    iput v1, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mGameOverCnt:I

    .line 103
    iput v1, p0, Landroid/net/wifi/owm/OwmGameMonitor;->m2GRttBadEvtCnt:I

    .line 104
    iput v1, p0, Landroid/net/wifi/owm/OwmGameMonitor;->m5GRttBadEvtCnt:I

    .line 105
    new-instance v2, Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;

    invoke-direct {v2, p0, v0}, Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;-><init>(Landroid/net/wifi/owm/OwmGameMonitor;Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord-IA;)V

    iput-object v2, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mCurRttBadEvtRecord:Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;

    .line 106
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mRttBadEvtRecordList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 109
    const/4 v2, -0x1

    iput v2, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mPreRttState:I

    .line 110
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mPreRttChangeSysTime:J

    .line 111
    iput-wide v3, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mPreRttBadSysTime:J

    .line 112
    iput v1, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mPreGoodRssiRttBadTimeSec:I

    .line 113
    iput v1, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mGoodRssiRttBadTimeSec:I

    .line 116
    iput v2, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mPreRssiState:I

    .line 117
    const/16 v5, -0x64

    iput v5, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mRssi:I

    .line 118
    iput-wide v3, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mPreRssiChangeSysTime:J

    .line 119
    iput-wide v3, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mPreGoodRssiNetInvalidTimeSec:J

    .line 120
    iput-wide v3, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mPreGoodRssiNetSlowTimeSec:J

    .line 121
    iput v2, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mPreRtt:I

    .line 124
    iput-object v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mAsyncHandler:Landroid/os/Handler;

    .line 125
    iput-boolean v1, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mVerboseLoggingEnabled:Z

    .line 126
    iput-boolean v1, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mGamePlaying:Z

    .line 127
    iput-object v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mGamePkgName:Ljava/lang/String;

    .line 128
    iput-boolean v1, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mWifiConnected:Z

    .line 129
    iput-boolean v1, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mGameRttBadEvtEnter:Z

    .line 130
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mIsGameSpaceLatencyValid:Z

    .line 132
    iput-object v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    .line 133
    iput-object v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mOwmRouterMonitor:Landroid/net/wifi/owm/OwmRouterMonitor;

    .line 134
    iput-object v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mOwmFeatActMonitor:Landroid/net/wifi/owm/OwmFeatureActiveMonitor;

    .line 135
    iput-object v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mOwmNetHealthMonitor:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    .line 137
    iput-object v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mWifiRomUpdateHelper:Landroid/net/wifi/IWifiRomUpdateHelper;

    .line 140
    const/4 v0, 0x3

    iput v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mRusRttBadDuringThredSec:I

    .line 141
    const/16 v0, 0x12c

    iput v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mRusRttBadSaveIntvalThredSec:I

    .line 142
    const/16 v0, -0x4b

    iput v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mRusGoodRssiThred:I

    .line 157
    iput-object p1, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mContext:Landroid/content/Context;

    .line 158
    invoke-static {p1}, Landroid/net/wifi/owm/OwmBaseUtils;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmBaseUtils;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    .line 159
    iget-object v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmRouterMonitor;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmRouterMonitor;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mOwmRouterMonitor:Landroid/net/wifi/owm/OwmRouterMonitor;

    .line 160
    iget-object v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmFeatureActiveMonitor;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mOwmFeatActMonitor:Landroid/net/wifi/owm/OwmFeatureActiveMonitor;

    .line 161
    iget-object v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmNetHealthMonitor;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mOwmNetHealthMonitor:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    .line 162
    invoke-static {}, Landroid/common/OplusFrameworkFactory;->getInstance()Landroid/common/OplusFrameworkFactory;

    move-result-object v0

    sget-object v3, Landroid/net/wifi/IWifiRomUpdateHelper;->DEFAULT:Landroid/net/wifi/IWifiRomUpdateHelper;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mContext:Landroid/content/Context;

    aput-object v4, v2, v1

    invoke-virtual {v0, v3, v2}, Landroid/common/OplusFrameworkFactory;->getFeature(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/IWifiRomUpdateHelper;

    iput-object v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mWifiRomUpdateHelper:Landroid/net/wifi/IWifiRomUpdateHelper;

    .line 163
    new-instance v0, Landroid/net/wifi/owm/OwmGameMonitor$AsyncHandler;

    iget-object v1, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmBaseUtils;->getOwmMonitorThread()Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/net/wifi/owm/OwmGameMonitor$AsyncHandler;-><init>(Landroid/net/wifi/owm/OwmGameMonitor;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mAsyncHandler:Landroid/os/Handler;

    .line 165
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmGameMonitor;->updataRusconfig()V

    .line 166
    return-void
.end method

.method private blacklist addEvtRttBadEnterRecord()V
    .locals 3

    .line 466
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mGameRttBadEvtEnter:Z

    .line 467
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mPreRttBadSysTime:J

    .line 468
    iget v1, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mGoodRssiRttBadTimeSec:I

    iput v1, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mPreGoodRssiRttBadTimeSec:I

    .line 470
    iget-object v1, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mAsyncHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 471
    return-void
.end method

.method private blacklist addEvtRttBadExitRecord()V
    .locals 6

    .line 474
    iget-boolean v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mGameRttBadEvtEnter:Z

    if-nez v0, :cond_0

    .line 475
    return-void

    .line 478
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mGameRttBadEvtEnter:Z

    .line 480
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 481
    .local v0, "curSystemTime":J
    iget-wide v2, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mPreRttBadSysTime:J

    sub-long v2, v0, v2

    long-to-int v2, v2

    div-int/lit16 v2, v2, 0x3e8

    .line 482
    .local v2, "newRttBadDurTimeSec":I
    iget v3, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mGoodRssiRttBadTimeSec:I

    iget v4, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mPreGoodRssiRttBadTimeSec:I

    sub-int/2addr v3, v4

    .line 485
    .local v3, "newGoodRssiRttBadDurTimeSec":I
    iget-object v4, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mAsyncHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 486
    return-void
.end method

.method private blacklist clearGamePlayingExitDelayEvent()V
    .locals 2

    .line 258
    iget-object v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mAsyncHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mAsyncHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 261
    :cond_0
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

    .line 605
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 607
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmGameMonitor;->m2GRttGoodTimeSec:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "2GRttGoodTimeSec"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmGameMonitor;->m2GRttNormTimeSec:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "2GRttNormTimeSec"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmGameMonitor;->m2GRttPoorTimeSec:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "2GRttPoorTimeSec"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmGameMonitor;->m2GRttBadTimeSec:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "2GRttBadTimeSec"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmGameMonitor;->m2GGoodRssiRttBadTimeSec:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "2GGoodRssiRttBadTimeSec"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmGameMonitor;->m5GRttGoodTimeSec:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "5GRttGoodTimeSec"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmGameMonitor;->m5GRttNormTimeSec:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "5GRttNormTimeSec"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmGameMonitor;->m5GRttPoorTimeSec:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "5GRttPoorTimeSec"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmGameMonitor;->m5GRttBadTimeSec:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "5GRttBadTimeSec"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmGameMonitor;->m5GGoodRssiRttBadTimeSec:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "5GGoodRssiRttBadTimeSec"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmGameMonitor;->m2GRttBadEvtCnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "2GRttBadEvtCnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmGameMonitor;->m5GRttBadEvtCnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "5GRttBadEvtCnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mGamePlayCnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "GamePlayCnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mGameOverCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GameOverCnt"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    return-object v0
.end method

.method private blacklist getCurRttBadErrCode()I
    .locals 1

    .line 454
    const/4 v0, -0x1

    return v0
.end method

.method public static whitelist getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmGameMonitor;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 145
    sget-object v0, Landroid/net/wifi/owm/OwmGameMonitor;->sInstance:Landroid/net/wifi/owm/OwmGameMonitor;

    if-nez v0, :cond_1

    .line 146
    const-class v0, Landroid/net/wifi/owm/OwmGameMonitor;

    monitor-enter v0

    .line 147
    :try_start_0
    sget-object v1, Landroid/net/wifi/owm/OwmGameMonitor;->sInstance:Landroid/net/wifi/owm/OwmGameMonitor;

    if-nez v1, :cond_0

    .line 148
    new-instance v1, Landroid/net/wifi/owm/OwmGameMonitor;

    invoke-direct {v1, p0}, Landroid/net/wifi/owm/OwmGameMonitor;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/net/wifi/owm/OwmGameMonitor;->sInstance:Landroid/net/wifi/owm/OwmGameMonitor;

    .line 150
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 153
    :cond_1
    :goto_0
    sget-object v0, Landroid/net/wifi/owm/OwmGameMonitor;->sInstance:Landroid/net/wifi/owm/OwmGameMonitor;

    return-object v0
.end method

.method private blacklist initTempParamsForGamePlayingExit()V
    .locals 5

    .line 297
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mPreRttState:I

    .line 298
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mPreRttChangeSysTime:J

    .line 299
    iput-wide v1, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mPreRttBadSysTime:J

    .line 300
    const/4 v3, 0x0

    iput v3, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mPreGoodRssiRttBadTimeSec:I

    .line 303
    const/4 v4, 0x4

    iput v4, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mPreRssiState:I

    .line 304
    const/16 v4, -0x64

    iput v4, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mRssi:I

    .line 305
    iput-wide v1, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mPreRssiChangeSysTime:J

    .line 306
    iput-wide v1, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mPreGoodRssiNetInvalidTimeSec:J

    .line 307
    iput-wide v1, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mPreGoodRssiNetSlowTimeSec:J

    .line 309
    iput-boolean v3, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mGameRttBadEvtEnter:Z

    .line 310
    iput v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mPreRtt:I

    .line 311
    return-void
.end method

.method private blacklist is24G(Ljava/lang/String;)Z
    .locals 4
    .param p1, "freqStr"    # Ljava/lang/String;

    .line 283
    const/4 v0, -0x1

    .line 286
    .local v0, "freq":I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 290
    goto :goto_0

    .line 287
    :catch_0
    move-exception v1

    .line 288
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "is24G, catch exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OwmGameMonitor"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const/4 v0, -0x1

    .line 292
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v1, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/wifi/owm/OwmBaseUtils;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmBaseUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/wifi/owm/OwmBaseUtils;->isConnect24GHz(I)Z

    move-result v1

    return v1
.end method

.method private blacklist isGoodRssiAndHighLatencyState()Z
    .locals 2

    .line 314
    iget v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mPreRssiState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mGameRttBadEvtEnter:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist isWifConnect24G()Z
    .locals 1

    .line 279
    iget-object v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmBaseUtils;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmBaseUtils;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/owm/OwmBaseUtils;->isConnect24GHz()Z

    move-result v0

    return v0
.end method

.method private blacklist isWifiConnect5G()Z
    .locals 1

    .line 275
    iget-object v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmBaseUtils;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmBaseUtils;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/owm/OwmBaseUtils;->isConnect5Ghz()Z

    move-result v0

    return v0
.end method

.method private blacklist logD(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .line 704
    iget-boolean v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 705
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mScreenOn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/wifi/owm/OwmBaseUtils;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmBaseUtils;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmBaseUtils;->isScreenOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OwmGameMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    :cond_0
    return-void
.end method

.method private blacklist resetAllRecord()V
    .locals 2

    .line 630
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->m2GRttGoodTimeSec:I

    .line 631
    iput v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->m2GRttNormTimeSec:I

    .line 632
    iput v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->m2GRttPoorTimeSec:I

    .line 633
    iput v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->m2GRttBadTimeSec:I

    .line 634
    iput v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->m2GGoodRssiRttBadTimeSec:I

    .line 636
    iput v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->m5GRttGoodTimeSec:I

    .line 637
    iput v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->m5GRttNormTimeSec:I

    .line 638
    iput v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->m5GRttPoorTimeSec:I

    .line 639
    iput v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->m5GRttBadTimeSec:I

    .line 640
    iput v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->m5GGoodRssiRttBadTimeSec:I

    .line 643
    iput v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->m2GRttBadEvtCnt:I

    .line 644
    iput v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->m5GRttBadEvtCnt:I

    .line 645
    iget-object v1, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mRttBadEvtRecordList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 647
    iput v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mGamePlayCnt:I

    .line 648
    iput v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mGameOverCnt:I

    .line 649
    return-void
.end method

.method private blacklist saveRttBadEvtRecordToDatabase()V
    .locals 5

    .line 652
    iget-object v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mRttBadEvtRecordList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 653
    return-void

    .line 656
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 658
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mRttBadEvtRecordList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;

    .line 659
    .local v2, "record":Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;
    iget-object v3, v2, Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;->happenTime:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    .end local v2    # "record":Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;
    goto :goto_0

    .line 662
    :cond_1
    iget-object v1, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mRttBadEvtRecordList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 664
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveRttBadEvtRecordToDatabase map:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/wifi/owm/OwmGameMonitor;->logD(Ljava/lang/String;)V

    .line 666
    iget-object v1, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const-string v3, "wifi_fool_proof"

    const-string v4, "OwmGameRttBadEvtMonitor"

    invoke-static {v1, v3, v4, v0, v2}, Loplus/util/OplusStatistics;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 667
    return-void
.end method

.method private blacklist sendGamePlayingExitDelayEvent()V
    .locals 4

    .line 250
    iget-object v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mAsyncHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mAsyncHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 253
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mAsyncHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0x1b7740

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 254
    return-void
.end method

.method private blacklist setGameLatencyTempInvalid(I)V
    .locals 4
    .param p1, "tmpInvalidTimeSec"    # I

    .line 266
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mIsGameSpaceLatencyValid:Z

    .line 268
    iget-object v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mAsyncHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mAsyncHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 271
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mAsyncHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    mul-int/lit16 v2, p1, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 272
    return-void
.end method

.method private blacklist updataRusconfig()V
    .locals 3

    .line 458
    iget-object v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mWifiRomUpdateHelper:Landroid/net/wifi/IWifiRomUpdateHelper;

    if-eqz v0, :cond_0

    .line 459
    const/16 v1, -0x4b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "OWM_GOOD_RSSI_THRED"

    invoke-interface {v0, v2, v1}, Landroid/net/wifi/IWifiRomUpdateHelper;->getIntegerValue(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mRusGoodRssiThred:I

    .line 460
    iget-object v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mWifiRomUpdateHelper:Landroid/net/wifi/IWifiRomUpdateHelper;

    const/16 v1, 0x12c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "OWM_GAME_RTT_BAD_EVT_SAVE_INTVAL_THRED_SEC"

    invoke-interface {v0, v2, v1}, Landroid/net/wifi/IWifiRomUpdateHelper;->getIntegerValue(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mRusRttBadSaveIntvalThredSec:I

    .line 461
    iget-object v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mWifiRomUpdateHelper:Landroid/net/wifi/IWifiRomUpdateHelper;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "OWM_GAME_RTT_BAD_EVT_SAVE_DURING_THRED_SEC"

    invoke-interface {v0, v2, v1}, Landroid/net/wifi/IWifiRomUpdateHelper;->getIntegerValue(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mRusRttBadDuringThredSec:I

    .line 463
    :cond_0
    return-void
.end method

.method private blacklist updateEvtRttBadEnterRecord()V
    .locals 3

    .line 523
    const-string v0, "updateEvtRttBadEnterRecord"

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmGameMonitor;->logD(Ljava/lang/String;)V

    .line 525
    iget-object v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mCurRttBadEvtRecord:Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;

    if-nez v0, :cond_0

    .line 526
    new-instance v0, Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;-><init>(Landroid/net/wifi/owm/OwmGameMonitor;Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord-IA;)V

    iput-object v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mCurRttBadEvtRecord:Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;

    goto :goto_0

    .line 528
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;->resetRecord()V

    .line 531
    :goto_0
    iget-object v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mOwmRouterMonitor:Landroid/net/wifi/owm/OwmRouterMonitor;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mOwmFeatActMonitor:Landroid/net/wifi/owm/OwmFeatureActiveMonitor;

    if-nez v1, :cond_1

    goto/16 :goto_1

    .line 535
    :cond_1
    iget-object v1, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mCurRttBadEvtRecord:Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;

    invoke-virtual {v0}, Landroid/net/wifi/owm/OwmBaseUtils;->getCurDateTime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;->happenTime:Ljava/lang/String;

    .line 536
    iget-object v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mCurRttBadEvtRecord:Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;

    iget-object v1, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mGameStartTime:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;->gameStartTime:Ljava/lang/String;

    .line 537
    iget-object v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mCurRttBadEvtRecord:Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;

    iget-object v1, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mOwmRouterMonitor:Landroid/net/wifi/owm/OwmRouterMonitor;

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmRouterMonitor;->getApName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;->apName:Ljava/lang/String;

    .line 538
    iget-object v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mCurRttBadEvtRecord:Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v2}, Landroid/net/wifi/owm/OwmBaseUtils;->getFreq()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;->apFreq:Ljava/lang/String;

    .line 539
    iget-object v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mCurRttBadEvtRecord:Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;

    iget-object v1, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmBaseUtils;->getTopAppPkgName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;->topPkg:Ljava/lang/String;

    .line 541
    iget-object v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mCurRttBadEvtRecord:Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;

    iget-object v1, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mOwmNetHealthMonitor:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->getLastFeatActHealthMonitorRecord()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;->featHealthStat:Ljava/lang/String;

    .line 542
    iget-object v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mCurRttBadEvtRecord:Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;

    iget-object v1, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mOwmNetHealthMonitor:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->getLastRouterHealthMonitorRecord()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;->routerHealthStat:Ljava/lang/String;

    .line 543
    iget-object v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mCurRttBadEvtRecord:Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;

    iget-object v1, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mOwmNetHealthMonitor:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->getLastCoexistHealthMonitorRecord()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;->coexistHealthStat:Ljava/lang/String;

    .line 545
    iget-object v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mCurRttBadEvtRecord:Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;

    iget-object v1, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mOwmNetHealthMonitor:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->getLastL2HealthMonitorRecord()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;->l2HealthStat:Ljava/lang/String;

    .line 546
    iget-object v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mCurRttBadEvtRecord:Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;

    iget-object v1, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mOwmNetHealthMonitor:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->getLastDhcpHealthMonitorRecord()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;->dhcpHealthStat:Ljava/lang/String;

    .line 547
    iget-object v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mCurRttBadEvtRecord:Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;

    iget-object v1, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mOwmNetHealthMonitor:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->getLastDnsHealthMonitorRecord()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;->dnsHealthStat:Ljava/lang/String;

    .line 548
    iget-object v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mCurRttBadEvtRecord:Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;

    iget-object v1, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mOwmNetHealthMonitor:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->getLastGatewayHealthMonitorRecord()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;->gatewayHealthStat:Ljava/lang/String;

    .line 549
    iget-object v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mCurRttBadEvtRecord:Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;

    iget-object v1, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mOwmNetHealthMonitor:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->getLastHttpHealthMonitorRecord()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;->httpHealthStat:Ljava/lang/String;

    .line 550
    iget-object v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mCurRttBadEvtRecord:Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;

    iget-object v1, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mOwmNetHealthMonitor:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->getLastTcpHealthMonitorRecord()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;->tcpHealthStat:Ljava/lang/String;

    .line 551
    return-void

    .line 532
    :cond_2
    :goto_1
    return-void
.end method

.method private blacklist updateEvtRttBadExitRecord(II)V
    .locals 2
    .param p1, "newRttBadDurTimeSec"    # I
    .param p2, "newGoodRssiRttBadDurTimeSec"    # I

    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateEvtNetInvalidExitRecord, newRttBadDurTimeSec = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " newGoodRssiRttBadDurTimeSec = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmGameMonitor;->logD(Ljava/lang/String;)V

    .line 492
    iget-object v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mCurRttBadEvtRecord:Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;

    if-nez v0, :cond_0

    .line 493
    return-void

    .line 496
    :cond_0
    iget v1, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mRusRttBadDuringThredSec:I

    if-ge p1, v1, :cond_1

    .line 498
    const-string v0, "updateEvtRttBadExitRecord, newRttBadDurTimeSec < mRusRttBadDuringThred, not record detail info"

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmGameMonitor;->logD(Ljava/lang/String;)V

    .line 499
    return-void

    .line 502
    :cond_1
    iput p1, v0, Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;->durationTime:I

    .line 503
    iget-object v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mCurRttBadEvtRecord:Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;

    iput p2, v0, Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;->goodRssiDurationTime:I

    .line 504
    iget-object v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mCurRttBadEvtRecord:Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;

    invoke-direct {p0}, Landroid/net/wifi/owm/OwmGameMonitor;->getCurRttBadErrCode()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;->errCode:I

    .line 506
    iget-object v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mCurRttBadEvtRecord:Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;

    iget-object v0, v0, Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;->apFreq:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmGameMonitor;->is24G(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 507
    iget v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->m2GRttBadEvtCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->m2GRttBadEvtCnt:I

    goto :goto_0

    .line 509
    :cond_2
    iget v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->m5GRttBadEvtCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->m5GRttBadEvtCnt:I

    .line 512
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateEvtRttBadExitRecord, the mCurRttBadEvtRecord:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mCurRttBadEvtRecord:Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmGameMonitor;->logD(Ljava/lang/String;)V

    .line 514
    iget-object v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mRttBadEvtRecordList:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mCurRttBadEvtRecord:Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mCurRttBadEvtRecord:Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;

    .line 517
    iget-object v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mRttBadEvtRecordList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_3

    .line 518
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmGameMonitor;->saveRttBadEvtRecordToDatabase()V

    .line 520
    :cond_3
    return-void
.end method

.method private blacklist updateRttState(I)V
    .locals 2
    .param p1, "rtt"    # I

    .line 434
    if-gez p1, :cond_0

    .line 435
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mPreRttState:I

    .line 436
    return-void

    .line 439
    :cond_0
    const/16 v0, 0x6e

    if-gt p1, v0, :cond_1

    .line 440
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mPreRttState:I

    goto :goto_0

    .line 441
    :cond_1
    const/16 v0, 0xbe

    if-gt p1, v0, :cond_2

    .line 442
    const/4 v0, 0x1

    iput v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mPreRttState:I

    goto :goto_0

    .line 443
    :cond_2
    const/16 v0, 0x12c

    if-gt p1, v0, :cond_3

    .line 444
    const/4 v0, 0x2

    iput v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mPreRttState:I

    goto :goto_0

    .line 447
    :cond_3
    const/4 v0, 0x3

    iput v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mPreRttState:I

    .line 450
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateRttState, mPreRttState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mPreRttState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmGameMonitor;->logD(Ljava/lang/String;)V

    .line 451
    return-void
.end method

.method private blacklist updateRttStateDurTimeRecord(ZII)V
    .locals 2
    .param p1, "isConnec24G"    # Z
    .param p2, "rttPreState"    # I
    .param p3, "rttChangeDiffTimeSec"    # I

    .line 554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateRttStateDurTimeRecord, isConnec24G = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rttPreState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rttChangeDiffTimeSec = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmGameMonitor;->logD(Ljava/lang/String;)V

    .line 556
    if-eqz p1, :cond_0

    .line 558
    iget v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mPreRttState:I

    packed-switch v0, :pswitch_data_0

    .line 572
    goto :goto_0

    .line 569
    :pswitch_0
    iget v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->m2GRttBadTimeSec:I

    add-int/2addr v0, p3

    iput v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->m2GRttBadTimeSec:I

    .line 570
    goto :goto_0

    .line 566
    :pswitch_1
    iget v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->m2GRttPoorTimeSec:I

    add-int/2addr v0, p3

    iput v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->m2GRttPoorTimeSec:I

    .line 567
    goto :goto_0

    .line 563
    :pswitch_2
    iget v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->m2GRttNormTimeSec:I

    add-int/2addr v0, p3

    iput v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->m2GRttNormTimeSec:I

    .line 564
    goto :goto_0

    .line 560
    :pswitch_3
    iget v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->m2GRttGoodTimeSec:I

    add-int/2addr v0, p3

    iput v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->m2GRttGoodTimeSec:I

    .line 561
    goto :goto_0

    .line 576
    :cond_0
    iget v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mPreRttState:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 587
    :pswitch_4
    iget v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->m5GRttBadTimeSec:I

    add-int/2addr v0, p3

    iput v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->m5GRttBadTimeSec:I

    .line 588
    goto :goto_0

    .line 584
    :pswitch_5
    iget v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->m5GRttPoorTimeSec:I

    add-int/2addr v0, p3

    iput v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->m5GRttPoorTimeSec:I

    .line 585
    goto :goto_0

    .line 581
    :pswitch_6
    iget v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->m5GRttNormTimeSec:I

    add-int/2addr v0, p3

    iput v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->m5GRttNormTimeSec:I

    .line 582
    goto :goto_0

    .line 578
    :pswitch_7
    iget v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->m5GRttGoodTimeSec:I

    add-int/2addr v0, p3

    iput v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->m5GRttGoodTimeSec:I

    .line 579
    nop

    .line 593
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public whitelist addGameFrontInState(Z)V
    .locals 1
    .param p1, "isFrontIn"    # Z

    .line 219
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmGameMonitor;->setGameLatencyTempInvalid(I)V

    .line 220
    return-void
.end method

.method public declared-synchronized whitelist addGameLatencyRecord(Ljava/lang/String;I)V
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "rtt"    # I

    monitor-enter p0

    .line 365
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addGameLatencyRecord, pkgName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rtt = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmGameMonitor;->logD(Ljava/lang/String;)V

    .line 367
    if-eqz p1, :cond_a

    if-gez p2, :cond_0

    goto/16 :goto_1

    .line 371
    :cond_0
    iget-boolean v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mWifiConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 372
    monitor-exit p0

    return-void

    .line 375
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mGamePlaying:Z

    if-nez v0, :cond_2

    .line 376
    const-string v0, "OwmGameMonitor"

    const-string v1, "addGameLatencyRecord, mGamePlaying = false!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 377
    monitor-exit p0

    return-void

    .line 380
    .end local p0    # "this":Landroid/net/wifi/owm/OwmGameMonitor;
    :cond_2
    :try_start_2
    iget-boolean v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mIsGameSpaceLatencyValid:Z

    if-nez v0, :cond_3

    .line 381
    const-string v0, "OwmGameMonitor"

    const-string v1, "addGameLatencyRecord, but mIsGameSpaceLatencyValid = false!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 382
    monitor-exit p0

    return-void

    .line 385
    :cond_3
    :try_start_3
    iput p2, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mPreRtt:I

    .line 386
    iput-object p1, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mGamePkgName:Ljava/lang/String;

    .line 389
    iget-wide v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mPreRttChangeSysTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 391
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mPreRttChangeSysTime:J

    .line 394
    invoke-direct {p0, p2}, Landroid/net/wifi/owm/OwmGameMonitor;->updateRttState(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 395
    monitor-exit p0

    return-void

    .line 398
    :cond_4
    if-nez p2, :cond_5

    :try_start_4
    const-string v0, "OwmGameMonitor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_5

    .line 401
    monitor-exit p0

    return-void

    .line 404
    :cond_5
    :try_start_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 405
    .local v0, "curSystemTime":J
    iget-wide v2, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mPreRttChangeSysTime:J

    sub-long v2, v0, v2

    long-to-int v2, v2

    div-int/lit16 v2, v2, 0x3e8

    .line 406
    .local v2, "diffTimeSec":I
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmGameMonitor;->isWifConnect24G()Z

    move-result v3

    .line 409
    .local v3, "isConnect2G":Z
    iget v4, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mPreRttState:I

    invoke-direct {p0, v3, v4, v2}, Landroid/net/wifi/owm/OwmGameMonitor;->updateRttStateDurTimeRecord(ZII)V

    .line 411
    const/16 v4, 0xbe

    if-gt p2, v4, :cond_7

    .line 413
    iget v4, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mPreRttState:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_6

    const/4 v5, 0x2

    if-ne v4, v5, :cond_9

    .line 415
    :cond_6
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmGameMonitor;->addEvtRttBadExitRecord()V

    goto :goto_0

    .line 419
    :cond_7
    iget v4, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mPreRttState:I

    if-eqz v4, :cond_8

    const/4 v5, 0x1

    if-ne v4, v5, :cond_9

    .line 421
    :cond_8
    iget-object v4, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v4}, Landroid/net/wifi/owm/OwmBaseUtils;->isScreenOn()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 422
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmGameMonitor;->addEvtRttBadEnterRecord()V

    .line 428
    :cond_9
    :goto_0
    invoke-direct {p0, p2}, Landroid/net/wifi/owm/OwmGameMonitor;->updateRttState(I)V

    .line 430
    iput-wide v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mPreRttChangeSysTime:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 431
    monitor-exit p0

    return-void

    .line 368
    .end local v0    # "curSystemTime":J
    .end local v2    # "diffTimeSec":I
    .end local v3    # "isConnect2G":Z
    :cond_a
    :goto_1
    monitor-exit p0

    return-void

    .line 364
    .end local p1    # "pkgName":Ljava/lang/String;
    .end local p2    # "rtt":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public whitelist addGamePlayingState(Z)V
    .locals 2
    .param p1, "isPlaying"    # Z

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addGamePlayingState, isPlaying = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmGameMonitor;->logD(Ljava/lang/String;)V

    .line 225
    iget-boolean v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mGamePlaying:Z

    if-ne v0, p1, :cond_0

    .line 226
    return-void

    .line 229
    :cond_0
    if-eqz p1, :cond_1

    .line 230
    iget v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mGamePlayCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mGamePlayCnt:I

    .line 231
    iget-object v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v0}, Landroid/net/wifi/owm/OwmBaseUtils;->getCurDateTime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mGameStartTime:Ljava/lang/String;

    .line 232
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmGameMonitor;->sendGamePlayingExitDelayEvent()V

    .line 233
    const/4 v0, 0x0

    const-string v1, "OwmGameMonitor"

    invoke-virtual {p0, v1, v0}, Landroid/net/wifi/owm/OwmGameMonitor;->addGameLatencyRecord(Ljava/lang/String;I)V

    goto :goto_0

    .line 236
    :cond_1
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmGameMonitor;->clearGamePlayingExitDelayEvent()V

    .line 237
    iget-object v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mGamePkgName:Ljava/lang/String;

    iget v1, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mPreRtt:I

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/owm/OwmGameMonitor;->addGameLatencyRecord(Ljava/lang/String;I)V

    .line 238
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmGameMonitor;->addEvtRttBadExitRecord()V

    .line 239
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmGameMonitor;->initTempParamsForGamePlayingExit()V

    .line 241
    iget v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mGameOverCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mGameOverCnt:I

    .line 242
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mGameStartTime:Ljava/lang/String;

    .line 245
    :goto_0
    iput-boolean p1, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mGamePlaying:Z

    .line 246
    return-void
.end method

.method public whitelist enableVerboseLogging(Z)V
    .locals 0
    .param p1, "verbose"    # Z

    .line 700
    iput-boolean p1, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mVerboseLoggingEnabled:Z

    .line 701
    return-void
.end method

.method public whitelist getCurGameRttBadEventRecord()Ljava/lang/String;
    .locals 5

    .line 690
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 692
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mRttBadEvtRecordList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;

    .line 693
    .local v2, "record":Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;
    iget-object v3, v2, Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;->happenTime:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    .end local v2    # "record":Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;
    goto :goto_0

    .line 696
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getCurRecordForNetHealth()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 598
    iget-object v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mGamePkgName:Ljava/lang/String;

    iget v1, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mPreRtt:I

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/owm/OwmGameMonitor;->addGameLatencyRecord(Ljava/lang/String;I)V

    .line 600
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmGameMonitor;->generateRecordToDatabaseMap()Ljava/util/Map;

    move-result-object v0

    .line 601
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-object v0
.end method

.method public whitelist getRecordToDatabase()Ljava/lang/String;
    .locals 2

    .line 684
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmGameMonitor;->generateRecordToDatabaseMap()Ljava/util/Map;

    move-result-object v0

    .line 686
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist saveRecordToDatabase()V
    .locals 5

    .line 670
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmGameMonitor;->generateRecordToDatabaseMap()Ljava/util/Map;

    move-result-object v0

    .line 672
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveRecordToDatabase, map: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/wifi/owm/OwmGameMonitor;->logD(Ljava/lang/String;)V

    .line 675
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmGameMonitor;->saveRttBadEvtRecordToDatabase()V

    .line 678
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmGameMonitor;->resetAllRecord()V

    .line 680
    iget-object v1, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mContext:Landroid/content/Context;

    const-string v2, "wifi_fool_proof"

    const-string v3, "OwmGameMonitor"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Loplus/util/OplusStatistics;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 681
    return-void
.end method

.method public whitelist setRssi(I)V
    .locals 7
    .param p1, "rssi"    # I

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRssi, rssi = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mPreRssiState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mPreRssiState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mPreRttState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mPreRttState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmGameMonitor;->logD(Ljava/lang/String;)V

    .line 320
    iget-boolean v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mWifiConnected:Z

    if-nez v0, :cond_0

    .line 321
    return-void

    .line 324
    :cond_0
    iput p1, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mRssi:I

    .line 326
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 327
    .local v0, "curSystemTime":J
    iget-wide v2, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mPreRssiChangeSysTime:J

    sub-long v4, v0, v2

    long-to-int v4, v4

    div-int/lit16 v4, v4, 0x3e8

    .line 330
    .local v4, "diffRssiChangeTimeSec":I
    const-wide/16 v5, 0x0

    cmp-long v2, v2, v5

    const/4 v3, 0x4

    const/4 v5, 0x5

    if-nez v2, :cond_2

    .line 331
    iput-wide v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mPreRssiChangeSysTime:J

    .line 334
    iget v2, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mRusGoodRssiThred:I

    if-le p1, v2, :cond_1

    .line 335
    iput v3, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mPreRssiState:I

    goto :goto_0

    .line 337
    :cond_1
    iput v5, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mPreRssiState:I

    .line 340
    :goto_0
    return-void

    .line 344
    :cond_2
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmGameMonitor;->isGoodRssiAndHighLatencyState()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 345
    iget v2, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mGoodRssiRttBadTimeSec:I

    add-int/2addr v2, v4

    iput v2, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mGoodRssiRttBadTimeSec:I

    .line 347
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmGameMonitor;->isWifConnect24G()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 348
    iget v2, p0, Landroid/net/wifi/owm/OwmGameMonitor;->m2GGoodRssiRttBadTimeSec:I

    add-int/2addr v2, v4

    iput v2, p0, Landroid/net/wifi/owm/OwmGameMonitor;->m2GGoodRssiRttBadTimeSec:I

    goto :goto_1

    .line 350
    :cond_3
    iget v2, p0, Landroid/net/wifi/owm/OwmGameMonitor;->m5GGoodRssiRttBadTimeSec:I

    add-int/2addr v2, v4

    iput v2, p0, Landroid/net/wifi/owm/OwmGameMonitor;->m5GGoodRssiRttBadTimeSec:I

    .line 355
    :cond_4
    :goto_1
    iget v2, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mRusGoodRssiThred:I

    if-le p1, v2, :cond_5

    .line 356
    iput v3, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mPreRssiState:I

    goto :goto_2

    .line 358
    :cond_5
    iput v5, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mPreRssiState:I

    .line 361
    :goto_2
    iput-wide v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mPreRssiChangeSysTime:J

    .line 362
    return-void
.end method

.method public whitelist setWifiConnState(Z)V
    .locals 2
    .param p1, "isConnected"    # Z

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setWifiConnState, mWifiConnected = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mWifiConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isConnected = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmGameMonitor;->logD(Ljava/lang/String;)V

    .line 200
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmGameMonitor;->updataRusconfig()V

    .line 201
    iget-boolean v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mWifiConnected:Z

    if-ne p1, v0, :cond_0

    .line 203
    return-void

    .line 206
    :cond_0
    if-nez p1, :cond_1

    .line 208
    iget-object v0, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mGamePkgName:Ljava/lang/String;

    iget v1, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mPreRtt:I

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/owm/OwmGameMonitor;->addGameLatencyRecord(Ljava/lang/String;I)V

    .line 209
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmGameMonitor;->addEvtRttBadExitRecord()V

    .line 210
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmGameMonitor;->initTempParamsForGamePlayingExit()V

    .line 213
    :cond_1
    iput-boolean p1, p0, Landroid/net/wifi/owm/OwmGameMonitor;->mWifiConnected:Z

    .line 214
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmGameMonitor;->setGameLatencyTempInvalid(I)V

    .line 215
    return-void
.end method
