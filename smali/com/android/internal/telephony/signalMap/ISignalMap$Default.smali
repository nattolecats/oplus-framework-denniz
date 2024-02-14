.class public Lcom/android/internal/telephony/signalMap/ISignalMap$Default;
.super Ljava/lang/Object;
.source "ISignalMap.java"

# interfaces
.implements Lcom/android/internal/telephony/signalMap/ISignalMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/signalMap/ISignalMap;
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

    .line 138
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist canUseQoSService(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getQoSPredictState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist listenToSignalMapEvent(Ljava/lang/String;Lcom/android/internal/telephony/signalMap/ISignalMapCallback;[I)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/internal/telephony/signalMap/ISignalMapCallback;
    .param p3, "events"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 114
    return-void
.end method

.method public blacklist registerQosClient(Ljava/lang/String;Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSPredictionCallBack;)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "cb"    # Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSPredictionCallBack;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist registerQosCollectClient(Ljava/lang/String;Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSCollectCallBack;)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "cb"    # Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSCollectCallBack;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist registerServiceInfoCallback(Ljava/lang/String;Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSServiceInfoCallBack;)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "cb"    # Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSServiceInfoCallBack;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setOlkQoSClientPackages(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 135
    .local p1, "packageName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public blacklist unregisterQosClient(Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSPredictionCallBack;)Z
    .locals 1
    .param p1, "cb"    # Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSPredictionCallBack;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist unregisterQosCollectClient(Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSCollectCallBack;)Z
    .locals 1
    .param p1, "cb"    # Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSCollectCallBack;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist unregisterServiceInfoCallback(Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSServiceInfoCallBack;)Z
    .locals 1
    .param p1, "cb"    # Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSServiceInfoCallBack;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 101
    const/4 v0, 0x0

    return v0
.end method
