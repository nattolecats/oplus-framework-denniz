.class public interface abstract Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSPredictionCallBack;
.super Ljava/lang/Object;
.source "IQoSPredictionCallBack.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSPredictionCallBack$Stub;,
        Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSPredictionCallBack$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.signalMap.qosPrediction.IQoSPredictionCallBack"


# virtual methods
.method public abstract blacklist onQosPredictionResultChanged(Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onQosPredictionStateChanged(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
