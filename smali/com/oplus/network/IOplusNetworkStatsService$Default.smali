.class public Lcom/oplus/network/IOplusNetworkStatsService$Default;
.super Ljava/lang/Object;
.source "IOplusNetworkStatsService.java"

# interfaces
.implements Lcom/oplus/network/IOplusNetworkStatsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/network/IOplusNetworkStatsService;
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

    .line 76
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist fetchAppFreezeStats()Lcom/oplus/network/stats/AppFreezeStatsTotal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist fetchAppFreezeSyns()Lcom/oplus/network/stats/AppFreezeSyncTotal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAppFreezeConfig()Lcom/oplus/network/stats/AppFreezeConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getIfaceStats(Ljava/lang/String;)Lcom/oplus/network/stats/StatsValue;
    .locals 1
    .param p1, "ifname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getIfnameUidStatsTotal()Lcom/oplus/network/stats/IfaceUidStatsTotal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSocketIsLocal(J)I
    .locals 1
    .param p1, "socketCookie"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getSocketSpeedsTotal(II[J)Lcom/oplus/network/stats/SpeedsValueTotal;
    .locals 1
    .param p1, "clearIntervals"    # I
    .param p2, "uploadSpeed"    # I
    .param p3, "limitCookies"    # [J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getUidPurStats(I)Lcom/oplus/network/stats/StatsValue;
    .locals 1
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getUidPurStatsTotal()Lcom/oplus/network/stats/StatsValueTotal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getUidSpeedsIfindex(I)Lcom/oplus/network/stats/IfaceSpeedsValueTotal;
    .locals 1
    .param p1, "clearIntervals"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getUidStatsTotal()Lcom/oplus/network/stats/StatsValueTotal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist setAppFreezeConfig(Lcom/oplus/network/stats/AppFreezeConfig;)Z
    .locals 1
    .param p1, "cfg"    # Lcom/oplus/network/stats/AppFreezeConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setBpfSocketSpeedsConfig(I)I
    .locals 1
    .param p1, "speedsCalcInv"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist startBpfSocketSpeedsCalc(IZ)I
    .locals 1
    .param p1, "ifindex"    # I
    .param p2, "localBypass"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist stopBpfSocketSpeedsCalc(I)I
    .locals 1
    .param p1, "ifindex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    const/4 v0, 0x0

    return v0
.end method
