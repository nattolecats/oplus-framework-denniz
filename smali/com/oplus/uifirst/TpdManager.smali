.class public Lcom/oplus/uifirst/TpdManager;
.super Ljava/lang/Object;
.source "TpdManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/uifirst/TpdManager$TpdThreadStat;
    }
.end annotation


# static fields
.field private static final blacklist EMPTY_TPD_THREAD_OP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/uifirst/Utils$ThreadOp;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist MAX_CLUSTER_NUMBER:I = 0x3

.field private static final blacklist MAX_CPU_NUMBER:I = 0x8

.field private static final blacklist TAG:Ljava/lang/String; = "OplusUIFirst_TPD"

.field private static final blacklist TEMP_DECREASE:Ljava/lang/String; = "de"

.field private static final blacklist TEMP_INCREASE:Ljava/lang/String; = "in"

.field private static final blacklist TEMP_REACH_TO:Ljava/lang/String; = "to"

.field private static final blacklist THERMAL_REGISTER_DELAY:I = 0x2710

.field private static final blacklist THERMAL_REGISTER_RETRY:I = 0x3

.field private static final blacklist THERMAL_TAG:Ljava/lang/String; = "thermal "

.field private static final blacklist mTpdTag:Ljava/lang/String; = "tpd "


# instance fields
.field private blacklist mCpuClusters:[I

.field private final blacklist mHandler:Landroid/os/Handler;

.field private blacklist mLastThermalLevel:I

.field private blacklist mThermalRegistered:Z

.field private blacklist mThermalRegisteredRetry:I

.field private blacklist mTpdThreadStat:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/oplus/uifirst/TpdManager$TpdThreadStat;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mUifManager:Lcom/oplus/uifirst/OplusUIFirstManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmLastThermalLevel(Lcom/oplus/uifirst/TpdManager;)I
    .locals 0

    iget p0, p0, Lcom/oplus/uifirst/TpdManager;->mLastThermalLevel:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLastThermalLevel(Lcom/oplus/uifirst/TpdManager;I)V
    .locals 0

    iput p1, p0, Lcom/oplus/uifirst/TpdManager;->mLastThermalLevel:I

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/oplus/uifirst/TpdManager;->EMPTY_TPD_THREAD_OP:Ljava/util/List;

    return-void
.end method

.method constructor blacklist <init>(Lcom/oplus/uifirst/OplusUIFirstManager;Landroid/os/Handler;)V
    .locals 4
    .param p1, "uifManager"    # Lcom/oplus/uifirst/OplusUIFirstManager;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/oplus/uifirst/TpdManager;->mLastThermalLevel:I

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/uifirst/TpdManager;->mThermalRegistered:Z

    .line 94
    iput v0, p0, Lcom/oplus/uifirst/TpdManager;->mThermalRegisteredRetry:I

    .line 100
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/uifirst/TpdManager;->mTpdThreadStat:Landroid/util/ArrayMap;

    .line 104
    iput-object p1, p0, Lcom/oplus/uifirst/TpdManager;->mUifManager:Lcom/oplus/uifirst/OplusUIFirstManager;

    .line 105
    iput-object p2, p0, Lcom/oplus/uifirst/TpdManager;->mHandler:Landroid/os/Handler;

    .line 107
    invoke-virtual {p0, p2}, Lcom/oplus/uifirst/TpdManager;->registerThermalListenerIfNeed(Landroid/os/Handler;)V

    .line 109
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/oplus/uifirst/TpdManager;->mCpuClusters:[I

    .line 110
    invoke-static {v0}, Landroid/os/Process;->getCpuClusters([I)[I

    .line 112
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-gt v0, v1, :cond_1

    .line 113
    iget-object v1, p0, Lcom/oplus/uifirst/TpdManager;->mCpuClusters:[I

    aget v2, v1, v0

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 114
    const/16 v2, 0x8

    aput v2, v1, v0

    .line 112
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    .end local v0    # "i":I
    :cond_1
    sget-boolean v0, Lcom/oplus/uifirst/Utils;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cpu clusters: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/uifirst/TpdManager;->mCpuClusters:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusUIFirst_TPD"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_2
    return-void
.end method

.method static synthetic blacklist lambda$updateTpdConfigIfNeed$1(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "localPrjNum"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .line 344
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private blacklist setTpd(III)V
    .locals 6
    .param p1, "pid"    # I
    .param p2, "tid"    # I
    .param p3, "decision"    # I

    .line 157
    const/4 v0, 0x1

    .line 158
    .local v0, "clusterMask":I
    new-instance v1, Ljava/util/BitSet;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    .line 159
    .local v1, "cpuSet":Ljava/util/BitSet;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    .line 160
    and-int v3, p3, v0

    if-eqz v3, :cond_0

    .line 161
    iget-object v3, p0, Lcom/oplus/uifirst/TpdManager;->mCpuClusters:[I

    aget v4, v3, v2

    add-int/lit8 v5, v2, 0x1

    aget v5, v3, v5

    if-ge v4, v5, :cond_0

    .line 162
    add-int/lit8 v5, v2, 0x1

    aget v3, v3, v5

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v3, v5}, Ljava/util/BitSet;->set(IIZ)V

    .line 165
    :cond_0
    shl-int/lit8 v0, v0, 0x1

    .line 159
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 167
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v1}, Ljava/util/BitSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 168
    invoke-virtual {v1}, Ljava/util/BitSet;->toByteArray()[B

    move-result-object v2

    invoke-static {p2, v2}, Landroid/os/Process;->setThreadAffinity(I[B)V

    .line 170
    :cond_2
    sget-boolean v2, Lcom/oplus/uifirst/Utils;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 171
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setTpd: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " tid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cpuset:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/BitSet;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OplusUIFirst_TPD"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_3
    return-void
.end method

.method private declared-synchronized blacklist updateTpdConfigIfNeed(Ljava/lang/String;)V
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;

    monitor-enter p0

    .line 320
    :try_start_0
    iget-object v0, p0, Lcom/oplus/uifirst/TpdManager;->mTpdThreadStat:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/uifirst/TpdManager$TpdThreadStat;

    .line 322
    .local v0, "stat":Lcom/oplus/uifirst/TpdManager$TpdThreadStat;
    if-nez v0, :cond_9

    .line 323
    iget-object v1, p0, Lcom/oplus/uifirst/TpdManager;->mUifManager:Lcom/oplus/uifirst/OplusUIFirstManager;

    const-string v2, "tpd"

    invoke-virtual {v1, v2, p1}, Lcom/oplus/uifirst/OplusUIFirstManager;->inFilter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 324
    monitor-exit p0

    return-void

    .line 327
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/oplus/uifirst/TpdManager;->mUifManager:Lcom/oplus/uifirst/OplusUIFirstManager;

    const-string v2, "tpd"

    invoke-virtual {v1, v2, p1}, Lcom/oplus/uifirst/OplusUIFirstManager;->getFilterConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 328
    .local v1, "config":Ljava/lang/String;
    sget-boolean v2, Lcom/oplus/uifirst/Utils;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 329
    const-string v2, "OplusUIFirst_TPD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tpd config "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    .end local p0    # "this":Lcom/oplus/uifirst/TpdManager;
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 333
    new-instance v2, Lcom/oplus/uifirst/TpdManager$TpdThreadStat;

    sget-object v3, Lcom/oplus/uifirst/TpdManager;->EMPTY_TPD_THREAD_OP:Ljava/util/List;

    invoke-direct {v2, v3}, Lcom/oplus/uifirst/TpdManager$TpdThreadStat;-><init>(Ljava/util/List;)V

    move-object v0, v2

    goto/16 :goto_3

    .line 335
    :cond_2
    invoke-static {v1}, Lcom/oplus/uifirst/Utils;->parseThreadOp(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 336
    .local v2, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/uifirst/Utils$ThreadOp;>;"
    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 338
    invoke-static {}, Lcom/oplus/uifirst/Utils;->getProjectNumber()Ljava/lang/String;

    move-result-object v3

    .line 339
    .local v3, "localPrjNum":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 340
    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/oplus/uifirst/Utils$ThreadOp;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 341
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oplus/uifirst/Utils$ThreadOp;

    .line 342
    .local v5, "op":Lcom/oplus/uifirst/Utils$ThreadOp;
    iget-object v6, v5, Lcom/oplus/uifirst/Utils$ThreadOp;->mPrjNum:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 343
    iget-object v6, v5, Lcom/oplus/uifirst/Utils$ThreadOp;->mPrjNum:Ljava/lang/String;

    const-string v7, "\\|"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 344
    .local v6, "projectNums":[Ljava/lang/String;
    invoke-static {v6}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v8, Lcom/oplus/uifirst/TpdManager$$ExternalSyntheticLambda1;

    invoke-direct {v8, v3}, Lcom/oplus/uifirst/TpdManager$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v7

    .line 345
    .local v7, "contains":Z
    if-nez v7, :cond_3

    .line 346
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 349
    .end local v5    # "op":Lcom/oplus/uifirst/Utils$ThreadOp;
    .end local v6    # "projectNums":[Ljava/lang/String;
    .end local v7    # "contains":Z
    :cond_3
    goto :goto_0

    .line 351
    .end local v3    # "localPrjNum":Ljava/lang/String;
    .end local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/oplus/uifirst/Utils$ThreadOp;>;"
    :cond_4
    sget-boolean v3, Lcom/oplus/uifirst/Utils;->DEBUG:Z

    if-eqz v3, :cond_6

    .line 352
    if-nez v2, :cond_5

    const-string v3, "null"

    goto :goto_1

    :cond_5
    invoke-interface {v2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 353
    .local v3, "info":Ljava/lang/String;
    :goto_1
    const-string v4, "OplusUIFirst_TPD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Tpd thread ops "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    .end local v3    # "info":Ljava/lang/String;
    :cond_6
    if-eqz v2, :cond_8

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_2

    .line 358
    :cond_7
    new-instance v3, Lcom/oplus/uifirst/TpdManager$TpdThreadStat;

    invoke-direct {v3, v2}, Lcom/oplus/uifirst/TpdManager$TpdThreadStat;-><init>(Ljava/util/List;)V

    move-object v0, v3

    goto :goto_3

    .line 356
    :cond_8
    :goto_2
    new-instance v3, Lcom/oplus/uifirst/TpdManager$TpdThreadStat;

    sget-object v4, Lcom/oplus/uifirst/TpdManager;->EMPTY_TPD_THREAD_OP:Ljava/util/List;

    invoke-direct {v3, v4}, Lcom/oplus/uifirst/TpdManager$TpdThreadStat;-><init>(Ljava/util/List;)V

    move-object v0, v3

    .line 361
    .end local v2    # "ops":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/uifirst/Utils$ThreadOp;>;"
    :goto_3
    iget-object v2, p0, Lcom/oplus/uifirst/TpdManager;->mTpdThreadStat:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 363
    .end local v1    # "config":Ljava/lang/String;
    :cond_9
    monitor-exit p0

    return-void

    .line 319
    .end local v0    # "stat":Lcom/oplus/uifirst/TpdManager$TpdThreadStat;
    .end local p1    # "packageName":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method declared-synchronized blacklist handleActivityEvent(ILjava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "status"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "activityName"    # Ljava/lang/String;

    monitor-enter p0

    .line 253
    :try_start_0
    const-string v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    .local v0, "event":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 262
    .end local p0    # "this":Lcom/oplus/uifirst/TpdManager;
    monitor-exit p0

    return-void

    .line 259
    .restart local p0    # "this":Lcom/oplus/uifirst/TpdManager;
    :sswitch_0
    :try_start_1
    const-string v1, "resume"

    move-object v0, v1

    .line 260
    goto :goto_0

    .line 256
    .end local p0    # "this":Lcom/oplus/uifirst/TpdManager;
    :sswitch_1
    const-string v1, "start"

    move-object v0, v1

    .line 257
    nop

    .line 265
    :goto_0
    invoke-direct {p0, p2}, Lcom/oplus/uifirst/TpdManager;->updateTpdConfigIfNeed(Ljava/lang/String;)V

    .line 267
    iget-object v1, p0, Lcom/oplus/uifirst/TpdManager;->mTpdThreadStat:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/uifirst/TpdManager$TpdThreadStat;

    .line 268
    .local v1, "stat":Lcom/oplus/uifirst/TpdManager$TpdThreadStat;
    if-eqz v1, :cond_5

    iget-object v2, v1, Lcom/oplus/uifirst/TpdManager$TpdThreadStat;->mOps:Ljava/util/List;

    sget-object v3, Lcom/oplus/uifirst/TpdManager;->EMPTY_TPD_THREAD_OP:Ljava/util/List;

    if-ne v2, v3, :cond_0

    goto/16 :goto_2

    .line 272
    :cond_0
    sget-boolean v2, Lcom/oplus/uifirst/Utils;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 273
    const-string v2, "OplusUIFirst_TPD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tpd start activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/oplus/uifirst/TpdManager$TpdThreadStat;->mOps:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 277
    .local v2, "activityTag":Ljava/lang/String;
    iget-object v3, v1, Lcom/oplus/uifirst/TpdManager$TpdThreadStat;->mOps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oplus/uifirst/Utils$ThreadOp;

    .line 278
    .local v4, "op":Lcom/oplus/uifirst/Utils$ThreadOp;
    iget-object v5, v4, Lcom/oplus/uifirst/Utils$ThreadOp;->mEvent:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, v4, Lcom/oplus/uifirst/Utils$ThreadOp;->mEvent:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v4, Lcom/oplus/uifirst/Utils$ThreadOp;->mState:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, v4, Lcom/oplus/uifirst/Utils$ThreadOp;->mState:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/oplus/uifirst/TpdManager;->thermalStateCheck(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 279
    :cond_2
    iget-object v5, v4, Lcom/oplus/uifirst/Utils$ThreadOp;->mEvent:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x0

    iget-object v8, v4, Lcom/oplus/uifirst/Utils$ThreadOp;->mEvent:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v5, v6, p3, v7, v8}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 280
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 281
    .local v5, "msg":Landroid/os/Message;
    const/4 v6, 0x7

    iput v6, v5, Landroid/os/Message;->what:I

    .line 282
    new-instance v6, Landroid/util/Pair;

    invoke-direct {v6, p2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v6, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 283
    iget-object v6, p0, Lcom/oplus/uifirst/TpdManager;->mHandler:Landroid/os/Handler;

    iget v7, v4, Lcom/oplus/uifirst/Utils$ThreadOp;->mDelay:I

    int-to-long v7, v7

    invoke-virtual {v6, v5, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 286
    .end local v4    # "op":Lcom/oplus/uifirst/Utils$ThreadOp;
    .end local v5    # "msg":Landroid/os/Message;
    :cond_3
    goto :goto_1

    .line 287
    :cond_4
    monitor-exit p0

    return-void

    .line 269
    .end local v2    # "activityTag":Ljava/lang/String;
    :cond_5
    :goto_2
    monitor-exit p0

    return-void

    .line 252
    .end local v0    # "event":Ljava/lang/String;
    .end local v1    # "stat":Lcom/oplus/uifirst/TpdManager$TpdThreadStat;
    .end local p1    # "status":I
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "activityName":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x4 -> :sswitch_0
    .end sparse-switch
.end method

.method declared-synchronized blacklist handleProcessStart(Ljava/lang/String;IIZLjava/lang/String;)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "pid"    # I
    .param p4, "isolated"    # Z
    .param p5, "processName"    # Ljava/lang/String;

    monitor-enter p0

    .line 290
    :try_start_0
    invoke-direct {p0, p1}, Lcom/oplus/uifirst/TpdManager;->updateTpdConfigIfNeed(Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/oplus/uifirst/TpdManager;->mTpdThreadStat:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/uifirst/TpdManager$TpdThreadStat;

    .line 293
    .local v0, "stat":Lcom/oplus/uifirst/TpdManager$TpdThreadStat;
    if-eqz v0, :cond_5

    iget-object v1, v0, Lcom/oplus/uifirst/TpdManager$TpdThreadStat;->mOps:Ljava/util/List;

    sget-object v2, Lcom/oplus/uifirst/TpdManager;->EMPTY_TPD_THREAD_OP:Ljava/util/List;

    if-ne v1, v2, :cond_0

    goto/16 :goto_3

    .line 297
    :cond_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 298
    if-nez p4, :cond_1

    .line 299
    :try_start_1
    iget-object v1, v0, Lcom/oplus/uifirst/TpdManager$TpdThreadStat;->mPid:Landroid/util/IntArray;

    invoke-virtual {v1, p3}, Landroid/util/IntArray;->add(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 303
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 301
    :cond_1
    :try_start_2
    iget-object v1, v0, Lcom/oplus/uifirst/TpdManager$TpdThreadStat;->mIsolatedPid:Landroid/util/IntArray;

    invoke-virtual {v1, p3}, Landroid/util/IntArray;->add(I)V

    .line 303
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 305
    :try_start_3
    iget-object v1, v0, Lcom/oplus/uifirst/TpdManager$TpdThreadStat;->mOps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/uifirst/Utils$ThreadOp;

    .line 306
    .local v2, "op":Lcom/oplus/uifirst/Utils$ThreadOp;
    iget-object v3, v2, Lcom/oplus/uifirst/Utils$ThreadOp;->mEvent:Ljava/lang/String;

    const-string v4, "start_p"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v2, Lcom/oplus/uifirst/Utils$ThreadOp;->mState:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v2, Lcom/oplus/uifirst/Utils$ThreadOp;->mState:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/oplus/uifirst/TpdManager;->thermalStateCheck(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 307
    .end local p0    # "this":Lcom/oplus/uifirst/TpdManager;
    :cond_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 308
    .local v3, "msg":Landroid/os/Message;
    const/4 v4, 0x6

    iput v4, v3, Landroid/os/Message;->what:I

    .line 309
    iput p3, v3, Landroid/os/Message;->arg1:I

    .line 310
    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, p1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 311
    iget-object v4, p0, Lcom/oplus/uifirst/TpdManager;->mHandler:Landroid/os/Handler;

    iget v5, v2, Lcom/oplus/uifirst/Utils$ThreadOp;->mDelay:I

    int-to-long v5, v5

    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 312
    sget-boolean v4, Lcom/oplus/uifirst/Utils;->DEBUG:Z

    if-eqz v4, :cond_3

    .line 313
    const-string v4, "OplusUIFirst_TPD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tpd op "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 316
    .end local v2    # "op":Lcom/oplus/uifirst/Utils$ThreadOp;
    .end local v3    # "msg":Landroid/os/Message;
    :cond_3
    goto :goto_1

    .line 317
    :cond_4
    monitor-exit p0

    return-void

    .line 303
    :catchall_1
    move-exception v1

    :goto_2
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 294
    :cond_5
    :goto_3
    monitor-exit p0

    return-void

    .line 289
    .end local v0    # "stat":Lcom/oplus/uifirst/TpdManager$TpdThreadStat;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "uid":I
    .end local p3    # "pid":I
    .end local p4    # "isolated":Z
    .end local p5    # "processName":Ljava/lang/String;
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized blacklist handleThermalEvent(II)V
    .locals 11
    .param p1, "preLevel"    # I
    .param p2, "curLevel"    # I

    monitor-enter p0

    .line 206
    :try_start_0
    sget-boolean v0, Lcom/oplus/uifirst/Utils;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 207
    const-string v0, "OplusUIFirst_TPD"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tpd Thermal level "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    .end local p0    # "this":Lcom/oplus/uifirst/TpdManager;
    :cond_0
    iget-object v0, p0, Lcom/oplus/uifirst/TpdManager;->mTpdThreadStat:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 210
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/oplus/uifirst/TpdManager$TpdThreadStat;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 211
    .local v2, "packageName":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/uifirst/TpdManager$TpdThreadStat;

    .line 212
    .local v3, "stat":Lcom/oplus/uifirst/TpdManager$TpdThreadStat;
    if-eqz v3, :cond_1

    iget-object v4, v3, Lcom/oplus/uifirst/TpdManager$TpdThreadStat;->mOps:Ljava/util/List;

    sget-object v5, Lcom/oplus/uifirst/TpdManager;->EMPTY_TPD_THREAD_OP:Ljava/util/List;

    if-ne v4, v5, :cond_2

    .line 213
    goto :goto_0

    .line 215
    :cond_2
    sget-boolean v4, Lcom/oplus/uifirst/Utils;->DEBUG:Z

    if-eqz v4, :cond_3

    .line 216
    const-string v4, "OplusUIFirst_TPD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Tpd ThermalEvent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_3
    iget-object v4, v3, Lcom/oplus/uifirst/TpdManager$TpdThreadStat;->mOps:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oplus/uifirst/Utils$ThreadOp;

    .line 220
    .local v5, "op":Lcom/oplus/uifirst/Utils$ThreadOp;
    iget-object v6, v5, Lcom/oplus/uifirst/Utils$ThreadOp;->mEvent:Ljava/lang/String;

    const-string v7, "thermal "

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 221
    iget-object v6, v5, Lcom/oplus/uifirst/Utils$ThreadOp;->mEvent:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    .local v6, "event":Ljava/lang/String;
    :try_start_1
    const-string v7, "thermal "

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const-string v8, "in"

    const-string v9, "in"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v10, v9}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 224
    if-le p2, p1, :cond_8

    .line 225
    const-string v7, "thermal "

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const-string v8, "in"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 226
    .local v7, "eventLevel":I
    if-ge p1, v7, :cond_4

    if-lt p2, v7, :cond_4

    .line 228
    invoke-virtual {p0, v2, v5}, Lcom/oplus/uifirst/TpdManager;->handleThreadOp(Ljava/lang/String;Lcom/oplus/uifirst/Utils$ThreadOp;)V

    .line 230
    .end local v7    # "eventLevel":I
    :cond_4
    goto :goto_2

    .line 231
    :cond_5
    const-string v7, "thermal "

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const-string v8, "de"

    const-string v9, "de"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v6, v7, v8, v10, v9}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 232
    if-ge p2, p1, :cond_8

    .line 233
    const-string v7, "thermal "

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const-string v8, "de"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 234
    .restart local v7    # "eventLevel":I
    if-le p1, v7, :cond_6

    if-gt p2, v7, :cond_6

    .line 235
    invoke-virtual {p0, v2, v5}, Lcom/oplus/uifirst/TpdManager;->handleThreadOp(Ljava/lang/String;Lcom/oplus/uifirst/Utils$ThreadOp;)V

    .line 237
    .end local v7    # "eventLevel":I
    :cond_6
    goto :goto_2

    .line 238
    :cond_7
    const-string v7, "thermal "

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const-string v8, "to"

    const-string v9, "to"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v6, v7, v8, v10, v9}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 239
    const-string v7, "thermal "

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const-string v8, "to"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 240
    .restart local v7    # "eventLevel":I
    if-ne v7, p2, :cond_8

    .line 241
    invoke-virtual {p0, v2, v5}, Lcom/oplus/uifirst/TpdManager;->handleThreadOp(Ljava/lang/String;Lcom/oplus/uifirst/Utils$ThreadOp;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 246
    .end local v7    # "eventLevel":I
    :cond_8
    :goto_2
    goto :goto_3

    .line 244
    :catch_0
    move-exception v7

    .line 245
    .local v7, "nfe":Ljava/lang/NumberFormatException;
    :try_start_2
    const-string v8, "OplusUIFirst_TPD"

    const-string v9, "Tpd handle event error"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 248
    .end local v5    # "op":Lcom/oplus/uifirst/Utils$ThreadOp;
    .end local v6    # "event":Ljava/lang/String;
    .end local v7    # "nfe":Ljava/lang/NumberFormatException;
    :cond_9
    :goto_3
    goto/16 :goto_1

    .line 249
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/oplus/uifirst/TpdManager$TpdThreadStat;>;"
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "stat":Lcom/oplus/uifirst/TpdManager$TpdThreadStat;
    :cond_a
    goto/16 :goto_0

    .line 250
    :cond_b
    monitor-exit p0

    return-void

    .line 205
    .end local p1    # "preLevel":I
    .end local p2    # "curLevel":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized blacklist handleThreadOp(Ljava/lang/String;ILcom/oplus/uifirst/Utils$ThreadOp;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "op"    # Lcom/oplus/uifirst/Utils$ThreadOp;

    monitor-enter p0

    .line 400
    :try_start_0
    iget-object v0, p3, Lcom/oplus/uifirst/Utils$ThreadOp;->mOp:Ljava/lang/String;

    const-string v1, "tpd "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 403
    :try_start_1
    iget-object v0, p3, Lcom/oplus/uifirst/Utils$ThreadOp;->mOp:Ljava/lang/String;

    const-string v1, "tpd "

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 406
    .local v0, "value":I
    nop

    .line 408
    :try_start_2
    iget-object v1, p3, Lcom/oplus/uifirst/Utils$ThreadOp;->mPattern:Ljava/lang/String;

    invoke-static {p2, v1}, Lcom/oplus/uifirst/Utils;->findMatchedTids(ILjava/lang/String;)Landroid/util/IntArray;

    move-result-object v1

    .line 409
    .local v1, "tids":Landroid/util/IntArray;
    sget-boolean v2, Lcom/oplus/uifirst/Utils;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 410
    const-string v2, "OplusUIFirst_TPD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TPD handleThreadOp find "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/util/IntArray;->toArray()[I

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    .end local p0    # "this":Lcom/oplus/uifirst/TpdManager;
    :cond_0
    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 413
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 414
    invoke-virtual {v1, v2}, Landroid/util/IntArray;->get(I)I

    move-result v3

    .line 415
    .local v3, "tid":I
    invoke-direct {p0, p2, v3, v0}, Lcom/oplus/uifirst/TpdManager;->setTpd(III)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 413
    .end local v3    # "tid":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 404
    .end local v0    # "value":I
    .end local v1    # "tids":Landroid/util/IntArray;
    .end local v2    # "i":I
    :catch_0
    move-exception v0

    .line 405
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    monitor-exit p0

    return-void

    .line 419
    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    .restart local p0    # "this":Lcom/oplus/uifirst/TpdManager;
    :cond_1
    monitor-exit p0

    return-void

    .line 399
    .end local p0    # "this":Lcom/oplus/uifirst/TpdManager;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "pid":I
    .end local p3    # "op":Lcom/oplus/uifirst/Utils$ThreadOp;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized blacklist handleThreadOp(Ljava/lang/String;Lcom/oplus/uifirst/Utils$ThreadOp;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "op"    # Lcom/oplus/uifirst/Utils$ThreadOp;

    monitor-enter p0

    .line 386
    :try_start_0
    iget-object v0, p0, Lcom/oplus/uifirst/TpdManager;->mTpdThreadStat:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/uifirst/TpdManager$TpdThreadStat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    .local v0, "stat":Lcom/oplus/uifirst/TpdManager$TpdThreadStat;
    if-nez v0, :cond_0

    .line 388
    monitor-exit p0

    return-void

    .line 391
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_1
    iget-object v2, v0, Lcom/oplus/uifirst/TpdManager$TpdThreadStat;->mPid:Landroid/util/IntArray;

    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 392
    iget-object v2, v0, Lcom/oplus/uifirst/TpdManager$TpdThreadStat;->mPid:Landroid/util/IntArray;

    invoke-virtual {v2, v1}, Landroid/util/IntArray;->get(I)I

    move-result v2

    invoke-virtual {p0, p1, v2, p2}, Lcom/oplus/uifirst/TpdManager;->handleThreadOp(Ljava/lang/String;ILcom/oplus/uifirst/Utils$ThreadOp;)V

    .line 391
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 394
    .end local v1    # "i":I
    .end local p0    # "this":Lcom/oplus/uifirst/TpdManager;
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, v0, Lcom/oplus/uifirst/TpdManager$TpdThreadStat;->mIsolatedPid:Landroid/util/IntArray;

    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 395
    iget-object v2, v0, Lcom/oplus/uifirst/TpdManager$TpdThreadStat;->mIsolatedPid:Landroid/util/IntArray;

    invoke-virtual {v2, v1}, Landroid/util/IntArray;->get(I)I

    move-result v2

    invoke-virtual {p0, p1, v2, p2}, Lcom/oplus/uifirst/TpdManager;->handleThreadOp(Ljava/lang/String;ILcom/oplus/uifirst/Utils$ThreadOp;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 394
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 397
    .end local v1    # "i":I
    :cond_2
    monitor-exit p0

    return-void

    .line 385
    .end local v0    # "stat":Lcom/oplus/uifirst/TpdManager$TpdThreadStat;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "op":Lcom/oplus/uifirst/Utils$ThreadOp;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method synthetic blacklist lambda$registerThermalListenerIfNeed$0$com-oplus-uifirst-TpdManager(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .line 149
    invoke-virtual {p0, p1}, Lcom/oplus/uifirst/TpdManager;->registerThermalListenerIfNeed(Landroid/os/Handler;)V

    return-void
.end method

.method declared-synchronized blacklist moveToFore(Ljava/lang/String;I)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appPid"    # I

    monitor-enter p0

    .line 366
    :try_start_0
    iget-object v0, p0, Lcom/oplus/uifirst/TpdManager;->mTpdThreadStat:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/uifirst/TpdManager$TpdThreadStat;

    .line 367
    .local v0, "stat":Lcom/oplus/uifirst/TpdManager$TpdThreadStat;
    if-eqz v0, :cond_4

    iget-object v1, v0, Lcom/oplus/uifirst/TpdManager$TpdThreadStat;->mOps:Ljava/util/List;

    sget-object v2, Lcom/oplus/uifirst/TpdManager;->EMPTY_TPD_THREAD_OP:Ljava/util/List;

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 371
    :cond_0
    iget-object v1, v0, Lcom/oplus/uifirst/TpdManager$TpdThreadStat;->mOps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/uifirst/Utils$ThreadOp;

    .line 372
    .local v2, "op":Lcom/oplus/uifirst/Utils$ThreadOp;
    iget-object v3, v2, Lcom/oplus/uifirst/Utils$ThreadOp;->mEvent:Ljava/lang/String;

    const-string v4, "to_fore"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/oplus/uifirst/Utils$ThreadOp;->mState:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v2, Lcom/oplus/uifirst/Utils$ThreadOp;->mState:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/oplus/uifirst/TpdManager;->thermalStateCheck(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 373
    .end local p0    # "this":Lcom/oplus/uifirst/TpdManager;
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 374
    .local v3, "msg":Landroid/os/Message;
    const/4 v4, 0x6

    iput v4, v3, Landroid/os/Message;->what:I

    .line 375
    iput p2, v3, Landroid/os/Message;->arg1:I

    .line 376
    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, p1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 377
    iget-object v4, p0, Lcom/oplus/uifirst/TpdManager;->mHandler:Landroid/os/Handler;

    iget v5, v2, Lcom/oplus/uifirst/Utils$ThreadOp;->mDelay:I

    int-to-long v5, v5

    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 378
    sget-boolean v4, Lcom/oplus/uifirst/Utils;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 379
    const-string v4, "OplusUIFirst_TPD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tpd op "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    .end local v2    # "op":Lcom/oplus/uifirst/Utils$ThreadOp;
    .end local v3    # "msg":Landroid/os/Message;
    :cond_2
    goto :goto_0

    .line 383
    :cond_3
    monitor-exit p0

    return-void

    .line 368
    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    .line 365
    .end local v0    # "stat":Lcom/oplus/uifirst/TpdManager$TpdThreadStat;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "appPid":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method blacklist registerThermalListenerIfNeed(Landroid/os/Handler;)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;

    .line 123
    iget-boolean v0, p0, Lcom/oplus/uifirst/TpdManager;->mThermalRegistered:Z

    if-eqz v0, :cond_0

    .line 124
    return-void

    .line 128
    :cond_0
    invoke-static {}, Lcom/oplus/util/OplusHoraeThermalHelper;->getInstance()Lcom/oplus/util/OplusHoraeThermalHelper;

    move-result-object v0

    new-instance v1, Landroid/os/HandlerExecutor;

    invoke-direct {v1, p1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    new-instance v2, Lcom/oplus/uifirst/TpdManager$1;

    invoke-direct {v2, p0}, Lcom/oplus/uifirst/TpdManager$1;-><init>(Lcom/oplus/uifirst/TpdManager;)V

    invoke-virtual {v0, v1, v2}, Lcom/oplus/util/OplusHoraeThermalHelper;->addHoraeThermalStatusListener(Ljava/util/concurrent/Executor;Lcom/oplus/util/OplusHoraeThermalHelper$IThermalListener;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/uifirst/TpdManager;->mThermalRegistered:Z

    .line 147
    if-nez v0, :cond_1

    iget v0, p0, Lcom/oplus/uifirst/TpdManager;->mThermalRegisteredRetry:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_1

    .line 148
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oplus/uifirst/TpdManager;->mThermalRegisteredRetry:I

    .line 149
    new-instance v0, Lcom/oplus/uifirst/TpdManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/oplus/uifirst/TpdManager$$ExternalSyntheticLambda0;-><init>(Lcom/oplus/uifirst/TpdManager;Landroid/os/Handler;)V

    iget v1, p0, Lcom/oplus/uifirst/TpdManager;->mThermalRegisteredRetry:I

    mul-int/lit8 v1, v1, 0x2

    mul-int/lit16 v1, v1, 0x2710

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 151
    :cond_1
    return-void
.end method

.method declared-synchronized blacklist removePid(Ljava/lang/String;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I

    monitor-enter p0

    .line 422
    :try_start_0
    iget-object v0, p0, Lcom/oplus/uifirst/TpdManager;->mTpdThreadStat:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/uifirst/TpdManager$TpdThreadStat;

    .line 423
    .local v0, "stat":Lcom/oplus/uifirst/TpdManager$TpdThreadStat;
    if-eqz v0, :cond_2

    .line 424
    iget-object v1, v0, Lcom/oplus/uifirst/TpdManager$TpdThreadStat;->mPid:Landroid/util/IntArray;

    invoke-virtual {v1, p2}, Landroid/util/IntArray;->indexOf(I)I

    move-result v1

    .line 425
    .local v1, "index":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 426
    iget-object v3, v0, Lcom/oplus/uifirst/TpdManager$TpdThreadStat;->mPid:Landroid/util/IntArray;

    invoke-virtual {v3, v1}, Landroid/util/IntArray;->remove(I)V

    .line 428
    .end local p0    # "this":Lcom/oplus/uifirst/TpdManager;
    :cond_0
    iget-object v3, v0, Lcom/oplus/uifirst/TpdManager$TpdThreadStat;->mIsolatedPid:Landroid/util/IntArray;

    invoke-virtual {v3, p2}, Landroid/util/IntArray;->indexOf(I)I

    move-result v3

    move v1, v3

    .line 429
    if-eq v1, v2, :cond_1

    .line 430
    iget-object v2, v0, Lcom/oplus/uifirst/TpdManager$TpdThreadStat;->mIsolatedPid:Landroid/util/IntArray;

    invoke-virtual {v2, v1}, Landroid/util/IntArray;->remove(I)V

    .line 432
    :cond_1
    iget-object v2, v0, Lcom/oplus/uifirst/TpdManager$TpdThreadStat;->mPid:Landroid/util/IntArray;

    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/oplus/uifirst/TpdManager$TpdThreadStat;->mIsolatedPid:Landroid/util/IntArray;

    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 433
    iget-object v2, p0, Lcom/oplus/uifirst/TpdManager;->mTpdThreadStat:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    .end local v1    # "index":I
    :cond_2
    monitor-exit p0

    return-void

    .line 421
    .end local v0    # "stat":Lcom/oplus/uifirst/TpdManager$TpdThreadStat;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "pid":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method blacklist thermalStateCheck(Ljava/lang/String;)Z
    .locals 7
    .param p1, "state"    # Ljava/lang/String;

    .line 177
    const-string v0, "to"

    const-string v1, "de"

    const-string v2, "in"

    iget v3, p0, Lcom/oplus/uifirst/TpdManager;->mLastThermalLevel:I

    const/4 v4, 0x0

    const/high16 v5, -0x80000000

    if-ne v3, v5, :cond_0

    .line 178
    return v4

    .line 180
    :cond_0
    const-string v3, "thermal "

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 182
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p1, v5, v2, v4, v6}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    .line 183
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 184
    .local v0, "eventLevel":I
    iget v1, p0, Lcom/oplus/uifirst/TpdManager;->mLastThermalLevel:I

    if-lt v1, v0, :cond_1

    .line 185
    return v6

    .line 187
    .end local v0    # "eventLevel":I
    :cond_1
    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v2, v1, v4, v5}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 188
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 189
    .restart local v0    # "eventLevel":I
    iget v1, p0, Lcom/oplus/uifirst/TpdManager;->mLastThermalLevel:I

    if-gt v1, v0, :cond_3

    .line 190
    return v6

    .line 189
    .end local v0    # "eventLevel":I
    :cond_3
    goto :goto_0

    .line 192
    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v0, v4, v2}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 193
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 194
    .restart local v0    # "eventLevel":I
    iget v1, p0, Lcom/oplus/uifirst/TpdManager;->mLastThermalLevel:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v1, :cond_6

    .line 195
    return v6

    .line 192
    .end local v0    # "eventLevel":I
    :cond_5
    :goto_0
    nop

    .line 200
    :cond_6
    :goto_1
    goto :goto_2

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    const-string v1, "OplusUIFirst_TPD"

    const-string v2, "Tpd thermal state error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    :cond_7
    :goto_2
    return v4
.end method
