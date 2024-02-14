.class public interface abstract Lcom/oplus/zoomwindow/IOplusZoomWindowObserver;
.super Ljava/lang/Object;
.source "IOplusZoomWindowObserver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/zoomwindow/IOplusZoomWindowObserver$Stub;,
        Lcom/oplus/zoomwindow/IOplusZoomWindowObserver$Default;
    }
.end annotation


# static fields
.field public static final whitelist DESCRIPTOR:Ljava/lang/String; = "com.oplus.zoomwindow.IOplusZoomWindowObserver"


# virtual methods
.method public abstract whitelist onInputMethodChanged(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract whitelist onZoomWindowDied(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract whitelist onZoomWindowHide(Lcom/oplus/zoomwindow/OplusZoomWindowInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract whitelist onZoomWindowShow(Lcom/oplus/zoomwindow/OplusZoomWindowInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
