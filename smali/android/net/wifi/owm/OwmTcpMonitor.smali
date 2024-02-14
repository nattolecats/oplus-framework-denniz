.class public Landroid/net/wifi/owm/OwmTcpMonitor;
.super Ljava/lang/Object;
.source "OwmTcpMonitor.java"

# interfaces
.implements Landroid/net/wifi/owm/IOwmMonitorCommon;
.implements Landroid/net/wifi/owm/IOwmNetHealthCommon;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/owm/OwmTcpMonitor$TcpSyncParam;,
        Landroid/net/wifi/owm/OwmTcpMonitor$AsyncHandler;
    }
.end annotation


# static fields
.field private static final blacklist EVT_RECORD_SIZE:I = 0x8

.field private static final blacklist MSG_ADD_TCP_RTT_RECORD:I = 0x3

.field private static final blacklist MSG_ADD_TCP_STAT_RECORD:I = 0x1

.field private static final blacklist MSG_ADD_TCP_SYNC_RECORD:I = 0x2

.field private static final blacklist MSG_BASE:I = 0x0

.field private static final blacklist RTT_GOOD_MS:I = 0x64

.field private static final blacklist RTT_NORM_MS:I = 0xc8

.field private static final blacklist RTT_POOR_MS:I = 0x12c

.field private static final blacklist TAG:Ljava/lang/String; = "OwmTcpMonitor"

.field private static volatile blacklist sInstance:Landroid/net/wifi/owm/OwmTcpMonitor;


# instance fields
.field private final blacklist EALREADY:I

.field private final blacklist EINPROGRESS:I

.field private blacklist mAsyncHandler:Landroid/os/Handler;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mCurConnectLossPkgCnt:J

.field private blacklist mCurConnectRecvPkgCnt:J

.field private blacklist mCurConnectRetryPkgCnt:J

.field private blacklist mCurConnectSendPkgCnt:J

.field private blacklist mIpv4RtoEvtCnt:I

.field private blacklist mIpv6RtoEvtCnt:I

.field private blacklist mLossPkgCnt:J

.field private blacklist mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

.field private blacklist mOwmNetHealthMonitor:Landroid/net/wifi/owm/OwmNetHealthMonitor;

.field private blacklist mOwmRouterMonitor:Landroid/net/wifi/owm/OwmRouterMonitor;

.field private blacklist mRecvPkgCnt:J

.field private blacklist mRetryPkgCnt:J

.field private blacklist mRttBadCnt:I

.field private blacklist mRttGoodCnt:I

.field private blacklist mRttNormCnt:I

.field private blacklist mRttPoorCnt:I

.field private blacklist mSendPkgCnt:J

.field private blacklist mSyncFailCnt:I

.field private blacklist mSyncSlowCnt:I

.field private blacklist mSyncTotalCnt:I

.field private blacklist mVerboseLoggingEnabled:Z

.field private blacklist mWifiConnected:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$mhandleAddTcpSyncRecord(Landroid/net/wifi/owm/OwmTcpMonitor;Landroid/net/wifi/owm/OwmTcpMonitor$TcpSyncParam;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/owm/OwmTcpMonitor;->handleAddTcpSyncRecord(Landroid/net/wifi/owm/OwmTcpMonitor$TcpSyncParam;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlogD(Landroid/net/wifi/owm/OwmTcpMonitor;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/owm/OwmTcpMonitor;->logD(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 47
    const/4 v0, 0x0

    sput-object v0, Landroid/net/wifi/owm/OwmTcpMonitor;->sInstance:Landroid/net/wifi/owm/OwmTcpMonitor;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mContext:Landroid/content/Context;

    .line 56
    sget v1, Landroid/system/OsConstants;->EALREADY:I

    iput v1, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->EALREADY:I

    .line 57
    sget v1, Landroid/system/OsConstants;->EINPROGRESS:I

    iput v1, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->EINPROGRESS:I

    .line 66
    const/4 v1, 0x0

    iput v1, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mSyncFailCnt:I

    .line 67
    iput v1, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mSyncTotalCnt:I

    .line 68
    iput v1, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mSyncSlowCnt:I

    .line 71
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mSendPkgCnt:J

    .line 72
    iput-wide v2, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mRecvPkgCnt:J

    .line 73
    iput-wide v2, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mRetryPkgCnt:J

    .line 74
    iput-wide v2, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mLossPkgCnt:J

    .line 77
    iput v1, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mRttGoodCnt:I

    .line 78
    iput v1, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mRttNormCnt:I

    .line 79
    iput v1, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mRttPoorCnt:I

    .line 80
    iput v1, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mRttBadCnt:I

    .line 83
    iput v1, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mIpv4RtoEvtCnt:I

    .line 84
    iput v1, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mIpv6RtoEvtCnt:I

    .line 86
    iput-object v0, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mAsyncHandler:Landroid/os/Handler;

    .line 87
    iput-boolean v1, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mVerboseLoggingEnabled:Z

    .line 88
    iput-object v0, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    .line 89
    iput-object v0, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mOwmRouterMonitor:Landroid/net/wifi/owm/OwmRouterMonitor;

    .line 90
    iput-object v0, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mOwmNetHealthMonitor:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    .line 91
    iput-boolean v1, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mWifiConnected:Z

    .line 94
    iput-wide v2, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mCurConnectSendPkgCnt:J

    .line 95
    iput-wide v2, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mCurConnectRecvPkgCnt:J

    .line 96
    iput-wide v2, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mCurConnectRetryPkgCnt:J

    .line 97
    iput-wide v2, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mCurConnectLossPkgCnt:J

    .line 112
    iput-object p1, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mContext:Landroid/content/Context;

    .line 113
    invoke-static {p1}, Landroid/net/wifi/owm/OwmBaseUtils;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmBaseUtils;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    .line 114
    iget-object v0, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmRouterMonitor;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmRouterMonitor;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mOwmRouterMonitor:Landroid/net/wifi/owm/OwmRouterMonitor;

    .line 115
    iget-object v0, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmNetHealthMonitor;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mOwmNetHealthMonitor:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    .line 116
    new-instance v0, Landroid/net/wifi/owm/OwmTcpMonitor$AsyncHandler;

    iget-object v1, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmBaseUtils;->getOwmMonitorThread()Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/net/wifi/owm/OwmTcpMonitor$AsyncHandler;-><init>(Landroid/net/wifi/owm/OwmTcpMonitor;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mAsyncHandler:Landroid/os/Handler;

    .line 117
    return-void
.end method

.method private blacklist generateRecordToDatabaseMap()Ljava/util/Map;
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

    .line 355
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 357
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mSyncFailCnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "SyncFailCnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mSyncTotalCnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "SyncTotalCnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mSyncSlowCnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "SyncSlowCnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mSendPkgCnt:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "SendPkgCnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mRecvPkgCnt:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "RecvPkgCnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mRetryPkgCnt:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "RetryPkgCnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mLossPkgCnt:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "LossPkgCnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mRttGoodCnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "RttGoodCnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mRttNormCnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "RttNormCnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mRttPoorCnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "RttPoorCnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mRttBadCnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "RttBadCnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mIpv4RtoEvtCnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Ipv4RtoEvtCnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mIpv6RtoEvtCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Ipv6RtoEvtCnt"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    return-object v0
.end method

.method private blacklist generateRtoInfoRecordToDatabaseMap(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p1, "srcAddr"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 325
    const-string v0, ""

    .line 326
    .local v0, "res":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "srcAddr:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 327
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "destAddr:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 328
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "pkgName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v2, p3}, Landroid/net/wifi/owm/OwmBaseUtils;->getPkgNameFromUid(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 330
    return-object v0
.end method

.method public static whitelist getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmTcpMonitor;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 100
    sget-object v0, Landroid/net/wifi/owm/OwmTcpMonitor;->sInstance:Landroid/net/wifi/owm/OwmTcpMonitor;

    if-nez v0, :cond_1

    .line 101
    const-class v0, Landroid/net/wifi/owm/OwmTcpMonitor;

    monitor-enter v0

    .line 102
    :try_start_0
    sget-object v1, Landroid/net/wifi/owm/OwmTcpMonitor;->sInstance:Landroid/net/wifi/owm/OwmTcpMonitor;

    if-nez v1, :cond_0

    .line 103
    new-instance v1, Landroid/net/wifi/owm/OwmTcpMonitor;

    invoke-direct {v1, p0}, Landroid/net/wifi/owm/OwmTcpMonitor;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/net/wifi/owm/OwmTcpMonitor;->sInstance:Landroid/net/wifi/owm/OwmTcpMonitor;

    .line 105
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 108
    :cond_1
    :goto_0
    sget-object v0, Landroid/net/wifi/owm/OwmTcpMonitor;->sInstance:Landroid/net/wifi/owm/OwmTcpMonitor;

    return-object v0
.end method

.method private blacklist handleAddTcpSyncRecord(Landroid/net/wifi/owm/OwmTcpMonitor$TcpSyncParam;)V
    .locals 6
    .param p1, "tcpSyncParam"    # Landroid/net/wifi/owm/OwmTcpMonitor$TcpSyncParam;

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleAddTcpSyncRecord, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/wifi/owm/OwmTcpMonitor$TcpSyncParam;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmTcpMonitor;->logD(Ljava/lang/String;)V

    .line 271
    iget v0, p1, Landroid/net/wifi/owm/OwmTcpMonitor$TcpSyncParam;->netId:I

    .line 272
    .local v0, "netId":I
    iget v1, p1, Landroid/net/wifi/owm/OwmTcpMonitor$TcpSyncParam;->uid:I

    .line 273
    .local v1, "uid":I
    iget v2, p1, Landroid/net/wifi/owm/OwmTcpMonitor$TcpSyncParam;->errCode:I

    .line 274
    .local v2, "errCode":I
    iget v3, p1, Landroid/net/wifi/owm/OwmTcpMonitor$TcpSyncParam;->latency:I

    .line 275
    .local v3, "latency":I
    iget-object v4, p1, Landroid/net/wifi/owm/OwmTcpMonitor$TcpSyncParam;->ipAddr:Ljava/lang/String;

    .line 277
    .local v4, "ipAddr":Ljava/lang/String;
    iget-object v5, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/net/wifi/owm/OwmBaseUtils;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmBaseUtils;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/net/wifi/owm/OwmBaseUtils;->isWlanInterface(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 280
    iget v5, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mSyncTotalCnt:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mSyncTotalCnt:I

    .line 281
    invoke-direct {p0, v2}, Landroid/net/wifi/owm/OwmTcpMonitor;->isSyncSuccess(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 282
    iget v5, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mSyncFailCnt:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mSyncFailCnt:I

    .line 285
    :cond_0
    const/16 v5, 0x12c

    if-le v3, v5, :cond_1

    .line 286
    iget v5, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mSyncSlowCnt:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mSyncSlowCnt:I

    .line 289
    :cond_1
    return-void
.end method

.method private blacklist initTempParamsForWifiDisconnect()V
    .locals 2

    .line 262
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mCurConnectSendPkgCnt:J

    .line 263
    iput-wide v0, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mCurConnectRecvPkgCnt:J

    .line 264
    iput-wide v0, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mCurConnectRetryPkgCnt:J

    .line 265
    iput-wide v0, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mCurConnectLossPkgCnt:J

    .line 266
    return-void
.end method

.method private blacklist isSyncNonBlocking(I)Z
    .locals 1
    .param p1, "errorCode"    # I

    .line 294
    iget v0, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->EINPROGRESS:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->EALREADY:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private blacklist isSyncSuccess(I)Z
    .locals 1
    .param p1, "errorCode"    # I

    .line 298
    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Landroid/net/wifi/owm/OwmTcpMonitor;->isSyncNonBlocking(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private blacklist logD(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .line 403
    iget-boolean v0, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mScreenOn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/wifi/owm/OwmBaseUtils;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmBaseUtils;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmBaseUtils;->isScreenOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OwmTcpMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_0
    return-void
.end method

.method private blacklist resetAllRecord()V
    .locals 3

    .line 303
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mSyncFailCnt:I

    .line 304
    iput v0, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mSyncTotalCnt:I

    .line 305
    iput v0, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mSyncSlowCnt:I

    .line 308
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mSendPkgCnt:J

    .line 309
    iput-wide v1, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mRecvPkgCnt:J

    .line 310
    iput-wide v1, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mRetryPkgCnt:J

    .line 311
    iput-wide v1, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mLossPkgCnt:J

    .line 314
    iput v0, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mRttGoodCnt:I

    .line 315
    iput v0, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mRttNormCnt:I

    .line 316
    iput v0, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mRttPoorCnt:I

    .line 317
    iput v0, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mRttBadCnt:I

    .line 320
    iput v0, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mIpv4RtoEvtCnt:I

    .line 321
    iput v0, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mIpv6RtoEvtCnt:I

    .line 322
    return-void
.end method

.method private blacklist saveRtoEvtRecordToDatabase(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 11
    .param p1, "srcAddr"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "isIpv6"    # Z

    .line 334
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 336
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmBaseUtils;->getCurDateTime()Ljava/lang/String;

    move-result-object v1

    .line 337
    .local v1, "dateTime":Ljava/lang/String;
    iget-object v2, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v2}, Landroid/net/wifi/owm/OwmBaseUtils;->getTopAppPkgName()Ljava/lang/String;

    move-result-object v2

    .line 338
    .local v2, "topPkgName":Ljava/lang/String;
    iget-object v3, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mOwmRouterMonitor:Landroid/net/wifi/owm/OwmRouterMonitor;

    invoke-virtual {v3}, Landroid/net/wifi/owm/OwmRouterMonitor;->getApName()Ljava/lang/String;

    move-result-object v3

    .line 339
    .local v3, "apName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v5}, Landroid/net/wifi/owm/OwmBaseUtils;->getFreq()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 340
    .local v4, "apFreq":Ljava/lang/String;
    invoke-direct {p0, p1, p2, p3}, Landroid/net/wifi/owm/OwmTcpMonitor;->generateRtoInfoRecordToDatabaseMap(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 341
    .local v5, "rtoInfo":Ljava/lang/String;
    iget-object v6, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mOwmNetHealthMonitor:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-virtual {v6}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->getLastL2HealthMonitorRecord()Ljava/lang/String;

    move-result-object v6

    .line 343
    .local v6, "l2HealthStat":Ljava/lang/String;
    const-string v7, "happenTime"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    const-string v7, "topPkg"

    invoke-interface {v0, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    const-string v7, "apName"

    invoke-interface {v0, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    const-string v7, "apFreq"

    invoke-interface {v0, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    const-string v7, "rtoInfo"

    invoke-interface {v0, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    const-string v7, "l2HealthStat"

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "saveRtoEvtRecordToDatabase, the map = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Landroid/net/wifi/owm/OwmTcpMonitor;->logD(Ljava/lang/String;)V

    .line 351
    iget-object v7, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mContext:Landroid/content/Context;

    const-string v8, "wifi_fool_proof"

    const-string v9, "OwmTcpRtoEvtMonitor"

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v0, v10}, Loplus/util/OplusStatistics;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 352
    return-void
.end method


# virtual methods
.method public whitelist addTcpRtoRecord(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 2
    .param p1, "srcAddr"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "isIpv6"    # Z

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addTcpRtoRecord, isIpv6 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmTcpMonitor;->logD(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v0, p1}, Landroid/net/wifi/owm/OwmBaseUtils;->isIpv4Addr(Ljava/lang/String;)Z

    move-result v0

    .line 159
    .local v0, "isIpV4FromAddr":Z
    if-eqz v0, :cond_0

    .line 160
    iget v1, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mIpv4RtoEvtCnt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mIpv4RtoEvtCnt:I

    goto :goto_0

    .line 162
    :cond_0
    iget v1, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mIpv6RtoEvtCnt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mIpv6RtoEvtCnt:I

    .line 166
    :goto_0
    if-eqz p4, :cond_1

    if-nez v0, :cond_1

    .line 167
    iget-object v1, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OplusOwmMonitorKit;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->sendIpv6RtoEventMesg(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 168
    :cond_1
    if-nez p4, :cond_2

    if-eqz v0, :cond_2

    .line 169
    iget-object v1, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OplusOwmMonitorKit;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->sendIpv4RtoEventMesg(Ljava/lang/String;Ljava/lang/String;I)V

    .line 173
    :cond_2
    :goto_1
    return-void
.end method

.method public whitelist addTcpRttRecord(I)V
    .locals 2
    .param p1, "rttMs"    # I

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addTcpRttRecord, the rttMs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmTcpMonitor;->logD(Ljava/lang/String;)V

    .line 232
    const/16 v0, 0x64

    if-gt p1, v0, :cond_0

    .line 233
    iget v0, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mRttGoodCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mRttGoodCnt:I

    goto :goto_0

    .line 234
    :cond_0
    const/16 v0, 0xc8

    if-gt p1, v0, :cond_1

    .line 235
    iget v0, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mRttNormCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mRttNormCnt:I

    goto :goto_0

    .line 236
    :cond_1
    const/16 v0, 0x12c

    if-gt p1, v0, :cond_2

    .line 237
    iget v0, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mRttPoorCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mRttPoorCnt:I

    goto :goto_0

    .line 239
    :cond_2
    iget v0, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mRttBadCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mRttBadCnt:I

    .line 241
    :goto_0
    return-void
.end method

.method public whitelist addTcpRttRecord([J)V
    .locals 5
    .param p1, "data"    # [J

    .line 215
    const-string v0, "addTcpRttRecord, the data[]"

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmTcpMonitor;->logD(Ljava/lang/String;)V

    .line 217
    array-length v0, p1

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 218
    return-void

    .line 223
    :cond_0
    iget v0, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mRttGoodCnt:I

    const/4 v1, 0x0

    aget-wide v1, p1, v1

    long-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mRttGoodCnt:I

    .line 224
    iget v0, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mRttNormCnt:I

    const/4 v1, 0x1

    aget-wide v1, p1, v1

    const/4 v3, 0x2

    aget-wide v3, p1, v3

    add-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mRttNormCnt:I

    .line 225
    iget v0, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mRttPoorCnt:I

    const/4 v1, 0x3

    aget-wide v1, p1, v1

    long-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mRttPoorCnt:I

    .line 226
    iget v0, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mRttBadCnt:I

    const/4 v1, 0x4

    aget-wide v1, p1, v1

    long-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mRttBadCnt:I

    .line 227
    return-void
.end method

.method public whitelist addTcpStatRecord(IJJJJ)V
    .locals 3
    .param p1, "netId"    # I
    .param p2, "newSendPkg"    # J
    .param p4, "newRecvPkg"    # J
    .param p6, "newRetryPkg"    # J
    .param p8, "newLossPkg"    # J

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addTcpStatRecord, netId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " newSendPkg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " newRecvPkg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " newRetryPkg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " newLossPkg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p8, p9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmTcpMonitor;->logD(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmBaseUtils;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmBaseUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/wifi/owm/OwmBaseUtils;->isWlanInterface(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    iget-wide v0, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mSendPkgCnt:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mSendPkgCnt:J

    .line 195
    iget-wide v0, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mRecvPkgCnt:J

    add-long/2addr v0, p4

    iput-wide v0, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mRecvPkgCnt:J

    .line 196
    iget-wide v0, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mRetryPkgCnt:J

    add-long/2addr v0, p6

    iput-wide v0, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mRetryPkgCnt:J

    .line 197
    iget-wide v0, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mLossPkgCnt:J

    add-long/2addr v0, p8

    iput-wide v0, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mLossPkgCnt:J

    .line 199
    iget-boolean v0, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mWifiConnected:Z

    if-eqz v0, :cond_0

    .line 200
    iget-wide v0, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mCurConnectSendPkgCnt:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mCurConnectSendPkgCnt:J

    .line 201
    iget-wide v0, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mCurConnectRecvPkgCnt:J

    add-long/2addr v0, p4

    iput-wide v0, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mCurConnectRecvPkgCnt:J

    .line 202
    iget-wide v0, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mCurConnectRetryPkgCnt:J

    add-long/2addr v0, p6

    iput-wide v0, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mCurConnectRetryPkgCnt:J

    .line 203
    iget-wide v0, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mCurConnectLossPkgCnt:J

    add-long/2addr v0, p8

    iput-wide v0, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mCurConnectLossPkgCnt:J

    .line 207
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addTcpStatRecord, the total tcp stat:  mSendPkgCnt = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mSendPkgCnt:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mRecvPkgCnt = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mRecvPkgCnt:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mRetryPkgCnt = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mRetryPkgCnt:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mLossPkgCnt = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mLossPkgCnt:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmTcpMonitor;->logD(Ljava/lang/String;)V

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addTcpStatRecord, the cur connection tcp stat:  mCurConnectSendPkgCnt = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mCurConnectSendPkgCnt:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCurConnectRecvPkgCnt = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mCurConnectRecvPkgCnt:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCurConnectRetryPkgCnt = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mCurConnectRetryPkgCnt:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCurConnectLossPkgCnt = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mCurConnectLossPkgCnt:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmTcpMonitor;->logD(Ljava/lang/String;)V

    .line 212
    return-void
.end method

.method public whitelist addTcpSyncRecord(IIIILjava/lang/String;)V
    .locals 3
    .param p1, "netId"    # I
    .param p2, "uid"    # I
    .param p3, "errCode"    # I
    .param p4, "latency"    # I
    .param p5, "ipAddr"    # Ljava/lang/String;

    .line 176
    new-instance v0, Landroid/net/wifi/owm/OwmTcpMonitor$TcpSyncParam;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/net/wifi/owm/OwmTcpMonitor$TcpSyncParam;-><init>(Landroid/net/wifi/owm/OwmTcpMonitor;Landroid/net/wifi/owm/OwmTcpMonitor$TcpSyncParam-IA;)V

    .line 178
    .local v0, "tcpSyncParam":Landroid/net/wifi/owm/OwmTcpMonitor$TcpSyncParam;
    iput p1, v0, Landroid/net/wifi/owm/OwmTcpMonitor$TcpSyncParam;->netId:I

    .line 179
    iput p2, v0, Landroid/net/wifi/owm/OwmTcpMonitor$TcpSyncParam;->uid:I

    .line 180
    iput p3, v0, Landroid/net/wifi/owm/OwmTcpMonitor$TcpSyncParam;->errCode:I

    .line 181
    iput p4, v0, Landroid/net/wifi/owm/OwmTcpMonitor$TcpSyncParam;->latency:I

    .line 182
    iput-object p5, v0, Landroid/net/wifi/owm/OwmTcpMonitor$TcpSyncParam;->ipAddr:Ljava/lang/String;

    .line 184
    iget-object v1, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mAsyncHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 185
    return-void
.end method

.method public whitelist enableVerboseLogging(Z)V
    .locals 0
    .param p1, "verbose"    # Z

    .line 399
    iput-boolean p1, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mVerboseLoggingEnabled:Z

    .line 400
    return-void
.end method

.method public whitelist getCurRecordForNetHealth()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 378
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmTcpMonitor;->generateRecordToDatabaseMap()Ljava/util/Map;

    move-result-object v0

    .line 379
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-object v0
.end method

.method public whitelist getRecordToDatabase()Ljava/lang/String;
    .locals 2

    .line 383
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmTcpMonitor;->generateRecordToDatabaseMap()Ljava/util/Map;

    move-result-object v0

    .line 385
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getTcpLossPackets()J
    .locals 2

    .line 151
    iget-wide v0, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mCurConnectLossPkgCnt:J

    return-wide v0
.end method

.method public whitelist getTcpRetryPackets()J
    .locals 2

    .line 147
    iget-wide v0, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mCurConnectRetryPkgCnt:J

    return-wide v0
.end method

.method public whitelist getTcpRxPackets()J
    .locals 2

    .line 143
    iget-wide v0, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mCurConnectRecvPkgCnt:J

    return-wide v0
.end method

.method public whitelist getTcpTxPackets()J
    .locals 2

    .line 139
    iget-wide v0, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mCurConnectSendPkgCnt:J

    return-wide v0
.end method

.method public whitelist saveRecordToDatabase()V
    .locals 5

    .line 389
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmTcpMonitor;->generateRecordToDatabaseMap()Ljava/util/Map;

    move-result-object v0

    .line 391
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

    invoke-direct {p0, v1}, Landroid/net/wifi/owm/OwmTcpMonitor;->logD(Ljava/lang/String;)V

    .line 393
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmTcpMonitor;->resetAllRecord()V

    .line 395
    iget-object v1, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mContext:Landroid/content/Context;

    const-string v2, "wifi_fool_proof"

    const-string v3, "OwmTcpMonitor"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Loplus/util/OplusStatistics;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 396
    return-void
.end method

.method public whitelist setWifiConnState(Z)V
    .locals 2
    .param p1, "isConnected"    # Z

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setWifiConnState, mWifiConnected = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mWifiConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isConnected = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmTcpMonitor;->logD(Ljava/lang/String;)V

    .line 246
    iget-boolean v0, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mWifiConnected:Z

    if-ne p1, v0, :cond_0

    .line 248
    return-void

    .line 251
    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    .line 255
    :cond_1
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmTcpMonitor;->initTempParamsForWifiDisconnect()V

    .line 258
    :goto_0
    iput-boolean p1, p0, Landroid/net/wifi/owm/OwmTcpMonitor;->mWifiConnected:Z

    .line 259
    return-void
.end method
