.class Lcom/android/internal/app/OplusChooserCtsConnection$OplusChooserTargetServiceConnection$1;
.super Landroid/service/chooser/IChooserTargetResult$Stub;
.source "OplusChooserCtsConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/OplusChooserCtsConnection$OplusChooserTargetServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/OplusChooserCtsConnection$OplusChooserTargetServiceConnection;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/OplusChooserCtsConnection$OplusChooserTargetServiceConnection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/OplusChooserCtsConnection$OplusChooserTargetServiceConnection;

    .line 175
    iput-object p1, p0, Lcom/android/internal/app/OplusChooserCtsConnection$OplusChooserTargetServiceConnection$1;->this$0:Lcom/android/internal/app/OplusChooserCtsConnection$OplusChooserTargetServiceConnection;

    invoke-direct {p0}, Landroid/service/chooser/IChooserTargetResult$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist sendResult(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/chooser/ChooserTarget;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 178
    .local p1, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/service/chooser/ChooserTarget;>;"
    iget-object v0, p0, Lcom/android/internal/app/OplusChooserCtsConnection$OplusChooserTargetServiceConnection$1;->this$0:Lcom/android/internal/app/OplusChooserCtsConnection$OplusChooserTargetServiceConnection;

    invoke-static {v0}, Lcom/android/internal/app/OplusChooserCtsConnection$OplusChooserTargetServiceConnection;->-$$Nest$fgetmLock(Lcom/android/internal/app/OplusChooserCtsConnection$OplusChooserTargetServiceConnection;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 179
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/app/OplusChooserCtsConnection$OplusChooserTargetServiceConnection$1;->this$0:Lcom/android/internal/app/OplusChooserCtsConnection$OplusChooserTargetServiceConnection;

    invoke-static {v1}, Lcom/android/internal/app/OplusChooserCtsConnection$OplusChooserTargetServiceConnection;->-$$Nest$fgetmContext(Lcom/android/internal/app/OplusChooserCtsConnection$OplusChooserTargetServiceConnection;)Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    .line 180
    monitor-exit v0

    return-void

    .line 182
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/OplusChooserCtsConnection$OplusChooserTargetServiceConnection$1;->this$0:Lcom/android/internal/app/OplusChooserCtsConnection$OplusChooserTargetServiceConnection;

    invoke-static {v1}, Lcom/android/internal/app/OplusChooserCtsConnection$OplusChooserTargetServiceConnection;->-$$Nest$fgetmContext(Lcom/android/internal/app/OplusChooserCtsConnection$OplusChooserTargetServiceConnection;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/OplusChooserCtsConnection$OplusChooserTargetServiceConnection$1;->this$0:Lcom/android/internal/app/OplusChooserCtsConnection$OplusChooserTargetServiceConnection;

    invoke-static {v2}, Lcom/android/internal/app/OplusChooserCtsConnection$OplusChooserTargetServiceConnection;->-$$Nest$fgetmUserHandle(Lcom/android/internal/app/OplusChooserCtsConnection$OplusChooserTargetServiceConnection;)Landroid/os/UserHandle;

    move-result-object v2

    const/4 v3, 0x0

    .line 183
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v1

    .line 184
    .local v1, "contextAsUser":Landroid/content/Context;
    iget-object v2, p0, Lcom/android/internal/app/OplusChooserCtsConnection$OplusChooserTargetServiceConnection$1;->this$0:Lcom/android/internal/app/OplusChooserCtsConnection$OplusChooserTargetServiceConnection;

    invoke-static {v2}, Lcom/android/internal/app/OplusChooserCtsConnection$OplusChooserTargetServiceConnection;->-$$Nest$fgetmOriginalTarget(Lcom/android/internal/app/OplusChooserCtsConnection$OplusChooserTargetServiceConnection;)Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v3

    .line 185
    invoke-virtual {v3}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 184
    invoke-static {v2, v1, v3, p1}, Lcom/android/internal/app/OplusChooserCtsConnection$OplusChooserTargetServiceConnection;->-$$Nest$mfilterServiceTargets(Lcom/android/internal/app/OplusChooserCtsConnection$OplusChooserTargetServiceConnection;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    .line 186
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 187
    .local v2, "msg":Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v2, Landroid/os/Message;->what:I

    .line 188
    new-instance v3, Lcom/android/internal/app/OplusChooserCtsConnection$ServiceResultInfo;

    iget-object v4, p0, Lcom/android/internal/app/OplusChooserCtsConnection$OplusChooserTargetServiceConnection$1;->this$0:Lcom/android/internal/app/OplusChooserCtsConnection$OplusChooserTargetServiceConnection;

    invoke-static {v4}, Lcom/android/internal/app/OplusChooserCtsConnection$OplusChooserTargetServiceConnection;->-$$Nest$fgetmOriginalTarget(Lcom/android/internal/app/OplusChooserCtsConnection$OplusChooserTargetServiceConnection;)Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/app/OplusChooserCtsConnection$OplusChooserTargetServiceConnection$1;->this$0:Lcom/android/internal/app/OplusChooserCtsConnection$OplusChooserTargetServiceConnection;

    invoke-static {v5}, Lcom/android/internal/app/OplusChooserCtsConnection$OplusChooserTargetServiceConnection;->-$$Nest$fgetmUserHandle(Lcom/android/internal/app/OplusChooserCtsConnection$OplusChooserTargetServiceConnection;)Landroid/os/UserHandle;

    move-result-object v6

    invoke-direct {v3, v4, p1, v5, v6}, Lcom/android/internal/app/OplusChooserCtsConnection$ServiceResultInfo;-><init>(Lcom/android/internal/app/chooser/DisplayResolveInfo;Ljava/util/List;Lcom/android/internal/app/OplusChooserCtsConnection$OplusChooserTargetServiceConnection;Landroid/os/UserHandle;)V

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 190
    iget-object v3, p0, Lcom/android/internal/app/OplusChooserCtsConnection$OplusChooserTargetServiceConnection$1;->this$0:Lcom/android/internal/app/OplusChooserCtsConnection$OplusChooserTargetServiceConnection;

    invoke-static {v3}, Lcom/android/internal/app/OplusChooserCtsConnection$OplusChooserTargetServiceConnection;->-$$Nest$fgetmConnection(Lcom/android/internal/app/OplusChooserCtsConnection$OplusChooserTargetServiceConnection;)Lcom/android/internal/app/OplusChooserCtsConnection;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/app/OplusChooserCtsConnection;->-$$Nest$fgetmChooserHandler(Lcom/android/internal/app/OplusChooserCtsConnection;)Lcom/android/internal/app/OplusChooserCtsConnection$ChooserHandler;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/internal/app/OplusChooserCtsConnection$ChooserHandler;->sendMessage(Landroid/os/Message;)Z

    .line 191
    nop

    .end local v1    # "contextAsUser":Landroid/content/Context;
    .end local v2    # "msg":Landroid/os/Message;
    monitor-exit v0

    .line 192
    return-void

    .line 191
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
