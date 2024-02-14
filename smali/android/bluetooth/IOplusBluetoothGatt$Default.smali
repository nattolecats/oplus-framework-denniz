.class public Landroid/bluetooth/IOplusBluetoothGatt$Default;
.super Ljava/lang/Object;
.source "IOplusBluetoothGatt.java"

# interfaces
.implements Landroid/bluetooth/IOplusBluetoothGatt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IOplusBluetoothGatt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist clientSetConnectMode(Ljava/lang/String;I)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    return-void
.end method

.method public blacklist registerBluetoothRssiDetectCallback(Ljava/lang/String;Landroid/bluetooth/le/IOplusRssiDetectCallback;)Z
    .locals 1
    .param p1, "callAppName"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/bluetooth/le/IOplusRssiDetectCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist unregisterBluetoothRssiDetectCallback(Ljava/lang/String;Landroid/bluetooth/le/IOplusRssiDetectCallback;)Z
    .locals 1
    .param p1, "callAppName"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/bluetooth/le/IOplusRssiDetectCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    const/4 v0, 0x0

    return v0
.end method
