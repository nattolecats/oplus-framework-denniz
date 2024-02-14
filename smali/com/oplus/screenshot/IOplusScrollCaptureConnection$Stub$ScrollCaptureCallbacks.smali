.class Lcom/oplus/screenshot/IOplusScrollCaptureConnection$Stub$ScrollCaptureCallbacks;
.super Lcom/oplus/screenshot/IOplusScrollCaptureCallbacksInner$Stub;
.source "IOplusScrollCaptureConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/screenshot/IOplusScrollCaptureConnection$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScrollCaptureCallbacks"
.end annotation


# instance fields
.field private final blacklist mLocal:Lcom/oplus/screenshot/IOplusScrollCaptureCallbacks;


# direct methods
.method private constructor blacklist <init>(Lcom/oplus/screenshot/IOplusScrollCaptureCallbacks;)V
    .locals 0
    .param p1, "mLocal"    # Lcom/oplus/screenshot/IOplusScrollCaptureCallbacks;

    .line 167
    invoke-direct {p0}, Lcom/oplus/screenshot/IOplusScrollCaptureCallbacksInner$Stub;-><init>()V

    .line 168
    iput-object p1, p0, Lcom/oplus/screenshot/IOplusScrollCaptureConnection$Stub$ScrollCaptureCallbacks;->mLocal:Lcom/oplus/screenshot/IOplusScrollCaptureCallbacks;

    .line 169
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/oplus/screenshot/IOplusScrollCaptureCallbacks;Lcom/oplus/screenshot/IOplusScrollCaptureConnection$Stub$ScrollCaptureCallbacks-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/screenshot/IOplusScrollCaptureConnection$Stub$ScrollCaptureCallbacks;-><init>(Lcom/oplus/screenshot/IOplusScrollCaptureCallbacks;)V

    return-void
.end method


# virtual methods
.method public blacklist onCaptureEnded()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/oplus/screenshot/IOplusScrollCaptureConnection$Stub$ScrollCaptureCallbacks;->mLocal:Lcom/oplus/screenshot/IOplusScrollCaptureCallbacks;

    invoke-interface {v0}, Lcom/oplus/screenshot/IOplusScrollCaptureCallbacks;->onCaptureEnded()V

    .line 184
    return-void
.end method

.method public blacklist onCaptureStarted()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/oplus/screenshot/IOplusScrollCaptureConnection$Stub$ScrollCaptureCallbacks;->mLocal:Lcom/oplus/screenshot/IOplusScrollCaptureCallbacks;

    invoke-interface {v0}, Lcom/oplus/screenshot/IOplusScrollCaptureCallbacks;->onCaptureStarted()V

    .line 174
    return-void
.end method

.method public blacklist onImageRequestCompleted(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "flags"    # I
    .param p2, "capturedArea"    # Landroid/graphics/Rect;
    .param p3, "screenArea"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/oplus/screenshot/IOplusScrollCaptureConnection$Stub$ScrollCaptureCallbacks;->mLocal:Lcom/oplus/screenshot/IOplusScrollCaptureCallbacks;

    invoke-interface {v0, p1, p2, p3}, Lcom/oplus/screenshot/IOplusScrollCaptureCallbacks;->onImageRequestCompleted(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 179
    return-void
.end method
