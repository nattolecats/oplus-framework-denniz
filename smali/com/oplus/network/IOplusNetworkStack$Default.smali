.class public Lcom/oplus/network/IOplusNetworkStack$Default;
.super Ljava/lang/Object;
.source "IOplusNetworkStack.java"

# interfaces
.implements Lcom/oplus/network/IOplusNetworkStack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/network/IOplusNetworkStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 74
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getNetworkRtt(Landroid/net/Network;)I
    .locals 1
    .param p1, "network"    # Landroid/net/Network;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getNetworkScore(Landroid/net/Network;)I
    .locals 1
    .param p1, "network"    # Landroid/net/Network;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist oplusAddAppDnsConfig([Ljava/lang/String;[I)Z
    .locals 1
    .param p1, "hostname"    # [Ljava/lang/String;
    .param p2, "ipaddr"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist oplusClearAppDnsConfig()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist oplusDelAppDnsConfig([Ljava/lang/String;)Z
    .locals 1
    .param p1, "hostname"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist oplusGetUidByPort(ILjava/lang/String;)I
    .locals 1
    .param p1, "port"    # I
    .param p2, "callPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist oplusSetRedirectPort(II)Z
    .locals 1
    .param p1, "action"    # I
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist registerOplusNetdEvent(Lcom/oplus/network/IOplusNetdEventCb;)V
    .locals 0
    .param p1, "netdCb"    # Lcom/oplus/network/IOplusNetdEventCb;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 61
    return-void
.end method

.method public blacklist registerTcpScoreChange(Lcom/oplus/network/IOplusNetScoreChange;)V
    .locals 0
    .param p1, "scorechange"    # Lcom/oplus/network/IOplusNetScoreChange;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    return-void
.end method

.method public blacklist startDiagnosis(Landroid/net/Network;Lcom/oplus/network/INetworkDiagnosisCb;)Z
    .locals 1
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "cb"    # Lcom/oplus/network/INetworkDiagnosisCb;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist unregisterOplusNetdEvent(Lcom/oplus/network/IOplusNetdEventCb;)V
    .locals 0
    .param p1, "netdCb"    # Lcom/oplus/network/IOplusNetdEventCb;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    return-void
.end method

.method public blacklist unregisterTcpScoreChange(Lcom/oplus/network/IOplusNetScoreChange;)V
    .locals 0
    .param p1, "scorechange"    # Lcom/oplus/network/IOplusNetScoreChange;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    return-void
.end method

.method public blacklist videoFrameLag(Z)V
    .locals 0
    .param p1, "lag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    return-void
.end method

.method public blacklist videoStop()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    return-void
.end method
