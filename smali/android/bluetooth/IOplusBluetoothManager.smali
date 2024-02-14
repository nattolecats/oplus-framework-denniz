.class public interface abstract Landroid/bluetooth/IOplusBluetoothManager;
.super Ljava/lang/Object;
.source "IOplusBluetoothManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IOplusBluetoothManager$Stub;,
        Landroid/bluetooth/IOplusBluetoothManager$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IOplusBluetoothManager"


# virtual methods
.method public abstract blacklist registerBtMonitStateCallback(Ljava/lang/String;Ljava/util/List;Landroid/bluetooth/IOplusBluetoothManagerCallback;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/bluetooth/IOplusBluetoothManagerCallback;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist unregisterBtMonitStateCallback(Ljava/lang/String;Ljava/util/List;Landroid/bluetooth/IOplusBluetoothManagerCallback;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/bluetooth/IOplusBluetoothManagerCallback;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
