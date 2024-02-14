.class public interface abstract Lcom/oplus/miragewindow/IOplusMirageWindowSession;
.super Ljava/lang/Object;
.source "IOplusMirageWindowSession.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/miragewindow/IOplusMirageWindowSession$Stub;,
        Lcom/oplus/miragewindow/IOplusMirageWindowSession$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.oplus.miragewindow.IOplusMirageWindowSession"


# virtual methods
.method public abstract blacklist addCastScreenState(Lcom/oplus/miragewindow/OplusCastScreenState;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getCastScreenStateList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/miragewindow/OplusCastScreenState;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist registerCastScreenStateObserver(Lcom/oplus/miragewindow/IOplusCastScreenStateObserver;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist removeCastScreenState()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setMirageDisplayId(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist unregisterCastScreenStateObserver(Lcom/oplus/miragewindow/IOplusCastScreenStateObserver;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
