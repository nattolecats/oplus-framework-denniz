.class public interface abstract Landroid/hardware/fingerprint/IFingerprintCommandCallback;
.super Ljava/lang/Object;
.source "IFingerprintCommandCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/fingerprint/IFingerprintCommandCallback$Stub;,
        Landroid/hardware/fingerprint/IFingerprintCommandCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.hardware.fingerprint.IFingerprintCommandCallback"


# virtual methods
.method public abstract blacklist onFingerprintCmd(I[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
