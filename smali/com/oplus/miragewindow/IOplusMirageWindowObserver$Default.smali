.class public Lcom/oplus/miragewindow/IOplusMirageWindowObserver$Default;
.super Ljava/lang/Object;
.source "IOplusMirageWindowObserver.java"

# interfaces
.implements Lcom/oplus/miragewindow/IOplusMirageWindowObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/miragewindow/IOplusMirageWindowObserver;
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

    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onMirageDisplayTopActivityUidChanged(I)V
    .locals 0
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method

.method public whitelist onMirageWindConfigChanged(Lcom/oplus/miragewindow/OplusMirageWindowInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/oplus/miragewindow/OplusMirageWindowInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public whitelist onMirageWindowDied(Ljava/lang/String;)V
    .locals 0
    .param p1, "cpnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method

.method public whitelist onMirageWindowExit(Lcom/oplus/miragewindow/OplusMirageWindowInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/oplus/miragewindow/OplusMirageWindowInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15
    return-void
.end method

.method public whitelist onMirageWindowShow(Lcom/oplus/miragewindow/OplusMirageWindowInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/oplus/miragewindow/OplusMirageWindowInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12
    return-void
.end method
