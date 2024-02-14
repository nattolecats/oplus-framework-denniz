.class public Lcom/oplus/miragewindow/IOplusMirageDisplayObserver$Default;
.super Ljava/lang/Object;
.source "IOplusMirageDisplayObserver.java"

# interfaces
.implements Lcom/oplus/miragewindow/IOplusMirageDisplayObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/miragewindow/IOplusMirageDisplayObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onMirageDisplayCastFailed(I)V
    .locals 0
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15
    return-void
.end method

.method public whitelist onMirageDisplayCastSuccess(Lcom/oplus/miragewindow/OplusMirageDisplayCastInfo;I)V
    .locals 0
    .param p1, "info"    # Lcom/oplus/miragewindow/OplusMirageDisplayCastInfo;
    .param p2, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12
    return-void
.end method

.method public whitelist onMirageDisplayConfigChanged(Lcom/oplus/miragewindow/OplusMirageDisplayCastInfo;I)V
    .locals 0
    .param p1, "info"    # Lcom/oplus/miragewindow/OplusMirageDisplayCastInfo;
    .param p2, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method

.method public whitelist onMirageDisplayExit(I)V
    .locals 0
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method

.method public whitelist onMirageDisplayToastEvent(IILandroid/os/Bundle;)V
    .locals 0
    .param p1, "eventId"    # I
    .param p2, "displayId"    # I
    .param p3, "extention"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method

.method public whitelist onMirageDisplayTopActivityUidChanged(II)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method
