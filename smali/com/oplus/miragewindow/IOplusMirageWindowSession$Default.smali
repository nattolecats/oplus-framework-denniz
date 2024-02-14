.class public Lcom/oplus/miragewindow/IOplusMirageWindowSession$Default;
.super Ljava/lang/Object;
.source "IOplusMirageWindowSession.java"

# interfaces
.implements Lcom/oplus/miragewindow/IOplusMirageWindowSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/miragewindow/IOplusMirageWindowSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addCastScreenState(Lcom/oplus/miragewindow/OplusCastScreenState;)V
    .locals 0
    .param p1, "state"    # Lcom/oplus/miragewindow/OplusCastScreenState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCastScreenStateList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/miragewindow/OplusCastScreenState;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist registerCastScreenStateObserver(Lcom/oplus/miragewindow/IOplusCastScreenStateObserver;)Z
    .locals 1
    .param p1, "observer"    # Lcom/oplus/miragewindow/IOplusCastScreenStateObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist removeCastScreenState()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method

.method public blacklist setMirageDisplayId(I)V
    .locals 0
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method

.method public blacklist unregisterCastScreenStateObserver(Lcom/oplus/miragewindow/IOplusCastScreenStateObserver;)Z
    .locals 1
    .param p1, "observer"    # Lcom/oplus/miragewindow/IOplusCastScreenStateObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    const/4 v0, 0x0

    return v0
.end method
