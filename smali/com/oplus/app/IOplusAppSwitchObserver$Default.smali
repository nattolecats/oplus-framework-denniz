.class public Lcom/oplus/app/IOplusAppSwitchObserver$Default;
.super Ljava/lang/Object;
.source "IOplusAppSwitchObserver.java"

# interfaces
.implements Lcom/oplus/app/IOplusAppSwitchObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/app/IOplusAppSwitchObserver;
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
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onActivityEnter(Lcom/oplus/app/OplusAppEnterInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/oplus/app/OplusAppEnterInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    return-void
.end method

.method public blacklist onActivityExit(Lcom/oplus/app/OplusAppExitInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/oplus/app/OplusAppExitInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method

.method public blacklist onAppEnter(Lcom/oplus/app/OplusAppEnterInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/oplus/app/OplusAppEnterInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    return-void
.end method

.method public blacklist onAppExit(Lcom/oplus/app/OplusAppExitInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/oplus/app/OplusAppExitInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    return-void
.end method
