.class public interface abstract Lcom/oplus/screenshot/IOplusScrollCaptureCallbacksInner;
.super Ljava/lang/Object;
.source "IOplusScrollCaptureCallbacksInner.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/screenshot/IOplusScrollCaptureCallbacksInner$Stub;,
        Lcom/oplus/screenshot/IOplusScrollCaptureCallbacksInner$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.oplus.screenshot.IOplusScrollCaptureCallbacksInner"


# virtual methods
.method public abstract blacklist onCaptureEnded()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onCaptureStarted()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onImageRequestCompleted(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
