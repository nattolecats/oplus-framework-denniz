.class public Landroid/net/wifi/owm/OwmCoexistMonitor;
.super Ljava/lang/Object;
.source "OwmCoexistMonitor.java"

# interfaces
.implements Landroid/net/wifi/owm/IOwmMonitorCommon;
.implements Landroid/net/wifi/owm/IOwmNetHealthCommon;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/owm/OwmCoexistMonitor$BtStaCoexistGameInfo;,
        Landroid/net/wifi/owm/OwmCoexistMonitor$CoexistBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "OwmCoexistMonitor"

.field private static final blacklist WIFI_AP_STATE_DISABLED:I = 0xb

.field private static final blacklist WIFI_AP_STATE_DISABLING:I = 0xa

.field private static final blacklist WIFI_AP_STATE_ENABLED:I = 0xd

.field private static final blacklist WIFI_AP_STATE_ENABLING:I = 0xc

.field private static final blacklist WIFI_AP_STATE_FAILED:I = 0xe

.field private static final blacklist WIFI_STATE_DISABLED:I = 0x1

.field private static final blacklist WIFI_STATE_DISABLING:I = 0x0

.field private static final blacklist WIFI_STATE_ENABLED:I = 0x3

.field private static final blacklist WIFI_STATE_ENABLING:I = 0x2

.field private static final blacklist WIFI_STATE_UNKNOWN:I = 0x4

.field private static volatile blacklist sInstance:Landroid/net/wifi/owm/OwmCoexistMonitor;


# instance fields
.field private blacklist isStaBtCoexist:Z

.field private blacklist isStaP2pCoexist:Z

.field private blacklist isStaSoftApCoexist:Z

.field private blacklist mA2dpPlayingState:I

.field private blacklist mBroadcastReceiver:Landroid/net/wifi/owm/OwmCoexistMonitor$CoexistBroadcastReceiver;

.field private blacklist mBtStaCoexistGameInfo:Landroid/net/wifi/owm/OwmCoexistMonitor$BtStaCoexistGameInfo;

.field private blacklist mBtState:I

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mHeadsetAudioState:I

.field private blacklist mP2pConnectedOrConnecting:Z

.field private blacklist mSoftApState:I

.field private blacklist mStaBtCoexistStartRttRecord:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mVerboseLoggingEnabled:Z

.field private blacklist mWifiStaState:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmA2dpPlayingState(Landroid/net/wifi/owm/OwmCoexistMonitor;I)V
    .locals 0

    iput p1, p0, Landroid/net/wifi/owm/OwmCoexistMonitor;->mA2dpPlayingState:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmHeadsetAudioState(Landroid/net/wifi/owm/OwmCoexistMonitor;I)V
    .locals 0

    iput p1, p0, Landroid/net/wifi/owm/OwmCoexistMonitor;->mHeadsetAudioState:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlogD(Landroid/net/wifi/owm/OwmCoexistMonitor;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/owm/OwmCoexistMonitor;->logD(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 52
    const/4 v0, 0x0

    sput-object v0, Landroid/net/wifi/owm/OwmCoexistMonitor;->sInstance:Landroid/net/wifi/owm/OwmCoexistMonitor;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/owm/OwmCoexistMonitor;->mBroadcastReceiver:Landroid/net/wifi/owm/OwmCoexistMonitor$CoexistBroadcastReceiver;

    .line 57
    new-instance v1, Landroid/net/wifi/owm/OwmCoexistMonitor$BtStaCoexistGameInfo;

    invoke-direct {v1, p0, v0}, Landroid/net/wifi/owm/OwmCoexistMonitor$BtStaCoexistGameInfo;-><init>(Landroid/net/wifi/owm/OwmCoexistMonitor;Landroid/net/wifi/owm/OwmCoexistMonitor$BtStaCoexistGameInfo-IA;)V

    iput-object v1, p0, Landroid/net/wifi/owm/OwmCoexistMonitor;->mBtStaCoexistGameInfo:Landroid/net/wifi/owm/OwmCoexistMonitor$BtStaCoexistGameInfo;

    .line 59
    const/16 v1, 0xb

    iput v1, p0, Landroid/net/wifi/owm/OwmCoexistMonitor;->mSoftApState:I

    .line 60
    const/4 v2, 0x4

    iput v2, p0, Landroid/net/wifi/owm/OwmCoexistMonitor;->mWifiStaState:I

    .line 61
    const/4 v2, 0x0

    iput v2, p0, Landroid/net/wifi/owm/OwmCoexistMonitor;->mBtState:I

    .line 63
    iput-boolean v2, p0, Landroid/net/wifi/owm/OwmCoexistMonitor;->mP2pConnectedOrConnecting:Z

    .line 65
    iput-boolean v2, p0, Landroid/net/wifi/owm/OwmCoexistMonitor;->isStaSoftApCoexist:Z

    .line 66
    iput-boolean v2, p0, Landroid/net/wifi/owm/OwmCoexistMonitor;->isStaP2pCoexist:Z

    .line 67
    iput-boolean v2, p0, Landroid/net/wifi/owm/OwmCoexistMonitor;->isStaBtCoexist:Z

    .line 69
    iput-object v0, p0, Landroid/net/wifi/owm/OwmCoexistMonitor;->mStaBtCoexistStartRttRecord:Ljava/util/Map;

    .line 71
    iput v1, p0, Landroid/net/wifi/owm/OwmCoexistMonitor;->mA2dpPlayingState:I

    .line 72
    const/16 v0, 0xa

    iput v0, p0, Landroid/net/wifi/owm/OwmCoexistMonitor;->mHeadsetAudioState:I

    .line 74
    iput-boolean v2, p0, Landroid/net/wifi/owm/OwmCoexistMonitor;->mVerboseLoggingEnabled:Z

    .line 77
    iput-object p1, p0, Landroid/net/wifi/owm/OwmCoexistMonitor;->mContext:Landroid/content/Context;

    .line 78
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmCoexistMonitor;->setupCoexistBroadcastReceiver()V

    .line 79
    return-void
.end method

.method private blacklist btStaCoexistChangeIn(I)Z
    .locals 4
    .param p1, "btState"    # I

    .line 208
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    .line 211
    .local v2, "isBtConnect":Z
    :goto_1
    if-eqz v2, :cond_2

    invoke-direct {p0}, Landroid/net/wifi/owm/OwmCoexistMonitor;->isStaConnect24GHz()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 212
    return v1

    .line 214
    :cond_2
    return v0
.end method

.method private blacklist generateRecordToDatabaseMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 310
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 312
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/net/wifi/owm/OwmCoexistMonitor;->mBtStaCoexistGameInfo:Landroid/net/wifi/owm/OwmCoexistMonitor$BtStaCoexistGameInfo;

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmCoexistMonitor$BtStaCoexistGameInfo;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OwmCoexistMonitor"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    return-object v0
.end method

.method private blacklist getBtDetailStat()Ljava/lang/String;
    .locals 2

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\"A2dpPlayingState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/owm/OwmCoexistMonitor;->mA2dpPlayingState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", HeadsetAudioState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/owm/OwmCoexistMonitor;->mHeadsetAudioState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmCoexistMonitor;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 82
    sget-object v0, Landroid/net/wifi/owm/OwmCoexistMonitor;->sInstance:Landroid/net/wifi/owm/OwmCoexistMonitor;

    if-nez v0, :cond_1

    .line 83
    const-class v0, Landroid/net/wifi/owm/OwmCoexistMonitor;

    monitor-enter v0

    .line 84
    :try_start_0
    sget-object v1, Landroid/net/wifi/owm/OwmCoexistMonitor;->sInstance:Landroid/net/wifi/owm/OwmCoexistMonitor;

    if-nez v1, :cond_0

    .line 85
    new-instance v1, Landroid/net/wifi/owm/OwmCoexistMonitor;

    invoke-direct {v1, p0}, Landroid/net/wifi/owm/OwmCoexistMonitor;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/net/wifi/owm/OwmCoexistMonitor;->sInstance:Landroid/net/wifi/owm/OwmCoexistMonitor;

    .line 87
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 90
    :cond_1
    :goto_0
    sget-object v0, Landroid/net/wifi/owm/OwmCoexistMonitor;->sInstance:Landroid/net/wifi/owm/OwmCoexistMonitor;

    return-object v0
.end method

.method private blacklist handleBtStaCoexist(I)V
    .locals 11
    .param p1, "btState"    # I

    .line 220
    const-string v0, "2GRttBadEvtCnt"

    const-string v1, "2GGoodRssiRttBadTimeSec"

    const-string v2, "2GRttBadTimeSec"

    const-string v3, "2GRttPoorTimeSec"

    const-string v4, "2GRttNormTimeSec"

    const-string v5, "OwmCoexistMonitor"

    const-string v6, "2GRttGoodTimeSec"

    new-instance v7, Landroid/net/wifi/owm/OwmCoexistMonitor$BtStaCoexistGameInfo;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Landroid/net/wifi/owm/OwmCoexistMonitor$BtStaCoexistGameInfo;-><init>(Landroid/net/wifi/owm/OwmCoexistMonitor;Landroid/net/wifi/owm/OwmCoexistMonitor$BtStaCoexistGameInfo-IA;)V

    .line 222
    .local v7, "tmpBtStaCoexistGameInfo":Landroid/net/wifi/owm/OwmCoexistMonitor$BtStaCoexistGameInfo;
    invoke-direct {p0, p1}, Landroid/net/wifi/owm/OwmCoexistMonitor;->btStaCoexistChangeIn(I)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-boolean v8, p0, Landroid/net/wifi/owm/OwmCoexistMonitor;->isStaBtCoexist:Z

    if-nez v8, :cond_0

    .line 223
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/owm/OwmCoexistMonitor;->isStaBtCoexist:Z

    .line 224
    iget-object v0, p0, Landroid/net/wifi/owm/OwmCoexistMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OplusOwmMonitorKit;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->sendBtcEventMesg()V

    .line 225
    iget-object v0, p0, Landroid/net/wifi/owm/OwmCoexistMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OplusOwmMonitorKit;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->getWifiGameLatencyInfo()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/owm/OwmCoexistMonitor;->mStaBtCoexistStartRttRecord:Ljava/util/Map;

    .line 226
    return-void

    .line 229
    :cond_0
    iget-object v8, p0, Landroid/net/wifi/owm/OwmCoexistMonitor;->mStaBtCoexistStartRttRecord:Ljava/util/Map;

    if-nez v8, :cond_1

    .line 230
    return-void

    .line 233
    :cond_1
    invoke-direct {p0, p1}, Landroid/net/wifi/owm/OwmCoexistMonitor;->btStaCoexistChangeIn(I)Z

    move-result v8

    if-nez v8, :cond_3

    .line 234
    iget-object v8, p0, Landroid/net/wifi/owm/OwmCoexistMonitor;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OplusOwmMonitorKit;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->getWifiGameLatencyInfo()Ljava/util/Map;

    move-result-object v8

    .line 235
    .local v8, "staBtCoexistEndRttRecord":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/net/wifi/owm/OwmCoexistMonitor;->isStaBtCoexist:Z

    .line 237
    :try_start_0
    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iget-object v10, p0, Landroid/net/wifi/owm/OwmCoexistMonitor;->mStaBtCoexistStartRttRecord:Ljava/util/Map;

    .line 238
    invoke-interface {v10, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sub-int/2addr v9, v6

    iput v9, v7, Landroid/net/wifi/owm/OwmCoexistMonitor$BtStaCoexistGameInfo;->m2GRttGoodTimeSec:I

    .line 239
    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iget-object v9, p0, Landroid/net/wifi/owm/OwmCoexistMonitor;->mStaBtCoexistStartRttRecord:Ljava/util/Map;

    .line 240
    invoke-interface {v9, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sub-int/2addr v6, v4

    iput v6, v7, Landroid/net/wifi/owm/OwmCoexistMonitor$BtStaCoexistGameInfo;->m2GRttNormTimeSec:I

    .line 241
    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iget-object v6, p0, Landroid/net/wifi/owm/OwmCoexistMonitor;->mStaBtCoexistStartRttRecord:Ljava/util/Map;

    .line 242
    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sub-int/2addr v4, v3

    iput v4, v7, Landroid/net/wifi/owm/OwmCoexistMonitor$BtStaCoexistGameInfo;->m2GRttPoorTimeSec:I

    .line 243
    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Landroid/net/wifi/owm/OwmCoexistMonitor;->mStaBtCoexistStartRttRecord:Ljava/util/Map;

    .line 244
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sub-int/2addr v3, v2

    iput v3, v7, Landroid/net/wifi/owm/OwmCoexistMonitor$BtStaCoexistGameInfo;->m2GRttBadTimeSec:I

    .line 245
    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Landroid/net/wifi/owm/OwmCoexistMonitor;->mStaBtCoexistStartRttRecord:Ljava/util/Map;

    .line 246
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sub-int/2addr v2, v1

    iput v2, v7, Landroid/net/wifi/owm/OwmCoexistMonitor$BtStaCoexistGameInfo;->m2GGoodRssiRttBadTimeSec:I

    .line 247
    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Landroid/net/wifi/owm/OwmCoexistMonitor;->mStaBtCoexistStartRttRecord:Ljava/util/Map;

    .line 248
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sub-int/2addr v1, v0

    iput v1, v7, Landroid/net/wifi/owm/OwmCoexistMonitor$BtStaCoexistGameInfo;->m2GRttBadEvtCnt:I

    .line 250
    iget v0, v7, Landroid/net/wifi/owm/OwmCoexistMonitor$BtStaCoexistGameInfo;->m2GRttGoodTimeSec:I

    iget v1, v7, Landroid/net/wifi/owm/OwmCoexistMonitor$BtStaCoexistGameInfo;->m2GRttNormTimeSec:I

    add-int/2addr v0, v1

    iget v1, v7, Landroid/net/wifi/owm/OwmCoexistMonitor$BtStaCoexistGameInfo;->m2GRttPoorTimeSec:I

    add-int/2addr v0, v1

    iget v1, v7, Landroid/net/wifi/owm/OwmCoexistMonitor$BtStaCoexistGameInfo;->m2GRttBadTimeSec:I

    add-int/2addr v0, v1

    .line 253
    .local v0, "tempSum":I
    if-gez v0, :cond_2

    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleBtStaCoexist, tempSum <=0 do nothing, tempSum = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-virtual {v7}, Landroid/net/wifi/owm/OwmCoexistMonitor$BtStaCoexistGameInfo;->reset()V

    .line 256
    return-void

    .line 259
    :cond_2
    iget-object v1, p0, Landroid/net/wifi/owm/OwmCoexistMonitor;->mBtStaCoexistGameInfo:Landroid/net/wifi/owm/OwmCoexistMonitor$BtStaCoexistGameInfo;

    iget v2, v1, Landroid/net/wifi/owm/OwmCoexistMonitor$BtStaCoexistGameInfo;->m2GRttGoodTimeSec:I

    iget v3, v7, Landroid/net/wifi/owm/OwmCoexistMonitor$BtStaCoexistGameInfo;->m2GRttGoodTimeSec:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/net/wifi/owm/OwmCoexistMonitor$BtStaCoexistGameInfo;->m2GRttGoodTimeSec:I

    .line 260
    iget-object v1, p0, Landroid/net/wifi/owm/OwmCoexistMonitor;->mBtStaCoexistGameInfo:Landroid/net/wifi/owm/OwmCoexistMonitor$BtStaCoexistGameInfo;

    iget v2, v1, Landroid/net/wifi/owm/OwmCoexistMonitor$BtStaCoexistGameInfo;->m2GRttNormTimeSec:I

    iget v3, v7, Landroid/net/wifi/owm/OwmCoexistMonitor$BtStaCoexistGameInfo;->m2GRttNormTimeSec:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/net/wifi/owm/OwmCoexistMonitor$BtStaCoexistGameInfo;->m2GRttNormTimeSec:I

    .line 261
    iget-object v1, p0, Landroid/net/wifi/owm/OwmCoexistMonitor;->mBtStaCoexistGameInfo:Landroid/net/wifi/owm/OwmCoexistMonitor$BtStaCoexistGameInfo;

    iget v2, v1, Landroid/net/wifi/owm/OwmCoexistMonitor$BtStaCoexistGameInfo;->m2GRttPoorTimeSec:I

    iget v3, v7, Landroid/net/wifi/owm/OwmCoexistMonitor$BtStaCoexistGameInfo;->m2GRttPoorTimeSec:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/net/wifi/owm/OwmCoexistMonitor$BtStaCoexistGameInfo;->m2GRttPoorTimeSec:I

    .line 262
    iget-object v1, p0, Landroid/net/wifi/owm/OwmCoexistMonitor;->mBtStaCoexistGameInfo:Landroid/net/wifi/owm/OwmCoexistMonitor$BtStaCoexistGameInfo;

    iget v2, v1, Landroid/net/wifi/owm/OwmCoexistMonitor$BtStaCoexistGameInfo;->m2GRttBadTimeSec:I

    iget v3, v7, Landroid/net/wifi/owm/OwmCoexistMonitor$BtStaCoexistGameInfo;->m2GRttBadTimeSec:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/net/wifi/owm/OwmCoexistMonitor$BtStaCoexistGameInfo;->m2GRttBadTimeSec:I

    .line 263
    iget-object v1, p0, Landroid/net/wifi/owm/OwmCoexistMonitor;->mBtStaCoexistGameInfo:Landroid/net/wifi/owm/OwmCoexistMonitor$BtStaCoexistGameInfo;

    iget v2, v1, Landroid/net/wifi/owm/OwmCoexistMonitor$BtStaCoexistGameInfo;->m2GGoodRssiRttBadTimeSec:I

    iget v3, v7, Landroid/net/wifi/owm/OwmCoexistMonitor$BtStaCoexistGameInfo;->m2GGoodRssiRttBadTimeSec:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/net/wifi/owm/OwmCoexistMonitor$BtStaCoexistGameInfo;->m2GGoodRssiRttBadTimeSec:I

    .line 264
    iget-object v1, p0, Landroid/net/wifi/owm/OwmCoexistMonitor;->mBtStaCoexistGameInfo:Landroid/net/wifi/owm/OwmCoexistMonitor$BtStaCoexistGameInfo;

    iget v2, v1, Landroid/net/wifi/owm/OwmCoexistMonitor$BtStaCoexistGameInfo;->m2GRttBadEvtCnt:I

    iget v3, v7, Landroid/net/wifi/owm/OwmCoexistMonitor$BtStaCoexistGameInfo;->m2GRttBadEvtCnt:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/net/wifi/owm/OwmCoexistMonitor$BtStaCoexistGameInfo;->m2GRttBadEvtCnt:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    .end local v0    # "tempSum":I
    goto :goto_0

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleBtStaCoexist, calu rtt catch exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-virtual {v7}, Landroid/net/wifi/owm/OwmCoexistMonitor$BtStaCoexistGameInfo;->reset()V

    .line 269
    return-void

    .line 272
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v8    # "staBtCoexistEndRttRecord":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    :goto_0
    return-void
.end method

.method private blacklist handleP2pStaCoexist(Z)V
    .locals 1
    .param p1, "p2pConnect"    # Z

    .line 162
    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroid/net/wifi/owm/OwmCoexistMonitor;->isStaConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/owm/OwmCoexistMonitor;->isStaP2pCoexist:Z

    .line 164
    return-void

    .line 167
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/owm/OwmCoexistMonitor;->isStaP2pCoexist:Z

    .line 168
    return-void
.end method

.method private blacklist handleStaSoftApCoexist(I)V
    .locals 4
    .param p1, "softApState"    # I

    .line 137
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0xc

    if-eq p1, v2, :cond_1

    const/16 v2, 0xd

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    .line 139
    .local v2, "isSoftApOn":Z
    :goto_1
    if-eqz v2, :cond_2

    invoke-direct {p0}, Landroid/net/wifi/owm/OwmCoexistMonitor;->isStaConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 140
    iput-boolean v1, p0, Landroid/net/wifi/owm/OwmCoexistMonitor;->isStaSoftApCoexist:Z

    .line 141
    return-void

    .line 144
    :cond_2
    iput-boolean v0, p0, Landroid/net/wifi/owm/OwmCoexistMonitor;->isStaSoftApCoexist:Z

    .line 145
    return-void
.end method

.method private blacklist isStaConnect24GHz()Z
    .locals 1

    .line 148
    iget-object v0, p0, Landroid/net/wifi/owm/OwmCoexistMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmBaseUtils;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmBaseUtils;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/owm/OwmBaseUtils;->isConnect24GHz()Z

    move-result v0

    return v0
.end method

.method private blacklist isStaConnected()Z
    .locals 1

    .line 152
    iget-object v0, p0, Landroid/net/wifi/owm/OwmCoexistMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmBaseUtils;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmBaseUtils;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/owm/OwmBaseUtils;->isWifiConnected()Z

    move-result v0

    return v0
.end method

.method private blacklist logD(Ljava/lang/String;)V
    .locals 1
    .param p1, "log"    # Ljava/lang/String;

    .line 348
    iget-boolean v0, p0, Landroid/net/wifi/owm/OwmCoexistMonitor;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 349
    const-string v0, "OwmCoexistMonitor"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_0
    return-void
.end method

.method private blacklist resetAllRecord()V
    .locals 2

    .line 291
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/owm/OwmCoexistMonitor;->isStaSoftApCoexist:Z

    .line 292
    iput-boolean v0, p0, Landroid/net/wifi/owm/OwmCoexistMonitor;->isStaP2pCoexist:Z

    .line 293
    iput-boolean v0, p0, Landroid/net/wifi/owm/OwmCoexistMonitor;->isStaBtCoexist:Z

    .line 295
    const/16 v1, 0xb

    iput v1, p0, Landroid/net/wifi/owm/OwmCoexistMonitor;->mSoftApState:I

    .line 296
    const/4 v1, 0x4

    iput v1, p0, Landroid/net/wifi/owm/OwmCoexistMonitor;->mWifiStaState:I

    .line 298
    iput v0, p0, Landroid/net/wifi/owm/OwmCoexistMonitor;->mBtState:I

    .line 300
    iput-boolean v0, p0, Landroid/net/wifi/owm/OwmCoexistMonitor;->mP2pConnectedOrConnecting:Z

    .line 302
    iget-object v0, p0, Landroid/net/wifi/owm/OwmCoexistMonitor;->mBtStaCoexistGameInfo:Landroid/net/wifi/owm/OwmCoexistMonitor$BtStaCoexistGameInfo;

    invoke-virtual {v0}, Landroid/net/wifi/owm/OwmCoexistMonitor$BtStaCoexistGameInfo;->reset()V

    .line 303
    return-void
.end method

.method private blacklist setupCoexistBroadcastReceiver()V
    .locals 3

    .line 94
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 96
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.a2dp.profile.action.PLAYING_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    const-string v1, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    new-instance v1, Landroid/net/wifi/owm/OwmCoexistMonitor$CoexistBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/net/wifi/owm/OwmCoexistMonitor$CoexistBroadcastReceiver;-><init>(Landroid/net/wifi/owm/OwmCoexistMonitor;Landroid/net/wifi/owm/OwmCoexistMonitor$CoexistBroadcastReceiver-IA;)V

    iput-object v1, p0, Landroid/net/wifi/owm/OwmCoexistMonitor;->mBroadcastReceiver:Landroid/net/wifi/owm/OwmCoexistMonitor$CoexistBroadcastReceiver;

    .line 100
    iget-object v2, p0, Landroid/net/wifi/owm/OwmCoexistMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 101
    return-void
.end method


# virtual methods
.method public whitelist addBtStateRecord(I)V
    .locals 0
    .param p1, "btState"    # I

    .line 203
    iput p1, p0, Landroid/net/wifi/owm/OwmCoexistMonitor;->mBtState:I

    .line 204
    invoke-direct {p0, p1}, Landroid/net/wifi/owm/OwmCoexistMonitor;->handleBtStaCoexist(I)V

    .line 205
    return-void
.end method

.method public whitelist addP2pStateRecord(Z)V
    .locals 0
    .param p1, "p2pConnectedOrConnecting"    # Z

    .line 157
    iput-boolean p1, p0, Landroid/net/wifi/owm/OwmCoexistMonitor;->mP2pConnectedOrConnecting:Z

    .line 158
    invoke-direct {p0, p1}, Landroid/net/wifi/owm/OwmCoexistMonitor;->handleP2pStaCoexist(Z)V

    .line 159
    return-void
.end method

.method public whitelist addSoftApStateRecord(I)V
    .locals 2
    .param p1, "softApState"    # I

    .line 130
    iput p1, p0, Landroid/net/wifi/owm/OwmCoexistMonitor;->mSoftApState:I

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "softap:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/owm/OwmCoexistMonitor;->mSoftApState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmCoexistMonitor;->logD(Ljava/lang/String;)V

    .line 133
    iget v0, p0, Landroid/net/wifi/owm/OwmCoexistMonitor;->mSoftApState:I

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmCoexistMonitor;->handleStaSoftApCoexist(I)V

    .line 134
    return-void
.end method

.method public whitelist enableVerboseLogging(Z)V
    .locals 0
    .param p1, "verbose"    # Z

    .line 344
    iput-boolean p1, p0, Landroid/net/wifi/owm/OwmCoexistMonitor;->mVerboseLoggingEnabled:Z

    .line 345
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

    .line 323
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 325
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Landroid/net/wifi/owm/OwmCoexistMonitor;->isStaSoftApCoexist:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "SOFTAP-STA"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Landroid/net/wifi/owm/OwmCoexistMonitor;->isStaP2pCoexist:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "P2P-STA"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/owm/OwmCoexistMonitor;->isStaBtCoexist:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BT-STA"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmCoexistMonitor;->getBtDetailStat()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BT-Detail"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    return-object v0
.end method

.method public whitelist getRecordToDatabase()Ljava/lang/String;
    .locals 2

    .line 318
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmCoexistMonitor;->generateRecordToDatabaseMap()Ljava/util/Map;

    move-result-object v0

    .line 319
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist saveRecordToDatabase()V
    .locals 5

    .line 334
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmCoexistMonitor;->generateRecordToDatabaseMap()Ljava/util/Map;

    move-result-object v0

    .line 336
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OwmCoexist saveRecordToDatabase, the map: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/wifi/owm/OwmCoexistMonitor;->logD(Ljava/lang/String;)V

    .line 338
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmCoexistMonitor;->resetAllRecord()V

    .line 340
    iget-object v1, p0, Landroid/net/wifi/owm/OwmCoexistMonitor;->mContext:Landroid/content/Context;

    const-string v2, "wifi_fool_proof"

    const-string v3, "OwmHttpMonitor"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Loplus/util/OplusStatistics;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 341
    return-void
.end method

.method public whitelist setWifiConnState(Z)V
    .locals 2
    .param p1, "isConnected"    # Z

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setWifiConnState, isConnected = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmCoexistMonitor;->logD(Ljava/lang/String;)V

    .line 284
    iget v0, p0, Landroid/net/wifi/owm/OwmCoexistMonitor;->mBtState:I

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmCoexistMonitor;->handleBtStaCoexist(I)V

    .line 285
    iget-boolean v0, p0, Landroid/net/wifi/owm/OwmCoexistMonitor;->mP2pConnectedOrConnecting:Z

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmCoexistMonitor;->handleP2pStaCoexist(Z)V

    .line 286
    iget v0, p0, Landroid/net/wifi/owm/OwmCoexistMonitor;->mSoftApState:I

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmCoexistMonitor;->handleStaSoftApCoexist(I)V

    .line 287
    return-void
.end method
