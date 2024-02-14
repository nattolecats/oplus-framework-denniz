.class Landroid/os/ProcessTreeRecorder;
.super Ljava/lang/Object;
.source "ProcessTreeRecorder.java"


# static fields
.field private static final blacklist CMDLINE_UNDEFINED:Ljava/lang/String; = "<Unknown>"


# instance fields
.field private final blacklist mAm:Landroid/app/OplusActivityManager;

.field private final blacklist mPid:I

.field private blacklist mThreadMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(I)V
    .locals 1
    .param p1, "pid"    # I

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Landroid/app/OplusActivityManager;

    invoke-direct {v0}, Landroid/app/OplusActivityManager;-><init>()V

    iput-object v0, p0, Landroid/os/ProcessTreeRecorder;->mAm:Landroid/app/OplusActivityManager;

    .line 20
    iput p1, p0, Landroid/os/ProcessTreeRecorder;->mPid:I

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/os/ProcessTreeRecorder;->mThreadMap:Ljava/util/Map;

    .line 22
    return-void
.end method


# virtual methods
.method blacklist attachThread(ILjava/lang/String;)Z
    .locals 2
    .param p1, "tid"    # I
    .param p2, "threadName"    # Ljava/lang/String;

    .line 25
    if-nez p2, :cond_0

    .line 26
    const-string p2, "<Unknown>"

    .line 29
    :cond_0
    monitor-enter p0

    .line 30
    :try_start_0
    iget-object v0, p0, Landroid/os/ProcessTreeRecorder;->mThreadMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    monitor-exit p0

    .line 32
    const/4 v0, 0x1

    return v0

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method blacklist getHashCode()I
    .locals 1

    .line 65
    monitor-enter p0

    .line 66
    :try_start_0
    iget-object v0, p0, Landroid/os/ProcessTreeRecorder;->mThreadMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    monitor-exit p0

    return v0

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method blacklist getPid()I
    .locals 1

    .line 42
    iget v0, p0, Landroid/os/ProcessTreeRecorder;->mPid:I

    return v0
.end method

.method blacklist getProcessName()Ljava/lang/String;
    .locals 5

    .line 48
    const-string v0, "<Unknown>"

    .line 50
    .local v0, "processName":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/os/ProcessTreeRecorder;->mAm:Landroid/app/OplusActivityManager;

    const/4 v2, 0x1

    new-array v2, v2, [I

    iget v3, p0, Landroid/os/ProcessTreeRecorder;->mPid:I

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/app/OplusActivityManager;->getProcCmdline([I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 54
    goto :goto_0

    .line 51
    :catch_0
    move-exception v1

    .line 53
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-getProcessName  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ProcessTreeRecorder"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method blacklist getThreadMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 59
    monitor-enter p0

    .line 60
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Landroid/os/ProcessTreeRecorder;->mThreadMap:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit p0

    return-object v0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method blacklist updateThreadMap(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 36
    .local p1, "newThreadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    monitor-enter p0

    .line 37
    :try_start_0
    iput-object p1, p0, Landroid/os/ProcessTreeRecorder;->mThreadMap:Ljava/util/Map;

    .line 38
    monitor-exit p0

    .line 39
    return-void

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
