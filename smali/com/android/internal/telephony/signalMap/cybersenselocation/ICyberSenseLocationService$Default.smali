.class public Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationService$Default;
.super Ljava/lang/Object;
.source "ICyberSenseLocationService.java"

# interfaces
.implements Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationService;
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

    .line 169
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCslLocationResult()Landroid/telephony/LocationResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 89
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist pauseCslService()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist registerCslClient(Ljava/lang/String;Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationCallback;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist registerCslMockClient(Ljava/lang/String;Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationCallback;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist reportCslMockData(Ljava/util/List;)V
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

    .line 136
    .local p1, "cells":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CyberSenseCellInfo;>;"
    return-void
.end method

.method public blacklist reportCslMockLocationResult(Landroid/telephony/LocationResult;)V
    .locals 0
    .param p1, "lr"    # Landroid/telephony/LocationResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 146
    return-void
.end method

.method public blacklist reportCslMockLocationResults(Ljava/util/List;)V
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

    .line 156
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/LocationResult;>;"
    return-void
.end method

.method public blacklist reportCslMockState(I)V
    .locals 0
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 166
    return-void
.end method

.method public blacklist resumeCslService()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist startCslCollectData()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 117
    return-void
.end method

.method public blacklist startCslMockTest()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 99
    return-void
.end method

.method public blacklist stopCslCollectData()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 126
    return-void
.end method

.method public blacklist stopCslMockTest()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 108
    return-void
.end method

.method public blacklist unregisterCslClient(Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationCallback;)I
    .locals 1
    .param p1, "callback"    # Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist unregisterCslMockClient(Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationCallback;)I
    .locals 1
    .param p1, "callback"    # Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    const/4 v0, 0x0

    return v0
.end method
