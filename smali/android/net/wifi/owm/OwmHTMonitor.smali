.class public Landroid/net/wifi/owm/OwmHTMonitor;
.super Ljava/lang/Object;
.source "OwmHTMonitor.java"

# interfaces
.implements Landroid/net/wifi/owm/IOwmMonitorCommon;
.implements Landroid/net/wifi/owm/IOwmNetHealthCommon;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/owm/OwmHTMonitor$HT40GameInfo;
    }
.end annotation


# static fields
.field private static final blacklist DEFAULT_INTERFACE_NAME:Ljava/lang/String; = "wlan0"

.field private static final blacklist TAG:Ljava/lang/String; = "OwmHTMonitor"

.field private static volatile blacklist sInstance:Landroid/net/wifi/owm/OwmHTMonitor;


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mHT40GameInfo:Landroid/net/wifi/owm/OwmHTMonitor$HT40GameInfo;

.field private blacklist mHT40StartRttRecord:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIsHT40StateIn:Z

.field private blacklist mIsStaConnect40M:Z

.field private blacklist mIsWifiConnected:Z

.field private blacklist mVerboseLoggingEnabled:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 31
    const/4 v0, 0x0

    sput-object v0, Landroid/net/wifi/owm/OwmHTMonitor;->sInstance:Landroid/net/wifi/owm/OwmHTMonitor;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/net/wifi/owm/OwmHTMonitor$HT40GameInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/net/wifi/owm/OwmHTMonitor$HT40GameInfo;-><init>(Landroid/net/wifi/owm/OwmHTMonitor;Landroid/net/wifi/owm/OwmHTMonitor$HT40GameInfo-IA;)V

    iput-object v0, p0, Landroid/net/wifi/owm/OwmHTMonitor;->mHT40GameInfo:Landroid/net/wifi/owm/OwmHTMonitor$HT40GameInfo;

    .line 36
    iput-object v1, p0, Landroid/net/wifi/owm/OwmHTMonitor;->mHT40StartRttRecord:Ljava/util/Map;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/owm/OwmHTMonitor;->mVerboseLoggingEnabled:Z

    .line 38
    iput-boolean v0, p0, Landroid/net/wifi/owm/OwmHTMonitor;->mIsStaConnect40M:Z

    .line 39
    iput-boolean v0, p0, Landroid/net/wifi/owm/OwmHTMonitor;->mIsWifiConnected:Z

    .line 40
    iput-boolean v0, p0, Landroid/net/wifi/owm/OwmHTMonitor;->mIsHT40StateIn:Z

    .line 43
    iput-object p1, p0, Landroid/net/wifi/owm/OwmHTMonitor;->mContext:Landroid/content/Context;

    .line 44
    return-void
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

    .line 172
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 173
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/net/wifi/owm/OwmHTMonitor;->mHT40GameInfo:Landroid/net/wifi/owm/OwmHTMonitor$HT40GameInfo;

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmHTMonitor$HT40GameInfo;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OwmHTMonitor"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    return-object v0
.end method

.method public static whitelist getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmHTMonitor;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 47
    sget-object v0, Landroid/net/wifi/owm/OwmHTMonitor;->sInstance:Landroid/net/wifi/owm/OwmHTMonitor;

    if-nez v0, :cond_1

    .line 48
    const-class v0, Landroid/net/wifi/owm/OwmHTMonitor;

    monitor-enter v0

    .line 49
    :try_start_0
    sget-object v1, Landroid/net/wifi/owm/OwmHTMonitor;->sInstance:Landroid/net/wifi/owm/OwmHTMonitor;

    if-nez v1, :cond_0

    .line 50
    new-instance v1, Landroid/net/wifi/owm/OwmHTMonitor;

    invoke-direct {v1, p0}, Landroid/net/wifi/owm/OwmHTMonitor;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/net/wifi/owm/OwmHTMonitor;->sInstance:Landroid/net/wifi/owm/OwmHTMonitor;

    .line 52
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 55
    :cond_1
    :goto_0
    sget-object v0, Landroid/net/wifi/owm/OwmHTMonitor;->sInstance:Landroid/net/wifi/owm/OwmHTMonitor;

    return-object v0
.end method

.method private blacklist handleHT40()V
    .locals 11

    .line 94
    const-string v0, "2GRttBadEvtCnt"

    const-string v1, "2GGoodRssiRttBadTimeSec"

    const-string v2, "2GRttBadTimeSec"

    const-string v3, "2GRttPoorTimeSec"

    const-string v4, "2GRttNormTimeSec"

    const-string v5, "OwmHTMonitor"

    const-string v6, "2GRttGoodTimeSec"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleHT 40 isConnected="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Landroid/net/wifi/owm/OwmHTMonitor;->mIsWifiConnected:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "isStaConnect24G="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0}, Landroid/net/wifi/owm/OwmHTMonitor;->isStaConnect24GHz()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "isStaConnect40M="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Landroid/net/wifi/owm/OwmHTMonitor;->mIsStaConnect40M:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Landroid/net/wifi/owm/OwmHTMonitor;->logD(Ljava/lang/String;)V

    .line 96
    new-instance v7, Landroid/net/wifi/owm/OwmHTMonitor$HT40GameInfo;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Landroid/net/wifi/owm/OwmHTMonitor$HT40GameInfo;-><init>(Landroid/net/wifi/owm/OwmHTMonitor;Landroid/net/wifi/owm/OwmHTMonitor$HT40GameInfo-IA;)V

    .line 98
    .local v7, "tmpHT40GameInfo":Landroid/net/wifi/owm/OwmHTMonitor$HT40GameInfo;
    iget-boolean v8, p0, Landroid/net/wifi/owm/OwmHTMonitor;->mIsWifiConnected:Z

    if-eqz v8, :cond_0

    invoke-direct {p0}, Landroid/net/wifi/owm/OwmHTMonitor;->isStaConnect24GHz()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-boolean v8, p0, Landroid/net/wifi/owm/OwmHTMonitor;->mIsStaConnect40M:Z

    if-eqz v8, :cond_0

    iget-boolean v8, p0, Landroid/net/wifi/owm/OwmHTMonitor;->mIsHT40StateIn:Z

    if-nez v8, :cond_0

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/owm/OwmHTMonitor;->mIsHT40StateIn:Z

    .line 100
    iget-object v0, p0, Landroid/net/wifi/owm/OwmHTMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OplusOwmMonitorKit;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->getWifiGameLatencyInfo()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/owm/OwmHTMonitor;->mHT40StartRttRecord:Ljava/util/Map;

    .line 101
    return-void

    .line 104
    :cond_0
    iget-object v8, p0, Landroid/net/wifi/owm/OwmHTMonitor;->mHT40StartRttRecord:Ljava/util/Map;

    if-nez v8, :cond_1

    .line 105
    return-void

    .line 108
    :cond_1
    iget-boolean v8, p0, Landroid/net/wifi/owm/OwmHTMonitor;->mIsWifiConnected:Z

    if-nez v8, :cond_3

    .line 109
    iget-object v8, p0, Landroid/net/wifi/owm/OwmHTMonitor;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OplusOwmMonitorKit;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->getWifiGameLatencyInfo()Ljava/util/Map;

    move-result-object v8

    .line 111
    .local v8, "ht40EndRttRecord":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iget-object v10, p0, Landroid/net/wifi/owm/OwmHTMonitor;->mHT40StartRttRecord:Ljava/util/Map;

    .line 112
    invoke-interface {v10, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sub-int/2addr v9, v6

    iput v9, v7, Landroid/net/wifi/owm/OwmHTMonitor$HT40GameInfo;->m2GRttGoodTimeSec:I

    .line 113
    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iget-object v9, p0, Landroid/net/wifi/owm/OwmHTMonitor;->mHT40StartRttRecord:Ljava/util/Map;

    .line 114
    invoke-interface {v9, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sub-int/2addr v6, v4

    iput v6, v7, Landroid/net/wifi/owm/OwmHTMonitor$HT40GameInfo;->m2GRttNormTimeSec:I

    .line 115
    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iget-object v6, p0, Landroid/net/wifi/owm/OwmHTMonitor;->mHT40StartRttRecord:Ljava/util/Map;

    .line 116
    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sub-int/2addr v4, v3

    iput v4, v7, Landroid/net/wifi/owm/OwmHTMonitor$HT40GameInfo;->m2GRttPoorTimeSec:I

    .line 117
    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Landroid/net/wifi/owm/OwmHTMonitor;->mHT40StartRttRecord:Ljava/util/Map;

    .line 118
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sub-int/2addr v3, v2

    iput v3, v7, Landroid/net/wifi/owm/OwmHTMonitor$HT40GameInfo;->m2GRttBadTimeSec:I

    .line 119
    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Landroid/net/wifi/owm/OwmHTMonitor;->mHT40StartRttRecord:Ljava/util/Map;

    .line 120
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sub-int/2addr v2, v1

    iput v2, v7, Landroid/net/wifi/owm/OwmHTMonitor$HT40GameInfo;->m2GGoodRssiRttBadTimeSec:I

    .line 121
    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Landroid/net/wifi/owm/OwmHTMonitor;->mHT40StartRttRecord:Ljava/util/Map;

    .line 122
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sub-int/2addr v1, v0

    iput v1, v7, Landroid/net/wifi/owm/OwmHTMonitor$HT40GameInfo;->m2GRttBadEvtCnt:I

    .line 124
    iget v0, v7, Landroid/net/wifi/owm/OwmHTMonitor$HT40GameInfo;->m2GRttGoodTimeSec:I

    iget v1, v7, Landroid/net/wifi/owm/OwmHTMonitor$HT40GameInfo;->m2GRttNormTimeSec:I

    add-int/2addr v0, v1

    iget v1, v7, Landroid/net/wifi/owm/OwmHTMonitor$HT40GameInfo;->m2GRttPoorTimeSec:I

    add-int/2addr v0, v1

    iget v1, v7, Landroid/net/wifi/owm/OwmHTMonitor$HT40GameInfo;->m2GRttBadTimeSec:I

    add-int/2addr v0, v1

    .line 127
    .local v0, "tempSum":I
    if-gez v0, :cond_2

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleHT40, tempSum <=0 do nothing, tempSum = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-virtual {v7}, Landroid/net/wifi/owm/OwmHTMonitor$HT40GameInfo;->reset()V

    .line 130
    return-void

    .line 132
    :cond_2
    iget-object v1, p0, Landroid/net/wifi/owm/OwmHTMonitor;->mHT40GameInfo:Landroid/net/wifi/owm/OwmHTMonitor$HT40GameInfo;

    iget v2, v1, Landroid/net/wifi/owm/OwmHTMonitor$HT40GameInfo;->m2GRttGoodTimeSec:I

    iget v3, v7, Landroid/net/wifi/owm/OwmHTMonitor$HT40GameInfo;->m2GRttGoodTimeSec:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/net/wifi/owm/OwmHTMonitor$HT40GameInfo;->m2GRttGoodTimeSec:I

    .line 133
    iget-object v1, p0, Landroid/net/wifi/owm/OwmHTMonitor;->mHT40GameInfo:Landroid/net/wifi/owm/OwmHTMonitor$HT40GameInfo;

    iget v2, v1, Landroid/net/wifi/owm/OwmHTMonitor$HT40GameInfo;->m2GRttNormTimeSec:I

    iget v3, v7, Landroid/net/wifi/owm/OwmHTMonitor$HT40GameInfo;->m2GRttNormTimeSec:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/net/wifi/owm/OwmHTMonitor$HT40GameInfo;->m2GRttNormTimeSec:I

    .line 134
    iget-object v1, p0, Landroid/net/wifi/owm/OwmHTMonitor;->mHT40GameInfo:Landroid/net/wifi/owm/OwmHTMonitor$HT40GameInfo;

    iget v2, v1, Landroid/net/wifi/owm/OwmHTMonitor$HT40GameInfo;->m2GRttPoorTimeSec:I

    iget v3, v7, Landroid/net/wifi/owm/OwmHTMonitor$HT40GameInfo;->m2GRttPoorTimeSec:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/net/wifi/owm/OwmHTMonitor$HT40GameInfo;->m2GRttPoorTimeSec:I

    .line 135
    iget-object v1, p0, Landroid/net/wifi/owm/OwmHTMonitor;->mHT40GameInfo:Landroid/net/wifi/owm/OwmHTMonitor$HT40GameInfo;

    iget v2, v1, Landroid/net/wifi/owm/OwmHTMonitor$HT40GameInfo;->m2GRttBadTimeSec:I

    iget v3, v7, Landroid/net/wifi/owm/OwmHTMonitor$HT40GameInfo;->m2GRttBadTimeSec:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/net/wifi/owm/OwmHTMonitor$HT40GameInfo;->m2GRttBadTimeSec:I

    .line 136
    iget-object v1, p0, Landroid/net/wifi/owm/OwmHTMonitor;->mHT40GameInfo:Landroid/net/wifi/owm/OwmHTMonitor$HT40GameInfo;

    iget v2, v1, Landroid/net/wifi/owm/OwmHTMonitor$HT40GameInfo;->m2GGoodRssiRttBadTimeSec:I

    iget v3, v7, Landroid/net/wifi/owm/OwmHTMonitor$HT40GameInfo;->m2GGoodRssiRttBadTimeSec:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/net/wifi/owm/OwmHTMonitor$HT40GameInfo;->m2GGoodRssiRttBadTimeSec:I

    .line 137
    iget-object v1, p0, Landroid/net/wifi/owm/OwmHTMonitor;->mHT40GameInfo:Landroid/net/wifi/owm/OwmHTMonitor$HT40GameInfo;

    iget v2, v1, Landroid/net/wifi/owm/OwmHTMonitor$HT40GameInfo;->m2GRttBadEvtCnt:I

    iget v3, v7, Landroid/net/wifi/owm/OwmHTMonitor$HT40GameInfo;->m2GRttBadEvtCnt:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/net/wifi/owm/OwmHTMonitor$HT40GameInfo;->m2GRttBadEvtCnt:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .end local v0    # "tempSum":I
    nop

    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/owm/OwmHTMonitor;->mIsHT40StateIn:Z

    goto :goto_0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleHT40, calu rtt catch exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {v7}, Landroid/net/wifi/owm/OwmHTMonitor$HT40GameInfo;->reset()V

    .line 143
    return-void

    .line 148
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v8    # "ht40EndRttRecord":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    :goto_0
    return-void
.end method

.method private blacklist isStaConnect24GHz()Z
    .locals 1

    .line 59
    iget-object v0, p0, Landroid/net/wifi/owm/OwmHTMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmBaseUtils;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmBaseUtils;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/owm/OwmBaseUtils;->isConnect24GHz()Z

    move-result v0

    return v0
.end method

.method private blacklist logD(Ljava/lang/String;)V
    .locals 1
    .param p1, "log"    # Ljava/lang/String;

    .line 202
    iget-boolean v0, p0, Landroid/net/wifi/owm/OwmHTMonitor;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 203
    const-string v0, "OwmHTMonitor"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_0
    return-void
.end method

.method private blacklist resetAllRecord()V
    .locals 1

    .line 168
    iget-object v0, p0, Landroid/net/wifi/owm/OwmHTMonitor;->mHT40GameInfo:Landroid/net/wifi/owm/OwmHTMonitor$HT40GameInfo;

    invoke-virtual {v0}, Landroid/net/wifi/owm/OwmHTMonitor$HT40GameInfo;->reset()V

    .line 169
    return-void
.end method


# virtual methods
.method public whitelist enableVerboseLogging(Z)V
    .locals 0
    .param p1, "verbose"    # Z

    .line 198
    iput-boolean p1, p0, Landroid/net/wifi/owm/OwmHTMonitor;->mVerboseLoggingEnabled:Z

    .line 199
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

    .line 183
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmHTMonitor;->generateRecordToDatabaseMap()Ljava/util/Map;

    move-result-object v0

    .line 184
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-object v0
.end method

.method public whitelist getRecordToDatabase()Ljava/lang/String;
    .locals 2

    .line 178
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmHTMonitor;->generateRecordToDatabaseMap()Ljava/util/Map;

    move-result-object v0

    .line 179
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist saveRecordToDatabase()V
    .locals 5

    .line 188
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmHTMonitor;->generateRecordToDatabaseMap()Ljava/util/Map;

    move-result-object v0

    .line 190
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OwmHTMonitor saveRecordToDatabase, the map: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/wifi/owm/OwmHTMonitor;->logD(Ljava/lang/String;)V

    .line 192
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmHTMonitor;->resetAllRecord()V

    .line 194
    iget-object v1, p0, Landroid/net/wifi/owm/OwmHTMonitor;->mContext:Landroid/content/Context;

    const-string v2, "wifi_fool_proof"

    const-string v3, "OwmHttpMonitor"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Loplus/util/OplusStatistics;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 195
    return-void
.end method

.method public whitelist setStaConnect40M(I)V
    .locals 2
    .param p1, "channelBandWidth"    # I

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setStaConnect40M channelBandWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmHTMonitor;->logD(Ljava/lang/String;)V

    .line 158
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 159
    iput-boolean v0, p0, Landroid/net/wifi/owm/OwmHTMonitor;->mIsStaConnect40M:Z

    goto :goto_0

    .line 161
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/owm/OwmHTMonitor;->mIsStaConnect40M:Z

    .line 164
    :goto_0
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmHTMonitor;->handleHT40()V

    .line 165
    return-void
.end method

.method public whitelist setWifiConnState(Z)V
    .locals 2
    .param p1, "isConnected"    # Z

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setWifiConnState isConnected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmHTMonitor;->logD(Ljava/lang/String;)V

    .line 152
    iput-boolean p1, p0, Landroid/net/wifi/owm/OwmHTMonitor;->mIsWifiConnected:Z

    .line 153
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmHTMonitor;->handleHT40()V

    .line 154
    return-void
.end method
