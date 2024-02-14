.class public Landroid/bluetooth/IOplusBluetoothManagerCallback$Default;
.super Ljava/lang/Object;
.source "IOplusBluetoothManagerCallback.java"

# interfaces
.implements Landroid/bluetooth/IOplusBluetoothManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IOplusBluetoothManagerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onBluetoothManagerMonitor(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "monitorEvent"    # Ljava/lang/String;
    .param p2, "monitResult"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method
