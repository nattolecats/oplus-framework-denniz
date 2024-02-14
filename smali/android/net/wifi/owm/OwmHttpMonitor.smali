.class public Landroid/net/wifi/owm/OwmHttpMonitor;
.super Ljava/lang/Object;
.source "OwmHttpMonitor.java"

# interfaces
.implements Landroid/net/wifi/owm/IOwmMonitorCommon;
.implements Landroid/net/wifi/owm/IOwmNetHealthCommon;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/owm/OwmHttpMonitor$HttpPacketHandler;,
        Landroid/net/wifi/owm/OwmHttpMonitor$AsyncHandler;
    }
.end annotation


# static fields
.field private static final blacklist EVT_RECORD_SIZE:I = 0x8

.field private static final blacklist MSG_BASE:I = 0x0

.field private static final blacklist MSG_DESTROY_SOCKET:I = 0x2

.field private static final blacklist MSG_INIT_SOCKET:I = 0x1

.field private static final blacklist MSG_RENEW_INIT_SOCKET:I = 0x3

.field private static final blacklist RENEW_INIT_SOCKET_DELAY_MS:I = 0x3e8

.field private static final blacklist TAG:Ljava/lang/String; = "OwmHttpMonitor"

.field private static final blacklist VERTICAL_SEPARATE:Ljava/lang/String; = "|"

.field private static volatile blacklist sInstance:Landroid/net/wifi/owm/OwmHttpMonitor;


# instance fields
.field private blacklist mAsyncHandler:Landroid/os/Handler;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

.field private blacklist mOwmRouterMonitor:Landroid/net/wifi/owm/OwmRouterMonitor;

.field private blacklist mSuccCnt:I

.field private blacklist mTotalCnt:I

.field private blacklist mVerboseLoggingEnabled:Z

.field private blacklist mWifiConnected:Z

.field private blacklist mWifiEnabled:Z

.field private blacklist mhttpPacketHandler:Landroid/net/wifi/owm/OwmHttpMonitor$HttpPacketHandler;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAsyncHandler(Landroid/net/wifi/owm/OwmHttpMonitor;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/net/wifi/owm/OwmHttpMonitor;->mAsyncHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOwmBaseUtils(Landroid/net/wifi/owm/OwmHttpMonitor;)Landroid/net/wifi/owm/OwmBaseUtils;
    .locals 0

    iget-object p0, p0, Landroid/net/wifi/owm/OwmHttpMonitor;->mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWifiEnabled(Landroid/net/wifi/owm/OwmHttpMonitor;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/net/wifi/owm/OwmHttpMonitor;->mWifiEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmhttpPacketHandler(Landroid/net/wifi/owm/OwmHttpMonitor;)Landroid/net/wifi/owm/OwmHttpMonitor$HttpPacketHandler;
    .locals 0

    iget-object p0, p0, Landroid/net/wifi/owm/OwmHttpMonitor;->mhttpPacketHandler:Landroid/net/wifi/owm/OwmHttpMonitor$HttpPacketHandler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mlogD(Landroid/net/wifi/owm/OwmHttpMonitor;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/owm/OwmHttpMonitor;->logD(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 92
    const/4 v0, 0x0

    sput-object v0, Landroid/net/wifi/owm/OwmHttpMonitor;->sInstance:Landroid/net/wifi/owm/OwmHttpMonitor;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/owm/OwmHttpMonitor;->mContext:Landroid/content/Context;

    .line 95
    iput-object v0, p0, Landroid/net/wifi/owm/OwmHttpMonitor;->mAsyncHandler:Landroid/os/Handler;

    .line 96
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/wifi/owm/OwmHttpMonitor;->mVerboseLoggingEnabled:Z

    .line 97
    iput-boolean v1, p0, Landroid/net/wifi/owm/OwmHttpMonitor;->mWifiConnected:Z

    .line 98
    iput-boolean v1, p0, Landroid/net/wifi/owm/OwmHttpMonitor;->mWifiEnabled:Z

    .line 99
    iput-object v0, p0, Landroid/net/wifi/owm/OwmHttpMonitor;->mhttpPacketHandler:Landroid/net/wifi/owm/OwmHttpMonitor$HttpPacketHandler;

    .line 100
    iput-object v0, p0, Landroid/net/wifi/owm/OwmHttpMonitor;->mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    .line 101
    iput-object v0, p0, Landroid/net/wifi/owm/OwmHttpMonitor;->mOwmRouterMonitor:Landroid/net/wifi/owm/OwmRouterMonitor;

    .line 103
    iput v1, p0, Landroid/net/wifi/owm/OwmHttpMonitor;->mSuccCnt:I

    .line 104
    iput v1, p0, Landroid/net/wifi/owm/OwmHttpMonitor;->mTotalCnt:I

    .line 119
    iput-object p1, p0, Landroid/net/wifi/owm/OwmHttpMonitor;->mContext:Landroid/content/Context;

    .line 120
    new-instance v0, Landroid/net/wifi/owm/OwmHttpMonitor$HttpPacketHandler;

    invoke-direct {v0, p0}, Landroid/net/wifi/owm/OwmHttpMonitor$HttpPacketHandler;-><init>(Landroid/net/wifi/owm/OwmHttpMonitor;)V

    iput-object v0, p0, Landroid/net/wifi/owm/OwmHttpMonitor;->mhttpPacketHandler:Landroid/net/wifi/owm/OwmHttpMonitor$HttpPacketHandler;

    .line 121
    iget-object v0, p0, Landroid/net/wifi/owm/OwmHttpMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmBaseUtils;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmBaseUtils;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/owm/OwmHttpMonitor;->mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    .line 122
    iget-object v0, p0, Landroid/net/wifi/owm/OwmHttpMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmRouterMonitor;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmRouterMonitor;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/owm/OwmHttpMonitor;->mOwmRouterMonitor:Landroid/net/wifi/owm/OwmRouterMonitor;

    .line 123
    new-instance v0, Landroid/net/wifi/owm/OwmHttpMonitor$AsyncHandler;

    iget-object v1, p0, Landroid/net/wifi/owm/OwmHttpMonitor;->mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmBaseUtils;->getOwmMonitorThread()Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/net/wifi/owm/OwmHttpMonitor$AsyncHandler;-><init>(Landroid/net/wifi/owm/OwmHttpMonitor;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/net/wifi/owm/OwmHttpMonitor;->mAsyncHandler:Landroid/os/Handler;

    .line 124
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

    .line 190
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 192
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmHttpMonitor;->mTotalCnt:I

    iget v4, p0, Landroid/net/wifi/owm/OwmHttpMonitor;->mSuccCnt:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "FailCnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/owm/OwmHttpMonitor;->mTotalCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TotalCnt"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    return-object v0
.end method

.method public static whitelist getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmHttpMonitor;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 107
    sget-object v0, Landroid/net/wifi/owm/OwmHttpMonitor;->sInstance:Landroid/net/wifi/owm/OwmHttpMonitor;

    if-nez v0, :cond_1

    .line 108
    const-class v0, Landroid/net/wifi/owm/OwmHttpMonitor;

    monitor-enter v0

    .line 109
    :try_start_0
    sget-object v1, Landroid/net/wifi/owm/OwmHttpMonitor;->sInstance:Landroid/net/wifi/owm/OwmHttpMonitor;

    if-nez v1, :cond_0

    .line 110
    new-instance v1, Landroid/net/wifi/owm/OwmHttpMonitor;

    invoke-direct {v1, p0}, Landroid/net/wifi/owm/OwmHttpMonitor;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/net/wifi/owm/OwmHttpMonitor;->sInstance:Landroid/net/wifi/owm/OwmHttpMonitor;

    .line 112
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 115
    :cond_1
    :goto_0
    sget-object v0, Landroid/net/wifi/owm/OwmHttpMonitor;->sInstance:Landroid/net/wifi/owm/OwmHttpMonitor;

    return-object v0
.end method

.method private blacklist logD(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .line 235
    iget-boolean v0, p0, Landroid/net/wifi/owm/OwmHttpMonitor;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mScreenOn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/owm/OwmHttpMonitor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/wifi/owm/OwmBaseUtils;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmBaseUtils;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmBaseUtils;->isScreenOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OwmHttpMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_0
    return-void
.end method

.method private blacklist resetAllRecord()V
    .locals 1

    .line 199
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/owm/OwmHttpMonitor;->mSuccCnt:I

    .line 200
    iput v0, p0, Landroid/net/wifi/owm/OwmHttpMonitor;->mTotalCnt:I

    .line 201
    return-void
.end method


# virtual methods
.method public whitelist enableVerboseLogging(Z)V
    .locals 0
    .param p1, "verbose"    # Z

    .line 231
    iput-boolean p1, p0, Landroid/net/wifi/owm/OwmHttpMonitor;->mVerboseLoggingEnabled:Z

    .line 232
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

    .line 216
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 218
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmHttpMonitor;->mTotalCnt:I

    iget v4, p0, Landroid/net/wifi/owm/OwmHttpMonitor;->mSuccCnt:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "FailCnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/owm/OwmHttpMonitor;->mTotalCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TotalCnt"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    return-object v0
.end method

.method public whitelist getRecordToDatabase()Ljava/lang/String;
    .locals 2

    .line 225
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmHttpMonitor;->generateRecordToDatabaseMap()Ljava/util/Map;

    move-result-object v0

    .line 227
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist saveRecordToDatabase()V
    .locals 5

    .line 205
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmHttpMonitor;->generateRecordToDatabaseMap()Ljava/util/Map;

    move-result-object v0

    .line 207
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

    invoke-direct {p0, v1}, Landroid/net/wifi/owm/OwmHttpMonitor;->logD(Ljava/lang/String;)V

    .line 210
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmHttpMonitor;->resetAllRecord()V

    .line 212
    iget-object v1, p0, Landroid/net/wifi/owm/OwmHttpMonitor;->mContext:Landroid/content/Context;

    const-string v2, "wifi_fool_proof"

    const-string v3, "OwmHttpMonitor"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Loplus/util/OplusStatistics;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 213
    return-void
.end method

.method public whitelist setWifiConnState(Z)V
    .locals 2
    .param p1, "isConnected"    # Z

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setWifiConnState, mWifiConnected = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/owm/OwmHttpMonitor;->mWifiConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isConnected = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmHttpMonitor;->logD(Ljava/lang/String;)V

    .line 175
    iget-boolean v0, p0, Landroid/net/wifi/owm/OwmHttpMonitor;->mWifiConnected:Z

    if-ne p1, v0, :cond_0

    .line 177
    return-void

    .line 180
    :cond_0
    iput-boolean p1, p0, Landroid/net/wifi/owm/OwmHttpMonitor;->mWifiConnected:Z

    .line 182
    nop

    .line 187
    return-void
.end method

.method public whitelist setWifiEnabledState(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setWifiEnabledState, mWifiEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/owm/OwmHttpMonitor;->mWifiEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " enabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmHttpMonitor;->logD(Ljava/lang/String;)V

    .line 159
    iget-boolean v0, p0, Landroid/net/wifi/owm/OwmHttpMonitor;->mWifiEnabled:Z

    if-ne v0, p1, :cond_0

    .line 160
    return-void

    .line 163
    :cond_0
    iput-boolean p1, p0, Landroid/net/wifi/owm/OwmHttpMonitor;->mWifiEnabled:Z

    .line 165
    nop

    .line 170
    return-void
.end method
