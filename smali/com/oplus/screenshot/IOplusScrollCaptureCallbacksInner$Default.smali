.class public Lcom/oplus/screenshot/IOplusScrollCaptureCallbacksInner$Default;
.super Ljava/lang/Object;
.source "IOplusScrollCaptureCallbacksInner.java"

# interfaces
.implements Lcom/oplus/screenshot/IOplusScrollCaptureCallbacksInner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/screenshot/IOplusScrollCaptureCallbacksInner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onCaptureEnded()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    return-void
.end method

.method public blacklist onCaptureStarted()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public blacklist onImageRequestCompleted(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "flags"    # I
    .param p2, "capturedArea"    # Landroid/graphics/Rect;
    .param p3, "screenArea"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    return-void
.end method
