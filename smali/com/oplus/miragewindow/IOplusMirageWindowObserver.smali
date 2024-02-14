.class public interface abstract Lcom/oplus/miragewindow/IOplusMirageWindowObserver;
.super Ljava/lang/Object;
.source "IOplusMirageWindowObserver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/miragewindow/IOplusMirageWindowObserver$Stub;,
        Lcom/oplus/miragewindow/IOplusMirageWindowObserver$Default;
    }
.end annotation


# static fields
.field public static final whitelist DESCRIPTOR:Ljava/lang/String; = "com.oplus.miragewindow.IOplusMirageWindowObserver"


# virtual methods
.method public abstract whitelist onMirageDisplayTopActivityUidChanged(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract whitelist onMirageWindConfigChanged(Lcom/oplus/miragewindow/OplusMirageWindowInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract whitelist onMirageWindowDied(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract whitelist onMirageWindowExit(Lcom/oplus/miragewindow/OplusMirageWindowInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract whitelist onMirageWindowShow(Lcom/oplus/miragewindow/OplusMirageWindowInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
