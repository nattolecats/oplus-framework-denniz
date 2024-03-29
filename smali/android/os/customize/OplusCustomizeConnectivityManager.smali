.class public Landroid/os/customize/OplusCustomizeConnectivityManager;
.super Ljava/lang/Object;
.source "OplusCustomizeConnectivityManager.java"


# static fields
.field private static final blacklist SERVICE_NAME:Ljava/lang/String; = "OplusCustomizeConnectivityManagerService"

.field private static final blacklist TAG:Ljava/lang/String; = "OplusCustomizeConnectivityManager"

.field public static final whitelist WLAN_POLICY_DEFAULT:I = 0x2

.field public static final whitelist WLAN_POLICY_FORCE_OFF:I = 0x0

.field public static final whitelist WLAN_POLICY_FORCE_ON:I = 0x5

.field public static final whitelist WLAN_POLICY_OFF:I = 0x3

.field public static final whitelist WLAN_POLICY_OFF_WITH_SCAN:I = 0x1

.field public static final whitelist WLAN_POLICY_ON:I = 0x4

.field public static final whitelist WLAN_POLICY_STRING_DEFAULT:Ljava/lang/String; = "2"

.field public static final whitelist WLAN_POLICY_STRING_FORCE_OFF:Ljava/lang/String; = "0"

.field public static final whitelist WLAN_POLICY_STRING_FORCE_ON:Ljava/lang/String; = "5"

.field public static final whitelist WLAN_POLICY_STRING_OFF:Ljava/lang/String; = "3"

.field public static final whitelist WLAN_POLICY_STRING_OFF_WITH_SCAN:Ljava/lang/String; = "1"

.field public static final whitelist WLAN_POLICY_STRING_ON:Ljava/lang/String; = "4"

.field private static final blacklist mLock:Ljava/lang/Object;

.field private static final blacklist mServiceLock:Ljava/lang/Object;

.field private static volatile blacklist sInstance:Landroid/os/customize/OplusCustomizeConnectivityManager;


# instance fields
.field private blacklist mOplusCustomizeConnectivityManagerServiceService:Landroid/os/customize/IOplusCustomizeConnectivityManagerService;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/customize/OplusCustomizeConnectivityManager;->mLock:Ljava/lang/Object;

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/customize/OplusCustomizeConnectivityManager;->mServiceLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeConnectivityManager;->getOplusCustomizeConnectivityManagerService()Landroid/os/customize/IOplusCustomizeConnectivityManagerService;

    .line 56
    return-void
.end method

.method public static final whitelist getInstance(Landroid/content/Context;)Landroid/os/customize/OplusCustomizeConnectivityManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 59
    sget-object v0, Landroid/os/customize/OplusCustomizeConnectivityManager;->sInstance:Landroid/os/customize/OplusCustomizeConnectivityManager;

    if-nez v0, :cond_1

    .line 60
    sget-object v0, Landroid/os/customize/OplusCustomizeConnectivityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 61
    :try_start_0
    sget-object v1, Landroid/os/customize/OplusCustomizeConnectivityManager;->sInstance:Landroid/os/customize/OplusCustomizeConnectivityManager;

    if-nez v1, :cond_0

    .line 62
    new-instance v1, Landroid/os/customize/OplusCustomizeConnectivityManager;

    invoke-direct {v1}, Landroid/os/customize/OplusCustomizeConnectivityManager;-><init>()V

    sput-object v1, Landroid/os/customize/OplusCustomizeConnectivityManager;->sInstance:Landroid/os/customize/OplusCustomizeConnectivityManager;

    .line 64
    :cond_0
    sget-object v1, Landroid/os/customize/OplusCustomizeConnectivityManager;->sInstance:Landroid/os/customize/OplusCustomizeConnectivityManager;

    monitor-exit v0

    return-object v1

    .line 65
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 67
    :cond_1
    sget-object v0, Landroid/os/customize/OplusCustomizeConnectivityManager;->sInstance:Landroid/os/customize/OplusCustomizeConnectivityManager;

    return-object v0
.end method

.method private blacklist getOplusCustomizeConnectivityManagerService()Landroid/os/customize/IOplusCustomizeConnectivityManagerService;
    .locals 3

    .line 71
    sget-object v0, Landroid/os/customize/OplusCustomizeConnectivityManager;->mServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 72
    :try_start_0
    iget-object v1, p0, Landroid/os/customize/OplusCustomizeConnectivityManager;->mOplusCustomizeConnectivityManagerServiceService:Landroid/os/customize/IOplusCustomizeConnectivityManagerService;

    if-nez v1, :cond_0

    .line 73
    invoke-static {}, Landroid/os/customize/OplusCustomizeManager;->getInstance()Landroid/os/customize/OplusCustomizeManager;

    move-result-object v1

    const-string v2, "OplusCustomizeConnectivityManagerService"

    invoke-virtual {v1, v2}, Landroid/os/customize/OplusCustomizeManager;->getDeviceManagerServiceByName(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/customize/IOplusCustomizeConnectivityManagerService;

    move-result-object v1

    iput-object v1, p0, Landroid/os/customize/OplusCustomizeConnectivityManager;->mOplusCustomizeConnectivityManagerServiceService:Landroid/os/customize/IOplusCustomizeConnectivityManagerService;

    .line 75
    :cond_0
    iget-object v1, p0, Landroid/os/customize/OplusCustomizeConnectivityManager;->mOplusCustomizeConnectivityManagerServiceService:Landroid/os/customize/IOplusCustomizeConnectivityManagerService;

    monitor-exit v0

    return-object v1

    .line 76
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public whitelist addBluetoothDevicesToBlackLists(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 176
    .local p1, "devices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeConnectivityManager;->getOplusCustomizeConnectivityManagerService()Landroid/os/customize/IOplusCustomizeConnectivityManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService;->addBluetoothDevicesToBlackLists(Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeConnectivityManager"

    const-string v2, "addBluetoothDevicesToBlackLists fail!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist addBluetoothDevicesToWhiteLists(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 139
    .local p1, "devices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeConnectivityManager;->getOplusCustomizeConnectivityManagerService()Landroid/os/customize/IOplusCustomizeConnectivityManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService;->addBluetoothDevicesToWhiteLists(Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeConnectivityManager"

    const-string v2, "addBluetoothDevicesToWhiteLists fail!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getBluetoothDevicesFromBlackLists()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 194
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeConnectivityManager;->getOplusCustomizeConnectivityManagerService()Landroid/os/customize/IOplusCustomizeConnectivityManagerService;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService;->getBluetoothDevicesFromBlackLists()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeConnectivityManager"

    const-string v2, "getBluetoothDevicesFromBlackLists fail!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method

.method public whitelist getBluetoothDevicesFromWhiteLists()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 157
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeConnectivityManager;->getOplusCustomizeConnectivityManagerService()Landroid/os/customize/IOplusCustomizeConnectivityManagerService;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService;->getBluetoothDevicesFromWhiteLists()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeConnectivityManager"

    const-string v2, "getBluetoothDevicesFromWhiteLists fail!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method

.method public whitelist getBluetoothPolicies()I
    .locals 3

    .line 120
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeConnectivityManager;->getOplusCustomizeConnectivityManagerService()Landroid/os/customize/IOplusCustomizeConnectivityManagerService;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService;->getBluetoothPolicies()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeConnectivityManager"

    const-string v2, "getBluetoothPolicies fail!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const/4 v1, 0x2

    return v1
.end method

.method public whitelist getDevicePosition(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 550
    const-string v0, "OplusCustomizeConnectivityManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeConnectivityManager;->getOplusCustomizeConnectivityManagerService()Landroid/os/customize/IOplusCustomizeConnectivityManagerService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService;->getDevicePosition(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 553
    :catch_0
    move-exception v1

    .line 554
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVoiceDisabled Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 551
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 552
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "setVoiceDisabled"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 555
    .end local v1    # "e":Landroid/os/RemoteException;
    nop

    .line 556
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSecurityLevel()I
    .locals 3

    .line 303
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeConnectivityManager;->getOplusCustomizeConnectivityManagerService()Landroid/os/customize/IOplusCustomizeConnectivityManagerService;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService;->getSecurityLevel()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSecurityLevel Error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusCustomizeConnectivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getWifiApPolicies()I
    .locals 5

    .line 406
    const-string v0, "OplusCustomizeConnectivityManager"

    const/4 v1, 0x0

    .line 409
    .local v1, "result":I
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeConnectivityManager;->getOplusCustomizeConnectivityManagerService()Landroid/os/customize/IOplusCustomizeConnectivityManagerService;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService;->getWifiApPolicies()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 414
    :goto_0
    goto :goto_1

    .line 412
    :catch_0
    move-exception v2

    .line 413
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWifiApPolicies Error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 410
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 411
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "getWifiApPolicies"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 416
    :goto_1
    return v1
.end method

.method public whitelist getWifiMacAddress()Ljava/lang/String;
    .locals 4

    .line 497
    const-string v0, "getWifiMacAddress"

    const-string v1, "OplusCustomizeConnectivityManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeConnectivityManager;->getOplusCustomizeConnectivityManagerService()Landroid/os/customize/IOplusCustomizeConnectivityManagerService;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService;->getWifiMacAddress()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 500
    :catch_0
    move-exception v2

    .line 501
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 498
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 499
    .local v2, "e":Landroid/os/RemoteException;
    invoke-static {v1, v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 502
    .end local v2    # "e":Landroid/os/RemoteException;
    nop

    .line 503
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getWifiRestrictionList(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 267
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeConnectivityManager;->getOplusCustomizeConnectivityManagerService()Landroid/os/customize/IOplusCustomizeConnectivityManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService;->getWifiRestrictionList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWifiRestrictionList Error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusCustomizeConnectivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getWlanApClientBlackList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 442
    const-string v0, "getWlanApClientBlackList"

    const-string v1, "OplusCustomizeConnectivityManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeConnectivityManager;->getOplusCustomizeConnectivityManagerService()Landroid/os/customize/IOplusCustomizeConnectivityManagerService;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService;->getWlanApClientBlackList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 445
    :catch_0
    move-exception v2

    .line 446
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 443
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 444
    .local v2, "e":Landroid/os/RemoteException;
    invoke-static {v1, v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 447
    .end local v2    # "e":Landroid/os/RemoteException;
    nop

    .line 448
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getWlanApClientWhiteList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 426
    const-string v0, "getWlanApWhiteList"

    const-string v1, "OplusCustomizeConnectivityManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeConnectivityManager;->getOplusCustomizeConnectivityManagerService()Landroid/os/customize/IOplusCustomizeConnectivityManagerService;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService;->getWlanApClientWhiteList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 429
    :catch_0
    move-exception v2

    .line 430
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 427
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 428
    .local v2, "e":Landroid/os/RemoteException;
    invoke-static {v1, v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 431
    .end local v2    # "e":Landroid/os/RemoteException;
    nop

    .line 432
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getWlanConfiguration()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 485
    const-string v0, "getWlanConfiguration"

    const-string v1, "OplusCustomizeConnectivityManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeConnectivityManager;->getOplusCustomizeConnectivityManagerService()Landroid/os/customize/IOplusCustomizeConnectivityManagerService;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService;->getWlanConfiguration()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 488
    :catch_0
    move-exception v2

    .line 489
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 486
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 487
    .local v2, "e":Landroid/os/RemoteException;
    invoke-static {v1, v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 490
    .end local v2    # "e":Landroid/os/RemoteException;
    nop

    .line 491
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getWlanPolicies(Landroid/content/ComponentName;)I
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 606
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeConnectivityManager;->getOplusCustomizeConnectivityManagerService()Landroid/os/customize/IOplusCustomizeConnectivityManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService;->getWlanPolicies(Landroid/content/ComponentName;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 607
    :catch_0
    move-exception v0

    .line 608
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeConnectivityManager"

    const-string v2, "getWlanPolicies fail!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 609
    const/4 v1, 0x2

    return v1
.end method

.method public whitelist isBlackListedDevice(Ljava/lang/String;)Z
    .locals 3
    .param p1, "device"    # Ljava/lang/String;

    .line 185
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeConnectivityManager;->getOplusCustomizeConnectivityManagerService()Landroid/os/customize/IOplusCustomizeConnectivityManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService;->isBlackListedDevice(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeConnectivityManager"

    const-string v2, "isBlackListedDevice fail!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist isGPSDisabled(Landroid/content/ComponentName;)Z
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 539
    const-string v0, "OplusCustomizeConnectivityManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeConnectivityManager;->getOplusCustomizeConnectivityManagerService()Landroid/os/customize/IOplusCustomizeConnectivityManagerService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService;->isGPSDisabled(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 542
    :catch_0
    move-exception v1

    .line 543
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVoiceDisabled Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 540
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 541
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "setVoiceDisabled"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 544
    .end local v1    # "e":Landroid/os/RemoteException;
    nop

    .line 545
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isGPSTurnOn(Landroid/content/ComponentName;)Z
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 518
    const-string v0, "OplusCustomizeConnectivityManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeConnectivityManager;->getOplusCustomizeConnectivityManagerService()Landroid/os/customize/IOplusCustomizeConnectivityManagerService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService;->isGPSTurnOn(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 521
    :catch_0
    move-exception v1

    .line 522
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVoiceDisabled Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 519
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 520
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "setVoiceDisabled"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 523
    .end local v1    # "e":Landroid/os/RemoteException;
    nop

    .line 524
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isNetworkSettingsResetDisabled()Z
    .locals 5

    .line 644
    const-string v0, "OplusCustomizeConnectivityManager"

    const/4 v1, 0x0

    .line 646
    .local v1, "result":Z
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeConnectivityManager;->getOplusCustomizeConnectivityManagerService()Landroid/os/customize/IOplusCustomizeConnectivityManagerService;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService;->isNetworkSettingsResetDisabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 651
    :goto_0
    goto :goto_1

    .line 649
    :catch_0
    move-exception v2

    .line 650
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isNetworkSettingsResetDisabled Error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 647
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 648
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "isNetworkSettingsResetDisabled"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 652
    :goto_1
    return v1
.end method

.method public whitelist isUnSecureSoftApDisabled()Z
    .locals 5

    .line 582
    const-string v0, "isUnSecureSoftApDisabled"

    const-string v1, "OplusCustomizeConnectivityManager"

    const/4 v2, 0x0

    .line 585
    .local v2, "result":Z
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeConnectivityManager;->getOplusCustomizeConnectivityManagerService()Landroid/os/customize/IOplusCustomizeConnectivityManagerService;

    move-result-object v3

    invoke-interface {v3}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService;->isUnSecureSoftApDisabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v0

    .line 590
    :goto_0
    goto :goto_1

    .line 588
    :catch_0
    move-exception v3

    .line 589
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 586
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 587
    .local v3, "e":Landroid/os/RemoteException;
    invoke-static {v1, v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v3    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 592
    :goto_1
    return v2
.end method

.method public whitelist isUserProfilesDisabled()Z
    .locals 5

    .line 102
    const-string v0, "OplusCustomizeConnectivityManager"

    const/4 v1, 0x0

    .line 105
    .local v1, "result":Z
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeConnectivityManager;->getOplusCustomizeConnectivityManagerService()Landroid/os/customize/IOplusCustomizeConnectivityManagerService;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService;->isUserProfilesDisabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 110
    :goto_0
    goto :goto_1

    .line 108
    :catch_0
    move-exception v2

    .line 109
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isUserProfilesDisabled Error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 106
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 107
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "isUserProfilesDisabled"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 112
    :goto_1
    return v1
.end method

.method public whitelist isWhiteListedDevice(Ljava/lang/String;)Z
    .locals 3
    .param p1, "device"    # Ljava/lang/String;

    .line 148
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeConnectivityManager;->getOplusCustomizeConnectivityManagerService()Landroid/os/customize/IOplusCustomizeConnectivityManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService;->isWhiteListedDevice(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeConnectivityManager"

    const-string v2, "isWhiteListedDevice fail!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist isWifiApDisabled()Z
    .locals 5

    .line 333
    const-string v0, "OplusCustomizeConnectivityManager"

    const/4 v1, 0x0

    .line 336
    .local v1, "result":Z
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeConnectivityManager;->getOplusCustomizeConnectivityManagerService()Landroid/os/customize/IOplusCustomizeConnectivityManagerService;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService;->isWifiApDisabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 341
    :goto_0
    goto :goto_1

    .line 339
    :catch_0
    move-exception v2

    .line 340
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isWifiApDisabled Error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 337
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 338
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "isWifiApDisabled"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 343
    :goto_1
    return v1
.end method

.method public whitelist isWifiAutoConnectionDisabled()Z
    .locals 3

    .line 285
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeConnectivityManager;->getOplusCustomizeConnectivityManagerService()Landroid/os/customize/IOplusCustomizeConnectivityManagerService;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService;->isWifiAutoConnectionDisabled()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 286
    :catch_0
    move-exception v0

    .line 287
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isWifiAutoConnectionDisabled Error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusCustomizeConnectivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isWifiEditDisabled()Z
    .locals 5

    .line 234
    const-string v0, "OplusCustomizeConnectivityManager"

    const/4 v1, 0x0

    .line 237
    .local v1, "result":Z
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeConnectivityManager;->getOplusCustomizeConnectivityManagerService()Landroid/os/customize/IOplusCustomizeConnectivityManagerService;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService;->isWifiEditDisabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 242
    :goto_0
    goto :goto_1

    .line 240
    :catch_0
    move-exception v2

    .line 241
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isWifiEditDisabled Error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 238
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 239
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "isWifiEditDisabled"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 244
    :goto_1
    return v1
.end method

.method public whitelist isWifiP2pDisabled()Z
    .locals 5

    .line 370
    const-string v0, "OplusCustomizeConnectivityManager"

    const/4 v1, 0x0

    .line 373
    .local v1, "result":Z
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeConnectivityManager;->getOplusCustomizeConnectivityManagerService()Landroid/os/customize/IOplusCustomizeConnectivityManagerService;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService;->isWifiP2pDisabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 378
    :goto_0
    goto :goto_1

    .line 376
    :catch_0
    move-exception v2

    .line 377
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isWifiP2pDisabled Error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 374
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 375
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "isWifiP2pDisabled"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 380
    :goto_1
    return v1
.end method

.method public whitelist isWlanForceDisabled()Z
    .locals 3

    .line 624
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeConnectivityManager;->getOplusCustomizeConnectivityManagerService()Landroid/os/customize/IOplusCustomizeConnectivityManagerService;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService;->isWlanForceDisabled()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 625
    :catch_0
    move-exception v0

    .line 626
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeConnectivityManager"

    const-string v2, "isWlanForceDisabled fail!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 627
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist isWlanForceEnabled()Z
    .locals 3

    .line 615
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeConnectivityManager;->getOplusCustomizeConnectivityManagerService()Landroid/os/customize/IOplusCustomizeConnectivityManagerService;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService;->isWlanForceEnabled()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 616
    :catch_0
    move-exception v0

    .line 617
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeConnectivityManager"

    const-string v2, "isWlanForceEnabled fail!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 618
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist removeBluetoothDevicesFromBlackLists(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 203
    .local p1, "devices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeConnectivityManager;->getOplusCustomizeConnectivityManagerService()Landroid/os/customize/IOplusCustomizeConnectivityManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService;->removeBluetoothDevicesFromBlackLists(Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeConnectivityManager"

    const-string v2, "removeBluetoothDevicesFromBlackLists fail!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist removeBluetoothDevicesFromWhiteLists(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 166
    .local p1, "devices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeConnectivityManager;->getOplusCustomizeConnectivityManagerService()Landroid/os/customize/IOplusCustomizeConnectivityManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService;->removeBluetoothDevicesFromWhiteLists(Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeConnectivityManager"

    const-string v2, "getBluetoothDevicesFromWhiteLists fail!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist removeFromRestrictionList(Ljava/util/List;Ljava/lang/String;)Z
    .locals 3
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 258
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeConnectivityManager;->getOplusCustomizeConnectivityManagerService()Landroid/os/customize/IOplusCustomizeConnectivityManagerService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService;->removeFromRestrictionList(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 259
    :catch_0
    move-exception v0

    .line 260
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeFromRestrictionList Error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusCustomizeConnectivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist removeWlanApClientBlackList(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 470
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeConnectivityManager;->getOplusCustomizeConnectivityManagerService()Landroid/os/customize/IOplusCustomizeConnectivityManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService;->removeWlanApClientBlackList(Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 471
    :catch_0
    move-exception v0

    .line 472
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeWlanApClientBlackList Error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusCustomizeConnectivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setBluetoothPolicies(I)Z
    .locals 3
    .param p1, "paramInt"    # I

    .line 129
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeConnectivityManager;->getOplusCustomizeConnectivityManagerService()Landroid/os/customize/IOplusCustomizeConnectivityManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService;->setBluetoothPolicies(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeConnectivityManager"

    const-string v2, "setBluetoothPolicies fail!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist setGPSDisabled(Landroid/content/ComponentName;Z)V
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    .line 529
    const-string v0, "OplusCustomizeConnectivityManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeConnectivityManager;->getOplusCustomizeConnectivityManagerService()Landroid/os/customize/IOplusCustomizeConnectivityManagerService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService;->setGPSDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 532
    :catch_0
    move-exception v1

    .line 533
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVoiceDisabled Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 530
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 531
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "setVoiceDisabled"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 534
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 535
    :goto_1
    return-void
.end method

.method public whitelist setNetworkSettingsResetDisabled(Z)Z
    .locals 5
    .param p1, "disabled"    # Z

    .line 632
    const-string v0, "OplusCustomizeConnectivityManager"

    const/4 v1, 0x0

    .line 634
    .local v1, "result":Z
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeConnectivityManager;->getOplusCustomizeConnectivityManagerService()Landroid/os/customize/IOplusCustomizeConnectivityManagerService;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService;->setNetworkSettingsResetDisabled(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 639
    :goto_0
    goto :goto_1

    .line 637
    :catch_0
    move-exception v2

    .line 638
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setNetworkSettingsResetDisabled Error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 635
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 636
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "setNetworkSettingsResetDisabled"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 640
    :goto_1
    return v1
.end method

.method public whitelist setSecurityLevel(I)Z
    .locals 3
    .param p1, "level"    # I

    .line 294
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeConnectivityManager;->getOplusCustomizeConnectivityManagerService()Landroid/os/customize/IOplusCustomizeConnectivityManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService;->setSecurityLevel(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 295
    :catch_0
    move-exception v0

    .line 296
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSecurityLevel Error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusCustomizeConnectivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setUnSecureSoftApDisabled(Z)Z
    .locals 5
    .param p1, "disable"    # Z

    .line 564
    const-string v0, "OplusCustomizeConnectivityManager"

    const/4 v1, 0x0

    .line 567
    .local v1, "result":Z
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeConnectivityManager;->getOplusCustomizeConnectivityManagerService()Landroid/os/customize/IOplusCustomizeConnectivityManagerService;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService;->setUnSecureSoftApDisabled(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 572
    :goto_0
    goto :goto_1

    .line 570
    :catch_0
    move-exception v2

    .line 571
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setUnSecureSoftApDisabled Error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 568
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 569
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "setUnSecureSoftApDisabled"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 574
    :goto_1
    return v1
.end method

.method public whitelist setUserProfilesDisabled(Z)Z
    .locals 5
    .param p1, "disable"    # Z

    .line 84
    const-string v0, "OplusCustomizeConnectivityManager"

    const/4 v1, 0x0

    .line 87
    .local v1, "result":Z
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeConnectivityManager;->getOplusCustomizeConnectivityManagerService()Landroid/os/customize/IOplusCustomizeConnectivityManagerService;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService;->setUserProfilesDisabled(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 92
    :goto_0
    goto :goto_1

    .line 90
    :catch_0
    move-exception v2

    .line 91
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setUserProfilesDisabled Error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 88
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 89
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "setUserProfilesDisabled"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 94
    :goto_1
    return v1
.end method

.method public whitelist setWifiApDisabled(Z)Z
    .locals 5
    .param p1, "disable"    # Z

    .line 315
    const-string v0, "OplusCustomizeConnectivityManager"

    const/4 v1, 0x0

    .line 318
    .local v1, "result":Z
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeConnectivityManager;->getOplusCustomizeConnectivityManagerService()Landroid/os/customize/IOplusCustomizeConnectivityManagerService;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService;->setWifiApDisabled(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 323
    :goto_0
    goto :goto_1

    .line 321
    :catch_0
    move-exception v2

    .line 322
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setWifiApDisabled Error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 319
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 320
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "setWifiApDisabled"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 325
    :goto_1
    return v1
.end method

.method public whitelist setWifiApPolicies(I)Z
    .locals 5
    .param p1, "level"    # I

    .line 388
    const-string v0, "OplusCustomizeConnectivityManager"

    const/4 v1, 0x0

    .line 391
    .local v1, "result":Z
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeConnectivityManager;->getOplusCustomizeConnectivityManagerService()Landroid/os/customize/IOplusCustomizeConnectivityManagerService;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService;->setWifiApPolicies(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 396
    :goto_0
    goto :goto_1

    .line 394
    :catch_0
    move-exception v2

    .line 395
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setWifiApPolicies Error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 392
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 393
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "setWifiApPolicies"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 398
    :goto_1
    return v1
.end method

.method public whitelist setWifiAutoConnectionDisabled(Z)Z
    .locals 3
    .param p1, "disable"    # Z

    .line 276
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeConnectivityManager;->getOplusCustomizeConnectivityManagerService()Landroid/os/customize/IOplusCustomizeConnectivityManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService;->setWifiAutoConnectionDisabled(Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWifiAutoConnectionDisabled Error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusCustomizeConnectivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setWifiEditDisabled(Z)Z
    .locals 5
    .param p1, "disable"    # Z

    .line 216
    const-string v0, "OplusCustomizeConnectivityManager"

    const/4 v1, 0x0

    .line 219
    .local v1, "result":Z
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeConnectivityManager;->getOplusCustomizeConnectivityManagerService()Landroid/os/customize/IOplusCustomizeConnectivityManagerService;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService;->setWifiEditDisabled(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 224
    :goto_0
    goto :goto_1

    .line 222
    :catch_0
    move-exception v2

    .line 223
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setWifiEditDisabled Error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 220
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 221
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "setWifiEditDisabled"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 226
    :goto_1
    return v1
.end method

.method public whitelist setWifiP2pDisabled(Z)Z
    .locals 5
    .param p1, "disable"    # Z

    .line 352
    const-string v0, "OplusCustomizeConnectivityManager"

    const/4 v1, 0x0

    .line 355
    .local v1, "result":Z
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeConnectivityManager;->getOplusCustomizeConnectivityManagerService()Landroid/os/customize/IOplusCustomizeConnectivityManagerService;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService;->setWifiP2pDisabled(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 360
    :goto_0
    goto :goto_1

    .line 358
    :catch_0
    move-exception v2

    .line 359
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setWifiP2pDisabled Error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 356
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 357
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "setWifiP2pDisabled"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 362
    :goto_1
    return v1
.end method

.method public whitelist setWifiRestrictionList(Ljava/util/List;Ljava/lang/String;)Z
    .locals 3
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 249
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeConnectivityManager;->getOplusCustomizeConnectivityManagerService()Landroid/os/customize/IOplusCustomizeConnectivityManagerService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService;->setWifiRestrictionList(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWifiRestrictionList Error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusCustomizeConnectivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setWlanApClientBlackList(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 457
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeConnectivityManager;->getOplusCustomizeConnectivityManagerService()Landroid/os/customize/IOplusCustomizeConnectivityManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService;->setWlanApClientBlackList(Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 458
    :catch_0
    move-exception v0

    .line 459
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWlanApClientBlackList Error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusCustomizeConnectivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setWlanPolicies(Landroid/content/ComponentName;I)Z
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "mode"    # I

    .line 597
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeConnectivityManager;->getOplusCustomizeConnectivityManagerService()Landroid/os/customize/IOplusCustomizeConnectivityManagerService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService;->setWlanPolicies(Landroid/content/ComponentName;I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 598
    :catch_0
    move-exception v0

    .line 599
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeConnectivityManager"

    const-string v2, "setWlanPolicies fail!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 600
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist turnOnGPS(Landroid/content/ComponentName;Z)V
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "on"    # Z

    .line 508
    const-string v0, "OplusCustomizeConnectivityManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeConnectivityManager;->getOplusCustomizeConnectivityManagerService()Landroid/os/customize/IOplusCustomizeConnectivityManagerService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService;->turnOnGPS(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 511
    :catch_0
    move-exception v1

    .line 512
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVoiceDisabled Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 509
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 510
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "setVoiceDisabled"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 513
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 514
    :goto_1
    return-void
.end method
