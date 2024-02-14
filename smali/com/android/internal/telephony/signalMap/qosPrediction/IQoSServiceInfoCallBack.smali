.class public interface abstract Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSServiceInfoCallBack;
.super Ljava/lang/Object;
.source "IQoSServiceInfoCallBack.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSServiceInfoCallBack$Stub;,
        Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSServiceInfoCallBack$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.signalMap.qosPrediction.IQoSServiceInfoCallBack"


# virtual methods
.method public abstract blacklist onQoSServiceInfoChanged(Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
