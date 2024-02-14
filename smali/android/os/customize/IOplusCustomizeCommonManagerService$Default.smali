.class public Landroid/os/customize/IOplusCustomizeCommonManagerService$Default;
.super Ljava/lang/Object;
.source "IOplusCustomizeCommonManagerService.java"

# interfaces
.implements Landroid/os/customize/IOplusCustomizeCommonManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/customize/IOplusCustomizeCommonManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getPolicy(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p1, "cmd"    # I
    .param p2, "param"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist handleCmd(ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "cmd"    # I
    .param p2, "param"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public whitelist handleCmdExt(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p1, "cmd"    # I
    .param p2, "param"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    const/4 v0, 0x0

    return-object v0
.end method
