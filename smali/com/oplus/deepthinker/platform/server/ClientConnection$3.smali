.class Lcom/oplus/deepthinker/platform/server/ClientConnection$3;
.super Ljava/lang/Object;
.source "ClientConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/deepthinker/platform/server/ClientConnection;->tryConnect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/oplus/deepthinker/platform/server/ClientConnection;


# direct methods
.method constructor blacklist <init>(Lcom/oplus/deepthinker/platform/server/ClientConnection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oplus/deepthinker/platform/server/ClientConnection;

    .line 188
    iput-object p1, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection$3;->this$0:Lcom/oplus/deepthinker/platform/server/ClientConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 7

    .line 191
    const-string v0, "ClientConnection"

    const-string v1, "tryConnect: start connect on async thread."

    invoke-static {v0, v1}, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v1, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection$3;->this$0:Lcom/oplus/deepthinker/platform/server/ClientConnection;

    invoke-static {v1}, Lcom/oplus/deepthinker/platform/server/ClientConnection;->-$$Nest$misQ(Lcom/oplus/deepthinker/platform/server/ClientConnection;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection$3;->this$0:Lcom/oplus/deepthinker/platform/server/ClientConnection;

    invoke-static {v1}, Lcom/oplus/deepthinker/platform/server/ClientConnection;->-$$Nest$misOnMainThread(Lcom/oplus/deepthinker/platform/server/ClientConnection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    const-string v1, "tryConnect: bind service on main thread, ignore ileagal usage."

    invoke-static {v0, v1}, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    return-void

    .line 199
    :cond_0
    iget-object v1, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection$3;->this$0:Lcom/oplus/deepthinker/platform/server/ClientConnection;

    invoke-static {v1}, Lcom/oplus/deepthinker/platform/server/ClientConnection;->-$$Nest$fgetBINDER_LOCK(Lcom/oplus/deepthinker/platform/server/ClientConnection;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 200
    iget-object v1, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection$3;->this$0:Lcom/oplus/deepthinker/platform/server/ClientConnection;

    invoke-static {v1}, Lcom/oplus/deepthinker/platform/server/ClientConnection;->-$$Nest$fgetmState(Lcom/oplus/deepthinker/platform/server/ClientConnection;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 201
    iget-object v1, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection$3;->this$0:Lcom/oplus/deepthinker/platform/server/ClientConnection;

    invoke-static {v1}, Lcom/oplus/deepthinker/platform/server/ClientConnection;->-$$Nest$fgetBINDER_LOCK(Lcom/oplus/deepthinker/platform/server/ClientConnection;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 202
    const-string v1, "tryConnect: Already connected, do not reconnect again."

    invoke-static {v0, v1}, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    return-void

    .line 205
    :cond_1
    iget-object v1, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection$3;->this$0:Lcom/oplus/deepthinker/platform/server/ClientConnection;

    invoke-static {v1}, Lcom/oplus/deepthinker/platform/server/ClientConnection;->-$$Nest$fgetmState(Lcom/oplus/deepthinker/platform/server/ClientConnection;)I

    move-result v1

    const-wide/16 v3, 0x2

    const/4 v5, 0x1

    if-ne v1, v5, :cond_3

    .line 206
    iget-object v1, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection$3;->this$0:Lcom/oplus/deepthinker/platform/server/ClientConnection;

    invoke-static {v1}, Lcom/oplus/deepthinker/platform/server/ClientConnection;->-$$Nest$fgetBINDER_LOCK(Lcom/oplus/deepthinker/platform/server/ClientConnection;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 207
    const-string v1, "tryConnect: Already do connecting, do not reconnect again."

    invoke-static {v0, v1}, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v1, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection$3;->this$0:Lcom/oplus/deepthinker/platform/server/ClientConnection;

    invoke-static {v1}, Lcom/oplus/deepthinker/platform/server/ClientConnection;->-$$Nest$fgetmCountDownLatch(Lcom/oplus/deepthinker/platform/server/ClientConnection;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 210
    :try_start_0
    iget-object v1, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection$3;->this$0:Lcom/oplus/deepthinker/platform/server/ClientConnection;

    invoke-static {v1}, Lcom/oplus/deepthinker/platform/server/ClientConnection;->-$$Nest$fgetmCountDownLatch(Lcom/oplus/deepthinker/platform/server/ClientConnection;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3, v4, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    goto :goto_0

    .line 211
    :catch_0
    move-exception v1

    .line 212
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v2, "tryConnect: wait to be connected error: "

    invoke-static {v0, v2, v1}, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 215
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_2
    :goto_0
    return-void

    .line 218
    :cond_3
    iget-object v1, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection$3;->this$0:Lcom/oplus/deepthinker/platform/server/ClientConnection;

    invoke-static {v1, v5}, Lcom/oplus/deepthinker/platform/server/ClientConnection;->-$$Nest$fputmState(Lcom/oplus/deepthinker/platform/server/ClientConnection;I)V

    .line 219
    iget-object v1, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection$3;->this$0:Lcom/oplus/deepthinker/platform/server/ClientConnection;

    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v6, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    invoke-static {v1, v6}, Lcom/oplus/deepthinker/platform/server/ClientConnection;->-$$Nest$fputmCountDownLatch(Lcom/oplus/deepthinker/platform/server/ClientConnection;Ljava/util/concurrent/CountDownLatch;)V

    .line 220
    iget-object v1, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection$3;->this$0:Lcom/oplus/deepthinker/platform/server/ClientConnection;

    invoke-static {v1}, Lcom/oplus/deepthinker/platform/server/ClientConnection;->-$$Nest$fgetBINDER_LOCK(Lcom/oplus/deepthinker/platform/server/ClientConnection;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 222
    const-string v1, "tryConnect: start bind service"

    invoke-static {v0, v1}, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v1, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection$3;->this$0:Lcom/oplus/deepthinker/platform/server/ClientConnection;

    invoke-static {v1}, Lcom/oplus/deepthinker/platform/server/ClientConnection;->-$$Nest$mbindServiceByPlatform(Lcom/oplus/deepthinker/platform/server/ClientConnection;)Z

    move-result v1

    const/4 v5, 0x3

    if-eqz v1, :cond_6

    .line 225
    :try_start_1
    iget-object v1, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection$3;->this$0:Lcom/oplus/deepthinker/platform/server/ClientConnection;

    invoke-static {v1}, Lcom/oplus/deepthinker/platform/server/ClientConnection;->-$$Nest$fgetmCountDownLatch(Lcom/oplus/deepthinker/platform/server/ClientConnection;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3, v4, v6}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    iget-object v1, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection$3;->this$0:Lcom/oplus/deepthinker/platform/server/ClientConnection;

    invoke-static {v1}, Lcom/oplus/deepthinker/platform/server/ClientConnection;->-$$Nest$fgetBINDER_LOCK(Lcom/oplus/deepthinker/platform/server/ClientConnection;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 230
    iget-object v1, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection$3;->this$0:Lcom/oplus/deepthinker/platform/server/ClientConnection;

    invoke-static {v1}, Lcom/oplus/deepthinker/platform/server/ClientConnection;->-$$Nest$fgetmState(Lcom/oplus/deepthinker/platform/server/ClientConnection;)I

    move-result v1

    if-eq v1, v2, :cond_4

    .line 231
    :goto_1
    iget-object v1, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection$3;->this$0:Lcom/oplus/deepthinker/platform/server/ClientConnection;

    invoke-static {v1, v5}, Lcom/oplus/deepthinker/platform/server/ClientConnection;->-$$Nest$fputmState(Lcom/oplus/deepthinker/platform/server/ClientConnection;I)V

    .line 233
    :cond_4
    iget-object v1, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection$3;->this$0:Lcom/oplus/deepthinker/platform/server/ClientConnection;

    invoke-static {v1}, Lcom/oplus/deepthinker/platform/server/ClientConnection;->-$$Nest$fgetBINDER_LOCK(Lcom/oplus/deepthinker/platform/server/ClientConnection;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 234
    goto/16 :goto_3

    .line 229
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 226
    :catch_1
    move-exception v1

    .line 227
    .restart local v1    # "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v3, "tryConnect: connectBinderPoolService error: "

    invoke-static {v0, v3, v1}, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 229
    .end local v1    # "e":Ljava/lang/InterruptedException;
    iget-object v1, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection$3;->this$0:Lcom/oplus/deepthinker/platform/server/ClientConnection;

    invoke-static {v1}, Lcom/oplus/deepthinker/platform/server/ClientConnection;->-$$Nest$fgetBINDER_LOCK(Lcom/oplus/deepthinker/platform/server/ClientConnection;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 230
    iget-object v1, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection$3;->this$0:Lcom/oplus/deepthinker/platform/server/ClientConnection;

    invoke-static {v1}, Lcom/oplus/deepthinker/platform/server/ClientConnection;->-$$Nest$fgetmState(Lcom/oplus/deepthinker/platform/server/ClientConnection;)I

    move-result v1

    if-eq v1, v2, :cond_4

    .line 231
    goto :goto_1

    .line 229
    :goto_2
    iget-object v1, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection$3;->this$0:Lcom/oplus/deepthinker/platform/server/ClientConnection;

    invoke-static {v1}, Lcom/oplus/deepthinker/platform/server/ClientConnection;->-$$Nest$fgetBINDER_LOCK(Lcom/oplus/deepthinker/platform/server/ClientConnection;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 230
    iget-object v1, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection$3;->this$0:Lcom/oplus/deepthinker/platform/server/ClientConnection;

    invoke-static {v1}, Lcom/oplus/deepthinker/platform/server/ClientConnection;->-$$Nest$fgetmState(Lcom/oplus/deepthinker/platform/server/ClientConnection;)I

    move-result v1

    if-eq v1, v2, :cond_5

    .line 231
    iget-object v1, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection$3;->this$0:Lcom/oplus/deepthinker/platform/server/ClientConnection;

    invoke-static {v1, v5}, Lcom/oplus/deepthinker/platform/server/ClientConnection;->-$$Nest$fputmState(Lcom/oplus/deepthinker/platform/server/ClientConnection;I)V

    .line 233
    :cond_5
    iget-object v1, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection$3;->this$0:Lcom/oplus/deepthinker/platform/server/ClientConnection;

    invoke-static {v1}, Lcom/oplus/deepthinker/platform/server/ClientConnection;->-$$Nest$fgetBINDER_LOCK(Lcom/oplus/deepthinker/platform/server/ClientConnection;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 234
    throw v0

    .line 236
    :cond_6
    iget-object v1, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection$3;->this$0:Lcom/oplus/deepthinker/platform/server/ClientConnection;

    invoke-static {v1}, Lcom/oplus/deepthinker/platform/server/ClientConnection;->-$$Nest$fgetBINDER_LOCK(Lcom/oplus/deepthinker/platform/server/ClientConnection;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 237
    iget-object v1, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection$3;->this$0:Lcom/oplus/deepthinker/platform/server/ClientConnection;

    invoke-static {v1, v5}, Lcom/oplus/deepthinker/platform/server/ClientConnection;->-$$Nest$fputmState(Lcom/oplus/deepthinker/platform/server/ClientConnection;I)V

    .line 238
    iget-object v1, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection$3;->this$0:Lcom/oplus/deepthinker/platform/server/ClientConnection;

    invoke-static {v1}, Lcom/oplus/deepthinker/platform/server/ClientConnection;->-$$Nest$fgetBINDER_LOCK(Lcom/oplus/deepthinker/platform/server/ClientConnection;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 239
    iget-object v1, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection$3;->this$0:Lcom/oplus/deepthinker/platform/server/ClientConnection;

    invoke-static {v1}, Lcom/oplus/deepthinker/platform/server/ClientConnection;->-$$Nest$fgetmCountDownLatch(Lcom/oplus/deepthinker/platform/server/ClientConnection;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 240
    iget-object v1, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection$3;->this$0:Lcom/oplus/deepthinker/platform/server/ClientConnection;

    invoke-static {v1}, Lcom/oplus/deepthinker/platform/server/ClientConnection;->-$$Nest$fgetmCountDownLatch(Lcom/oplus/deepthinker/platform/server/ClientConnection;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 243
    :cond_7
    const-string v1, "tryConnect: Bind Algorithm Service Failed!"

    invoke-static {v0, v1}, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    :goto_3
    const-string v1, "tryConnect: end connect on async thread."

    invoke-static {v0, v1}, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    return-void
.end method
