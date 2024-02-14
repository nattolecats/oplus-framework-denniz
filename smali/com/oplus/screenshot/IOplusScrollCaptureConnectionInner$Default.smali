.class public Lcom/oplus/screenshot/IOplusScrollCaptureConnectionInner$Default;
.super Ljava/lang/Object;
.source "IOplusScrollCaptureConnectionInner.java"

# interfaces
.implements Lcom/oplus/screenshot/IOplusScrollCaptureConnectionInner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/screenshot/IOplusScrollCaptureConnectionInner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    return-void
.end method

.method public blacklist endCapture()Landroid/os/ICancellationSignal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist requestImage(Landroid/graphics/Rect;)Landroid/os/ICancellationSignal;
    .locals 1
    .param p1, "captureArea"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist startCapture(Landroid/view/Surface;Lcom/oplus/screenshot/IOplusScrollCaptureCallbacksInner;)Landroid/os/ICancellationSignal;
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "callbacks"    # Lcom/oplus/screenshot/IOplusScrollCaptureCallbacksInner;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    const/4 v0, 0x0

    return-object v0
.end method
