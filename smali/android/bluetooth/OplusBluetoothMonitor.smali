.class public final Landroid/bluetooth/OplusBluetoothMonitor;
.super Ljava/lang/Object;
.source "OplusBluetoothMonitor.java"


# static fields
.field public static final blacklist AVRCPCONTROL_MONIT_EVENT:Ljava/lang/String; = "avrcp_control"

.field public static final blacklist BLUETOOTH_MANAGER_SERVICE:Ljava/lang/String; = "bluetooth_manager"

.field public static final blacklist CODECSWITCH_MONIT_EVENT:Ljava/lang/String; = "codec_switch"

.field private static final blacklist DBG:Z

.field public static final blacklist MEDIAAUDIO_MONIT_EVENT:Ljava/lang/String; = "media_audio"

.field public static final blacklist OPPTRANS_MONIT_EVENT:Ljava/lang/String; = "opp_trans"

.field public static final blacklist PAIRCONN_MONIT_EVENT:Ljava/lang/String; = "pair_conn"

.field public static final blacklist PHONEAUDIO_MONIT_EVENT:Ljava/lang/String; = "phone_audio"

.field public static final blacklist SAUUPDATE_MONIT_EVENT:Ljava/lang/String; = "sau_update"

.field public static final blacklist SCAN_MONIT_EVENT:Ljava/lang/String; = "scan"

.field public static final blacklist SWITCH_MONIT_EVENT:Ljava/lang/String; = "swicth"

.field private static final blacklist TAG:Ljava/lang/String; = "OplusBluetoothMonitor"

.field public static final blacklist UNKNOWN_MONIT_EVENT:Ljava/lang/String; = "unknown_event"

.field private static blacklist sBluetoothMonitor:Landroid/bluetooth/OplusBluetoothMonitor;


# instance fields
.field private blacklist mContext:Landroid/content/Context;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 50
    const-string v0, "ro.build.release_type"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    const-string v0, "persist.sys.assert.panic"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    sput-boolean v1, Landroid/bluetooth/OplusBluetoothMonitor;->DBG:Z

    .line 52
    const/4 v0, 0x0

    sput-object v0, Landroid/bluetooth/OplusBluetoothMonitor;->sBluetoothMonitor:Landroid/bluetooth/OplusBluetoothMonitor;

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Landroid/bluetooth/OplusBluetoothMonitor;->mContext:Landroid/content/Context;

    .line 71
    return-void
.end method

.method public static declared-synchronized blacklist getDefaultBluetoothMonitor(Landroid/content/Context;)Landroid/bluetooth/OplusBluetoothMonitor;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Landroid/bluetooth/OplusBluetoothMonitor;

    monitor-enter v0

    .line 60
    :try_start_0
    sget-boolean v1, Landroid/bluetooth/OplusBluetoothMonitor;->DBG:Z

    if-eqz v1, :cond_0

    .line 61
    const-string v1, "OplusBluetoothMonitor"

    const-string v2, "enter getDefaultBluetoothMonitor()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_0
    sget-object v1, Landroid/bluetooth/OplusBluetoothMonitor;->sBluetoothMonitor:Landroid/bluetooth/OplusBluetoothMonitor;

    if-nez v1, :cond_1

    .line 64
    new-instance v1, Landroid/bluetooth/OplusBluetoothMonitor;

    invoke-direct {v1, p0}, Landroid/bluetooth/OplusBluetoothMonitor;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/bluetooth/OplusBluetoothMonitor;->sBluetoothMonitor:Landroid/bluetooth/OplusBluetoothMonitor;

    .line 66
    :cond_1
    sget-object v1, Landroid/bluetooth/OplusBluetoothMonitor;->sBluetoothMonitor:Landroid/bluetooth/OplusBluetoothMonitor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 59
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public varargs blacklist closeBtAbnomalMonitor(Ljava/util/List;Landroid/bluetooth/OplusBluetoothMonitorCallback;[I)Z
    .locals 4
    .param p2, "callback"    # Landroid/bluetooth/OplusBluetoothMonitorCallback;
    .param p3, "params"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/bluetooth/OplusBluetoothMonitorCallback;",
            "[I)Z"
        }
    .end annotation

    .line 104
    .local p1, "monitorEvents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-boolean v0, Landroid/bluetooth/OplusBluetoothMonitor;->DBG:Z

    const-string v1, "OplusBluetoothMonitor"

    if-eqz v0, :cond_0

    .line 105
    const-string v0, "enter closeSwitchMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "packageName":Ljava/lang/String;
    const/4 v2, 0x0

    if-nez p2, :cond_1

    .line 109
    const-string v3, "callback is null!"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return v2

    .line 113
    :cond_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapterExtImpl;->getInstance()Landroid/bluetooth/BluetoothAdapterExtImpl;

    move-result-object v1

    .line 114
    .local v1, "bluetoothAdapterExtImp":Landroid/bluetooth/BluetoothAdapterExtImpl;
    if-eqz v1, :cond_2

    .line 115
    invoke-virtual {v1, v0, p1, p2}, Landroid/bluetooth/BluetoothAdapterExtImpl;->closeBtAbnomalMonitor(Ljava/lang/String;Ljava/util/List;Landroid/bluetooth/OplusBluetoothMonitorCallback;)Z

    move-result v2

    return v2

    .line 117
    :cond_2
    return v2
.end method

.method public varargs blacklist openBtAbnomalMonitor(Ljava/util/List;Landroid/bluetooth/OplusBluetoothMonitorCallback;[I)Z
    .locals 4
    .param p2, "callback"    # Landroid/bluetooth/OplusBluetoothMonitorCallback;
    .param p3, "params"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/bluetooth/OplusBluetoothMonitorCallback;",
            "[I)Z"
        }
    .end annotation

    .line 81
    .local p1, "monitorEvents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-boolean v0, Landroid/bluetooth/OplusBluetoothMonitor;->DBG:Z

    const-string v1, "OplusBluetoothMonitor"

    if-eqz v0, :cond_0

    .line 82
    const-string v0, "enter openBtAbnomalMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "packageName":Ljava/lang/String;
    const/4 v2, 0x0

    if-nez p2, :cond_1

    .line 86
    const-string v3, "callback is null!"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return v2

    .line 89
    :cond_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapterExtImpl;->getInstance()Landroid/bluetooth/BluetoothAdapterExtImpl;

    move-result-object v1

    .line 90
    .local v1, "bluetoothAdapterExtImp":Landroid/bluetooth/BluetoothAdapterExtImpl;
    if-eqz v1, :cond_2

    .line 91
    invoke-virtual {v1, v0, p1, p2}, Landroid/bluetooth/BluetoothAdapterExtImpl;->openBtAbnomalMonitor(Ljava/lang/String;Ljava/util/List;Landroid/bluetooth/OplusBluetoothMonitorCallback;)Z

    move-result v2

    return v2

    .line 93
    :cond_2
    return v2
.end method
