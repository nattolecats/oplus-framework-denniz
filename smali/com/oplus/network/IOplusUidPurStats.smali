.class public interface abstract Lcom/oplus/network/IOplusUidPurStats;
.super Ljava/lang/Object;
.source "IOplusUidPurStats.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/network/IOplusUidPurStats$Stub;,
        Lcom/oplus/network/IOplusUidPurStats$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.oplus.network.IOplusUidPurStats"


# virtual methods
.method public abstract blacklist fetchAppFreezeStatsInfoList()[Lcom/oplus/network/stats/AppFreezeStatsInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist fetchAppFreezeSynInfoList()[Lcom/oplus/network/stats/AppFreezeSyncInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getNoDataUids()[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getStatsCheckStatus()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist isUidNoData(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist registerUidNwStatusChange(Lcom/oplus/network/IOplusUidNwChange;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist unregisterUidNwStatusChange(Lcom/oplus/network/IOplusUidNwChange;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
