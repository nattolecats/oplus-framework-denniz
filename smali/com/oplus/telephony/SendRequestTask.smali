.class public Lcom/oplus/telephony/SendRequestTask;
.super Ljava/lang/Object;
.source "SendRequestTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/telephony/SendRequestTask$MainThreadRequest;
    }
.end annotation


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "SendRequestTask"


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mMainThreadHandler:Landroid/os/Handler;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/oplus/telephony/SendRequestTask;->mContext:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/oplus/telephony/SendRequestTask;->mMainThreadHandler:Landroid/os/Handler;

    .line 44
    return-void
.end method


# virtual methods
.method public blacklist getArgumentFromRequest(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "request"    # Ljava/lang/Object;

    .line 205
    instance-of v0, p1, Lcom/oplus/telephony/SendRequestTask$MainThreadRequest;

    if-eqz v0, :cond_0

    .line 206
    move-object v0, p1

    check-cast v0, Lcom/oplus/telephony/SendRequestTask$MainThreadRequest;

    iget-object v0, v0, Lcom/oplus/telephony/SendRequestTask$MainThreadRequest;->mArgument:Ljava/lang/Object;

    return-object v0

    .line 208
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSlotIdFromRequest(Ljava/lang/Object;)I
    .locals 1
    .param p1, "request"    # Ljava/lang/Object;

    .line 192
    instance-of v0, p1, Lcom/oplus/telephony/SendRequestTask$MainThreadRequest;

    if-eqz v0, :cond_0

    .line 193
    move-object v0, p1

    check-cast v0, Lcom/oplus/telephony/SendRequestTask$MainThreadRequest;

    iget-object v0, v0, Lcom/oplus/telephony/SendRequestTask$MainThreadRequest;->mSlotId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 195
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getWorkSource()Landroid/os/WorkSource;
    .locals 3

    .line 199
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 200
    .local v0, "uid":I
    iget-object v1, p0, Lcom/oplus/telephony/SendRequestTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, "packageName":Ljava/lang/String;
    new-instance v2, Landroid/os/WorkSource;

    invoke-direct {v2, v0, v1}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    return-object v2
.end method

.method public blacklist getWorkSourceFromRequest(Ljava/lang/Object;)Landroid/os/WorkSource;
    .locals 1
    .param p1, "request"    # Ljava/lang/Object;

    .line 212
    instance-of v0, p1, Lcom/oplus/telephony/SendRequestTask$MainThreadRequest;

    if-eqz v0, :cond_0

    .line 213
    move-object v0, p1

    check-cast v0, Lcom/oplus/telephony/SendRequestTask$MainThreadRequest;

    iget-object v0, v0, Lcom/oplus/telephony/SendRequestTask$MainThreadRequest;->mWorkSource:Landroid/os/WorkSource;

    return-object v0

    .line 215
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist handleNullReturnEvent(Landroid/os/Message;Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "command"    # Ljava/lang/String;

    .line 180
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 181
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/oplus/telephony/SendRequestTask$MainThreadRequest;

    .line 182
    .local v1, "request":Lcom/oplus/telephony/SendRequestTask$MainThreadRequest;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 183
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/oplus/telephony/SendRequestTask$MainThreadRequest;->mResult:Ljava/lang/Object;

    goto :goto_0

    .line 185
    :cond_0
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/oplus/telephony/SendRequestTask$MainThreadRequest;->mResult:Ljava/lang/Object;

    .line 186
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": exception ->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SendRequestTask"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :goto_0
    invoke-virtual {p0, v1}, Lcom/oplus/telephony/SendRequestTask;->notifyRequester(Lcom/oplus/telephony/SendRequestTask$MainThreadRequest;)V

    .line 189
    return-void
.end method

.method public blacklist notifyRequester(Lcom/oplus/telephony/SendRequestTask$MainThreadRequest;)V
    .locals 1
    .param p1, "request"    # Lcom/oplus/telephony/SendRequestTask$MainThreadRequest;

    .line 174
    monitor-enter p1

    .line 175
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 176
    monitor-exit p1

    .line 177
    return-void

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist sendRequest(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "command"    # I
    .param p2, "argument"    # Ljava/lang/Object;

    .line 52
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v7}, Lcom/oplus/telephony/SendRequestTask;->sendRequest(ILjava/lang/Object;Ljava/lang/Integer;Landroid/os/WorkSource;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist sendRequest(ILjava/lang/Object;ILandroid/os/WorkSource;)Ljava/lang/Object;
    .locals 7
    .param p1, "command"    # I
    .param p2, "argument"    # Ljava/lang/Object;
    .param p3, "slotId"    # I
    .param p4, "workSource"    # Landroid/os/WorkSource;

    .line 91
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-wide/16 v5, -0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/oplus/telephony/SendRequestTask;->sendRequest(ILjava/lang/Object;Ljava/lang/Integer;Landroid/os/WorkSource;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist sendRequest(ILjava/lang/Object;Landroid/os/WorkSource;)Ljava/lang/Object;
    .locals 8
    .param p1, "command"    # I
    .param p2, "argument"    # Ljava/lang/Object;
    .param p3, "workSource"    # Landroid/os/WorkSource;

    .line 62
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-wide/16 v6, -0x1

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v7}, Lcom/oplus/telephony/SendRequestTask;->sendRequest(ILjava/lang/Object;Ljava/lang/Integer;Landroid/os/WorkSource;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist sendRequest(ILjava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Object;
    .locals 7
    .param p1, "command"    # I
    .param p2, "argument"    # Ljava/lang/Object;
    .param p3, "slotId"    # Ljava/lang/Integer;

    .line 72
    const/4 v4, 0x0

    const-wide/16 v5, -0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/oplus/telephony/SendRequestTask;->sendRequest(ILjava/lang/Object;Ljava/lang/Integer;Landroid/os/WorkSource;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist sendRequest(ILjava/lang/Object;Ljava/lang/Integer;J)Ljava/lang/Object;
    .locals 7
    .param p1, "command"    # I
    .param p2, "argument"    # Ljava/lang/Object;
    .param p3, "slotId"    # Ljava/lang/Integer;
    .param p4, "timeoutInMs"    # J

    .line 82
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/oplus/telephony/SendRequestTask;->sendRequest(ILjava/lang/Object;Ljava/lang/Integer;Landroid/os/WorkSource;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist sendRequest(ILjava/lang/Object;Ljava/lang/Integer;Landroid/os/WorkSource;J)Ljava/lang/Object;
    .locals 9
    .param p1, "command"    # I
    .param p2, "argument"    # Ljava/lang/Object;
    .param p3, "slotId"    # Ljava/lang/Integer;
    .param p4, "workSource"    # Landroid/os/WorkSource;
    .param p5, "timeoutInMs"    # J

    .line 102
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/telephony/SendRequestTask;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_4

    .line 106
    const/4 v0, 0x0

    .line 107
    .local v0, "request":Lcom/oplus/telephony/SendRequestTask$MainThreadRequest;
    new-instance v1, Lcom/oplus/telephony/SendRequestTask$MainThreadRequest;

    invoke-direct {v1, p2, p3, p4}, Lcom/oplus/telephony/SendRequestTask$MainThreadRequest;-><init>(Ljava/lang/Object;Ljava/lang/Integer;Landroid/os/WorkSource;)V

    move-object v0, v1

    .line 109
    iget-object v1, p0, Lcom/oplus/telephony/SendRequestTask;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 110
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 113
    monitor-enter v0

    .line 114
    const-wide/16 v2, 0x0

    cmp-long v2, p5, v2

    if-ltz v2, :cond_1

    .line 116
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 117
    .local v2, "now":J
    add-long v4, v2, p5

    .line 118
    .local v4, "deadline":J
    :goto_0
    iget-object v6, v0, Lcom/oplus/telephony/SendRequestTask$MainThreadRequest;->mResult:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v6, :cond_0

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    .line 120
    sub-long v6, v4, v2

    :try_start_1
    invoke-virtual {v0, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    :goto_1
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    move-wide v2, v6

    .line 125
    goto :goto_0

    .line 124
    :catchall_0
    move-exception v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    move-wide v2, v7

    .line 125
    nop

    .end local v0    # "request":Lcom/oplus/telephony/SendRequestTask$MainThreadRequest;
    .end local v1    # "msg":Landroid/os/Message;
    .end local p0    # "this":Lcom/oplus/telephony/SendRequestTask;
    .end local p1    # "command":I
    .end local p2    # "argument":Ljava/lang/Object;
    .end local p3    # "slotId":Ljava/lang/Integer;
    .end local p4    # "workSource":Landroid/os/WorkSource;
    .end local p5    # "timeoutInMs":J
    throw v6

    .line 121
    .restart local v0    # "request":Lcom/oplus/telephony/SendRequestTask$MainThreadRequest;
    .restart local v1    # "msg":Landroid/os/Message;
    .restart local p0    # "this":Lcom/oplus/telephony/SendRequestTask;
    .restart local p1    # "command":I
    .restart local p2    # "argument":Ljava/lang/Object;
    .restart local p3    # "slotId":Ljava/lang/Integer;
    .restart local p4    # "workSource":Landroid/os/WorkSource;
    .restart local p5    # "timeoutInMs":J
    :catch_0
    move-exception v6

    goto :goto_1

    .line 127
    .end local v2    # "now":J
    .end local v4    # "deadline":J
    :cond_0
    goto :goto_4

    .line 129
    :cond_1
    :goto_2
    iget-object v2, v0, Lcom/oplus/telephony/SendRequestTask$MainThreadRequest;->mResult:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v2, :cond_2

    .line 131
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 134
    :goto_3
    goto :goto_2

    .line 132
    :catch_1
    move-exception v2

    goto :goto_3

    .line 137
    :cond_2
    :goto_4
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 138
    iget-object v2, v0, Lcom/oplus/telephony/SendRequestTask$MainThreadRequest;->mResult:Ljava/lang/Object;

    if-nez v2, :cond_3

    .line 139
    const-string v2, "SendRequestTask"

    const-string v3, "sendRequest: result is null, time out."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_3
    iget-object v2, v0, Lcom/oplus/telephony/SendRequestTask$MainThreadRequest;->mResult:Ljava/lang/Object;

    return-object v2

    .line 137
    :catchall_1
    move-exception v2

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v2

    .line 103
    .end local v0    # "request":Lcom/oplus/telephony/SendRequestTask$MainThreadRequest;
    .end local v1    # "msg":Landroid/os/Message;
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This method will deadlock if called from the main thread."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist sendRequestAsync(I)V
    .locals 1
    .param p1, "command"    # I

    .line 151
    iget-object v0, p0, Lcom/oplus/telephony/SendRequestTask;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 152
    return-void
.end method

.method public blacklist sendRequestAsync(ILjava/lang/Object;)V
    .locals 2
    .param p1, "command"    # I
    .param p2, "argument"    # Ljava/lang/Object;

    .line 159
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/oplus/telephony/SendRequestTask;->sendRequestAsync(ILjava/lang/Object;Ljava/lang/Integer;Landroid/os/WorkSource;)V

    .line 160
    return-void
.end method

.method public blacklist sendRequestAsync(ILjava/lang/Object;Ljava/lang/Integer;Landroid/os/WorkSource;)V
    .locals 2
    .param p1, "command"    # I
    .param p2, "argument"    # Ljava/lang/Object;
    .param p3, "slotId"    # Ljava/lang/Integer;
    .param p4, "workSource"    # Landroid/os/WorkSource;

    .line 168
    new-instance v0, Lcom/oplus/telephony/SendRequestTask$MainThreadRequest;

    invoke-direct {v0, p2, p3, p4}, Lcom/oplus/telephony/SendRequestTask$MainThreadRequest;-><init>(Ljava/lang/Object;Ljava/lang/Integer;Landroid/os/WorkSource;)V

    .line 169
    .local v0, "request":Lcom/oplus/telephony/SendRequestTask$MainThreadRequest;
    iget-object v1, p0, Lcom/oplus/telephony/SendRequestTask;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 170
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 171
    return-void
.end method
