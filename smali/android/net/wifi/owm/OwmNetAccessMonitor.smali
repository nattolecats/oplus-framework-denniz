.class public Landroid/net/wifi/owm/OwmNetAccessMonitor;
.super Ljava/lang/Object;
.source "OwmNetAccessMonitor.java"

# interfaces
.implements Landroid/net/wifi/owm/IOwmMonitorCommon;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;,
        Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;,
        Landroid/net/wifi/owm/OwmNetAccessMonitor$AsyncHandler;
    }
.end annotation


# static fields
.field private static final blacklist DEFAULT_OWM_GOOD_RSSI_THRED:I = -0x4b

.field private static final blacklist DEFAULT_OWM_NET_SLOW_EVT_SAVE_DURING_THRED_SEC:I = 0xa

.field private static final blacklist DEFAULT_OWM_NET_SLOW_EVT_SAVE_INTVAL_THRED_SEC:I = 0x4b0

.field private static final blacklist EVT_RECORD_SIZE:I = 0x8

.field private static final blacklist MIN_NET_INVALID_DURING_SEC:I = 0x3c

.field private static final blacklist MIN_NET_SLOW_DURING_SEC:I = 0x3c

.field private static final blacklist MSG_BASE:I = 0x0

.field private static final blacklist MSG_NET_INVALID_EVT_ENTER:I = 0x1

.field private static final blacklist MSG_NET_INVALID_EVT_EXIT:I = 0x3

.field private static final blacklist MSG_NET_SLOW_EVT_ENTER:I = 0x2

.field private static final blacklist MSG_NET_SLOW_EVT_EXIT:I = 0x4

.field private static final blacklist NET_BAD_STATE:I = 0x3

.field private static final blacklist NET_DEFAULT_STATE:I = -0x1

.field private static final blacklist NET_GOOD_STATE:I = 0x0

.field private static final blacklist NET_INVALID_STATE:I = 0x5

.field private static final blacklist NET_NORM_STATE:I = 0x1

.field private static final blacklist NET_POOR_STATE:I = 0x2

.field private static final blacklist NET_SCORE_BAD:I = 0x28

.field private static final blacklist NET_SCORE_GOOD:I = 0x50

.field private static final blacklist NET_SCORE_NORM:I = 0x3c

.field private static final blacklist NET_VALID_STATE:I = 0x4

.field private static final blacklist RSSI_BAD_STATE:I = 0x7

.field private static final blacklist RSSI_GOOD_STATE:I = 0x6

.field private static final blacklist RSSI_MIN:I = -0x64

.field private static final blacklist SEC_OF_MS:I = 0x3e8

.field private static final blacklist TAG:Ljava/lang/String; = "OwmNetAccessMonitor"

.field private static volatile blacklist sInstance:Landroid/net/wifi/owm/OwmNetAccessMonitor;


# instance fields
.field private blacklist mAsyncHandler:Landroid/os/Handler;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mCurApCanNetAccess:Z

.field private blacklist mCurNetInvalidEvtRecord:Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;

.field private blacklist mCurNetSlowEvtRecord:Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;

.field private blacklist mGoodRssiNetInvalid1MinCnt:I

.field private blacklist mGoodRssiNetInvalid2MinCnt:I

.field private blacklist mGoodRssiNetInvalid4MinCnt:I

.field private blacklist mGoodRssiNetInvalid8MinCnt:I

.field private blacklist mGoodRssiNetInvalidMore8MinCnt:I

.field private blacklist mGoodRssiNetInvalidTimeSec:I

.field private blacklist mGoodRssiNetSlow1MinCnt:I

.field private blacklist mGoodRssiNetSlow2MinCnt:I

.field private blacklist mGoodRssiNetSlow4MinCnt:I

.field private blacklist mGoodRssiNetSlow8MinCnt:I

.field private blacklist mGoodRssiNetSlowMore8MinCnt:I

.field private blacklist mGoodRssiNetSlowTimeSec:I

.field private blacklist mNetInValidEnter:Z

.field private blacklist mNetInvalid1MinCnt:I

.field private blacklist mNetInvalid2MinCnt:I

.field private blacklist mNetInvalid4MinCnt:I

.field private blacklist mNetInvalid8MinCnt:I

.field private blacklist mNetInvalidEvtCnt:I

.field private blacklist mNetInvalidEvtRecordList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mNetInvalidFirstEvtCnt:I

.field private blacklist mNetInvalidFirstFlag:Z

.field private blacklist mNetInvalidMore8MinCnt:I

.field private blacklist mNetInvalidTimeSec:I

.field private blacklist mNetScoreBadTimeSec:I

.field private blacklist mNetScoreGoodTimeSec:I

.field private blacklist mNetScoreNormTimeSec:I

.field private blacklist mNetScorePoorTimeSec:I

.field private blacklist mNetSlow1MinCnt:I

.field private blacklist mNetSlow2MinCnt:I

.field private blacklist mNetSlow4MinCnt:I

.field private blacklist mNetSlow8MinCnt:I

.field private blacklist mNetSlowEnter:Z

.field private blacklist mNetSlowEnterScore:I

.field private blacklist mNetSlowEvtCnt:I

.field private blacklist mNetSlowEvtRecordList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mNetSlowExitScore:I

.field private blacklist mNetSlowMore8MinCnt:I

.field private blacklist mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

.field private blacklist mOwmNetHealthMonitor:Landroid/net/wifi/owm/OwmNetHealthMonitor;

.field private blacklist mOwmRouterMonitor:Landroid/net/wifi/owm/OwmRouterMonitor;

.field private blacklist mPreGoodRssiNetInvalidTimeSec:I

.field private blacklist mPreGoodRssiNetSlowTimeSec:I

.field private blacklist mPreNetScoreChangeSysTime:J

.field private blacklist mPreNetScoreState:I

.field private blacklist mPreNetSlowEnter:Z

.field private blacklist mPreNetSlowSysTime:J

.field private blacklist mPreNetValidChangeSysTime:J

.field private blacklist mPreNetValidState:I

.field private blacklist mPreRssiChangeSysTime:J

.field private blacklist mPreRssiState:I

.field private blacklist mPreWifiConnSysTime:J

.field private blacklist mRssi:I

.field private blacklist mRusGoodRssiThred:I

.field private blacklist mRusNetSlowSaveDuringThredSec:I

.field private blacklist mRusNetSlowSaveIntvalThredSec:I

.field private blacklist mScreenOn:Z

.field private blacklist mVerboseLoggingEnabled:Z

.field private blacklist mWifiConnTimeSec:I

.field private blacklist mWifiConnected:Z

.field private blacklist mWifiRomUpdateHelper:Landroid/net/wifi/IWifiRomUpdateHelper;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mlogD(Landroid/net/wifi/owm/OwmNetAccessMonitor;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/owm/OwmNetAccessMonitor;->logD(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateEvtNetInvalidEnterRecord(Landroid/net/wifi/owm/OwmNetAccessMonitor;)V
    .locals 0

    invoke-direct {p0}, Landroid/net/wifi/owm/OwmNetAccessMonitor;->updateEvtNetInvalidEnterRecord()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateEvtNetInvalidExitRecord(Landroid/net/wifi/owm/OwmNetAccessMonitor;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/net/wifi/owm/OwmNetAccessMonitor;->updateEvtNetInvalidExitRecord(IIZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateEvtNetSlowEnterRecord(Landroid/net/wifi/owm/OwmNetAccessMonitor;)V
    .locals 0

    invoke-direct {p0}, Landroid/net/wifi/owm/OwmNetAccessMonitor;->updateEvtNetSlowEnterRecord()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateEvtNetSlowExitRecord(Landroid/net/wifi/owm/OwmNetAccessMonitor;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/net/wifi/owm/OwmNetAccessMonitor;->updateEvtNetSlowExitRecord(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateNetInvalidDurTimeCntRecord(Landroid/net/wifi/owm/OwmNetAccessMonitor;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/net/wifi/owm/OwmNetAccessMonitor;->updateNetInvalidDurTimeCntRecord(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateNetSlowDurTimeCntRecord(Landroid/net/wifi/owm/OwmNetAccessMonitor;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/net/wifi/owm/OwmNetAccessMonitor;->updateNetSlowDurTimeCntRecord(II)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 51
    const/4 v0, 0x0

    sput-object v0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->sInstance:Landroid/net/wifi/owm/OwmNetAccessMonitor;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mContext:Landroid/content/Context;

    .line 86
    const/4 v1, 0x0

    iput v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mWifiConnTimeSec:I

    .line 89
    iput v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetInvalidTimeSec:I

    .line 92
    iput v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mGoodRssiNetInvalidTimeSec:I

    .line 95
    iput v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mGoodRssiNetSlowTimeSec:I

    .line 98
    iput v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetScoreGoodTimeSec:I

    .line 99
    iput v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetScoreNormTimeSec:I

    .line 100
    iput v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetScorePoorTimeSec:I

    .line 101
    iput v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetScoreBadTimeSec:I

    .line 104
    iput v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetInvalid1MinCnt:I

    .line 105
    iput v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetInvalid2MinCnt:I

    .line 106
    iput v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetInvalid4MinCnt:I

    .line 107
    iput v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetInvalid8MinCnt:I

    .line 108
    iput v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetInvalidMore8MinCnt:I

    .line 111
    iput v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mGoodRssiNetInvalid1MinCnt:I

    .line 112
    iput v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mGoodRssiNetInvalid2MinCnt:I

    .line 113
    iput v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mGoodRssiNetInvalid4MinCnt:I

    .line 114
    iput v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mGoodRssiNetInvalid8MinCnt:I

    .line 115
    iput v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mGoodRssiNetInvalidMore8MinCnt:I

    .line 118
    iput v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetSlow1MinCnt:I

    .line 119
    iput v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetSlow2MinCnt:I

    .line 120
    iput v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetSlow4MinCnt:I

    .line 121
    iput v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetSlow8MinCnt:I

    .line 122
    iput v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetSlowMore8MinCnt:I

    .line 125
    iput v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mGoodRssiNetSlow1MinCnt:I

    .line 126
    iput v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mGoodRssiNetSlow2MinCnt:I

    .line 127
    iput v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mGoodRssiNetSlow4MinCnt:I

    .line 128
    iput v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mGoodRssiNetSlow8MinCnt:I

    .line 129
    iput v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mGoodRssiNetSlowMore8MinCnt:I

    .line 132
    iput v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetInvalidEvtCnt:I

    .line 133
    iput-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mCurNetInvalidEvtRecord:Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;

    .line 134
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetInvalidEvtRecordList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 137
    iput v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetSlowEvtCnt:I

    .line 138
    iput-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mCurNetSlowEvtRecord:Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;

    .line 139
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetSlowEvtRecordList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 143
    iput v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetInvalidFirstEvtCnt:I

    .line 144
    iput-boolean v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetInvalidFirstFlag:Z

    .line 147
    const/4 v2, -0x1

    iput v2, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mPreNetScoreState:I

    .line 148
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mPreNetScoreChangeSysTime:J

    .line 149
    iput-wide v3, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mPreNetSlowSysTime:J

    .line 150
    iput-boolean v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mPreNetSlowEnter:Z

    .line 153
    const/4 v5, 0x6

    iput v5, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mPreRssiState:I

    .line 154
    const/16 v5, -0x64

    iput v5, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mRssi:I

    .line 155
    iput-wide v3, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mPreRssiChangeSysTime:J

    .line 156
    iput v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mPreGoodRssiNetInvalidTimeSec:I

    .line 157
    iput v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mPreGoodRssiNetSlowTimeSec:I

    .line 160
    iput-wide v3, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mPreNetValidChangeSysTime:J

    .line 161
    iput v2, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mPreNetValidState:I

    .line 162
    iput-boolean v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetInValidEnter:Z

    .line 163
    iput-boolean v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetSlowEnter:Z

    .line 164
    iput-boolean v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mCurApCanNetAccess:Z

    .line 167
    iput-wide v3, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mPreWifiConnSysTime:J

    .line 170
    iput-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mAsyncHandler:Landroid/os/Handler;

    .line 171
    iput-boolean v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mVerboseLoggingEnabled:Z

    .line 172
    iput-boolean v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mScreenOn:Z

    .line 173
    iput-boolean v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mWifiConnected:Z

    .line 175
    iput-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    .line 176
    iput-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mOwmRouterMonitor:Landroid/net/wifi/owm/OwmRouterMonitor;

    .line 177
    iput-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mOwmNetHealthMonitor:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    .line 178
    iput-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mWifiRomUpdateHelper:Landroid/net/wifi/IWifiRomUpdateHelper;

    .line 187
    const/16 v0, 0xa

    iput v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mRusNetSlowSaveDuringThredSec:I

    .line 188
    const/16 v0, 0x4b0

    iput v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mRusNetSlowSaveIntvalThredSec:I

    .line 189
    const/16 v0, -0x4b

    iput v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mRusGoodRssiThred:I

    .line 191
    iput v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetSlowEnterScore:I

    .line 192
    iput v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetSlowExitScore:I

    .line 207
    iput-object p1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mContext:Landroid/content/Context;

    .line 208
    invoke-static {p1}, Landroid/net/wifi/owm/OwmBaseUtils;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmBaseUtils;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    .line 209
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmRouterMonitor;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmRouterMonitor;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mOwmRouterMonitor:Landroid/net/wifi/owm/OwmRouterMonitor;

    .line 210
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmNetHealthMonitor;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mOwmNetHealthMonitor:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    .line 211
    invoke-static {}, Landroid/common/OplusFrameworkFactory;->getInstance()Landroid/common/OplusFrameworkFactory;

    move-result-object v0

    sget-object v2, Landroid/net/wifi/IWifiRomUpdateHelper;->DEFAULT:Landroid/net/wifi/IWifiRomUpdateHelper;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mContext:Landroid/content/Context;

    aput-object v4, v3, v1

    invoke-virtual {v0, v2, v3}, Landroid/common/OplusFrameworkFactory;->getFeature(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/IWifiRomUpdateHelper;

    iput-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mWifiRomUpdateHelper:Landroid/net/wifi/IWifiRomUpdateHelper;

    .line 212
    new-instance v0, Landroid/net/wifi/owm/OwmNetAccessMonitor$AsyncHandler;

    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmBaseUtils;->getOwmMonitorThread()Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/net/wifi/owm/OwmNetAccessMonitor$AsyncHandler;-><init>(Landroid/net/wifi/owm/OwmNetAccessMonitor;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mAsyncHandler:Landroid/os/Handler;

    .line 213
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmNetAccessMonitor;->updateRusConfig()V

    .line 214
    return-void
.end method

.method private blacklist addEvtNetInvalidEnterRecord()V
    .locals 3

    .line 573
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetInValidEnter:Z

    .line 574
    iget v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mGoodRssiNetInvalidTimeSec:I

    iput v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mPreGoodRssiNetInvalidTimeSec:I

    .line 575
    iget v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mPreNetValidState:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetInvalidFirstFlag:Z

    .line 578
    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mAsyncHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 579
    return-void
.end method

.method private blacklist addEvtNetInvalidExitRecord()V
    .locals 7

    .line 582
    iget-boolean v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetInValidEnter:Z

    if-nez v0, :cond_0

    .line 583
    return-void

    .line 586
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 587
    .local v0, "curSystemTime":J
    iget-wide v2, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mPreNetValidChangeSysTime:J

    sub-long v2, v0, v2

    long-to-int v2, v2

    div-int/lit16 v2, v2, 0x3e8

    .line 588
    .local v2, "newInvalidDurTimeSec":I
    iget v3, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mGoodRssiNetInvalidTimeSec:I

    iget v4, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mPreGoodRssiNetInvalidTimeSec:I

    sub-int/2addr v3, v4

    .line 589
    .local v3, "newGoodRssiInvalidDurTimeSec":I
    iget-boolean v4, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetInvalidFirstFlag:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 592
    .local v4, "isFirstNetInvalid":Ljava/lang/Boolean;
    iget-object v5, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mAsyncHandler:Landroid/os/Handler;

    const/4 v6, 0x3

    invoke-virtual {v5, v6, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 594
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetInValidEnter:Z

    .line 595
    iput-boolean v5, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetInvalidFirstFlag:Z

    .line 598
    iget v5, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetInvalidTimeSec:I

    add-int/2addr v5, v2

    iput v5, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetInvalidTimeSec:I

    .line 599
    return-void
.end method

.method private blacklist addEvtNetSlowEnterRecord()V
    .locals 2

    .line 602
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetSlowEnter:Z

    .line 603
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mPreNetSlowSysTime:J

    .line 604
    iget v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mGoodRssiNetSlowTimeSec:I

    iput v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mPreGoodRssiNetSlowTimeSec:I

    .line 606
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mAsyncHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 607
    return-void
.end method

.method private blacklist addEvtNetSlowExitRecord()V
    .locals 6

    .line 610
    iget-boolean v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetSlowEnter:Z

    if-nez v0, :cond_0

    .line 611
    return-void

    .line 614
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetSlowEnter:Z

    .line 616
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 617
    .local v0, "curSystemTime":J
    iget-wide v2, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mPreNetSlowSysTime:J

    sub-long v2, v0, v2

    long-to-int v2, v2

    div-int/lit16 v2, v2, 0x3e8

    .line 618
    .local v2, "newSlowDurTimeSec":I
    iget v3, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mGoodRssiNetSlowTimeSec:I

    iget v4, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mPreGoodRssiNetSlowTimeSec:I

    sub-int/2addr v3, v4

    .line 620
    .local v3, "newGoodRssiSlowDurTimeSec":I
    iget-object v4, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mAsyncHandler:Landroid/os/Handler;

    const/4 v5, 0x4

    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 621
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

    .line 787
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 789
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mWifiConnTimeSec:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "WifiConnTimeSec"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetInvalidTimeSec:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "NetInvalidTimeSec"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mGoodRssiNetInvalidTimeSec:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "GoodRssiNetInvalidTimeSec"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 792
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mGoodRssiNetSlowTimeSec:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "GoodRssiNetSlowTimeSec"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetScoreGoodTimeSec:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "NetScoreGoodTimeSec"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetScoreNormTimeSec:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "NetScoreNormTimeSec"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetScorePoorTimeSec:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "NetScorePoorTimeSec"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetScoreBadTimeSec:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "NetScoreBadTimeSec"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 799
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetInvalid1MinCnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "NetInvalid1MinCnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 800
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetInvalid2MinCnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "NetInvalid2MinCnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 801
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetInvalid4MinCnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "NetInvalid4MinCnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 802
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetInvalid8MinCnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "NetInvalid8MinCnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetInvalidMore8MinCnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "NetInvalidMore8MinCnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mGoodRssiNetInvalid1MinCnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "GoodRssiNetInvalid1MinCnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 806
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mGoodRssiNetInvalid2MinCnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "GoodRssiNetInvalid2MinCnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mGoodRssiNetInvalid4MinCnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "GoodRssiNetInvalid4MinCnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 808
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mGoodRssiNetInvalid8MinCnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "GoodRssiNetInvalid8MinCnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 809
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mGoodRssiNetInvalidMore8MinCnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "GoodRssiNetInvalidMore8MinCnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 811
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetSlow1MinCnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "NetSlow1MinCnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 812
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetSlow2MinCnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "NetSlow2MinCnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 813
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetSlow4MinCnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "NetSlow4MinCnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetSlow8MinCnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "NetSlow8MinCnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 815
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetSlowMore8MinCnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "NetSlowMore8MinCnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mGoodRssiNetSlow1MinCnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "GoodRssiNetSlow1MinCnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mGoodRssiNetSlow2MinCnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "GoodRssiNetSlow2MinCnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mGoodRssiNetSlow4MinCnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "GoodRssiNetSlow4MinCnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mGoodRssiNetSlow8MinCnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "GoodRssiNetSlow8MinCnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 821
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mGoodRssiNetSlowMore8MinCnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "GoodRssiNetSlowMore8MinCnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 823
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetInvalidEvtCnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "NetInvalidEvtCnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 824
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetSlowEvtCnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "NetSlowEvtCnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetInvalidFirstEvtCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetInvalidFirstEvtCnt"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    return-object v0
.end method

.method private blacklist getCurNetInvalidErrCode()I
    .locals 1

    .line 565
    const/4 v0, -0x1

    return v0
.end method

.method private blacklist getCurNetSlowErrCode()I
    .locals 1

    .line 569
    const/4 v0, -0x1

    return v0
.end method

.method public static whitelist getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmNetAccessMonitor;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 195
    sget-object v0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->sInstance:Landroid/net/wifi/owm/OwmNetAccessMonitor;

    if-nez v0, :cond_1

    .line 196
    const-class v0, Landroid/net/wifi/owm/OwmNetAccessMonitor;

    monitor-enter v0

    .line 197
    :try_start_0
    sget-object v1, Landroid/net/wifi/owm/OwmNetAccessMonitor;->sInstance:Landroid/net/wifi/owm/OwmNetAccessMonitor;

    if-nez v1, :cond_0

    .line 198
    new-instance v1, Landroid/net/wifi/owm/OwmNetAccessMonitor;

    invoke-direct {v1, p0}, Landroid/net/wifi/owm/OwmNetAccessMonitor;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/net/wifi/owm/OwmNetAccessMonitor;->sInstance:Landroid/net/wifi/owm/OwmNetAccessMonitor;

    .line 200
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 203
    :cond_1
    :goto_0
    sget-object v0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->sInstance:Landroid/net/wifi/owm/OwmNetAccessMonitor;

    return-object v0
.end method

.method private blacklist initTempParamsForWifiDisconnect()V
    .locals 5

    .line 540
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mPreNetScoreState:I

    .line 541
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mPreNetScoreChangeSysTime:J

    .line 542
    iput-wide v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mPreNetSlowSysTime:J

    .line 543
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mPreNetSlowEnter:Z

    .line 546
    const/4 v4, 0x6

    iput v4, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mPreRssiState:I

    .line 547
    const/16 v4, -0x64

    iput v4, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mRssi:I

    .line 548
    iput-wide v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mPreRssiChangeSysTime:J

    .line 549
    iput v3, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mPreGoodRssiNetInvalidTimeSec:I

    .line 550
    iput v3, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mPreGoodRssiNetSlowTimeSec:I

    .line 553
    iput-wide v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mPreNetValidChangeSysTime:J

    .line 554
    iput v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mPreNetValidState:I

    .line 555
    iput-boolean v3, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetInvalidFirstFlag:Z

    .line 556
    iput-boolean v3, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetInValidEnter:Z

    .line 557
    iput-boolean v3, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetSlowEnter:Z

    .line 558
    iput-boolean v3, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mCurApCanNetAccess:Z

    .line 561
    iput-wide v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mPreWifiConnSysTime:J

    .line 562
    return-void
.end method

.method private blacklist isGoodRssiAndNetInvalidState()Z
    .locals 2

    .line 256
    iget-boolean v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mCurApCanNetAccess:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetInValidEnter:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mPreRssiState:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist isGoodRssiAndNetSlowState()Z
    .locals 2

    .line 260
    iget-boolean v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mCurApCanNetAccess:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetSlowEnter:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mPreRssiState:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist isNetValidStateReEnter(Z)Z
    .locals 2
    .param p1, "isValid"    # Z

    .line 427
    iget v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mPreNetValidState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    if-nez p1, :cond_2

    .line 428
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 431
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist logD(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .line 1116
    iget-boolean v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 1117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mScreenOn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mScreenOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OwmNetAccessMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    :cond_0
    return-void
.end method

.method private blacklist resetAllRecord()V
    .locals 2

    .line 833
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mWifiConnTimeSec:I

    .line 836
    iput v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetInvalidTimeSec:I

    .line 839
    iput v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mGoodRssiNetInvalidTimeSec:I

    .line 842
    iput v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mGoodRssiNetSlowTimeSec:I

    .line 845
    iput v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetScoreGoodTimeSec:I

    .line 846
    iput v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetScoreNormTimeSec:I

    .line 847
    iput v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetScorePoorTimeSec:I

    .line 848
    iput v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetScoreBadTimeSec:I

    .line 851
    iput v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetInvalid1MinCnt:I

    .line 852
    iput v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetInvalid2MinCnt:I

    .line 853
    iput v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetInvalid4MinCnt:I

    .line 854
    iput v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetInvalid8MinCnt:I

    .line 855
    iput v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetInvalidMore8MinCnt:I

    .line 858
    iput v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mGoodRssiNetInvalid1MinCnt:I

    .line 859
    iput v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mGoodRssiNetInvalid2MinCnt:I

    .line 860
    iput v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mGoodRssiNetInvalid4MinCnt:I

    .line 861
    iput v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mGoodRssiNetInvalid8MinCnt:I

    .line 862
    iput v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mGoodRssiNetInvalidMore8MinCnt:I

    .line 865
    iput v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetSlow1MinCnt:I

    .line 866
    iput v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetSlow2MinCnt:I

    .line 867
    iput v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetSlow4MinCnt:I

    .line 868
    iput v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetSlow8MinCnt:I

    .line 869
    iput v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetSlowMore8MinCnt:I

    .line 872
    iput v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mGoodRssiNetSlow1MinCnt:I

    .line 873
    iput v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mGoodRssiNetSlow2MinCnt:I

    .line 874
    iput v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mGoodRssiNetSlow4MinCnt:I

    .line 875
    iput v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mGoodRssiNetSlow8MinCnt:I

    .line 876
    iput v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mGoodRssiNetSlowMore8MinCnt:I

    .line 879
    iput v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetInvalidEvtCnt:I

    .line 880
    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetInvalidEvtRecordList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 881
    iput v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetSlowEvtCnt:I

    .line 882
    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetSlowEvtRecordList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 884
    iput v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetInvalidFirstEvtCnt:I

    .line 885
    return-void
.end method

.method private blacklist saveNetInvalidEvtRecordToDatabase()V
    .locals 5

    .line 769
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetInvalidEvtRecordList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 770
    return-void

    .line 773
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 775
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetInvalidEvtRecordList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;

    .line 776
    .local v2, "record":Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;
    iget-object v3, v2, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;->happenTime:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    .end local v2    # "record":Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;
    goto :goto_0

    .line 779
    :cond_1
    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetInvalidEvtRecordList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 781
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveNetInvalidEvtRecordToDatabase map:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/wifi/owm/OwmNetAccessMonitor;->logD(Ljava/lang/String;)V

    .line 783
    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const-string v3, "wifi_fool_proof"

    const-string v4, "OwmNetInvalidEvtMonitor"

    invoke-static {v1, v3, v4, v0, v2}, Loplus/util/OplusStatistics;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 784
    return-void
.end method

.method private blacklist saveNetSlowEvtRecordToDatabase()V
    .locals 5

    .line 751
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetSlowEvtRecordList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 752
    return-void

    .line 755
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 757
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetSlowEvtRecordList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;

    .line 758
    .local v2, "record":Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;
    iget-object v3, v2, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;->happenTime:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 759
    .end local v2    # "record":Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;
    goto :goto_0

    .line 761
    :cond_1
    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetSlowEvtRecordList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 763
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveNetSlowEvtRecordToDatabase map:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/wifi/owm/OwmNetAccessMonitor;->logD(Ljava/lang/String;)V

    .line 765
    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const-string v3, "wifi_fool_proof"

    const-string v4, "OwmNetSlowEvtMonitor"

    invoke-static {v1, v3, v4, v0, v2}, Loplus/util/OplusStatistics;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 766
    return-void
.end method

.method private blacklist sendEvtNetInvalidMessage()V
    .locals 2

    .line 947
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OplusOwmMonitorKit;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->sendNetInvalidEventMesg(Z)V

    .line 948
    return-void
.end method

.method private blacklist sendEvtNetSlowMessage()V
    .locals 1

    .line 935
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OplusOwmMonitorKit;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->sendNetDurSlowEventMesg()V

    .line 936
    return-void
.end method

.method private blacklist sendEvtNetValidMessage()V
    .locals 1

    .line 951
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OplusOwmMonitorKit;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->sendNetValidEventMesg()V

    .line 952
    return-void
.end method

.method private blacklist sendEvtNetValidStateMessage(Z)V
    .locals 0
    .param p1, "isValid"    # Z

    .line 939
    if-eqz p1, :cond_0

    .line 940
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmNetAccessMonitor;->sendEvtNetValidMessage()V

    goto :goto_0

    .line 942
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmNetAccessMonitor;->sendEvtNetInvalidMessage()V

    .line 944
    :goto_0
    return-void
.end method

.method private blacklist updateEvtNetInvalidEnterRecord()V
    .locals 3

    .line 631
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateEvtNetInvalidEnterRecord, mScreenOn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mScreenOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmNetAccessMonitor;->logD(Ljava/lang/String;)V

    .line 633
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mCurNetInvalidEvtRecord:Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;

    if-nez v0, :cond_0

    .line 634
    new-instance v0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;-><init>(Landroid/net/wifi/owm/OwmNetAccessMonitor;Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord-IA;)V

    iput-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mCurNetInvalidEvtRecord:Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;

    goto :goto_0

    .line 636
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;->resetRecord()V

    .line 639
    :goto_0
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mCurNetInvalidEvtRecord:Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;

    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmBaseUtils;->getCurDateTime()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;->happenTime:Ljava/lang/String;

    .line 640
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mCurNetInvalidEvtRecord:Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;

    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mOwmRouterMonitor:Landroid/net/wifi/owm/OwmRouterMonitor;

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmRouterMonitor;->getApName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;->apName:Ljava/lang/String;

    .line 641
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mCurNetInvalidEvtRecord:Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v2}, Landroid/net/wifi/owm/OwmBaseUtils;->getFreq()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;->apFreq:Ljava/lang/String;

    .line 642
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mCurNetInvalidEvtRecord:Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;

    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmBaseUtils;->getTopAppPkgName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;->topPkg:Ljava/lang/String;

    .line 644
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mCurNetInvalidEvtRecord:Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;

    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mOwmNetHealthMonitor:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->getLastFeatActHealthMonitorRecord()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;->featHealthStat:Ljava/lang/String;

    .line 645
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mCurNetInvalidEvtRecord:Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;

    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mOwmNetHealthMonitor:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->getLastRouterHealthMonitorRecord()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;->routerHealthStat:Ljava/lang/String;

    .line 646
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mCurNetInvalidEvtRecord:Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;

    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mOwmNetHealthMonitor:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->getLastCoexistHealthMonitorRecord()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;->coexistHealthStat:Ljava/lang/String;

    .line 648
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mCurNetInvalidEvtRecord:Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;

    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mOwmNetHealthMonitor:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->getLastL2HealthMonitorRecord()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;->l2HealthStat:Ljava/lang/String;

    .line 649
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mCurNetInvalidEvtRecord:Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;

    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mOwmNetHealthMonitor:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->getLastDhcpHealthMonitorRecord()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;->dhcpHealthStat:Ljava/lang/String;

    .line 650
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mCurNetInvalidEvtRecord:Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;

    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mOwmNetHealthMonitor:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->getLastDnsHealthMonitorRecord()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;->dnsHealthStat:Ljava/lang/String;

    .line 651
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mCurNetInvalidEvtRecord:Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;

    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mOwmNetHealthMonitor:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->getLastGatewayHealthMonitorRecord()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;->gatewayHealthStat:Ljava/lang/String;

    .line 652
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mCurNetInvalidEvtRecord:Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;

    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mOwmNetHealthMonitor:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->getLastHttpHealthMonitorRecord()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;->httpHealthStat:Ljava/lang/String;

    .line 653
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mCurNetInvalidEvtRecord:Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;

    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mOwmNetHealthMonitor:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->getLastTcpHealthMonitorRecord()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;->tcpHealthStat:Ljava/lang/String;

    .line 654
    return-void
.end method

.method private blacklist updateEvtNetInvalidExitRecord(IIZ)V
    .locals 2
    .param p1, "invalidDurTimeSec"    # I
    .param p2, "goodRssiInvalidDurTimeSec"    # I
    .param p3, "isFirstNetInvalid"    # Z

    .line 657
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateEvtNetInvalidExitRecord, invalidDurTimeSec = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " goodRssiInvalidDurTimeSec = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmNetAccessMonitor;->logD(Ljava/lang/String;)V

    .line 659
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mCurNetInvalidEvtRecord:Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;

    if-nez v0, :cond_0

    .line 660
    return-void

    .line 663
    :cond_0
    const/4 v1, 0x3

    if-ge p1, v1, :cond_1

    .line 664
    const-string v0, "updateEvtNetInvalidExitRecord, invalidDurTimeSec < 3, not record detail info"

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmNetAccessMonitor;->logD(Ljava/lang/String;)V

    .line 665
    return-void

    .line 666
    :cond_1
    const/16 v1, 0xa

    if-ge p1, v1, :cond_2

    if-eqz p3, :cond_2

    .line 667
    const-string v0, "updateEvtNetInvalidExitRecord, isFirstNetInvalid invalidDurTimeSec < 10, not record detail info"

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmNetAccessMonitor;->logD(Ljava/lang/String;)V

    .line 668
    return-void

    .line 671
    :cond_2
    iput p1, v0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;->durationTime:I

    .line 672
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mCurNetInvalidEvtRecord:Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;

    iput p2, v0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;->goodRssiDurationTime:I

    .line 673
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mCurNetInvalidEvtRecord:Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;

    invoke-direct {p0}, Landroid/net/wifi/owm/OwmNetAccessMonitor;->getCurNetInvalidErrCode()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;->errCode:I

    .line 674
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mCurNetInvalidEvtRecord:Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;

    iput-boolean p3, v0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;->isFirstNetInvalid:Z

    .line 676
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateEvtNetInvalidExitRecord, the mCurNetInvalidEvtRecord:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mCurNetInvalidEvtRecord:Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmNetAccessMonitor;->logD(Ljava/lang/String;)V

    .line 678
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetInvalidEvtRecordList:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mCurNetInvalidEvtRecord:Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 679
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mCurNetInvalidEvtRecord:Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;

    .line 681
    if-eqz p3, :cond_3

    .line 682
    iget v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetInvalidFirstEvtCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetInvalidFirstEvtCnt:I

    goto :goto_0

    .line 684
    :cond_3
    iget v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetInvalidEvtCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetInvalidEvtCnt:I

    .line 687
    :goto_0
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetInvalidEvtRecordList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_4

    .line 688
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmNetAccessMonitor;->saveNetInvalidEvtRecordToDatabase()V

    .line 690
    :cond_4
    return-void
.end method

.method private blacklist updateEvtNetSlowEnterRecord()V
    .locals 3

    .line 693
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateEvtNetSlowEnterRecord, mScreenOn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mScreenOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmNetAccessMonitor;->logD(Ljava/lang/String;)V

    .line 695
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mCurNetSlowEvtRecord:Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;

    if-nez v0, :cond_0

    .line 696
    new-instance v0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;-><init>(Landroid/net/wifi/owm/OwmNetAccessMonitor;Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord-IA;)V

    iput-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mCurNetSlowEvtRecord:Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;

    goto :goto_0

    .line 698
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;->resetRecord()V

    .line 701
    :goto_0
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mCurNetSlowEvtRecord:Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;

    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmBaseUtils;->getCurDateTime()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;->happenTime:Ljava/lang/String;

    .line 702
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mCurNetSlowEvtRecord:Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;

    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mOwmRouterMonitor:Landroid/net/wifi/owm/OwmRouterMonitor;

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmRouterMonitor;->getApName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;->apName:Ljava/lang/String;

    .line 703
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mCurNetSlowEvtRecord:Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v2}, Landroid/net/wifi/owm/OwmBaseUtils;->getFreq()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;->apFreq:Ljava/lang/String;

    .line 704
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mCurNetSlowEvtRecord:Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;

    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmBaseUtils;->getTopAppPkgName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;->topPkg:Ljava/lang/String;

    .line 706
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mCurNetSlowEvtRecord:Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;

    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mOwmNetHealthMonitor:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->getLastFeatActHealthMonitorRecord()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;->featHealthStat:Ljava/lang/String;

    .line 707
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mCurNetSlowEvtRecord:Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;

    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mOwmNetHealthMonitor:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->getLastRouterHealthMonitorRecord()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;->routerHealthStat:Ljava/lang/String;

    .line 708
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mCurNetSlowEvtRecord:Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;

    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mOwmNetHealthMonitor:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->getLastCoexistHealthMonitorRecord()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;->coexistHealthStat:Ljava/lang/String;

    .line 710
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mCurNetSlowEvtRecord:Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;

    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mOwmNetHealthMonitor:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->getLastL2HealthMonitorRecord()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;->l2HealthStat:Ljava/lang/String;

    .line 711
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mCurNetSlowEvtRecord:Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;

    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mOwmNetHealthMonitor:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->getLastDhcpHealthMonitorRecord()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;->dhcpHealthStat:Ljava/lang/String;

    .line 712
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mCurNetSlowEvtRecord:Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;

    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mOwmNetHealthMonitor:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->getLastDnsHealthMonitorRecord()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;->dnsHealthStat:Ljava/lang/String;

    .line 713
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mCurNetSlowEvtRecord:Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;

    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mOwmNetHealthMonitor:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->getLastGatewayHealthMonitorRecord()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;->gatewayHealthStat:Ljava/lang/String;

    .line 714
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mCurNetSlowEvtRecord:Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;

    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mOwmNetHealthMonitor:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->getLastHttpHealthMonitorRecord()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;->httpHealthStat:Ljava/lang/String;

    .line 715
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mCurNetSlowEvtRecord:Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;

    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mOwmNetHealthMonitor:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->getLastTcpHealthMonitorRecord()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;->tcpHealthStat:Ljava/lang/String;

    .line 717
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mCurNetSlowEvtRecord:Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;

    iget v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetSlowEnterScore:I

    iput v1, v0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;->netSlowEnterScore:I

    .line 718
    return-void
.end method

.method private blacklist updateEvtNetSlowExitRecord(II)V
    .locals 2
    .param p1, "newSlowDurTimeSec"    # I
    .param p2, "goodRssiSlowDurTimeSec"    # I

    .line 721
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateEvtNetSlowExitRecord, newSlowDurTimeSec = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " goodRssiSlowDurTimeSec = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmNetAccessMonitor;->logD(Ljava/lang/String;)V

    .line 723
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mCurNetSlowEvtRecord:Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;

    if-nez v0, :cond_0

    .line 724
    return-void

    .line 727
    :cond_0
    iget v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mRusNetSlowSaveDuringThredSec:I

    if-ge p1, v1, :cond_1

    .line 729
    const-string v0, "updateEvtNetSlowExitRecord, newSlowDurTimeSec < mRusNetSlowSaveDuringThred, not record detail info"

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmNetAccessMonitor;->logD(Ljava/lang/String;)V

    .line 730
    return-void

    .line 733
    :cond_1
    iput p1, v0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;->durationTime:I

    .line 734
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mCurNetSlowEvtRecord:Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;

    iput p2, v0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;->goodRssiDurationTime:I

    .line 735
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mCurNetSlowEvtRecord:Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;

    invoke-direct {p0}, Landroid/net/wifi/owm/OwmNetAccessMonitor;->getCurNetSlowErrCode()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;->errCode:I

    .line 737
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mCurNetSlowEvtRecord:Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;

    iget v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetSlowExitScore:I

    iput v1, v0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;->netSlowExitScore:I

    .line 739
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateEvtNetSlowExitRecord, the mCurNetSlowEvtRecord:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mCurNetSlowEvtRecord:Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmNetAccessMonitor;->logD(Ljava/lang/String;)V

    .line 741
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetSlowEvtRecordList:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mCurNetSlowEvtRecord:Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 742
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mCurNetSlowEvtRecord:Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;

    .line 743
    iget v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetSlowEvtCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetSlowEvtCnt:I

    .line 745
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetSlowEvtRecordList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_2

    .line 746
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmNetAccessMonitor;->saveNetSlowEvtRecordToDatabase()V

    .line 748
    :cond_2
    return-void
.end method

.method private blacklist updateEvtNetSlowRecordList()V
    .locals 4

    .line 624
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmBaseUtils;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmBaseUtils;

    move-result-object v0

    .line 625
    .local v0, "owmBaseUlit":Landroid/net/wifi/owm/OwmBaseUtils;
    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/wifi/owm/OwmRouterMonitor;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmRouterMonitor;

    move-result-object v1

    .line 626
    .local v1, "owmRouterMonitor":Landroid/net/wifi/owm/OwmRouterMonitor;
    iget-object v2, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmFeatureActiveMonitor;

    move-result-object v2

    .line 627
    .local v2, "owmFeatActMonitor":Landroid/net/wifi/owm/OwmFeatureActiveMonitor;
    invoke-virtual {v0}, Landroid/net/wifi/owm/OwmBaseUtils;->getCurDateTime()Ljava/lang/String;

    move-result-object v3

    .line 628
    .local v3, "dateTime":Ljava/lang/String;
    return-void
.end method

.method private blacklist updateNetInvalidDurTimeCntRecord(II)V
    .locals 5
    .param p1, "invalidDurTimeSec"    # I
    .param p2, "goodRssiInvalidDurTimeSec"    # I

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateNetInvalidDurTimeCntRecord, invalidDurTimeSec = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " goodRssiInvalidDurTimeSec = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmNetAccessMonitor;->logD(Ljava/lang/String;)V

    .line 461
    const/16 v0, 0x1e0

    const/16 v1, 0xf0

    const/16 v2, 0x78

    const/16 v3, 0x3c

    if-gt p1, v3, :cond_0

    .line 462
    iget v4, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetInvalid1MinCnt:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetInvalid1MinCnt:I

    goto :goto_0

    .line 463
    :cond_0
    if-gt p1, v2, :cond_1

    .line 464
    iget v4, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetInvalid2MinCnt:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetInvalid2MinCnt:I

    goto :goto_0

    .line 465
    :cond_1
    if-gt p1, v1, :cond_2

    .line 466
    iget v4, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetInvalid4MinCnt:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetInvalid4MinCnt:I

    goto :goto_0

    .line 467
    :cond_2
    if-gt p1, v0, :cond_3

    .line 468
    iget v4, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetInvalid8MinCnt:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetInvalid8MinCnt:I

    goto :goto_0

    .line 470
    :cond_3
    iget v4, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetInvalidMore8MinCnt:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetInvalidMore8MinCnt:I

    .line 474
    :goto_0
    if-gt p2, v3, :cond_4

    .line 475
    iget v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mGoodRssiNetInvalid1MinCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mGoodRssiNetInvalid1MinCnt:I

    goto :goto_1

    .line 476
    :cond_4
    if-gt p2, v2, :cond_5

    .line 477
    iget v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mGoodRssiNetInvalid2MinCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mGoodRssiNetInvalid2MinCnt:I

    goto :goto_1

    .line 478
    :cond_5
    if-gt p2, v1, :cond_6

    .line 479
    iget v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mGoodRssiNetInvalid4MinCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mGoodRssiNetInvalid4MinCnt:I

    goto :goto_1

    .line 480
    :cond_6
    if-gt p2, v0, :cond_7

    .line 481
    iget v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mGoodRssiNetInvalid8MinCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mGoodRssiNetInvalid8MinCnt:I

    goto :goto_1

    .line 483
    :cond_7
    iget v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mGoodRssiNetInvalidMore8MinCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mGoodRssiNetInvalidMore8MinCnt:I

    .line 485
    :goto_1
    return-void
.end method

.method private blacklist updateNetScoreDurTimeRecord(II)V
    .locals 2
    .param p1, "preNetScoreState"    # I
    .param p2, "netScoreChangeDiffTimeSec"    # I

    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateNetScoreDurTimeRecord, preNetScoreState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " netScoreChangeDiffTimeSec = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmNetAccessMonitor;->logD(Ljava/lang/String;)V

    .line 490
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 501
    :pswitch_0
    iget v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetScoreBadTimeSec:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetScoreBadTimeSec:I

    .line 502
    goto :goto_0

    .line 498
    :pswitch_1
    iget v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetScorePoorTimeSec:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetScorePoorTimeSec:I

    .line 499
    goto :goto_0

    .line 495
    :pswitch_2
    iget v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetScoreNormTimeSec:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetScoreNormTimeSec:I

    .line 496
    goto :goto_0

    .line 492
    :pswitch_3
    iget v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetScoreGoodTimeSec:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetScoreGoodTimeSec:I

    .line 493
    nop

    .line 506
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
.end method

.method private blacklist updateNetScoreState(I)V
    .locals 1
    .param p1, "score"    # I

    .line 444
    const/16 v0, 0x50

    if-lt p1, v0, :cond_0

    .line 445
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mPreNetScoreState:I

    goto :goto_0

    .line 446
    :cond_0
    const/16 v0, 0x3c

    if-le p1, v0, :cond_1

    .line 447
    const/4 v0, 0x1

    iput v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mPreNetScoreState:I

    goto :goto_0

    .line 448
    :cond_1
    const/16 v0, 0x28

    if-le p1, v0, :cond_2

    .line 450
    const/4 v0, 0x2

    iput v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mPreNetScoreState:I

    goto :goto_0

    .line 453
    :cond_2
    const/4 v0, 0x3

    iput v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mPreNetScoreState:I

    .line 455
    :goto_0
    return-void
.end method

.method private blacklist updateNetSlowDurTimeCntRecord(II)V
    .locals 5
    .param p1, "newSlowDurTimeSec"    # I
    .param p2, "newGoodRssiSlowDurTimeSec"    # I

    .line 509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateNetSlowDurTimeCntRecord, newSlowDurTimeSec = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " newGoodRssiSlowDurTimeSec = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmNetAccessMonitor;->logD(Ljava/lang/String;)V

    .line 512
    const/16 v0, 0x1e0

    const/16 v1, 0xf0

    const/16 v2, 0x78

    const/16 v3, 0x3c

    if-gt p1, v3, :cond_0

    .line 513
    iget v4, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetSlow1MinCnt:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetSlow1MinCnt:I

    goto :goto_0

    .line 514
    :cond_0
    if-gt p1, v2, :cond_1

    .line 515
    iget v4, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetSlow2MinCnt:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetSlow2MinCnt:I

    goto :goto_0

    .line 516
    :cond_1
    if-gt p1, v1, :cond_2

    .line 517
    iget v4, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetSlow4MinCnt:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetSlow4MinCnt:I

    goto :goto_0

    .line 518
    :cond_2
    if-gt p1, v0, :cond_3

    .line 519
    iget v4, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetSlow8MinCnt:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetSlow8MinCnt:I

    goto :goto_0

    .line 521
    :cond_3
    iget v4, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetSlowMore8MinCnt:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetSlowMore8MinCnt:I

    .line 525
    :goto_0
    if-gt p2, v3, :cond_4

    .line 526
    iget v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mGoodRssiNetSlow1MinCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mGoodRssiNetSlow1MinCnt:I

    goto :goto_1

    .line 527
    :cond_4
    if-gt p2, v2, :cond_5

    .line 528
    iget v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mGoodRssiNetSlow2MinCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mGoodRssiNetSlow2MinCnt:I

    goto :goto_1

    .line 529
    :cond_5
    if-gt p2, v1, :cond_6

    .line 530
    iget v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mGoodRssiNetSlow4MinCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mGoodRssiNetSlow4MinCnt:I

    goto :goto_1

    .line 531
    :cond_6
    if-gt p2, v0, :cond_7

    .line 532
    iget v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mGoodRssiNetSlow8MinCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mGoodRssiNetSlow8MinCnt:I

    goto :goto_1

    .line 534
    :cond_7
    iget v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mGoodRssiNetSlowMore8MinCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mGoodRssiNetSlowMore8MinCnt:I

    .line 536
    :goto_1
    return-void
.end method

.method private blacklist updateNetValidState(Z)V
    .locals 1
    .param p1, "isValid"    # Z

    .line 435
    if-eqz p1, :cond_0

    .line 436
    const/4 v0, 0x4

    iput v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mPreNetValidState:I

    .line 437
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mCurApCanNetAccess:Z

    goto :goto_0

    .line 439
    :cond_0
    const/4 v0, 0x5

    iput v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mPreNetValidState:I

    .line 441
    :goto_0
    return-void
.end method

.method private blacklist updateRusConfig()V
    .locals 3

    .line 419
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mWifiRomUpdateHelper:Landroid/net/wifi/IWifiRomUpdateHelper;

    if-eqz v0, :cond_0

    .line 420
    const/16 v1, -0x4b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "OWM_GOOD_RSSI_THRED"

    invoke-interface {v0, v2, v1}, Landroid/net/wifi/IWifiRomUpdateHelper;->getIntegerValue(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mRusGoodRssiThred:I

    .line 421
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mWifiRomUpdateHelper:Landroid/net/wifi/IWifiRomUpdateHelper;

    const/16 v1, 0x4b0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "OWM_NET_SLOW_EVT_SAVE_INTVAL_THRED_SEC"

    invoke-interface {v0, v2, v1}, Landroid/net/wifi/IWifiRomUpdateHelper;->getIntegerValue(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mRusNetSlowSaveIntvalThredSec:I

    .line 422
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mWifiRomUpdateHelper:Landroid/net/wifi/IWifiRomUpdateHelper;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "OWM_NET_SLOW_EVT_SAVE_DURING_THRED_SEC"

    invoke-interface {v0, v2, v1}, Landroid/net/wifi/IWifiRomUpdateHelper;->getIntegerValue(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mRusNetSlowSaveDuringThredSec:I

    .line 424
    :cond_0
    return-void
.end method


# virtual methods
.method public whitelist addNetScoreRecord(I)V
    .locals 5
    .param p1, "score"    # I

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addNetScoreRecord, mWifiConnected = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mWifiConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " score = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mScreenOn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mScreenOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmNetAccessMonitor;->logD(Ljava/lang/String;)V

    .line 370
    iget-boolean v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mWifiConnected:Z

    if-nez v0, :cond_0

    .line 371
    return-void

    .line 374
    :cond_0
    iget-boolean v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mCurApCanNetAccess:Z

    if-nez v0, :cond_1

    .line 376
    return-void

    .line 379
    :cond_1
    iget-wide v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mPreNetScoreChangeSysTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 381
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mPreNetScoreChangeSysTime:J

    .line 383
    invoke-direct {p0, p1}, Landroid/net/wifi/owm/OwmNetAccessMonitor;->updateNetScoreState(I)V

    .line 384
    return-void

    .line 387
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 388
    .local v0, "curSystemTime":J
    iget-wide v2, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mPreNetScoreChangeSysTime:J

    sub-long v2, v0, v2

    long-to-int v2, v2

    div-int/lit16 v2, v2, 0x3e8

    .line 390
    .local v2, "diffTimeSec":I
    iget v3, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mPreNetScoreState:I

    invoke-direct {p0, v3, v2}, Landroid/net/wifi/owm/OwmNetAccessMonitor;->updateNetScoreDurTimeRecord(II)V

    .line 393
    const/16 v3, 0x3c

    if-le p1, v3, :cond_4

    .line 395
    iget v3, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mPreNetScoreState:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    .line 397
    :cond_3
    iput p1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetSlowExitScore:I

    .line 398
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmNetAccessMonitor;->addEvtNetSlowExitRecord()V

    goto :goto_0

    .line 402
    :cond_4
    iget v3, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mPreNetScoreState:I

    if-eqz v3, :cond_5

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    .line 404
    :cond_5
    iget-object v3, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v3}, Landroid/net/wifi/owm/OwmBaseUtils;->isScreenOn()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 406
    iput p1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetSlowEnterScore:I

    .line 407
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmNetAccessMonitor;->addEvtNetSlowEnterRecord()V

    .line 413
    :cond_6
    :goto_0
    invoke-direct {p0, p1}, Landroid/net/wifi/owm/OwmNetAccessMonitor;->updateNetScoreState(I)V

    .line 415
    iput-wide v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mPreNetScoreChangeSysTime:J

    .line 416
    return-void
.end method

.method public whitelist addNetValidRecord(Z)V
    .locals 3
    .param p1, "isValid"    # Z

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addNetValidRecord, the mPreNetValidState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mPreNetValidState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isValid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmNetAccessMonitor;->logD(Ljava/lang/String;)V

    .line 338
    invoke-direct {p0, p1}, Landroid/net/wifi/owm/OwmNetAccessMonitor;->isNetValidStateReEnter(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    return-void

    .line 343
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 347
    .local v0, "curSystemTime":J
    if-nez p1, :cond_1

    .line 349
    iget-object v2, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v2}, Landroid/net/wifi/owm/OwmBaseUtils;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 351
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmNetAccessMonitor;->addEvtNetInvalidEnterRecord()V

    goto :goto_0

    .line 355
    :cond_1
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmNetAccessMonitor;->addEvtNetInvalidExitRecord()V

    .line 359
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Landroid/net/wifi/owm/OwmNetAccessMonitor;->updateNetValidState(Z)V

    .line 362
    invoke-direct {p0, p1}, Landroid/net/wifi/owm/OwmNetAccessMonitor;->sendEvtNetValidStateMessage(Z)V

    .line 364
    iput-wide v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mPreNetValidChangeSysTime:J

    .line 365
    return-void
.end method

.method public whitelist enableVerboseLogging(Z)V
    .locals 0
    .param p1, "verbose"    # Z

    .line 1112
    iput-boolean p1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mVerboseLoggingEnabled:Z

    .line 1113
    return-void
.end method

.method public whitelist getCurNetInvalidEventRecord()Ljava/lang/String;
    .locals 5

    .line 915
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 917
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetInvalidEvtRecordList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;

    .line 918
    .local v2, "record":Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;
    iget-object v3, v2, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;->happenTime:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 919
    .end local v2    # "record":Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;
    goto :goto_0

    .line 921
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getCurNetSlowEventRecord()Ljava/lang/String;
    .locals 5

    .line 925
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 927
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetSlowEvtRecordList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;

    .line 928
    .local v2, "record":Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;
    iget-object v3, v2, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;->happenTime:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 929
    .end local v2    # "record":Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;
    goto :goto_0

    .line 931
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getRecordToDatabase()Ljava/lang/String;
    .locals 2

    .line 909
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmNetAccessMonitor;->generateRecordToDatabaseMap()Ljava/util/Map;

    move-result-object v0

    .line 911
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist saveRecordToDatabase()V
    .locals 8

    .line 889
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 890
    .local v0, "curSystemTime":J
    iput-wide v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mPreWifiConnSysTime:J

    .line 891
    iget v2, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mWifiConnTimeSec:I

    int-to-long v2, v2

    sub-long v4, v0, v0

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    add-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mWifiConnTimeSec:I

    .line 894
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmNetAccessMonitor;->generateRecordToDatabaseMap()Ljava/util/Map;

    move-result-object v2

    .line 896
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveRecordToDatabase, map: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/net/wifi/owm/OwmNetAccessMonitor;->logD(Ljava/lang/String;)V

    .line 899
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmNetAccessMonitor;->saveNetInvalidEvtRecordToDatabase()V

    .line 900
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmNetAccessMonitor;->saveNetSlowEvtRecordToDatabase()V

    .line 903
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmNetAccessMonitor;->resetAllRecord()V

    .line 905
    iget-object v3, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mContext:Landroid/content/Context;

    const-string v4, "wifi_fool_proof"

    const-string v5, "OwmNetAccessMonitor"

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v2, v6}, Loplus/util/OplusStatistics;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 906
    return-void
.end method

.method public whitelist setRssi(I)V
    .locals 7
    .param p1, "rssi"    # I

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRssi, rssi = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNetInValidEnter = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetInValidEnter:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mNetSlowEnter = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mNetSlowEnter:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmNetAccessMonitor;->logD(Ljava/lang/String;)V

    .line 266
    iget-boolean v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mWifiConnected:Z

    if-nez v0, :cond_0

    .line 267
    return-void

    .line 270
    :cond_0
    iput p1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mRssi:I

    .line 271
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 274
    .local v0, "curSystemTime":J
    iget-wide v2, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mPreRssiChangeSysTime:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    const/4 v5, 0x6

    const/4 v6, 0x7

    if-nez v4, :cond_2

    .line 275
    iput-wide v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mPreRssiChangeSysTime:J

    .line 278
    iget v2, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mRusGoodRssiThred:I

    if-le p1, v2, :cond_1

    .line 279
    iput v5, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mPreRssiState:I

    goto :goto_0

    .line 281
    :cond_1
    iput v6, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mPreRssiState:I

    .line 284
    :goto_0
    return-void

    .line 287
    :cond_2
    sub-long v2, v0, v2

    long-to-int v2, v2

    div-int/lit16 v2, v2, 0x3e8

    .line 290
    .local v2, "diffRssiChangeTimeSec":I
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmNetAccessMonitor;->isGoodRssiAndNetInvalidState()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 291
    iget v3, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mGoodRssiNetInvalidTimeSec:I

    add-int/2addr v3, v2

    iput v3, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mGoodRssiNetInvalidTimeSec:I

    .line 295
    :cond_3
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmNetAccessMonitor;->isGoodRssiAndNetSlowState()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 296
    iget v3, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mGoodRssiNetSlowTimeSec:I

    add-int/2addr v3, v2

    iput v3, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mGoodRssiNetSlowTimeSec:I

    .line 300
    :cond_4
    iget v3, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mRusGoodRssiThred:I

    if-le p1, v3, :cond_5

    .line 301
    iput v5, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mPreRssiState:I

    goto :goto_1

    .line 303
    :cond_5
    iput v6, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mPreRssiState:I

    .line 306
    :goto_1
    iput-wide v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mPreRssiChangeSysTime:J

    .line 307
    return-void
.end method

.method public whitelist setScreenOnState(Z)V
    .locals 0
    .param p1, "isScreenOn"    # Z

    .line 252
    iput-boolean p1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mScreenOn:Z

    .line 253
    return-void
.end method

.method public whitelist setWifiConnState(Z)V
    .locals 8
    .param p1, "isConnected"    # Z

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setWifiConnState, mWifiConnected = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mWifiConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isConnected = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmNetAccessMonitor;->logD(Ljava/lang/String;)V

    .line 312
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmNetAccessMonitor;->updateRusConfig()V

    .line 314
    iget-boolean v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mWifiConnected:Z

    if-ne p1, v0, :cond_0

    .line 316
    return-void

    .line 319
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 321
    .local v0, "curSystemTime":J
    if-eqz p1, :cond_1

    .line 323
    iput-wide v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mPreWifiConnSysTime:J

    goto :goto_0

    .line 326
    :cond_1
    iget v2, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mWifiConnTimeSec:I

    int-to-long v2, v2

    iget-wide v4, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mPreWifiConnSysTime:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    add-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mWifiConnTimeSec:I

    .line 327
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmNetAccessMonitor;->addEvtNetInvalidExitRecord()V

    .line 328
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmNetAccessMonitor;->addEvtNetSlowExitRecord()V

    .line 329
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmNetAccessMonitor;->initTempParamsForWifiDisconnect()V

    .line 332
    :goto_0
    iput-boolean p1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor;->mWifiConnected:Z

    .line 333
    return-void
.end method
