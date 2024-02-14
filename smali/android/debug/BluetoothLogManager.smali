.class public Landroid/debug/BluetoothLogManager;
.super Landroid/debug/IDebugLogManager;
.source "BluetoothLogManager.java"


# static fields
.field private static final blacklist BT_LOG_ALWAYS_ON_PROP:Ljava/lang/String; = "persist.sys.btlog.alwayson"

.field private static final blacklist BT_LOG_PROP:Ljava/lang/String; = "persist.sys.btlog.enable"

.field private static final blacklist TAG:Ljava/lang/String;

.field private static volatile blacklist sInstance:Landroid/debug/BluetoothLogManager;


# instance fields
.field private blacklist mBluetoothAdapterExt:Landroid/bluetooth/BluetoothAdapterExtImpl;

.field private blacklist mContext:Landroid/content/Context;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/debug/BluetoothLogManager;->TAG_BASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Landroid/debug/BluetoothLogManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/debug/BluetoothLogManager;->TAG:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    sput-object v0, Landroid/debug/BluetoothLogManager;->sInstance:Landroid/debug/BluetoothLogManager;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 30
    invoke-direct {p0}, Landroid/debug/IDebugLogManager;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/debug/BluetoothLogManager;->mBluetoothAdapterExt:Landroid/bluetooth/BluetoothAdapterExtImpl;

    .line 31
    iput-object p1, p0, Landroid/debug/BluetoothLogManager;->mContext:Landroid/content/Context;

    .line 32
    invoke-static {}, Landroid/bluetooth/BluetoothAdapterExtImpl;->getInstance()Landroid/bluetooth/BluetoothAdapterExtImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/debug/BluetoothLogManager;->mBluetoothAdapterExt:Landroid/bluetooth/BluetoothAdapterExtImpl;

    .line 33
    return-void
.end method

.method public static blacklist getInstance(Landroid/content/Context;)Landroid/debug/BluetoothLogManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 36
    sget-object v0, Landroid/debug/BluetoothLogManager;->sInstance:Landroid/debug/BluetoothLogManager;

    if-nez v0, :cond_1

    .line 37
    const-class v0, Landroid/debug/BluetoothLogManager;

    monitor-enter v0

    .line 38
    :try_start_0
    sget-object v1, Landroid/debug/BluetoothLogManager;->sInstance:Landroid/debug/BluetoothLogManager;

    if-nez v1, :cond_0

    .line 39
    new-instance v1, Landroid/debug/BluetoothLogManager;

    invoke-direct {v1, p0}, Landroid/debug/BluetoothLogManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/debug/BluetoothLogManager;->sInstance:Landroid/debug/BluetoothLogManager;

    .line 41
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 43
    :cond_1
    :goto_0
    sget-object v0, Landroid/debug/BluetoothLogManager;->sInstance:Landroid/debug/BluetoothLogManager;

    return-object v0
.end method


# virtual methods
.method public blacklist setLogDump()V
    .locals 0

    .line 61
    return-void
.end method

.method public blacklist setLogOff()V
    .locals 2

    .line 54
    sget-object v0, Landroid/debug/BluetoothLogManager;->TAG:Ljava/lang/String;

    const-string v1, "setLogOff."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const-string v0, "persist.sys.btlog.enable"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v0, "persist.sys.btlog.alwayson"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Landroid/debug/BluetoothLogManager;->mBluetoothAdapterExt:Landroid/bluetooth/BluetoothAdapterExtImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapterExtImpl;->oplusEnableVerboseLogging(Z)V

    .line 58
    return-void
.end method

.method public blacklist setLogOn(JLjava/lang/String;)V
    .locals 3
    .param p1, "maxSize"    # J
    .param p3, "param"    # Ljava/lang/String;

    .line 47
    sget-object v0, Landroid/debug/BluetoothLogManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLogOn: maxSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", param = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const-string v0, "persist.sys.btlog.enable"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v0, "persist.sys.btlog.alwayson"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Landroid/debug/BluetoothLogManager;->mBluetoothAdapterExt:Landroid/bluetooth/BluetoothAdapterExtImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapterExtImpl;->oplusEnableVerboseLogging(Z)V

    .line 51
    return-void
.end method
