.class public interface abstract Lcom/android/internal/telephony/signalMap/ISignalMap;
.super Ljava/lang/Object;
.source "ISignalMap.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/signalMap/ISignalMap$Stub;,
        Lcom/android/internal/telephony/signalMap/ISignalMap$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.signalMap.ISignalMap"


# virtual methods
.method public abstract blacklist canUseQoSService(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getQoSPredictState()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist listenToSignalMapEvent(Ljava/lang/String;Lcom/android/internal/telephony/signalMap/ISignalMapCallback;[I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist registerQosClient(Ljava/lang/String;Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSPredictionCallBack;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist registerQosCollectClient(Ljava/lang/String;Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSCollectCallBack;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist registerServiceInfoCallback(Ljava/lang/String;Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSServiceInfoCallBack;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setOlkQoSClientPackages(Ljava/util/List;)V
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
.end method

.method public abstract blacklist unregisterQosClient(Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSPredictionCallBack;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist unregisterQosCollectClient(Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSCollectCallBack;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist unregisterServiceInfoCallback(Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSServiceInfoCallBack;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
