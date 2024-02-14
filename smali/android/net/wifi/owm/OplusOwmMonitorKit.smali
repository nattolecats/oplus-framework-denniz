.class public Landroid/net/wifi/owm/OplusOwmMonitorKit;
.super Ljava/lang/Object;
.source "OplusOwmMonitorKit.java"

# interfaces
.implements Landroid/net/wifi/owm/IOplusOwmMonitorKit;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "OplusOwmMonitorKit"

.field private static volatile blacklist sInstance:Landroid/net/wifi/owm/OplusOwmMonitorKit;


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private final blacklist mHandlersArry:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Set<",
            "Landroid/os/Handler;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mVerboseLoggingEnabled:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 46
    const/4 v0, 0x0

    sput-object v0, Landroid/net/wifi/owm/OplusOwmMonitorKit;->sInstance:Landroid/net/wifi/owm/OplusOwmMonitorKit;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorKit;->mContext:Landroid/content/Context;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorKit;->mVerboseLoggingEnabled:Z

    .line 49
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorKit;->mHandlersArry:Landroid/util/SparseArray;

    .line 127
    iput-object p1, p0, Landroid/net/wifi/owm/OplusOwmMonitorKit;->mContext:Landroid/content/Context;

    .line 128
    return-void
.end method

.method public static whitelist getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OplusOwmMonitorKit;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 115
    sget-object v0, Landroid/net/wifi/owm/OplusOwmMonitorKit;->sInstance:Landroid/net/wifi/owm/OplusOwmMonitorKit;

    if-nez v0, :cond_1

    .line 116
    const-class v0, Landroid/net/wifi/owm/OplusOwmMonitorKit;

    monitor-enter v0

    .line 117
    :try_start_0
    sget-object v1, Landroid/net/wifi/owm/OplusOwmMonitorKit;->sInstance:Landroid/net/wifi/owm/OplusOwmMonitorKit;

    if-nez v1, :cond_0

    .line 118
    new-instance v1, Landroid/net/wifi/owm/OplusOwmMonitorKit;

    invoke-direct {v1, p0}, Landroid/net/wifi/owm/OplusOwmMonitorKit;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/net/wifi/owm/OplusOwmMonitorKit;->sInstance:Landroid/net/wifi/owm/OplusOwmMonitorKit;

    .line 120
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 123
    :cond_1
    :goto_0
    sget-object v0, Landroid/net/wifi/owm/OplusOwmMonitorKit;->sInstance:Landroid/net/wifi/owm/OplusOwmMonitorKit;

    return-object v0
.end method

.method private blacklist logD(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .line 326
    iget-boolean v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorKit;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 327
    const-string v0, "OplusOwmMonitorKit"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_0
    return-void
.end method

.method private blacklist sendEventMessage(Landroid/os/Handler;Landroid/os/Message;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "message"    # Landroid/os/Message;

    .line 104
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendEventMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusOwmMonitorKit"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {p2, p1}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 112
    return-void

    .line 105
    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist sendEventMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .line 91
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorKit;->mHandlersArry:Landroid/util/SparseArray;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 92
    .local v0, "whatHandlers":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/Handler;>;"
    if-eqz v0, :cond_1

    .line 93
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    .line 94
    .local v2, "handler":Landroid/os/Handler;
    if-eqz v2, :cond_0

    .line 95
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->sendEventMessage(Landroid/os/Handler;Landroid/os/Message;)V

    .line 97
    .end local v2    # "handler":Landroid/os/Handler;
    :cond_0
    goto :goto_0

    .line 100
    :cond_1
    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    .line 101
    return-void
.end method


# virtual methods
.method public declared-synchronized whitelist deregisterEventHandler(ILandroid/os/Handler;)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "handler"    # Landroid/os/Handler;

    monitor-enter p0

    .line 62
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorKit;->mHandlersArry:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .local v0, "whatHandlers":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/Handler;>;"
    if-nez v0, :cond_0

    .line 64
    monitor-exit p0

    return-void

    .line 67
    :cond_0
    :try_start_1
    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    monitor-exit p0

    return-void

    .line 61
    .end local v0    # "whatHandlers":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/Handler;>;"
    .end local p0    # "this":Landroid/net/wifi/owm/OplusOwmMonitorKit;
    .end local p1    # "what":I
    .end local p2    # "handler":Landroid/os/Handler;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public whitelist enableVerboseLogging(Z)V
    .locals 0
    .param p1, "verbose"    # Z

    .line 322
    iput-boolean p1, p0, Landroid/net/wifi/owm/OplusOwmMonitorKit;->mVerboseLoggingEnabled:Z

    .line 323
    return-void
.end method

.method public whitelist getDnsFailCnt(Ljava/lang/String;)I
    .locals 1
    .param p1, "ifname"    # Ljava/lang/String;

    .line 298
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorKit;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OplusOwmMonitorCenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->getDnsFailCnt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist getDnsRefuseCnt(Ljava/lang/String;)I
    .locals 1
    .param p1, "ifname"    # Ljava/lang/String;

    .line 302
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorKit;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OplusOwmMonitorCenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->getDnsRefuseCnt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist getDupDhcpServerState(Ljava/lang/String;)Z
    .locals 1
    .param p1, "ifname"    # Ljava/lang/String;

    .line 310
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorKit;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OplusOwmMonitorCenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->getDupDhcpOfferRecved(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist getGatewayConflictState(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "ifname"    # Ljava/lang/String;
    .param p2, "forceNewDetect"    # Z

    .line 306
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorKit;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OplusOwmMonitorCenter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->getGatewayConflictState(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public whitelist getRxPackages(Ljava/lang/String;)J
    .locals 2
    .param p1, "ifname"    # Ljava/lang/String;

    .line 278
    invoke-static {p1}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getTcpLossPackages(Ljava/lang/String;)J
    .locals 2
    .param p1, "ifname"    # Ljava/lang/String;

    .line 294
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorKit;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OplusOwmMonitorCenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->getTcpLossPackets(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getTcpRetryPackages(Ljava/lang/String;)J
    .locals 2
    .param p1, "ifname"    # Ljava/lang/String;

    .line 290
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorKit;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OplusOwmMonitorCenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->getTcpRetryPackets(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getTcpRxPackages(Ljava/lang/String;)J
    .locals 2
    .param p1, "ifname"    # Ljava/lang/String;

    .line 286
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorKit;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OplusOwmMonitorCenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->getTcpRxPackets(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getTcpTxPackages(Ljava/lang/String;)J
    .locals 2
    .param p1, "ifname"    # Ljava/lang/String;

    .line 282
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorKit;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OplusOwmMonitorCenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->getTcpTxPackets(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getTxPackages(Ljava/lang/String;)J
    .locals 2
    .param p1, "ifname"    # Ljava/lang/String;

    .line 274
    invoke-static {p1}, Landroid/net/TrafficStats;->getTxPackets(Ljava/lang/String;)J

    move-result-wide v0

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

    .line 318
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorKit;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OplusOwmMonitorCenter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->getWifiGameLatencyInfo()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getWifiNetStateInfo()Ljava/lang/String;
    .locals 1

    .line 314
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorKit;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OplusOwmMonitorCenter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->getWifiNetStateInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized whitelist registerEventHandler(ILandroid/os/Handler;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "handler"    # Landroid/os/Handler;

    monitor-enter p0

    .line 52
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorKit;->mHandlersArry:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 53
    .local v0, "whatHandlers":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/Handler;>;"
    if-nez v0, :cond_0

    .line 54
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v1

    .line 55
    iget-object v1, p0, Landroid/net/wifi/owm/OplusOwmMonitorKit;->mHandlersArry:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 58
    .end local p0    # "this":Landroid/net/wifi/owm/OplusOwmMonitorKit;
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    monitor-exit p0

    return-void

    .line 51
    .end local v0    # "whatHandlers":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/Handler;>;"
    .end local p1    # "what":I
    .end local p2    # "handler":Landroid/os/Handler;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public whitelist sendBtcEventMesg()V
    .locals 1

    .line 190
    const-string v0, "sendBtcEventMesg"

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->logD(Ljava/lang/String;)V

    .line 191
    const v0, 0xf00001a

    invoke-virtual {p0, v0}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->sendEventMessage(I)V

    .line 192
    return-void
.end method

.method public whitelist sendDhcpFailEventMesg()V
    .locals 1

    .line 157
    const-string v0, "sendDhcpFailEventMesg"

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->logD(Ljava/lang/String;)V

    .line 158
    const v0, 0xf000004

    invoke-virtual {p0, v0}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->sendEventMessage(I)V

    .line 159
    return-void
.end method

.method public whitelist sendDhcpNakEventMesg()V
    .locals 1

    .line 162
    const-string v0, "sendDhcpNakEventMesg"

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->logD(Ljava/lang/String;)V

    .line 163
    const v0, 0xf000017

    invoke-virtual {p0, v0}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->sendEventMessage(I)V

    .line 164
    return-void
.end method

.method public whitelist sendDhcpOfferEventMesg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "ipAddr"    # Ljava/lang/String;
    .param p2, "ipAddrPrefixLen"    # Ljava/lang/String;
    .param p3, "gateway"    # Ljava/lang/String;
    .param p4, "domains"    # Ljava/lang/String;
    .param p5, "dnsServers"    # Ljava/lang/String;

    .line 167
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 169
    .local v0, "offerInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ipAddr"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ipAddrPrefixLen"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "gateway"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "domains"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dnsServers"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    const v1, 0xf000005

    invoke-virtual {p0, v1, v0}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->sendEventMessage(ILjava/lang/Object;)V

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendDhcpOfferEventMesg, the offerInfoMap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->logD(Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method public whitelist sendDnsHijackEventMesg()V
    .locals 1

    .line 152
    const-string v0, "sendDnsHijackEventMesg"

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->logD(Ljava/lang/String;)V

    .line 153
    const v0, 0xf00000e

    invoke-virtual {p0, v0}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->sendEventMessage(I)V

    .line 154
    return-void
.end method

.method public whitelist sendDualStaActEventMesg(Z)V
    .locals 2
    .param p1, "isActived"    # Z

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendDualStaActEventMesg, isActived = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->logD(Ljava/lang/String;)V

    .line 264
    move v0, p1

    .line 265
    .local v0, "state":I
    const v1, 0xf00000d

    invoke-virtual {p0, v1, v0}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->sendEventMessage(II)V

    .line 266
    return-void
.end method

.method public whitelist sendDupDhcpServEventMesg()V
    .locals 1

    .line 180
    const-string v0, "sendDupDhcpServEventMesg"

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->logD(Ljava/lang/String;)V

    .line 181
    const v0, 0xf000013

    invoke-virtual {p0, v0}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->sendEventMessage(I)V

    .line 182
    return-void
.end method

.method public whitelist sendEventMessage(I)V
    .locals 1
    .param p1, "what"    # I

    .line 71
    const/4 v0, 0x0

    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->sendEventMessage(Landroid/os/Message;)V

    .line 72
    return-void
.end method

.method public whitelist sendEventMessage(II)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # I

    .line 79
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->sendEventMessage(Landroid/os/Message;)V

    .line 80
    return-void
.end method

.method public whitelist sendEventMessage(III)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .line 83
    const/4 v0, 0x0

    invoke-static {v0, p1, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->sendEventMessage(Landroid/os/Message;)V

    .line 84
    return-void
.end method

.method public whitelist sendEventMessage(IIILjava/lang/Object;)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .line 87
    const/4 v0, 0x0

    invoke-static {v0, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->sendEventMessage(Landroid/os/Message;)V

    .line 88
    return-void
.end method

.method public whitelist sendEventMessage(ILjava/lang/Object;)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .line 75
    const/4 v0, 0x0

    invoke-static {v0, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->sendEventMessage(Landroid/os/Message;)V

    .line 76
    return-void
.end method

.method public whitelist sendIcmpErrEventMesg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "errCode"    # Ljava/lang/String;
    .param p2, "srcAddr"    # Ljava/lang/String;
    .param p3, "mtuNextHop"    # Ljava/lang/String;
    .param p4, "dataDstAddr"    # Ljava/lang/String;
    .param p5, "dataProto"    # Ljava/lang/String;

    .line 205
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 207
    .local v0, "icmpInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "errCode"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const-string v1, "errSrcAddr"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    const-string v1, "mtuNextHop"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const-string v1, "dataDstAddr"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    const-string v1, "dataProto"

    invoke-interface {v0, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 216
    .local v1, "errCodeType":I
    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 217
    return-void

    .line 220
    :cond_0
    const v2, 0xf000008

    invoke-virtual {p0, v2, v0}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->sendEventMessage(ILjava/lang/Object;)V

    .line 221
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendIcmpErrEventMesg, the icmpInfoMap: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->logD(Ljava/lang/String;)V

    .line 222
    return-void
.end method

.method public whitelist sendIcmpUnreachableBurstEventMesg()V
    .locals 1

    .line 225
    const-string v0, "sendIcmpUnreachableBurstEventMesg"

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->logD(Ljava/lang/String;)V

    .line 226
    const v0, 0xf000018

    invoke-virtual {p0, v0}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->sendEventMessage(I)V

    .line 227
    return-void
.end method

.method public whitelist sendIpSuccEventMesg()V
    .locals 1

    .line 269
    const-string v0, "sendIpSuccEventMesg"

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->logD(Ljava/lang/String;)V

    .line 270
    const v0, 0xf00000b

    invoke-virtual {p0, v0}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->sendEventMessage(I)V

    .line 271
    return-void
.end method

.method public whitelist sendIpv4RtoEventMesg(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "srcAddr"    # Ljava/lang/String;
    .param p2, "dstAddr"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 241
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 243
    .local v0, "rtoInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "srcAddr"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    const-string v1, "dstAddr"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "uid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    const v1, 0xf000012

    invoke-virtual {p0, v1, v0}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->sendEventMessage(ILjava/lang/Object;)V

    .line 248
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendIpv4RtoEventMesg, the rtoInfoMap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->logD(Ljava/lang/String;)V

    .line 249
    return-void
.end method

.method public whitelist sendIpv6RtoEventMesg(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "srcAddr"    # Ljava/lang/String;
    .param p2, "dstAddr"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 230
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 232
    .local v0, "rtoInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "srcAddr"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    const-string v1, "dstAddr"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "uid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    const v1, 0xf000009

    invoke-virtual {p0, v1, v0}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->sendEventMessage(ILjava/lang/Object;)V

    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendIpv6RtoEventMesg, the rtoInfoMap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->logD(Ljava/lang/String;)V

    .line 238
    return-void
.end method

.method public whitelist sendL2StuckEventMesg(I)V
    .locals 2
    .param p1, "stuckType"    # I

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendL2StuckEventMesg, stuckType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->logD(Ljava/lang/String;)V

    .line 253
    const v0, 0xf00000a

    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->sendEventMessage(II)V

    .line 254
    return-void
.end method

.method public whitelist sendMtuProbNoEnableEventMesg()V
    .locals 1

    .line 200
    const-string v0, "sendMtuProbNoEnableEventMesg"

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->logD(Ljava/lang/String;)V

    .line 201
    const v0, 0xf000007

    invoke-virtual {p0, v0}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->sendEventMessage(I)V

    .line 202
    return-void
.end method

.method public whitelist sendMultiGatewayEventMesg(Ljava/lang/String;)V
    .locals 1
    .param p1, "ifname"    # Ljava/lang/String;

    .line 185
    const-string v0, "sendMultiGatewayEventMesg"

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->logD(Ljava/lang/String;)V

    .line 186
    const v0, 0xf000019

    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->sendEventMessage(ILjava/lang/Object;)V

    .line 187
    return-void
.end method

.method public whitelist sendNetDurSlowEventMesg()V
    .locals 1

    .line 147
    const-string v0, "sendNetDurSlowEventMesg"

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->logD(Ljava/lang/String;)V

    .line 148
    const v0, 0xf00000f

    invoke-virtual {p0, v0}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->sendEventMessage(I)V

    .line 149
    return-void
.end method

.method public whitelist sendNetInvalidEventMesg(Z)V
    .locals 2
    .param p1, "isRecheckViaHttp"    # Z

    .line 136
    const-string v0, "sendNetInvalidEventMesg"

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->logD(Ljava/lang/String;)V

    .line 137
    xor-int/lit8 v0, p1, 0x1

    .line 138
    .local v0, "noRecheck":I
    const v1, 0xf000002

    invoke-virtual {p0, v1, v0}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->sendEventMessage(II)V

    .line 139
    return-void
.end method

.method public whitelist sendNetValidEventMesg()V
    .locals 1

    .line 142
    const-string v0, "sendNetValidEventMesg"

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->logD(Ljava/lang/String;)V

    .line 143
    const v0, 0xf000003

    invoke-virtual {p0, v0}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->sendEventMessage(I)V

    .line 144
    return-void
.end method

.method public whitelist sendNudFailEventMesg(Ljava/lang/String;)V
    .locals 2
    .param p1, "nudMsg"    # Ljava/lang/String;

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendNudFailEventMesg: nudMsg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->logD(Ljava/lang/String;)V

    .line 132
    const v0, 0xf000001

    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->sendEventMessage(ILjava/lang/Object;)V

    .line 133
    return-void
.end method

.method public whitelist sendRoamingEventMesg(Ljava/lang/String;)V
    .locals 1
    .param p1, "newBssid"    # Ljava/lang/String;

    .line 195
    const-string v0, "sendRoamingEventMesg"

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->logD(Ljava/lang/String;)V

    .line 196
    const v0, 0xf000006

    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->sendEventMessage(ILjava/lang/Object;)V

    .line 197
    return-void
.end method

.method public whitelist sendSlaActEventMesg(Z)V
    .locals 2
    .param p1, "isActived"    # Z

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendSlaActEventMesg, isActived = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->logD(Ljava/lang/String;)V

    .line 258
    move v0, p1

    .line 259
    .local v0, "state":I
    const v1, 0xf00000c

    invoke-virtual {p0, v1, v0}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->sendEventMessage(II)V

    .line 260
    return-void
.end method
