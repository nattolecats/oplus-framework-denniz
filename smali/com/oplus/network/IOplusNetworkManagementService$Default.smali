.class public Lcom/oplus/network/IOplusNetworkManagementService$Default;
.super Ljava/lang/Object;
.source "IOplusNetworkManagementService.java"

# interfaces
.implements Lcom/oplus/network/IOplusNetworkManagementService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/network/IOplusNetworkManagementService;
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
.method public blacklist addDomainRestrictionList(I[Ljava/lang/String;)Z
    .locals 1
    .param p1, "mode"    # I
    .param p2, "list"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist addNetworkRestriction(I[Ljava/lang/String;)Z
    .locals 1
    .param p1, "pattern"    # I
    .param p2, "list"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 95
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist clearUidTos(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "tos"    # Ljava/lang/String;
    .param p3, "ifaceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method

.method public whitelist executeShellToSetIptables(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "commandline"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist increaseTCPSyncRetryForSpecificKernel()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 71
    return-void
.end method

.method public whitelist oplusNetdCmdParse(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "params"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist oplusNetdGetSysProc(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "ipversion"    # I
    .param p2, "which"    # I
    .param p3, "intf"    # Ljava/lang/String;
    .param p4, "parameter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist removeAllDomainRestrictionList(I)Z
    .locals 1
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist removeDomainRestrictionList(I[Ljava/lang/String;)Z
    .locals 1
    .param p1, "mode"    # I
    .param p2, "list"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist removeNetworkRestriction(I[Ljava/lang/String;)Z
    .locals 1
    .param p1, "pattern"    # I
    .param p2, "list"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist removeNetworkRestrictionAll(I)Z
    .locals 1
    .param p1, "pattern"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setDomainRestrictionMode(I)Z
    .locals 1
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setFirewallAllowListForNetworkType(II[I)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "rule"    # I
    .param p3, "uids"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 92
    return-void
.end method

.method public whitelist setFirewallUidRuleForNetworkType(III)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "uid"    # I
    .param p3, "rule"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12
    return-void
.end method

.method public whitelist setNetworkRestriction(I)Z
    .locals 1
    .param p1, "pattern"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setTestId(I)V
    .locals 0
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    return-void
.end method

.method public whitelist setUidTos(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "tos"    # Ljava/lang/String;
    .param p3, "ifaceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15
    return-void
.end method
