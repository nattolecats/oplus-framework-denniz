.class public Landroid/net/wifi/owm/OwmDhcpMonitor;
.super Ljava/lang/Object;
.source "OwmDhcpMonitor.java"

# interfaces
.implements Landroid/net/wifi/owm/IOwmMonitorCommon;
.implements Landroid/net/wifi/owm/IOwmNetHealthCommon;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler;,
        Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpOfferInfo;,
        Landroid/net/wifi/owm/OwmDhcpMonitor$AsyncHandler;
    }
.end annotation


# static fields
.field private static final blacklist DHCP_CAPTIVE_PORTAL:B = 0x72t

.field private static final blacklist EVT_RECORD_SIZE:I = 0x8

.field private static final blacklist MSG_BASE:I = 0x0

.field private static final blacklist MSG_DESTROY_SOCKET:I = 0x2

.field private static final blacklist MSG_INIT_SOCKET:I = 0x1

.field private static final blacklist MSG_RENEW_INIT_SOCKET:I = 0x3

.field private static final blacklist RENEW_INIT_SOCKET_DELAY_MS:I = 0x64

.field private static final blacklist RENEW_INIT_SOCKET_TRY_CNT:I = 0x32

.field private static final blacklist RTT_GOOD_MS:I = 0x64

.field private static final blacklist RTT_NORM_MS:I = 0xc8

.field private static final blacklist RTT_POOR_MS:I = 0x12c

.field private static final blacklist TAG:Ljava/lang/String; = "OwmDhcpMonitor"

.field private static final blacklist VERTICAL_SEPARATE:Ljava/lang/String; = "|"

.field private static volatile blacklist sInstance:Landroid/net/wifi/owm/OwmDhcpMonitor;


# instance fields
.field private blacklist mAsyncHandler:Landroid/os/Handler;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mDhcpPacketHandler:Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler;

.field private blacklist mDupOfferCnt:I

.field private blacklist mDupOfferRecved:Z

.field private blacklist mFailCnt:I

.field private blacklist mIpConflictCnt:I

.field private blacklist mIpStaticCnt:I

.field private blacklist mOfferList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpOfferInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

.field private blacklist mOwmRouterMonitor:Landroid/net/wifi/owm/OwmRouterMonitor;

.field private blacklist mTotalCnt:I

.field private blacklist mVerboseLoggingEnabled:Z

.field private blacklist mWifiConnected:Z

.field private blacklist mWifiEnabled:Z

.field private blacklist mWifiManager:Landroid/net/wifi/WifiManager;

.field private blacklist tryRenewInitSocketCnt:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAsyncHandler(Landroid/net/wifi/owm/OwmDhcpMonitor;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mAsyncHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/net/wifi/owm/OwmDhcpMonitor;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDhcpPacketHandler(Landroid/net/wifi/owm/OwmDhcpMonitor;)Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler;
    .locals 0

    iget-object p0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mDhcpPacketHandler:Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOwmBaseUtils(Landroid/net/wifi/owm/OwmDhcpMonitor;)Landroid/net/wifi/owm/OwmBaseUtils;
    .locals 0

    iget-object p0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWifiConnected(Landroid/net/wifi/owm/OwmDhcpMonitor;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mWifiConnected:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWifiEnabled(Landroid/net/wifi/owm/OwmDhcpMonitor;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mWifiEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWifiManager(Landroid/net/wifi/owm/OwmDhcpMonitor;)Landroid/net/wifi/WifiManager;
    .locals 0

    iget-object p0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgettryRenewInitSocketCnt(Landroid/net/wifi/owm/OwmDhcpMonitor;)I
    .locals 0

    iget p0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->tryRenewInitSocketCnt:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmWifiManager(Landroid/net/wifi/owm/OwmDhcpMonitor;Landroid/net/wifi/WifiManager;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputtryRenewInitSocketCnt(Landroid/net/wifi/owm/OwmDhcpMonitor;I)V
    .locals 0

    iput p1, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->tryRenewInitSocketCnt:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlogD(Landroid/net/wifi/owm/OwmDhcpMonitor;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/owm/OwmDhcpMonitor;->logD(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 101
    const/4 v0, 0x0

    sput-object v0, Landroid/net/wifi/owm/OwmDhcpMonitor;->sInstance:Landroid/net/wifi/owm/OwmDhcpMonitor;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mAsyncHandler:Landroid/os/Handler;

    .line 103
    iput-object v0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mContext:Landroid/content/Context;

    .line 104
    iput-object v0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 107
    const/4 v1, 0x0

    iput v1, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mFailCnt:I

    .line 108
    iput v1, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mTotalCnt:I

    .line 109
    iput v1, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mIpStaticCnt:I

    .line 112
    iput v1, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mIpConflictCnt:I

    .line 116
    iput v1, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mDupOfferCnt:I

    .line 117
    iput-boolean v1, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mDupOfferRecved:Z

    .line 118
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mOfferList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 120
    iput-boolean v1, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mVerboseLoggingEnabled:Z

    .line 121
    iput-boolean v1, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mWifiConnected:Z

    .line 122
    iput-boolean v1, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mWifiEnabled:Z

    .line 123
    iput-object v0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mDhcpPacketHandler:Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler;

    .line 124
    iput-object v0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    .line 125
    iput-object v0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mOwmRouterMonitor:Landroid/net/wifi/owm/OwmRouterMonitor;

    .line 126
    iput v1, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->tryRenewInitSocketCnt:I

    .line 140
    iput-object p1, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mContext:Landroid/content/Context;

    .line 141
    new-instance v0, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler;

    invoke-direct {v0, p0}, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler;-><init>(Landroid/net/wifi/owm/OwmDhcpMonitor;)V

    iput-object v0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mDhcpPacketHandler:Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler;

    .line 142
    iget-object v0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmBaseUtils;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmBaseUtils;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    .line 143
    iget-object v0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmRouterMonitor;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmRouterMonitor;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mOwmRouterMonitor:Landroid/net/wifi/owm/OwmRouterMonitor;

    .line 144
    new-instance v0, Landroid/net/wifi/owm/OwmDhcpMonitor$AsyncHandler;

    iget-object v1, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmBaseUtils;->getOwmMonitorThread()Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/net/wifi/owm/OwmDhcpMonitor$AsyncHandler;-><init>(Landroid/net/wifi/owm/OwmDhcpMonitor;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mAsyncHandler:Landroid/os/Handler;

    .line 145
    return-void
.end method

.method private blacklist generateDupOfferInfoToDatabaseMap()Ljava/lang/String;
    .locals 6

    .line 356
    iget-object v0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mOfferList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    .line 358
    .local v0, "offerSize":I
    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 359
    const-string v1, ""

    .line 361
    .local v1, "dupOfferInfo":Ljava/lang/String;
    iget-object v2, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mOfferList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpOfferInfo;

    .line 362
    .local v3, "offer":Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpOfferInfo;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpOfferInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 363
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 364
    .end local v3    # "offer":Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpOfferInfo;
    goto :goto_0

    .line 366
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 367
    return-object v1

    .line 370
    .end local v1    # "dupOfferInfo":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    return-object v1
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

    .line 335
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 337
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mFailCnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "FailCnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mTotalCnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "TotalCnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mIpStaticCnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "IpStaticCnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mIpConflictCnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "IpConflictCnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mDupOfferCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DupOfferCnt"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    return-object v0
.end method

.method public static whitelist getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmDhcpMonitor;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 128
    sget-object v0, Landroid/net/wifi/owm/OwmDhcpMonitor;->sInstance:Landroid/net/wifi/owm/OwmDhcpMonitor;

    if-nez v0, :cond_1

    .line 129
    const-class v0, Landroid/net/wifi/owm/OwmDhcpMonitor;

    monitor-enter v0

    .line 130
    :try_start_0
    sget-object v1, Landroid/net/wifi/owm/OwmDhcpMonitor;->sInstance:Landroid/net/wifi/owm/OwmDhcpMonitor;

    if-nez v1, :cond_0

    .line 131
    new-instance v1, Landroid/net/wifi/owm/OwmDhcpMonitor;

    invoke-direct {v1, p0}, Landroid/net/wifi/owm/OwmDhcpMonitor;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/net/wifi/owm/OwmDhcpMonitor;->sInstance:Landroid/net/wifi/owm/OwmDhcpMonitor;

    .line 133
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 136
    :cond_1
    :goto_0
    sget-object v0, Landroid/net/wifi/owm/OwmDhcpMonitor;->sInstance:Landroid/net/wifi/owm/OwmDhcpMonitor;

    return-object v0
.end method

.method private blacklist isSameOffer(Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpOfferInfo;Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpOfferInfo;)Z
    .locals 3
    .param p1, "offer1"    # Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpOfferInfo;
    .param p2, "offer2"    # Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpOfferInfo;

    .line 445
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object v1, p1, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpOfferInfo;->ipAddr:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p1, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpOfferInfo;->ipAddrPrefixLen:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p1, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpOfferInfo;->gateway:Ljava/lang/String;

    if-eqz v1, :cond_2

    if-eqz p2, :cond_2

    iget-object v1, p2, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpOfferInfo;->ipAddr:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p2, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpOfferInfo;->ipAddrPrefixLen:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p2, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpOfferInfo;->gateway:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_0

    .line 450
    :cond_0
    iget-object v1, p1, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpOfferInfo;->ipAddr:Ljava/lang/String;

    iget-object v2, p2, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpOfferInfo;->ipAddr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpOfferInfo;->ipAddrPrefixLen:Ljava/lang/String;

    iget-object v2, p2, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpOfferInfo;->ipAddrPrefixLen:Ljava/lang/String;

    .line 451
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpOfferInfo;->gateway:Ljava/lang/String;

    iget-object v2, p2, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpOfferInfo;->gateway:Ljava/lang/String;

    .line 452
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 453
    const/4 v0, 0x1

    return v0

    .line 456
    :cond_1
    return v0

    .line 447
    :cond_2
    :goto_0
    return v0
.end method

.method private blacklist logD(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .line 438
    iget-boolean v0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mScreenOn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/wifi/owm/OwmBaseUtils;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmBaseUtils;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmBaseUtils;->isScreenOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OwmDhcpMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :cond_0
    return-void
.end method

.method private blacklist resetAllRecord()V
    .locals 1

    .line 348
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mFailCnt:I

    .line 349
    iput v0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mTotalCnt:I

    .line 350
    iput v0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mIpStaticCnt:I

    .line 351
    iput v0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mIpConflictCnt:I

    .line 352
    iput v0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mDupOfferCnt:I

    .line 353
    return-void
.end method

.method private blacklist saveDupOfferEvtRecordToDatabase()V
    .locals 8

    .line 374
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 376
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmBaseUtils;->getCurDateTime()Ljava/lang/String;

    move-result-object v1

    .line 377
    .local v1, "dateTime":Ljava/lang/String;
    iget-object v2, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v2}, Landroid/net/wifi/owm/OwmBaseUtils;->getTopAppPkgName()Ljava/lang/String;

    move-result-object v2

    .line 378
    .local v2, "topPkgName":Ljava/lang/String;
    iget-object v3, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mOwmRouterMonitor:Landroid/net/wifi/owm/OwmRouterMonitor;

    invoke-virtual {v3}, Landroid/net/wifi/owm/OwmRouterMonitor;->getApName()Ljava/lang/String;

    move-result-object v3

    .line 380
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

    .line 381
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

    .line 382
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

    .line 393
    iget-object v4, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mContext:Landroid/content/Context;

    const-string v5, "wifi_fool_proof"

    const-string v6, "OwmDhcpDupOfferEvtMonitor"

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v0, v7}, Loplus/util/OplusStatistics;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 394
    return-void
.end method

.method private blacklist saveIpConflictEvtRecordToDatabase(Ljava/lang/String;)V
    .locals 8
    .param p1, "conflictIp"    # Ljava/lang/String;

    .line 397
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 399
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmBaseUtils;->getCurDateTime()Ljava/lang/String;

    move-result-object v1

    .line 400
    .local v1, "dateTime":Ljava/lang/String;
    iget-object v2, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v2}, Landroid/net/wifi/owm/OwmBaseUtils;->getTopAppPkgName()Ljava/lang/String;

    move-result-object v2

    .line 401
    .local v2, "topPkgName":Ljava/lang/String;
    iget-object v3, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mOwmRouterMonitor:Landroid/net/wifi/owm/OwmRouterMonitor;

    invoke-virtual {v3}, Landroid/net/wifi/owm/OwmRouterMonitor;->getApName()Ljava/lang/String;

    move-result-object v3

    .line 403
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

    .line 404
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

    .line 405
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

    .line 408
    iget-object v4, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mContext:Landroid/content/Context;

    const-string v5, "wifi_fool_proof"

    const-string v6, "OwmIpConflictEvtMonitor"

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v0, v7}, Loplus/util/OplusStatistics;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 409
    return-void
.end method


# virtual methods
.method public whitelist addDhcpFailRecord()V
    .locals 1

    .line 203
    const-string v0, "addDhcpFailRecord"

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmDhcpMonitor;->logD(Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OplusOwmMonitorKit;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->sendDhcpFailEventMesg()V

    .line 207
    iget-object v0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v0}, Landroid/net/wifi/owm/OwmBaseUtils;->isWifiSelfCureOngoing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    return-void

    .line 211
    :cond_0
    iget v0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mFailCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mFailCnt:I

    .line 212
    iget v0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mTotalCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mTotalCnt:I

    .line 213
    return-void
.end method

.method public whitelist addDhcpOfferRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "ipAddr"    # Ljava/lang/String;
    .param p2, "ipAddrPrefixLen"    # Ljava/lang/String;
    .param p3, "gateway"    # Ljava/lang/String;
    .param p4, "domains"    # Ljava/lang/String;
    .param p5, "dnsServers"    # Ljava/lang/String;

    .line 243
    const-string v0, "addDhcpOfferRecord"

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmDhcpMonitor;->logD(Ljava/lang/String;)V

    .line 245
    if-eqz p1, :cond_5

    if-eqz p3, :cond_5

    if-nez p2, :cond_0

    goto :goto_1

    .line 251
    :cond_0
    new-instance v0, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpOfferInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpOfferInfo;-><init>(Landroid/net/wifi/owm/OwmDhcpMonitor;Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpOfferInfo-IA;)V

    .line 252
    .local v0, "offerInfo":Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpOfferInfo;
    iput-object p1, v0, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpOfferInfo;->ipAddr:Ljava/lang/String;

    .line 253
    iput-object p2, v0, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpOfferInfo;->ipAddrPrefixLen:Ljava/lang/String;

    .line 254
    iput-object p3, v0, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpOfferInfo;->gateway:Ljava/lang/String;

    .line 257
    iget-object v1, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OplusOwmMonitorKit;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->sendDhcpOfferEventMesg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const-string v1, "OwmDhcpMonitor"

    const-string v2, "addDhcpOfferRecord: sendDhcpOfferEventMesg"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v2, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mOfferList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpOfferInfo;

    .line 261
    .local v3, "offer":Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpOfferInfo;
    invoke-direct {p0, v3, v0}, Landroid/net/wifi/owm/OwmDhcpMonitor;->isSameOffer(Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpOfferInfo;Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpOfferInfo;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 263
    return-void

    .line 265
    .end local v3    # "offer":Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpOfferInfo;
    :cond_1
    goto :goto_0

    .line 267
    :cond_2
    iget-object v2, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v2}, Landroid/net/wifi/owm/OwmBaseUtils;->isWifiSelfCureOngoing()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 268
    return-void

    .line 272
    :cond_3
    iget-object v2, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mOfferList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    iget-object v2, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mOfferList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_4

    .line 276
    iget v2, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mDupOfferCnt:I

    add-int/2addr v2, v3

    iput v2, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mDupOfferCnt:I

    .line 277
    iput-boolean v3, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mDupOfferRecved:Z

    .line 278
    iget-object v2, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OplusOwmMonitorKit;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->sendDupDhcpServEventMesg()V

    .line 279
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmDhcpMonitor;->saveDupOfferEvtRecordToDatabase()V

    .line 280
    const-string v2, "addDhcpOfferRecord: sendDupDhcpServEventMesg"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_4
    return-void

    .line 246
    .end local v0    # "offerInfo":Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpOfferInfo;
    :cond_5
    :goto_1
    const-string v0, "addDhcpOfferRecord, input parma Addr == null || gateway == null || AddrLen == null"

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmDhcpMonitor;->logD(Ljava/lang/String;)V

    .line 247
    return-void
.end method

.method public whitelist addDhcpStaticIpRecord()V
    .locals 1

    .line 232
    const-string v0, "addDhcpStaticIpRecord"

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmDhcpMonitor;->logD(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v0}, Landroid/net/wifi/owm/OwmBaseUtils;->isWifiSelfCureOngoing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    return-void

    .line 238
    :cond_0
    iget v0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mIpStaticCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mIpStaticCnt:I

    .line 239
    iget v0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mTotalCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mTotalCnt:I

    .line 240
    return-void
.end method

.method public whitelist addDhcpSuccRecord(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "ipAddr"    # Ljava/lang/String;
    .param p2, "gateway"    # Ljava/lang/String;

    .line 216
    const-string v0, "addDhcpSuccRecord"

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmDhcpMonitor;->logD(Ljava/lang/String;)V

    .line 217
    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 221
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmBaseUtils;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmBaseUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/wifi/owm/OwmBaseUtils;->setIpAddr(Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmBaseUtils;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmBaseUtils;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/wifi/owm/OwmBaseUtils;->setGateway(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v0}, Landroid/net/wifi/owm/OwmBaseUtils;->isWifiSelfCureOngoing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    return-void

    .line 228
    :cond_1
    iget v0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mTotalCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mTotalCnt:I

    .line 229
    return-void

    .line 218
    :cond_2
    :goto_0
    return-void
.end method

.method public whitelist addIpConflictRecord(Ljava/lang/String;)V
    .locals 2
    .param p1, "conflictIp"    # Ljava/lang/String;

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addIpConflictRecord, conflictIp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmDhcpMonitor;->logD(Ljava/lang/String;)V

    .line 193
    invoke-direct {p0, p1}, Landroid/net/wifi/owm/OwmDhcpMonitor;->saveIpConflictEvtRecordToDatabase(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v0}, Landroid/net/wifi/owm/OwmBaseUtils;->isWifiSelfCureOngoing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    return-void

    .line 199
    :cond_0
    iget v0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mIpConflictCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mIpConflictCnt:I

    .line 200
    return-void
.end method

.method public whitelist enableVerboseLogging(Z)V
    .locals 0
    .param p1, "verbose"    # Z

    .line 434
    iput-boolean p1, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mVerboseLoggingEnabled:Z

    .line 435
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

    .line 326
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 328
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mIpConflictCnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "IpConflictCnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mDupOfferCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DupOfferCnt"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    return-object v0
.end method

.method public whitelist getDhcpFailCnt()I
    .locals 1

    .line 430
    iget v0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mFailCnt:I

    return v0
.end method

.method public whitelist getDupDhcpOfferRecved()Z
    .locals 1

    .line 322
    iget-boolean v0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mDupOfferRecved:Z

    return v0
.end method

.method public whitelist getRecordToDatabase()Ljava/lang/String;
    .locals 2

    .line 423
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmDhcpMonitor;->generateRecordToDatabaseMap()Ljava/util/Map;

    move-result-object v0

    .line 425
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist saveRecordToDatabase()V
    .locals 5

    .line 412
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmDhcpMonitor;->generateRecordToDatabaseMap()Ljava/util/Map;

    move-result-object v0

    .line 414
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

    invoke-direct {p0, v1}, Landroid/net/wifi/owm/OwmDhcpMonitor;->logD(Ljava/lang/String;)V

    .line 417
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmDhcpMonitor;->resetAllRecord()V

    .line 419
    iget-object v1, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mContext:Landroid/content/Context;

    const-string v2, "wifi_fool_proof"

    const-string v3, "OwmDhcpMonitor"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Loplus/util/OplusStatistics;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 420
    return-void
.end method

.method public whitelist setWifiConnState(Z)V
    .locals 2
    .param p1, "isConnected"    # Z

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setWifiConnState, mWifiConnected = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mWifiConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isConnected = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmDhcpMonitor;->logD(Ljava/lang/String;)V

    .line 310
    iput-boolean p1, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mWifiConnected:Z

    .line 312
    if-eqz p1, :cond_0

    goto :goto_0

    .line 316
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mDupOfferRecved:Z

    .line 317
    iget-object v0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mOfferList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 319
    :goto_0
    return-void
.end method

.method public whitelist setWifiEnabledState(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setWifiEnabledState, mWifiEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mWifiEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " enabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmDhcpMonitor;->logD(Ljava/lang/String;)V

    .line 287
    iget-boolean v0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mWifiEnabled:Z

    if-ne v0, p1, :cond_0

    .line 288
    return-void

    .line 291
    :cond_0
    iput-boolean p1, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mWifiEnabled:Z

    .line 294
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->tryRenewInitSocketCnt:I

    .line 296
    if-eqz p1, :cond_1

    .line 297
    iget-object v0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mAsyncHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 299
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mAsyncHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 302
    iget-object v0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mAsyncHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 303
    iget-object v0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor;->mAsyncHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 306
    :cond_2
    :goto_0
    return-void
.end method
