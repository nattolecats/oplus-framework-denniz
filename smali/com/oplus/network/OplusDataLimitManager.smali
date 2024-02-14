.class public Lcom/oplus/network/OplusDataLimitManager;
.super Ljava/lang/Object;
.source "OplusDataLimitManager.java"


# static fields
.field public static final blacklist DATA_LIMIT_EVENT_OPT_DONE:I = 0x3

.field public static final blacklist DATA_LIMIT_EVENT_START:I = 0x1

.field public static final blacklist DATA_LIMIT_EVENT_STOP:I = 0x2

.field public static final blacklist DATA_LIMIT_STATE_IDLE:I = 0x0

.field public static final blacklist DATA_LIMIT_STATE_RUNNING:I = 0x1

.field public static final blacklist DATA_LIMIT_STATE_WAITING:I = 0x2

.field public static final blacklist DBG:Z = true

.field public static final blacklist SRV_NAME:Ljava/lang/String; = "oplusdatalimit"

.field public static final blacklist TAG:Ljava/lang/String; = "OplusDataLimitManager"

.field private static blacklist sInstance:Lcom/oplus/network/OplusDataLimitManager;


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mOplusDataLimitService:Lcom/oplus/network/IOplusDataLimit;


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-direct {p0}, Lcom/oplus/network/OplusDataLimitManager;->getLimitService()Lcom/oplus/network/IOplusDataLimit;

    .line 49
    return-void
.end method

.method public static blacklist getInstance()Lcom/oplus/network/OplusDataLimitManager;
    .locals 2

    .line 52
    const-class v0, Lcom/oplus/network/OplusDataLimitManager;

    monitor-enter v0

    .line 53
    :try_start_0
    sget-object v1, Lcom/oplus/network/OplusDataLimitManager;->sInstance:Lcom/oplus/network/OplusDataLimitManager;

    if-nez v1, :cond_0

    .line 54
    new-instance v1, Lcom/oplus/network/OplusDataLimitManager;

    invoke-direct {v1}, Lcom/oplus/network/OplusDataLimitManager;-><init>()V

    sput-object v1, Lcom/oplus/network/OplusDataLimitManager;->sInstance:Lcom/oplus/network/OplusDataLimitManager;

    .line 56
    :cond_0
    sget-object v1, Lcom/oplus/network/OplusDataLimitManager;->sInstance:Lcom/oplus/network/OplusDataLimitManager;

    monitor-exit v0

    return-object v1

    .line 57
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist getLimitService()Lcom/oplus/network/IOplusDataLimit;
    .locals 3

    .line 36
    const-class v0, Lcom/oplus/network/OplusDataLimitManager;

    monitor-enter v0

    .line 37
    :try_start_0
    iget-object v1, p0, Lcom/oplus/network/OplusDataLimitManager;->mOplusDataLimitService:Lcom/oplus/network/IOplusDataLimit;

    if-nez v1, :cond_0

    .line 38
    const-string v1, "oplusdatalimit"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/network/IOplusDataLimit$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/network/IOplusDataLimit;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/network/OplusDataLimitManager;->mOplusDataLimitService:Lcom/oplus/network/IOplusDataLimit;

    .line 39
    if-nez v1, :cond_0

    .line 40
    const-string v1, "OplusDataLimitManager"

    const-string v2, "mOplusDataLimitService init failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_0
    iget-object v1, p0, Lcom/oplus/network/OplusDataLimitManager;->mOplusDataLimitService:Lcom/oplus/network/IOplusDataLimit;

    monitor-exit v0

    return-object v1

    .line 44
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public blacklist clearThermalDataLimit(I)Z
    .locals 3
    .param p1, "netId"    # I

    .line 102
    :try_start_0
    invoke-direct {p0}, Lcom/oplus/network/OplusDataLimitManager;->getLimitService()Lcom/oplus/network/IOplusDataLimit;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/oplus/network/IOplusDataLimit;->clearThermalDataLimit(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusDataLimitManager"

    const-string v2, "getDataLimitState failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist getDataLimitState(I)I
    .locals 3
    .param p1, "netId"    # I

    .line 62
    :try_start_0
    invoke-direct {p0}, Lcom/oplus/network/OplusDataLimitManager;->getLimitService()Lcom/oplus/network/IOplusDataLimit;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/oplus/network/IOplusDataLimit;->getDataLimitState(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusDataLimitManager"

    const-string v2, "getDataLimitState failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    const/4 v1, -0x1

    return v1
.end method

.method public blacklist registerDataLimitEvent(Lcom/oplus/network/IDataLimitEventCb;)V
    .locals 3
    .param p1, "cb"    # Lcom/oplus/network/IDataLimitEventCb;

    .line 71
    :try_start_0
    invoke-direct {p0}, Lcom/oplus/network/OplusDataLimitManager;->getLimitService()Lcom/oplus/network/IOplusDataLimit;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/oplus/network/IOplusDataLimit;->registerDataLimitEvent(Lcom/oplus/network/IDataLimitEventCb;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusDataLimitManager"

    const-string v2, "getDataLimitState failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public blacklist setThermalDataLimit(IJJ)Z
    .locals 6
    .param p1, "netId"    # I
    .param p2, "rxSpeed"    # J
    .param p4, "txSpeed"    # J

    .line 93
    :try_start_0
    invoke-direct {p0}, Lcom/oplus/network/OplusDataLimitManager;->getLimitService()Lcom/oplus/network/IOplusDataLimit;

    move-result-object v0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/oplus/network/IOplusDataLimit;->setThermalDataLimit(IJJ)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusDataLimitManager"

    const-string v2, "getDataLimitState failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 96
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist unregisterDataLimitEvent(Lcom/oplus/network/IDataLimitEventCb;)V
    .locals 3
    .param p1, "cb"    # Lcom/oplus/network/IDataLimitEventCb;

    .line 79
    :try_start_0
    invoke-direct {p0}, Lcom/oplus/network/OplusDataLimitManager;->getLimitService()Lcom/oplus/network/IOplusDataLimit;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/oplus/network/IOplusDataLimit;->unregisterDataLimitEvent(Lcom/oplus/network/IDataLimitEventCb;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusDataLimitManager"

    const-string v2, "getDataLimitState failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
