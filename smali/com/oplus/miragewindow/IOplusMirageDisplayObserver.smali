.class public interface abstract Lcom/oplus/miragewindow/IOplusMirageDisplayObserver;
.super Ljava/lang/Object;
.source "IOplusMirageDisplayObserver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/miragewindow/IOplusMirageDisplayObserver$Stub;,
        Lcom/oplus/miragewindow/IOplusMirageDisplayObserver$Default;
    }
.end annotation


# static fields
.field public static final whitelist DESCRIPTOR:Ljava/lang/String; = "com.oplus.miragewindow.IOplusMirageDisplayObserver"


# virtual methods
.method public abstract whitelist onMirageDisplayCastFailed(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract whitelist onMirageDisplayCastSuccess(Lcom/oplus/miragewindow/OplusMirageDisplayCastInfo;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract whitelist onMirageDisplayConfigChanged(Lcom/oplus/miragewindow/OplusMirageDisplayCastInfo;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract whitelist onMirageDisplayExit(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract whitelist onMirageDisplayToastEvent(IILandroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract whitelist onMirageDisplayTopActivityUidChanged(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
