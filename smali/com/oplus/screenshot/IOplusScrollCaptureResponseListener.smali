.class public interface abstract Lcom/oplus/screenshot/IOplusScrollCaptureResponseListener;
.super Ljava/lang/Object;
.source "IOplusScrollCaptureResponseListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/screenshot/IOplusScrollCaptureResponseListener$Stub;,
        Lcom/oplus/screenshot/IOplusScrollCaptureResponseListener$Default;
    }
.end annotation


# static fields
.field public static final whitelist DESCRIPTOR:Ljava/lang/String; = "com.oplus.screenshot.IOplusScrollCaptureResponseListener"


# virtual methods
.method public abstract whitelist onScrollCaptureResponse(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/screenshot/OplusScrollCaptureResponse;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
