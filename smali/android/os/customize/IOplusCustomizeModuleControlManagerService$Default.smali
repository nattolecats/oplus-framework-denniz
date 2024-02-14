.class public Landroid/os/customize/IOplusCustomizeModuleControlManagerService$Default;
.super Ljava/lang/Object;
.source "IOplusCustomizeModuleControlManagerService.java"

# interfaces
.implements Landroid/os/customize/IOplusCustomizeModuleControlManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/customize/IOplusCustomizeModuleControlManagerService;
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

    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getModuleControlStateByType(I)Z
    .locals 1
    .param p1, "moduleType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getModuleControlStateByTypeAdmin(ILandroid/content/ComponentName;Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "moduleType"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getModuleControlStateByTypeBundle(ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "moduleType"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    const/4 v0, 0x0

    return v0
.end method
