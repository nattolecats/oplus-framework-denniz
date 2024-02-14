.class public Lcom/oplus/compactwindow/IOplusCompactWindowObserver$Default;
.super Ljava/lang/Object;
.source "IOplusCompactWindowObserver.java"

# interfaces
.implements Lcom/oplus/compactwindow/IOplusCompactWindowObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/compactwindow/IOplusCompactWindowObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onCompactWindowDied(Ljava/lang/String;)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method

.method public whitelist onCompactWindowExit(Lcom/oplus/compactwindow/OplusCompactWindowInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/oplus/compactwindow/OplusCompactWindowInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15
    return-void
.end method

.method public whitelist onCompactWindowInfoChanged(Lcom/oplus/compactwindow/OplusCompactWindowInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/oplus/compactwindow/OplusCompactWindowInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method

.method public whitelist onCompactWindowStart(Lcom/oplus/compactwindow/OplusCompactWindowInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/oplus/compactwindow/OplusCompactWindowInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12
    return-void
.end method
