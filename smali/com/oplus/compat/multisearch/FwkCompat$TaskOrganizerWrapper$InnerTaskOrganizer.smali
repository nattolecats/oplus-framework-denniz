.class Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper$InnerTaskOrganizer;
.super Landroid/window/TaskOrganizer;
.source "FwkCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InnerTaskOrganizer"
.end annotation


# instance fields
.field private blacklist mBinder:Lcom/oplus/multisearch/IOplusMultiSearchManagerSession;

.field private final blacklist mListener:Lcom/oplus/multisearch/IOplusMultiSearchListener$Stub;

.field final synthetic blacklist this$0:Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper;


# direct methods
.method constructor blacklist <init>(Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper;)V
    .locals 2

    .line 342
    iput-object p1, p0, Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper$InnerTaskOrganizer;->this$0:Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper;

    invoke-direct {p0}, Landroid/window/TaskOrganizer;-><init>()V

    .line 403
    new-instance p1, Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper$InnerTaskOrganizer$1;

    invoke-direct {p1, p0}, Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper$InnerTaskOrganizer$1;-><init>(Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper$InnerTaskOrganizer;)V

    iput-object p1, p0, Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper$InnerTaskOrganizer;->mListener:Lcom/oplus/multisearch/IOplusMultiSearchListener$Stub;

    .line 344
    :try_start_0
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getInstance()Landroid/app/OplusActivityTaskManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/OplusActivityTaskManager;->getMultiSearchSession()Lcom/oplus/multisearch/IOplusMultiSearchManagerSession;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper$InnerTaskOrganizer;->mBinder:Lcom/oplus/multisearch/IOplusMultiSearchManagerSession;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    goto :goto_0

    .line 346
    :catch_0
    move-exception p1

    .line 347
    .local p1, "e":Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMultiSearchSession fail exception : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MultiSearchFwkCompat"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    .end local p1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method


# virtual methods
.method public blacklist onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 1
    .param p1, "runningTaskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 354
    iget-object v0, p0, Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper$InnerTaskOrganizer;->mBinder:Lcom/oplus/multisearch/IOplusMultiSearchManagerSession;

    if-nez v0, :cond_0

    return-void

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper$InnerTaskOrganizer;->this$0:Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper;

    invoke-virtual {v0, p1}, Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper;->onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 356
    return-void
.end method

.method public blacklist onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .locals 2
    .param p1, "runningTaskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "surfaceControl"    # Landroid/view/SurfaceControl;

    .line 360
    iget-object v0, p0, Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper$InnerTaskOrganizer;->mBinder:Lcom/oplus/multisearch/IOplusMultiSearchManagerSession;

    if-nez v0, :cond_0

    return-void

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper$InnerTaskOrganizer;->this$0:Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper;->onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    .line 362
    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v1, p0, Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper$InnerTaskOrganizer;->this$0:Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper;

    invoke-static {v1}, Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper;->-$$Nest$fgetmInterceptBackPressed(Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper;)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper$InnerTaskOrganizer;->setInterceptBackPressedOnTaskRoot(Landroid/window/WindowContainerToken;Z)V

    .line 363
    iget-object v0, p0, Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper$InnerTaskOrganizer;->this$0:Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper;

    invoke-static {v0}, Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper;->-$$Nest$fgetmTokens(Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper;)Landroid/util/ArraySet;

    move-result-object v0

    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 364
    return-void
.end method

.method public blacklist onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 1
    .param p1, "runningTaskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 368
    iget-object v0, p0, Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper$InnerTaskOrganizer;->mBinder:Lcom/oplus/multisearch/IOplusMultiSearchManagerSession;

    if-nez v0, :cond_0

    return-void

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper$InnerTaskOrganizer;->this$0:Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper;

    invoke-virtual {v0, p1}, Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper;->onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 370
    return-void
.end method

.method public blacklist onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 2
    .param p1, "runningTaskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 374
    iget-object v0, p0, Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper$InnerTaskOrganizer;->mBinder:Lcom/oplus/multisearch/IOplusMultiSearchManagerSession;

    if-nez v0, :cond_0

    return-void

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper$InnerTaskOrganizer;->this$0:Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper;

    invoke-virtual {v0, p1}, Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper;->onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 376
    iget-object v0, p0, Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper$InnerTaskOrganizer;->this$0:Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper;

    invoke-static {v0}, Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper;->-$$Nest$fgetmTokens(Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper;)Landroid/util/ArraySet;

    move-result-object v0

    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 377
    return-void
.end method

.method public blacklist registerOrganizer()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/window/TaskAppearedInfo;",
            ">;"
        }
    .end annotation

    .line 382
    :try_start_0
    iget-object v0, p0, Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper$InnerTaskOrganizer;->mBinder:Lcom/oplus/multisearch/IOplusMultiSearchManagerSession;

    if-eqz v0, :cond_0

    .line 383
    iget-object v1, p0, Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper$InnerTaskOrganizer;->mListener:Lcom/oplus/multisearch/IOplusMultiSearchListener$Stub;

    invoke-interface {v0, v1}, Lcom/oplus/multisearch/IOplusMultiSearchManagerSession;->registerListener(Lcom/oplus/multisearch/IOplusMultiSearchListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    :cond_0
    goto :goto_0

    .line 385
    :catch_0
    move-exception v0

    .line 386
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerOrganizer exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MultiSearchFwkCompat"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist unregisterOrganizer()V
    .locals 3

    .line 394
    :try_start_0
    iget-object v0, p0, Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper$InnerTaskOrganizer;->mBinder:Lcom/oplus/multisearch/IOplusMultiSearchManagerSession;

    if-eqz v0, :cond_0

    .line 395
    iget-object v1, p0, Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper$InnerTaskOrganizer;->mListener:Lcom/oplus/multisearch/IOplusMultiSearchListener$Stub;

    invoke-interface {v0, v1}, Lcom/oplus/multisearch/IOplusMultiSearchManagerSession;->unregisterListener(Lcom/oplus/multisearch/IOplusMultiSearchListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    :cond_0
    goto :goto_0

    .line 398
    :catch_0
    move-exception v0

    .line 399
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterOrganizer exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MultiSearchFwkCompat"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
