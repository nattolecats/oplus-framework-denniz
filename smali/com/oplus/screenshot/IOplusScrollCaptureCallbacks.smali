.class public interface abstract Lcom/oplus/screenshot/IOplusScrollCaptureCallbacks;
.super Ljava/lang/Object;
.source "IOplusScrollCaptureCallbacks.java"


# virtual methods
.method public abstract whitelist onCaptureEnded()V
.end method

.method public abstract whitelist onCaptureStarted()V
.end method

.method public whitelist onImageRequestCompleted(ILandroid/graphics/Rect;)V
    .locals 0
    .param p1, "flags"    # I
    .param p2, "capturedArea"    # Landroid/graphics/Rect;

    .line 51
    return-void
.end method

.method public whitelist onImageRequestCompleted(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "flags"    # I
    .param p2, "capturedArea"    # Landroid/graphics/Rect;
    .param p3, "screenArea"    # Landroid/graphics/Rect;

    .line 66
    invoke-interface {p0, p1, p2}, Lcom/oplus/screenshot/IOplusScrollCaptureCallbacks;->onImageRequestCompleted(ILandroid/graphics/Rect;)V

    .line 67
    return-void
.end method
