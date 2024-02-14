.class public Landroid/net/wifi/owm/OwmIcmpMonitor;
.super Ljava/lang/Object;
.source "OwmIcmpMonitor.java"

# interfaces
.implements Landroid/net/wifi/owm/IOwmMonitorCommon;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler;,
        Landroid/net/wifi/owm/OwmIcmpMonitor$AsyncHandler;
    }
.end annotation


# static fields
.field private static final blacklist EVT_RECORD_SIZE:I = 0x8

.field private static final blacklist ICMP_UNREACHABLE_BURST_EVT_CNT_THRED:I = 0x3

.field private static final blacklist ICMP_UNREACHABLE_BURST_EVT_DELAY_MS:I = 0xbb8

.field private static final blacklist MSG_BASE:I = 0x0

.field private static final blacklist MSG_CHECK_ICMP_UNREACHABLE_BURST_EVT:I = 0x4

.field private static final blacklist MSG_DESTROY_SOCKET:I = 0x2

.field private static final blacklist MSG_INIT_SOCKET:I = 0x1

.field private static final blacklist MSG_RENEW_INIT_SOCKET:I = 0x3

.field private static final blacklist RENEW_INIT_SOCKET_DELAY_MS:I = 0x3e8

.field private static final blacklist RENEW_INIT_SOCKET_TRY_CNT:I = 0x5

.field private static final blacklist TAG:Ljava/lang/String; = "OwmIcmpMonitor"

.field private static final blacklist VERTICAL_SEPARATE:Ljava/lang/String; = "|"

.field private static volatile blacklist sInstance:Landroid/net/wifi/owm/OwmIcmpMonitor;


# instance fields
.field private blacklist mAsyncHandler:Landroid/os/Handler;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mErrCode0Cnt:I

.field private blacklist mErrCode1Cnt:I

.field private blacklist mErrCode2Cnt:I

.field private blacklist mErrCode3Cnt:I

.field private blacklist mErrCode4Cnt:I

.field private blacklist mErrCode5Cnt:I

.field private blacklist mErrCode6Cnt:I

.field private blacklist mErrCode7Cnt:I

.field private blacklist mErrCodeTotalCnt:I

.field private blacklist mIcmpPacketHandler:Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler;

.field private blacklist mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

.field private blacklist mOwmRouterMonitor:Landroid/net/wifi/owm/OwmRouterMonitor;

.field private blacklist mPreErrCode0Cnt:I

.field private blacklist mVerboseLoggingEnabled:Z

.field private blacklist mWifiConnected:Z

.field private blacklist mWifiEnabled:Z

.field private blacklist mWifiManager:Landroid/net/wifi/WifiManager;

.field private blacklist tryRenewInitSocketCnt:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAsyncHandler(Landroid/net/wifi/owm/OwmIcmpMonitor;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mAsyncHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/net/wifi/owm/OwmIcmpMonitor;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmErrCode0Cnt(Landroid/net/wifi/owm/OwmIcmpMonitor;)I
    .locals 0

    iget p0, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mErrCode0Cnt:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIcmpPacketHandler(Landroid/net/wifi/owm/OwmIcmpMonitor;)Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler;
    .locals 0

    iget-object p0, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mIcmpPacketHandler:Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOwmBaseUtils(Landroid/net/wifi/owm/OwmIcmpMonitor;)Landroid/net/wifi/owm/OwmBaseUtils;
    .locals 0

    iget-object p0, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPreErrCode0Cnt(Landroid/net/wifi/owm/OwmIcmpMonitor;)I
    .locals 0

    iget p0, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mPreErrCode0Cnt:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWifiEnabled(Landroid/net/wifi/owm/OwmIcmpMonitor;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mWifiEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWifiManager(Landroid/net/wifi/owm/OwmIcmpMonitor;)Landroid/net/wifi/WifiManager;
    .locals 0

    iget-object p0, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgettryRenewInitSocketCnt(Landroid/net/wifi/owm/OwmIcmpMonitor;)I
    .locals 0

    iget p0, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->tryRenewInitSocketCnt:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmWifiManager(Landroid/net/wifi/owm/OwmIcmpMonitor;Landroid/net/wifi/WifiManager;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputtryRenewInitSocketCnt(Landroid/net/wifi/owm/OwmIcmpMonitor;I)V
    .locals 0

    iput p1, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->tryRenewInitSocketCnt:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlogD(Landroid/net/wifi/owm/OwmIcmpMonitor;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/owm/OwmIcmpMonitor;->logD(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateIcmpRecord(Landroid/net/wifi/owm/OwmIcmpMonitor;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/owm/OwmIcmpMonitor;->updateIcmpRecord(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 98
    const/4 v0, 0x0

    sput-object v0, Landroid/net/wifi/owm/OwmIcmpMonitor;->sInstance:Landroid/net/wifi/owm/OwmIcmpMonitor;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mAsyncHandler:Landroid/os/Handler;

    .line 100
    iput-object v0, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mContext:Landroid/content/Context;

    .line 101
    iput-object v0, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 103
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mVerboseLoggingEnabled:Z

    .line 104
    iput-boolean v1, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mWifiConnected:Z

    .line 105
    iput-boolean v1, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mWifiEnabled:Z

    .line 106
    iput-object v0, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mIcmpPacketHandler:Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler;

    .line 107
    iput-object v0, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    .line 108
    iput-object v0, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mOwmRouterMonitor:Landroid/net/wifi/owm/OwmRouterMonitor;

    .line 109
    iput v1, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->tryRenewInitSocketCnt:I

    .line 112
    iput v1, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mErrCode0Cnt:I

    .line 113
    iput v1, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mErrCode1Cnt:I

    .line 114
    iput v1, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mErrCode2Cnt:I

    .line 115
    iput v1, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mErrCode3Cnt:I

    .line 116
    iput v1, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mErrCode4Cnt:I

    .line 117
    iput v1, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mErrCode5Cnt:I

    .line 118
    iput v1, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mErrCode6Cnt:I

    .line 119
    iput v1, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mErrCode7Cnt:I

    .line 120
    iput v1, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mErrCodeTotalCnt:I

    .line 123
    iput v1, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mPreErrCode0Cnt:I

    .line 138
    iput-object p1, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mContext:Landroid/content/Context;

    .line 139
    new-instance v0, Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler;

    invoke-direct {v0, p0}, Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler;-><init>(Landroid/net/wifi/owm/OwmIcmpMonitor;)V

    iput-object v0, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mIcmpPacketHandler:Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler;

    .line 140
    iget-object v0, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmBaseUtils;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmBaseUtils;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    .line 141
    iget-object v0, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmRouterMonitor;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmRouterMonitor;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mOwmRouterMonitor:Landroid/net/wifi/owm/OwmRouterMonitor;

    .line 142
    new-instance v0, Landroid/net/wifi/owm/OwmIcmpMonitor$AsyncHandler;

    iget-object v1, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmBaseUtils;->getOwmMonitorThread()Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/net/wifi/owm/OwmIcmpMonitor$AsyncHandler;-><init>(Landroid/net/wifi/owm/OwmIcmpMonitor;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mAsyncHandler:Landroid/os/Handler;

    .line 143
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

    .line 238
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 240
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mErrCode0Cnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ErrCode0Cnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mErrCode1Cnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ErrCode1Cnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mErrCode2Cnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ErrCode2Cnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mErrCode3Cnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ErrCode3Cnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mErrCode4Cnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ErrCode4Cnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mErrCode5Cnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ErrCode5Cnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mErrCode6Cnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ErrCode6Cnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mErrCode7Cnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ErrCode7Cnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mErrCodeTotalCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ErrCodeTotalCnt"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    return-object v0
.end method

.method public static whitelist getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmIcmpMonitor;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 126
    sget-object v0, Landroid/net/wifi/owm/OwmIcmpMonitor;->sInstance:Landroid/net/wifi/owm/OwmIcmpMonitor;

    if-nez v0, :cond_1

    .line 127
    const-class v0, Landroid/net/wifi/owm/OwmIcmpMonitor;

    monitor-enter v0

    .line 128
    :try_start_0
    sget-object v1, Landroid/net/wifi/owm/OwmIcmpMonitor;->sInstance:Landroid/net/wifi/owm/OwmIcmpMonitor;

    if-nez v1, :cond_0

    .line 129
    new-instance v1, Landroid/net/wifi/owm/OwmIcmpMonitor;

    invoke-direct {v1, p0}, Landroid/net/wifi/owm/OwmIcmpMonitor;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/net/wifi/owm/OwmIcmpMonitor;->sInstance:Landroid/net/wifi/owm/OwmIcmpMonitor;

    .line 131
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 134
    :cond_1
    :goto_0
    sget-object v0, Landroid/net/wifi/owm/OwmIcmpMonitor;->sInstance:Landroid/net/wifi/owm/OwmIcmpMonitor;

    return-object v0
.end method

.method private blacklist logD(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .line 337
    iget-boolean v0, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mScreenOn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/wifi/owm/OwmBaseUtils;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmBaseUtils;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmBaseUtils;->isScreenOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OwmIcmpMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_0
    return-void
.end method

.method private blacklist resetAllRecord()V
    .locals 1

    .line 254
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mErrCode0Cnt:I

    .line 255
    iput v0, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mErrCode1Cnt:I

    .line 256
    iput v0, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mErrCode2Cnt:I

    .line 257
    iput v0, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mErrCode3Cnt:I

    .line 258
    iput v0, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mErrCode4Cnt:I

    .line 259
    iput v0, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mErrCode5Cnt:I

    .line 260
    iput v0, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mErrCode6Cnt:I

    .line 261
    iput v0, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mErrCode7Cnt:I

    .line 262
    iput v0, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mErrCodeTotalCnt:I

    .line 263
    return-void
.end method

.method private blacklist updateIcmpRecord(Ljava/lang/String;)V
    .locals 5
    .param p1, "errCodeStr"    # Ljava/lang/String;

    .line 266
    iget-object v0, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v0}, Landroid/net/wifi/owm/OwmBaseUtils;->isWifiSelfCureOngoing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    return-void

    .line 270
    :cond_0
    const/4 v0, -0x1

    .line 273
    .local v0, "errCode":I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 276
    nop

    .line 278
    iget v1, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mErrCodeTotalCnt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mErrCodeTotalCnt:I

    .line 280
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 308
    :pswitch_0
    iget v1, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mErrCode7Cnt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mErrCode7Cnt:I

    .line 309
    goto :goto_0

    .line 305
    :pswitch_1
    iget v1, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mErrCode6Cnt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mErrCode6Cnt:I

    .line 306
    goto :goto_0

    .line 302
    :pswitch_2
    iget v1, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mErrCode5Cnt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mErrCode5Cnt:I

    .line 303
    goto :goto_0

    .line 299
    :pswitch_3
    iget v1, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mErrCode4Cnt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mErrCode4Cnt:I

    .line 300
    goto :goto_0

    .line 296
    :pswitch_4
    iget v1, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mErrCode3Cnt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mErrCode3Cnt:I

    .line 297
    goto :goto_0

    .line 293
    :pswitch_5
    iget v1, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mErrCode2Cnt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mErrCode2Cnt:I

    .line 294
    goto :goto_0

    .line 290
    :pswitch_6
    iget v1, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mErrCode1Cnt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mErrCode1Cnt:I

    .line 291
    goto :goto_0

    .line 282
    :pswitch_7
    iget v1, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mErrCode0Cnt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mErrCode0Cnt:I

    .line 283
    iget-object v1, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mAsyncHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 285
    iget v1, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mErrCode0Cnt:I

    iput v1, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mPreErrCode0Cnt:I

    .line 286
    iget-object v1, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mAsyncHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 313
    :cond_1
    :goto_0
    return-void

    .line 274
    :catch_0
    move-exception v1

    .line 275
    .local v1, "e":Ljava/lang/Exception;
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist enableVerboseLogging(Z)V
    .locals 0
    .param p1, "verbose"    # Z

    .line 333
    iput-boolean p1, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mVerboseLoggingEnabled:Z

    .line 334
    return-void
.end method

.method public whitelist getRecordToDatabase()Ljava/lang/String;
    .locals 2

    .line 327
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmIcmpMonitor;->generateRecordToDatabaseMap()Ljava/util/Map;

    move-result-object v0

    .line 329
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist saveRecordToDatabase()V
    .locals 5

    .line 316
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmIcmpMonitor;->generateRecordToDatabaseMap()Ljava/util/Map;

    move-result-object v0

    .line 318
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

    invoke-direct {p0, v1}, Landroid/net/wifi/owm/OwmIcmpMonitor;->logD(Ljava/lang/String;)V

    .line 321
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmIcmpMonitor;->resetAllRecord()V

    .line 323
    iget-object v1, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mContext:Landroid/content/Context;

    const-string v2, "wifi_fool_proof"

    const-string v3, "OwmIcmpMonitor"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Loplus/util/OplusStatistics;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 324
    return-void
.end method

.method public whitelist setWifiConnState(Z)V
    .locals 2
    .param p1, "isConnected"    # Z

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setWifiConnState, mWifiConnected = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mWifiConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isConnected = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmIcmpMonitor;->logD(Ljava/lang/String;)V

    .line 223
    iget-boolean v0, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mWifiConnected:Z

    if-ne p1, v0, :cond_0

    .line 225
    return-void

    .line 228
    :cond_0
    iput-boolean p1, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mWifiConnected:Z

    .line 230
    nop

    .line 235
    return-void
.end method

.method public whitelist setWifiEnabledState(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setWifiEnabledState, mWifiEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mWifiEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " enabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmIcmpMonitor;->logD(Ljava/lang/String;)V

    .line 199
    iget-boolean v0, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mWifiEnabled:Z

    if-ne v0, p1, :cond_0

    .line 200
    return-void

    .line 203
    :cond_0
    iput-boolean p1, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mWifiEnabled:Z

    .line 206
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->tryRenewInitSocketCnt:I

    .line 208
    if-eqz p1, :cond_1

    .line 209
    iget-object v0, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mAsyncHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 211
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mAsyncHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 214
    iget-object v0, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mAsyncHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 215
    iget-object v0, p0, Landroid/net/wifi/owm/OwmIcmpMonitor;->mAsyncHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 218
    :cond_2
    :goto_0
    return-void
.end method
