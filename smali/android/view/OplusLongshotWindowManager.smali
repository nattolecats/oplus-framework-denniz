.class public Landroid/view/OplusLongshotWindowManager;
.super Ljava/lang/Object;
.source "OplusLongshotWindowManager.java"

# interfaces
.implements Landroid/view/IOplusLongshotWindowManager;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "OplusLongshotWindowManager"


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist getFocusedWindowFrame(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "frame"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    invoke-static {}, Landroid/view/OplusWindowManager;->getInstance()Landroid/view/OplusWindowManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/OplusWindowManager;->getFocusedWindowFrame(Landroid/graphics/Rect;)V

    .line 38
    return-void
.end method

.method public whitelist getLongshotSurfaceLayer()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    invoke-static {}, Landroid/view/OplusWindowManager;->getInstance()Landroid/view/OplusWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/OplusWindowManager;->getLongshotSurfaceLayer()I

    move-result v0

    return v0
.end method

.method public whitelist getLongshotSurfaceLayerByType(I)I
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    invoke-static {}, Landroid/view/OplusWindowManager;->getInstance()Landroid/view/OplusWindowManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/OplusWindowManager;->getLongshotSurfaceLayerByType(I)I

    move-result v0

    return v0
.end method

.method public whitelist getLongshotWindowByType(I)Landroid/os/IBinder;
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 98
    invoke-static {}, Landroid/view/OplusWindowManager;->getInstance()Landroid/view/OplusWindowManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/OplusWindowManager;->getLongshotWindowByType(I)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getLongshotWindowByTypeForR(I)Landroid/view/SurfaceControl;
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 104
    invoke-static {}, Landroid/view/OplusWindowManager;->getInstance()Landroid/view/OplusWindowManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/OplusWindowManager;->getLongshotWindowByTypeForR(I)Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method public whitelist isEdgePanelExpand()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 116
    invoke-static {}, Landroid/view/OplusWindowManager;->getInstance()Landroid/view/OplusWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/OplusWindowManager;->isEdgePanelExpand()Z

    move-result v0

    return v0
.end method

.method public whitelist isFloatAssistExpand()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 110
    invoke-static {}, Landroid/view/OplusWindowManager;->getInstance()Landroid/view/OplusWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/OplusWindowManager;->isFloatAssistExpand()Z

    move-result v0

    return v0
.end method

.method public whitelist isKeyguardShowingAndNotOccluded()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 86
    invoke-static {}, Landroid/view/OplusWindowManager;->getInstance()Landroid/view/OplusWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/OplusWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    return v0
.end method

.method public whitelist isNavigationBarVisible()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    invoke-static {}, Landroid/view/OplusWindowManager;->getInstance()Landroid/view/OplusWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/OplusWindowManager;->isNavigationBarVisible()Z

    move-result v0

    return v0
.end method

.method public whitelist isShortcutsPanelShow()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    invoke-static {}, Landroid/view/OplusWindowManager;->getInstance()Landroid/view/OplusWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/OplusWindowManager;->isShortcutsPanelShow()Z

    move-result v0

    return v0
.end method

.method public whitelist isVolumeShow()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    invoke-static {}, Landroid/view/OplusWindowManager;->getInstance()Landroid/view/OplusWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/OplusWindowManager;->isVolumeShow()Z

    move-result v0

    return v0
.end method

.method public whitelist longshotInjectInput(Landroid/view/InputEvent;I)V
    .locals 1
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    invoke-static {}, Landroid/view/OplusWindowManager;->getInstance()Landroid/view/OplusWindowManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/OplusWindowManager;->longshotInjectInput(Landroid/view/InputEvent;I)V

    .line 54
    return-void
.end method

.method public whitelist longshotInjectInputBegin()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 80
    invoke-static {}, Landroid/view/OplusWindowManager;->getInstance()Landroid/view/OplusWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/OplusWindowManager;->longshotInjectInputBegin()V

    .line 81
    return-void
.end method

.method public whitelist longshotInjectInputEnd()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 92
    invoke-static {}, Landroid/view/OplusWindowManager;->getInstance()Landroid/view/OplusWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/OplusWindowManager;->longshotInjectInputEnd()V

    .line 93
    return-void
.end method

.method public whitelist longshotNotifyConnected(Z)V
    .locals 1
    .param p1, "isConnected"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 57
    invoke-static {}, Landroid/view/OplusWindowManager;->getInstance()Landroid/view/OplusWindowManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/OplusWindowManager;->longshotNotifyConnected(Z)V

    .line 58
    return-void
.end method

.method public whitelist requestScrollCapture(ILandroid/os/IBinder;ILcom/oplus/screenshot/IOplusScrollCaptureResponseListener;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "displayId"    # I
    .param p2, "behindClient"    # Landroid/os/IBinder;
    .param p3, "taskId"    # I
    .param p4, "listener"    # Lcom/oplus/screenshot/IOplusScrollCaptureResponseListener;
    .param p5, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 136
    invoke-static {}, Landroid/view/OplusWindowManager;->getInstance()Landroid/view/OplusWindowManager;

    move-result-object v0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/view/OplusWindowManager;->requestScrollCapture(ILandroid/os/IBinder;ILcom/oplus/screenshot/IOplusScrollCaptureResponseListener;Landroid/os/Bundle;)V

    .line 137
    return-void
.end method
