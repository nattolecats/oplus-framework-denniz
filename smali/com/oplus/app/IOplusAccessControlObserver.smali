.class public interface abstract Lcom/oplus/app/IOplusAccessControlObserver;
.super Ljava/lang/Object;
.source "IOplusAccessControlObserver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/app/IOplusAccessControlObserver$Stub;,
        Lcom/oplus/app/IOplusAccessControlObserver$Default;
    }
.end annotation


# static fields
.field public static final whitelist DESCRIPTOR:Ljava/lang/String; = "com.oplus.app.IOplusAccessControlObserver"


# virtual methods
.method public abstract whitelist onEncryptEnableChange(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract whitelist onEncryptStateChange(Lcom/oplus/app/OplusAccessControlInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract whitelist onHideEnableChange(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract whitelist onHideStateChange(Lcom/oplus/app/OplusAccessControlInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
