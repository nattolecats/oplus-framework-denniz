.class public Landroid/bluetooth/OplusBluetoothGatt;
.super Ljava/lang/Object;
.source "OplusBluetoothGatt.java"


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothGatt"

.field public static final blacklist OPLUS_CALL_TRANSACTION_INDEX:I = 0x2710

.field public static final blacklist OPLUS_GATT_FAST_MODE:I = 0x1

.field public static final blacklist OPLUS_GATT_NORMAL_MODE:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String; = "OplusBluetoothGatt"

.field public static final blacklist TRANSACTION_CLIENT_SET_CONNECT_MODE:I = 0x2711

.field public static final blacklist TRANSACTION_REG_RSSI_DETECT_CALLBACK:I = 0x2712

.field public static final blacklist TRANSACTION_UNREG_RSSI_DETECT_CALLBACK:I = 0x2713

.field private static final blacklist mRssiDetectCallbackList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/bluetooth/OplusBluetoothRssiDetectCallback;",
            "Landroid/bluetooth/le/IOplusRssiDetectCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/bluetooth/OplusBluetoothGatt;->mRssiDetectCallbackList:Ljava/util/Map;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist clientSetConnectMode(Landroid/bluetooth/IBluetoothGatt;Ljava/lang/String;I)Z
    .locals 6
    .param p0, "bluetoothGatt"    # Landroid/bluetooth/IBluetoothGatt;
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 73
    move-object v0, p0

    .line 74
    .local v0, "service":Landroid/bluetooth/IBluetoothGatt;
    const/4 v1, 0x0

    const-string v2, "OplusBluetoothGatt"

    if-nez p0, :cond_0

    .line 75
    const-string v3, "oplusClientSetConnectMode bluetoothGatt is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return v1

    .line 78
    :cond_0
    if-nez p1, :cond_1

    .line 79
    const-string v3, "oplusClientSetConnectMode address is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return v1

    .line 82
    :cond_1
    invoke-static {p0}, Landroid/bluetooth/OplusBluetoothGatt;->getOplusBluetoothGatt(Landroid/bluetooth/IBluetoothGatt;)Landroid/bluetooth/IOplusBluetoothGatt;

    move-result-object v3

    .line 83
    .local v3, "iOplusBluetoothGatt":Landroid/bluetooth/IOplusBluetoothGatt;
    if-nez v3, :cond_2

    .line 84
    const-string v4, "iOplusBluetoothGatt is null!"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return v1

    .line 88
    :cond_2
    :try_start_0
    invoke-interface {v3, p1, p2}, Landroid/bluetooth/IOplusBluetoothGatt;->clientSetConnectMode(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    goto :goto_0

    .line 89
    :catch_0
    move-exception v1

    .line 90
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method private static blacklist getOplusBluetoothGatt(Landroid/bluetooth/IBluetoothGatt;)Landroid/bluetooth/IOplusBluetoothGatt;
    .locals 3
    .param p0, "bluetoothGatt"    # Landroid/bluetooth/IBluetoothGatt;

    .line 61
    if-eqz p0, :cond_0

    .line 62
    :try_start_0
    invoke-interface {p0}, Landroid/bluetooth/IBluetoothGatt;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->getExtension()Landroid/os/IBinder;

    move-result-object v0

    .line 63
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/bluetooth/IOplusBluetoothGatt$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IOplusBluetoothGatt;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 65
    .end local v0    # "b":Landroid/os/IBinder;
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusBluetoothGatt"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 67
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    nop

    .line 68
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static blacklist oplusClientSetFastConnectMode(Landroid/bluetooth/IBluetoothGatt;Ljava/lang/String;)Z
    .locals 1
    .param p0, "bluetoothGatt"    # Landroid/bluetooth/IBluetoothGatt;
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 96
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/bluetooth/OplusBluetoothGatt;->clientSetConnectMode(Landroid/bluetooth/IBluetoothGatt;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static blacklist registerBluetoothRssiDetectCallback(Landroid/bluetooth/IBluetoothGatt;Landroid/bluetooth/BluetoothAdapterExtImpl$BleRssiDetectCallback;Ljava/lang/String;)Z
    .locals 6
    .param p0, "bluetoothGatt"    # Landroid/bluetooth/IBluetoothGatt;
    .param p1, "callback"    # Landroid/bluetooth/BluetoothAdapterExtImpl$BleRssiDetectCallback;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 106
    const/4 v0, 0x0

    const-string v1, "OplusBluetoothGatt"

    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_1

    .line 110
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapterExtImpl$BleRssiDetectCallback;->getCallback()Landroid/bluetooth/OplusBluetoothRssiDetectCallback;

    move-result-object v2

    if-eqz v2, :cond_3

    sget-object v2, Landroid/bluetooth/OplusBluetoothGatt;->mRssiDetectCallbackList:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapterExtImpl$BleRssiDetectCallback;->getCallback()Landroid/bluetooth/OplusBluetoothRssiDetectCallback;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 114
    :cond_1
    invoke-static {p0}, Landroid/bluetooth/OplusBluetoothGatt;->getOplusBluetoothGatt(Landroid/bluetooth/IBluetoothGatt;)Landroid/bluetooth/IOplusBluetoothGatt;

    move-result-object v3

    .line 115
    .local v3, "iOplusBluetoothGatt":Landroid/bluetooth/IOplusBluetoothGatt;
    if-nez v3, :cond_2

    .line 116
    const-string v2, "iOplusBluetoothGatt is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return v0

    .line 119
    :cond_2
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapterExtImpl$BleRssiDetectCallback;->getCallback()Landroid/bluetooth/OplusBluetoothRssiDetectCallback;

    move-result-object v4

    invoke-interface {v2, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :try_start_0
    invoke-interface {v3, p2, p1}, Landroid/bluetooth/IOplusBluetoothGatt;->registerBluetoothRssiDetectCallback(Ljava/lang/String;Landroid/bluetooth/le/IOplusRssiDetectCallback;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 122
    :catch_0
    move-exception v2

    .line 123
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .end local v2    # "e":Landroid/os/RemoteException;
    return v0

    .line 111
    .end local v3    # "iOplusBluetoothGatt":Landroid/bluetooth/IOplusBluetoothGatt;
    :cond_3
    :goto_0
    const-string v2, "iCallback or packageName is null or callback has registered!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return v0

    .line 107
    :cond_4
    :goto_1
    const-string v2, "bluetoothGatt,callback or packageName is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return v0
.end method

.method static blacklist unregisterBluetoothRssiDetectCallback(Landroid/bluetooth/IBluetoothGatt;Landroid/bluetooth/BluetoothAdapterExtImpl$BleRssiDetectCallback;Ljava/lang/String;)Z
    .locals 6
    .param p0, "bluetoothGatt"    # Landroid/bluetooth/IBluetoothGatt;
    .param p1, "callback"    # Landroid/bluetooth/BluetoothAdapterExtImpl$BleRssiDetectCallback;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 133
    const/4 v0, 0x0

    const-string v1, "OplusBluetoothGatt"

    if-nez p1, :cond_0

    .line 134
    const-string v2, "callback is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return v0

    .line 137
    :cond_0
    sget-object v2, Landroid/bluetooth/OplusBluetoothGatt;->mRssiDetectCallbackList:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapterExtImpl$BleRssiDetectCallback;->getCallback()Landroid/bluetooth/OplusBluetoothRssiDetectCallback;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    if-nez p0, :cond_1

    .line 140
    const-string v2, "bluetoothGatt is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return v0

    .line 144
    :cond_1
    invoke-static {p0}, Landroid/bluetooth/OplusBluetoothGatt;->getOplusBluetoothGatt(Landroid/bluetooth/IBluetoothGatt;)Landroid/bluetooth/IOplusBluetoothGatt;

    move-result-object v2

    .line 145
    .local v2, "iOplusBluetoothGatt":Landroid/bluetooth/IOplusBluetoothGatt;
    if-nez v2, :cond_2

    .line 146
    const-string v3, "iOplusBluetoothGatt is null!"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return v0

    .line 150
    :cond_2
    :try_start_0
    invoke-interface {v2, p2, p1}, Landroid/bluetooth/IOplusBluetoothGatt;->unregisterBluetoothRssiDetectCallback(Ljava/lang/String;Landroid/bluetooth/le/IOplusRssiDetectCallback;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 151
    :catch_0
    move-exception v3

    .line 152
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .end local v3    # "e":Landroid/os/RemoteException;
    return v0
.end method
