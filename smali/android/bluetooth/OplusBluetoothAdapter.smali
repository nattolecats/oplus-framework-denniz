.class public final Landroid/bluetooth/OplusBluetoothAdapter;
.super Ljava/lang/Object;
.source "OplusBluetoothAdapter.java"


# static fields
.field public static final whitelist TAG:Ljava/lang/String; = "OplusBluetoothAdapter"

.field public static final whitelist TYPE_BLUEOOTH_RECORD_DUAL_EAR_DUAL_CHANNEL:I = 0x1

.field public static final whitelist TYPE_BLUEOOTH_RECORD_DUAL_EAR_FOUR_CHANNEL:I = 0x2

.field public static final whitelist TYPE_BLUEOOTH_RECORD_NOT_CONNECTED:I

.field private static blacklist sAdapter:Landroid/bluetooth/OplusBluetoothAdapter;


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized whitelist getOplusBluetoothAdapter()Landroid/bluetooth/OplusBluetoothAdapter;
    .locals 2

    const-class v0, Landroid/bluetooth/OplusBluetoothAdapter;

    monitor-enter v0

    .line 62
    :try_start_0
    sget-object v1, Landroid/bluetooth/OplusBluetoothAdapter;->sAdapter:Landroid/bluetooth/OplusBluetoothAdapter;

    if-nez v1, :cond_0

    .line 63
    new-instance v1, Landroid/bluetooth/OplusBluetoothAdapter;

    invoke-direct {v1}, Landroid/bluetooth/OplusBluetoothAdapter;-><init>()V

    sput-object v1, Landroid/bluetooth/OplusBluetoothAdapter;->sAdapter:Landroid/bluetooth/OplusBluetoothAdapter;

    .line 65
    :cond_0
    sget-object v1, Landroid/bluetooth/OplusBluetoothAdapter;->sAdapter:Landroid/bluetooth/OplusBluetoothAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 61
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public whitelist getBluetoothConnectedAppPID()[I
    .locals 2

    .line 168
    invoke-static {}, Landroid/bluetooth/BluetoothAdapterExtImpl;->getInstance()Landroid/bluetooth/BluetoothAdapterExtImpl;

    move-result-object v0

    .line 169
    .local v0, "bluetoothAdapterExtImp":Landroid/bluetooth/BluetoothAdapterExtImpl;
    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapterExtImpl;->getBluetoothConnectedAppPID()[I

    move-result-object v1

    return-object v1

    .line 172
    :cond_0
    const/4 v1, 0x0

    new-array v1, v1, [I

    return-object v1
.end method

.method public whitelist getBluetoothConnectionCount()I
    .locals 3

    .line 151
    const/4 v0, 0x0

    .line 152
    .local v0, "result":I
    invoke-static {}, Landroid/bluetooth/BluetoothAdapterExtImpl;->getInstance()Landroid/bluetooth/BluetoothAdapterExtImpl;

    move-result-object v1

    .line 153
    .local v1, "bluetoothAdapterExtImp":Landroid/bluetooth/BluetoothAdapterExtImpl;
    if-eqz v1, :cond_0

    .line 154
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapterExtImpl;->getBluetoothConnectionCount()I

    move-result v2

    return v2

    .line 156
    :cond_0
    return v0
.end method

.method public whitelist getBluetoothRecordConnectedType()I
    .locals 2

    .line 189
    invoke-static {}, Landroid/bluetooth/BluetoothAdapterExtImpl;->getInstance()Landroid/bluetooth/BluetoothAdapterExtImpl;

    move-result-object v0

    .line 190
    .local v0, "bluetoothAdapterExtImp":Landroid/bluetooth/BluetoothAdapterExtImpl;
    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapterExtImpl;->getBluetoothRecordConnectedType()I

    move-result v1

    return v1

    .line 193
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist isBluetoothRecordConnected()Z
    .locals 2

    .line 206
    invoke-static {}, Landroid/bluetooth/BluetoothAdapterExtImpl;->getInstance()Landroid/bluetooth/BluetoothAdapterExtImpl;

    move-result-object v0

    .line 207
    .local v0, "bluetoothAdapterExtImp":Landroid/bluetooth/BluetoothAdapterExtImpl;
    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapterExtImpl;->isBluetoothRecordConnected()Z

    move-result v1

    return v1

    .line 210
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist oplusDisableAutoConnectPolicy(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 92
    invoke-static {}, Landroid/bluetooth/BluetoothAdapterExtImpl;->getInstance()Landroid/bluetooth/BluetoothAdapterExtImpl;

    move-result-object v0

    .line 93
    .local v0, "bluetoothAdapterExtImp":Landroid/bluetooth/BluetoothAdapterExtImpl;
    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapterExtImpl;->disableAutoConnectPolicy(Landroid/bluetooth/BluetoothDevice;)V

    .line 96
    :cond_0
    return-void
.end method

.method public whitelist oplusEnableAutoConnectPolicy(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 77
    invoke-static {}, Landroid/bluetooth/BluetoothAdapterExtImpl;->getInstance()Landroid/bluetooth/BluetoothAdapterExtImpl;

    move-result-object v0

    .line 78
    .local v0, "bluetoothAdapterExtImp":Landroid/bluetooth/BluetoothAdapterExtImpl;
    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapterExtImpl;->enableAutoConnectPolicy(Landroid/bluetooth/BluetoothDevice;)V

    .line 81
    :cond_0
    return-void
.end method

.method public whitelist registerOplusBluetoothRssiDetectCallback(Landroid/bluetooth/OplusBluetoothRssiDetectCallback;)Z
    .locals 3
    .param p1, "callback"    # Landroid/bluetooth/OplusBluetoothRssiDetectCallback;

    .line 108
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 109
    const-string v1, "OplusBluetoothAdapter"

    const-string v2, "callback null!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return v0

    .line 112
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapterExtImpl;->getInstance()Landroid/bluetooth/BluetoothAdapterExtImpl;

    move-result-object v1

    .line 113
    .local v1, "bluetoothAdapterExtImp":Landroid/bluetooth/BluetoothAdapterExtImpl;
    if-eqz v1, :cond_1

    .line 114
    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothAdapterExtImpl;->registerBluetoothRssiDetectCallback(Landroid/bluetooth/OplusBluetoothRssiDetectCallback;)Z

    move-result v0

    return v0

    .line 116
    :cond_1
    return v0
.end method

.method public whitelist unregisterOplusBluetoothRssiDetectCallback(Landroid/bluetooth/OplusBluetoothRssiDetectCallback;)Z
    .locals 4
    .param p1, "callback"    # Landroid/bluetooth/OplusBluetoothRssiDetectCallback;

    .line 129
    const/4 v0, 0x0

    const-string v1, "OplusBluetoothAdapter"

    if-nez p1, :cond_0

    .line 130
    const-string v2, "callback null!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return v0

    .line 133
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapterExtImpl;->getInstance()Landroid/bluetooth/BluetoothAdapterExtImpl;

    move-result-object v2

    .line 134
    .local v2, "bluetoothAdapterExtImp":Landroid/bluetooth/BluetoothAdapterExtImpl;
    if-eqz v2, :cond_1

    .line 135
    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothAdapterExtImpl;->unregisterBluetoothRssiDetectCallback(Landroid/bluetooth/OplusBluetoothRssiDetectCallback;)Z

    move-result v0

    return v0

    .line 137
    :cond_1
    const-string v3, "bluetoothAdapterExtImp null!"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return v0
.end method
