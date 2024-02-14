.class Landroid/debug/OneTraceLogkitManager$1;
.super Ljava/lang/Object;
.source "OneTraceLogkitManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/debug/OneTraceLogkitManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/debug/OneTraceLogkitManager;


# direct methods
.method constructor blacklist <init>(Landroid/debug/OneTraceLogkitManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/debug/OneTraceLogkitManager;

    .line 57
    iput-object p1, p0, Landroid/debug/OneTraceLogkitManager$1;->this$0:Landroid/debug/OneTraceLogkitManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 59
    const-string v0, "OneTraceLogkitManager"

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v0, p0, Landroid/debug/OneTraceLogkitManager$1;->this$0:Landroid/debug/OneTraceLogkitManager;

    invoke-static {v0}, Landroid/debug/OneTraceLogkitManager;->-$$Nest$fgetmServiceConnected(Landroid/debug/OneTraceLogkitManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 61
    iget-object v0, p0, Landroid/debug/OneTraceLogkitManager$1;->this$0:Landroid/debug/OneTraceLogkitManager;

    invoke-static {v0}, Landroid/debug/OneTraceLogkitManager;->-$$Nest$fgetmRetryCount(Landroid/debug/OneTraceLogkitManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 62
    iget-object v0, p0, Landroid/debug/OneTraceLogkitManager$1;->this$0:Landroid/debug/OneTraceLogkitManager;

    invoke-static {v0}, Landroid/debug/OneTraceLogkitManager;->-$$Nest$mstartOneTraceCommand(Landroid/debug/OneTraceLogkitManager;)V

    .line 63
    return-void
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 66
    const-string v0, "OneTraceLogkitManager"

    const-string v1, "onServiceDisconnected retry to binder service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v1, p0, Landroid/debug/OneTraceLogkitManager$1;->this$0:Landroid/debug/OneTraceLogkitManager;

    invoke-static {v1}, Landroid/debug/OneTraceLogkitManager;->-$$Nest$fgetmServiceConnected(Landroid/debug/OneTraceLogkitManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 68
    iget-object v1, p0, Landroid/debug/OneTraceLogkitManager$1;->this$0:Landroid/debug/OneTraceLogkitManager;

    invoke-static {v1}, Landroid/debug/OneTraceLogkitManager;->-$$Nest$fgetmRetryCount(Landroid/debug/OneTraceLogkitManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_0

    .line 69
    const-string v1, "try 5 times to bind onetrace Service is failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Landroid/debug/OneTraceLogkitManager$1;->this$0:Landroid/debug/OneTraceLogkitManager;

    invoke-static {v0}, Landroid/debug/OneTraceLogkitManager;->-$$Nest$mbindService(Landroid/debug/OneTraceLogkitManager;)Z

    .line 73
    return-void
.end method
