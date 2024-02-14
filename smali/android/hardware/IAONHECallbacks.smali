.class public interface abstract Landroid/hardware/IAONHECallbacks;
.super Ljava/lang/Object;
.source "IAONHECallbacks.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/IAONHECallbacks$Stub;,
        Landroid/hardware/IAONHECallbacks$Default;
    }
.end annotation


# static fields
.field public static final whitelist DESCRIPTOR:Ljava/lang/String; = "android.hardware.IAONHECallbacks"

.field public static final whitelist ERROR_AON_DISABLED:I = 0x2

.field public static final whitelist ERROR_AON_FORCE_CLOSE:I = 0x3

.field public static final whitelist ERROR_AON_IN_CLOSED:I = 0x0

.field public static final whitelist ERROR_AON_IN_USE:I = 0x1

.field public static final whitelist ERROR_AON_NO_INDEX:I = -0x1


# virtual methods
.method public abstract whitelist onClosed()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract whitelist onError(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract whitelist onHEDetected()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract whitelist onOpened()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
