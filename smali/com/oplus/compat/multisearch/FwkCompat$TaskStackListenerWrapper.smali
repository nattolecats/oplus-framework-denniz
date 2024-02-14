.class public Lcom/oplus/compat/multisearch/FwkCompat$TaskStackListenerWrapper;
.super Landroid/app/TaskStackListener;
.source "FwkCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/compat/multisearch/FwkCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TaskStackListenerWrapper"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/oplus/compat/multisearch/FwkCompat;


# direct methods
.method public constructor blacklist <init>(Lcom/oplus/compat/multisearch/FwkCompat;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oplus/compat/multisearch/FwkCompat;

    .line 480
    iput-object p1, p0, Lcom/oplus/compat/multisearch/FwkCompat$TaskStackListenerWrapper;->this$0:Lcom/oplus/compat/multisearch/FwkCompat;

    invoke-direct {p0}, Landroid/app/TaskStackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onTaskCreated(ILandroid/content/ComponentName;)V
    .locals 2
    .param p1, "taskId"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;

    .line 485
    iget-object v0, p0, Lcom/oplus/compat/multisearch/FwkCompat$TaskStackListenerWrapper;->this$0:Lcom/oplus/compat/multisearch/FwkCompat;

    invoke-static {v0}, Lcom/oplus/compat/multisearch/FwkCompat;->-$$Nest$fgetmTaskStackChangeListeners(Lcom/oplus/compat/multisearch/FwkCompat;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/compat/multisearch/FwkCompat$TaskStackChangeListener;

    .line 486
    .local v1, "l":Lcom/oplus/compat/multisearch/FwkCompat$TaskStackChangeListener;
    invoke-virtual {v1, p1, p2}, Lcom/oplus/compat/multisearch/FwkCompat$TaskStackChangeListener;->onTaskCreated(ILandroid/content/ComponentName;)V

    .line 487
    .end local v1    # "l":Lcom/oplus/compat/multisearch/FwkCompat$TaskStackChangeListener;
    goto :goto_0

    .line 488
    :cond_0
    return-void
.end method

.method public blacklist onTaskFocusChanged(IZ)V
    .locals 2
    .param p1, "taskId"    # I
    .param p2, "focused"    # Z

    .line 494
    iget-object v0, p0, Lcom/oplus/compat/multisearch/FwkCompat$TaskStackListenerWrapper;->this$0:Lcom/oplus/compat/multisearch/FwkCompat;

    invoke-static {v0}, Lcom/oplus/compat/multisearch/FwkCompat;->-$$Nest$fgetmTaskStackChangeListeners(Lcom/oplus/compat/multisearch/FwkCompat;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/compat/multisearch/FwkCompat$TaskStackChangeListener;

    .line 495
    .local v1, "l":Lcom/oplus/compat/multisearch/FwkCompat$TaskStackChangeListener;
    invoke-virtual {v1, p1, p2}, Lcom/oplus/compat/multisearch/FwkCompat$TaskStackChangeListener;->onTaskFocusChanged(IZ)V

    .line 496
    .end local v1    # "l":Lcom/oplus/compat/multisearch/FwkCompat$TaskStackChangeListener;
    goto :goto_0

    .line 497
    :cond_0
    return-void
.end method

.method public blacklist onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 2
    .param p1, "runningTaskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 503
    iget-object v0, p0, Lcom/oplus/compat/multisearch/FwkCompat$TaskStackListenerWrapper;->this$0:Lcom/oplus/compat/multisearch/FwkCompat;

    invoke-static {v0}, Lcom/oplus/compat/multisearch/FwkCompat;->-$$Nest$fgetmTaskStackChangeListeners(Lcom/oplus/compat/multisearch/FwkCompat;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/compat/multisearch/FwkCompat$TaskStackChangeListener;

    .line 504
    .local v1, "l":Lcom/oplus/compat/multisearch/FwkCompat$TaskStackChangeListener;
    invoke-virtual {v1, p1}, Lcom/oplus/compat/multisearch/FwkCompat$TaskStackChangeListener;->onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 505
    .end local v1    # "l":Lcom/oplus/compat/multisearch/FwkCompat$TaskStackChangeListener;
    goto :goto_0

    .line 506
    :cond_0
    return-void
.end method

.method public blacklist onTaskRemovalStarted(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 2
    .param p1, "runningTaskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 512
    iget-object v0, p0, Lcom/oplus/compat/multisearch/FwkCompat$TaskStackListenerWrapper;->this$0:Lcom/oplus/compat/multisearch/FwkCompat;

    invoke-static {v0}, Lcom/oplus/compat/multisearch/FwkCompat;->-$$Nest$fgetmTaskStackChangeListeners(Lcom/oplus/compat/multisearch/FwkCompat;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/compat/multisearch/FwkCompat$TaskStackChangeListener;

    .line 513
    .local v1, "l":Lcom/oplus/compat/multisearch/FwkCompat$TaskStackChangeListener;
    invoke-virtual {v1, p1}, Lcom/oplus/compat/multisearch/FwkCompat$TaskStackChangeListener;->onTaskRemovalStarted(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 514
    .end local v1    # "l":Lcom/oplus/compat/multisearch/FwkCompat$TaskStackChangeListener;
    goto :goto_0

    .line 515
    :cond_0
    return-void
.end method

.method public blacklist onTaskRemoved(I)V
    .locals 2
    .param p1, "taskId"    # I

    .line 521
    iget-object v0, p0, Lcom/oplus/compat/multisearch/FwkCompat$TaskStackListenerWrapper;->this$0:Lcom/oplus/compat/multisearch/FwkCompat;

    invoke-static {v0}, Lcom/oplus/compat/multisearch/FwkCompat;->-$$Nest$fgetmTaskStackChangeListeners(Lcom/oplus/compat/multisearch/FwkCompat;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/compat/multisearch/FwkCompat$TaskStackChangeListener;

    .line 522
    .local v1, "l":Lcom/oplus/compat/multisearch/FwkCompat$TaskStackChangeListener;
    invoke-virtual {v1, p1}, Lcom/oplus/compat/multisearch/FwkCompat$TaskStackChangeListener;->onTaskRemoved(I)V

    .line 523
    .end local v1    # "l":Lcom/oplus/compat/multisearch/FwkCompat$TaskStackChangeListener;
    goto :goto_0

    .line 524
    :cond_0
    return-void
.end method
