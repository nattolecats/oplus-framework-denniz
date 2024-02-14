.class public interface abstract Lcom/oplus/app/IOplusAppSwitchObserver;
.super Ljava/lang/Object;
.source "IOplusAppSwitchObserver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/app/IOplusAppSwitchObserver$Stub;,
        Lcom/oplus/app/IOplusAppSwitchObserver$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.oplus.app.IOplusAppSwitchObserver"


# virtual methods
.method public abstract blacklist onActivityEnter(Lcom/oplus/app/OplusAppEnterInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onActivityExit(Lcom/oplus/app/OplusAppExitInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onAppEnter(Lcom/oplus/app/OplusAppEnterInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onAppExit(Lcom/oplus/app/OplusAppExitInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
