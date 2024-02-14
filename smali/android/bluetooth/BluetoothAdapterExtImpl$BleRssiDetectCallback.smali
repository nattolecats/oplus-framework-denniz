.class public Landroid/bluetooth/BluetoothAdapterExtImpl$BleRssiDetectCallback;
.super Landroid/bluetooth/le/IOplusRssiDetectCallback$Stub;
.source "BluetoothAdapterExtImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothAdapterExtImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BleRssiDetectCallback"
.end annotation


# instance fields
.field private blacklist mCallback:Landroid/bluetooth/OplusBluetoothRssiDetectCallback;

.field final synthetic blacklist this$0:Landroid/bluetooth/BluetoothAdapterExtImpl;


# direct methods
.method public constructor blacklist <init>(Landroid/bluetooth/BluetoothAdapterExtImpl;Landroid/bluetooth/OplusBluetoothRssiDetectCallback;)V
    .locals 0
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothAdapterExtImpl;
    .param p2, "callback"    # Landroid/bluetooth/OplusBluetoothRssiDetectCallback;

    .line 620
    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapterExtImpl$BleRssiDetectCallback;->this$0:Landroid/bluetooth/BluetoothAdapterExtImpl;

    invoke-direct {p0}, Landroid/bluetooth/le/IOplusRssiDetectCallback$Stub;-><init>()V

    .line 621
    iput-object p2, p0, Landroid/bluetooth/BluetoothAdapterExtImpl$BleRssiDetectCallback;->mCallback:Landroid/bluetooth/OplusBluetoothRssiDetectCallback;

    .line 622
    return-void
.end method


# virtual methods
.method public blacklist getCallback()Landroid/bluetooth/OplusBluetoothRssiDetectCallback;
    .locals 1

    .line 632
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapterExtImpl$BleRssiDetectCallback;->mCallback:Landroid/bluetooth/OplusBluetoothRssiDetectCallback;

    return-object v0
.end method

.method public blacklist onRssiDetectResultCallback(Landroid/bluetooth/le/ScanResult;F)V
    .locals 1
    .param p1, "result"    # Landroid/bluetooth/le/ScanResult;
    .param p2, "modifRssi"    # F

    .line 626
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapterExtImpl$BleRssiDetectCallback;->mCallback:Landroid/bluetooth/OplusBluetoothRssiDetectCallback;

    if-eqz v0, :cond_0

    .line 627
    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/OplusBluetoothRssiDetectCallback;->onRssiDetectResultCallback(Landroid/bluetooth/le/ScanResult;F)V

    .line 629
    :cond_0
    return-void
.end method
