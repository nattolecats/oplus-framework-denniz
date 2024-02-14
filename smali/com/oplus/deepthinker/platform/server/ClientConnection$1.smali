.class Lcom/oplus/deepthinker/platform/server/ClientConnection$1;
.super Ljava/lang/Object;
.source "ClientConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/deepthinker/platform/server/ClientConnection;
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

    .line 50
    iput-object p1, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection$1;->this$0:Lcom/oplus/deepthinker/platform/server/ClientConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceConnected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ClientConnection"

    invoke-static {v2, v0}, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    if-nez p2, :cond_1

    .line 55
    return-void

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection$1;->this$0:Lcom/oplus/deepthinker/platform/server/ClientConnection;

    invoke-static {v0}, Lcom/oplus/deepthinker/platform/server/ClientConnection;->-$$Nest$fgetBINDER_LOCK(Lcom/oplus/deepthinker/platform/server/ClientConnection;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 60
    const/4 v0, 0x2

    const/4 v3, 0x3

    :try_start_0
    iget-object v4, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection$1;->this$0:Lcom/oplus/deepthinker/platform/server/ClientConnection;

    new-instance v5, Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;

    invoke-direct {v5, p2}, Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;-><init>(Landroid/os/IBinder;)V

    invoke-static {v4, v5}, Lcom/oplus/deepthinker/platform/server/ClientConnection;->-$$Nest$fputmInvokeDelegate(Lcom/oplus/deepthinker/platform/server/ClientConnection;Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;)V

    .line 61
    iget-object v4, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection$1;->this$0:Lcom/oplus/deepthinker/platform/server/ClientConnection;

    invoke-static {v4}, Lcom/oplus/deepthinker/platform/server/ClientConnection;->-$$Nest$fgetmDeathRecipient(Lcom/oplus/deepthinker/platform/server/ClientConnection;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v4

    invoke-interface {p2, v4, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    iget-object v1, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection$1;->this$0:Lcom/oplus/deepthinker/platform/server/ClientConnection;

    invoke-static {v1}, Lcom/oplus/deepthinker/platform/server/ClientConnection;->-$$Nest$fgetmInvokeDelegate(Lcom/oplus/deepthinker/platform/server/ClientConnection;)Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 66
    iget-object v1, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection$1;->this$0:Lcom/oplus/deepthinker/platform/server/ClientConnection;

    invoke-static {v1, v0}, Lcom/oplus/deepthinker/platform/server/ClientConnection;->-$$Nest$fputmState(Lcom/oplus/deepthinker/platform/server/ClientConnection;I)V

    goto :goto_1

    .line 68
    :cond_2
    iget-object v0, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection$1;->this$0:Lcom/oplus/deepthinker/platform/server/ClientConnection;

    invoke-static {v0, v3}, Lcom/oplus/deepthinker/platform/server/ClientConnection;->-$$Nest$fputmState(Lcom/oplus/deepthinker/platform/server/ClientConnection;I)V

    .line 70
    :goto_1
    iget-object v0, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection$1;->this$0:Lcom/oplus/deepthinker/platform/server/ClientConnection;

    invoke-static {v0}, Lcom/oplus/deepthinker/platform/server/ClientConnection;->-$$Nest$fgetBINDER_LOCK(Lcom/oplus/deepthinker/platform/server/ClientConnection;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 71
    iget-object v0, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection$1;->this$0:Lcom/oplus/deepthinker/platform/server/ClientConnection;

    invoke-static {v0}, Lcom/oplus/deepthinker/platform/server/ClientConnection;->-$$Nest$fgetmCountDownLatch(Lcom/oplus/deepthinker/platform/server/ClientConnection;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 72
    goto :goto_3

    .line 65
    :catchall_0
    move-exception v1

    goto :goto_4

    .line 62
    :catch_0
    move-exception v1

    .line 63
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "onServiceConnected: "

    invoke-static {v2, v4, v1}, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    .end local v1    # "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection$1;->this$0:Lcom/oplus/deepthinker/platform/server/ClientConnection;

    invoke-static {v1}, Lcom/oplus/deepthinker/platform/server/ClientConnection;->-$$Nest$fgetmInvokeDelegate(Lcom/oplus/deepthinker/platform/server/ClientConnection;)Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 66
    iget-object v1, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection$1;->this$0:Lcom/oplus/deepthinker/platform/server/ClientConnection;

    invoke-static {v1, v0}, Lcom/oplus/deepthinker/platform/server/ClientConnection;->-$$Nest$fputmState(Lcom/oplus/deepthinker/platform/server/ClientConnection;I)V

    goto :goto_2

    .line 68
    :cond_3
    iget-object v0, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection$1;->this$0:Lcom/oplus/deepthinker/platform/server/ClientConnection;

    invoke-static {v0, v3}, Lcom/oplus/deepthinker/platform/server/ClientConnection;->-$$Nest$fputmState(Lcom/oplus/deepthinker/platform/server/ClientConnection;I)V

    .line 70
    :goto_2
    iget-object v0, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection$1;->this$0:Lcom/oplus/deepthinker/platform/server/ClientConnection;

    invoke-static {v0}, Lcom/oplus/deepthinker/platform/server/ClientConnection;->-$$Nest$fgetBINDER_LOCK(Lcom/oplus/deepthinker/platform/server/ClientConnection;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 71
    iget-object v0, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection$1;->this$0:Lcom/oplus/deepthinker/platform/server/ClientConnection;

    invoke-static {v0}, Lcom/oplus/deepthinker/platform/server/ClientConnection;->-$$Nest$fgetmCountDownLatch(Lcom/oplus/deepthinker/platform/server/ClientConnection;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 72
    :goto_3
    iget-object v0, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection$1;->this$0:Lcom/oplus/deepthinker/platform/server/ClientConnection;

    invoke-static {v0}, Lcom/oplus/deepthinker/platform/server/ClientConnection;->-$$Nest$fgetmCountDownLatch(Lcom/oplus/deepthinker/platform/server/ClientConnection;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 75
    :cond_4
    return-void

    .line 65
    :goto_4
    iget-object v2, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection$1;->this$0:Lcom/oplus/deepthinker/platform/server/ClientConnection;

    invoke-static {v2}, Lcom/oplus/deepthinker/platform/server/ClientConnection;->-$$Nest$fgetmInvokeDelegate(Lcom/oplus/deepthinker/platform/server/ClientConnection;)Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 66
    iget-object v2, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection$1;->this$0:Lcom/oplus/deepthinker/platform/server/ClientConnection;

    invoke-static {v2, v0}, Lcom/oplus/deepthinker/platform/server/ClientConnection;->-$$Nest$fputmState(Lcom/oplus/deepthinker/platform/server/ClientConnection;I)V

    goto :goto_5

    .line 68
    :cond_5
    iget-object v0, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection$1;->this$0:Lcom/oplus/deepthinker/platform/server/ClientConnection;

    invoke-static {v0, v3}, Lcom/oplus/deepthinker/platform/server/ClientConnection;->-$$Nest$fputmState(Lcom/oplus/deepthinker/platform/server/ClientConnection;I)V

    .line 70
    :goto_5
    iget-object v0, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection$1;->this$0:Lcom/oplus/deepthinker/platform/server/ClientConnection;

    invoke-static {v0}, Lcom/oplus/deepthinker/platform/server/ClientConnection;->-$$Nest$fgetBINDER_LOCK(Lcom/oplus/deepthinker/platform/server/ClientConnection;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 71
    iget-object v0, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection$1;->this$0:Lcom/oplus/deepthinker/platform/server/ClientConnection;

    invoke-static {v0}, Lcom/oplus/deepthinker/platform/server/ClientConnection;->-$$Nest$fgetmCountDownLatch(Lcom/oplus/deepthinker/platform/server/ClientConnection;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 72
    iget-object v0, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection$1;->this$0:Lcom/oplus/deepthinker/platform/server/ClientConnection;

    invoke-static {v0}, Lcom/oplus/deepthinker/platform/server/ClientConnection;->-$$Nest$fgetmCountDownLatch(Lcom/oplus/deepthinker/platform/server/ClientConnection;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 74
    :cond_6
    throw v1
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 79
    const-string v0, "ClientConnection"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection$1;->this$0:Lcom/oplus/deepthinker/platform/server/ClientConnection;

    invoke-static {v0}, Lcom/oplus/deepthinker/platform/server/ClientConnection;->-$$Nest$mserviceDied(Lcom/oplus/deepthinker/platform/server/ClientConnection;)V

    .line 82
    return-void
.end method
