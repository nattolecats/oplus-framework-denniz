.class Landroid/os/OplusTraceManager$1;
.super Ljava/lang/Object;
.source "OplusTraceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/OplusTraceManager;->initAfterBindService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/os/OplusTraceManager;


# direct methods
.method constructor blacklist <init>(Landroid/os/OplusTraceManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/os/OplusTraceManager;

    .line 337
    iput-object p1, p0, Landroid/os/OplusTraceManager$1;->this$0:Landroid/os/OplusTraceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 5

    .line 340
    iget-object v0, p0, Landroid/os/OplusTraceManager$1;->this$0:Landroid/os/OplusTraceManager;

    invoke-static {v0}, Landroid/os/OplusTraceManager;->-$$Nest$mgetContentHashCode(Landroid/os/OplusTraceManager;)I

    move-result v0

    .line 342
    .local v0, "contentHash":I
    :try_start_0
    invoke-static {}, Landroid/os/OplusTraceManager;->-$$Nest$sfgetsRemoteService()Landroid/os/IOplusTraceService;

    move-result-object v1

    iget-object v2, p0, Landroid/os/OplusTraceManager$1;->this$0:Landroid/os/OplusTraceManager;

    invoke-interface {v1, v0, v2}, Landroid/os/IOplusTraceService;->callUpdateContentFilter(ILandroid/os/IOplusFilterListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    goto :goto_0

    .line 343
    :catch_0
    move-exception v1

    .line 344
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call update content filter from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 345
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 344
    const-string v3, "OplusTraceManager"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 347
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v1, p0, Landroid/os/OplusTraceManager$1;->this$0:Landroid/os/OplusTraceManager;

    invoke-static {v1}, Landroid/os/OplusTraceManager;->-$$Nest$fgetmWorkHandler(Landroid/os/OplusTraceManager;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x2d1

    const-wide/16 v3, 0x7530

    invoke-virtual {v1, p0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;IJ)Z

    .line 348
    return-void
.end method
