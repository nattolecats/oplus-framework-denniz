.class public interface abstract Lcom/oplus/screenshot/IOplusScrollCaptureCallback;
.super Ljava/lang/Object;
.source "IOplusScrollCaptureCallback.java"

# interfaces
.implements Landroid/view/ScrollCaptureCallback;


# virtual methods
.method public abstract blacklist onScrollCaptureImageRequest2(Landroid/view/ScrollCaptureSession;Landroid/os/CancellationSignal;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ScrollCaptureSession;",
            "Landroid/os/CancellationSignal;",
            "Landroid/graphics/Rect;",
            "Ljava/util/function/Consumer<",
            "[",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation
.end method
