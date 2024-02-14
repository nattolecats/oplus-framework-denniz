.class public interface abstract Lcom/oplus/compatmode/IOplusCompatModeSession;
.super Ljava/lang/Object;
.source "IOplusCompatModeSession.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/compatmode/IOplusCompatModeSession$Stub;,
        Lcom/oplus/compatmode/IOplusCompatModeSession$Default;
    }
.end annotation


# static fields
.field public static final whitelist DESCRIPTOR:Ljava/lang/String; = "com.oplus.compatmode.IOplusCompatModeSession"


# virtual methods
.method public abstract blacklist compatUIInit()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist forceStopPackageAsUser(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract whitelist getCompactWindowInfo(I)Lcom/oplus/compactwindow/OplusCompactWindowInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract whitelist moveCompatModeWindowToLeft(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract whitelist moveCompatModeWindowToRight(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract whitelist registerCompactWindowObserver(Lcom/oplus/compactwindow/IOplusCompactWindowObserver;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract whitelist unregisterCompactWindowObserver(Lcom/oplus/compactwindow/IOplusCompactWindowObserver;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
