.class public interface abstract Landroid/bluetooth/IOplusBluetoothGatt;
.super Ljava/lang/Object;
.source "IOplusBluetoothGatt.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IOplusBluetoothGatt$Stub;,
        Landroid/bluetooth/IOplusBluetoothGatt$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IOplusBluetoothGatt"


# virtual methods
.method public abstract blacklist clientSetConnectMode(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist registerBluetoothRssiDetectCallback(Ljava/lang/String;Landroid/bluetooth/le/IOplusRssiDetectCallback;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist unregisterBluetoothRssiDetectCallback(Ljava/lang/String;Landroid/bluetooth/le/IOplusRssiDetectCallback;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
