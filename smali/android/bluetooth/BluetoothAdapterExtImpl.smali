.class public final Landroid/bluetooth/BluetoothAdapterExtImpl;
.super Ljava/lang/Object;
.source "BluetoothAdapterExtImpl.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothAdapterExt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothAdapterExtImpl$OplusBtMonitorCallbackWrapper;,
        Landroid/bluetooth/BluetoothAdapterExtImpl$BleRssiDetectCallback;,
        Landroid/bluetooth/BluetoothAdapterExtImpl$OplusServiceLifecycleCallback;
    }
.end annotation


# static fields
.field private static final blacklist DBG:Z

.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetooth"

.field public static final blacklist OPLUS_CALL_TRANSACTION_INDEX:I = 0x2710

.field public static final blacklist TAG:Ljava/lang/String; = "BluetoothAdapterExtImpl"

.field private static blacklist mOplusBluetooth:Landroid/bluetooth/IOplusBluetooth;

.field private static blacklist sAdapter:Landroid/bluetooth/BluetoothAdapterExtImpl;


# instance fields
.field private blacklist mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private blacklist mBluetoothMonitorClients:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/bluetooth/OplusBluetoothMonitorCallback;",
            "Landroid/bluetooth/BluetoothAdapterExtImpl$OplusBtMonitorCallbackWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mService:Landroid/bluetooth/IBluetooth;

.field private blacklist mServiceLifecycleCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothAdapterExtImpl$OplusServiceLifecycleCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private blacklist mStateChangeCallback:Landroid/bluetooth/IBluetoothManagerCallback;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBluetoothMonitorClients(Landroid/bluetooth/BluetoothAdapterExtImpl;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mBluetoothMonitorClients:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmService(Landroid/bluetooth/BluetoothAdapterExtImpl;)Landroid/bluetooth/IBluetooth;
    .locals 0

    iget-object p0, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mService:Landroid/bluetooth/IBluetooth;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServiceLifecycleCallbacks(Landroid/bluetooth/BluetoothAdapterExtImpl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mServiceLifecycleCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServiceLock(Landroid/bluetooth/BluetoothAdapterExtImpl;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    .locals 0

    iget-object p0, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmService(Landroid/bluetooth/BluetoothAdapterExtImpl;Landroid/bluetooth/IBluetooth;)V
    .locals 0

    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mService:Landroid/bluetooth/IBluetooth;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdebugLog(Landroid/bluetooth/BluetoothAdapterExtImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothAdapterExtImpl;->debugLog(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetmOplusBluetooth()Landroid/bluetooth/IOplusBluetooth;
    .locals 1

    sget-object v0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mOplusBluetooth:Landroid/bluetooth/IOplusBluetooth;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfputmOplusBluetooth(Landroid/bluetooth/IOplusBluetooth;)V
    .locals 0

    sput-object p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mOplusBluetooth:Landroid/bluetooth/IOplusBluetooth;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 56
    const-string v0, "ro.build.release_type"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    const-string v0, "persist.sys.assert.panic"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    sput-boolean v1, Landroid/bluetooth/BluetoothAdapterExtImpl;->DBG:Z

    .line 66
    const/4 v0, 0x0

    sput-object v0, Landroid/bluetooth/BluetoothAdapterExtImpl;->sAdapter:Landroid/bluetooth/BluetoothAdapterExtImpl;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/bluetooth/BluetoothAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/bluetooth/BluetoothAdapter;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mServiceLifecycleCallbacks:Ljava/util/List;

    .line 73
    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 74
    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mBluetoothMonitorClients:Ljava/util/Map;

    .line 126
    new-instance v0, Landroid/bluetooth/BluetoothAdapterExtImpl$1;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothAdapterExtImpl$1;-><init>(Landroid/bluetooth/BluetoothAdapterExtImpl;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mStateChangeCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    .line 88
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothAdapter;

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mServiceLifecycleCallbacks:Ljava/util/List;

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mBluetoothMonitorClients:Ljava/util/Map;

    .line 91
    invoke-direct {p0}, Landroid/bluetooth/BluetoothAdapterExtImpl;->getService()V

    .line 92
    return-void
.end method

.method private static blacklist createBluetoothAdapterExtImpl()Landroid/bluetooth/BluetoothAdapterExtImpl;
    .locals 3

    .line 96
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 97
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    sget-object v1, Landroid/bluetooth/BluetoothAdapterExtImpl;->sAdapter:Landroid/bluetooth/BluetoothAdapterExtImpl;

    if-nez v1, :cond_0

    .line 98
    new-instance v1, Landroid/bluetooth/BluetoothAdapterExtImpl;

    invoke-direct {v1, v0}, Landroid/bluetooth/BluetoothAdapterExtImpl;-><init>(Landroid/bluetooth/BluetoothAdapter;)V

    return-object v1

    .line 100
    :cond_0
    const-string v1, "BluetoothAdapterExtImpl"

    const-string v2, "Bluetooth Adapter is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    sget-object v1, Landroid/bluetooth/BluetoothAdapterExtImpl;->sAdapter:Landroid/bluetooth/BluetoothAdapterExtImpl;

    return-object v1
.end method

.method private blacklist debugLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 942
    sget-boolean v0, Landroid/bluetooth/BluetoothAdapterExtImpl;->DBG:Z

    if-eqz v0, :cond_0

    .line 943
    const-string v0, "BluetoothAdapterExtImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    :cond_0
    return-void
.end method

.method public static declared-synchronized blacklist getInstance()Landroid/bluetooth/BluetoothAdapterExtImpl;
    .locals 2

    const-class v0, Landroid/bluetooth/BluetoothAdapterExtImpl;

    monitor-enter v0

    .line 77
    :try_start_0
    sget-object v1, Landroid/bluetooth/BluetoothAdapterExtImpl;->sAdapter:Landroid/bluetooth/BluetoothAdapterExtImpl;

    if-nez v1, :cond_0

    .line 78
    invoke-static {}, Landroid/bluetooth/BluetoothAdapterExtImpl;->createBluetoothAdapterExtImpl()Landroid/bluetooth/BluetoothAdapterExtImpl;

    move-result-object v1

    sput-object v1, Landroid/bluetooth/BluetoothAdapterExtImpl;->sAdapter:Landroid/bluetooth/BluetoothAdapterExtImpl;

    .line 80
    :cond_0
    sget-object v1, Landroid/bluetooth/BluetoothAdapterExtImpl;->sAdapter:Landroid/bluetooth/BluetoothAdapterExtImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 76
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized blacklist getInstance(Ljava/lang/Object;)Landroid/bluetooth/BluetoothAdapterExtImpl;
    .locals 2
    .param p0, "base"    # Ljava/lang/Object;

    const-class v0, Landroid/bluetooth/BluetoothAdapterExtImpl;

    monitor-enter v0

    .line 84
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapterExtImpl;->getInstance()Landroid/bluetooth/BluetoothAdapterExtImpl;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 84
    .end local p0    # "base":Ljava/lang/Object;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private blacklist getService()V
    .locals 4

    .line 107
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 108
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mStateChangeCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothService(Landroid/bluetooth/IBluetoothManagerCallback;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    .line 109
    .local v0, "tService":Landroid/bluetooth/IBluetooth;
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mService:Landroid/bluetooth/IBluetooth;

    if-nez v1, :cond_0

    .line 110
    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mService:Landroid/bluetooth/IBluetooth;

    .line 112
    :cond_0
    sget-object v1, Landroid/bluetooth/BluetoothAdapterExtImpl;->mOplusBluetooth:Landroid/bluetooth/IOplusBluetooth;

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_1

    .line 113
    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->getExtension()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/IOplusBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IOplusBluetooth;

    move-result-object v1

    sput-object v1, Landroid/bluetooth/BluetoothAdapterExtImpl;->mOplusBluetooth:Landroid/bluetooth/IOplusBluetooth;

    .line 114
    if-nez v1, :cond_1

    .line 115
    const-string v1, "getService mOplusBluetooth null"

    invoke-direct {p0, v1}, Landroid/bluetooth/BluetoothAdapterExtImpl;->debugLog(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    .end local v0    # "tService":Landroid/bluetooth/IBluetooth;
    :cond_1
    nop

    :goto_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 123
    goto :goto_1

    .line 122
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "BluetoothAdapterExtImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    nop

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 124
    :goto_1
    return-void

    .line 122
    :goto_2
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 123
    throw v0
.end method


# virtual methods
.method public blacklist addCarkit(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 435
    sget-object v0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mOplusBluetooth:Landroid/bluetooth/IOplusBluetooth;

    const-string v1, "BluetoothAdapterExtImpl"

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_3

    .line 440
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 441
    sget-object v0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mOplusBluetooth:Landroid/bluetooth/IOplusBluetooth;

    if-eqz v0, :cond_1

    .line 442
    invoke-interface {v0, p1}, Landroid/bluetooth/IOplusBluetooth;->addCarkit(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    :cond_1
    nop

    :goto_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 448
    goto :goto_1

    .line 447
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 444
    :catch_0
    move-exception v0

    .line 445
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 447
    nop

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 449
    :goto_1
    return-void

    .line 447
    :goto_2
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 448
    throw v0

    .line 436
    :cond_2
    :goto_3
    const-string v0, "oplusBluetoothAdapter addCarkit null!"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    return-void
.end method

.method public blacklist closeBtAbnomalMonitor(Ljava/lang/String;Ljava/util/List;Landroid/bluetooth/OplusBluetoothMonitorCallback;)Z
    .locals 5
    .param p1, "callAppName"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/bluetooth/OplusBluetoothMonitorCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/bluetooth/OplusBluetoothMonitorCallback;",
            ")Z"
        }
    .end annotation

    .line 863
    .local p2, "monitorEvents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "enter closeBtAbnomalMonitor"

    invoke-direct {p0, v0}, Landroid/bluetooth/BluetoothAdapterExtImpl;->debugLog(Ljava/lang/String;)V

    .line 864
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "BluetoothAdapterExtImpl"

    if-nez v0, :cond_0

    .line 865
    const-string v0, "params flags is null"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    const/4 v0, 0x0

    return v0

    .line 868
    :cond_0
    const/4 v0, 0x0

    .line 870
    .local v0, "result":Z
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 871
    const/4 v2, 0x0

    .line 872
    .local v2, "btCallback":Landroid/bluetooth/BluetoothAdapterExtImpl$OplusBtMonitorCallbackWrapper;
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mBluetoothMonitorClients:Ljava/util/Map;

    invoke-interface {v3, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothAdapterExtImpl$OplusBtMonitorCallbackWrapper;

    move-object v2, v3

    .line 873
    if-nez v2, :cond_1

    .line 874
    const-string v3, "could not find callback wrapper"

    invoke-direct {p0, v3}, Landroid/bluetooth/BluetoothAdapterExtImpl;->debugLog(Ljava/lang/String;)V

    goto :goto_0

    .line 876
    :cond_1
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v3

    .line 877
    .local v3, "managerService":Landroid/bluetooth/IBluetoothManager;
    invoke-interface {v3}, Landroid/bluetooth/IBluetoothManager;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v4}, Landroid/os/IBinder;->getExtension()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/bluetooth/IOplusBluetoothManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IOplusBluetoothManager;

    move-result-object v4

    .line 878
    .local v4, "iOplusBluetoothManager":Landroid/bluetooth/IOplusBluetoothManager;
    if-eqz v4, :cond_2

    .line 879
    invoke-interface {v4, p1, p2, v2}, Landroid/bluetooth/IOplusBluetoothManager;->unregisterBtMonitStateCallback(Ljava/lang/String;Ljava/util/List;Landroid/bluetooth/IOplusBluetoothManagerCallback;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    .line 885
    .end local v2    # "btCallback":Landroid/bluetooth/BluetoothAdapterExtImpl$OplusBtMonitorCallbackWrapper;
    .end local v3    # "managerService":Landroid/bluetooth/IBluetoothManager;
    .end local v4    # "iOplusBluetoothManager":Landroid/bluetooth/IOplusBluetoothManager;
    :cond_2
    :goto_0
    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    .line 882
    :catch_0
    move-exception v2

    .line 883
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, ""

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 885
    nop

    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 886
    nop

    .line 887
    return v0

    .line 885
    :goto_2
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 886
    throw v1
.end method

.method public blacklist disableAutoConnectPolicy(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 345
    sget-object v0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mOplusBluetooth:Landroid/bluetooth/IOplusBluetooth;

    const-string v1, "BluetoothAdapterExtImpl"

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_3

    .line 350
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 351
    sget-object v0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mOplusBluetooth:Landroid/bluetooth/IOplusBluetooth;

    if-eqz v0, :cond_1

    .line 352
    invoke-interface {v0, p1}, Landroid/bluetooth/IOplusBluetooth;->disableAutoConnectPolicy(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    :cond_1
    nop

    :goto_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 358
    goto :goto_1

    .line 357
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 354
    :catch_0
    move-exception v0

    .line 355
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 357
    nop

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 359
    :goto_1
    return-void

    .line 357
    :goto_2
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 358
    throw v0

    .line 346
    :cond_2
    :goto_3
    const-string v0, "disableAutoConnectPolicy null!"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    return-void
.end method

.method public blacklist enableAutoConnectPolicy(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 324
    sget-object v0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mOplusBluetooth:Landroid/bluetooth/IOplusBluetooth;

    const-string v1, "BluetoothAdapterExtImpl"

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_3

    .line 329
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 330
    sget-object v0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mOplusBluetooth:Landroid/bluetooth/IOplusBluetooth;

    if-eqz v0, :cond_1

    .line 331
    invoke-interface {v0, p1}, Landroid/bluetooth/IOplusBluetooth;->enableAutoConnectPolicy(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    :cond_1
    nop

    :goto_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 337
    goto :goto_1

    .line 336
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 333
    :catch_0
    move-exception v0

    .line 334
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 336
    nop

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 338
    :goto_1
    return-void

    .line 336
    :goto_2
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 337
    throw v0

    .line 325
    :cond_2
    :goto_3
    const-string v0, "enableAutoConnectPolicy\uff1amOplusBluetooth null!"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    return-void
.end method

.method public blacklist getBluetoothConnectedAppPID()[I
    .locals 5

    .line 301
    const/4 v0, 0x0

    .line 302
    .local v0, "result":[I
    sget-object v1, Landroid/bluetooth/BluetoothAdapterExtImpl;->mOplusBluetooth:Landroid/bluetooth/IOplusBluetooth;

    const-string v2, "BluetoothAdapterExtImpl"

    if-nez v1, :cond_0

    .line 303
    const-string v1, "getBluetoothConnectedAppPID\uff1amOplusBluetooth null!"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    const/4 v1, 0x0

    return-object v1

    .line 307
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 308
    sget-object v1, Landroid/bluetooth/BluetoothAdapterExtImpl;->mOplusBluetooth:Landroid/bluetooth/IOplusBluetooth;

    if-eqz v1, :cond_1

    .line 309
    invoke-interface {v1}, Landroid/bluetooth/IOplusBluetooth;->getBluetoothConnectedAppPID()[I

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 314
    :cond_1
    nop

    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 315
    goto :goto_1

    .line 314
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 311
    :catch_0
    move-exception v1

    .line 312
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 314
    nop

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 316
    :goto_1
    return-object v0

    .line 314
    :goto_2
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 315
    throw v1
.end method

.method public blacklist getBluetoothConnectionCount()I
    .locals 5

    .line 278
    const/4 v0, 0x0

    .line 279
    .local v0, "result":I
    sget-object v1, Landroid/bluetooth/BluetoothAdapterExtImpl;->mOplusBluetooth:Landroid/bluetooth/IOplusBluetooth;

    const-string v2, "BluetoothAdapterExtImpl"

    if-nez v1, :cond_0

    .line 280
    const-string v1, "getBluetoothConnectionCount\uff1amOplusBluetooth null!"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const/4 v1, 0x0

    return v1

    .line 284
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 285
    sget-object v1, Landroid/bluetooth/BluetoothAdapterExtImpl;->mOplusBluetooth:Landroid/bluetooth/IOplusBluetooth;

    if-eqz v1, :cond_1

    .line 286
    invoke-interface {v1}, Landroid/bluetooth/IOplusBluetooth;->getBluetoothConnectionCount()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    .line 291
    :cond_1
    nop

    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 292
    goto :goto_1

    .line 291
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 288
    :catch_0
    move-exception v1

    .line 289
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 291
    nop

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 293
    :goto_1
    return v0

    .line 291
    :goto_2
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 292
    throw v1
.end method

.method public blacklist getBluetoothMonitorReport(IZ)Ljava/util/Map;
    .locals 5
    .param p1, "monitorId"    # I
    .param p2, "reset"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 482
    sget-object v0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mOplusBluetooth:Landroid/bluetooth/IOplusBluetooth;

    const/4 v1, 0x0

    const-string v2, "BluetoothAdapterExtImpl"

    if-nez v0, :cond_0

    .line 483
    const-string v0, "oplusBluetoothAdapter getBluetoothMonitorReport null!"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    return-object v1

    .line 488
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 489
    sget-object v0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mOplusBluetooth:Landroid/bluetooth/IOplusBluetooth;

    if-eqz v0, :cond_1

    .line 490
    invoke-interface {v0, p1, p2}, Landroid/bluetooth/IOplusBluetooth;->getBluetoothMonitorReport(IZ)Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 495
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 490
    return-object v0

    .line 495
    :cond_1
    nop

    :goto_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 496
    goto :goto_1

    .line 495
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 492
    :catch_0
    move-exception v0

    .line 493
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 495
    nop

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 497
    :goto_1
    return-object v1

    .line 495
    :goto_2
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 496
    throw v0
.end method

.method public blacklist getBluetoothRecordConnectedType()I
    .locals 5

    .line 664
    sget-object v0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mOplusBluetooth:Landroid/bluetooth/IOplusBluetooth;

    const/4 v1, 0x0

    const-string v2, "BluetoothAdapterExtImpl"

    if-nez v0, :cond_0

    .line 665
    const-string v0, "isBluetoothRecordConnected register null!"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    return v1

    .line 670
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 671
    sget-object v0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mOplusBluetooth:Landroid/bluetooth/IOplusBluetooth;

    if-eqz v0, :cond_1

    .line 672
    invoke-interface {v0}, Landroid/bluetooth/IOplusBluetooth;->getBluetoothRecordConnectedType()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 677
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 672
    return v0

    .line 677
    :cond_1
    nop

    :goto_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 678
    goto :goto_1

    .line 677
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 674
    :catch_0
    move-exception v0

    .line 675
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 677
    nop

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 679
    :goto_1
    return v1

    .line 677
    :goto_2
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 678
    throw v0
.end method

.method public blacklist getRandomAddress()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 779
    const/4 v0, 0x0

    .line 780
    .local v0, "address":Ljava/lang/String;
    sget-object v1, Landroid/bluetooth/BluetoothAdapterExtImpl;->mOplusBluetooth:Landroid/bluetooth/IOplusBluetooth;

    const-string v2, "BluetoothAdapterExtImpl"

    if-nez v1, :cond_0

    .line 781
    const-string v1, "getRandomAddress register null!"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    const/4 v1, 0x0

    return-object v1

    .line 786
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 787
    sget-object v1, Landroid/bluetooth/BluetoothAdapterExtImpl;->mOplusBluetooth:Landroid/bluetooth/IOplusBluetooth;

    if-eqz v1, :cond_1

    .line 788
    invoke-interface {v1}, Landroid/bluetooth/IOplusBluetooth;->getRandomAddress()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 793
    :cond_1
    nop

    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 794
    goto :goto_1

    .line 793
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 790
    :catch_0
    move-exception v1

    .line 791
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 793
    nop

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 795
    :goto_1
    return-object v0

    .line 793
    :goto_2
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 794
    throw v1
.end method

.method public blacklist isBluetoothRecordConnected()Z
    .locals 5

    .line 687
    const/4 v0, 0x0

    .line 688
    .local v0, "result":Z
    sget-object v1, Landroid/bluetooth/BluetoothAdapterExtImpl;->mOplusBluetooth:Landroid/bluetooth/IOplusBluetooth;

    const-string v2, "BluetoothAdapterExtImpl"

    if-nez v1, :cond_0

    .line 689
    const-string v1, "isBluetoothRecordConnected register null!"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    const/4 v1, 0x0

    return v1

    .line 694
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 695
    sget-object v1, Landroid/bluetooth/BluetoothAdapterExtImpl;->mOplusBluetooth:Landroid/bluetooth/IOplusBluetooth;

    if-eqz v1, :cond_1

    .line 696
    invoke-interface {v1}, Landroid/bluetooth/IOplusBluetooth;->isBluetoothRecordConnected()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    .line 701
    :cond_1
    nop

    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 702
    goto :goto_1

    .line 701
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 698
    :catch_0
    move-exception v1

    .line 699
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 701
    nop

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 703
    :goto_1
    return v0

    .line 701
    :goto_2
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 702
    throw v1
.end method

.method public blacklist isBluetoothScoAvailableOffCall()Z
    .locals 5

    .line 255
    const/4 v0, 0x1

    .line 256
    .local v0, "result":Z
    sget-object v1, Landroid/bluetooth/BluetoothAdapterExtImpl;->mOplusBluetooth:Landroid/bluetooth/IOplusBluetooth;

    const-string v2, "BluetoothAdapterExtImpl"

    if-nez v1, :cond_0

    .line 257
    const-string v1, "isBluetoothScoAvailableOffCall\uff1amOplusBluetooth null!"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const/4 v1, 0x1

    return v1

    .line 261
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 262
    sget-object v1, Landroid/bluetooth/BluetoothAdapterExtImpl;->mOplusBluetooth:Landroid/bluetooth/IOplusBluetooth;

    if-eqz v1, :cond_1

    .line 263
    invoke-interface {v1}, Landroid/bluetooth/IOplusBluetooth;->isBluetoothScoAvailableOffCall()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    .line 268
    :cond_1
    nop

    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 269
    goto :goto_1

    .line 268
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 265
    :catch_0
    move-exception v1

    .line 266
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 268
    nop

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 270
    :goto_1
    return v0

    .line 268
    :goto_2
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 269
    throw v1
.end method

.method public blacklist isCarkit(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 411
    sget-object v0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mOplusBluetooth:Landroid/bluetooth/IOplusBluetooth;

    const-string v1, "BluetoothAdapterExtImpl"

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_3

    .line 416
    :cond_0
    const/4 v0, 0x0

    .line 418
    .local v0, "result":Z
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 419
    sget-object v2, Landroid/bluetooth/BluetoothAdapterExtImpl;->mOplusBluetooth:Landroid/bluetooth/IOplusBluetooth;

    if-eqz v2, :cond_1

    .line 420
    invoke-interface {v2, p1}, Landroid/bluetooth/IOplusBluetooth;->isCarkit(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    .line 425
    :cond_1
    nop

    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 426
    goto :goto_1

    .line 425
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 422
    :catch_0
    move-exception v2

    .line 423
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 425
    nop

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 427
    :goto_1
    return v0

    .line 425
    :goto_2
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 426
    throw v1

    .line 412
    .end local v0    # "result":Z
    :cond_2
    :goto_3
    const-string v0, "oplusBluetoothAdapter isCarkit null!"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist openBtAbnomalMonitor(Ljava/lang/String;Ljava/util/List;Landroid/bluetooth/OplusBluetoothMonitorCallback;)Z
    .locals 6
    .param p1, "callAppName"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/bluetooth/OplusBluetoothMonitorCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/bluetooth/OplusBluetoothMonitorCallback;",
            ")Z"
        }
    .end annotation

    .line 827
    .local p2, "monitorEvents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "BluetoothAdapterExtImpl"

    if-nez v0, :cond_0

    .line 828
    const-string v0, "params flags is null"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    const/4 v0, 0x0

    return v0

    .line 831
    :cond_0
    const/4 v0, 0x0

    .line 833
    .local v0, "result":Z
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 834
    const/4 v2, 0x0

    .line 835
    .local v2, "btCallback":Landroid/bluetooth/BluetoothAdapterExtImpl$OplusBtMonitorCallbackWrapper;
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mBluetoothMonitorClients:Ljava/util/Map;

    invoke-interface {v3, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 836
    const-string v3, "callback has been registered"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 838
    :cond_1
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v3

    .line 839
    .local v3, "managerService":Landroid/bluetooth/IBluetoothManager;
    invoke-interface {v3}, Landroid/bluetooth/IBluetoothManager;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v4}, Landroid/os/IBinder;->getExtension()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/bluetooth/IOplusBluetoothManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IOplusBluetoothManager;

    move-result-object v4

    .line 840
    .local v4, "iOplusBluetoothManager":Landroid/bluetooth/IOplusBluetoothManager;
    if-eqz v4, :cond_2

    .line 841
    new-instance v5, Landroid/bluetooth/BluetoothAdapterExtImpl$OplusBtMonitorCallbackWrapper;

    invoke-direct {v5, p0, p3}, Landroid/bluetooth/BluetoothAdapterExtImpl$OplusBtMonitorCallbackWrapper;-><init>(Landroid/bluetooth/BluetoothAdapterExtImpl;Landroid/bluetooth/OplusBluetoothMonitorCallback;)V

    move-object v2, v5

    .line 842
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapterExtImpl$OplusBtMonitorCallbackWrapper;->startRegistration()V

    .line 843
    invoke-interface {v4, p1, p2, v2}, Landroid/bluetooth/IOplusBluetoothManager;->registerBtMonitStateCallback(Ljava/lang/String;Ljava/util/List;Landroid/bluetooth/IOplusBluetoothManagerCallback;)Z

    move-result v1

    move v0, v1

    goto :goto_0

    .line 845
    :cond_2
    const-string v5, "iOplusBluetoothManager null"

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 851
    .end local v2    # "btCallback":Landroid/bluetooth/BluetoothAdapterExtImpl$OplusBtMonitorCallbackWrapper;
    .end local v3    # "managerService":Landroid/bluetooth/IBluetoothManager;
    .end local v4    # "iOplusBluetoothManager":Landroid/bluetooth/IOplusBluetoothManager;
    :goto_0
    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    .line 848
    :catch_0
    move-exception v2

    .line 849
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, ""

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 851
    nop

    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 852
    nop

    .line 853
    return v0

    .line 851
    :goto_2
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 852
    throw v1
.end method

.method public blacklist oplusEnableVerboseLogging(Z)V
    .locals 4
    .param p1, "verbose"    # Z

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "oplusEnableVerboseLogging v: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothAdapterExtImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    sget-object v0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mOplusBluetooth:Landroid/bluetooth/IOplusBluetooth;

    if-nez v0, :cond_0

    .line 391
    const-string v0, "cannot set verbose because oplusbluetooth is null!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    return-void

    .line 395
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 396
    sget-object v0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mOplusBluetooth:Landroid/bluetooth/IOplusBluetooth;

    if-eqz v0, :cond_1

    .line 397
    invoke-interface {v0, p1}, Landroid/bluetooth/IOplusBluetooth;->oplusEnableVerboseLogging(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 402
    :cond_1
    nop

    :goto_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 403
    goto :goto_1

    .line 402
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 399
    :catch_0
    move-exception v0

    .line 400
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 402
    nop

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 404
    :goto_1
    return-void

    .line 402
    :goto_2
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 403
    throw v0
.end method

.method public blacklist oplusRegisterServiceLifecycleCallback(Landroid/bluetooth/BluetoothAdapterExtImpl$OplusServiceLifecycleCallback;)Z
    .locals 2
    .param p1, "callback"    # Landroid/bluetooth/BluetoothAdapterExtImpl$OplusServiceLifecycleCallback;

    .line 191
    if-nez p1, :cond_0

    .line 192
    const/4 v0, 0x0

    return v0

    .line 194
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mServiceLifecycleCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 195
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mServiceLifecycleCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    monitor-exit v0

    .line 197
    const/4 v0, 0x1

    return v0

    .line 196
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist oplusSetBTCTddMode(I)Z
    .locals 5
    .param p1, "tddMode"    # I

    .line 897
    sget-object v0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mOplusBluetooth:Landroid/bluetooth/IOplusBluetooth;

    const-string v1, "BluetoothAdapterExtImpl"

    if-nez v0, :cond_0

    .line 898
    const-string v0, "oplusSetBTCTddMode register null!"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    const/4 v0, 0x0

    return v0

    .line 902
    :cond_0
    const/4 v0, 0x0

    .line 904
    .local v0, "result":Z
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 905
    sget-object v2, Landroid/bluetooth/BluetoothAdapterExtImpl;->mOplusBluetooth:Landroid/bluetooth/IOplusBluetooth;

    if-eqz v2, :cond_1

    .line 906
    invoke-interface {v2, p1}, Landroid/bluetooth/IOplusBluetooth;->oplusSetBTCTddMode(I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    .line 911
    :cond_1
    nop

    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 912
    goto :goto_1

    .line 911
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 908
    :catch_0
    move-exception v2

    .line 909
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 911
    nop

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 914
    :goto_1
    return v0

    .line 911
    :goto_2
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 912
    throw v1
.end method

.method public blacklist oplusUnregisterServiceLifecycleCallback(Landroid/bluetooth/BluetoothAdapterExtImpl$OplusServiceLifecycleCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/bluetooth/BluetoothAdapterExtImpl$OplusServiceLifecycleCallback;

    .line 206
    if-nez p1, :cond_0

    .line 207
    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mServiceLifecycleCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 210
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mServiceLifecycleCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 211
    monitor-exit v0

    .line 212
    return-void

    .line 211
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist registerBluetoothCallback(Landroid/bluetooth/IOplusBluetoothCallback;)Z
    .locals 4
    .param p1, "iCallback"    # Landroid/bluetooth/IOplusBluetoothCallback;

    .line 508
    sget-object v0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mOplusBluetooth:Landroid/bluetooth/IOplusBluetooth;

    const-string v1, "BluetoothAdapterExtImpl"

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_3

    .line 514
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 515
    sget-object v0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mOplusBluetooth:Landroid/bluetooth/IOplusBluetooth;

    if-eqz v0, :cond_1

    .line 516
    const-string v0, "registerBluetoothCallback"

    invoke-direct {p0, v0}, Landroid/bluetooth/BluetoothAdapterExtImpl;->debugLog(Ljava/lang/String;)V

    .line 517
    sget-object v0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mOplusBluetooth:Landroid/bluetooth/IOplusBluetooth;

    invoke-interface {v0, p1}, Landroid/bluetooth/IOplusBluetooth;->registerBluetoothCallback(Landroid/bluetooth/IOplusBluetoothCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 522
    :cond_1
    nop

    :goto_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 523
    goto :goto_1

    .line 522
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 519
    :catch_0
    move-exception v0

    .line 520
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 522
    nop

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 524
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 522
    :goto_2
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 523
    throw v0

    .line 509
    :cond_2
    :goto_3
    const-string v0, "registerBluetoothCallback register null!"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist registerBluetoothRssiDetectCallback(Landroid/bluetooth/OplusBluetoothRssiDetectCallback;)Z
    .locals 8
    .param p1, "callback"    # Landroid/bluetooth/OplusBluetoothRssiDetectCallback;

    .line 561
    const/4 v0, 0x0

    const-string v1, "BluetoothAdapterExtImpl"

    if-nez p1, :cond_0

    .line 562
    const-string v2, "callback null!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    return v0

    .line 565
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    .line 566
    .local v2, "packageName":Ljava/lang/String;
    new-instance v3, Landroid/bluetooth/BluetoothAdapterExtImpl$BleRssiDetectCallback;

    invoke-direct {v3, p0, p1}, Landroid/bluetooth/BluetoothAdapterExtImpl$BleRssiDetectCallback;-><init>(Landroid/bluetooth/BluetoothAdapterExtImpl;Landroid/bluetooth/OplusBluetoothRssiDetectCallback;)V

    .line 567
    .local v3, "bleRssiDetectCallback":Landroid/bluetooth/BluetoothAdapterExtImpl$BleRssiDetectCallback;
    iget-object v4, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v4

    .line 568
    .local v4, "managerService":Landroid/bluetooth/IBluetoothManager;
    const/4 v5, 0x0

    .line 570
    .local v5, "result":Z
    :try_start_0
    invoke-interface {v4}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    move-result-object v6

    .line 571
    .local v6, "iGatt":Landroid/bluetooth/IBluetoothGatt;
    if-nez v6, :cond_1

    .line 572
    const-string v7, "iGatt null!"

    invoke-static {v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    return v0

    .line 575
    :cond_1
    const-string v0, "registerBluetoothRssiDetectCallback"

    invoke-direct {p0, v0}, Landroid/bluetooth/BluetoothAdapterExtImpl;->debugLog(Ljava/lang/String;)V

    .line 576
    invoke-static {v6, v3, v2}, Landroid/bluetooth/OplusBluetoothGatt;->registerBluetoothRssiDetectCallback(Landroid/bluetooth/IBluetoothGatt;Landroid/bluetooth/BluetoothAdapterExtImpl$BleRssiDetectCallback;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 577
    const/4 v5, 0x1

    .line 580
    .end local v6    # "iGatt":Landroid/bluetooth/IBluetoothGatt;
    goto :goto_0

    .line 578
    :catch_0
    move-exception v0

    .line 579
    .local v0, "e":Landroid/os/RemoteException;
    const-string v6, ""

    invoke-static {v1, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 581
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return v5
.end method

.method public blacklist rejectScoState(ZZZZZZLjava/lang/String;Z)V
    .locals 12
    .param p1, "scostate"    # Z
    .param p2, "isforeground"    # Z
    .param p3, "isSetMode"    # Z
    .param p4, "isRecordingActive"    # Z
    .param p5, "isPlaybackActive"    # Z
    .param p6, "isPackageInFocus"    # Z
    .param p7, "callingPackage"    # Ljava/lang/String;
    .param p8, "detectResult"    # Z

    .line 803
    move-object v1, p0

    sget-object v0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mOplusBluetooth:Landroid/bluetooth/IOplusBluetooth;

    const-string v2, "BluetoothAdapterExtImpl"

    if-nez v0, :cond_0

    .line 804
    const-string v0, "rejectScoState register null!"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    return-void

    .line 809
    :cond_0
    :try_start_0
    iget-object v0, v1, Landroid/bluetooth/BluetoothAdapterExtImpl;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 810
    sget-object v3, Landroid/bluetooth/BluetoothAdapterExtImpl;->mOplusBluetooth:Landroid/bluetooth/IOplusBluetooth;

    if-eqz v3, :cond_1

    .line 811
    move v4, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p8

    invoke-interface/range {v3 .. v11}, Landroid/bluetooth/IOplusBluetooth;->rejectScoState(ZZZZZZLjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 816
    :cond_1
    nop

    :goto_0
    iget-object v0, v1, Landroid/bluetooth/BluetoothAdapterExtImpl;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 817
    goto :goto_1

    .line 816
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 813
    :catch_0
    move-exception v0

    .line 814
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 816
    nop

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 818
    :goto_1
    return-void

    .line 816
    :goto_2
    iget-object v2, v1, Landroid/bluetooth/BluetoothAdapterExtImpl;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 817
    throw v0
.end method

.method public blacklist removeCarkit(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 456
    sget-object v0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mOplusBluetooth:Landroid/bluetooth/IOplusBluetooth;

    const-string v1, "BluetoothAdapterExtImpl"

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_3

    .line 461
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 462
    sget-object v0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mOplusBluetooth:Landroid/bluetooth/IOplusBluetooth;

    if-eqz v0, :cond_1

    .line 463
    invoke-interface {v0, p1}, Landroid/bluetooth/IOplusBluetooth;->removeCarkit(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 468
    :cond_1
    nop

    :goto_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 469
    goto :goto_1

    .line 468
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 465
    :catch_0
    move-exception v0

    .line 466
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 468
    nop

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 470
    :goto_1
    return-void

    .line 468
    :goto_2
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 469
    throw v0

    .line 457
    :cond_2
    :goto_3
    const-string v0, "oplusBluetoothAdapter removeCarkit null!"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    return-void
.end method

.method public blacklist setBLBlackOrWhiteList(Ljava/util/List;IZ)V
    .locals 4
    .param p2, "btCustomizeMode"    # I
    .param p3, "enable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IZ)V"
        }
    .end annotation

    .line 233
    .local p1, "addressList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mOplusBluetooth:Landroid/bluetooth/IOplusBluetooth;

    const-string v1, "BluetoothAdapterExtImpl"

    if-nez v0, :cond_0

    .line 234
    const-string v0, "setBLBlackOrWhiteList\uff1amOplusBluetooth null!"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    return-void

    .line 238
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 239
    sget-object v0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mOplusBluetooth:Landroid/bluetooth/IOplusBluetooth;

    if-eqz v0, :cond_1

    .line 240
    invoke-interface {v0, p1, p2, p3}, Landroid/bluetooth/IOplusBluetooth;->setBLBlackOrWhiteList(Ljava/util/List;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    :cond_1
    nop

    :goto_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 246
    goto :goto_1

    .line 245
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 245
    nop

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 247
    :goto_1
    return-void

    .line 245
    :goto_2
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 246
    throw v0
.end method

.method public blacklist setMode(IILjava/lang/String;)V
    .locals 4
    .param p1, "mode"    # I
    .param p2, "callingPid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 642
    sget-object v0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mOplusBluetooth:Landroid/bluetooth/IOplusBluetooth;

    const-string v1, "BluetoothAdapterExtImpl"

    if-nez v0, :cond_0

    .line 643
    const-string v0, "oplusSetMode register null!"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    return-void

    .line 648
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 649
    sget-object v0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mOplusBluetooth:Landroid/bluetooth/IOplusBluetooth;

    if-eqz v0, :cond_1

    .line 650
    invoke-interface {v0, p1, p2, p3}, Landroid/bluetooth/IOplusBluetooth;->setMode(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 655
    :cond_1
    nop

    :goto_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 656
    goto :goto_1

    .line 655
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 652
    :catch_0
    move-exception v0

    .line 653
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 655
    nop

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 657
    :goto_1
    return-void

    .line 655
    :goto_2
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 656
    throw v0
.end method

.method public blacklist setSpeakerphoneOn(ZILjava/lang/String;)V
    .locals 4
    .param p1, "on"    # Z
    .param p2, "callingPid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 711
    sget-object v0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mOplusBluetooth:Landroid/bluetooth/IOplusBluetooth;

    const-string v1, "BluetoothAdapterExtImpl"

    if-nez v0, :cond_0

    .line 712
    const-string v0, "setSpeakerphoneOn register null!"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    return-void

    .line 717
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 718
    sget-object v0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mOplusBluetooth:Landroid/bluetooth/IOplusBluetooth;

    if-eqz v0, :cond_1

    .line 719
    invoke-interface {v0, p1, p2, p3}, Landroid/bluetooth/IOplusBluetooth;->setSpeakerphoneOn(ZILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 724
    :cond_1
    nop

    :goto_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 725
    goto :goto_1

    .line 724
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 721
    :catch_0
    move-exception v0

    .line 722
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 724
    nop

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 726
    :goto_1
    return-void

    .line 724
    :goto_2
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 725
    throw v0
.end method

.method public blacklist startBluetoothSco(ILjava/lang/String;)V
    .locals 4
    .param p1, "callingPid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 734
    sget-object v0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mOplusBluetooth:Landroid/bluetooth/IOplusBluetooth;

    const-string v1, "BluetoothAdapterExtImpl"

    if-nez v0, :cond_0

    .line 735
    const-string v0, "startBluetoothSco register null!"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    return-void

    .line 740
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 741
    sget-object v0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mOplusBluetooth:Landroid/bluetooth/IOplusBluetooth;

    if-eqz v0, :cond_1

    .line 742
    invoke-interface {v0, p1, p2}, Landroid/bluetooth/IOplusBluetooth;->startBluetoothSco(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 747
    :cond_1
    nop

    :goto_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 748
    goto :goto_1

    .line 747
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 744
    :catch_0
    move-exception v0

    .line 745
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 747
    nop

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 749
    :goto_1
    return-void

    .line 747
    :goto_2
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 748
    throw v0
.end method

.method public blacklist stopBluetoothSco(ILjava/lang/String;)V
    .locals 4
    .param p1, "callingPid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 757
    sget-object v0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mOplusBluetooth:Landroid/bluetooth/IOplusBluetooth;

    const-string v1, "BluetoothAdapterExtImpl"

    if-nez v0, :cond_0

    .line 758
    const-string v0, "stopBluetoothSco register null!"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    return-void

    .line 763
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 764
    sget-object v0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mOplusBluetooth:Landroid/bluetooth/IOplusBluetooth;

    if-eqz v0, :cond_1

    .line 765
    invoke-interface {v0, p1, p2}, Landroid/bluetooth/IOplusBluetooth;->stopBluetoothSco(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 770
    :cond_1
    nop

    :goto_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 771
    goto :goto_1

    .line 770
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 767
    :catch_0
    move-exception v0

    .line 768
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 770
    nop

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 772
    :goto_1
    return-void

    .line 770
    :goto_2
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 771
    throw v0
.end method

.method public blacklist triggerFirmwareCrash()V
    .locals 4

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "triggerFirmwareCrash() call by:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothAdapterExtImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    sget-object v0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mOplusBluetooth:Landroid/bluetooth/IOplusBluetooth;

    if-nez v0, :cond_0

    .line 368
    const-string v0, "triggerFirmwareCrash\uff1amOplusBluetooth null!"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    return-void

    .line 372
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 373
    sget-object v0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mOplusBluetooth:Landroid/bluetooth/IOplusBluetooth;

    if-eqz v0, :cond_1

    .line 374
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/bluetooth/IOplusBluetooth;->triggerFirmwareCrash(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 379
    :cond_1
    nop

    :goto_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 380
    goto :goto_1

    .line 379
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 376
    :catch_0
    move-exception v0

    .line 377
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 379
    nop

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 381
    :goto_1
    return-void

    .line 379
    :goto_2
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 380
    throw v0
.end method

.method public blacklist unRegisterBluetoothCallback(Landroid/bluetooth/IOplusBluetoothCallback;)Z
    .locals 5
    .param p1, "iCallback"    # Landroid/bluetooth/IOplusBluetoothCallback;

    .line 535
    sget-object v0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mOplusBluetooth:Landroid/bluetooth/IOplusBluetooth;

    const-string v1, "BluetoothAdapterExtImpl"

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_3

    .line 539
    :cond_0
    const/4 v0, 0x0

    .line 541
    .local v0, "result":Z
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 542
    sget-object v2, Landroid/bluetooth/BluetoothAdapterExtImpl;->mOplusBluetooth:Landroid/bluetooth/IOplusBluetooth;

    if-eqz v2, :cond_1

    .line 543
    invoke-interface {v2, p1}, Landroid/bluetooth/IOplusBluetooth;->unRegisterBluetoothCallback(Landroid/bluetooth/IOplusBluetoothCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 544
    const/4 v0, 0x1

    .line 549
    :cond_1
    nop

    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 550
    goto :goto_1

    .line 549
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 546
    :catch_0
    move-exception v2

    .line 547
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 549
    nop

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 551
    :goto_1
    return v0

    .line 549
    :goto_2
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 550
    throw v1

    .line 536
    .end local v0    # "result":Z
    :cond_2
    :goto_3
    const-string v0, "unRegisterBluetoothCallback register null!"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist unregisterBluetoothRssiDetectCallback(Landroid/bluetooth/OplusBluetoothRssiDetectCallback;)Z
    .locals 7
    .param p1, "callback"    # Landroid/bluetooth/OplusBluetoothRssiDetectCallback;

    .line 592
    const/4 v0, 0x0

    const-string v1, "BluetoothAdapterExtImpl"

    if-nez p1, :cond_0

    .line 593
    const-string v2, "callback null!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    return v0

    .line 596
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    .line 597
    .local v2, "packageName":Ljava/lang/String;
    new-instance v3, Landroid/bluetooth/BluetoothAdapterExtImpl$BleRssiDetectCallback;

    invoke-direct {v3, p0, p1}, Landroid/bluetooth/BluetoothAdapterExtImpl$BleRssiDetectCallback;-><init>(Landroid/bluetooth/BluetoothAdapterExtImpl;Landroid/bluetooth/OplusBluetoothRssiDetectCallback;)V

    .line 598
    .local v3, "bleRssiDetectCallback":Landroid/bluetooth/BluetoothAdapterExtImpl$BleRssiDetectCallback;
    iget-object v4, p0, Landroid/bluetooth/BluetoothAdapterExtImpl;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v4

    .line 600
    .local v4, "managerService":Landroid/bluetooth/IBluetoothManager;
    :try_start_0
    invoke-interface {v4}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    move-result-object v5

    .line 601
    .local v5, "iGatt":Landroid/bluetooth/IBluetoothGatt;
    if-nez v5, :cond_1

    .line 602
    const-string v6, "iGatt null!"

    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    return v0

    .line 605
    :cond_1
    invoke-static {v5, v3, v2}, Landroid/bluetooth/OplusBluetoothGatt;->unregisterBluetoothRssiDetectCallback(Landroid/bluetooth/IBluetoothGatt;Landroid/bluetooth/BluetoothAdapterExtImpl$BleRssiDetectCallback;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 606
    .end local v5    # "iGatt":Landroid/bluetooth/IBluetoothGatt;
    :catch_0
    move-exception v5

    .line 607
    .local v5, "e":Landroid/os/RemoteException;
    const-string v6, ""

    invoke-static {v1, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 609
    .end local v5    # "e":Landroid/os/RemoteException;
    return v0
.end method
