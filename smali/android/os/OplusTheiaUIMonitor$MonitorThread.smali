.class Landroid/os/OplusTheiaUIMonitor$MonitorThread;
.super Ljava/lang/Thread;
.source "OplusTheiaUIMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/OplusTheiaUIMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MonitorThread"
.end annotation


# instance fields
.field private blacklist mLastGotTracedMessageStartTime:J

.field public volatile blacklist mStarted:Z

.field final synthetic blacklist this$0:Landroid/os/OplusTheiaUIMonitor;


# direct methods
.method public constructor blacklist <init>(Landroid/os/OplusTheiaUIMonitor;)V
    .locals 2

    .line 141
    iput-object p1, p0, Landroid/os/OplusTheiaUIMonitor$MonitorThread;->this$0:Landroid/os/OplusTheiaUIMonitor;

    .line 142
    const-string p1, "UIMonitorThread"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 138
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/os/OplusTheiaUIMonitor$MonitorThread;->mStarted:Z

    .line 139
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/os/OplusTheiaUIMonitor$MonitorThread;->mLastGotTracedMessageStartTime:J

    .line 143
    return-void
.end method

.method private blacklist handleOnce()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 154
    const/4 v0, 0x1

    .line 155
    .local v0, "count":I
    :goto_0
    iget-object v1, p0, Landroid/os/OplusTheiaUIMonitor$MonitorThread;->this$0:Landroid/os/OplusTheiaUIMonitor;

    invoke-static {v1}, Landroid/os/OplusTheiaUIMonitor;->-$$Nest$misMessageProcessing(Landroid/os/OplusTheiaUIMonitor;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/os/OplusTheiaUIMonitor$MonitorThread;->this$0:Landroid/os/OplusTheiaUIMonitor;

    invoke-static {v1}, Landroid/os/OplusTheiaUIMonitor;->-$$Nest$fgetmMessageGetStackCountMax(Landroid/os/OplusTheiaUIMonitor;)I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 156
    invoke-direct {p0, v0}, Landroid/os/OplusTheiaUIMonitor$MonitorThread;->isUILooperGetStackTimeout(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 157
    iget-object v1, p0, Landroid/os/OplusTheiaUIMonitor$MonitorThread;->this$0:Landroid/os/OplusTheiaUIMonitor;

    .line 158
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    iget-object v3, p0, Landroid/os/OplusTheiaUIMonitor$MonitorThread;->this$0:Landroid/os/OplusTheiaUIMonitor;

    invoke-static {v3}, Landroid/os/OplusTheiaUIMonitor;->-$$Nest$mgetPackageName(Landroid/os/OplusTheiaUIMonitor;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    .line 157
    invoke-static {v1, v2, v3, v4}, Landroid/os/OplusTheiaUIMonitor;->-$$Nest$mgetUIThreadMiniStackInfo(Landroid/os/OplusTheiaUIMonitor;Ljava/lang/Thread;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    move v4, v3

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    invoke-static {v1, v2, v4}, Landroid/os/OplusTheiaUIMonitor;->-$$Nest$mappendBlockTrace(Landroid/os/OplusTheiaUIMonitor;Ljava/lang/String;Z)V

    .line 159
    iget-object v1, p0, Landroid/os/OplusTheiaUIMonitor$MonitorThread;->this$0:Landroid/os/OplusTheiaUIMonitor;

    invoke-static {v1}, Landroid/os/OplusTheiaUIMonitor;->-$$Nest$fgetmMessageGetStackCountMax(Landroid/os/OplusTheiaUIMonitor;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 160
    iget-object v1, p0, Landroid/os/OplusTheiaUIMonitor$MonitorThread;->this$0:Landroid/os/OplusTheiaUIMonitor;

    invoke-static {v1}, Landroid/os/OplusTheiaUIMonitor;->-$$Nest$fgetmMessageProcessStartTime(Landroid/os/OplusTheiaUIMonitor;)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/OplusTheiaUIMonitor$MonitorThread;->mLastGotTracedMessageStartTime:J

    .line 161
    iget-object v1, p0, Landroid/os/OplusTheiaUIMonitor$MonitorThread;->this$0:Landroid/os/OplusTheiaUIMonitor;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleOnce set mLastGotTracedMessageStartTime:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Landroid/os/OplusTheiaUIMonitor$MonitorThread;->mLastGotTracedMessageStartTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/OplusTheiaUIMonitor;->-$$Nest$mdetailLog(Landroid/os/OplusTheiaUIMonitor;Ljava/lang/String;)V

    .line 162
    iget-object v1, p0, Landroid/os/OplusTheiaUIMonitor$MonitorThread;->this$0:Landroid/os/OplusTheiaUIMonitor;

    invoke-static {v1}, Landroid/os/OplusTheiaUIMonitor;->-$$Nest$mgetPackageName(Landroid/os/OplusTheiaUIMonitor;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Landroid/os/OplusTheiaUIMonitor$MonitorThread;->this$0:Landroid/os/OplusTheiaUIMonitor;

    invoke-static {v4}, Landroid/os/OplusTheiaUIMonitor;->-$$Nest$mgetBlockTrace(Landroid/os/OplusTheiaUIMonitor;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {v1, v2, v4, v5, v3}, Landroid/os/OplusTheiaUIMonitor;->-$$Nest$msendUITimeoutEvent(Landroid/os/OplusTheiaUIMonitor;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 165
    :cond_1
    iget-object v1, p0, Landroid/os/OplusTheiaUIMonitor$MonitorThread;->this$0:Landroid/os/OplusTheiaUIMonitor;

    invoke-static {v1}, Landroid/os/OplusTheiaUIMonitor;->-$$Nest$fgetmMessageGetStackInterval(Landroid/os/OplusTheiaUIMonitor;)J

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 172
    :cond_2
    return-void
.end method

.method private blacklist isGotTraceTooFrequently()Z
    .locals 6

    .line 179
    iget-wide v0, p0, Landroid/os/OplusTheiaUIMonitor$MonitorThread;->mLastGotTracedMessageStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 180
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/os/OplusTheiaUIMonitor$MonitorThread;->mLastGotTracedMessageStartTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    iget-object v4, p0, Landroid/os/OplusTheiaUIMonitor$MonitorThread;->this$0:Landroid/os/OplusTheiaUIMonitor;

    invoke-static {v4}, Landroid/os/OplusTheiaUIMonitor;->-$$Nest$fgetmUILooperMessageTimeout(Landroid/os/OplusTheiaUIMonitor;)J

    move-result-wide v4

    add-long/2addr v4, v2

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 181
    .local v0, "tooFreqently":Z
    :goto_0
    return v0
.end method

.method private blacklist isMessageHaveGotTrace()Z
    .locals 4

    .line 175
    iget-wide v0, p0, Landroid/os/OplusTheiaUIMonitor$MonitorThread;->mLastGotTracedMessageStartTime:J

    iget-object v2, p0, Landroid/os/OplusTheiaUIMonitor$MonitorThread;->this$0:Landroid/os/OplusTheiaUIMonitor;

    invoke-static {v2}, Landroid/os/OplusTheiaUIMonitor;->-$$Nest$fgetmMessageProcessStartTime(Landroid/os/OplusTheiaUIMonitor;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist isScreenOn()Z
    .locals 2

    .line 189
    const-string v0, "debug.tracing.screen_state"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 190
    .local v0, "state":I
    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private blacklist isUILooperGetStackTimeout(I)Z
    .locals 8
    .param p1, "count"    # I

    .line 146
    iget-object v0, p0, Landroid/os/OplusTheiaUIMonitor$MonitorThread;->this$0:Landroid/os/OplusTheiaUIMonitor;

    invoke-static {v0}, Landroid/os/OplusTheiaUIMonitor;->-$$Nest$misMessageProcessing(Landroid/os/OplusTheiaUIMonitor;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 147
    return v1

    .line 150
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Landroid/os/OplusTheiaUIMonitor$MonitorThread;->this$0:Landroid/os/OplusTheiaUIMonitor;

    invoke-static {v0}, Landroid/os/OplusTheiaUIMonitor;->-$$Nest$fgetmMessageProcessStartTime(Landroid/os/OplusTheiaUIMonitor;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-object v0, p0, Landroid/os/OplusTheiaUIMonitor$MonitorThread;->this$0:Landroid/os/OplusTheiaUIMonitor;

    invoke-static {v0}, Landroid/os/OplusTheiaUIMonitor;->-$$Nest$fgetmMessageGetStackInterval(Landroid/os/OplusTheiaUIMonitor;)J

    move-result-wide v4

    int-to-long v6, p1

    mul-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private blacklist needHandle()Z
    .locals 1

    .line 185
    invoke-direct {p0}, Landroid/os/OplusTheiaUIMonitor$MonitorThread;->isMessageHaveGotTrace()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/os/OplusTheiaUIMonitor$MonitorThread;->isGotTraceTooFrequently()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 8

    .line 195
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 197
    :goto_0
    invoke-virtual {p0}, Landroid/os/OplusTheiaUIMonitor$MonitorThread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_6

    iget-boolean v0, p0, Landroid/os/OplusTheiaUIMonitor$MonitorThread;->mStarted:Z

    if-eqz v0, :cond_6

    .line 199
    const-wide/16 v0, -0x1

    .line 200
    .local v0, "sleepTime":J
    :try_start_0
    invoke-direct {p0}, Landroid/os/OplusTheiaUIMonitor$MonitorThread;->isScreenOn()Z

    move-result v2

    if-nez v2, :cond_0

    .line 201
    const-wide/16 v0, 0x7530

    .line 202
    iget-object v2, p0, Landroid/os/OplusTheiaUIMonitor$MonitorThread;->this$0:Landroid/os/OplusTheiaUIMonitor;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MonitorThread,screen off, sleepTime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/OplusTheiaUIMonitor;->-$$Nest$mdetailLog(Landroid/os/OplusTheiaUIMonitor;Ljava/lang/String;)V

    goto :goto_3

    .line 203
    :cond_0
    invoke-direct {p0}, Landroid/os/OplusTheiaUIMonitor$MonitorThread;->isGotTraceTooFrequently()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 204
    iget-wide v2, p0, Landroid/os/OplusTheiaUIMonitor$MonitorThread;->mLastGotTracedMessageStartTime:J

    iget-object v4, p0, Landroid/os/OplusTheiaUIMonitor$MonitorThread;->this$0:Landroid/os/OplusTheiaUIMonitor;

    invoke-static {v4}, Landroid/os/OplusTheiaUIMonitor;->-$$Nest$fgetmUILooperMessageTimeout(Landroid/os/OplusTheiaUIMonitor;)J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 205
    .local v2, "gotTracedTime":J
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_1

    iget-object v4, p0, Landroid/os/OplusTheiaUIMonitor$MonitorThread;->this$0:Landroid/os/OplusTheiaUIMonitor;

    invoke-static {v4}, Landroid/os/OplusTheiaUIMonitor;->-$$Nest$fgetmMessageGetStackInterval(Landroid/os/OplusTheiaUIMonitor;)J

    move-result-wide v4

    goto :goto_1

    :cond_1
    const-wide/32 v4, 0xea60

    add-long/2addr v4, v2

    .line 206
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    :goto_1
    move-wide v0, v4

    .line 207
    .end local v2    # "gotTracedTime":J
    goto :goto_3

    :cond_2
    invoke-direct {p0}, Landroid/os/OplusTheiaUIMonitor$MonitorThread;->isMessageHaveGotTrace()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 208
    iget-object v2, p0, Landroid/os/OplusTheiaUIMonitor$MonitorThread;->this$0:Landroid/os/OplusTheiaUIMonitor;

    invoke-static {v2}, Landroid/os/OplusTheiaUIMonitor;->-$$Nest$fgetmMessageGetStackInterval(Landroid/os/OplusTheiaUIMonitor;)J

    move-result-wide v2

    move-wide v0, v2

    goto :goto_3

    .line 210
    :cond_3
    invoke-direct {p0}, Landroid/os/OplusTheiaUIMonitor$MonitorThread;->handleOnce()V

    .line 211
    iget-object v2, p0, Landroid/os/OplusTheiaUIMonitor$MonitorThread;->this$0:Landroid/os/OplusTheiaUIMonitor;

    invoke-static {v2}, Landroid/os/OplusTheiaUIMonitor;->-$$Nest$fgetmMessageProcessStartTime(Landroid/os/OplusTheiaUIMonitor;)J

    move-result-wide v2

    .line 212
    .local v2, "startTime":J
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v4, v4, v2

    if-nez v4, :cond_4

    iget-object v4, p0, Landroid/os/OplusTheiaUIMonitor$MonitorThread;->this$0:Landroid/os/OplusTheiaUIMonitor;

    invoke-static {v4}, Landroid/os/OplusTheiaUIMonitor;->-$$Nest$fgetmMessageGetStackInterval(Landroid/os/OplusTheiaUIMonitor;)J

    move-result-wide v4

    goto :goto_2

    :cond_4
    iget-object v4, p0, Landroid/os/OplusTheiaUIMonitor$MonitorThread;->this$0:Landroid/os/OplusTheiaUIMonitor;

    invoke-static {v4}, Landroid/os/OplusTheiaUIMonitor;->-$$Nest$fgetmMessageGetStackInterval(Landroid/os/OplusTheiaUIMonitor;)J

    move-result-wide v4

    add-long/2addr v4, v2

    .line 213
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    :goto_2
    move-wide v0, v4

    .line 216
    .end local v2    # "startTime":J
    :goto_3
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_5

    .line 218
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 220
    .end local v0    # "sleepTime":J
    :catch_0
    move-exception v0

    .line 222
    :cond_5
    :goto_4
    goto/16 :goto_0

    .line 224
    :cond_6
    return-void
.end method
