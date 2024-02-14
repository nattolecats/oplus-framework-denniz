.class public interface abstract Landroid/bluetooth/IOplusBluetoothCallback;
.super Ljava/lang/Object;
.source "IOplusBluetoothCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IOplusBluetoothCallback$Stub;,
        Landroid/bluetooth/IOplusBluetoothCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist ADAPTER_SERVICE_ERROR_REPORT_CB:I = 0x30d42

.field public static final blacklist BLUETOOTH_DIAGNOSE_TOOL_REPORT_CB:I = 0x30d43

.field public static final blacklist BLUETOOTH_SCENARIO_INFO_REPORT_CB:I = 0x30d44

.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IOplusBluetoothCallback"

.field public static final blacklist RSSI_DETECT_CB:I = 0x30d41


# virtual methods
.method public abstract blacklist bluetoothCallbackRawdata(ILjava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist recordAdapterErrorState(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist sendNativeRecordEvent(Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
