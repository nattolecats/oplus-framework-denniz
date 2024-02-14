.class public Lcom/oplus/uifirst/GlThreadManager;
.super Ljava/lang/Object;
.source "GlThreadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/uifirst/GlThreadManager$GlThreadStat;
    }
.end annotation


# static fields
.field private static final blacklist EMPTY_GL_THREAD_OP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/uifirst/Utils$ThreadOp;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist GL_UX_OFF:I = 0x0

.field private static final blacklist GL_UX_ON:I = 0x82


# instance fields
.field private final blacklist mAppPidsMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mAppUxMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/oplus/uifirst/GlThreadManager$GlThreadStat;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mPidTidsMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mUifManager:Lcom/oplus/uifirst/OplusUIFirstManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/oplus/uifirst/GlThreadManager;->EMPTY_GL_THREAD_OP:Ljava/util/List;

    return-void
.end method

.method constructor blacklist <init>(Lcom/oplus/uifirst/OplusUIFirstManager;Landroid/os/Handler;)V
    .locals 1
    .param p1, "uifManager"    # Lcom/oplus/uifirst/OplusUIFirstManager;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/uifirst/GlThreadManager;->mAppUxMap:Landroid/util/ArrayMap;

    .line 44
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/uifirst/GlThreadManager;->mAppPidsMap:Landroid/util/ArrayMap;

    .line 45
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/uifirst/GlThreadManager;->mPidTidsMap:Landroid/util/ArrayMap;

    .line 51
    iput-object p1, p0, Lcom/oplus/uifirst/GlThreadManager;->mUifManager:Lcom/oplus/uifirst/OplusUIFirstManager;

    .line 52
    iput-object p2, p0, Lcom/oplus/uifirst/GlThreadManager;->mHandler:Landroid/os/Handler;

    .line 53
    return-void
.end method

.method private blacklist addPid(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I

    .line 151
    iget-object v0, p0, Lcom/oplus/uifirst/GlThreadManager;->mAppPidsMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 152
    .local v0, "pids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    if-nez v0, :cond_0

    .line 153
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v1

    .line 154
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object v1, p0, Lcom/oplus/uifirst/GlThreadManager;->mAppPidsMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 157
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 159
    :goto_0
    return-void
.end method

.method private blacklist addTid2Pid(II)V
    .locals 3
    .param p1, "pid"    # I
    .param p2, "tid"    # I

    .line 188
    iget-object v0, p0, Lcom/oplus/uifirst/GlThreadManager;->mPidTidsMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 189
    .local v0, "tids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    if-nez v0, :cond_0

    .line 190
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v1

    .line 191
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 192
    iget-object v1, p0, Lcom/oplus/uifirst/GlThreadManager;->mPidTidsMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 194
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 196
    :goto_0
    return-void
.end method

.method private blacklist removePid(Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I

    .line 162
    iget-object v0, p0, Lcom/oplus/uifirst/GlThreadManager;->mAppUxMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/uifirst/GlThreadManager$GlThreadStat;

    .line 163
    .local v0, "stat":Lcom/oplus/uifirst/GlThreadManager$GlThreadStat;
    if-eqz v0, :cond_2

    .line 164
    iget-object v1, v0, Lcom/oplus/uifirst/GlThreadManager$GlThreadStat;->mPid:Landroid/util/IntArray;

    invoke-virtual {v1, p2}, Landroid/util/IntArray;->indexOf(I)I

    move-result v1

    .line 165
    .local v1, "index":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 166
    iget-object v3, v0, Lcom/oplus/uifirst/GlThreadManager$GlThreadStat;->mPid:Landroid/util/IntArray;

    invoke-virtual {v3, v1}, Landroid/util/IntArray;->remove(I)V

    .line 168
    :cond_0
    iget-object v3, v0, Lcom/oplus/uifirst/GlThreadManager$GlThreadStat;->mIsolatedPid:Landroid/util/IntArray;

    invoke-virtual {v3, p2}, Landroid/util/IntArray;->indexOf(I)I

    move-result v1

    .line 169
    if-eq v1, v2, :cond_1

    .line 170
    iget-object v3, v0, Lcom/oplus/uifirst/GlThreadManager$GlThreadStat;->mIsolatedPid:Landroid/util/IntArray;

    invoke-virtual {v3, v1}, Landroid/util/IntArray;->remove(I)V

    .line 172
    :cond_1
    iget-object v3, v0, Lcom/oplus/uifirst/GlThreadManager$GlThreadStat;->mPidUx:Landroid/util/ArraySet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 173
    if-eq v1, v2, :cond_2

    .line 174
    iget-object v2, v0, Lcom/oplus/uifirst/GlThreadManager$GlThreadStat;->mPidUx:Landroid/util/ArraySet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 177
    .end local v1    # "index":I
    :cond_2
    iget-object v1, p0, Lcom/oplus/uifirst/GlThreadManager;->mAppPidsMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 178
    .local v1, "pids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_3

    .line 179
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 180
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 181
    iget-object v2, p0, Lcom/oplus/uifirst/GlThreadManager;->mAppPidsMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object v2, p0, Lcom/oplus/uifirst/GlThreadManager;->mAppUxMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    :cond_3
    return-void
.end method

.method private blacklist removeTid4Pid(II)V
    .locals 3
    .param p1, "pid"    # I
    .param p2, "tid"    # I

    .line 199
    iget-object v0, p0, Lcom/oplus/uifirst/GlThreadManager;->mPidTidsMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 200
    .local v0, "tids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    .line 201
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 202
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/oplus/uifirst/GlThreadManager;->mPidTidsMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    :cond_0
    return-void
.end method


# virtual methods
.method declared-synchronized blacklist addGlThread(Ljava/lang/String;II)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "tid"    # I

    monitor-enter p0

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/oplus/uifirst/GlThreadManager;->mAppUxMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/uifirst/GlThreadManager$GlThreadStat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .local v0, "stat":Lcom/oplus/uifirst/GlThreadManager$GlThreadStat;
    if-nez v0, :cond_0

    .line 63
    monitor-exit p0

    return-void

    .line 65
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/oplus/uifirst/GlThreadManager;->addPid(Ljava/lang/String;I)V

    .line 66
    invoke-direct {p0, p2, p3}, Lcom/oplus/uifirst/GlThreadManager;->addTid2Pid(II)V

    .line 68
    iget-object v1, v0, Lcom/oplus/uifirst/GlThreadManager$GlThreadStat;->mPidUx:Landroid/util/ArraySet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    const/16 v1, 0x82

    invoke-static {p2, p3, v1}, Lcom/oplus/uifirst/Utils;->setUxThreadValue(III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    .end local p0    # "this":Lcom/oplus/uifirst/GlThreadManager;
    :cond_1
    monitor-exit p0

    return-void

    .line 59
    .end local v0    # "stat":Lcom/oplus/uifirst/GlThreadManager$GlThreadStat;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "pid":I
    .end local p3    # "tid":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized blacklist appExists(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    monitor-enter p0

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/oplus/uifirst/GlThreadManager;->mAppUxMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 105
    .end local p0    # "this":Lcom/oplus/uifirst/GlThreadManager;
    .end local p1    # "packageName":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized blacklist getGlThreadOps(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "event"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/oplus/uifirst/Utils$ThreadOp;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/oplus/uifirst/GlThreadManager;->mAppUxMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/uifirst/GlThreadManager$GlThreadStat;

    .line 123
    .local v0, "stat":Lcom/oplus/uifirst/GlThreadManager$GlThreadStat;
    if-eqz v0, :cond_4

    iget-object v1, v0, Lcom/oplus/uifirst/GlThreadManager$GlThreadStat;->mOps:Ljava/util/List;

    if-nez v1, :cond_0

    goto :goto_1

    .line 127
    :cond_0
    iget-object v1, v0, Lcom/oplus/uifirst/GlThreadManager$GlThreadStat;->mOps:Ljava/util/List;

    sget-object v2, Lcom/oplus/uifirst/GlThreadManager;->EMPTY_GL_THREAD_OP:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v2, :cond_1

    .line 128
    monitor-exit p0

    return-object v2

    .line 131
    :cond_1
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oplus/uifirst/Utils$ThreadOp;>;"
    iget-object v2, v0, Lcom/oplus/uifirst/GlThreadManager$GlThreadStat;->mOps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/uifirst/Utils$ThreadOp;

    .line 133
    .local v3, "op":Lcom/oplus/uifirst/Utils$ThreadOp;
    iget-object v4, v3, Lcom/oplus/uifirst/Utils$ThreadOp;->mEvent:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 134
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    .end local v3    # "op":Lcom/oplus/uifirst/Utils$ThreadOp;
    .end local p0    # "this":Lcom/oplus/uifirst/GlThreadManager;
    :cond_2
    goto :goto_0

    .line 137
    :cond_3
    monitor-exit p0

    return-object v1

    .line 124
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oplus/uifirst/Utils$ThreadOp;>;"
    :cond_4
    :goto_1
    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    .line 121
    .end local v0    # "stat":Lcom/oplus/uifirst/GlThreadManager$GlThreadStat;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "event":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized blacklist getGlThreadStat(Ljava/lang/String;)Lcom/oplus/uifirst/GlThreadManager$GlThreadStat;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    monitor-enter p0

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/oplus/uifirst/GlThreadManager;->mAppUxMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/uifirst/GlThreadManager$GlThreadStat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 56
    .end local p0    # "this":Lcom/oplus/uifirst/GlThreadManager;
    .end local p1    # "packageName":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized blacklist getGlThreadValue(Ljava/lang/String;I)I
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I

    monitor-enter p0

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/oplus/uifirst/GlThreadManager;->mAppUxMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/uifirst/GlThreadManager$GlThreadStat;

    .line 111
    .local v0, "stat":Lcom/oplus/uifirst/GlThreadManager$GlThreadStat;
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 112
    const/4 v2, -0x1

    const/16 v3, 0x82

    if-ne p2, v2, :cond_1

    .line 113
    iget-object v2, v0, Lcom/oplus/uifirst/GlThreadManager$GlThreadStat;->mPidUx:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    monitor-exit p0

    return v1

    .line 115
    .end local p0    # "this":Lcom/oplus/uifirst/GlThreadManager;
    :cond_1
    :try_start_1
    iget-object v2, v0, Lcom/oplus/uifirst/GlThreadManager$GlThreadStat;->mPidUx:Landroid/util/ArraySet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    move v1, v3

    :cond_2
    monitor-exit p0

    return v1

    .line 118
    :cond_3
    monitor-exit p0

    return v1

    .line 108
    .end local v0    # "stat":Lcom/oplus/uifirst/GlThreadManager$GlThreadStat;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "pid":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method blacklist handleActivityEvent(ILjava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "status"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "activityName"    # Ljava/lang/String;

    .line 283
    sparse-switch p1, :sswitch_data_0

    .line 291
    return-void

    .line 288
    :sswitch_0
    const-string v0, "resume"

    .line 289
    .local v0, "event":Ljava/lang/String;
    goto :goto_0

    .line 285
    .end local v0    # "event":Ljava/lang/String;
    :sswitch_1
    const-string v0, "start"

    .line 286
    .restart local v0    # "event":Ljava/lang/String;
    nop

    .line 294
    :goto_0
    invoke-virtual {p0, p2, v0}, Lcom/oplus/uifirst/GlThreadManager;->getGlThreadOps(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 295
    .local v1, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/uifirst/Utils$ThreadOp;>;"
    sget-boolean v2, Lcom/oplus/uifirst/Utils;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 296
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "glThreadStartActivity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OplusUIFirst"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_0
    if-eqz v1, :cond_4

    sget-object v2, Lcom/oplus/uifirst/GlThreadManager;->EMPTY_GL_THREAD_OP:Ljava/util/List;

    if-ne v1, v2, :cond_1

    goto :goto_2

    .line 302
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

    .line 303
    .local v2, "activityTag":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oplus/uifirst/Utils$ThreadOp;

    .line 304
    .local v4, "op":Lcom/oplus/uifirst/Utils$ThreadOp;
    iget-object v5, v4, Lcom/oplus/uifirst/Utils$ThreadOp;->mEvent:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, v4, Lcom/oplus/uifirst/Utils$ThreadOp;->mEvent:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 305
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

    if-eqz v5, :cond_2

    .line 306
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 307
    .local v5, "msg":Landroid/os/Message;
    const/4 v6, 0x5

    iput v6, v5, Landroid/os/Message;->what:I

    .line 308
    new-instance v6, Landroid/util/Pair;

    invoke-direct {v6, p2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v6, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 309
    iget-object v6, p0, Lcom/oplus/uifirst/GlThreadManager;->mHandler:Landroid/os/Handler;

    iget v7, v4, Lcom/oplus/uifirst/Utils$ThreadOp;->mDelay:I

    int-to-long v7, v7

    invoke-virtual {v6, v5, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 312
    .end local v4    # "op":Lcom/oplus/uifirst/Utils$ThreadOp;
    .end local v5    # "msg":Landroid/os/Message;
    :cond_2
    goto :goto_1

    .line 313
    :cond_3
    return-void

    .line 299
    .end local v2    # "activityTag":Ljava/lang/String;
    :cond_4
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x4 -> :sswitch_0
    .end sparse-switch
.end method

.method declared-synchronized blacklist handleGlThreadOp(Ljava/lang/String;ILcom/oplus/uifirst/Utils$ThreadOp;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "op"    # Lcom/oplus/uifirst/Utils$ThreadOp;

    monitor-enter p0

    .line 330
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/oplus/uifirst/GlThreadManager;->appExists(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    .line 331
    monitor-exit p0

    return-void

    .line 334
    :cond_0
    :try_start_1
    iget-object v0, p3, Lcom/oplus/uifirst/Utils$ThreadOp;->mPattern:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/oplus/uifirst/Utils;->findMatchedTids(ILjava/lang/String;)Landroid/util/IntArray;

    move-result-object v0

    .line 335
    .local v0, "tids":Landroid/util/IntArray;
    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-gtz v1, :cond_1

    .line 336
    monitor-exit p0

    return-void

    .line 338
    :cond_1
    :try_start_2
    sget-boolean v1, Lcom/oplus/uifirst/Utils;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 339
    const-string v1, "OplusUIFirst"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleGlThreadOp find "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    .end local p0    # "this":Lcom/oplus/uifirst/GlThreadManager;
    :cond_2
    iget-object v1, p3, Lcom/oplus/uifirst/Utils$ThreadOp;->mOp:Ljava/lang/String;

    const-string v2, "\\+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 345
    .local v1, "subOps":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_5

    aget-object v5, v1, v4

    .line 346
    .local v5, "subOp":Ljava/lang/String;
    const/4 v6, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_3
    goto :goto_1

    :sswitch_0
    const-string v7, "big"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v6, 0x1

    goto :goto_1

    :sswitch_1
    const-string v7, "ux"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v6, v3

    :goto_1
    packed-switch v6, :pswitch_data_0

    goto :goto_3

    .line 356
    :pswitch_0
    goto :goto_3

    .line 348
    :pswitch_1
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 349
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 350
    invoke-virtual {v0, v6}, Landroid/util/IntArray;->get(I)I

    move-result v7

    .line 351
    .local v7, "tid":I
    invoke-virtual {p0, p1, p2, v7}, Lcom/oplus/uifirst/GlThreadManager;->addGlThread(Ljava/lang/String;II)V

    .line 349
    .end local v7    # "tid":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 353
    .end local v6    # "i":I
    :cond_4
    monitor-exit p0

    .line 354
    goto :goto_3

    .line 353
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 345
    .end local v5    # "subOp":Ljava/lang/String;
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 360
    :cond_5
    monitor-exit p0

    return-void

    .line 329
    .end local v0    # "tids":Landroid/util/IntArray;
    .end local v1    # "subOps":[Ljava/lang/String;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "pid":I
    .end local p3    # "op":Lcom/oplus/uifirst/Utils$ThreadOp;
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1

    :sswitch_data_0
    .sparse-switch
        0xea3 -> :sswitch_1
        0x17d00 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method declared-synchronized blacklist handleGlThreadOp(Ljava/lang/String;Lcom/oplus/uifirst/Utils$ThreadOp;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "op"    # Lcom/oplus/uifirst/Utils$ThreadOp;

    monitor-enter p0

    .line 316
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/oplus/uifirst/GlThreadManager;->getGlThreadStat(Ljava/lang/String;)Lcom/oplus/uifirst/GlThreadManager$GlThreadStat;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    .local v0, "stat":Lcom/oplus/uifirst/GlThreadManager$GlThreadStat;
    if-nez v0, :cond_0

    .line 318
    monitor-exit p0

    return-void

    .line 321
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_1
    iget-object v2, v0, Lcom/oplus/uifirst/GlThreadManager$GlThreadStat;->mPid:Landroid/util/IntArray;

    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 322
    iget-object v2, v0, Lcom/oplus/uifirst/GlThreadManager$GlThreadStat;->mPid:Landroid/util/IntArray;

    invoke-virtual {v2, v1}, Landroid/util/IntArray;->get(I)I

    move-result v2

    invoke-virtual {p0, p1, v2, p2}, Lcom/oplus/uifirst/GlThreadManager;->handleGlThreadOp(Ljava/lang/String;ILcom/oplus/uifirst/Utils$ThreadOp;)V

    .line 321
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 324
    .end local v1    # "i":I
    .end local p0    # "this":Lcom/oplus/uifirst/GlThreadManager;
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, v0, Lcom/oplus/uifirst/GlThreadManager$GlThreadStat;->mIsolatedPid:Landroid/util/IntArray;

    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 325
    iget-object v2, v0, Lcom/oplus/uifirst/GlThreadManager$GlThreadStat;->mIsolatedPid:Landroid/util/IntArray;

    invoke-virtual {v2, v1}, Landroid/util/IntArray;->get(I)I

    move-result v2

    invoke-virtual {p0, p1, v2, p2}, Lcom/oplus/uifirst/GlThreadManager;->handleGlThreadOp(Ljava/lang/String;ILcom/oplus/uifirst/Utils$ThreadOp;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 324
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 327
    .end local v1    # "i":I
    :cond_2
    monitor-exit p0

    return-void

    .line 315
    .end local v0    # "stat":Lcom/oplus/uifirst/GlThreadManager$GlThreadStat;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "op":Lcom/oplus/uifirst/Utils$ThreadOp;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method blacklist handleProcessStart(Ljava/lang/String;IIZLjava/lang/String;)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "pid"    # I
    .param p4, "isolated"    # Z
    .param p5, "processName"    # Ljava/lang/String;

    .line 364
    invoke-virtual {p0, p1}, Lcom/oplus/uifirst/GlThreadManager;->appExists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 365
    iget-object v0, p0, Lcom/oplus/uifirst/GlThreadManager;->mUifManager:Lcom/oplus/uifirst/OplusUIFirstManager;

    const-string v1, "gl_thread_ux"

    invoke-virtual {v0, v1, p1}, Lcom/oplus/uifirst/OplusUIFirstManager;->inFilter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 366
    .local v0, "ingl":Z
    if-nez v0, :cond_0

    .line 367
    return-void

    .line 369
    :cond_0
    iget-object v1, p0, Lcom/oplus/uifirst/GlThreadManager;->mUifManager:Lcom/oplus/uifirst/OplusUIFirstManager;

    const-string v2, "gl_thread_ux"

    invoke-virtual {v1, v2, p1}, Lcom/oplus/uifirst/OplusUIFirstManager;->getFilterConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 370
    .local v1, "config":Ljava/lang/String;
    sget-boolean v2, Lcom/oplus/uifirst/Utils;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 371
    const-string v2, "OplusUIFirst"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "config "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :cond_1
    if-nez v1, :cond_2

    .line 375
    sget-object v2, Lcom/oplus/uifirst/GlThreadManager;->EMPTY_GL_THREAD_OP:Ljava/util/List;

    invoke-virtual {p0, p1, v2}, Lcom/oplus/uifirst/GlThreadManager;->setGlThreadOps(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_2

    .line 377
    :cond_2
    invoke-static {v1}, Lcom/oplus/uifirst/Utils;->parseThreadOp(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 378
    .local v2, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/uifirst/Utils$ThreadOp;>;"
    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    .line 381
    :cond_3
    invoke-virtual {p0, p1, v2}, Lcom/oplus/uifirst/GlThreadManager;->setGlThreadOps(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    .line 379
    :cond_4
    :goto_0
    sget-object v3, Lcom/oplus/uifirst/GlThreadManager;->EMPTY_GL_THREAD_OP:Ljava/util/List;

    invoke-virtual {p0, p1, v3}, Lcom/oplus/uifirst/GlThreadManager;->setGlThreadOps(Ljava/lang/String;Ljava/util/List;)V

    .line 384
    :goto_1
    sget-boolean v3, Lcom/oplus/uifirst/Utils;->DEBUG:Z

    if-eqz v3, :cond_5

    .line 385
    const-string v3, "OplusUIFirst"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parseGlThreadOp "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    .end local v0    # "ingl":Z
    .end local v1    # "config":Ljava/lang/String;
    .end local v2    # "ops":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/uifirst/Utils$ThreadOp;>;"
    :cond_5
    :goto_2
    monitor-enter p0

    .line 391
    :try_start_0
    iget-object v0, p0, Lcom/oplus/uifirst/GlThreadManager;->mAppUxMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/uifirst/GlThreadManager$GlThreadStat;

    .line 392
    .local v0, "stat":Lcom/oplus/uifirst/GlThreadManager$GlThreadStat;
    if-eqz v0, :cond_7

    .line 393
    if-nez p4, :cond_6

    .line 394
    iput p2, v0, Lcom/oplus/uifirst/GlThreadManager$GlThreadStat;->mUid:I

    .line 395
    iget-object v1, v0, Lcom/oplus/uifirst/GlThreadManager$GlThreadStat;->mPid:Landroid/util/IntArray;

    invoke-virtual {v1, p3}, Landroid/util/IntArray;->add(I)V

    goto :goto_3

    .line 397
    :cond_6
    iget-object v1, v0, Lcom/oplus/uifirst/GlThreadManager$GlThreadStat;->mIsolatedPid:Landroid/util/IntArray;

    invoke-virtual {v1, p3}, Landroid/util/IntArray;->add(I)V

    .line 399
    :goto_3
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/oplus/uifirst/GlThreadManager$GlThreadStat;->mHasChecked:Z

    .line 401
    .end local v0    # "stat":Lcom/oplus/uifirst/GlThreadManager$GlThreadStat;
    :cond_7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 404
    const-string v0, "start_p"

    invoke-virtual {p0, p1, v0}, Lcom/oplus/uifirst/GlThreadManager;->getGlThreadOps(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 405
    .local v0, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/uifirst/Utils$ThreadOp;>;"
    if-eqz v0, :cond_b

    sget-object v1, Lcom/oplus/uifirst/GlThreadManager;->EMPTY_GL_THREAD_OP:Ljava/util/List;

    if-ne v0, v1, :cond_8

    goto :goto_5

    .line 409
    :cond_8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/uifirst/Utils$ThreadOp;

    .line 410
    .local v2, "op":Lcom/oplus/uifirst/Utils$ThreadOp;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 411
    .local v3, "msg":Landroid/os/Message;
    const/4 v4, 0x4

    iput v4, v3, Landroid/os/Message;->what:I

    .line 412
    iput p3, v3, Landroid/os/Message;->arg1:I

    .line 413
    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, p1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 414
    iget-object v4, p0, Lcom/oplus/uifirst/GlThreadManager;->mHandler:Landroid/os/Handler;

    iget v5, v2, Lcom/oplus/uifirst/Utils$ThreadOp;->mDelay:I

    int-to-long v5, v5

    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 415
    sget-boolean v4, Lcom/oplus/uifirst/Utils;->DEBUG:Z

    if-eqz v4, :cond_9

    .line 416
    const-string v4, "OplusUIFirst"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleProcessStart "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    .end local v2    # "op":Lcom/oplus/uifirst/Utils$ThreadOp;
    .end local v3    # "msg":Landroid/os/Message;
    :cond_9
    goto :goto_4

    .line 419
    :cond_a
    return-void

    .line 406
    :cond_b
    :goto_5
    return-void

    .line 401
    .end local v0    # "ops":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/uifirst/Utils$ThreadOp;>;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method blacklist moveToBack(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appPid"    # I

    .line 233
    sget-boolean v0, Lcom/oplus/uifirst/Utils;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveToBack "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusUIFirst"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/oplus/uifirst/GlThreadManager;->updateUxForPkg(Ljava/lang/String;II)V

    .line 237
    return-void
.end method

.method blacklist moveToFore(Ljava/lang/String;I)V
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appPid"    # I

    .line 240
    const/16 v0, 0x82

    invoke-virtual {p0, p1, p2, v0}, Lcom/oplus/uifirst/GlThreadManager;->updateUxForPkg(Ljava/lang/String;II)V

    .line 242
    const-string v0, "to_fore"

    invoke-virtual {p0, p1, v0}, Lcom/oplus/uifirst/GlThreadManager;->getGlThreadOps(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 243
    .local v0, "to_fore_ops":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/uifirst/Utils$ThreadOp;>;"
    sget-boolean v1, Lcom/oplus/uifirst/Utils;->DEBUG:Z

    const-string v2, "OplusUIFirst"

    if-eqz v1, :cond_0

    .line 244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "to_fore_ops "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_0
    if-eqz v0, :cond_4

    .line 247
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/uifirst/Utils$ThreadOp;

    .line 248
    .local v3, "op":Lcom/oplus/uifirst/Utils$ThreadOp;
    iget-object v4, v3, Lcom/oplus/uifirst/Utils$ThreadOp;->mMode:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 249
    iget-object v4, v3, Lcom/oplus/uifirst/Utils$ThreadOp;->mMode:Ljava/lang/String;

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x1

    sparse-switch v6, :sswitch_data_0

    :cond_1
    goto :goto_1

    :sswitch_0
    const-string v6, "repeat"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    :sswitch_1
    const-string v6, "oneshot"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v5, v7

    :goto_1
    const/4 v4, 0x5

    packed-switch v5, :pswitch_data_0

    goto :goto_2

    .line 261
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/oplus/uifirst/GlThreadManager;->getGlThreadStat(Ljava/lang/String;)Lcom/oplus/uifirst/GlThreadManager$GlThreadStat;

    move-result-object v5

    .line 262
    .local v5, "stat":Lcom/oplus/uifirst/GlThreadManager$GlThreadStat;
    if-eqz v5, :cond_3

    iget-boolean v6, v5, Lcom/oplus/uifirst/GlThreadManager$GlThreadStat;->mHasChecked:Z

    if-eqz v6, :cond_2

    .line 263
    goto :goto_2

    .line 265
    :cond_2
    iput-boolean v7, v5, Lcom/oplus/uifirst/GlThreadManager$GlThreadStat;->mHasChecked:Z

    .line 266
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v6

    .line 267
    .local v6, "msg":Landroid/os/Message;
    iput v4, v6, Landroid/os/Message;->what:I

    .line 268
    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, p1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v4, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 269
    iget-object v4, p0, Lcom/oplus/uifirst/GlThreadManager;->mHandler:Landroid/os/Handler;

    iget v7, v3, Lcom/oplus/uifirst/Utils$ThreadOp;->mDelay:I

    int-to-long v7, v7

    invoke-virtual {v4, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 270
    sget-boolean v4, Lcom/oplus/uifirst/Utils;->DEBUG:Z

    if-eqz v4, :cond_3

    .line 271
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "oneshot "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 251
    .end local v5    # "stat":Lcom/oplus/uifirst/GlThreadManager$GlThreadStat;
    .end local v6    # "msg":Landroid/os/Message;
    :pswitch_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 252
    .local v5, "msg":Landroid/os/Message;
    iput v4, v5, Landroid/os/Message;->what:I

    .line 253
    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, p1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v4, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 254
    iget-object v4, p0, Lcom/oplus/uifirst/GlThreadManager;->mHandler:Landroid/os/Handler;

    iget v6, v3, Lcom/oplus/uifirst/Utils$ThreadOp;->mDelay:I

    int-to-long v6, v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 255
    sget-boolean v4, Lcom/oplus/uifirst/Utils;->DEBUG:Z

    if-eqz v4, :cond_3

    .line 256
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "repeat "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    .end local v3    # "op":Lcom/oplus/uifirst/Utils$ThreadOp;
    .end local v5    # "msg":Landroid/os/Message;
    :cond_3
    :goto_2
    goto/16 :goto_0

    .line 279
    :cond_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4eb219a0 -> :sswitch_1
        -0x37b3d265 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method declared-synchronized blacklist removeGlThread(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I

    monitor-enter p0

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/oplus/uifirst/GlThreadManager;->mAppUxMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 88
    monitor-exit p0

    return-void

    .line 90
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/oplus/uifirst/GlThreadManager;->removePid(Ljava/lang/String;I)V

    .line 91
    iget-object v0, p0, Lcom/oplus/uifirst/GlThreadManager;->mPidTidsMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    monitor-exit p0

    return-void

    .line 85
    .end local p0    # "this":Lcom/oplus/uifirst/GlThreadManager;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "pid":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized blacklist removeGlThread(Ljava/lang/String;II)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "tid"    # I

    monitor-enter p0

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/oplus/uifirst/GlThreadManager;->mAppUxMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/uifirst/GlThreadManager$GlThreadStat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .local v0, "stat":Lcom/oplus/uifirst/GlThreadManager$GlThreadStat;
    if-nez v0, :cond_0

    .line 77
    monitor-exit p0

    return-void

    .line 79
    :cond_0
    :try_start_1
    invoke-direct {p0, p2, p3}, Lcom/oplus/uifirst/GlThreadManager;->removeTid4Pid(II)V

    .line 80
    iget-object v1, v0, Lcom/oplus/uifirst/GlThreadManager$GlThreadStat;->mPidUx:Landroid/util/ArraySet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    const/4 v1, 0x0

    invoke-static {p2, p3, v1}, Lcom/oplus/uifirst/Utils;->setUxThreadValue(III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    .end local p0    # "this":Lcom/oplus/uifirst/GlThreadManager;
    :cond_1
    monitor-exit p0

    return-void

    .line 73
    .end local v0    # "stat":Lcom/oplus/uifirst/GlThreadManager$GlThreadStat;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "pid":I
    .end local p3    # "tid":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized blacklist setGlThreadOps(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/oplus/uifirst/Utils$ThreadOp;",
            ">;)V"
        }
    .end annotation

    .local p2, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/uifirst/Utils$ThreadOp;>;"
    monitor-enter p0

    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/oplus/uifirst/GlThreadManager;->mAppUxMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/uifirst/GlThreadManager$GlThreadStat;

    .line 142
    .local v0, "stat":Lcom/oplus/uifirst/GlThreadManager$GlThreadStat;
    if-nez v0, :cond_0

    .line 143
    new-instance v1, Lcom/oplus/uifirst/GlThreadManager$GlThreadStat;

    invoke-direct {v1, p2}, Lcom/oplus/uifirst/GlThreadManager$GlThreadStat;-><init>(Ljava/util/List;)V

    move-object v0, v1

    .line 144
    iget-object v1, p0, Lcom/oplus/uifirst/GlThreadManager;->mAppUxMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 146
    .end local p0    # "this":Lcom/oplus/uifirst/GlThreadManager;
    :cond_0
    iput-object p2, v0, Lcom/oplus/uifirst/GlThreadManager$GlThreadStat;->mOps:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    :goto_0
    monitor-exit p0

    return-void

    .line 140
    .end local v0    # "stat":Lcom/oplus/uifirst/GlThreadManager$GlThreadStat;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "ops":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/uifirst/Utils$ThreadOp;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized blacklist setRenderThreadTid(Ljava/lang/String;II)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "tid"    # I

    monitor-enter p0

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/oplus/uifirst/GlThreadManager;->mAppUxMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/uifirst/GlThreadManager$GlThreadStat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    .local v0, "stat":Lcom/oplus/uifirst/GlThreadManager$GlThreadStat;
    if-nez v0, :cond_0

    .line 99
    monitor-exit p0

    return-void

    .line 101
    :cond_0
    :try_start_1
    invoke-direct {p0, p2, p3}, Lcom/oplus/uifirst/GlThreadManager;->removeTid4Pid(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    monitor-exit p0

    return-void

    .line 95
    .end local v0    # "stat":Lcom/oplus/uifirst/GlThreadManager$GlThreadStat;
    .end local p0    # "this":Lcom/oplus/uifirst/GlThreadManager;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "pid":I
    .end local p3    # "tid":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized blacklist updateUxForPkg(Ljava/lang/String;II)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "ux"    # I

    monitor-enter p0

    .line 209
    :try_start_0
    iget-object v0, p0, Lcom/oplus/uifirst/GlThreadManager;->mAppUxMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/uifirst/GlThreadManager$GlThreadStat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    .local v0, "stat":Lcom/oplus/uifirst/GlThreadManager$GlThreadStat;
    if-nez v0, :cond_0

    .line 211
    monitor-exit p0

    return-void

    .line 214
    :cond_0
    if-nez p3, :cond_1

    .line 215
    :try_start_1
    iget-object v1, v0, Lcom/oplus/uifirst/GlThreadManager$GlThreadStat;->mPidUx:Landroid/util/ArraySet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 217
    .end local p0    # "this":Lcom/oplus/uifirst/GlThreadManager;
    :cond_1
    iget-object v1, v0, Lcom/oplus/uifirst/GlThreadManager$GlThreadStat;->mPidUx:Landroid/util/ArraySet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 220
    :goto_0
    iget-object v1, p0, Lcom/oplus/uifirst/GlThreadManager;->mAppPidsMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 221
    .local v1, "pids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_2

    .line 222
    iget-object v2, p0, Lcom/oplus/uifirst/GlThreadManager;->mPidTidsMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 223
    .local v2, "tids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    if-eqz v2, :cond_2

    .line 224
    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 225
    .local v4, "tid":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {p2, v5, p3}, Lcom/oplus/uifirst/Utils;->setUxThreadValue(III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    .end local v4    # "tid":Ljava/lang/Integer;
    goto :goto_1

    .line 229
    .end local v2    # "tids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    :cond_2
    monitor-exit p0

    return-void

    .line 208
    .end local v0    # "stat":Lcom/oplus/uifirst/GlThreadManager$GlThreadStat;
    .end local v1    # "pids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "pid":I
    .end local p3    # "ux":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
