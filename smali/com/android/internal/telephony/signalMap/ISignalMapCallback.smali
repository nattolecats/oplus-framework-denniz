.class public interface abstract Lcom/android/internal/telephony/signalMap/ISignalMapCallback;
.super Ljava/lang/Object;
.source "ISignalMapCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/signalMap/ISignalMapCallback$Stub;,
        Lcom/android/internal/telephony/signalMap/ISignalMapCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.signalMap.ISignalMapCallback"


# virtual methods
.method public abstract blacklist onGeoFenceStateChanged(ZII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onGeoFenceStateChangedSecondly(ZII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onQoSPredictResultChanged(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
