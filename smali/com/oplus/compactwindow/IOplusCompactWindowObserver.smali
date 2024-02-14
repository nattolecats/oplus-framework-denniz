.class public interface abstract Lcom/oplus/compactwindow/IOplusCompactWindowObserver;
.super Ljava/lang/Object;
.source "IOplusCompactWindowObserver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/compactwindow/IOplusCompactWindowObserver$Stub;,
        Lcom/oplus/compactwindow/IOplusCompactWindowObserver$Default;
    }
.end annotation


# static fields
.field public static final whitelist DESCRIPTOR:Ljava/lang/String; = "com.oplus.compactwindow.IOplusCompactWindowObserver"


# virtual methods
.method public abstract whitelist onCompactWindowDied(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract whitelist onCompactWindowExit(Lcom/oplus/compactwindow/OplusCompactWindowInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract whitelist onCompactWindowInfoChanged(Lcom/oplus/compactwindow/OplusCompactWindowInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract whitelist onCompactWindowStart(Lcom/oplus/compactwindow/OplusCompactWindowInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
