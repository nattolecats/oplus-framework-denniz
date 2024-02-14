.class public final Lcom/oplus/benchmark/OplusBenchAppSwitchManager;
.super Ljava/lang/Object;
.source "OplusBenchAppSwitchManager.java"


# static fields
.field private static final blacklist DEBUG:Z

.field private static final blacklist TAG:Ljava/lang/String; = "OplusBenchAppSwitchManagerr"

.field private static final blacklist mLock:Ljava/lang/Object;

.field private static blacklist sInstance:Lcom/oplus/benchmark/OplusBenchAppSwitchManager;


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private final blacklist mDynamicObserver:Lcom/oplus/app/OplusAppSwitchManager$OnAppSwitchObserver;

.field private blacklist mIsRegistered:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$msetIgnoreTargetFootprint(Lcom/oplus/benchmark/OplusBenchAppSwitchManager;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/benchmark/OplusBenchAppSwitchManager;->setIgnoreTargetFootprint(Ljava/lang/Boolean;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetDEBUG()Z
    .locals 1

    sget-boolean v0, Lcom/oplus/benchmark/OplusBenchAppSwitchManager;->DEBUG:Z

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 52
    const-string v0, "ro.build.release_type"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/oplus/benchmark/OplusBenchAppSwitchManager;->DEBUG:Z

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oplus/benchmark/OplusBenchAppSwitchManager;->mLock:Ljava/lang/Object;

    .line 54
    const/4 v0, 0x0

    sput-object v0, Lcom/oplus/benchmark/OplusBenchAppSwitchManager;->sInstance:Lcom/oplus/benchmark/OplusBenchAppSwitchManager;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/benchmark/OplusBenchAppSwitchManager;->mIsRegistered:Z

    .line 74
    new-instance v0, Lcom/oplus/benchmark/OplusBenchAppSwitchManager$1;

    invoke-direct {v0, p0}, Lcom/oplus/benchmark/OplusBenchAppSwitchManager$1;-><init>(Lcom/oplus/benchmark/OplusBenchAppSwitchManager;)V

    iput-object v0, p0, Lcom/oplus/benchmark/OplusBenchAppSwitchManager;->mDynamicObserver:Lcom/oplus/app/OplusAppSwitchManager$OnAppSwitchObserver;

    .line 60
    iput-object p1, p0, Lcom/oplus/benchmark/OplusBenchAppSwitchManager;->mContext:Landroid/content/Context;

    .line 61
    return-void
.end method

.method public static blacklist getInstance(Landroid/content/Context;)Lcom/oplus/benchmark/OplusBenchAppSwitchManager;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 64
    sget-object v0, Lcom/oplus/benchmark/OplusBenchAppSwitchManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 65
    :try_start_0
    sget-object v1, Lcom/oplus/benchmark/OplusBenchAppSwitchManager;->sInstance:Lcom/oplus/benchmark/OplusBenchAppSwitchManager;

    if-nez v1, :cond_0

    .line 66
    new-instance v1, Lcom/oplus/benchmark/OplusBenchAppSwitchManager;

    invoke-direct {v1, p0}, Lcom/oplus/benchmark/OplusBenchAppSwitchManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/oplus/benchmark/OplusBenchAppSwitchManager;->sInstance:Lcom/oplus/benchmark/OplusBenchAppSwitchManager;

    .line 67
    sget-boolean v1, Lcom/oplus/benchmark/OplusBenchAppSwitchManager;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "OplusBenchAppSwitchManagerr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new OplusBenchAppSwitchManager in pid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_0
    sget-object v1, Lcom/oplus/benchmark/OplusBenchAppSwitchManager;->sInstance:Lcom/oplus/benchmark/OplusBenchAppSwitchManager;

    monitor-exit v0

    return-object v1

    .line 70
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist setIgnoreTargetFootprint(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/Boolean;

    .line 155
    return-void
.end method


# virtual methods
.method public declared-synchronized blacklist registerBenchAppSwitchObserver(Ljava/lang/String;)V
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;

    monitor-enter p0

    .line 110
    :try_start_0
    iget-boolean v0, p0, Lcom/oplus/benchmark/OplusBenchAppSwitchManager;->mIsRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 111
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v0, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Lcom/oplus/app/OplusAppSwitchConfig;

    invoke-direct {v1}, Lcom/oplus/app/OplusAppSwitchConfig;-><init>()V

    .line 114
    .local v1, "config":Lcom/oplus/app/OplusAppSwitchConfig;
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lcom/oplus/app/OplusAppSwitchConfig;->addAppConfig(ILjava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    :try_start_2
    invoke-static {}, Lcom/oplus/app/OplusAppSwitchManager;->getInstance()Lcom/oplus/app/OplusAppSwitchManager;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/benchmark/OplusBenchAppSwitchManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/oplus/benchmark/OplusBenchAppSwitchManager;->mDynamicObserver:Lcom/oplus/app/OplusAppSwitchManager$OnAppSwitchObserver;

    invoke-virtual {v2, v3, v4, v1}, Lcom/oplus/app/OplusAppSwitchManager;->registerAppSwitchObserver(Landroid/content/Context;Lcom/oplus/app/OplusAppSwitchManager$OnAppSwitchObserver;Lcom/oplus/app/OplusAppSwitchConfig;)Z

    .line 119
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oplus/benchmark/OplusBenchAppSwitchManager;->mIsRegistered:Z

    .line 120
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->requestConcurrentGC()V

    .line 121
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/oplus/benchmark/OplusBenchAppSwitchManager;->setIgnoreTargetFootprint(Ljava/lang/Boolean;)V

    .line 122
    sget-boolean v2, Lcom/oplus/benchmark/OplusBenchAppSwitchManager;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "OplusBenchAppSwitchManagerr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "register app switch observer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 125
    .end local p0    # "this":Lcom/oplus/benchmark/OplusBenchAppSwitchManager;
    :cond_1
    goto :goto_0

    .line 123
    :catch_0
    move-exception v2

    .line 124
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    sget-boolean v3, Lcom/oplus/benchmark/OplusBenchAppSwitchManager;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "OplusBenchAppSwitchManagerr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Oops! Exception on register: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 126
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 109
    .end local v0    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "config":Lcom/oplus/app/OplusAppSwitchConfig;
    .end local p1    # "pkgName":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist unregisterBenchAppSwitchObserver()V
    .locals 4

    monitor-enter p0

    .line 128
    :try_start_0
    iget-boolean v0, p0, Lcom/oplus/benchmark/OplusBenchAppSwitchManager;->mIsRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 130
    :try_start_1
    invoke-static {}, Lcom/oplus/app/OplusAppSwitchManager;->getInstance()Lcom/oplus/app/OplusAppSwitchManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/benchmark/OplusBenchAppSwitchManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oplus/benchmark/OplusBenchAppSwitchManager;->mDynamicObserver:Lcom/oplus/app/OplusAppSwitchManager$OnAppSwitchObserver;

    invoke-virtual {v0, v1, v2}, Lcom/oplus/app/OplusAppSwitchManager;->unregisterAppSwitchObserver(Landroid/content/Context;Lcom/oplus/app/OplusAppSwitchManager$OnAppSwitchObserver;)Z

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/benchmark/OplusBenchAppSwitchManager;->mIsRegistered:Z

    .line 132
    sget-boolean v0, Lcom/oplus/benchmark/OplusBenchAppSwitchManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OplusBenchAppSwitchManagerr"

    const-string v1, "unregister app switch observer: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    .end local p0    # "this":Lcom/oplus/benchmark/OplusBenchAppSwitchManager;
    :cond_0
    goto :goto_0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    sget-boolean v1, Lcom/oplus/benchmark/OplusBenchAppSwitchManager;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "OplusBenchAppSwitchManagerr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Oops! Exception on unregister: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 137
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
