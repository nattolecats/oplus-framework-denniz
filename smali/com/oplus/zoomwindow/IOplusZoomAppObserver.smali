.class public interface abstract Lcom/oplus/zoomwindow/IOplusZoomAppObserver;
.super Ljava/lang/Object;
.source "IOplusZoomAppObserver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/zoomwindow/IOplusZoomAppObserver$Stub;,
        Lcom/oplus/zoomwindow/IOplusZoomAppObserver$Default;
    }
.end annotation


# static fields
.field public static final whitelist DESCRIPTOR:Ljava/lang/String; = "com.oplus.zoomwindow.IOplusZoomAppObserver"


# virtual methods
.method public abstract whitelist notifyControlViewChange(Lcom/oplus/zoomwindow/OplusZoomWindowInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract whitelist notifyDecorationChange(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract whitelist notifyShowCompatibilityToast(IILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
