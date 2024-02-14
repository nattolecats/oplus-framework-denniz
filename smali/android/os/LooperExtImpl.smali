.class public Landroid/os/LooperExtImpl;
.super Ljava/lang/Object;
.source "LooperExtImpl.java"

# interfaces
.implements Landroid/os/ILooperExt;


# instance fields
.field private blacklist mBase:Landroid/os/Looper;

.field private blacklist mLooperMessageSuperviser:Landroid/os/LooperMessageSuperviser;

.field private blacklist mMsgDispatcher:Landroid/os/OplusLooperMsgDispatcher;

.field private blacklist mMsgTimeTracker:Landroid/os/LooperMsgTimeTracker;

.field private blacklist mTimeFirst:J


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "base"    # Ljava/lang/Object;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/LooperExtImpl;->mMsgTimeTracker:Landroid/os/LooperMsgTimeTracker;

    .line 22
    iput-object v0, p0, Landroid/os/LooperExtImpl;->mLooperMessageSuperviser:Landroid/os/LooperMessageSuperviser;

    .line 24
    iput-object v0, p0, Landroid/os/LooperExtImpl;->mMsgDispatcher:Landroid/os/OplusLooperMsgDispatcher;

    .line 27
    move-object v0, p1

    check-cast v0, Landroid/os/Looper;

    iput-object v0, p0, Landroid/os/LooperExtImpl;->mBase:Landroid/os/Looper;

    .line 28
    return-void
.end method


# virtual methods
.method public blacklist initLoop(Ljava/lang/String;)V
    .locals 2
    .param p1, "threadName"    # Ljava/lang/String;

    .line 31
    const-string v0, "main"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 32
    .local v0, "mainThread":Z
    if-eqz v0, :cond_0

    .line 33
    new-instance v1, Landroid/os/LooperMsgTimeTracker;

    invoke-direct {v1}, Landroid/os/LooperMsgTimeTracker;-><init>()V

    iput-object v1, p0, Landroid/os/LooperExtImpl;->mMsgTimeTracker:Landroid/os/LooperMsgTimeTracker;

    .line 34
    new-instance v1, Landroid/os/LooperMessageSuperviser;

    invoke-direct {v1}, Landroid/os/LooperMessageSuperviser;-><init>()V

    iput-object v1, p0, Landroid/os/LooperExtImpl;->mLooperMessageSuperviser:Landroid/os/LooperMessageSuperviser;

    .line 35
    invoke-static {}, Landroid/os/OplusLooperMsgDispatcher;->getInstance()Landroid/os/OplusLooperMsgDispatcher;

    move-result-object v1

    iput-object v1, p0, Landroid/os/LooperExtImpl;->mMsgDispatcher:Landroid/os/OplusLooperMsgDispatcher;

    .line 37
    :cond_0
    return-void
.end method

.method public blacklist startLooperMessageMonitor(Landroid/os/Message;IZ)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "pid"    # I
    .param p3, "threadExist"    # Z

    .line 40
    iget-object v0, p0, Landroid/os/LooperExtImpl;->mMsgTimeTracker:Landroid/os/LooperMsgTimeTracker;

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0, p1}, Landroid/os/LooperMsgTimeTracker;->start(Landroid/os/Message;)V

    .line 43
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/LooperExtImpl;->mTimeFirst:J

    .line 44
    iget-object v0, p0, Landroid/os/LooperExtImpl;->mLooperMessageSuperviser:Landroid/os/LooperMessageSuperviser;

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    .line 45
    invoke-virtual {v0}, Landroid/os/LooperMessageSuperviser;->setForebackStatus()V

    .line 46
    iget-object v0, p0, Landroid/os/LooperExtImpl;->mLooperMessageSuperviser:Landroid/os/LooperMessageSuperviser;

    invoke-virtual {v0, p1, p2}, Landroid/os/LooperMessageSuperviser;->beginLooperMessage(Landroid/os/Message;I)V

    .line 48
    :cond_1
    iget-object v0, p0, Landroid/os/LooperExtImpl;->mMsgDispatcher:Landroid/os/OplusLooperMsgDispatcher;

    if-eqz v0, :cond_2

    if-eqz p3, :cond_2

    .line 49
    invoke-virtual {v0, p1, p2}, Landroid/os/OplusLooperMsgDispatcher;->startRegisterCurrentMsg(Landroid/os/Message;I)V

    .line 51
    :cond_2
    return-void
.end method

.method public blacklist stopLooperMessageMonitor(Landroid/os/Message;IZ)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "pid"    # I
    .param p3, "threadExist"    # Z

    .line 54
    iget-object v0, p0, Landroid/os/LooperExtImpl;->mMsgTimeTracker:Landroid/os/LooperMsgTimeTracker;

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {v0}, Landroid/os/LooperMsgTimeTracker;->stop()V

    .line 57
    :cond_0
    iget-object v0, p0, Landroid/os/LooperExtImpl;->mLooperMessageSuperviser:Landroid/os/LooperMessageSuperviser;

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    .line 58
    invoke-virtual {v0}, Landroid/os/LooperMessageSuperviser;->setForebackStatus()V

    .line 59
    iget-object v0, p0, Landroid/os/LooperExtImpl;->mLooperMessageSuperviser:Landroid/os/LooperMessageSuperviser;

    iget-wide v1, p0, Landroid/os/LooperExtImpl;->mTimeFirst:J

    invoke-virtual {v0, p1, v1, v2, p2}, Landroid/os/LooperMessageSuperviser;->endLooperMessage(Landroid/os/Message;JI)V

    .line 61
    :cond_1
    iget-object v0, p0, Landroid/os/LooperExtImpl;->mMsgDispatcher:Landroid/os/OplusLooperMsgDispatcher;

    if-eqz v0, :cond_2

    if-eqz p3, :cond_2

    .line 62
    invoke-virtual {v0, p1, p2}, Landroid/os/OplusLooperMsgDispatcher;->processRegisterFinishMsg(Landroid/os/Message;I)V

    .line 64
    :cond_2
    return-void
.end method
