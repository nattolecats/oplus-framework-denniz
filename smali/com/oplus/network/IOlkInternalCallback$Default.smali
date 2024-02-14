.class public Lcom/oplus/network/IOlkInternalCallback$Default;
.super Ljava/lang/Object;
.source "IOlkInternalCallback.java"

# interfaces
.implements Lcom/oplus/network/IOlkInternalCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/network/IOlkInternalCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist olkClearSocketPriorityCallback(Ljava/lang/String;Lcom/oplus/network/OlkStreamParam;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "param"    # Lcom/oplus/network/OlkStreamParam;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public blacklist olkSetApBandwithCallback(Ljava/lang/String;II)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "rxBw"    # I
    .param p3, "txBw"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    return-void
.end method

.method public blacklist olkSetApStateCallback(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "delay"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    return-void
.end method

.method public blacklist olkSetRealTimeEventCallback(Ljava/lang/String;I)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "event"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method

.method public blacklist olkSetSocketPriorityCallback(Ljava/lang/String;Lcom/oplus/network/OlkStreamParam;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "param"    # Lcom/oplus/network/OlkStreamParam;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method

.method public blacklist olkUpdateCellularEnable(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method
