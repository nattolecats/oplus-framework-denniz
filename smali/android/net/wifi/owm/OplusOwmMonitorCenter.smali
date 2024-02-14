.class public Landroid/net/wifi/owm/OplusOwmMonitorCenter;
.super Ljava/lang/Object;
.source "OplusOwmMonitorCenter.java"

# interfaces
.implements Landroid/net/wifi/owm/IOplusOwmMonitorCenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/owm/OplusOwmMonitorCenter$AsyncHandler;,
        Landroid/net/wifi/owm/OplusOwmMonitorCenter$OwmBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final blacklist CHECK_MTU_PROB_ACT_STAT_DELAY_MS:I = 0x2710

.field private static final blacklist DAY_OF_SEC:I = 0x15180

.field private static final blacklist DEFAULT_OWM_DETAIL_DEBUG_ENABLE:Z = false

.field private static final blacklist EXTRA_IFACE_NAME:Ljava/lang/String; = "iface_name"

.field private static final blacklist EXTRA_WIFI_INVALID:Ljava/lang/String; = "wifi_network_invalid"

.field private static final blacklist LEGAL_SCORE:I = 0x64

.field private static final blacklist MAX_RSSI:I = -0x37

.field private static final blacklist MIN_RSSI:I = -0x64

.field private static final blacklist MSG_BASE:I = 0x0

.field private static final blacklist MSG_CHECK_MTU_PROB_ACT_STAT:I = 0x1

.field private static final blacklist QCOM_DATASTALL_BROADCAST:Ljava/lang/String; = "com.qualcomm.qti.net.wifi.WIFI_ALERT"

.field private static final blacklist SEC_OF_MS:I = 0x3e8

.field private static final blacklist TAG:Ljava/lang/String; = "OplusOwmMonitorCenter"

.field private static final blacklist WIFI_NETWORK_INVALID_ACTION:Ljava/lang/String; = "android.net.wifi.WIFI_NETWORK_INVALID"

.field private static volatile blacklist sInstance:Landroid/net/wifi/owm/OplusOwmMonitorCenter;


# instance fields
.field private blacklist mAsyncHandler:Landroid/os/Handler;

.field private blacklist mBroadcastReceiver:Landroid/net/wifi/owm/OplusOwmMonitorCenter$OwmBroadcastReceiver;

.field private blacklist mCallBack:Lcom/oplus/network/OplusNetworkStackManager$INetworkScoreCallback;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mPreSaveMonitorsRecordToDatabaseTime:J

.field private blacklist mRusDetailDebug:Z

.field private blacklist mVerboseLoggingEnabled:Z

.field private blacklist mWifiBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

.field private blacklist mWifiCoexistMonitor:Landroid/net/wifi/owm/OwmCoexistMonitor;

.field private blacklist mWifiDhcpMonitor:Landroid/net/wifi/owm/OwmDhcpMonitor;

.field private blacklist mWifiDnsMonitor:Landroid/net/wifi/owm/OwmDnsMonitor;

.field private blacklist mWifiFeatActMonitor:Landroid/net/wifi/owm/OwmFeatureActiveMonitor;

.field private blacklist mWifiGameMonitor:Landroid/net/wifi/owm/OwmGameMonitor;

.field private blacklist mWifiGatewayMonitor:Landroid/net/wifi/owm/OwmGatewayMonitor;

.field private blacklist mWifiHtMonitor:Landroid/net/wifi/owm/OwmHTMonitor;

.field private blacklist mWifiHttpMonitor:Landroid/net/wifi/owm/OwmHttpMonitor;

.field private blacklist mWifiIcmpMonitor:Landroid/net/wifi/owm/OwmIcmpMonitor;

.field private blacklist mWifiL2Monitor:Landroid/net/wifi/owm/OwmL2Monitor;

.field private blacklist mWifiMediaMonitor:Landroid/net/wifi/owm/OwmMultiMediaMonitor;

.field private blacklist mWifiNetAccessMonitor:Landroid/net/wifi/owm/OwmNetAccessMonitor;

.field private blacklist mWifiNetHealthMonitor:Landroid/net/wifi/owm/OwmNetHealthMonitor;

.field private blacklist mWifiRomUpdateHelper:Landroid/net/wifi/IWifiRomUpdateHelper;

.field private blacklist mWifiRouterMonitor:Landroid/net/wifi/owm/OwmRouterMonitor;

.field private blacklist mWifiTcpMonitor:Landroid/net/wifi/owm/OwmTcpMonitor;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmWifiBaseUtils(Landroid/net/wifi/owm/OplusOwmMonitorCenter;)Landroid/net/wifi/owm/OwmBaseUtils;
    .locals 0

    iget-object p0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWifiCoexistMonitor(Landroid/net/wifi/owm/OplusOwmMonitorCenter;)Landroid/net/wifi/owm/OwmCoexistMonitor;
    .locals 0

    iget-object p0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiCoexistMonitor:Landroid/net/wifi/owm/OwmCoexistMonitor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWifiL2Monitor(Landroid/net/wifi/owm/OplusOwmMonitorCenter;)Landroid/net/wifi/owm/OwmL2Monitor;
    .locals 0

    iget-object p0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiL2Monitor:Landroid/net/wifi/owm/OwmL2Monitor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWifiNetAccessMonitor(Landroid/net/wifi/owm/OplusOwmMonitorCenter;)Landroid/net/wifi/owm/OwmNetAccessMonitor;
    .locals 0

    iget-object p0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiNetAccessMonitor:Landroid/net/wifi/owm/OwmNetAccessMonitor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleCheckMtuProbActiveState(Landroid/net/wifi/owm/OplusOwmMonitorCenter;)V
    .locals 0

    invoke-direct {p0}, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->handleCheckMtuProbActiveState()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleScreenOnAction(Landroid/net/wifi/owm/OplusOwmMonitorCenter;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->handleScreenOnAction(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleWifi0ConnectStateChangeAction(Landroid/net/wifi/owm/OplusOwmMonitorCenter;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->handleWifi0ConnectStateChangeAction(Landroid/net/NetworkInfo$DetailedState;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleWifiEnableStateChange(Landroid/net/wifi/owm/OplusOwmMonitorCenter;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->handleWifiEnableStateChange(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlogD(Landroid/net/wifi/owm/OplusOwmMonitorCenter;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->logD(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msaveAllMonitorsRecordToDatabase(Landroid/net/wifi/owm/OplusOwmMonitorCenter;)V
    .locals 0

    invoke-direct {p0}, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->saveAllMonitorsRecordToDatabase()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 100
    const/4 v0, 0x0

    sput-object v0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->sInstance:Landroid/net/wifi/owm/OplusOwmMonitorCenter;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mVerboseLoggingEnabled:Z

    .line 102
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiRomUpdateHelper:Landroid/net/wifi/IWifiRomUpdateHelper;

    .line 104
    iput-object v1, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mContext:Landroid/content/Context;

    .line 105
    iput-object v1, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mAsyncHandler:Landroid/os/Handler;

    .line 106
    iput-object v1, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mBroadcastReceiver:Landroid/net/wifi/owm/OplusOwmMonitorCenter$OwmBroadcastReceiver;

    .line 109
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mRusDetailDebug:Z

    .line 112
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mPreSaveMonitorsRecordToDatabaseTime:J

    .line 115
    iput-object v1, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    .line 116
    iput-object v1, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiNetAccessMonitor:Landroid/net/wifi/owm/OwmNetAccessMonitor;

    .line 117
    iput-object v1, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiGameMonitor:Landroid/net/wifi/owm/OwmGameMonitor;

    .line 118
    iput-object v1, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiDnsMonitor:Landroid/net/wifi/owm/OwmDnsMonitor;

    .line 119
    iput-object v1, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiDhcpMonitor:Landroid/net/wifi/owm/OwmDhcpMonitor;

    .line 120
    iput-object v1, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiIcmpMonitor:Landroid/net/wifi/owm/OwmIcmpMonitor;

    .line 121
    iput-object v1, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiTcpMonitor:Landroid/net/wifi/owm/OwmTcpMonitor;

    .line 122
    iput-object v1, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiHttpMonitor:Landroid/net/wifi/owm/OwmHttpMonitor;

    .line 123
    iput-object v1, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiGatewayMonitor:Landroid/net/wifi/owm/OwmGatewayMonitor;

    .line 124
    iput-object v1, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiRouterMonitor:Landroid/net/wifi/owm/OwmRouterMonitor;

    .line 125
    iput-object v1, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiL2Monitor:Landroid/net/wifi/owm/OwmL2Monitor;

    .line 126
    iput-object v1, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiCoexistMonitor:Landroid/net/wifi/owm/OwmCoexistMonitor;

    .line 127
    iput-object v1, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiFeatActMonitor:Landroid/net/wifi/owm/OwmFeatureActiveMonitor;

    .line 128
    iput-object v1, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiNetHealthMonitor:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    .line 129
    iput-object v1, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiHtMonitor:Landroid/net/wifi/owm/OwmHTMonitor;

    .line 130
    iput-object v1, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiMediaMonitor:Landroid/net/wifi/owm/OwmMultiMediaMonitor;

    .line 842
    new-instance v1, Landroid/net/wifi/owm/OplusOwmMonitorCenter$1;

    invoke-direct {v1, p0}, Landroid/net/wifi/owm/OplusOwmMonitorCenter$1;-><init>(Landroid/net/wifi/owm/OplusOwmMonitorCenter;)V

    iput-object v1, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mCallBack:Lcom/oplus/network/OplusNetworkStackManager$INetworkScoreCallback;

    .line 145
    iput-object p1, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mContext:Landroid/content/Context;

    .line 147
    invoke-static {p1}, Landroid/net/wifi/owm/OwmBaseUtils;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmBaseUtils;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    .line 148
    iget-object v1, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/wifi/owm/OwmNetAccessMonitor;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmNetAccessMonitor;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiNetAccessMonitor:Landroid/net/wifi/owm/OwmNetAccessMonitor;

    .line 149
    iget-object v1, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/wifi/owm/OwmGameMonitor;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmGameMonitor;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiGameMonitor:Landroid/net/wifi/owm/OwmGameMonitor;

    .line 150
    iget-object v1, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/wifi/owm/OwmDnsMonitor;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmDnsMonitor;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiDnsMonitor:Landroid/net/wifi/owm/OwmDnsMonitor;

    .line 151
    iget-object v1, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/wifi/owm/OwmDhcpMonitor;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmDhcpMonitor;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiDhcpMonitor:Landroid/net/wifi/owm/OwmDhcpMonitor;

    .line 152
    iget-object v1, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/wifi/owm/OwmIcmpMonitor;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmIcmpMonitor;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiIcmpMonitor:Landroid/net/wifi/owm/OwmIcmpMonitor;

    .line 153
    iget-object v1, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/wifi/owm/OwmTcpMonitor;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmTcpMonitor;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiTcpMonitor:Landroid/net/wifi/owm/OwmTcpMonitor;

    .line 154
    iget-object v1, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/wifi/owm/OwmHttpMonitor;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmHttpMonitor;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiHttpMonitor:Landroid/net/wifi/owm/OwmHttpMonitor;

    .line 155
    iget-object v1, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/wifi/owm/OwmGatewayMonitor;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmGatewayMonitor;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiGatewayMonitor:Landroid/net/wifi/owm/OwmGatewayMonitor;

    .line 156
    iget-object v1, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/wifi/owm/OwmRouterMonitor;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmRouterMonitor;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiRouterMonitor:Landroid/net/wifi/owm/OwmRouterMonitor;

    .line 157
    iget-object v1, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/wifi/owm/OwmL2Monitor;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmL2Monitor;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiL2Monitor:Landroid/net/wifi/owm/OwmL2Monitor;

    .line 158
    iget-object v1, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/wifi/owm/OwmCoexistMonitor;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmCoexistMonitor;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiCoexistMonitor:Landroid/net/wifi/owm/OwmCoexistMonitor;

    .line 159
    iget-object v1, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmFeatureActiveMonitor;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiFeatActMonitor:Landroid/net/wifi/owm/OwmFeatureActiveMonitor;

    .line 160
    iget-object v1, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmNetHealthMonitor;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiNetHealthMonitor:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    .line 161
    iget-object v1, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/wifi/owm/OwmHTMonitor;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmHTMonitor;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiHtMonitor:Landroid/net/wifi/owm/OwmHTMonitor;

    .line 162
    iget-object v1, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmMultiMediaMonitor;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiMediaMonitor:Landroid/net/wifi/owm/OwmMultiMediaMonitor;

    .line 164
    new-instance v1, Landroid/net/wifi/owm/OplusOwmMonitorCenter$AsyncHandler;

    iget-object v3, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v3}, Landroid/net/wifi/owm/OwmBaseUtils;->getOwmMonitorThread()Landroid/os/HandlerThread;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Landroid/net/wifi/owm/OplusOwmMonitorCenter$AsyncHandler;-><init>(Landroid/net/wifi/owm/OplusOwmMonitorCenter;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mAsyncHandler:Landroid/os/Handler;

    .line 165
    invoke-static {}, Landroid/common/OplusFrameworkFactory;->getInstance()Landroid/common/OplusFrameworkFactory;

    move-result-object v1

    sget-object v3, Landroid/net/wifi/IWifiRomUpdateHelper;->DEFAULT:Landroid/net/wifi/IWifiRomUpdateHelper;

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v4, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mContext:Landroid/content/Context;

    aput-object v4, v0, v2

    invoke-virtual {v1, v3, v0}, Landroid/common/OplusFrameworkFactory;->getFeature(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/IWifiRomUpdateHelper;

    iput-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiRomUpdateHelper:Landroid/net/wifi/IWifiRomUpdateHelper;

    .line 166
    const-string v1, "OWM_DETAIL_DEBUG_ENABLE"

    invoke-interface {v0, v1, v2}, Landroid/net/wifi/IWifiRomUpdateHelper;->getBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mRusDetailDebug:Z

    .line 168
    invoke-virtual {p0, v0}, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->enableVerboseLogging(Z)V

    .line 169
    invoke-direct {p0}, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->setupOwmBroadcastReceiver()V

    .line 170
    invoke-direct {p0}, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->updateRusConfig()V

    .line 172
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oplus/network/OplusNetworkStackManager;->getInstance(Landroid/content/Context;)Lcom/oplus/network/OplusNetworkStackManager;

    move-result-object v0

    .line 173
    .local v0, "manager":Lcom/oplus/network/OplusNetworkStackManager;
    if-eqz v0, :cond_0

    .line 174
    iget-object v1, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mCallBack:Lcom/oplus/network/OplusNetworkStackManager$INetworkScoreCallback;

    invoke-static {v1}, Lcom/oplus/network/OplusNetworkStackManager;->registerTcpCallback(Lcom/oplus/network/OplusNetworkStackManager$INetworkScoreCallback;)V

    .line 176
    :cond_0
    return-void
.end method

.method private blacklist checkIfNeedSaveMonitorsRecordToDatabase()V
    .locals 4

    .line 292
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 293
    .local v0, "curSystemTime":J
    iget-wide v2, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mPreSaveMonitorsRecordToDatabaseTime:J

    sub-long v2, v0, v2

    long-to-int v2, v2

    div-int/lit16 v2, v2, 0x3e8

    .line 294
    .local v2, "diffChangeTimeSec":I
    const v3, 0x15180

    if-lt v2, v3, :cond_0

    .line 295
    invoke-direct {p0}, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->saveAllMonitorsRecordToDatabase()V

    .line 297
    :cond_0
    return-void
.end method

.method public static whitelist getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OplusOwmMonitorCenter;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 133
    sget-object v0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->sInstance:Landroid/net/wifi/owm/OplusOwmMonitorCenter;

    if-nez v0, :cond_1

    .line 134
    const-class v0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;

    monitor-enter v0

    .line 135
    :try_start_0
    sget-object v1, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->sInstance:Landroid/net/wifi/owm/OplusOwmMonitorCenter;

    if-nez v1, :cond_0

    .line 136
    new-instance v1, Landroid/net/wifi/owm/OplusOwmMonitorCenter;

    invoke-direct {v1, p0}, Landroid/net/wifi/owm/OplusOwmMonitorCenter;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->sInstance:Landroid/net/wifi/owm/OplusOwmMonitorCenter;

    .line 138
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 141
    :cond_1
    :goto_0
    sget-object v0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->sInstance:Landroid/net/wifi/owm/OplusOwmMonitorCenter;

    return-object v0
.end method

.method private blacklist handleCheckMtuProbActiveState()V
    .locals 1

    .line 320
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v0}, Landroid/net/wifi/owm/OwmBaseUtils;->isMtuPorbEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 322
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OplusOwmMonitorKit;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->sendMtuProbNoEnableEventMesg()V

    .line 324
    :cond_0
    return-void
.end method

.method private blacklist handleNetValidStateChangeAction(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "ifname"    # Ljava/lang/String;
    .param p2, "valid"    # Z

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleNetValidStateChangeAction, ifname = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " valid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->logD(Ljava/lang/String;)V

    .line 329
    return-void
.end method

.method private blacklist handleScreenOnAction(Z)V
    .locals 2
    .param p1, "isScreenOn"    # Z

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleScreenOnAction, isScreenOn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->logD(Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v0, p1}, Landroid/net/wifi/owm/OwmBaseUtils;->setScreenOnState(Z)V

    .line 334
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiNetAccessMonitor:Landroid/net/wifi/owm/OwmNetAccessMonitor;

    invoke-virtual {v0, p1}, Landroid/net/wifi/owm/OwmNetAccessMonitor;->setScreenOnState(Z)V

    .line 336
    return-void
.end method

.method private blacklist handleWifi0ConnectStateChangeAction(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 4
    .param p1, "state"    # Landroid/net/NetworkInfo$DetailedState;

    .line 348
    if-nez p1, :cond_0

    .line 349
    return-void

    .line 352
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleWifi0StateChangeAction, wifi detailed state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->logD(Ljava/lang/String;)V

    .line 353
    invoke-direct {p0}, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->updateRusConfig()V

    .line 355
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 357
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v0, v1}, Landroid/net/wifi/owm/OwmBaseUtils;->setWifiConnectState(Z)V

    .line 358
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiNetAccessMonitor:Landroid/net/wifi/owm/OwmNetAccessMonitor;

    invoke-virtual {v0, v1}, Landroid/net/wifi/owm/OwmNetAccessMonitor;->setWifiConnState(Z)V

    .line 359
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiRouterMonitor:Landroid/net/wifi/owm/OwmRouterMonitor;

    invoke-virtual {v0, v1}, Landroid/net/wifi/owm/OwmRouterMonitor;->setWifiConnState(Z)V

    .line 360
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiDhcpMonitor:Landroid/net/wifi/owm/OwmDhcpMonitor;

    invoke-virtual {v0, v1}, Landroid/net/wifi/owm/OwmDhcpMonitor;->setWifiConnState(Z)V

    .line 361
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiL2Monitor:Landroid/net/wifi/owm/OwmL2Monitor;

    invoke-virtual {v0, v1}, Landroid/net/wifi/owm/OwmL2Monitor;->setWifiConnState(Z)V

    .line 362
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiNetHealthMonitor:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-virtual {v0, v1}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->setWifiConnState(Z)V

    .line 363
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiGameMonitor:Landroid/net/wifi/owm/OwmGameMonitor;

    invoke-virtual {v0, v1}, Landroid/net/wifi/owm/OwmGameMonitor;->setWifiConnState(Z)V

    .line 364
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiTcpMonitor:Landroid/net/wifi/owm/OwmTcpMonitor;

    invoke-virtual {v0, v1}, Landroid/net/wifi/owm/OwmTcpMonitor;->setWifiConnState(Z)V

    .line 365
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiFeatActMonitor:Landroid/net/wifi/owm/OwmFeatureActiveMonitor;

    invoke-virtual {v0, v1}, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->setWifiConnState(Z)V

    .line 366
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiCoexistMonitor:Landroid/net/wifi/owm/OwmCoexistMonitor;

    invoke-virtual {v0, v1}, Landroid/net/wifi/owm/OwmCoexistMonitor;->setWifiConnState(Z)V

    .line 367
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiHtMonitor:Landroid/net/wifi/owm/OwmHTMonitor;

    invoke-virtual {v0, v1}, Landroid/net/wifi/owm/OwmHTMonitor;->setWifiConnState(Z)V

    .line 368
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiMediaMonitor:Landroid/net/wifi/owm/OwmMultiMediaMonitor;

    invoke-virtual {v0, v1}, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->setWifiConnState(Z)V

    .line 371
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mAsyncHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 372
    :cond_1
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_3

    .line 374
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/net/wifi/owm/OwmBaseUtils;->setWifiConnectState(Z)V

    .line 375
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiNetAccessMonitor:Landroid/net/wifi/owm/OwmNetAccessMonitor;

    invoke-virtual {v0, v2}, Landroid/net/wifi/owm/OwmNetAccessMonitor;->setWifiConnState(Z)V

    .line 376
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiRouterMonitor:Landroid/net/wifi/owm/OwmRouterMonitor;

    invoke-virtual {v0, v2}, Landroid/net/wifi/owm/OwmRouterMonitor;->setWifiConnState(Z)V

    .line 377
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiDhcpMonitor:Landroid/net/wifi/owm/OwmDhcpMonitor;

    invoke-virtual {v0, v2}, Landroid/net/wifi/owm/OwmDhcpMonitor;->setWifiConnState(Z)V

    .line 378
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiL2Monitor:Landroid/net/wifi/owm/OwmL2Monitor;

    invoke-virtual {v0, v2}, Landroid/net/wifi/owm/OwmL2Monitor;->setWifiConnState(Z)V

    .line 379
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiNetHealthMonitor:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-virtual {v0, v2}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->setWifiConnState(Z)V

    .line 380
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiGameMonitor:Landroid/net/wifi/owm/OwmGameMonitor;

    invoke-virtual {v0, v2}, Landroid/net/wifi/owm/OwmGameMonitor;->setWifiConnState(Z)V

    .line 381
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiTcpMonitor:Landroid/net/wifi/owm/OwmTcpMonitor;

    invoke-virtual {v0, v2}, Landroid/net/wifi/owm/OwmTcpMonitor;->setWifiConnState(Z)V

    .line 382
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiFeatActMonitor:Landroid/net/wifi/owm/OwmFeatureActiveMonitor;

    invoke-virtual {v0, v2}, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->setWifiConnState(Z)V

    .line 383
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiCoexistMonitor:Landroid/net/wifi/owm/OwmCoexistMonitor;

    invoke-virtual {v0, v2}, Landroid/net/wifi/owm/OwmCoexistMonitor;->setWifiConnState(Z)V

    .line 384
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiHtMonitor:Landroid/net/wifi/owm/OwmHTMonitor;

    invoke-virtual {v0, v2}, Landroid/net/wifi/owm/OwmHTMonitor;->setWifiConnState(Z)V

    .line 385
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiMediaMonitor:Landroid/net/wifi/owm/OwmMultiMediaMonitor;

    invoke-virtual {v0, v2}, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->setWifiConnState(Z)V

    .line 387
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mAsyncHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 388
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mAsyncHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 391
    :cond_2
    invoke-direct {p0}, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->checkIfNeedSaveMonitorsRecordToDatabase()V

    .line 393
    :cond_3
    :goto_0
    return-void
.end method

.method private blacklist handleWifi0RssiChangeAction(I)V
    .locals 2
    .param p1, "rssi"    # I

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleWifi0RssiChangeAction, the new rssi = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->logD(Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v0, p1}, Landroid/net/wifi/owm/OwmBaseUtils;->setRssi(I)V

    .line 341
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiNetAccessMonitor:Landroid/net/wifi/owm/OwmNetAccessMonitor;

    invoke-virtual {v0, p1}, Landroid/net/wifi/owm/OwmNetAccessMonitor;->setRssi(I)V

    .line 342
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiGameMonitor:Landroid/net/wifi/owm/OwmGameMonitor;

    invoke-virtual {v0, p1}, Landroid/net/wifi/owm/OwmGameMonitor;->setRssi(I)V

    .line 343
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiL2Monitor:Landroid/net/wifi/owm/OwmL2Monitor;

    invoke-virtual {v0, p1}, Landroid/net/wifi/owm/OwmL2Monitor;->setRssi(I)V

    .line 344
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiMediaMonitor:Landroid/net/wifi/owm/OwmMultiMediaMonitor;

    invoke-virtual {v0, p1}, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->setRssi(I)V

    .line 345
    return-void
.end method

.method private blacklist handleWifiEnableStateChange(I)V
    .locals 2
    .param p1, "state"    # I

    .line 396
    const/4 v0, 0x1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 398
    iget-object v1, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v1, v0}, Landroid/net/wifi/owm/OwmBaseUtils;->setWifiEnabledState(Z)V

    .line 399
    iget-object v1, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiDhcpMonitor:Landroid/net/wifi/owm/OwmDhcpMonitor;

    invoke-virtual {v1, v0}, Landroid/net/wifi/owm/OwmDhcpMonitor;->setWifiEnabledState(Z)V

    .line 400
    iget-object v1, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiIcmpMonitor:Landroid/net/wifi/owm/OwmIcmpMonitor;

    invoke-virtual {v1, v0}, Landroid/net/wifi/owm/OwmIcmpMonitor;->setWifiEnabledState(Z)V

    .line 401
    iget-object v1, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiHttpMonitor:Landroid/net/wifi/owm/OwmHttpMonitor;

    invoke-virtual {v1, v0}, Landroid/net/wifi/owm/OwmHttpMonitor;->setWifiEnabledState(Z)V

    goto :goto_0

    .line 402
    :cond_0
    if-ne p1, v0, :cond_1

    .line 404
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/owm/OwmBaseUtils;->setWifiEnabledState(Z)V

    .line 405
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiDhcpMonitor:Landroid/net/wifi/owm/OwmDhcpMonitor;

    invoke-virtual {v0, v1}, Landroid/net/wifi/owm/OwmDhcpMonitor;->setWifiEnabledState(Z)V

    .line 406
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiIcmpMonitor:Landroid/net/wifi/owm/OwmIcmpMonitor;

    invoke-virtual {v0, v1}, Landroid/net/wifi/owm/OwmIcmpMonitor;->setWifiEnabledState(Z)V

    .line 407
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiHttpMonitor:Landroid/net/wifi/owm/OwmHttpMonitor;

    invoke-virtual {v0, v1}, Landroid/net/wifi/owm/OwmHttpMonitor;->setWifiEnabledState(Z)V

    .line 409
    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist logD(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .line 443
    iget-boolean v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 444
    const-string v0, "OplusOwmMonitorCenter"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_0
    return-void
.end method

.method private blacklist saveAllMonitorsRecordToDatabase()V
    .locals 2

    .line 300
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiNetAccessMonitor:Landroid/net/wifi/owm/OwmNetAccessMonitor;

    invoke-virtual {v0}, Landroid/net/wifi/owm/OwmNetAccessMonitor;->saveRecordToDatabase()V

    .line 301
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiGameMonitor:Landroid/net/wifi/owm/OwmGameMonitor;

    invoke-virtual {v0}, Landroid/net/wifi/owm/OwmGameMonitor;->saveRecordToDatabase()V

    .line 302
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiDnsMonitor:Landroid/net/wifi/owm/OwmDnsMonitor;

    invoke-virtual {v0}, Landroid/net/wifi/owm/OwmDnsMonitor;->saveRecordToDatabase()V

    .line 303
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiDhcpMonitor:Landroid/net/wifi/owm/OwmDhcpMonitor;

    invoke-virtual {v0}, Landroid/net/wifi/owm/OwmDhcpMonitor;->saveRecordToDatabase()V

    .line 304
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiIcmpMonitor:Landroid/net/wifi/owm/OwmIcmpMonitor;

    invoke-virtual {v0}, Landroid/net/wifi/owm/OwmIcmpMonitor;->saveRecordToDatabase()V

    .line 305
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiTcpMonitor:Landroid/net/wifi/owm/OwmTcpMonitor;

    invoke-virtual {v0}, Landroid/net/wifi/owm/OwmTcpMonitor;->saveRecordToDatabase()V

    .line 306
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiHttpMonitor:Landroid/net/wifi/owm/OwmHttpMonitor;

    invoke-virtual {v0}, Landroid/net/wifi/owm/OwmHttpMonitor;->saveRecordToDatabase()V

    .line 307
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiGatewayMonitor:Landroid/net/wifi/owm/OwmGatewayMonitor;

    invoke-virtual {v0}, Landroid/net/wifi/owm/OwmGatewayMonitor;->saveRecordToDatabase()V

    .line 309
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiL2Monitor:Landroid/net/wifi/owm/OwmL2Monitor;

    invoke-virtual {v0}, Landroid/net/wifi/owm/OwmL2Monitor;->saveRecordToDatabase()V

    .line 310
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiCoexistMonitor:Landroid/net/wifi/owm/OwmCoexistMonitor;

    invoke-virtual {v0}, Landroid/net/wifi/owm/OwmCoexistMonitor;->saveRecordToDatabase()V

    .line 311
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiHtMonitor:Landroid/net/wifi/owm/OwmHTMonitor;

    invoke-virtual {v0}, Landroid/net/wifi/owm/OwmHTMonitor;->saveRecordToDatabase()V

    .line 313
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiMediaMonitor:Landroid/net/wifi/owm/OwmMultiMediaMonitor;

    invoke-virtual {v0}, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->saveRecordToDatabase()V

    .line 316
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mPreSaveMonitorsRecordToDatabaseTime:J

    .line 317
    return-void
.end method

.method private blacklist setupOwmBroadcastReceiver()V
    .locals 3

    .line 179
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 180
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 181
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 182
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 183
    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 184
    const-string v1, "android.net.wifi.WIFI_NETWORK_INVALID"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 185
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 186
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 187
    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 188
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 189
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 190
    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 191
    const-string v1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 192
    const-string v1, "com.qualcomm.qti.net.wifi.WIFI_ALERT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 194
    new-instance v1, Landroid/net/wifi/owm/OplusOwmMonitorCenter$OwmBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/net/wifi/owm/OplusOwmMonitorCenter$OwmBroadcastReceiver;-><init>(Landroid/net/wifi/owm/OplusOwmMonitorCenter;Landroid/net/wifi/owm/OplusOwmMonitorCenter$OwmBroadcastReceiver-IA;)V

    iput-object v1, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mBroadcastReceiver:Landroid/net/wifi/owm/OplusOwmMonitorCenter$OwmBroadcastReceiver;

    .line 195
    iget-object v2, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 196
    return-void
.end method

.method private blacklist updateRusConfig()V
    .locals 2

    .line 412
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiRomUpdateHelper:Landroid/net/wifi/IWifiRomUpdateHelper;

    if-eqz v0, :cond_0

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateRusConfig, detail Info open:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mRusDetailDebug:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusOwmMonitorCenter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_0
    return-void
.end method


# virtual methods
.method public whitelist addArpDetectResultRecord(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "ifname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 554
    .local p2, "arpResult":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    if-nez p1, :cond_0

    .line 555
    return-void

    .line 557
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiGatewayMonitor:Landroid/net/wifi/owm/OwmGatewayMonitor;

    invoke-virtual {v0, p2}, Landroid/net/wifi/owm/OwmGatewayMonitor;->addArpDetectResultRecord(Ljava/util/Map;)V

    .line 558
    return-void
.end method

.method public whitelist addConnL2StatsRecord(Ljava/lang/String;IIII)V
    .locals 1
    .param p1, "ifname"    # Ljava/lang/String;
    .param p2, "radioOnTimeMs"    # I
    .param p3, "ccaBusyTimeMs"    # I
    .param p4, "txPer"    # I
    .param p5, "dataStallType"    # I

    .line 633
    if-nez p1, :cond_0

    .line 634
    return-void

    .line 637
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v0}, Landroid/net/wifi/owm/OwmBaseUtils;->getPrimaryClientIfname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 638
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiL2Monitor:Landroid/net/wifi/owm/OwmL2Monitor;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/net/wifi/owm/OwmL2Monitor;->addConnL2StatsRecord(IIII)V

    .line 640
    :cond_1
    return-void
.end method

.method public whitelist addConnWifiInfoRecord(Ljava/lang/String;Landroid/net/wifi/WifiInfo;JJJ)V
    .locals 11
    .param p1, "ifname"    # Ljava/lang/String;
    .param p2, "curWifiInfo"    # Landroid/net/wifi/WifiInfo;
    .param p3, "txSuccess"    # J
    .param p5, "txRetries"    # J
    .param p7, "rxSuccess"    # J

    .line 653
    move-object v0, p0

    move-object v1, p1

    move-object v10, p2

    if-eqz v1, :cond_2

    if-nez v10, :cond_0

    goto :goto_0

    .line 657
    :cond_0
    iget-object v2, v0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v2}, Landroid/net/wifi/owm/OwmBaseUtils;->getPrimaryClientIfname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 658
    iget-object v2, v0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v2, p2}, Landroid/net/wifi/owm/OwmBaseUtils;->setCurWifiInfo(Landroid/net/wifi/WifiInfo;)V

    .line 659
    iget-object v2, v0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiL2Monitor:Landroid/net/wifi/owm/OwmL2Monitor;

    move-object v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    invoke-virtual/range {v2 .. v9}, Landroid/net/wifi/owm/OwmL2Monitor;->addConnWifiInfoRecord(Landroid/net/wifi/WifiInfo;JJJ)V

    .line 660
    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->handleWifi0RssiChangeAction(I)V

    .line 662
    :cond_1
    return-void

    .line 654
    :cond_2
    :goto_0
    return-void
.end method

.method public whitelist addDataStallReportedFromFirmwareRecord(Ljava/lang/String;I)V
    .locals 1
    .param p1, "ifname"    # Ljava/lang/String;
    .param p2, "errCode"    # I

    .line 643
    if-nez p1, :cond_0

    .line 644
    return-void

    .line 647
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v0}, Landroid/net/wifi/owm/OwmBaseUtils;->getPrimaryClientIfname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 648
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiL2Monitor:Landroid/net/wifi/owm/OwmL2Monitor;

    invoke-virtual {v0, p2}, Landroid/net/wifi/owm/OwmL2Monitor;->addDataStallReportedFromFirmwareRecord(I)V

    .line 650
    :cond_1
    return-void
.end method

.method public whitelist addDhcpFailRecord(Ljava/lang/String;)V
    .locals 1
    .param p1, "ifname"    # Ljava/lang/String;

    .line 675
    if-nez p1, :cond_0

    .line 676
    return-void

    .line 679
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v0}, Landroid/net/wifi/owm/OwmBaseUtils;->getPrimaryClientIfname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 680
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiDhcpMonitor:Landroid/net/wifi/owm/OwmDhcpMonitor;

    invoke-virtual {v0}, Landroid/net/wifi/owm/OwmDhcpMonitor;->addDhcpFailRecord()V

    .line 682
    :cond_1
    return-void
.end method

.method public whitelist addDhcpSuccRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "ifname"    # Ljava/lang/String;
    .param p2, "ipAddr"    # Ljava/lang/String;
    .param p3, "gateway"    # Ljava/lang/String;

    .line 665
    if-nez p1, :cond_0

    .line 666
    return-void

    .line 669
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v0}, Landroid/net/wifi/owm/OwmBaseUtils;->getPrimaryClientIfname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 670
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiDhcpMonitor:Landroid/net/wifi/owm/OwmDhcpMonitor;

    invoke-virtual {v0, p2, p3}, Landroid/net/wifi/owm/OwmDhcpMonitor;->addDhcpSuccRecord(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    :cond_1
    return-void
.end method

.method public whitelist addDnsRecord(IIILjava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .param p1, "errCode"    # I
    .param p2, "latencyMs"    # I
    .param p3, "netId"    # I
    .param p4, "hostname"    # Ljava/lang/String;
    .param p5, "ipAddresses"    # [Ljava/lang/String;

    .line 707
    if-eqz p4, :cond_1

    if-nez p5, :cond_0

    goto :goto_0

    .line 711
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiDnsMonitor:Landroid/net/wifi/owm/OwmDnsMonitor;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/net/wifi/owm/OwmDnsMonitor;->addDnsRecord(IIILjava/lang/String;[Ljava/lang/String;)V

    .line 712
    return-void

    .line 708
    :cond_1
    :goto_0
    return-void
.end method

.method public whitelist addGameFrontInState(ZLjava/lang/String;)V
    .locals 1
    .param p1, "isFrontIn"    # Z
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 605
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiGameMonitor:Landroid/net/wifi/owm/OwmGameMonitor;

    invoke-virtual {v0, p1}, Landroid/net/wifi/owm/OwmGameMonitor;->addGameFrontInState(Z)V

    .line 606
    return-void
.end method

.method public whitelist addGameLatencyRecord(Ljava/lang/String;I)V
    .locals 1
    .param p1, "gamePkgName"    # Ljava/lang/String;
    .param p2, "rtt"    # I

    .line 597
    if-nez p1, :cond_0

    .line 598
    return-void

    .line 601
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiGameMonitor:Landroid/net/wifi/owm/OwmGameMonitor;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/owm/OwmGameMonitor;->addGameLatencyRecord(Ljava/lang/String;I)V

    .line 602
    return-void
.end method

.method public whitelist addGamePlayingState(Z)V
    .locals 1
    .param p1, "isPlaying"    # Z

    .line 609
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiGameMonitor:Landroid/net/wifi/owm/OwmGameMonitor;

    invoke-virtual {v0, p1}, Landroid/net/wifi/owm/OwmGameMonitor;->addGamePlayingState(Z)V

    .line 610
    return-void
.end method

.method public whitelist addIpConflictRecord(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "ifname"    # Ljava/lang/String;
    .param p2, "conflictIp"    # Ljava/lang/String;

    .line 587
    if-nez p1, :cond_0

    .line 588
    return-void

    .line 591
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v0}, Landroid/net/wifi/owm/OwmBaseUtils;->getPrimaryClientIfname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 592
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiDhcpMonitor:Landroid/net/wifi/owm/OwmDhcpMonitor;

    invoke-virtual {v0, p2}, Landroid/net/wifi/owm/OwmDhcpMonitor;->addIpConflictRecord(Ljava/lang/String;)V

    .line 594
    :cond_1
    return-void
.end method

.method public whitelist addIpVersionRecord(Ljava/lang/String;Landroid/net/LinkProperties;)V
    .locals 1
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "lp"    # Landroid/net/LinkProperties;

    .line 747
    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 751
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v0}, Landroid/net/wifi/owm/OwmBaseUtils;->getPrimaryClientIfname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 752
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiFeatActMonitor:Landroid/net/wifi/owm/OwmFeatureActiveMonitor;

    invoke-virtual {v0, p2}, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->addIpVersionRecord(Landroid/net/LinkProperties;)V

    .line 753
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OplusOwmMonitorKit;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->sendIpSuccEventMesg()V

    .line 755
    :cond_1
    return-void

    .line 748
    :cond_2
    :goto_0
    return-void
.end method

.method public whitelist addIpv4RtoRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "ifname"    # Ljava/lang/String;
    .param p2, "srcAddr"    # Ljava/lang/String;
    .param p3, "destAddr"    # Ljava/lang/String;
    .param p4, "uid"    # I

    .line 623
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    .line 627
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v0}, Landroid/net/wifi/owm/OwmBaseUtils;->getPrimaryClientIfname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 628
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiTcpMonitor:Landroid/net/wifi/owm/OwmTcpMonitor;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, p4, v1}, Landroid/net/wifi/owm/OwmTcpMonitor;->addTcpRtoRecord(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 630
    :cond_1
    return-void

    .line 624
    :cond_2
    :goto_0
    return-void
.end method

.method public whitelist addIpv6RtoRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "ifname"    # Ljava/lang/String;
    .param p2, "srcAddr"    # Ljava/lang/String;
    .param p3, "destAddr"    # Ljava/lang/String;
    .param p4, "uid"    # I

    .line 613
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    .line 617
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v0}, Landroid/net/wifi/owm/OwmBaseUtils;->getPrimaryClientIfname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 618
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiTcpMonitor:Landroid/net/wifi/owm/OwmTcpMonitor;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, p3, p4, v1}, Landroid/net/wifi/owm/OwmTcpMonitor;->addTcpRtoRecord(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 620
    :cond_1
    return-void

    .line 614
    :cond_2
    :goto_0
    return-void
.end method

.method public whitelist addNetScoreRecord(Ljava/lang/String;I)V
    .locals 1
    .param p1, "ifname"    # Ljava/lang/String;
    .param p2, "score"    # I

    .line 715
    if-nez p1, :cond_0

    .line 716
    return-void

    .line 719
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v0}, Landroid/net/wifi/owm/OwmBaseUtils;->getPrimaryClientIfname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 720
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiNetAccessMonitor:Landroid/net/wifi/owm/OwmNetAccessMonitor;

    invoke-virtual {v0, p2}, Landroid/net/wifi/owm/OwmNetAccessMonitor;->addNetScoreRecord(I)V

    .line 722
    :cond_1
    return-void
.end method

.method public whitelist addNetValidRecord(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "ifname"    # Ljava/lang/String;
    .param p2, "isValid"    # Z

    .line 725
    if-nez p1, :cond_0

    .line 726
    return-void

    .line 729
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v0}, Landroid/net/wifi/owm/OwmBaseUtils;->getPrimaryClientIfname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 730
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiNetAccessMonitor:Landroid/net/wifi/owm/OwmNetAccessMonitor;

    invoke-virtual {v0, p2}, Landroid/net/wifi/owm/OwmNetAccessMonitor;->addNetValidRecord(Z)V

    .line 732
    :cond_1
    return-void
.end method

.method public whitelist addNudFailRecord(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "ifname"    # Ljava/lang/String;
    .param p2, "nudMsg"    # Ljava/lang/String;

    .line 685
    if-nez p1, :cond_0

    .line 686
    return-void

    .line 689
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v0}, Landroid/net/wifi/owm/OwmBaseUtils;->getPrimaryClientIfname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 690
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiGatewayMonitor:Landroid/net/wifi/owm/OwmGatewayMonitor;

    invoke-virtual {v0, p2}, Landroid/net/wifi/owm/OwmGatewayMonitor;->addNudFailRecord(Ljava/lang/String;)V

    .line 692
    :cond_1
    return-void
.end method

.method public whitelist addOplusFeatureActivedRecord(Ljava/lang/String;II)V
    .locals 1
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "feature"    # I
    .param p3, "actState"    # I

    .line 768
    if-nez p1, :cond_0

    .line 769
    return-void

    .line 772
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v0}, Landroid/net/wifi/owm/OwmBaseUtils;->getPrimaryClientIfname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 773
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiFeatActMonitor:Landroid/net/wifi/owm/OwmFeatureActiveMonitor;

    invoke-virtual {v0, p2, p3}, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->addOplusFeatureActivedRecord(II)V

    .line 775
    :cond_1
    return-void
.end method

.method public whitelist addOplusFeatureActivedRecord(Ljava/lang/String;IZ)V
    .locals 1
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "feature"    # I
    .param p3, "isActived"    # Z

    .line 758
    if-nez p1, :cond_0

    .line 759
    return-void

    .line 762
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v0}, Landroid/net/wifi/owm/OwmBaseUtils;->getPrimaryClientIfname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 763
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiFeatActMonitor:Landroid/net/wifi/owm/OwmFeatureActiveMonitor;

    invoke-virtual {v0, p2, p3}, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->addOplusFeatureActivedRecord(IZ)V

    .line 765
    :cond_1
    return-void
.end method

.method public whitelist addOplusWifiSelfCureOngoingRecord(Z)V
    .locals 2
    .param p1, "isOngoing"    # Z

    .line 778
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addOplusWifiSelfCureOngoingRecord, isOngoing = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->logD(Ljava/lang/String;)V

    .line 779
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v0, p1}, Landroid/net/wifi/owm/OwmBaseUtils;->setWifiSelfCureOngoingState(Z)V

    .line 780
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiFeatActMonitor:Landroid/net/wifi/owm/OwmFeatureActiveMonitor;

    const/16 v1, 0xe

    invoke-virtual {v0, v1, p1}, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->addOplusFeatureActivedRecord(IZ)V

    .line 781
    return-void
.end method

.method public whitelist addPrimaryClientIfname(Ljava/lang/String;)V
    .locals 1
    .param p1, "ifname"    # Ljava/lang/String;

    .line 545
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v0, p1}, Landroid/net/wifi/owm/OwmBaseUtils;->setPrimaryClientIfname(Ljava/lang/String;)V

    .line 546
    return-void
.end method

.method public whitelist addRoamingRecord(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1
    .param p1, "ifname"    # Ljava/lang/String;
    .param p2, "isSucced"    # Z
    .param p3, "lastBssid"    # Ljava/lang/String;

    .line 695
    if-eqz p1, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    .line 699
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v0}, Landroid/net/wifi/owm/OwmBaseUtils;->getPrimaryClientIfname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 700
    if-eqz p2, :cond_1

    .line 701
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiL2Monitor:Landroid/net/wifi/owm/OwmL2Monitor;

    invoke-virtual {v0, p2, p3}, Landroid/net/wifi/owm/OwmL2Monitor;->addRoamingRecord(ZLjava/lang/String;)V

    .line 704
    :cond_1
    return-void

    .line 696
    :cond_2
    :goto_0
    return-void
.end method

.method public whitelist addRouterInfoRecord(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 1
    .param p1, "ifname"    # Ljava/lang/String;
    .param p2, "connApName"    # Ljava/lang/String;
    .param p3, "isConnSoftAp"    # Z
    .param p4, "isConn1x1IotAp"    # Z

    .line 735
    if-nez p1, :cond_0

    .line 736
    return-void

    .line 739
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v0}, Landroid/net/wifi/owm/OwmBaseUtils;->getPrimaryClientIfname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 740
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiRouterMonitor:Landroid/net/wifi/owm/OwmRouterMonitor;

    invoke-virtual {v0, p2}, Landroid/net/wifi/owm/OwmRouterMonitor;->addApNameRecord(Ljava/lang/String;)V

    .line 741
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiRouterMonitor:Landroid/net/wifi/owm/OwmRouterMonitor;

    invoke-virtual {v0, p3}, Landroid/net/wifi/owm/OwmRouterMonitor;->addApMetredFlagRecord(Z)V

    .line 742
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiRouterMonitor:Landroid/net/wifi/owm/OwmRouterMonitor;

    invoke-virtual {v0, p4}, Landroid/net/wifi/owm/OwmRouterMonitor;->addAp1x1IotFlagRecord(Z)V

    .line 744
    :cond_1
    return-void
.end method

.method public whitelist addTcpRttRecord(I)V
    .locals 1
    .param p1, "rttMs"    # I

    .line 583
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiTcpMonitor:Landroid/net/wifi/owm/OwmTcpMonitor;

    invoke-virtual {v0, p1}, Landroid/net/wifi/owm/OwmTcpMonitor;->addTcpRttRecord(I)V

    .line 584
    return-void
.end method

.method public whitelist addTcpRttRecord([J)V
    .locals 1
    .param p1, "rttData"    # [J

    .line 575
    if-nez p1, :cond_0

    .line 576
    return-void

    .line 579
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiTcpMonitor:Landroid/net/wifi/owm/OwmTcpMonitor;

    invoke-virtual {v0, p1}, Landroid/net/wifi/owm/OwmTcpMonitor;->addTcpRttRecord([J)V

    .line 580
    return-void
.end method

.method public whitelist addTcpStatRecord(IJJJJ)V
    .locals 11
    .param p1, "netId"    # I
    .param p2, "newSendPkg"    # J
    .param p4, "newRecvPkg"    # J
    .param p6, "newRetryPkg"    # J
    .param p8, "newLossPkg"    # J

    .line 571
    move-object v0, p0

    iget-object v1, v0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiTcpMonitor:Landroid/net/wifi/owm/OwmTcpMonitor;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    invoke-virtual/range {v1 .. v10}, Landroid/net/wifi/owm/OwmTcpMonitor;->addTcpStatRecord(IJJJJ)V

    .line 572
    return-void
.end method

.method public whitelist addTcpSyncRecord(IIIILjava/lang/String;)V
    .locals 7
    .param p1, "netId"    # I
    .param p2, "uid"    # I
    .param p3, "errCode"    # I
    .param p4, "latency"    # I
    .param p5, "ipAddr"    # Ljava/lang/String;

    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addTcpSyncRecord, i+P = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->logD(Ljava/lang/String;)V

    .line 563
    if-nez p5, :cond_0

    .line 564
    return-void

    .line 567
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiTcpMonitor:Landroid/net/wifi/owm/OwmTcpMonitor;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/net/wifi/owm/OwmTcpMonitor;->addTcpSyncRecord(IIIILjava/lang/String;)V

    .line 568
    return-void
.end method

.method public whitelist addWifiAssistantSwitchRecord(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "isSwitched"    # Z

    .line 833
    if-nez p1, :cond_0

    .line 834
    return-void

    .line 837
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v0}, Landroid/net/wifi/owm/OwmBaseUtils;->getPrimaryClientIfname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 838
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiFeatActMonitor:Landroid/net/wifi/owm/OwmFeatureActiveMonitor;

    invoke-virtual {v0, p2}, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->addWifiAssistantSwitchRecord(Z)V

    .line 840
    :cond_1
    return-void
.end method

.method public whitelist addWifiScanEventRecord()V
    .locals 1

    .line 784
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiL2Monitor:Landroid/net/wifi/owm/OwmL2Monitor;

    invoke-virtual {v0}, Landroid/net/wifi/owm/OwmL2Monitor;->addWifiScanEventRecord()V

    .line 785
    return-void
.end method

.method public whitelist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 853
    if-eqz p1, :cond_8

    if-nez p2, :cond_0

    goto/16 :goto_2

    .line 861
    :cond_0
    const-string v0, "OplusOwmMonitorCenter"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p3, :cond_5

    array-length v4, p3

    if-lt v4, v2, :cond_5

    aget-object v4, p3, v1

    const-string v5, "mm"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 863
    :try_start_0
    aget-object v1, p3, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 865
    .local v1, "debugPara":I
    if-ne v1, v3, :cond_1

    .line 866
    iget-object v3, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiMediaMonitor:Landroid/net/wifi/owm/OwmMultiMediaMonitor;

    const/16 v4, 0x65

    iget-object v5, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v5}, Landroid/net/wifi/owm/OwmBaseUtils;->getTopAppPkgName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->notifyStutterEndToWifi(ILjava/lang/String;)V

    .line 868
    :cond_1
    if-ne v1, v2, :cond_2

    .line 869
    iget-object v2, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiMediaMonitor:Landroid/net/wifi/owm/OwmMultiMediaMonitor;

    const/16 v3, 0x66

    iget-object v4, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v4}, Landroid/net/wifi/owm/OwmBaseUtils;->getTopAppPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->notifyStutterEndToWifi(ILjava/lang/String;)V

    .line 872
    :cond_2
    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 873
    const-string v2, "EventID#100#VideoScore#60"

    iget-object v3, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v3}, Landroid/net/wifi/owm/OwmBaseUtils;->getTopAppPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->notifyVideoStutterToWifi(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    :cond_3
    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 877
    iget-object v2, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiMediaMonitor:Landroid/net/wifi/owm/OwmMultiMediaMonitor;

    invoke-virtual {v2}, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->saveRecordToDatabase()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 882
    .end local v1    # "debugPara":I
    :cond_4
    goto :goto_0

    .line 880
    :catch_0
    move-exception v1

    .line 881
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "set dumpsys wifi OwmStat mm failed!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 888
    :cond_5
    if-eqz p3, :cond_7

    array-length v4, p3

    if-lt v4, v2, :cond_7

    aget-object v2, p3, v1

    const-string v4, "debug"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 890
    :try_start_1
    aget-object v2, p3, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 891
    .local v2, "enalbeType":I
    if-ne v2, v3, :cond_6

    move v1, v3

    .line 892
    .local v1, "debugEnable":Z
    :cond_6
    invoke-virtual {p0, v1}, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->enableVerboseLogging(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 895
    .end local v1    # "debugEnable":Z
    .end local v2    # "enalbeType":I
    goto :goto_1

    .line 893
    :catch_1
    move-exception v1

    .line 894
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "set dumpsys wifi OwmStat debug failed!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 900
    :cond_7
    const-string v0, "=========OwmStat=========, CurApInfo:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 901
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "apName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiRouterMonitor:Landroid/net/wifi/owm/OwmRouterMonitor;

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmRouterMonitor;->getApName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 902
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "apFreq: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmBaseUtils;->getFreq()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 903
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 905
    const-string v1, "=========OwmStat=========, CurStatRecord:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 906
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiNetAccessMonitor.getRecordToDatabase(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiNetAccessMonitor:Landroid/net/wifi/owm/OwmNetAccessMonitor;

    invoke-virtual {v2}, Landroid/net/wifi/owm/OwmNetAccessMonitor;->getRecordToDatabase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 907
    const-string v1, "---------------------------------------------------------------------------------"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 908
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiGameMonitor.getRecordToDatabase(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiGameMonitor:Landroid/net/wifi/owm/OwmGameMonitor;

    invoke-virtual {v3}, Landroid/net/wifi/owm/OwmGameMonitor;->getRecordToDatabase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 909
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 910
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiDnsMonitor.getRecordToDatabase(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiDnsMonitor:Landroid/net/wifi/owm/OwmDnsMonitor;

    invoke-virtual {v3}, Landroid/net/wifi/owm/OwmDnsMonitor;->getRecordToDatabase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 911
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 912
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiDhcpMonitor.getRecordToDatabase(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiDhcpMonitor:Landroid/net/wifi/owm/OwmDhcpMonitor;

    invoke-virtual {v3}, Landroid/net/wifi/owm/OwmDhcpMonitor;->getRecordToDatabase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 913
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 914
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiIcmpMonitor.getRecordToDatabase(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiIcmpMonitor:Landroid/net/wifi/owm/OwmIcmpMonitor;

    invoke-virtual {v3}, Landroid/net/wifi/owm/OwmIcmpMonitor;->getRecordToDatabase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 915
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 916
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiTcpMonitor.getRecordToDatabase(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiTcpMonitor:Landroid/net/wifi/owm/OwmTcpMonitor;

    invoke-virtual {v3}, Landroid/net/wifi/owm/OwmTcpMonitor;->getRecordToDatabase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 917
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 918
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiHttpMonitor.getRecordToDatabase(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiHttpMonitor:Landroid/net/wifi/owm/OwmHttpMonitor;

    invoke-virtual {v3}, Landroid/net/wifi/owm/OwmHttpMonitor;->getRecordToDatabase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 919
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 920
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiGatewayMonitor.getRecordToDatabase() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiGatewayMonitor:Landroid/net/wifi/owm/OwmGatewayMonitor;

    invoke-virtual {v3}, Landroid/net/wifi/owm/OwmGatewayMonitor;->getRecordToDatabase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 921
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 922
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiRouterMonitor.getRecordToDatabase(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiRouterMonitor:Landroid/net/wifi/owm/OwmRouterMonitor;

    invoke-virtual {v3}, Landroid/net/wifi/owm/OwmRouterMonitor;->getRecordToDatabase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 923
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 924
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiL2Monitor.getRecordToDatabase(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiL2Monitor:Landroid/net/wifi/owm/OwmL2Monitor;

    invoke-virtual {v3}, Landroid/net/wifi/owm/OwmL2Monitor;->getRecordToDatabase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 925
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 926
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mWifiMediaMonitor.getRecordToDatabase(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiMediaMonitor:Landroid/net/wifi/owm/OwmMultiMediaMonitor;

    invoke-virtual {v3}, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->getRecordToDatabase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 927
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 929
    const-string v2, "=========OwmStat=========, CurEventRecord:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 930
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiNetAccessMonitor.getCurNetInvalidEventRecord(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiNetAccessMonitor:Landroid/net/wifi/owm/OwmNetAccessMonitor;

    invoke-virtual {v3}, Landroid/net/wifi/owm/OwmNetAccessMonitor;->getCurNetInvalidEventRecord()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 931
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 932
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiNetAccessMonitor.getCurNetSlowEventRecord(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiNetAccessMonitor:Landroid/net/wifi/owm/OwmNetAccessMonitor;

    invoke-virtual {v3}, Landroid/net/wifi/owm/OwmNetAccessMonitor;->getCurNetSlowEventRecord()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 933
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 934
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiGameMonitor.getCurGameRttBadEventRecord(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiGameMonitor:Landroid/net/wifi/owm/OwmGameMonitor;

    invoke-virtual {v3}, Landroid/net/wifi/owm/OwmGameMonitor;->getCurGameRttBadEventRecord()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 935
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 936
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 938
    const-string v2, "=========OwmStat=========, CurNetHealthRecord:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 939
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiL2Monitor.getCurRecordForNetHealth(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiL2Monitor:Landroid/net/wifi/owm/OwmL2Monitor;

    invoke-virtual {v3}, Landroid/net/wifi/owm/OwmL2Monitor;->getCurRecordForNetHealth()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 940
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 941
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiDhcpMonitor.getCurRecordForNetHealth(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiDhcpMonitor:Landroid/net/wifi/owm/OwmDhcpMonitor;

    invoke-virtual {v3}, Landroid/net/wifi/owm/OwmDhcpMonitor;->getCurRecordForNetHealth()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 942
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 943
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiDnsMonitor.getCurRecordForNetHealth(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiDnsMonitor:Landroid/net/wifi/owm/OwmDnsMonitor;

    invoke-virtual {v3}, Landroid/net/wifi/owm/OwmDnsMonitor;->getCurRecordForNetHealth()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 944
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 945
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiGatewayMonitor.getCurRecordForNetHealth(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiGatewayMonitor:Landroid/net/wifi/owm/OwmGatewayMonitor;

    invoke-virtual {v3}, Landroid/net/wifi/owm/OwmGatewayMonitor;->getCurRecordForNetHealth()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 946
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 947
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiHttpMonitor.getCurRecordForNetHealth() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiHttpMonitor:Landroid/net/wifi/owm/OwmHttpMonitor;

    invoke-virtual {v3}, Landroid/net/wifi/owm/OwmHttpMonitor;->getCurRecordForNetHealth()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 948
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 949
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiTcpMonitor.getCurRecordForNetHealth(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiTcpMonitor:Landroid/net/wifi/owm/OwmTcpMonitor;

    invoke-virtual {v3}, Landroid/net/wifi/owm/OwmTcpMonitor;->getCurRecordForNetHealth()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 950
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 951
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 953
    const-string v2, "=========OwmStat=========, LastNetHealthRecord:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 954
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiNetHealthMonitor.getLastL2HealthMonitorRecord(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiNetHealthMonitor:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-virtual {v3}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->getLastL2HealthMonitorRecord()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 955
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 956
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiNetHealthMonitor.getLastDhcpHealthMonitorRecord(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiNetHealthMonitor:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-virtual {v3}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->getLastDhcpHealthMonitorRecord()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 957
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 958
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiNetHealthMonitor.getLastDnsHealthMonitorRecord(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiNetHealthMonitor:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-virtual {v3}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->getLastDnsHealthMonitorRecord()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 959
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 960
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiNetHealthMonitor.getLastGatewayHealthMonitorRecord(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiNetHealthMonitor:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-virtual {v3}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->getLastGatewayHealthMonitorRecord()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 961
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 962
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiNetHealthMonitor.getLastHttpHealthMonitorRecord(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiNetHealthMonitor:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-virtual {v3}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->getLastHttpHealthMonitorRecord()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 963
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 964
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiNetHealthMonitor.getLastTcpHealthMonitorRecord(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiNetHealthMonitor:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-virtual {v3}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->getLastTcpHealthMonitorRecord()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 965
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 966
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiNetHealthMonitor.getLastFeatActHealthMonitorRecord(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiNetHealthMonitor:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-virtual {v3}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->getLastFeatActHealthMonitorRecord()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 967
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 968
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiNetHealthMonitor.getLastRouterHealthMonitorRecord(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiNetHealthMonitor:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-virtual {v3}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->getLastRouterHealthMonitorRecord()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 969
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 970
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiNetHealthMonitor.getLastCoexistHealthMonitorRecord(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiNetHealthMonitor:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-virtual {v3}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->getLastCoexistHealthMonitorRecord()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 971
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 972
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 974
    const-string v1, "=========OwmNotifyGame=========, getWifiNetStateInfo:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 975
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get current Wifi Net State Info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->getWifiNetStateInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 976
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 977
    return-void

    .line 854
    :cond_8
    :goto_2
    return-void
.end method

.method public whitelist enableVerboseLogging(Z)V
    .locals 1
    .param p1, "verbose"    # Z

    .line 422
    iput-boolean p1, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mVerboseLoggingEnabled:Z

    .line 424
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiNetAccessMonitor:Landroid/net/wifi/owm/OwmNetAccessMonitor;

    invoke-virtual {v0, p1}, Landroid/net/wifi/owm/OwmNetAccessMonitor;->enableVerboseLogging(Z)V

    .line 425
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiGameMonitor:Landroid/net/wifi/owm/OwmGameMonitor;

    invoke-virtual {v0, p1}, Landroid/net/wifi/owm/OwmGameMonitor;->enableVerboseLogging(Z)V

    .line 426
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiDnsMonitor:Landroid/net/wifi/owm/OwmDnsMonitor;

    invoke-virtual {v0, p1}, Landroid/net/wifi/owm/OwmDnsMonitor;->enableVerboseLogging(Z)V

    .line 427
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiDhcpMonitor:Landroid/net/wifi/owm/OwmDhcpMonitor;

    invoke-virtual {v0, p1}, Landroid/net/wifi/owm/OwmDhcpMonitor;->enableVerboseLogging(Z)V

    .line 428
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiIcmpMonitor:Landroid/net/wifi/owm/OwmIcmpMonitor;

    invoke-virtual {v0, p1}, Landroid/net/wifi/owm/OwmIcmpMonitor;->enableVerboseLogging(Z)V

    .line 429
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiTcpMonitor:Landroid/net/wifi/owm/OwmTcpMonitor;

    invoke-virtual {v0, p1}, Landroid/net/wifi/owm/OwmTcpMonitor;->enableVerboseLogging(Z)V

    .line 430
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiHttpMonitor:Landroid/net/wifi/owm/OwmHttpMonitor;

    invoke-virtual {v0, p1}, Landroid/net/wifi/owm/OwmHttpMonitor;->enableVerboseLogging(Z)V

    .line 431
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiGatewayMonitor:Landroid/net/wifi/owm/OwmGatewayMonitor;

    invoke-virtual {v0, p1}, Landroid/net/wifi/owm/OwmGatewayMonitor;->enableVerboseLogging(Z)V

    .line 432
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiRouterMonitor:Landroid/net/wifi/owm/OwmRouterMonitor;

    invoke-virtual {v0, p1}, Landroid/net/wifi/owm/OwmRouterMonitor;->enableVerboseLogging(Z)V

    .line 433
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiL2Monitor:Landroid/net/wifi/owm/OwmL2Monitor;

    invoke-virtual {v0, p1}, Landroid/net/wifi/owm/OwmL2Monitor;->enableVerboseLogging(Z)V

    .line 434
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiCoexistMonitor:Landroid/net/wifi/owm/OwmCoexistMonitor;

    invoke-virtual {v0, p1}, Landroid/net/wifi/owm/OwmCoexistMonitor;->enableVerboseLogging(Z)V

    .line 435
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiFeatActMonitor:Landroid/net/wifi/owm/OwmFeatureActiveMonitor;

    invoke-virtual {v0, p1}, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->enableVerboseLogging(Z)V

    .line 436
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiNetHealthMonitor:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-virtual {v0, p1}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->enableVerboseLogging(Z)V

    .line 437
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiHtMonitor:Landroid/net/wifi/owm/OwmHTMonitor;

    invoke-virtual {v0, p1}, Landroid/net/wifi/owm/OwmHTMonitor;->enableVerboseLogging(Z)V

    .line 438
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiMediaMonitor:Landroid/net/wifi/owm/OwmMultiMediaMonitor;

    invoke-virtual {v0, p1}, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->enableVerboseLogging(Z)V

    .line 439
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OplusOwmMonitorKit;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->enableVerboseLogging(Z)V

    .line 440
    return-void
.end method

.method public whitelist getDnsFailCnt(Ljava/lang/String;)I
    .locals 2
    .param p1, "ifname"    # Ljava/lang/String;

    .line 497
    const/4 v0, -0x1

    if-nez p1, :cond_0

    .line 498
    return v0

    .line 501
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmBaseUtils;->getPrimaryClientIfname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 502
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiDnsMonitor:Landroid/net/wifi/owm/OwmDnsMonitor;

    invoke-virtual {v0}, Landroid/net/wifi/owm/OwmDnsMonitor;->getDnsFailCnt()I

    move-result v0

    return v0

    .line 505
    :cond_1
    return v0
.end method

.method public whitelist getDnsRefuseCnt(Ljava/lang/String;)I
    .locals 2
    .param p1, "ifname"    # Ljava/lang/String;

    .line 509
    const/4 v0, -0x1

    if-nez p1, :cond_0

    .line 510
    return v0

    .line 513
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmBaseUtils;->getPrimaryClientIfname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 514
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiDnsMonitor:Landroid/net/wifi/owm/OwmDnsMonitor;

    invoke-virtual {v0}, Landroid/net/wifi/owm/OwmDnsMonitor;->getDnsRefuseCnt()I

    move-result v0

    return v0

    .line 517
    :cond_1
    return v0
.end method

.method public whitelist getDupDhcpOfferRecved(Ljava/lang/String;)Z
    .locals 2
    .param p1, "ifname"    # Ljava/lang/String;

    .line 521
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 522
    return v0

    .line 525
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmBaseUtils;->getPrimaryClientIfname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 526
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiDhcpMonitor:Landroid/net/wifi/owm/OwmDhcpMonitor;

    invoke-virtual {v0}, Landroid/net/wifi/owm/OwmDhcpMonitor;->getDupDhcpOfferRecved()Z

    move-result v0

    return v0

    .line 529
    :cond_1
    return v0
.end method

.method public whitelist getGatewayConflictState(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "ifname"    # Ljava/lang/String;
    .param p2, "forceNewDetect"    # Z

    .line 533
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 534
    return v0

    .line 537
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmBaseUtils;->getPrimaryClientIfname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 538
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiGatewayMonitor:Landroid/net/wifi/owm/OwmGatewayMonitor;

    invoke-virtual {v0, p2}, Landroid/net/wifi/owm/OwmGatewayMonitor;->getGatewayConflictState(Z)Z

    move-result v0

    return v0

    .line 541
    :cond_1
    return v0
.end method

.method public whitelist getOwmNetMonitorEnabled()Z
    .locals 1

    .line 418
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist getPrimaryClientIfname()Ljava/lang/String;
    .locals 1

    .line 549
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v0}, Landroid/net/wifi/owm/OwmBaseUtils;->getPrimaryClientIfname()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTcpLossPackets(Ljava/lang/String;)J
    .locals 3
    .param p1, "ifname"    # Ljava/lang/String;

    .line 485
    const-wide/16 v0, -0x1

    if-nez p1, :cond_0

    .line 486
    return-wide v0

    .line 489
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v2}, Landroid/net/wifi/owm/OwmBaseUtils;->getPrimaryClientIfname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 490
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiTcpMonitor:Landroid/net/wifi/owm/OwmTcpMonitor;

    invoke-virtual {v0}, Landroid/net/wifi/owm/OwmTcpMonitor;->getTcpLossPackets()J

    move-result-wide v0

    return-wide v0

    .line 493
    :cond_1
    return-wide v0
.end method

.method public whitelist getTcpRetryPackets(Ljava/lang/String;)J
    .locals 3
    .param p1, "ifname"    # Ljava/lang/String;

    .line 473
    const-wide/16 v0, -0x1

    if-nez p1, :cond_0

    .line 474
    return-wide v0

    .line 477
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v2}, Landroid/net/wifi/owm/OwmBaseUtils;->getPrimaryClientIfname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 478
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiTcpMonitor:Landroid/net/wifi/owm/OwmTcpMonitor;

    invoke-virtual {v0}, Landroid/net/wifi/owm/OwmTcpMonitor;->getTcpRetryPackets()J

    move-result-wide v0

    return-wide v0

    .line 481
    :cond_1
    return-wide v0
.end method

.method public whitelist getTcpRxPackets(Ljava/lang/String;)J
    .locals 3
    .param p1, "ifname"    # Ljava/lang/String;

    .line 461
    const-wide/16 v0, -0x1

    if-nez p1, :cond_0

    .line 462
    return-wide v0

    .line 465
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v2}, Landroid/net/wifi/owm/OwmBaseUtils;->getPrimaryClientIfname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 466
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiTcpMonitor:Landroid/net/wifi/owm/OwmTcpMonitor;

    invoke-virtual {v0}, Landroid/net/wifi/owm/OwmTcpMonitor;->getTcpRxPackets()J

    move-result-wide v0

    return-wide v0

    .line 469
    :cond_1
    return-wide v0
.end method

.method public whitelist getTcpTxPackets(Ljava/lang/String;)J
    .locals 3
    .param p1, "ifname"    # Ljava/lang/String;

    .line 449
    const-wide/16 v0, -0x1

    if-nez p1, :cond_0

    .line 450
    return-wide v0

    .line 453
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v2}, Landroid/net/wifi/owm/OwmBaseUtils;->getPrimaryClientIfname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 454
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiTcpMonitor:Landroid/net/wifi/owm/OwmTcpMonitor;

    invoke-virtual {v0}, Landroid/net/wifi/owm/OwmTcpMonitor;->getTcpTxPackets()J

    move-result-wide v0

    return-wide v0

    .line 457
    :cond_1
    return-wide v0
.end method

.method public whitelist getWifiGameLatencyInfo()Ljava/util/Map;
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

    .line 829
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiGameMonitor:Landroid/net/wifi/owm/OwmGameMonitor;

    invoke-virtual {v0}, Landroid/net/wifi/owm/OwmGameMonitor;->getCurRecordForNetHealth()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getWifiNetStateInfo()Ljava/lang/String;
    .locals 4

    .line 788
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 790
    .local v0, "currentWifiNetInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiRouterMonitor:Landroid/net/wifi/owm/OwmRouterMonitor;

    invoke-virtual {v3}, Landroid/net/wifi/owm/OwmRouterMonitor;->getApName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "apName"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v2}, Landroid/net/wifi/owm/OwmBaseUtils;->getFreq()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "apFreq"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 793
    iget-object v1, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiGatewayMonitor:Landroid/net/wifi/owm/OwmGatewayMonitor;

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmGatewayMonitor;->getCurRecordForNetHealth()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WifiGatewayMonitor"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    iget-object v1, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiL2Monitor:Landroid/net/wifi/owm/OwmL2Monitor;

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmL2Monitor;->getCurRecordForNetHealth()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WifiL2Monitor"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    iget-object v1, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiCoexistMonitor:Landroid/net/wifi/owm/OwmCoexistMonitor;

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmCoexistMonitor;->getCurRecordForNetHealth()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WifiCoexistMonitor"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist notifyVideoStutterToWifi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 802
    const-string v0, "OplusOwmMonitorCenter"

    :try_start_0
    const-string v1, "#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 803
    .local v1, "msgFromMM":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    .line 804
    const-string v2, "parse failed! "

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    return-void

    .line 807
    :cond_0
    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 808
    .local v2, "code":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "receive stutter code in OWM Center:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->logD(Ljava/lang/String;)V

    .line 809
    packed-switch v2, :pswitch_data_0

    .line 825
    .end local v1    # "msgFromMM":[Ljava/lang/String;
    .end local v2    # "code":I
    goto :goto_0

    .line 817
    .restart local v1    # "msgFromMM":[Ljava/lang/String;
    .restart local v2    # "code":I
    :pswitch_0
    iget-object v3, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiMediaMonitor:Landroid/net/wifi/owm/OwmMultiMediaMonitor;

    invoke-virtual {v3, v2, p2}, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->notifyStutterEndToWifi(ILjava/lang/String;)V

    .line 818
    return-void

    .line 814
    :pswitch_1
    iget-object v3, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiMediaMonitor:Landroid/net/wifi/owm/OwmMultiMediaMonitor;

    invoke-virtual {v3, v2, p2}, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->notifyStutterEndToWifi(ILjava/lang/String;)V

    .line 815
    return-void

    .line 811
    :pswitch_2
    iget-object v3, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->mWifiMediaMonitor:Landroid/net/wifi/owm/OwmMultiMediaMonitor;

    invoke-virtual {v3, v2, p2}, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->notifyVideoStutterToWifi(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 812
    return-void

    .line 826
    .end local v1    # "msgFromMM":[Ljava/lang/String;
    .end local v2    # "code":I
    :goto_0
    return-void

    .line 822
    :catch_0
    move-exception v1

    .line 823
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parse failed!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 824
    return-void

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
