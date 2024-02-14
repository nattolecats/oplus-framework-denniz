.class public interface abstract Landroid/hardware/fingerprint/IOplusFingerprintServiceReceiver;
.super Ljava/lang/Object;
.source "IOplusFingerprintServiceReceiver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/fingerprint/IOplusFingerprintServiceReceiver$Stub;,
        Landroid/hardware/fingerprint/IOplusFingerprintServiceReceiver$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.hardware.fingerprint.IOplusFingerprintServiceReceiver"


# virtual methods
.method public abstract blacklist onError(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onFingerprintEngineeringInfoUpdated(Landroid/hardware/fingerprint/EngineeringInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onTouchDown(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onTouchUp(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
