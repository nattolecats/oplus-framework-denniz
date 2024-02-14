.class public interface abstract Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSCollectCallBack;
.super Ljava/lang/Object;
.source "IQoSCollectCallBack.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSCollectCallBack$Stub;,
        Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSCollectCallBack$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.signalMap.qosPrediction.IQoSCollectCallBack"


# virtual methods
.method public abstract blacklist onQosDataChanged(Landroid/telephony/QoSInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
