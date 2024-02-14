.class public Lcom/oplus/compat/multisearch/FwkCompat$WindowOrganizerWrapper;
.super Ljava/lang/Object;
.source "FwkCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/compat/multisearch/FwkCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WindowOrganizerWrapper"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist applyTransaction(Lcom/oplus/compat/multisearch/FwkCompat$WindowContainerTransactionWrapper;)V
    .locals 2
    .param p0, "windowContainerTransaction"    # Lcom/oplus/compat/multisearch/FwkCompat$WindowContainerTransactionWrapper;

    .line 255
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->getWindowOrganizerController()Landroid/window/IWindowOrganizerController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/compat/multisearch/FwkCompat$WindowContainerTransactionWrapper;->getWindowContainerTransaction()Landroid/window/WindowContainerTransaction;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/window/IWindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    nop

    .line 259
    return-void

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static whitelist takeScreenshot(Lcom/oplus/compat/multisearch/FwkCompat$WindowContainerTokenWrapper;)Landroid/view/SurfaceControl;
    .locals 3
    .param p0, "windowContainerToken"    # Lcom/oplus/compat/multisearch/FwkCompat$WindowContainerTokenWrapper;

    .line 262
    new-instance v0, Landroid/view/SurfaceControl;

    invoke-direct {v0}, Landroid/view/SurfaceControl;-><init>()V

    .line 264
    .local v0, "outSurface":Landroid/view/SurfaceControl;
    :try_start_0
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getInstance()Landroid/app/OplusActivityTaskManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oplus/compat/multisearch/FwkCompat$WindowContainerTokenWrapper;->getWindowContainerToken()Landroid/window/WindowContainerToken;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/app/OplusActivityTaskManager;->takeScreenshot(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 267
    nop

    .line 268
    return-object v0

    .line 265
    :catch_0
    move-exception v1

    .line 266
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method
