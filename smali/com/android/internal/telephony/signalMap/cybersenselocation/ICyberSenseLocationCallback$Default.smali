.class public Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationCallback$Default;
.super Ljava/lang/Object;
.source "ICyberSenseLocationCallback.java"

# interfaces
.implements Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 71
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onCslCollectionDataChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CyberSenseCellInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    .local p1, "cells":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CyberSenseCellInfo;>;"
    return-void
.end method

.method public blacklist onCslNetworkResultChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/LocationResult;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/LocationResult;>;"
    return-void
.end method

.method public blacklist onCslResultChanged(Landroid/telephony/LocationResult;)V
    .locals 0
    .param p1, "value"    # Landroid/telephony/LocationResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public blacklist onCslStateChanged(I)V
    .locals 0
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    return-void
.end method

.method public blacklist onMockPolicyChanged(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "policy"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    return-void
.end method
