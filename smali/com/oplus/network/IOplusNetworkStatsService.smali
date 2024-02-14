.class public interface abstract Lcom/oplus/network/IOplusNetworkStatsService;
.super Ljava/lang/Object;
.source "IOplusNetworkStatsService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/network/IOplusNetworkStatsService$Stub;,
        Lcom/oplus/network/IOplusNetworkStatsService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.oplus.network.IOplusNetworkStatsService"


# virtual methods
.method public abstract blacklist fetchAppFreezeStats()Lcom/oplus/network/stats/AppFreezeStatsTotal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist fetchAppFreezeSyns()Lcom/oplus/network/stats/AppFreezeSyncTotal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getAppFreezeConfig()Lcom/oplus/network/stats/AppFreezeConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getIfaceStats(Ljava/lang/String;)Lcom/oplus/network/stats/StatsValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getIfnameUidStatsTotal()Lcom/oplus/network/stats/IfaceUidStatsTotal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getSocketIsLocal(J)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getSocketSpeedsTotal(II[J)Lcom/oplus/network/stats/SpeedsValueTotal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getUidPurStats(I)Lcom/oplus/network/stats/StatsValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getUidPurStatsTotal()Lcom/oplus/network/stats/StatsValueTotal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getUidSpeedsIfindex(I)Lcom/oplus/network/stats/IfaceSpeedsValueTotal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getUidStatsTotal()Lcom/oplus/network/stats/StatsValueTotal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setAppFreezeConfig(Lcom/oplus/network/stats/AppFreezeConfig;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setBpfSocketSpeedsConfig(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist startBpfSocketSpeedsCalc(IZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist stopBpfSocketSpeedsCalc(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
