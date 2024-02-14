.class public Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper;
.super Ljava/lang/Object;
.source "FwkCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/compat/multisearch/FwkCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskOrganizerWrapper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper$InnerTaskOrganizer;
    }
.end annotation


# instance fields
.field private blacklist mDelegate:Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper$InnerTaskOrganizer;

.field private blacklist mInterceptBackPressed:Z

.field private blacklist mTokens:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/window/WindowContainerToken;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmInterceptBackPressed(Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper;->mInterceptBackPressed:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTokens(Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper;)Landroid/util/ArraySet;
    .locals 0

    iget-object p0, p0, Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper;->mTokens:Landroid/util/ArraySet;

    return-object p0
.end method

.method public constructor whitelist <init>()V
    .locals 1

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper;->mTokens:Landroid/util/ArraySet;

    .line 294
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper;->mInterceptBackPressed:Z

    .line 296
    new-instance v0, Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper$InnerTaskOrganizer;

    invoke-direct {v0, p0}, Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper$InnerTaskOrganizer;-><init>(Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper;)V

    iput-object v0, p0, Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper;->mDelegate:Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper$InnerTaskOrganizer;

    .line 297
    return-void
.end method


# virtual methods
.method public whitelist applyTransaction(Lcom/oplus/compat/multisearch/FwkCompat$WindowContainerTransactionWrapper;)V
    .locals 2
    .param p1, "windowContainerTransaction"    # Lcom/oplus/compat/multisearch/FwkCompat$WindowContainerTransactionWrapper;

    .line 333
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->getWindowOrganizerController()Landroid/window/IWindowOrganizerController;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oplus/compat/multisearch/FwkCompat$WindowContainerTransactionWrapper;->getWindowContainerTransaction()Landroid/window/WindowContainerTransaction;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/window/IWindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    nop

    .line 337
    return-void

    .line 334
    :catch_0
    move-exception v0

    .line 335
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0
    .param p1, "runningTaskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 319
    return-void
.end method

.method public whitelist onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .locals 0
    .param p1, "runningTaskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "surfaceControl"    # Landroid/view/SurfaceControl;

    .line 323
    return-void
.end method

.method public whitelist onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0
    .param p1, "runningTaskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 326
    return-void
.end method

.method public whitelist onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0
    .param p1, "runningTaskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 329
    return-void
.end method

.method public final whitelist registerOrganizer(I)V
    .locals 1
    .param p1, "windowingMode"    # I

    .line 300
    iget-object v0, p0, Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper;->mDelegate:Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper$InnerTaskOrganizer;

    invoke-virtual {v0}, Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper$InnerTaskOrganizer;->registerOrganizer()Ljava/util/List;

    .line 301
    return-void
.end method

.method public whitelist setInterceptBackPressedOnTaskRoot(Z)V
    .locals 3
    .param p1, "interceptBackPressed"    # Z

    .line 304
    iput-boolean p1, p0, Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper;->mInterceptBackPressed:Z

    .line 305
    iget-object v0, p0, Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper;->mTokens:Landroid/util/ArraySet;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper;->mTokens:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/WindowContainerToken;

    .line 309
    .local v1, "token":Landroid/window/WindowContainerToken;
    iget-object v2, p0, Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper;->mDelegate:Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper$InnerTaskOrganizer;

    invoke-virtual {v2, v1, p1}, Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper$InnerTaskOrganizer;->setInterceptBackPressedOnTaskRoot(Landroid/window/WindowContainerToken;Z)V

    .line 310
    .end local v1    # "token":Landroid/window/WindowContainerToken;
    goto :goto_0

    .line 312
    :cond_1
    return-void

    .line 306
    :cond_2
    :goto_1
    return-void
.end method

.method public final whitelist unregisterOrganizer()V
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper;->mDelegate:Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper$InnerTaskOrganizer;

    invoke-virtual {v0}, Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper$InnerTaskOrganizer;->unregisterOrganizer()V

    .line 316
    return-void
.end method
