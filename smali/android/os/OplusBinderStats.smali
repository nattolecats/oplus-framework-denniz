.class public Landroid/os/OplusBinderStats;
.super Ljava/lang/Object;
.source "OplusBinderStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/OplusBinderStats$BufferFdCallback;,
        Landroid/os/OplusBinderStats$HwServiceDeathCallback;
    }
.end annotation


# static fields
.field private static final blacklist HWSERVICE_COOKIE_BINDERSTATS:J = 0x0L

.field private static final blacklist TAG:Ljava/lang/String; = "BinderStats"

.field private static blacklist sIBinderStats:Lvendor/oplus/hardware/binderstats/V1_0/IBinderStats;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfputsIBinderStats(Lvendor/oplus/hardware/binderstats/V1_0/IBinderStats;)V
    .locals 0

    sput-object p0, Landroid/os/OplusBinderStats;->sIBinderStats:Lvendor/oplus/hardware/binderstats/V1_0/IBinderStats;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 24
    const/4 v0, 0x0

    sput-object v0, Landroid/os/OplusBinderStats;->sIBinderStats:Lvendor/oplus/hardware/binderstats/V1_0/IBinderStats;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist enable(I)I
    .locals 6
    .param p0, "flag"    # I

    .line 95
    const-class v0, Landroid/os/OplusBinderStats;

    monitor-enter v0

    .line 96
    :try_start_0
    invoke-static {}, Landroid/os/OplusBinderStats;->getService()Lvendor/oplus/hardware/binderstats/V1_0/IBinderStats;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 98
    :try_start_1
    invoke-static {}, Landroid/os/OplusBinderStats;->getService()Lvendor/oplus/hardware/binderstats/V1_0/IBinderStats;

    move-result-object v1

    invoke-interface {v1, p0}, Lvendor/oplus/hardware/binderstats/V1_0/IBinderStats;->enable(I)I

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v1

    .line 99
    :catch_0
    move-exception v1

    .line 100
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "BinderStats"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enable failed! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    monitor-exit v0

    return v2

    .line 104
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    monitor-exit v0

    return v2

    .line 106
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static blacklist exist()Z
    .locals 2

    .line 60
    const-class v0, Landroid/os/OplusBinderStats;

    monitor-enter v0

    .line 61
    :try_start_0
    invoke-static {}, Landroid/os/OplusBinderStats;->getService()Lvendor/oplus/hardware/binderstats/V1_0/IBinderStats;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 62
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static blacklist getBufferFd()[I
    .locals 6

    .line 148
    const-class v0, Landroid/os/OplusBinderStats;

    monitor-enter v0

    .line 149
    :try_start_0
    invoke-static {}, Landroid/os/OplusBinderStats;->getService()Lvendor/oplus/hardware/binderstats/V1_0/IBinderStats;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 151
    :try_start_1
    new-instance v1, Landroid/os/OplusBinderStats$BufferFdCallback;

    invoke-direct {v1}, Landroid/os/OplusBinderStats$BufferFdCallback;-><init>()V

    .line 152
    .local v1, "callback":Landroid/os/OplusBinderStats$BufferFdCallback;
    invoke-static {}, Landroid/os/OplusBinderStats;->getService()Lvendor/oplus/hardware/binderstats/V1_0/IBinderStats;

    move-result-object v3

    invoke-interface {v3, v1}, Lvendor/oplus/hardware/binderstats/V1_0/IBinderStats;->getBufferFd(Lvendor/oplus/hardware/binderstats/V1_0/IBinderStats$getBufferFdCallback;)V

    .line 153
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Integer;

    const/4 v4, 0x0

    invoke-virtual {v1}, Landroid/os/OplusBinderStats$BufferFdCallback;->getFd()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v1}, Landroid/os/OplusBinderStats$BufferFdCallback;->getSize()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 154
    .local v3, "retList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Landroid/os/OplusBinderStats$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Landroid/os/OplusBinderStats$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object v2

    .line 155
    .end local v1    # "callback":Landroid/os/OplusBinderStats$BufferFdCallback;
    .end local v3    # "retList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v1

    .line 156
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "BinderStats"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBufferFd failed! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    monitor-exit v0

    return-object v2

    .line 160
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    monitor-exit v0

    return-object v2

    .line 162
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private static blacklist getService()Lvendor/oplus/hardware/binderstats/V1_0/IBinderStats;
    .locals 4

    .line 39
    sget-object v0, Landroid/os/OplusBinderStats;->sIBinderStats:Lvendor/oplus/hardware/binderstats/V1_0/IBinderStats;

    if-nez v0, :cond_1

    .line 41
    :try_start_0
    invoke-static {}, Lvendor/oplus/hardware/binderstats/V1_0/IBinderStats;->getService()Lvendor/oplus/hardware/binderstats/V1_0/IBinderStats;

    move-result-object v0

    sput-object v0, Landroid/os/OplusBinderStats;->sIBinderStats:Lvendor/oplus/hardware/binderstats/V1_0/IBinderStats;

    .line 42
    if-eqz v0, :cond_0

    .line 43
    new-instance v1, Landroid/os/OplusBinderStats$HwServiceDeathCallback;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/os/OplusBinderStats$HwServiceDeathCallback;-><init>(Landroid/os/OplusBinderStats$HwServiceDeathCallback-IA;)V

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lvendor/oplus/hardware/binderstats/V1_0/IBinderStats;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :cond_0
    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get IBinderStats hal service, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BinderStats"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    sget-object v0, Landroid/os/OplusBinderStats;->sIBinderStats:Lvendor/oplus/hardware/binderstats/V1_0/IBinderStats;

    return-object v0
.end method

.method public static blacklist getVersionCode()I
    .locals 6

    .line 73
    const-class v0, Landroid/os/OplusBinderStats;

    monitor-enter v0

    .line 74
    :try_start_0
    invoke-static {}, Landroid/os/OplusBinderStats;->getService()Lvendor/oplus/hardware/binderstats/V1_0/IBinderStats;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 76
    :try_start_1
    invoke-static {}, Landroid/os/OplusBinderStats;->getService()Lvendor/oplus/hardware/binderstats/V1_0/IBinderStats;

    move-result-object v1

    invoke-interface {v1}, Lvendor/oplus/hardware/binderstats/V1_0/IBinderStats;->getVersionCode()I

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v1

    .line 77
    :catch_0
    move-exception v1

    .line 78
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "BinderStats"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getVersionCode failed! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    monitor-exit v0

    return v2

    .line 82
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    monitor-exit v0

    return v2

    .line 84
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method static synthetic blacklist lambda$getBufferFd$0(Ljava/lang/Integer;)I
    .locals 1
    .param p0, "i"    # Ljava/lang/Integer;

    .line 154
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method
