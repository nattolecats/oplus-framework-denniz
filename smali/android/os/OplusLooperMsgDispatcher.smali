.class public Landroid/os/OplusLooperMsgDispatcher;
.super Ljava/lang/Object;
.source "OplusLooperMsgDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/OplusLooperMsgDispatcher$DumpQueue;
    }
.end annotation


# static fields
.field public static final blacklist BACKWARD_MSG_BUFFER_THRESHOLD:I = 0x258

.field public static final blacklist BACKWARD_MSG_MERGER_THRESHOLD:I = 0x19

.field private static final blacklist MSG_LOOP_DONE_PENDING:I = 0x2803

.field public static final blacklist TAG:Ljava/lang/String;

.field private static final blacklist TIME_BASE_WAIT_MSG_FINISH:J = 0x1388L

.field private static volatile blacklist sInstance:Landroid/os/OplusLooperMsgDispatcher;

.field private static blacklist sLock:Ljava/lang/Object;


# instance fields
.field private blacklist mDumpQueue:Landroid/os/OplusLooperMsgDispatcher$DumpQueue;

.field private blacklist mHistoryLooperHandler:Landroid/os/Handler;

.field private blacklist mIsPreVersion:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDumpQueue(Landroid/os/OplusLooperMsgDispatcher;)Landroid/os/OplusLooperMsgDispatcher$DumpQueue;
    .locals 0

    iget-object p0, p0, Landroid/os/OplusLooperMsgDispatcher;->mDumpQueue:Landroid/os/OplusLooperMsgDispatcher$DumpQueue;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDumpQueue(Landroid/os/OplusLooperMsgDispatcher;Landroid/os/OplusLooperMsgDispatcher$DumpQueue;)V
    .locals 0

    iput-object p1, p0, Landroid/os/OplusLooperMsgDispatcher;->mDumpQueue:Landroid/os/OplusLooperMsgDispatcher$DumpQueue;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsLock()Ljava/lang/Object;
    .locals 1

    sget-object v0, Landroid/os/OplusLooperMsgDispatcher;->sLock:Ljava/lang/Object;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 21
    const-class v0, Landroid/os/OplusLooperMsgDispatcher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/OplusLooperMsgDispatcher;->TAG:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    sput-object v0, Landroid/os/OplusLooperMsgDispatcher;->sInstance:Landroid/os/OplusLooperMsgDispatcher;

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/OplusLooperMsgDispatcher;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/OplusLooperMsgDispatcher;->mHistoryLooperHandler:Landroid/os/Handler;

    .line 31
    new-instance v1, Landroid/os/OplusLooperMsgDispatcher$DumpQueue;

    invoke-direct {v1, p0, v0}, Landroid/os/OplusLooperMsgDispatcher$DumpQueue;-><init>(Landroid/os/OplusLooperMsgDispatcher;Landroid/os/OplusLooperMsgDispatcher$DumpQueue-IA;)V

    iput-object v1, p0, Landroid/os/OplusLooperMsgDispatcher;->mDumpQueue:Landroid/os/OplusLooperMsgDispatcher$DumpQueue;

    .line 32
    const-string v0, "ro.build.version.ota"

    const-string v1, "ota_version"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PRE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/OplusLooperMsgDispatcher;->mIsPreVersion:Z

    .line 35
    return-void
.end method

.method private blacklist filterMsg(Landroid/os/OplusHistoryMsg;)Z
    .locals 3
    .param p1, "oplusMsg"    # Landroid/os/OplusHistoryMsg;

    .line 113
    iget-object v0, p1, Landroid/os/OplusHistoryMsg;->mCallback:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p1, Landroid/os/OplusHistoryMsg;->mCallback:Ljava/lang/String;

    const-string v1, "android.graphics.HardwareRendererObserver"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 115
    return v1

    .line 116
    :cond_0
    iget-object v0, p1, Landroid/os/OplusHistoryMsg;->mCallback:Ljava/lang/String;

    const-string v2, "android.view.Choreographer"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    return v1

    .line 120
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist getInstance()Landroid/os/OplusLooperMsgDispatcher;
    .locals 2

    .line 38
    sget-object v0, Landroid/os/OplusLooperMsgDispatcher;->sInstance:Landroid/os/OplusLooperMsgDispatcher;

    if-nez v0, :cond_1

    .line 39
    sget-object v0, Landroid/os/OplusLooperMsgDispatcher;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 40
    :try_start_0
    sget-object v1, Landroid/os/OplusLooperMsgDispatcher;->sInstance:Landroid/os/OplusLooperMsgDispatcher;

    if-nez v1, :cond_0

    .line 41
    new-instance v1, Landroid/os/OplusLooperMsgDispatcher;

    invoke-direct {v1}, Landroid/os/OplusLooperMsgDispatcher;-><init>()V

    sput-object v1, Landroid/os/OplusLooperMsgDispatcher;->sInstance:Landroid/os/OplusLooperMsgDispatcher;

    .line 43
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 45
    :cond_1
    :goto_0
    sget-object v0, Landroid/os/OplusLooperMsgDispatcher;->sInstance:Landroid/os/OplusLooperMsgDispatcher;

    return-object v0
.end method

.method private blacklist initLooper()V
    .locals 2

    .line 49
    iget-object v0, p0, Landroid/os/OplusLooperMsgDispatcher;->mHistoryLooperHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 50
    return-void

    .line 52
    :cond_0
    new-instance v0, Landroid/os/OplusLooperMsgDispatcher$1;

    invoke-static {}, Landroid/os/OplusAppBackgroundThread;->get()Landroid/os/OplusAppBackgroundThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/OplusAppBackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/os/OplusLooperMsgDispatcher$1;-><init>(Landroid/os/OplusLooperMsgDispatcher;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/os/OplusLooperMsgDispatcher;->mHistoryLooperHandler:Landroid/os/Handler;

    .line 68
    return-void
.end method

.method private blacklist isEnable()Z
    .locals 2

    .line 82
    iget-boolean v0, p0, Landroid/os/OplusLooperMsgDispatcher;->mIsPreVersion:Z

    if-nez v0, :cond_1

    const-string v0, "persist.sys.assert.panic"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private blacklist releaseLooper()V
    .locals 2

    .line 71
    iget-object v0, p0, Landroid/os/OplusLooperMsgDispatcher;->mHistoryLooperHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 72
    return-void

    .line 74
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 75
    iput-object v1, p0, Landroid/os/OplusLooperMsgDispatcher;->mHistoryLooperHandler:Landroid/os/Handler;

    .line 76
    iget-object v0, p0, Landroid/os/OplusLooperMsgDispatcher;->mDumpQueue:Landroid/os/OplusLooperMsgDispatcher$DumpQueue;

    if-eqz v0, :cond_1

    .line 77
    invoke-virtual {v0}, Landroid/os/OplusLooperMsgDispatcher$DumpQueue;->clear()V

    .line 79
    :cond_1
    return-void
.end method


# virtual methods
.method public blacklist processRegisterFinishMsg(Landroid/os/Message;I)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "pid"    # I

    .line 124
    sget-object v0, Landroid/os/OplusLooperMsgDispatcher;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 125
    :try_start_0
    iget-object v1, p0, Landroid/os/OplusLooperMsgDispatcher;->mHistoryLooperHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 126
    monitor-exit v0

    return-void

    .line 128
    :cond_0
    iget-object v1, p1, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-nez v1, :cond_1

    iget-object v1, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 129
    monitor-exit v0

    return-void

    .line 131
    :cond_1
    iget-object v1, p0, Landroid/os/OplusLooperMsgDispatcher;->mDumpQueue:Landroid/os/OplusLooperMsgDispatcher$DumpQueue;

    invoke-static {v1}, Landroid/os/OplusLooperMsgDispatcher$DumpQueue;->-$$Nest$fgetmCurrentMsg(Landroid/os/OplusLooperMsgDispatcher$DumpQueue;)Landroid/os/OplusHistoryMsg;

    move-result-object v1

    if-nez v1, :cond_2

    .line 132
    monitor-exit v0

    return-void

    .line 134
    :cond_2
    iget-object v1, p0, Landroid/os/OplusLooperMsgDispatcher;->mHistoryLooperHandler:Landroid/os/Handler;

    const/16 v2, 0x2803

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 135
    iget-object v1, p0, Landroid/os/OplusLooperMsgDispatcher;->mDumpQueue:Landroid/os/OplusLooperMsgDispatcher$DumpQueue;

    invoke-virtual {v1}, Landroid/os/OplusLooperMsgDispatcher$DumpQueue;->processRegisterFinishMsg()V

    .line 136
    monitor-exit v0

    .line 137
    return-void

    .line 136
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist startRegisterCurrentMsg(Landroid/os/Message;I)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "pid"    # I

    .line 86
    sget-object v0, Landroid/os/OplusLooperMsgDispatcher;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 87
    :try_start_0
    invoke-direct {p0}, Landroid/os/OplusLooperMsgDispatcher;->isEnable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 88
    invoke-direct {p0}, Landroid/os/OplusLooperMsgDispatcher;->initLooper()V

    .line 93
    iget-object v1, p0, Landroid/os/OplusLooperMsgDispatcher;->mHistoryLooperHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 94
    monitor-exit v0

    return-void

    .line 96
    :cond_0
    iget-object v1, p0, Landroid/os/OplusLooperMsgDispatcher;->mDumpQueue:Landroid/os/OplusLooperMsgDispatcher$DumpQueue;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/OplusLooperMsgDispatcher$DumpQueue;->-$$Nest$fputmCurrentMsg(Landroid/os/OplusLooperMsgDispatcher$DumpQueue;Landroid/os/OplusHistoryMsg;)V

    .line 97
    iget-object v1, p1, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-nez v1, :cond_1

    iget-object v1, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 98
    monitor-exit v0

    return-void

    .line 100
    :cond_1
    invoke-static {p1}, Landroid/os/OplusHistoryMsg;->startMsg(Landroid/os/Message;)Landroid/os/OplusHistoryMsg;

    move-result-object v1

    .line 101
    .local v1, "oplusMsg":Landroid/os/OplusHistoryMsg;
    invoke-direct {p0, v1}, Landroid/os/OplusLooperMsgDispatcher;->filterMsg(Landroid/os/OplusHistoryMsg;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 102
    monitor-exit v0

    return-void

    .line 104
    :cond_2
    iget-object v2, p0, Landroid/os/OplusLooperMsgDispatcher;->mDumpQueue:Landroid/os/OplusLooperMsgDispatcher$DumpQueue;

    invoke-virtual {v2, v1}, Landroid/os/OplusLooperMsgDispatcher$DumpQueue;->startRegisterCurrentMsg(Landroid/os/OplusHistoryMsg;)V

    .line 105
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 106
    .local v2, "delayMsg":Landroid/os/Message;
    const/16 v3, 0x2803

    iput v3, v2, Landroid/os/Message;->what:I

    .line 107
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 108
    iget-object v3, p0, Landroid/os/OplusLooperMsgDispatcher;->mHistoryLooperHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 109
    nop

    .end local v1    # "oplusMsg":Landroid/os/OplusHistoryMsg;
    .end local v2    # "delayMsg":Landroid/os/Message;
    monitor-exit v0

    .line 110
    return-void

    .line 90
    :cond_3
    invoke-direct {p0}, Landroid/os/OplusLooperMsgDispatcher;->releaseLooper()V

    .line 91
    monitor-exit v0

    return-void

    .line 109
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
