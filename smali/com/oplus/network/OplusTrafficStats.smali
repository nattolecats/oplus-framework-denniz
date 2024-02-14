.class public Lcom/oplus/network/OplusTrafficStats;
.super Ljava/lang/Object;
.source "OplusTrafficStats.java"


# static fields
.field private static final blacklist OPLUS_NETWORK_STATS_SERVICE:Ljava/lang/String; = "oplusnetworkstats"

.field private static final blacklist TYPE_TRANS_RX_BYTES:I = 0x6

.field private static final blacklist TYPE_TRANS_TX_BYTES:I = 0x7

.field private static blacklist sOplusStatsService:Lcom/oplus/network/IOplusNetworkStatsService;

.field private static blacklist sStatsService:Landroid/net/INetworkStatsService;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist fetchAppFreezeStats()Lcom/oplus/network/stats/AppFreezeStatsTotal;
    .locals 2

    .line 79
    :try_start_0
    invoke-static {}, Lcom/oplus/network/OplusTrafficStats;->getOplusStatsService()Lcom/oplus/network/IOplusNetworkStatsService;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/network/IOplusNetworkStatsService;->fetchAppFreezeStats()Lcom/oplus/network/stats/AppFreezeStatsTotal;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static blacklist fetchAppFreezeSyns()Lcom/oplus/network/stats/AppFreezeSyncTotal;
    .locals 2

    .line 71
    :try_start_0
    invoke-static {}, Lcom/oplus/network/OplusTrafficStats;->getOplusStatsService()Lcom/oplus/network/IOplusNetworkStatsService;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/network/IOplusNetworkStatsService;->fetchAppFreezeSyns()Lcom/oplus/network/stats/AppFreezeSyncTotal;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static blacklist getAppFreezeConfig()Lcom/oplus/network/stats/AppFreezeConfig;
    .locals 2

    .line 87
    :try_start_0
    invoke-static {}, Lcom/oplus/network/OplusTrafficStats;->getOplusStatsService()Lcom/oplus/network/IOplusNetworkStatsService;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/network/IOplusNetworkStatsService;->getAppFreezeConfig()Lcom/oplus/network/stats/AppFreezeConfig;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static blacklist getIfaceStats(Ljava/lang/String;)Lcom/oplus/network/stats/StatsValue;
    .locals 2
    .param p0, "ifname"    # Ljava/lang/String;

    .line 171
    :try_start_0
    invoke-static {}, Lcom/oplus/network/OplusTrafficStats;->getOplusStatsService()Lcom/oplus/network/IOplusNetworkStatsService;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/oplus/network/IOplusNetworkStatsService;->getIfaceStats(Ljava/lang/String;)Lcom/oplus/network/stats/StatsValue;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static blacklist getIfaceUidStatsTotal()Lcom/oplus/network/stats/IfaceUidStatsTotal;
    .locals 2

    .line 163
    :try_start_0
    invoke-static {}, Lcom/oplus/network/OplusTrafficStats;->getOplusStatsService()Lcom/oplus/network/IOplusNetworkStatsService;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/network/IOplusNetworkStatsService;->getIfnameUidStatsTotal()Lcom/oplus/network/stats/IfaceUidStatsTotal;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private static declared-synchronized blacklist getOplusStatsService()Lcom/oplus/network/IOplusNetworkStatsService;
    .locals 2

    const-class v0, Lcom/oplus/network/OplusTrafficStats;

    monitor-enter v0

    .line 30
    :try_start_0
    sget-object v1, Lcom/oplus/network/OplusTrafficStats;->sOplusStatsService:Lcom/oplus/network/IOplusNetworkStatsService;

    if-nez v1, :cond_0

    .line 31
    const-string v1, "oplusnetworkstats"

    .line 32
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 31
    invoke-static {v1}, Lcom/oplus/network/IOplusNetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/network/IOplusNetworkStatsService;

    move-result-object v1

    sput-object v1, Lcom/oplus/network/OplusTrafficStats;->sOplusStatsService:Lcom/oplus/network/IOplusNetworkStatsService;

    .line 34
    :cond_0
    sget-object v1, Lcom/oplus/network/OplusTrafficStats;->sOplusStatsService:Lcom/oplus/network/IOplusNetworkStatsService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 29
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized blacklist getOrigStatsService()Landroid/net/INetworkStatsService;
    .locals 2

    const-class v0, Lcom/oplus/network/OplusTrafficStats;

    monitor-enter v0

    .line 22
    :try_start_0
    sget-object v1, Lcom/oplus/network/OplusTrafficStats;->sStatsService:Landroid/net/INetworkStatsService;

    if-nez v1, :cond_0

    .line 23
    const-string v1, "netstats"

    .line 24
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 23
    invoke-static {v1}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v1

    sput-object v1, Lcom/oplus/network/OplusTrafficStats;->sStatsService:Landroid/net/INetworkStatsService;

    .line 26
    :cond_0
    sget-object v1, Lcom/oplus/network/OplusTrafficStats;->sStatsService:Landroid/net/INetworkStatsService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 21
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static blacklist getSocketIsLocal(J)I
    .locals 2
    .param p0, "socketCookie"    # J

    .line 146
    :try_start_0
    invoke-static {}, Lcom/oplus/network/OplusTrafficStats;->getOplusStatsService()Lcom/oplus/network/IOplusNetworkStatsService;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/oplus/network/IOplusNetworkStatsService;->getSocketIsLocal(J)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static blacklist getSocketSpeedsTotal(II[J)Lcom/oplus/network/stats/SpeedsValueTotal;
    .locals 2
    .param p0, "clearIntervals"    # I
    .param p1, "uploadSpeed"    # I
    .param p2, "limitCookies"    # [J

    .line 106
    :try_start_0
    invoke-static {}, Lcom/oplus/network/OplusTrafficStats;->getOplusStatsService()Lcom/oplus/network/IOplusNetworkStatsService;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/oplus/network/IOplusNetworkStatsService;->getSocketSpeedsTotal(II[J)Lcom/oplus/network/stats/SpeedsValueTotal;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static blacklist getTransRxBytes(Ljava/lang/String;)J
    .locals 2
    .param p0, "iface"    # Ljava/lang/String;

    .line 39
    :try_start_0
    invoke-static {}, Lcom/oplus/network/OplusTrafficStats;->getOrigStatsService()Landroid/net/INetworkStatsService;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, p0, v1}, Landroid/net/INetworkStatsService;->getIfaceStats(Ljava/lang/String;I)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static blacklist getTransTxBytes(Ljava/lang/String;)J
    .locals 2
    .param p0, "iface"    # Ljava/lang/String;

    .line 47
    :try_start_0
    invoke-static {}, Lcom/oplus/network/OplusTrafficStats;->getOrigStatsService()Landroid/net/INetworkStatsService;

    move-result-object v0

    const/4 v1, 0x7

    invoke-interface {v0, p0, v1}, Landroid/net/INetworkStatsService;->getIfaceStats(Ljava/lang/String;I)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static blacklist getUidPurStats(I)Lcom/oplus/network/stats/StatsValue;
    .locals 2
    .param p0, "uid"    # I

    .line 63
    :try_start_0
    invoke-static {}, Lcom/oplus/network/OplusTrafficStats;->getOplusStatsService()Lcom/oplus/network/IOplusNetworkStatsService;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/oplus/network/IOplusNetworkStatsService;->getUidPurStats(I)Lcom/oplus/network/stats/StatsValue;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static blacklist getUidPurStatsTotal()Lcom/oplus/network/stats/StatsValueTotal;
    .locals 2

    .line 55
    :try_start_0
    invoke-static {}, Lcom/oplus/network/OplusTrafficStats;->getOplusStatsService()Lcom/oplus/network/IOplusNetworkStatsService;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/network/IOplusNetworkStatsService;->getUidPurStatsTotal()Lcom/oplus/network/stats/StatsValueTotal;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static blacklist getUidSpeedsTotal(I)Lcom/oplus/network/stats/IfaceSpeedsValueTotal;
    .locals 2
    .param p0, "clearIntervals"    # I

    .line 114
    :try_start_0
    invoke-static {}, Lcom/oplus/network/OplusTrafficStats;->getOplusStatsService()Lcom/oplus/network/IOplusNetworkStatsService;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/oplus/network/IOplusNetworkStatsService;->getUidSpeedsIfindex(I)Lcom/oplus/network/stats/IfaceSpeedsValueTotal;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static blacklist getUidStatsTotal()Lcom/oplus/network/stats/StatsValueTotal;
    .locals 2

    .line 155
    :try_start_0
    invoke-static {}, Lcom/oplus/network/OplusTrafficStats;->getOplusStatsService()Lcom/oplus/network/IOplusNetworkStatsService;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/network/IOplusNetworkStatsService;->getUidStatsTotal()Lcom/oplus/network/stats/StatsValueTotal;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static blacklist setAppFreezeConfig(Lcom/oplus/network/stats/AppFreezeConfig;)Z
    .locals 2
    .param p0, "cfg"    # Lcom/oplus/network/stats/AppFreezeConfig;

    .line 95
    :try_start_0
    invoke-static {}, Lcom/oplus/network/OplusTrafficStats;->getOplusStatsService()Lcom/oplus/network/IOplusNetworkStatsService;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/oplus/network/IOplusNetworkStatsService;->setAppFreezeConfig(Lcom/oplus/network/stats/AppFreezeConfig;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static blacklist setBpfSocketSpeedsConfig(I)I
    .locals 2
    .param p0, "speedsCalcInv"    # I

    .line 138
    :try_start_0
    invoke-static {}, Lcom/oplus/network/OplusTrafficStats;->getOplusStatsService()Lcom/oplus/network/IOplusNetworkStatsService;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/oplus/network/IOplusNetworkStatsService;->setBpfSocketSpeedsConfig(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static blacklist startBpfSocketSpeedsCalc(IZ)I
    .locals 2
    .param p0, "ifindex"    # I
    .param p1, "localBypass"    # Z

    .line 122
    :try_start_0
    invoke-static {}, Lcom/oplus/network/OplusTrafficStats;->getOplusStatsService()Lcom/oplus/network/IOplusNetworkStatsService;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/oplus/network/IOplusNetworkStatsService;->startBpfSocketSpeedsCalc(IZ)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static blacklist stopBpfSocketSpeedsCalc(I)I
    .locals 2
    .param p0, "ifindex"    # I

    .line 130
    :try_start_0
    invoke-static {}, Lcom/oplus/network/OplusTrafficStats;->getOplusStatsService()Lcom/oplus/network/IOplusNetworkStatsService;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/oplus/network/IOplusNetworkStatsService;->stopBpfSocketSpeedsCalc(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
