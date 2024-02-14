.class Landroid/bluetooth/BluetoothAdapterExtImpl$1;
.super Landroid/bluetooth/IBluetoothManagerCallback$Stub;
.source "BluetoothAdapterExtImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothAdapterExtImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/bluetooth/BluetoothAdapterExtImpl;


# direct methods
.method constructor blacklist <init>(Landroid/bluetooth/BluetoothAdapterExtImpl;)V
    .locals 0
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothAdapterExtImpl;

    .line 126
    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapterExtImpl$1;->this$0:Landroid/bluetooth/BluetoothAdapterExtImpl;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothManagerCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onBluetoothServiceDown()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 155
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapterExtImpl$1;->this$0:Landroid/bluetooth/BluetoothAdapterExtImpl;

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapterExtImpl;->-$$Nest$fgetmServiceLifecycleCallbacks(Landroid/bluetooth/BluetoothAdapterExtImpl;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 156
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapterExtImpl$1;->this$0:Landroid/bluetooth/BluetoothAdapterExtImpl;

    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapterExtImpl;->-$$Nest$fgetmServiceLifecycleCallbacks(Landroid/bluetooth/BluetoothAdapterExtImpl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothAdapterExtImpl$OplusServiceLifecycleCallback;

    .line 157
    .local v2, "cb":Landroid/bluetooth/BluetoothAdapterExtImpl$OplusServiceLifecycleCallback;
    if-eqz v2, :cond_0

    .line 158
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapterExtImpl$OplusServiceLifecycleCallback;->onBluetoothServiceDown()V

    .line 160
    .end local v2    # "cb":Landroid/bluetooth/BluetoothAdapterExtImpl$OplusServiceLifecycleCallback;
    :cond_0
    goto :goto_0

    .line 161
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 164
    :try_start_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapterExtImpl$1;->this$0:Landroid/bluetooth/BluetoothAdapterExtImpl;

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapterExtImpl;->-$$Nest$fgetmServiceLock(Landroid/bluetooth/BluetoothAdapterExtImpl;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 165
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapterExtImpl;->-$$Nest$sfputmOplusBluetooth(Landroid/bluetooth/IOplusBluetooth;)V

    .line 166
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapterExtImpl$1;->this$0:Landroid/bluetooth/BluetoothAdapterExtImpl;

    invoke-static {v1, v0}, Landroid/bluetooth/BluetoothAdapterExtImpl;->-$$Nest$fputmService(Landroid/bluetooth/BluetoothAdapterExtImpl;Landroid/bluetooth/IBluetooth;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapterExtImpl$1;->this$0:Landroid/bluetooth/BluetoothAdapterExtImpl;

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapterExtImpl;->-$$Nest$fgetmServiceLock(Landroid/bluetooth/BluetoothAdapterExtImpl;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 169
    nop

    .line 170
    return-void

    .line 168
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapterExtImpl$1;->this$0:Landroid/bluetooth/BluetoothAdapterExtImpl;

    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapterExtImpl;->-$$Nest$fgetmServiceLock(Landroid/bluetooth/BluetoothAdapterExtImpl;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 169
    throw v0

    .line 161
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public blacklist onBluetoothServiceUp(Landroid/bluetooth/IBluetooth;)V
    .locals 4
    .param p1, "bluetoothService"    # Landroid/bluetooth/IBluetooth;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 130
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapterExtImpl$1;->this$0:Landroid/bluetooth/BluetoothAdapterExtImpl;

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapterExtImpl;->-$$Nest$fgetmServiceLock(Landroid/bluetooth/BluetoothAdapterExtImpl;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 131
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapterExtImpl$1;->this$0:Landroid/bluetooth/BluetoothAdapterExtImpl;

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapterExtImpl;->-$$Nest$fgetmService(Landroid/bluetooth/BluetoothAdapterExtImpl;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    if-nez v0, :cond_0

    .line 132
    const-string v0, "BluetoothAdapterExtImpl"

    const-string v1, "mService is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapterExtImpl$1;->this$0:Landroid/bluetooth/BluetoothAdapterExtImpl;

    invoke-static {v0, p1}, Landroid/bluetooth/BluetoothAdapterExtImpl;->-$$Nest$fputmService(Landroid/bluetooth/BluetoothAdapterExtImpl;Landroid/bluetooth/IBluetooth;)V

    .line 134
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapterExtImpl$1;->this$0:Landroid/bluetooth/BluetoothAdapterExtImpl;

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapterExtImpl;->-$$Nest$fgetmService(Landroid/bluetooth/BluetoothAdapterExtImpl;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->getExtension()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/IOplusBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IOplusBluetooth;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapterExtImpl;->-$$Nest$sfputmOplusBluetooth(Landroid/bluetooth/IOplusBluetooth;)V

    .line 136
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapterExtImpl;->-$$Nest$sfgetmOplusBluetooth()Landroid/bluetooth/IOplusBluetooth;

    move-result-object v0

    if-nez v0, :cond_1

    .line 137
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapterExtImpl$1;->this$0:Landroid/bluetooth/BluetoothAdapterExtImpl;

    const-string v1, "onBluetoothServiceUp mOplusBluetooth null"

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothAdapterExtImpl;->-$$Nest$mdebugLog(Landroid/bluetooth/BluetoothAdapterExtImpl;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    :cond_1
    nop

    :goto_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapterExtImpl$1;->this$0:Landroid/bluetooth/BluetoothAdapterExtImpl;

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapterExtImpl;->-$$Nest$fgetmServiceLock(Landroid/bluetooth/BluetoothAdapterExtImpl;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 143
    goto :goto_1

    .line 142
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 139
    :catch_0
    move-exception v0

    .line 140
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

    .line 142
    nop

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 145
    :goto_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapterExtImpl$1;->this$0:Landroid/bluetooth/BluetoothAdapterExtImpl;

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapterExtImpl;->-$$Nest$fgetmServiceLifecycleCallbacks(Landroid/bluetooth/BluetoothAdapterExtImpl;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 146
    :try_start_2
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapterExtImpl$1;->this$0:Landroid/bluetooth/BluetoothAdapterExtImpl;

    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapterExtImpl;->-$$Nest$fgetmServiceLifecycleCallbacks(Landroid/bluetooth/BluetoothAdapterExtImpl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothAdapterExtImpl$OplusServiceLifecycleCallback;

    .line 147
    .local v2, "cb":Landroid/bluetooth/BluetoothAdapterExtImpl$OplusServiceLifecycleCallback;
    if-eqz v2, :cond_2

    .line 148
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapterExtImpl$OplusServiceLifecycleCallback;->onBluetoothServiceUp()V

    .line 150
    .end local v2    # "cb":Landroid/bluetooth/BluetoothAdapterExtImpl$OplusServiceLifecycleCallback;
    :cond_2
    goto :goto_2

    .line 151
    :cond_3
    monitor-exit v0

    .line 152
    return-void

    .line 151
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 142
    :goto_3
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapterExtImpl$1;->this$0:Landroid/bluetooth/BluetoothAdapterExtImpl;

    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapterExtImpl;->-$$Nest$fgetmServiceLock(Landroid/bluetooth/BluetoothAdapterExtImpl;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 143
    throw v0
.end method

.method public blacklist onBrEdrDown()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 173
    const-string v0, "BluetoothAdapterExtImpl"

    const-string v1, "onBrEdrDown: reached BLE ON state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    return-void
.end method
