.class public interface abstract Lcom/oplus/screenshot/IOplusScrollCaptureConnectionInner;
.super Ljava/lang/Object;
.source "IOplusScrollCaptureConnectionInner.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/screenshot/IOplusScrollCaptureConnectionInner$Stub;,
        Lcom/oplus/screenshot/IOplusScrollCaptureConnectionInner$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.oplus.screenshot.IOplusScrollCaptureConnectionInner"


# virtual methods
.method public abstract blacklist close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist endCapture()Landroid/os/ICancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist requestImage(Landroid/graphics/Rect;)Landroid/os/ICancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist startCapture(Landroid/view/Surface;Lcom/oplus/screenshot/IOplusScrollCaptureCallbacksInner;)Landroid/os/ICancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
