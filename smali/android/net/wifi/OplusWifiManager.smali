.class public Landroid/net/wifi/OplusWifiManager;
.super Ljava/lang/Object;
.source "OplusWifiManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/OplusWifiManager$ActionListenerProxy;,
        Landroid/net/wifi/OplusWifiManager$ActionListener;
    }
.end annotation


# static fields
.field public static final blacklist ACTION_OPLUS_NETWORK_CONDITIONS_MEASURED:Ljava/lang/String; = "android.net.conn.OPLUS_NETWORK_CONDITIONS_MEASURED"

.field public static final blacklist AUTOCONNECT_PORTAL_LOGIN:I = 0x2

.field public static final blacklist EXTRA_HOTSPOT_CLIENTS_NUM:Ljava/lang/String; = "HotspotClientNum"

.field public static final blacklist EXTRA_SNIFFER_MODE_STATUS:Ljava/lang/String; = "SnifferModeStatus"

.field public static final blacklist EXTRA_SNIFFER_MODE_STOPPED_REASON:Ljava/lang/String; = "SnifferModeStoppedReason"

.field public static final blacklist IOT_CONNECT_SCAN_RESULTS_AVAILABLE_ACTION:Ljava/lang/String; = "android.net.iot.connect.wifi.SCAN_RESULTS"

.field public static final blacklist MANUCONNECT_PORTAL_LOGIN:I = 0x1

.field public static final blacklist OPLUS_WIFI_FEATURE_AUTORECONNECT:J = 0x80L

.field public static final blacklist OPLUS_WIFI_FEATURE_DBS:J = 0x10L

.field public static final blacklist OPLUS_WIFI_FEATURE_DUALSTA:J = 0x8L

.field public static final blacklist OPLUS_WIFI_FEATURE_INFRA:J = 0x1L

.field public static final blacklist OPLUS_WIFI_FEATURE_IOTConnect:J = 0x400L

.field public static final blacklist OPLUS_WIFI_FEATURE_LIMITSPEED:J = 0x40L

.field public static final blacklist OPLUS_WIFI_FEATURE_NOT_SUPPORT_WPA3:J = 0x200L

.field public static final blacklist OPLUS_WIFI_FEATURE_Passpoint:J = 0x800L

.field public static final blacklist OPLUS_WIFI_FEATURE_SCC:J = 0x100L

.field public static final blacklist OPLUS_WIFI_FEATURE_SLA:J = 0x4L

.field public static final blacklist OPLUS_WIFI_FEATURE_WIFI6:J = 0x20L

.field public static final blacklist OTHER_LOGIN:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "OplusWifiManager"

.field public static final blacklist WIFI_HOTSPOT_CLIENTS_CHANGED_ACTION:Ljava/lang/String; = "oplus.intent.action.WIFI_HOTSPOT_CLIENTS_CHANGED"

.field public static final blacklist WIFI_SNIFFER_MODE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.WIFI_SNIFFER_MODE_CHANGED"

.field public static final blacklist WIFI_SNIFFER_MODE_STARTED:I = 0x1

.field public static final blacklist WIFI_SNIFFER_MODE_STARTING:I = 0x0

.field public static final blacklist WIFI_SNIFFER_MODE_START_FAIL:I = 0x2

.field public static final blacklist WIFI_SNIFFER_MODE_STOPED:I = 0x4

.field public static final blacklist WIFI_SNIFFER_MODE_STOPPED_REASON_AIRPLANE_ON:I = 0xa

.field public static final blacklist WIFI_SNIFFER_MODE_STOPPED_REASON_ALWAYS_SCAN_OFF:I = 0x9

.field public static final blacklist WIFI_SNIFFER_MODE_STOPPED_REASON_ALWAYS_SCAN_TOGGLED:I = 0x8

.field public static final blacklist WIFI_SNIFFER_MODE_STOPPED_REASON_ENTER_EMERGENCY:I = 0xc

.field public static final blacklist WIFI_SNIFFER_MODE_STOPPED_REASON_FRAMEWORK_EXCEPTION:I = 0x6

.field public static final blacklist WIFI_SNIFFER_MODE_STOPPED_REASON_NATIVE_DIE:I = 0x5

.field public static final blacklist WIFI_SNIFFER_MODE_STOPPED_REASON_NATIVE_EXCEPTION:I = 0x4

.field public static final blacklist WIFI_SNIFFER_MODE_STOPPED_REASON_REEST_FOR_START_FAIL:I = 0x7

.field public static final blacklist WIFI_SNIFFER_MODE_STOPPED_REASON_REEST_TIMEOUT:I = 0x1

.field public static final blacklist WIFI_SNIFFER_MODE_STOPPED_REASON_REQUEST:I = 0x0

.field public static final blacklist WIFI_SNIFFER_MODE_STOPPED_REASON_SOFTAP_TOGGLED:I = 0x3

.field public static final blacklist WIFI_SNIFFER_MODE_STOPPED_REASON_UNKNOW:I = 0xff

.field public static final blacklist WIFI_SNIFFER_MODE_STOPPED_REASON_WIFI_SHUTDOWN:I = 0xb

.field public static final blacklist WIFI_SNIFFER_MODE_STOPPED_REASON_WIFI_TOGGLED:I = 0x2

.field public static final blacklist WIFI_SNIFFER_MODE_STOPPING:I = 0x3

.field public static final blacklist WIFI_SNIFFER_MODE_STOP_FAIL:I = 0x5

.field public static final blacklist WIFI_SNIFFER_MODE_UNKNOW:I = 0xff


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/OplusWifiManager$ActionListener;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mService:Landroid/net/wifi/IOplusWifiManager;

.field private blacklist mVerboseLoggingEnabled:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmVerboseLoggingEnabled(Landroid/net/wifi/OplusWifiManager;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/net/wifi/OplusWifiManager;->mVerboseLoggingEnabled:Z

    return p0
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/OplusWifiManager;->mListeners:Ljava/util/List;

    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/OplusWifiManager;->mVerboseLoggingEnabled:Z

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    .line 171
    iput-object p1, p0, Landroid/net/wifi/OplusWifiManager;->mContext:Landroid/content/Context;

    .line 172
    const-string v0, "opluswifikitservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/IOplusWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IOplusWifiManager;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    .line 173
    return-void
.end method

.method private blacklist connectInternal(Ljava/lang/String;Landroid/net/wifi/ExtendsWifiConfig;ILandroid/net/wifi/OplusWifiManager$ActionListener;)V
    .locals 16
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "config"    # Landroid/net/wifi/ExtendsWifiConfig;
    .param p3, "networkId"    # I
    .param p4, "listener"    # Landroid/net/wifi/OplusWifiManager$ActionListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1289
    move-object/from16 v1, p0

    move-object/from16 v2, p4

    const/4 v0, 0x0

    .line 1290
    .local v0, "listenerProxy":Landroid/net/wifi/OplusWifiManager$ActionListenerProxy;
    const/4 v3, 0x0

    .line 1291
    .local v3, "binder":Landroid/os/IBinder;
    const/4 v4, 0x0

    .line 1292
    .local v4, "listenerProxyBinder":Landroid/os/IBinder;
    const/4 v5, 0x0

    .line 1293
    .local v5, "callbackIdentifier":I
    const/4 v6, 0x0

    .line 1294
    .local v6, "configstate":I
    if-eqz v2, :cond_0

    .line 1295
    new-instance v7, Landroid/net/wifi/OplusWifiManager$ActionListenerProxy;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    const-string v9, "connect"

    invoke-direct {v7, v1, v9, v8, v2}, Landroid/net/wifi/OplusWifiManager$ActionListenerProxy;-><init>(Landroid/net/wifi/OplusWifiManager;Ljava/lang/String;Landroid/os/Looper;Landroid/net/wifi/OplusWifiManager$ActionListener;)V

    move-object v0, v7

    .line 1296
    new-instance v7, Landroid/os/Binder;

    invoke-direct {v7}, Landroid/os/Binder;-><init>()V

    move-object v3, v7

    .line 1297
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->hashCode()I

    move-result v5

    move v15, v5

    move-object v5, v3

    move-object v3, v0

    goto :goto_0

    .line 1294
    :cond_0
    move v15, v5

    move-object v5, v3

    move-object v3, v0

    .line 1300
    .end local v0    # "listenerProxy":Landroid/net/wifi/OplusWifiManager$ActionListenerProxy;
    .local v3, "listenerProxy":Landroid/net/wifi/OplusWifiManager$ActionListenerProxy;
    .local v5, "binder":Landroid/os/IBinder;
    .local v15, "callbackIdentifier":I
    :goto_0
    if-eqz p2, :cond_1

    .line 1301
    const/4 v6, 0x1

    .line 1303
    :cond_1
    if-eqz v3, :cond_2

    :try_start_0
    invoke-virtual {v3}, Landroid/net/wifi/OplusWifiManager$ActionListenerProxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1305
    :catch_0
    move-exception v0

    goto :goto_2

    .line 1303
    :cond_2
    const/4 v0, 0x0

    :goto_1
    move-object v13, v0

    .line 1304
    .end local v4    # "listenerProxyBinder":Landroid/os/IBinder;
    .local v13, "listenerProxyBinder":Landroid/os/IBinder;
    :try_start_1
    iget-object v7, v1, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    move v8, v6

    move-object/from16 v9, p2

    move-object/from16 v10, p1

    move/from16 v11, p3

    move-object v12, v5

    move v14, v15

    invoke-interface/range {v7 .. v14}, Landroid/net/wifi/IOplusWifiManager;->connect(ILandroid/net/wifi/ExtendsWifiConfig;Ljava/lang/String;ILandroid/os/IBinder;Landroid/os/IBinder;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1307
    move-object v4, v13

    goto :goto_3

    .line 1305
    :catch_1
    move-exception v0

    move-object v4, v13

    .line 1306
    .end local v13    # "listenerProxyBinder":Landroid/os/IBinder;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v4    # "listenerProxyBinder":Landroid/os/IBinder;
    :goto_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1308
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_3
    return-void
.end method

.method private blacklist removeActionListener(I)V
    .locals 1
    .param p1, "key"    # I

    .line 1076
    iget-object v0, p0, Landroid/net/wifi/OplusWifiManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1077
    return-void
.end method


# virtual methods
.method public blacklist agingTestForWifi()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 960
    const/4 v0, 0x0

    .line 962
    .local v0, "state":Z
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IOplusWifiManager;->agingTestForWifi()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 965
    goto :goto_0

    .line 963
    :catch_0
    move-exception v1

    .line 964
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 966
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public blacklist attRequestAuthenticationBeforeTurnOnHotspot(IZI)Z
    .locals 3
    .param p1, "type"    # I
    .param p2, "state"    # Z
    .param p3, "carrierId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1788
    const/4 v0, 0x0

    .line 1790
    .local v0, "ret":Z
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/net/wifi/IOplusWifiManager;->attRequestAuthenticationBeforeTurnOnHotspot(IZI)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1793
    nop

    .line 1794
    return v0

    .line 1791
    :catch_0
    move-exception v1

    .line 1792
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist changeConnectionMode(I)Z
    .locals 2
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 838
    const/4 v0, 0x0

    .line 840
    .local v0, "state":Z
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IOplusWifiManager;->changeConnectionMode(I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 843
    goto :goto_0

    .line 841
    :catch_0
    move-exception v1

    .line 842
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 844
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public blacklist checkFWKSupplicantScanBusy()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1198
    const/4 v0, 0x1

    .line 1200
    .local v0, "ret":Z
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IOplusWifiManager;->checkFWKSupplicantScanBusy()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1203
    goto :goto_0

    .line 1201
    :catch_0
    move-exception v1

    .line 1202
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1204
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkFWKSupplicantScanBusy called: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusWifiManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    return v0
.end method

.method public whitelist checkFWKSupportPasspoint()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 540
    const/4 v0, 0x0

    .line 542
    .local v0, "state":Z
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IOplusWifiManager;->checkFWKSupportPasspoint()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 545
    goto :goto_0

    .line 543
    :catch_0
    move-exception v1

    .line 544
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 546
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public whitelist checkInternalPasspointPresetProvider(Ljava/lang/String;)Z
    .locals 2
    .param p1, "fqdn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 528
    const/4 v0, 0x0

    .line 530
    .local v0, "state":Z
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IOplusWifiManager;->checkInternalPasspointPresetProvider(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 533
    goto :goto_0

    .line 531
    :catch_0
    move-exception v1

    .line 532
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 534
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public whitelist checkPasspointCAExist(Ljava/lang/String;)Z
    .locals 2
    .param p1, "fqdn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 487
    const/4 v0, 0x0

    .line 489
    .local v0, "state":Z
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IOplusWifiManager;->checkPasspointCAExist(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 492
    goto :goto_0

    .line 490
    :catch_0
    move-exception v1

    .line 491
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 493
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public whitelist checkPasspointXMLCAExpired(Ljava/lang/String;)Z
    .locals 2
    .param p1, "fqdn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 503
    const/4 v0, 0x0

    .line 505
    .local v0, "state":Z
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IOplusWifiManager;->checkPasspointXMLCAExpired(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 508
    goto :goto_0

    .line 506
    :catch_0
    move-exception v1

    .line 507
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 509
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public blacklist checkWiFiDriverStatus()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 926
    const/4 v0, 0x0

    .line 928
    .local v0, "state":Z
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IOplusWifiManager;->checkWiFiDriverStatus()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 931
    goto :goto_0

    .line 929
    :catch_0
    move-exception v1

    .line 930
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 932
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public whitelist clearWifiOCloudData(Z)V
    .locals 1
    .param p1, "hardDelete"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 378
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IOplusWifiManager;->clearWifiOCloudData(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    goto :goto_0

    .line 379
    :catch_0
    move-exception v0

    .line 380
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 382
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist connect(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/OplusWifiManager$ActionListener;)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p3, "listener"    # Landroid/net/wifi/OplusWifiManager$ActionListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1276
    if-eqz p2, :cond_0

    .line 1279
    new-instance v0, Landroid/net/wifi/ExtendsWifiConfig;

    invoke-direct {v0, p2}, Landroid/net/wifi/ExtendsWifiConfig;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    .line 1280
    .local v0, "extConfig":Landroid/net/wifi/ExtendsWifiConfig;
    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1, p3}, Landroid/net/wifi/OplusWifiManager;->connectInternal(Ljava/lang/String;Landroid/net/wifi/ExtendsWifiConfig;ILandroid/net/wifi/OplusWifiManager$ActionListener;)V

    .line 1281
    return-void

    .line 1277
    .end local v0    # "extConfig":Landroid/net/wifi/ExtendsWifiConfig;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "config cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist connect(Ljava/lang/String;Ljava/lang/Integer;Landroid/net/wifi/OplusWifiManager$ActionListener;)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "networkId"    # Ljava/lang/Integer;
    .param p3, "listener"    # Landroid/net/wifi/OplusWifiManager$ActionListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1285
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, p3}, Landroid/net/wifi/OplusWifiManager;->connectInternal(Ljava/lang/String;Landroid/net/wifi/ExtendsWifiConfig;ILandroid/net/wifi/OplusWifiManager$ActionListener;)V

    .line 1286
    return-void
.end method

.method public whitelist dealWithCloudBackupResult(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 442
    .local p1, "cloudData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v0, p1, p2}, Landroid/net/wifi/IOplusWifiManager;->dealWithCloudBackupResult(Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    goto :goto_0

    .line 443
    :catch_0
    move-exception v0

    .line 444
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 446
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist dealWithCloudRecoveryData(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 450
    .local p1, "cloudData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v0, p1, p2}, Landroid/net/wifi/IOplusWifiManager;->dealWithCloudRecoveryData(Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 453
    goto :goto_0

    .line 451
    :catch_0
    move-exception v0

    .line 452
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 454
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist disableDualSta()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 319
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IOplusWifiManager;->disableDualSta()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    goto :goto_0

    .line 320
    :catch_0
    move-exception v0

    .line 321
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 323
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist disableQoEMonitor(Ljava/lang/String;)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1875
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IOplusWifiManager;->disableQoEMonitor(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1878
    goto :goto_0

    .line 1876
    :catch_0
    move-exception v0

    .line 1877
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1879
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist doRecoveryFromSettingsForSsv()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1938
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IOplusWifiManager;->doRecoveryFromSettingsForSsv()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1941
    goto :goto_0

    .line 1939
    :catch_0
    move-exception v0

    .line 1940
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1942
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist enable5g160MSoftAp(ZI)I
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "channel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1721
    const/4 v0, -0x1

    .line 1723
    .local v0, "ret":I
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IOplusWifiManager;->enable5g160MSoftAp(ZI)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1727
    nop

    .line 1728
    return v0

    .line 1725
    :catch_0
    move-exception v1

    .line 1726
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist enableQoEMonitor(Ljava/lang/String;)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1860
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IOplusWifiManager;->enableQoEMonitor(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1863
    goto :goto_0

    .line 1861
    :catch_0
    move-exception v0

    .line 1862
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1864
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist executeDriverCommand(Ljava/lang/String;)Z
    .locals 2
    .param p1, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 873
    const/4 v0, 0x0

    .line 875
    .local v0, "state":Z
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IOplusWifiManager;->executeDriverCommand(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 878
    goto :goto_0

    .line 876
    :catch_0
    move-exception v1

    .line 877
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 879
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public blacklist executeDriverCommandWithResult(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 891
    const-string v0, "unknown"

    .line 893
    .local v0, "result":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IOplusWifiManager;->executeDriverCommandWithResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 896
    goto :goto_0

    .line 894
    :catch_0
    move-exception v1

    .line 895
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 897
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public whitelist getAllDualStaApps()[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 237
    const/4 v0, 0x0

    .line 239
    .local v0, "appsStates":[Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IOplusWifiManager;->getAllDualStaApps()[Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 242
    goto :goto_0

    .line 240
    :catch_0
    move-exception v1

    .line 241
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 243
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public blacklist getAllScanStatisticsList(I)Ljava/util/List;
    .locals 2
    .param p1, "timeAgo"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/net/wifi/OplusScanStatistics;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1214
    const/4 v0, 0x0

    .line 1216
    .local v0, "statList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/OplusScanStatistics;>;"
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IOplusWifiManager;->getAllScanStatisticsList(I)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 1219
    goto :goto_0

    .line 1217
    :catch_0
    move-exception v1

    .line 1218
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1220
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public blacklist getAllSlaAcceleratedApps()[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 225
    const/4 v0, 0x0

    .line 227
    .local v0, "appsStates":[Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IOplusWifiManager;->getAllSlaAcceleratedApps()[Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 230
    goto :goto_0

    .line 228
    :catch_0
    move-exception v1

    .line 229
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 231
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public whitelist getAllSlaAppsAndStates()[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 214
    const/4 v0, 0x0

    .line 216
    .local v0, "appsStates":[Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IOplusWifiManager;->getAllSlaAppsAndStates()[Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 219
    goto :goto_0

    .line 217
    :catch_0
    move-exception v1

    .line 218
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 220
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public blacklist getAllowedHotspotClients()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Loplus/net/wifi/HotspotClient;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 655
    const/4 v0, 0x0

    .line 657
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Loplus/net/wifi/HotspotClient;>;"
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IOplusWifiManager;->getAllowedHotspotClients()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 660
    goto :goto_0

    .line 658
    :catch_0
    move-exception v1

    .line 659
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 661
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public blacklist getAvoidChannels()[I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1051
    const/4 v0, 0x0

    .line 1053
    .local v0, "freqs":[I
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IOplusWifiManager;->getAvoidChannels()[I

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 1056
    goto :goto_0

    .line 1054
    :catch_0
    move-exception v1

    .line 1055
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1057
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public whitelist getBlockedHotspotClients()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Loplus/net/wifi/HotspotClient;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 643
    const/4 v0, 0x0

    .line 645
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Loplus/net/wifi/HotspotClient;>;"
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 646
    iget-object v1, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IOplusWifiManager;->getBlockedHotspotClients()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 649
    goto :goto_0

    .line 647
    :catch_0
    move-exception v1

    .line 648
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 650
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public blacklist getCandiateNetwork(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1598
    const/4 v0, 0x0

    .line 1600
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IOplusWifiManager;->getCandiateNetwork(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 1603
    goto :goto_0

    .line 1601
    :catch_0
    move-exception v1

    .line 1602
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1604
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public whitelist getConnectedHotspotClients()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Loplus/net/wifi/HotspotClient;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 665
    const/4 v0, 0x0

    .line 667
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Loplus/net/wifi/HotspotClient;>;"
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IOplusWifiManager;->getConnectedHotspotClients()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 670
    goto :goto_0

    .line 668
    :catch_0
    move-exception v1

    .line 669
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 671
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public blacklist getCurNetworkState(Ljava/lang/String;)I
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1565
    const/4 v0, -0x1

    .line 1567
    .local v0, "states":I
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IOplusWifiManager;->getCurNetworkState(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1570
    goto :goto_0

    .line 1568
    :catch_0
    move-exception v1

    .line 1569
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1571
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public blacklist getCurrentNetwork()Landroid/net/Network;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1576
    const/4 v0, 0x0

    .line 1578
    .local v0, "network":Landroid/net/Network;
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IOplusWifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 1581
    goto :goto_0

    .line 1579
    :catch_0
    move-exception v1

    .line 1580
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1582
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public whitelist getDBSCapacity()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1003
    const/4 v0, 0x0

    .line 1004
    .local v0, "cap":I
    const-string v1, "OplusWifiManager"

    const-string v2, "getDBSCapacity"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v2}, Landroid/net/wifi/IOplusWifiManager;->getDBSCapacity()I

    move-result v2

    move v0, v2

    .line 1007
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDBSCapacity cap = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1010
    goto :goto_0

    .line 1008
    :catch_0
    move-exception v1

    .line 1009
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1011
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public blacklist getDualStaEnableState(Ljava/lang/String;)I
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1806
    const/4 v0, -0x1

    .line 1808
    .local v0, "ret":I
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IOplusWifiManager;->getDualStaEnableState(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1811
    goto :goto_0

    .line 1809
    :catch_0
    move-exception v1

    .line 1810
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1812
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public blacklist getFTMState()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 800
    const/4 v0, 0x0

    .line 802
    .local v0, "state":I
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IOplusWifiManager;->getFTMState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 805
    goto :goto_0

    .line 803
    :catch_0
    move-exception v1

    .line 804
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 806
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public blacklist getFwStatus()Ljava/lang/String;
    .locals 2

    .line 943
    const-string v0, "unknown"

    .line 945
    .local v0, "result":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IOplusWifiManager;->getFwStatus()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 948
    goto :goto_0

    .line 946
    :catch_0
    move-exception v1

    .line 947
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 949
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public whitelist getIOTConnectScanResults()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1117
    const/4 v0, 0x0

    .line 1119
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IOplusWifiManager;->getIOTConnectScanResults()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 1122
    goto :goto_0

    .line 1120
    :catch_0
    move-exception v1

    .line 1121
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1123
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    const-string v1, "OplusWifiManager"

    const-string v2, "getIOTConnectScanResults called: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 1125
    .local v3, "result":Landroid/net/wifi/ScanResult;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getIOTConnectScanResults called:  freq:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    .end local v3    # "result":Landroid/net/wifi/ScanResult;
    goto :goto_1

    .line 1128
    :cond_0
    return-object v0
.end method

.method public blacklist getL2Param(Ljava/lang/String;I)Lcom/oplus/network/OlkL2Param;
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "ifname"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1890
    const/4 v0, 0x0

    .line 1892
    .local v0, "l2param":Lcom/oplus/network/OlkL2Param;
    :try_start_0
    new-instance v1, Lcom/oplus/network/OlkL2Param;

    iget-object v2, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v2, p1, p2}, Landroid/net/wifi/IOplusWifiManager;->getL2Param(Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/oplus/network/OlkL2Param;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 1895
    goto :goto_0

    .line 1893
    :catch_0
    move-exception v1

    .line 1894
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1896
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public blacklist getListener()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/OplusWifiManager$ActionListener;",
            ">;"
        }
    .end annotation

    .line 1072
    iget-object v0, p0, Landroid/net/wifi/OplusWifiManager;->mListeners:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getNetStateInfo(I)Ljava/lang/String;
    .locals 3
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1774
    const-string v0, ""

    .line 1776
    .local v0, "currentWifiNetStateInfo":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IOplusWifiManager;->getNetStateInfo(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 1779
    nop

    .line 1780
    return-object v0

    .line 1777
    :catch_0
    move-exception v1

    .line 1778
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist getORouterBoostSate(Ljava/lang/String;)I
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1841
    const/4 v0, -0x1

    .line 1844
    .local v0, "ret":I
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IOplusWifiManager;->getORouterBoostSate(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1847
    goto :goto_0

    .line 1845
    :catch_0
    move-exception v1

    .line 1846
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1848
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public whitelist getOplusSta2ConnectionInfo()Landroid/net/wifi/WifiInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 267
    const/4 v0, 0x0

    .line 269
    .local v0, "extWifiInfo":Landroid/net/wifi/ExtendsWifiInfo;
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IOplusWifiManager;->getOplusSta2ConnectionInfo()Landroid/net/wifi/ExtendsWifiInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 272
    goto :goto_0

    .line 270
    :catch_0
    move-exception v1

    .line 271
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 273
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v0}, Landroid/net/wifi/ExtendsWifiInfo;->getWifiInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getOplusSta2CurConfigKey()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 278
    const/4 v0, 0x0

    .line 280
    .local v0, "configKey":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IOplusWifiManager;->getOplusSta2CurConfigKey()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 283
    goto :goto_0

    .line 281
    :catch_0
    move-exception v1

    .line 282
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 284
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public whitelist getOplusSupportedFeatures()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 176
    const-wide/16 v0, -0x1

    .line 178
    .local v0, "features":J
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v2}, Landroid/net/wifi/IOplusWifiManager;->getOplusSupportedFeatures()J

    move-result-wide v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v2

    .line 181
    goto :goto_0

    .line 179
    :catch_0
    move-exception v2

    .line 180
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 182
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return-wide v0
.end method

.method public blacklist getPHYCapacity(I)I
    .locals 2
    .param p1, "band"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1019
    const/4 v0, 0x0

    .line 1021
    .local v0, "cap":I
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IOplusWifiManager;->getPHYCapacity(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1024
    goto :goto_0

    .line 1022
    :catch_0
    move-exception v1

    .line 1023
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1025
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public blacklist getPasspointCertifiedState(Ljava/lang/String;)Z
    .locals 2
    .param p1, "fqdn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 574
    const/4 v0, 0x0

    .line 576
    .local v0, "certified":Z
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IOplusWifiManager;->getPasspointCertifiedState(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 579
    goto :goto_0

    .line 577
    :catch_0
    move-exception v1

    .line 578
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 580
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public whitelist getPasspointUserName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "fqdn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 562
    const/4 v0, 0x0

    .line 564
    .local v0, "userName":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IOplusWifiManager;->getPasspointUserName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 567
    goto :goto_0

    .line 565
    :catch_0
    move-exception v1

    .line 566
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 568
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public blacklist getPortalLoginType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1759
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getScanStatisticsList(Ljava/lang/String;I)Ljava/util/List;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "timeAgo"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/net/wifi/OplusScanStatistics;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1227
    const/4 v0, 0x0

    .line 1229
    .local v0, "statList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/OplusScanStatistics;>;"
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IOplusWifiManager;->getScanStatisticsList(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 1232
    goto :goto_0

    .line 1230
    :catch_0
    move-exception v1

    .line 1231
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1233
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public whitelist getSecondaryWifiNetwork()Landroid/net/Network;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 364
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IOplusWifiManager;->getSecondaryWifiNetwork()Landroid/net/Network;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 365
    :catch_0
    move-exception v0

    .line 366
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 367
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getSlaAppState(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 204
    const/4 v0, 0x0

    .line 206
    .local v0, "success":Z
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IOplusWifiManager;->getSlaAppState(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 209
    goto :goto_0

    .line 207
    :catch_0
    move-exception v1

    .line 208
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 210
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public whitelist getSlaWorkMode()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 255
    const/4 v0, 0x0

    .line 257
    .local v0, "type":I
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IOplusWifiManager;->getSlaWorkMode()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 260
    goto :goto_0

    .line 258
    :catch_0
    move-exception v1

    .line 259
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 261
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public blacklist getSnifferState()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 756
    const/4 v0, 0x0

    .line 758
    .local v0, "state":I
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IOplusWifiManager;->getSnifferState()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 761
    goto :goto_0

    .line 759
    :catch_0
    move-exception v1

    .line 760
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 762
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public whitelist getSupportedChannels(I)[I
    .locals 2
    .param p1, "band"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1037
    const/4 v0, 0x0

    .line 1039
    .local v0, "freqs":[I
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IOplusWifiManager;->getSupportedChannels(I)[I

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 1042
    goto :goto_0

    .line 1040
    :catch_0
    move-exception v1

    .line 1041
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1043
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public blacklist getULLState(Ljava/lang/String;)I
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1823
    const/4 v0, -0x1

    .line 1826
    .local v0, "ret":I
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IOplusWifiManager;->getULLState(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1829
    goto :goto_0

    .line 1827
    :catch_0
    move-exception v1

    .line 1828
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1830
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public whitelist getWifiOCloudData(Z)Ljava/util/List;
    .locals 2
    .param p1, "dirtyOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 388
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 390
    .local v0, "dataList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IOplusWifiManager;->getWifiOCloudData(Z)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 393
    goto :goto_0

    .line 391
    :catch_0
    move-exception v1

    .line 392
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 394
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public blacklist getWifiRestrictionList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1622
    const/4 v0, 0x0

    .line 1624
    .local v0, "dataList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IOplusWifiManager;->getWifiRestrictionList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 1627
    nop

    .line 1628
    return-object v0

    .line 1625
    :catch_0
    move-exception v1

    .line 1626
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist hasOCloudDirtyData()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 431
    const/4 v0, 0x0

    .line 433
    .local v0, "hasData":Z
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IOplusWifiManager;->hasOCloudDirtyData()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 436
    goto :goto_0

    .line 434
    :catch_0
    move-exception v1

    .line 435
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 437
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public whitelist iotConnectScanBusy()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1181
    const/4 v0, 0x1

    .line 1183
    .local v0, "ret":Z
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IOplusWifiManager;->iotConnectScanBusy()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1186
    goto :goto_0

    .line 1184
    :catch_0
    move-exception v1

    .line 1185
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1187
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "iotConnectScanBusy called: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusWifiManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    return v0
.end method

.method public whitelist isDualStaSupported()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 332
    const-wide/16 v0, 0x8

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/OplusWifiManager;->isFeatureSupported(J)Z

    move-result v0

    return v0
.end method

.method public whitelist isFeatureSupported(J)Z
    .locals 2
    .param p1, "feature"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 186
    invoke-virtual {p0}, Landroid/net/wifi/OplusWifiManager;->getOplusSupportedFeatures()J

    move-result-wide v0

    and-long/2addr v0, p1

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isInSnifferMode()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1404
    const/4 v0, 0x0

    .line 1406
    .local v0, "ret":Z
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IOplusWifiManager;->isInSnifferMode()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1409
    goto :goto_0

    .line 1407
    :catch_0
    move-exception v1

    .line 1408
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1410
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public whitelist isP2p5GSupported()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 595
    const/4 v0, 0x0

    .line 597
    .local v0, "state":Z
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IOplusWifiManager;->isP2p5GSupported()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 600
    goto :goto_0

    .line 598
    :catch_0
    move-exception v1

    .line 599
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 601
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public whitelist isPrimaryWifi(Landroid/net/Network;)Z
    .locals 2
    .param p1, "network"    # Landroid/net/Network;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 343
    if-nez p1, :cond_0

    .line 344
    const-string v0, "OplusWifiManager"

    const-string v1, "isPrimaryWifi network == null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const/4 v0, 0x0

    return v0

    .line 347
    :cond_0
    const/4 v0, 0x0

    .line 349
    .local v0, "isPrimary":Z
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IOplusWifiManager;->isPrimaryWifi(Landroid/net/Network;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 352
    goto :goto_0

    .line 350
    :catch_0
    move-exception v1

    .line 351
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 353
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public whitelist isSoftap5GSupported()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 612
    const/4 v0, 0x0

    .line 614
    .local v0, "state":Z
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IOplusWifiManager;->isSoftap5GSupported()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 617
    goto :goto_0

    .line 615
    :catch_0
    move-exception v1

    .line 616
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 618
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public blacklist isSubwifiManuconnect()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1587
    const/4 v0, 0x1

    .line 1589
    .local v0, "ret":Z
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IOplusWifiManager;->isSubwifiManuconnect()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1592
    goto :goto_0

    .line 1590
    :catch_0
    move-exception v1

    .line 1591
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1593
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public blacklist isSupport5g160MSoftAp()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1685
    const/4 v0, 0x0

    .line 1687
    .local v0, "ret":Z
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IOplusWifiManager;->isSupport5g160MSoftAp()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1691
    nop

    .line 1692
    return v0

    .line 1689
    :catch_0
    move-exception v1

    .line 1690
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist isSupport5g160MStaForPhoneClone()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1702
    const/4 v0, 0x0

    .line 1704
    .local v0, "ret":Z
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IOplusWifiManager;->isSupport5g160MStaForPhoneClone()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1708
    nop

    .line 1709
    return v0

    .line 1706
    :catch_0
    move-exception v1

    .line 1707
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist isSupportSnifferCaptureWithUdp()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1387
    const/4 v0, 0x0

    .line 1389
    .local v0, "ret":Z
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IOplusWifiManager;->isSupportSnifferCaptureWithUdp()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1392
    goto :goto_0

    .line 1390
    :catch_0
    move-exception v1

    .line 1391
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1393
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public blacklist isWifiAutoConnectionDisabled()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1667
    const/4 v0, 0x0

    .line 1669
    .local v0, "state":Z
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IOplusWifiManager;->isWifiAutoConnectionDisabled()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1672
    nop

    .line 1673
    return v0

    .line 1670
    :catch_0
    move-exception v1

    .line 1671
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist keepSnifferMode(I)I
    .locals 2
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1424
    const/4 v0, -0x1

    .line 1426
    .local v0, "ret":I
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IOplusWifiManager;->keepSnifferMode(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1429
    goto :goto_0

    .line 1427
    :catch_0
    move-exception v1

    .line 1428
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1430
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public blacklist notifyGameHighTemperature(ILjava/lang/String;)V
    .locals 1
    .param p1, "temperature"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 698
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v0, p1, p2}, Landroid/net/wifi/IOplusWifiManager;->notifyGameHighTemperature(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 701
    goto :goto_0

    .line 699
    :catch_0
    move-exception v0

    .line 700
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 702
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist notifyGameInfoJsonStr(Ljava/lang/String;)V
    .locals 1
    .param p1, "gameInfo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 707
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IOplusWifiManager;->notifyGameInfoJsonStr(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 710
    goto :goto_0

    .line 708
    :catch_0
    move-exception v0

    .line 709
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 711
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist notifyGameLatency(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "lantencyInfo"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 689
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v0, p1, p2}, Landroid/net/wifi/IOplusWifiManager;->notifyGameLatency(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 692
    goto :goto_0

    .line 690
    :catch_0
    move-exception v0

    .line 691
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 693
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist notifyGameModeState(ZLjava/lang/String;)V
    .locals 1
    .param p1, "state"    # Z
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 680
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v0, p1, p2}, Landroid/net/wifi/IOplusWifiManager;->notifyGameModeState(ZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 683
    goto :goto_0

    .line 681
    :catch_0
    move-exception v0

    .line 682
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 684
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist notifyMeetingWorkingState(ZLjava/lang/String;)V
    .locals 1
    .param p1, "state"    # Z
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 716
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v0, p1, p2}, Landroid/net/wifi/IOplusWifiManager;->notifyMeetingWorkingState(ZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 719
    goto :goto_0

    .line 717
    :catch_0
    move-exception v0

    .line 718
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 720
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist notifyVideoStutterToWifi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1949
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v0, p1, p2}, Landroid/net/wifi/IOplusWifiManager;->notifyVideoStutterToWifi(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1952
    goto :goto_0

    .line 1950
    :catch_0
    move-exception v0

    .line 1951
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1953
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist passpointANQPScanResults(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 516
    .local p1, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    const/4 v0, 0x0

    .line 518
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 519
    iget-object v1, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IOplusWifiManager;->passpointANQPScanResults(Ljava/util/List;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 522
    goto :goto_0

    .line 520
    :catch_0
    move-exception v1

    .line 521
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 523
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public whitelist releaseDualStaNetwork(Ljava/lang/String;)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 311
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    iget-object v1, p0, Landroid/net/wifi/OplusWifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/net/wifi/IOplusWifiManager;->releaseDualStaNetwork(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    goto :goto_0

    .line 312
    :catch_0
    move-exception v0

    .line 313
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 315
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist removeFromRestrictionList(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1633
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 1635
    .local v0, "state":Z
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/net/wifi/IOplusWifiManager;->removeFromRestrictionList(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1638
    nop

    .line 1639
    return v0

    .line 1636
    :catch_0
    move-exception v1

    .line 1637
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist removeHeIeFromProbeRequest(Z)V
    .locals 1
    .param p1, "remove"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 980
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IOplusWifiManager;->removeHeIeFromProbeRequest(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 983
    goto :goto_0

    .line 981
    :catch_0
    move-exception v0

    .line 982
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 984
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist removeNetworkByGlobalId(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "configKey"    # Ljava/lang/String;
    .param p2, "globalId"    # Ljava/lang/String;
    .param p3, "hardDelete"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 415
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/net/wifi/IOplusWifiManager;->removeNetworkByGlobalId(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    goto :goto_0

    .line 416
    :catch_0
    move-exception v0

    .line 417
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 419
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist requestDualStaNetwork(Ljava/lang/String;)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 297
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    iget-object v1, p0, Landroid/net/wifi/OplusWifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/net/wifi/IOplusWifiManager;->requestDualStaNetwork(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    goto :goto_0

    .line 298
    :catch_0
    move-exception v0

    .line 299
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 301
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist resetConnectionMode()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 820
    const/4 v0, 0x0

    .line 822
    .local v0, "state":Z
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IOplusWifiManager;->resetConnectionMode()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 825
    goto :goto_0

    .line 823
    :catch_0
    move-exception v1

    .line 824
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 826
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public whitelist resumeFWKPeriodicScan()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1166
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IOplusWifiManager;->resumeFWKPeriodicScan()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1169
    goto :goto_0

    .line 1167
    :catch_0
    move-exception v0

    .line 1168
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1170
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const-string v0, "OplusWifiManager"

    const-string v1, "resumeFWKPeriodicScan called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    return-void
.end method

.method public blacklist sendABRchange(Ljava/lang/String;II)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "netId"    # I
    .param p3, "abrGear"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1908
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/net/wifi/IOplusWifiManager;->sendABRchange(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1911
    goto :goto_0

    .line 1909
    :catch_0
    move-exception v0

    .line 1910
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1912
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist sendFTMCommand(Ljava/lang/String;)I
    .locals 2
    .param p1, "ftmCmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 789
    const/4 v0, 0x0

    .line 791
    .local v0, "state":I
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IOplusWifiManager;->sendFTMCommand(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 794
    goto :goto_0

    .line 792
    :catch_0
    move-exception v1

    .line 793
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 795
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public whitelist sendIOTConnectProbeReq(Ljava/lang/String;[ILjava/lang/String;)Z
    .locals 3
    .param p1, "addVendorIE"    # Ljava/lang/String;
    .param p2, "channels"    # [I
    .param p3, "hiddenSSIDList"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1099
    const/4 v0, 0x0

    .line 1101
    .local v0, "state":Z
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/net/wifi/IOplusWifiManager;->sendIOTConnectProbeReq(Ljava/lang/String;[ILjava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1104
    goto :goto_0

    .line 1102
    :catch_0
    move-exception v1

    .line 1103
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1105
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendIOTConnectProbeReq called: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusWifiManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    return v0
.end method

.method public blacklist sendStartScoreChange(Ljava/lang/String;II)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "netId"    # I
    .param p3, "score"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1923
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/net/wifi/IOplusWifiManager;->sendStartScoreChange(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1926
    goto :goto_0

    .line 1924
    :catch_0
    move-exception v0

    .line 1925
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1927
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist setAllowedHotspotClients(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Loplus/net/wifi/HotspotClient;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 636
    .local p1, "clientList":Ljava/util/List;, "Ljava/util/List<Loplus/net/wifi/HotspotClient;>;"
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IOplusWifiManager;->setAllowedHotspotClients(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 639
    goto :goto_0

    .line 637
    :catch_0
    move-exception v0

    .line 638
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 640
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist setBlockedHotspotClients(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Loplus/net/wifi/HotspotClient;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 627
    .local p1, "clientList":Ljava/util/List;, "Ljava/util/List<Loplus/net/wifi/HotspotClient;>;"
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IOplusWifiManager;->setBlockedHotspotClients(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 630
    goto :goto_0

    .line 628
    :catch_0
    move-exception v0

    .line 629
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 631
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist setDirtyFlag(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "globalId"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 424
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v0, p1, p2}, Landroid/net/wifi/IOplusWifiManager;->setDirtyFlag(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    goto :goto_0

    .line 425
    :catch_0
    move-exception v0

    .line 426
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 428
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist setLogDump()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1351
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IOplusWifiManager;->setLogDump()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1354
    goto :goto_0

    .line 1352
    :catch_0
    move-exception v0

    .line 1353
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1355
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist setLogOff()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1336
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IOplusWifiManager;->setLogOff()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1339
    goto :goto_0

    .line 1337
    :catch_0
    move-exception v0

    .line 1338
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1340
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist setLogOn(JLjava/lang/String;)V
    .locals 1
    .param p1, "size"    # J
    .param p3, "param"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1321
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/net/wifi/IOplusWifiManager;->setLogOn(JLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1324
    goto :goto_0

    .line 1322
    :catch_0
    move-exception v0

    .line 1323
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1325
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist setNetworkCaptiveState(Z)V
    .locals 0
    .param p1, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1766
    return-void
.end method

.method public whitelist setP2pPowerSave(Z)V
    .locals 1
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 989
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IOplusWifiManager;->setP2pPowerSave(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 992
    goto :goto_0

    .line 990
    :catch_0
    move-exception v0

    .line 991
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 993
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist setPasspointCertifiedState(Ljava/lang/String;)Z
    .locals 2
    .param p1, "signature"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 552
    const/4 v0, 0x0

    .line 554
    .local v0, "state":Z
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IOplusWifiManager;->setPasspointCertifiedState(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 557
    goto :goto_0

    .line 555
    :catch_0
    move-exception v1

    .line 556
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 558
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public blacklist setSlaAppState(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 193
    const/4 v0, 0x0

    .line 195
    .local v0, "success":Z
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IOplusWifiManager;->setSlaAppState(Ljava/lang/String;Z)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 198
    goto :goto_0

    .line 196
    :catch_0
    move-exception v1

    .line 197
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 199
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public whitelist setSnifferParamWithUdp(IIZZZI)I
    .locals 8
    .param p1, "freq"    # I
    .param p2, "bandWidth"    # I
    .param p3, "hT40Above"    # Z
    .param p4, "discardDataBody"    # Z
    .param p5, "discardMgmtBody"    # Z
    .param p6, "filter"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1487
    const/4 v0, -0x1

    .line 1489
    .local v0, "ret":I
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Landroid/net/wifi/IOplusWifiManager;->setSnifferParamWithUdp(IIZZZI)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1492
    goto :goto_0

    .line 1490
    :catch_0
    move-exception v1

    .line 1491
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1493
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public whitelist setToWifiSnifferMode(Z)I
    .locals 3
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1442
    const/4 v0, -0x1

    .line 1444
    .local v0, "ret":I
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Landroid/net/wifi/IOplusWifiManager;->setToWifiSnifferMode(ZZ)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1447
    goto :goto_0

    .line 1445
    :catch_0
    move-exception v1

    .line 1446
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1448
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public whitelist setToWifiSnifferMode(ZZ)I
    .locals 2
    .param p1, "enable"    # Z
    .param p2, "restoreWifi"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1461
    const/4 v0, -0x1

    .line 1463
    .local v0, "ret":I
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IOplusWifiManager;->setToWifiSnifferMode(ZZ)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1466
    goto :goto_0

    .line 1464
    :catch_0
    move-exception v1

    .line 1465
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1467
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public blacklist setWifiAssistantPolicies(I)Z
    .locals 2
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1553
    const/4 v0, 0x0

    .line 1555
    .local v0, "ret":Z
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IOplusWifiManager;->setWifiAssistantPolicies(I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1558
    goto :goto_0

    .line 1556
    :catch_0
    move-exception v1

    .line 1557
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1559
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public blacklist setWifiAutoConnectionDisabled(Z)Z
    .locals 3
    .param p1, "disable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1652
    const/4 v0, 0x0

    .line 1654
    .local v0, "state":Z
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IOplusWifiManager;->setWifiAutoConnectionDisabled(Z)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1657
    nop

    .line 1658
    return v0

    .line 1655
    :catch_0
    move-exception v1

    .line 1656
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist setWifiEnabledOnlyForTest(Z)Z
    .locals 2
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1539
    const/4 v0, 0x0

    .line 1541
    .local v0, "ret":Z
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IOplusWifiManager;->setWifiEnabledOnlyForTest(Z)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1544
    goto :goto_0

    .line 1542
    :catch_0
    move-exception v1

    .line 1543
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1545
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public blacklist setWifiRestrictionList(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1611
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 1613
    .local v0, "state":Z
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/net/wifi/IOplusWifiManager;->setWifiRestrictionList(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1616
    nop

    .line 1617
    return v0

    .line 1614
    :catch_0
    move-exception v1

    .line 1615
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist setupFTMdaemon()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 855
    const/4 v0, 0x0

    .line 857
    .local v0, "state":Z
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IOplusWifiManager;->setupFTMdaemon()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 860
    goto :goto_0

    .line 858
    :catch_0
    move-exception v1

    .line 859
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 861
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public blacklist startFTMMode()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 767
    const/4 v0, 0x0

    .line 769
    .local v0, "state":I
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IOplusWifiManager;->startFTMMode()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 772
    goto :goto_0

    .line 770
    :catch_0
    move-exception v1

    .line 771
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 773
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public whitelist startRxSensTest(Landroid/net/wifi/ExtendsWifiConfig;Ljava/lang/String;)Z
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/ExtendsWifiConfig;
    .param p2, "ip"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1738
    const/4 v0, 0x0

    .line 1740
    .local v0, "state":Z
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IOplusWifiManager;->startRxSensTest(Landroid/net/wifi/ExtendsWifiConfig;Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1743
    nop

    .line 1744
    return v0

    .line 1741
    :catch_0
    move-exception v1

    .line 1742
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist startRxSensTest(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Z
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "ip"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1733
    new-instance v0, Landroid/net/wifi/ExtendsWifiConfig;

    invoke-direct {v0, p1}, Landroid/net/wifi/ExtendsWifiConfig;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    .line 1734
    .local v0, "extendConfig":Landroid/net/wifi/ExtendsWifiConfig;
    invoke-virtual {p0, v0, p2}, Landroid/net/wifi/OplusWifiManager;->startRxSensTest(Landroid/net/wifi/ExtendsWifiConfig;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public whitelist startSnifferCaptureWithUdp(I)I
    .locals 2
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1505
    const/4 v0, -0x1

    .line 1507
    .local v0, "ret":I
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IOplusWifiManager;->startSnifferCaptureWithUdp(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1510
    goto :goto_0

    .line 1508
    :catch_0
    move-exception v1

    .line 1509
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1511
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public blacklist startSnifferMode(IIII)I
    .locals 2
    .param p1, "channel"    # I
    .param p2, "bandwidth"    # I
    .param p3, "maxPacketNum"    # I
    .param p4, "maxPacketSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 730
    const/4 v0, 0x0

    .line 732
    .local v0, "state":I
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/net/wifi/IOplusWifiManager;->startSnifferMode(IIII)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 735
    goto :goto_0

    .line 733
    :catch_0
    move-exception v1

    .line 734
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 736
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public blacklist stopFTMMode()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 778
    const/4 v0, 0x0

    .line 780
    .local v0, "state":I
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IOplusWifiManager;->stopFTMMode()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 783
    goto :goto_0

    .line 781
    :catch_0
    move-exception v1

    .line 782
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 784
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public whitelist stopRxSensTest()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1749
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IOplusWifiManager;->stopRxSensTest()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1752
    nop

    .line 1753
    return-void

    .line 1750
    :catch_0
    move-exception v0

    .line 1751
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist stopSnifferCaptureWithUdp()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1522
    const/4 v0, -0x1

    .line 1524
    .local v0, "ret":I
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IOplusWifiManager;->stopSnifferCaptureWithUdp()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1527
    goto :goto_0

    .line 1525
    :catch_0
    move-exception v1

    .line 1526
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1528
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public blacklist stopSnifferMode()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 743
    const/4 v0, 0x0

    .line 745
    .local v0, "state":I
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IOplusWifiManager;->stopSnifferMode()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 748
    goto :goto_0

    .line 746
    :catch_0
    move-exception v1

    .line 747
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 749
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public whitelist suspendFWKPeriodicScan(I)Z
    .locals 3
    .param p1, "disableInterval"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1146
    const/4 v0, 0x0

    .line 1148
    .local v0, "ret":Z
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IOplusWifiManager;->suspendFWKPeriodicScan(I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1151
    goto :goto_0

    .line 1149
    :catch_0
    move-exception v1

    .line 1150
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1152
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "suspendFWKPeriodicScan called: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusWifiManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    return v0
.end method

.method public blacklist tryToRestoreWifiSetting()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1366
    const/4 v0, -0x1

    .line 1368
    .local v0, "result":I
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IOplusWifiManager;->tryToRestoreWifiSetting()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1371
    goto :goto_0

    .line 1369
    :catch_0
    move-exception v1

    .line 1370
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1372
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public blacklist updateGlobalId(ILjava/lang/String;)V
    .locals 1
    .param p1, "itemId"    # I
    .param p2, "globalId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 403
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v0, p1, p2}, Landroid/net/wifi/IOplusWifiManager;->updateGlobalId(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    goto :goto_0

    .line 404
    :catch_0
    move-exception v0

    .line 405
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 407
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist wifiLoadDriver(Z)Z
    .locals 2
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 909
    const/4 v0, 0x0

    .line 911
    .local v0, "state":Z
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/OplusWifiManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IOplusWifiManager;->wifiLoadDriver(Z)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 914
    goto :goto_0

    .line 912
    :catch_0
    move-exception v1

    .line 913
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 915
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method
