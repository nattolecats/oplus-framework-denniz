.class public Landroid/net/wifi/owm/OwmNetHealthMonitor;
.super Ljava/lang/Object;
.source "OwmNetHealthMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;,
        Landroid/net/wifi/owm/OwmNetHealthMonitor$HttpHealthMonitor;,
        Landroid/net/wifi/owm/OwmNetHealthMonitor$GatewayHealthMonitor;,
        Landroid/net/wifi/owm/OwmNetHealthMonitor$DnsHealthMonitor;,
        Landroid/net/wifi/owm/OwmNetHealthMonitor$DhcpHealthMonitor;,
        Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;,
        Landroid/net/wifi/owm/OwmNetHealthMonitor$AsyncHandler;
    }
.end annotation


# static fields
.field private static final blacklist DEFAULT_OWM_NET_HEALTH_COLLECT_INTVAL_THRED_SEC:I = 0x78

.field private static final blacklist ENVIR_GOOD_THRED:I = 0x50

.field private static final blacklist EVT_RECORD_SIZE:I = 0x8

.field private static final blacklist MSG_BASE:I = 0x0

.field private static final blacklist MSG_START_COLLECT_NET_HEALTH_RECORD:I = 0x1

.field private static final blacklist MSG_STOP_COLLECT_NET_HEALTH_RECORD:I = 0x2

.field private static final blacklist PER_GOOD_THRED:I = 0x50

.field private static final blacklist TAG:Ljava/lang/String; = "OwmNetHealthMonitor"

.field private static volatile blacklist sInstance:Landroid/net/wifi/owm/OwmNetHealthMonitor;


# instance fields
.field private blacklist mAsyncHandler:Landroid/os/Handler;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mDhcpHealthMonitor:Landroid/net/wifi/owm/OwmNetHealthMonitor$DhcpHealthMonitor;

.field private blacklist mDnsHealthMonitor:Landroid/net/wifi/owm/OwmNetHealthMonitor$DnsHealthMonitor;

.field private blacklist mGatewayHealthMonitor:Landroid/net/wifi/owm/OwmNetHealthMonitor$GatewayHealthMonitor;

.field private blacklist mHttpHealthMonitor:Landroid/net/wifi/owm/OwmNetHealthMonitor$HttpHealthMonitor;

.field private blacklist mL2HealthMonitor:Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;

.field private blacklist mLastDhcpHealthMonitorRecord:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mLastDnsHealthMonitorRecord:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mLastGatewayHealthMonitorRecord:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mLastHttpHealthMonitorRecord:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mLastL2HealthMonitorRecord:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mLastTcpHealthMonitorRecord:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRusCollectNetHealthIntervalSec:I

.field private blacklist mTcpHealthMonitor:Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;

.field private blacklist mVerboseLoggingEnabled:Z

.field private blacklist mWifiConnected:Z

.field private blacklist mWifiRomUpdateHelper:Landroid/net/wifi/IWifiRomUpdateHelper;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAsyncHandler(Landroid/net/wifi/owm/OwmNetHealthMonitor;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor;->mAsyncHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/net/wifi/owm/OwmNetHealthMonitor;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDhcpHealthMonitor(Landroid/net/wifi/owm/OwmNetHealthMonitor;)Landroid/net/wifi/owm/OwmNetHealthMonitor$DhcpHealthMonitor;
    .locals 0

    iget-object p0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor;->mDhcpHealthMonitor:Landroid/net/wifi/owm/OwmNetHealthMonitor$DhcpHealthMonitor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDnsHealthMonitor(Landroid/net/wifi/owm/OwmNetHealthMonitor;)Landroid/net/wifi/owm/OwmNetHealthMonitor$DnsHealthMonitor;
    .locals 0

    iget-object p0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor;->mDnsHealthMonitor:Landroid/net/wifi/owm/OwmNetHealthMonitor$DnsHealthMonitor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmGatewayHealthMonitor(Landroid/net/wifi/owm/OwmNetHealthMonitor;)Landroid/net/wifi/owm/OwmNetHealthMonitor$GatewayHealthMonitor;
    .locals 0

    iget-object p0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor;->mGatewayHealthMonitor:Landroid/net/wifi/owm/OwmNetHealthMonitor$GatewayHealthMonitor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHttpHealthMonitor(Landroid/net/wifi/owm/OwmNetHealthMonitor;)Landroid/net/wifi/owm/OwmNetHealthMonitor$HttpHealthMonitor;
    .locals 0

    iget-object p0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor;->mHttpHealthMonitor:Landroid/net/wifi/owm/OwmNetHealthMonitor$HttpHealthMonitor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmL2HealthMonitor(Landroid/net/wifi/owm/OwmNetHealthMonitor;)Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;
    .locals 0

    iget-object p0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor;->mL2HealthMonitor:Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRusCollectNetHealthIntervalSec(Landroid/net/wifi/owm/OwmNetHealthMonitor;)I
    .locals 0

    iget p0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor;->mRusCollectNetHealthIntervalSec:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTcpHealthMonitor(Landroid/net/wifi/owm/OwmNetHealthMonitor;)Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;
    .locals 0

    iget-object p0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor;->mTcpHealthMonitor:Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWifiConnected(Landroid/net/wifi/owm/OwmNetHealthMonitor;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor;->mWifiConnected:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLastDhcpHealthMonitorRecord(Landroid/net/wifi/owm/OwmNetHealthMonitor;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor;->mLastDhcpHealthMonitorRecord:Ljava/util/Map;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLastDnsHealthMonitorRecord(Landroid/net/wifi/owm/OwmNetHealthMonitor;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor;->mLastDnsHealthMonitorRecord:Ljava/util/Map;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLastGatewayHealthMonitorRecord(Landroid/net/wifi/owm/OwmNetHealthMonitor;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor;->mLastGatewayHealthMonitorRecord:Ljava/util/Map;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLastHttpHealthMonitorRecord(Landroid/net/wifi/owm/OwmNetHealthMonitor;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor;->mLastHttpHealthMonitorRecord:Ljava/util/Map;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLastL2HealthMonitorRecord(Landroid/net/wifi/owm/OwmNetHealthMonitor;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor;->mLastL2HealthMonitorRecord:Ljava/util/Map;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLastTcpHealthMonitorRecord(Landroid/net/wifi/owm/OwmNetHealthMonitor;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor;->mLastTcpHealthMonitorRecord:Ljava/util/Map;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlogD(Landroid/net/wifi/owm/OwmNetHealthMonitor;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->logD(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 65
    const/4 v0, 0x0

    sput-object v0, Landroid/net/wifi/owm/OwmNetHealthMonitor;->sInstance:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor;->mVerboseLoggingEnabled:Z

    .line 67
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor;->mAsyncHandler:Landroid/os/Handler;

    .line 68
    iput-object v1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor;->mContext:Landroid/content/Context;

    .line 69
    iput-boolean v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor;->mWifiConnected:Z

    .line 72
    const/16 v2, 0x78

    iput v2, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor;->mRusCollectNetHealthIntervalSec:I

    .line 73
    iput-object v1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor;->mWifiRomUpdateHelper:Landroid/net/wifi/IWifiRomUpdateHelper;

    .line 76
    new-instance v2, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;

    invoke-direct {v2, p0, v1}, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;-><init>(Landroid/net/wifi/owm/OwmNetHealthMonitor;Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor-IA;)V

    iput-object v2, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor;->mL2HealthMonitor:Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;

    .line 78
    new-instance v2, Landroid/net/wifi/owm/OwmNetHealthMonitor$DhcpHealthMonitor;

    invoke-direct {v2, p0, v1}, Landroid/net/wifi/owm/OwmNetHealthMonitor$DhcpHealthMonitor;-><init>(Landroid/net/wifi/owm/OwmNetHealthMonitor;Landroid/net/wifi/owm/OwmNetHealthMonitor$DhcpHealthMonitor-IA;)V

    iput-object v2, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor;->mDhcpHealthMonitor:Landroid/net/wifi/owm/OwmNetHealthMonitor$DhcpHealthMonitor;

    .line 80
    new-instance v2, Landroid/net/wifi/owm/OwmNetHealthMonitor$DnsHealthMonitor;

    invoke-direct {v2, p0, v1}, Landroid/net/wifi/owm/OwmNetHealthMonitor$DnsHealthMonitor;-><init>(Landroid/net/wifi/owm/OwmNetHealthMonitor;Landroid/net/wifi/owm/OwmNetHealthMonitor$DnsHealthMonitor-IA;)V

    iput-object v2, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor;->mDnsHealthMonitor:Landroid/net/wifi/owm/OwmNetHealthMonitor$DnsHealthMonitor;

    .line 82
    new-instance v2, Landroid/net/wifi/owm/OwmNetHealthMonitor$GatewayHealthMonitor;

    invoke-direct {v2, p0, v1}, Landroid/net/wifi/owm/OwmNetHealthMonitor$GatewayHealthMonitor;-><init>(Landroid/net/wifi/owm/OwmNetHealthMonitor;Landroid/net/wifi/owm/OwmNetHealthMonitor$GatewayHealthMonitor-IA;)V

    iput-object v2, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor;->mGatewayHealthMonitor:Landroid/net/wifi/owm/OwmNetHealthMonitor$GatewayHealthMonitor;

    .line 84
    new-instance v2, Landroid/net/wifi/owm/OwmNetHealthMonitor$HttpHealthMonitor;

    invoke-direct {v2, p0, v1}, Landroid/net/wifi/owm/OwmNetHealthMonitor$HttpHealthMonitor;-><init>(Landroid/net/wifi/owm/OwmNetHealthMonitor;Landroid/net/wifi/owm/OwmNetHealthMonitor$HttpHealthMonitor-IA;)V

    iput-object v2, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor;->mHttpHealthMonitor:Landroid/net/wifi/owm/OwmNetHealthMonitor$HttpHealthMonitor;

    .line 86
    new-instance v2, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;

    invoke-direct {v2, p0, v1}, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;-><init>(Landroid/net/wifi/owm/OwmNetHealthMonitor;Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor-IA;)V

    iput-object v2, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor;->mTcpHealthMonitor:Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;

    .line 89
    iput-object v1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor;->mLastL2HealthMonitorRecord:Ljava/util/Map;

    .line 90
    iput-object v1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor;->mLastDhcpHealthMonitorRecord:Ljava/util/Map;

    .line 91
    iput-object v1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor;->mLastDnsHealthMonitorRecord:Ljava/util/Map;

    .line 92
    iput-object v1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor;->mLastGatewayHealthMonitorRecord:Ljava/util/Map;

    .line 93
    iput-object v1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor;->mLastHttpHealthMonitorRecord:Ljava/util/Map;

    .line 94
    iput-object v1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor;->mLastTcpHealthMonitorRecord:Ljava/util/Map;

    .line 169
    iput-object p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor;->mContext:Landroid/content/Context;

    .line 170
    new-instance v1, Landroid/net/wifi/owm/OwmNetHealthMonitor$AsyncHandler;

    iget-object v2, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/net/wifi/owm/OwmBaseUtils;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmBaseUtils;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/owm/OwmBaseUtils;->getOwmMonitorThread()Landroid/os/HandlerThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/net/wifi/owm/OwmNetHealthMonitor$AsyncHandler;-><init>(Landroid/net/wifi/owm/OwmNetHealthMonitor;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor;->mAsyncHandler:Landroid/os/Handler;

    .line 171
    invoke-static {}, Landroid/common/OplusFrameworkFactory;->getInstance()Landroid/common/OplusFrameworkFactory;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/IWifiRomUpdateHelper;->DEFAULT:Landroid/net/wifi/IWifiRomUpdateHelper;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor;->mContext:Landroid/content/Context;

    aput-object v4, v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/common/OplusFrameworkFactory;->getFeature(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/IWifiRomUpdateHelper;

    iput-object v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor;->mWifiRomUpdateHelper:Landroid/net/wifi/IWifiRomUpdateHelper;

    .line 172
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->updateRusConfig()V

    .line 173
    return-void
.end method

.method public static whitelist getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmNetHealthMonitor;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 157
    sget-object v0, Landroid/net/wifi/owm/OwmNetHealthMonitor;->sInstance:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    if-nez v0, :cond_1

    .line 158
    const-class v0, Landroid/net/wifi/owm/OwmNetHealthMonitor;

    monitor-enter v0

    .line 159
    :try_start_0
    sget-object v1, Landroid/net/wifi/owm/OwmNetHealthMonitor;->sInstance:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    if-nez v1, :cond_0

    .line 160
    new-instance v1, Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-direct {v1, p0}, Landroid/net/wifi/owm/OwmNetHealthMonitor;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/net/wifi/owm/OwmNetHealthMonitor;->sInstance:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    .line 162
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 165
    :cond_1
    :goto_0
    sget-object v0, Landroid/net/wifi/owm/OwmNetHealthMonitor;->sInstance:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    return-object v0
.end method

.method private blacklist initTempParamsForWifiDisconnect()V
    .locals 2

    .line 255
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor;->mAsyncHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor;->mAsyncHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 259
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor;->mAsyncHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor;->mAsyncHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 263
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor;->mLastL2HealthMonitorRecord:Ljava/util/Map;

    .line 264
    iput-object v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor;->mLastDhcpHealthMonitorRecord:Ljava/util/Map;

    .line 265
    iput-object v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor;->mLastDnsHealthMonitorRecord:Ljava/util/Map;

    .line 266
    iput-object v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor;->mLastGatewayHealthMonitorRecord:Ljava/util/Map;

    .line 267
    iput-object v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor;->mLastHttpHealthMonitorRecord:Ljava/util/Map;

    .line 268
    iput-object v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor;->mLastTcpHealthMonitorRecord:Ljava/util/Map;

    .line 269
    return-void
.end method

.method private blacklist logD(Ljava/lang/String;)V
    .locals 2
    .param p1, "log"    # Ljava/lang/String;

    .line 876
    iget-boolean v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 877
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mScreenOn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/wifi/owm/OwmBaseUtils;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmBaseUtils;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmBaseUtils;->isScreenOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OwmNetHealthMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    :cond_0
    return-void
.end method

.method private blacklist updateRusConfig()V
    .locals 3

    .line 248
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor;->mWifiRomUpdateHelper:Landroid/net/wifi/IWifiRomUpdateHelper;

    if-eqz v0, :cond_0

    .line 249
    const-string v0, "updateNetHealthMonitorRusVal"

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->logD(Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor;->mWifiRomUpdateHelper:Landroid/net/wifi/IWifiRomUpdateHelper;

    const/16 v1, 0x78

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "OWM_NET_HEALTH_COLLECT_INTVAL_THRED_SEC"

    invoke-interface {v0, v2, v1}, Landroid/net/wifi/IWifiRomUpdateHelper;->getIntegerValue(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor;->mRusCollectNetHealthIntervalSec:I

    .line 252
    :cond_0
    return-void
.end method


# virtual methods
.method public whitelist enableVerboseLogging(Z)V
    .locals 0
    .param p1, "verbose"    # Z

    .line 872
    iput-boolean p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor;->mVerboseLoggingEnabled:Z

    .line 873
    return-void
.end method

.method public whitelist getLastCoexistHealthMonitorRecord()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmCoexistMonitor;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmCoexistMonitor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/owm/OwmCoexistMonitor;->getCurRecordForNetHealth()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getLastDhcpHealthMonitorRecord()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor;->mLastDhcpHealthMonitorRecord:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 106
    const/4 v0, 0x0

    return-object v0

    .line 109
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getLastDnsHealthMonitorRecord()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor;->mLastDnsHealthMonitorRecord:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 114
    const/4 v0, 0x0

    return-object v0

    .line 117
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getLastFeatActHealthMonitorRecord()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmFeatureActiveMonitor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->getCurRecordForNetHealth()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getLastGatewayHealthMonitorRecord()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor;->mLastGatewayHealthMonitorRecord:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 122
    const/4 v0, 0x0

    return-object v0

    .line 125
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getLastHttpHealthMonitorRecord()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor;->mLastHttpHealthMonitorRecord:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 130
    const/4 v0, 0x0

    return-object v0

    .line 133
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getLastL2HealthMonitorRecord()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor;->mLastL2HealthMonitorRecord:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 98
    const/4 v0, 0x0

    return-object v0

    .line 101
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getLastRouterHealthMonitorRecord()Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmRouterMonitor;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmRouterMonitor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/owm/OwmRouterMonitor;->getCurRecordForNetHealth()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getLastTcpHealthMonitorRecord()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor;->mLastTcpHealthMonitorRecord:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 138
    const/4 v0, 0x0

    return-object v0

    .line 141
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setWifiConnState(Z)V
    .locals 2
    .param p1, "isConnected"    # Z

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setWifiConnState, mWifiConnected = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor;->mWifiConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isConnected = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->logD(Ljava/lang/String;)V

    .line 229
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->updateRusConfig()V

    .line 231
    iget-boolean v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor;->mWifiConnected:Z

    if-ne p1, v0, :cond_0

    .line 233
    return-void

    .line 236
    :cond_0
    iput-boolean p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor;->mWifiConnected:Z

    .line 238
    if-eqz p1, :cond_1

    .line 240
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor;->mAsyncHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 243
    :cond_1
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->initTempParamsForWifiDisconnect()V

    .line 245
    :goto_0
    return-void
.end method
