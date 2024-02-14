.class public Landroid/os/customize/OplusCustomizeRestrictionManager;
.super Ljava/lang/Object;
.source "OplusCustomizeRestrictionManager.java"


# static fields
.field public static final whitelist AIRPLANE_POLICY_NO_RESTRICTIONS:I = 0x2

.field public static final whitelist AIRPLANE_POLICY_OFF:I = 0x3

.field public static final whitelist AIRPLANE_POLICY_OFF_FORCE:I = 0x0

.field public static final whitelist AIRPLANE_POLICY_ON:I = 0x4

.field public static final whitelist AIRPLANE_POLICY_ON_FORCE:I = 0x1

.field private static final blacklist SERVICE_NAME:Ljava/lang/String; = "OplusCustomizeRestrictionManagerService"

.field private static final blacklist TAG:Ljava/lang/String; = "OplusCustomizeRestrictionManager"

.field private static final blacklist mLock:Ljava/lang/Object;

.field private static final blacklist mServiceLock:Ljava/lang/Object;

.field private static volatile blacklist sInstance:Landroid/os/customize/OplusCustomizeRestrictionManager;


# instance fields
.field private blacklist mOplusCustomizeRestrictionManagerService:Landroid/os/customize/IOplusCustomizeRestrictionManagerService;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/customize/OplusCustomizeRestrictionManager;->mLock:Ljava/lang/Object;

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/customize/OplusCustomizeRestrictionManager;->mServiceLock:Ljava/lang/Object;

    .line 45
    const/4 v0, 0x0

    sput-object v0, Landroid/os/customize/OplusCustomizeRestrictionManager;->sInstance:Landroid/os/customize/OplusCustomizeRestrictionManager;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/customize/OplusCustomizeRestrictionManager;->mOplusCustomizeRestrictionManagerService:Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    .line 48
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    .line 49
    return-void
.end method

.method public static final whitelist getInstance(Landroid/content/Context;)Landroid/os/customize/OplusCustomizeRestrictionManager;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 52
    sget-object v0, Landroid/os/customize/OplusCustomizeRestrictionManager;->sInstance:Landroid/os/customize/OplusCustomizeRestrictionManager;

    if-nez v0, :cond_1

    .line 53
    sget-object v0, Landroid/os/customize/OplusCustomizeRestrictionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 54
    :try_start_0
    sget-object v1, Landroid/os/customize/OplusCustomizeRestrictionManager;->sInstance:Landroid/os/customize/OplusCustomizeRestrictionManager;

    if-nez v1, :cond_0

    .line 55
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "sInstance is null, start a new sInstance"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    new-instance v1, Landroid/os/customize/OplusCustomizeRestrictionManager;

    invoke-direct {v1}, Landroid/os/customize/OplusCustomizeRestrictionManager;-><init>()V

    sput-object v1, Landroid/os/customize/OplusCustomizeRestrictionManager;->sInstance:Landroid/os/customize/OplusCustomizeRestrictionManager;

    .line 58
    :cond_0
    sget-object v1, Landroid/os/customize/OplusCustomizeRestrictionManager;->sInstance:Landroid/os/customize/OplusCustomizeRestrictionManager;

    monitor-exit v0

    return-object v1

    .line 59
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 61
    :cond_1
    sget-object v0, Landroid/os/customize/OplusCustomizeRestrictionManager;->sInstance:Landroid/os/customize/OplusCustomizeRestrictionManager;

    return-object v0
.end method

.method private blacklist getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;
    .locals 3

    .line 65
    sget-object v0, Landroid/os/customize/OplusCustomizeRestrictionManager;->mServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 66
    :try_start_0
    iget-object v1, p0, Landroid/os/customize/OplusCustomizeRestrictionManager;->mOplusCustomizeRestrictionManagerService:Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    if-nez v1, :cond_0

    .line 67
    invoke-static {}, Landroid/os/customize/OplusCustomizeManager;->getInstance()Landroid/os/customize/OplusCustomizeManager;

    move-result-object v1

    const-string v2, "OplusCustomizeRestrictionManagerService"

    invoke-virtual {v1, v2}, Landroid/os/customize/OplusCustomizeManager;->getDeviceManagerServiceByName(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v1

    iput-object v1, p0, Landroid/os/customize/OplusCustomizeRestrictionManager;->mOplusCustomizeRestrictionManagerService:Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    .line 70
    :cond_0
    iget-object v1, p0, Landroid/os/customize/OplusCustomizeRestrictionManager;->mOplusCustomizeRestrictionManagerService:Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    if-nez v1, :cond_1

    .line 71
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "mOplusCustomizeRestrictionManagerService is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_1
    iget-object v1, p0, Landroid/os/customize/OplusCustomizeRestrictionManager;->mOplusCustomizeRestrictionManagerService:Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    monitor-exit v0

    return-object v1

    .line 75
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public whitelist addAppInstallPackageBlacklist(ILjava/util/List;)V
    .locals 3
    .param p1, "pattern"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 177
    .local p2, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "OplusCustomizeRestrictionManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->addAppInstallPackageBlacklist(ILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 180
    :catch_0
    move-exception v1

    .line 181
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "addAppInstallPackageBlacklist exception: "

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 178
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 179
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "addAppInstallPackageBlacklist"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 182
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 183
    :goto_1
    return-void
.end method

.method public whitelist addAppInstallPackageWhitelist(ILjava/util/List;)V
    .locals 3
    .param p1, "pattern"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 187
    .local p2, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "OplusCustomizeRestrictionManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->addAppInstallPackageWhitelist(ILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 190
    :catch_0
    move-exception v1

    .line 191
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "addAppInstallPackageWhitelist exception: "

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 188
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 189
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "addAppInstallPackageWhitelist"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 192
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 193
    :goto_1
    return-void
.end method

.method public whitelist addDisallowedClearDataCacheApps(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1700
    .local p1, "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "OplusCustomizeRestrictionManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->addDisallowedClearDataCacheApps(Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1703
    :catch_0
    move-exception v1

    .line 1704
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addDisallowedClearDataCacheApps Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1701
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 1702
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "addDisallowedClearDataCacheApps RemoteException Error"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1705
    .end local v1    # "e":Landroid/os/RemoteException;
    nop

    .line 1706
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist allowWifiCellularNetwork(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 4
    .param p1, "compName"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 946
    const/4 v0, 0x0

    .line 948
    .local v0, "result":Z
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->allowWifiCellularNetwork(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 952
    goto :goto_0

    .line 949
    :catch_0
    move-exception v1

    .line 950
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "OplusCustomizeRestrictionManager"

    const-string v3, "allowWifiCellularNetwork error!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public whitelist applyQSRestriction(Ljava/lang/String;I)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # I

    .line 591
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->applyQSRestriction(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 594
    goto :goto_0

    .line 592
    :catch_0
    move-exception v0

    .line 593
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "applyQSRestriction Error "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 595
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public whitelist disableQSRestriction(Ljava/lang/String;I)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # I

    .line 599
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->disableQSRestriction(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 602
    goto :goto_0

    .line 600
    :catch_0
    move-exception v0

    .line 601
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "applyQSRestriction Error "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 603
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public blacklist disableWifiSar()Z
    .locals 3

    .line 2039
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->disableWifiSar()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2040
    :catch_0
    move-exception v0

    .line 2041
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "disableWifiSar error: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2044
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAirplanePolices(Landroid/content/ComponentName;)I
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 1075
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->getAirplanePolices(Landroid/content/ComponentName;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1076
    :catch_0
    move-exception v0

    .line 1077
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "getAirplanePolices error!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1079
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getAppInstallPackageList(I)Ljava/util/List;
    .locals 4
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 163
    const-string v0, "OplusCustomizeRestrictionManager"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 166
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->getAppInstallPackageList(I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 171
    :goto_0
    goto :goto_1

    .line 169
    :catch_0
    move-exception v2

    .line 170
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getAppInstalledPackageList exception: "

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 167
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 168
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "getAppInstalledPackageList"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 172
    :goto_1
    return-object v1
.end method

.method public whitelist getAppInstallRestrictionPolicies()I
    .locals 4

    .line 150
    const-string v0, "OplusCustomizeRestrictionManager"

    const/4 v1, 0x0

    .line 153
    .local v1, "mode":I
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->getAppInstallRestrictionPolicies()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 158
    :goto_0
    goto :goto_1

    .line 156
    :catch_0
    move-exception v2

    .line 157
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "addInstallPackageBlacklist exception: "

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 154
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 155
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "addInstallPackageBlacklist"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 159
    :goto_1
    return v1
.end method

.method public whitelist getAppUninstallationPackageList(I)Ljava/util/List;
    .locals 5
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 406
    const-string v0, "OplusCustomizeRestrictionManager"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 408
    .local v1, "packagelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->getAppUninstallationPackageList(I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 413
    :goto_0
    goto :goto_1

    .line 411
    :catch_0
    move-exception v2

    .line 412
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAppUninstallationPolicies Error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 409
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 410
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "getAppUninstallationPolicies"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 414
    :goto_1
    return-object v1
.end method

.method public whitelist getAppUninstallationPolicies()I
    .locals 4

    .line 418
    const-string v0, "OplusCustomizeRestrictionManager"

    const/4 v1, 0x0

    .line 420
    .local v1, "mode":I
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->getAppUninstallationPolicies()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 425
    :goto_0
    goto :goto_1

    .line 423
    :catch_0
    move-exception v2

    .line 424
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getAppUninstallationPolicies exception: "

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 421
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 422
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "getAppUninstallationPolicies"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 426
    :goto_1
    return v1
.end method

.method public whitelist getApplicationDisabledInLauncherOrRecentTask(I)Ljava/util/List;
    .locals 3
    .param p1, "flag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1036
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->getApplicationDisabledInLauncherOrRecentTask(I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1037
    :catch_0
    move-exception v0

    .line 1038
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "getApplicationDisabledInLauncherOrRecentTask fail!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1039
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getBluetoothDisabledProfiles()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 848
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->getBluetoothDisabledProfiles()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 849
    :catch_0
    move-exception v0

    .line 850
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "getBluetoothDisabledProfiles fail!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method

.method public whitelist getCameraPolicies()I
    .locals 3

    .line 967
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->getCameraPolicies()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 968
    :catch_0
    move-exception v0

    .line 969
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "getCameraPolicies fail!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 970
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getClipboardStatus()Z
    .locals 4

    .line 130
    const-string v0, "getClipboardStatus Error"

    const-string v1, "OplusCustomizeRestrictionManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->getClipboardStatus()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 133
    :catch_0
    move-exception v2

    .line 134
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

    .line 131
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 132
    .local v2, "e":Landroid/os/RemoteException;
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .end local v2    # "e":Landroid/os/RemoteException;
    nop

    .line 136
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist getDefaultDataCard(Landroid/content/ComponentName;)I
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 83
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->getDefaultDataCard(Landroid/content/ComponentName;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "getDefaultDataCard fail!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getDisallowedClearDataCacheApps()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1722
    const-string v0, "OplusCustomizeRestrictionManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->getDisallowedClearDataCacheApps()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1725
    :catch_0
    move-exception v1

    .line 1726
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDisallowedClearDataCacheApps Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1723
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 1724
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "getDisallowedClearDataCacheApps RemoteException Error"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1727
    .end local v1    # "e":Landroid/os/RemoteException;
    nop

    .line 1728
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public whitelist getFileSharedDisabled()Z
    .locals 3

    .line 652
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->getFileSharedDisabled()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 653
    :catch_0
    move-exception v0

    .line 654
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFileSharedDisabled Error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusCustomizeRestrictionManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getForbidRecordScreenState()Z
    .locals 5

    .line 385
    const-string v0, "getForbidRecordScreenState Error"

    const-string v1, "OplusCustomizeRestrictionManager"

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v3

    invoke-interface {v3}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->getForbidRecordScreenState()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 389
    :catch_0
    move-exception v3

    .line 390
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

    .line 391
    return v2

    .line 386
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 387
    .local v3, "e":Landroid/os/RemoteException;
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    return v2
.end method

.method public whitelist getGpsPolicies(Landroid/content/ComponentName;)I
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 1305
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->getGpsPolicies(Landroid/content/ComponentName;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1306
    :catch_0
    move-exception v0

    .line 1307
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "getQSRestrictionState Error"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1309
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getLocalBluetoothAddress()Ljava/lang/String;
    .locals 4

    .line 1851
    const-string v0, "00:00:00:00:00:00"

    .line 1853
    .local v0, "result":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->getLocalBluetoothAddress()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1854
    :catch_0
    move-exception v1

    .line 1855
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "OplusCustomizeRestrictionManager"

    const-string v3, "getLocalBluetoothAddress error"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1857
    .end local v1    # "e":Landroid/os/RemoteException;
    return-object v0
.end method

.method public whitelist getLocalBtRandomAddress()Ljava/lang/String;
    .locals 4

    .line 1861
    const-string v0, "00:00:00:00:00:00"

    .line 1863
    .local v0, "result":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->getLocalBtRandomAddress()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1864
    :catch_0
    move-exception v1

    .line 1865
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "OplusCustomizeRestrictionManager"

    const-string v3, "getLocalBtRandomAddress error"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1867
    .end local v1    # "e":Landroid/os/RemoteException;
    return-object v0
.end method

.method public whitelist getMobileDataMode(Landroid/content/ComponentName;)I
    .locals 4
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 934
    const/4 v0, -0x1

    .line 936
    .local v0, "result":I
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->getMobileDataMode(Landroid/content/ComponentName;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 940
    goto :goto_0

    .line 937
    :catch_0
    move-exception v1

    .line 938
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "OplusCustomizeRestrictionManager"

    const-string v3, "getMobileDataMode error!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public whitelist getNfcPolicies(Landroid/content/ComponentName;)I
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 918
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->getNfcPolicies(Landroid/content/ComponentName;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 919
    :catch_0
    move-exception v0

    .line 920
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "getNfcPolicies fail!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 921
    const/4 v1, 0x2

    return v1
.end method

.method public whitelist getPasswordExpirationTimeout(Landroid/content/ComponentName;)J
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 1651
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->getPasswordExpirationTimeout(Landroid/content/ComponentName;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 1652
    :catch_0
    move-exception v0

    .line 1653
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "getPasswordExpirationTimeout fail!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1655
    .end local v0    # "e":Ljava/lang/Exception;
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist getPasswordNumSequenceMaxLength()I
    .locals 3

    .line 1219
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->getPasswordNumSequenceMaxLength()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1220
    :catch_0
    move-exception v0

    .line 1221
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "getPasswordNumSequenceMaxLength fail!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1223
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getPasswordRepeatMaxLength()I
    .locals 3

    .line 1201
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->getPasswordRepeatMaxLength()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1202
    :catch_0
    move-exception v0

    .line 1203
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "getPasswordRepeatMaxLength fail!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1205
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getPowerDisable()Z
    .locals 3

    .line 1287
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->getPowerDisable()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1288
    :catch_0
    move-exception v0

    .line 1289
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "getPowerDisable error: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1291
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getQSRestrictionState(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "state"    # I

    .line 616
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->getQSRestrictionState(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 617
    :catch_0
    move-exception v0

    .line 618
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "getQSRestrictionState Error"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 620
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getQSRestrictionValue(Ljava/lang/String;)I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 607
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->getQSRestrictionValue(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 608
    :catch_0
    move-exception v0

    .line 609
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "getQSRestrictionValue Error"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 611
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist getRequiredStrongAuthTime(Landroid/content/ComponentName;)J
    .locals 6
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 360
    const-string v0, "OplusCustomizeRestrictionManager"

    const-wide/16 v1, 0x0

    .line 362
    .local v1, "timeoutMs":J
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->getRequiredStrongAuthTime(Landroid/content/ComponentName;)J

    move-result-wide v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v1, v3

    .line 367
    :goto_0
    goto :goto_1

    .line 365
    :catch_0
    move-exception v3

    .line 366
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRequiredStrongAuthTime Error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 363
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 364
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "getRequiredStrongAuthTime"

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v3    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 368
    :goto_1
    return-wide v1
.end method

.method public whitelist getSideBarPolicies(Landroid/content/ComponentName;)I
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 1608
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->getSideBarPolicies(Landroid/content/ComponentName;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1609
    :catch_0
    move-exception v0

    .line 1610
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "getSideBarPolicies Error"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1612
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getSlot1DataConnectivityDisabled(Landroid/content/ComponentName;)I
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 100
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->getSlot1DataConnectivityDisabled(Landroid/content/ComponentName;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "getSlot1DataConnectivityDisabled fail!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    const/4 v1, -0x1

    return v1
.end method

.method public whitelist getSlot2DataConnectivityDisabled(Landroid/content/ComponentName;)I
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 109
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->getSlot2DataConnectivityDisabled(Landroid/content/ComponentName;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "getSlot2DataConnectivityDisabled fail!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    const/4 v1, -0x1

    return v1
.end method

.method public whitelist getSplitScreenDisable(Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 1093
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->getSplitScreenDisable(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1094
    :catch_0
    move-exception v0

    .line 1095
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "getSplitScreenDisable error!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1096
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getSystemUpdatePolicies(Landroid/content/ComponentName;)I
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 1548
    const/4 v0, -0x1

    .line 1550
    .local v0, "result":I
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->getSystemUpdatePolicies(Landroid/content/ComponentName;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1553
    goto :goto_0

    .line 1551
    :catch_0
    move-exception v1

    .line 1552
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "OplusCustomizeRestrictionManager"

    const-string v3, "getSystemUpdatePolicies fail!"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1554
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public whitelist getTorchPolicies()I
    .locals 3

    .line 985
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->getTorchPolicies()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 986
    :catch_0
    move-exception v0

    .line 987
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "getTorchPolicies fail!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 988
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getUnlockByFacePolicies(Landroid/content/ComponentName;)I
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 1147
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->getUnlockByFacePolicies(Landroid/content/ComponentName;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1148
    :catch_0
    move-exception v0

    .line 1149
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "getUnlockByFacePolicies fail!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1150
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getUnlockByFingerprintPolicies(Landroid/content/ComponentName;)I
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 1129
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->getUnlockByFingerprintPolicies(Landroid/content/ComponentName;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1130
    :catch_0
    move-exception v0

    .line 1131
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "getUnlockByFingerprintPolicies fail!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1132
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getUserPasswordPolicies(Landroid/content/ComponentName;)I
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 1111
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->getUserPasswordPolicies(Landroid/content/ComponentName;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1112
    :catch_0
    move-exception v0

    .line 1113
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "getUserPasswordPolicies fail!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1114
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getWifiAssistantPolicies(Landroid/content/ComponentName;)I
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 1908
    const-string v0, "getWifiAssistantPolicies fail!"

    const-string v1, "OplusCustomizeRestrictionManager"

    const/4 v2, -0x1

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->getWifiAssistantPolicies(Landroid/content/ComponentName;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1912
    :catch_0
    move-exception v3

    .line 1913
    .local v3, "e":Landroid/os/RemoteException;
    invoke-static {v1, v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1914
    return v2

    .line 1909
    .end local v3    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 1910
    .local v3, "e":Ljava/lang/SecurityException;
    invoke-static {v1, v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1911
    return v2
.end method

.method public blacklist getWifiSarPwrDbm()F
    .locals 4

    .line 1956
    const/high16 v0, -0x40800000    # -1.0f

    .line 1958
    .local v0, "fPwrDbm":F
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->getWifiSarPwrDbm()F

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1959
    :catch_0
    move-exception v1

    .line 1960
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "OplusCustomizeRestrictionManager"

    const-string v3, "getWifiSarPwrDbm error: "

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1962
    .end local v1    # "e":Landroid/os/RemoteException;
    return v0
.end method

.method public blacklist getWifiSarPwrMw()F
    .locals 4

    .line 1976
    const/high16 v0, -0x40800000    # -1.0f

    .line 1978
    .local v0, "fPwrMw":F
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->getWifiSarPwrMw()F

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1979
    :catch_0
    move-exception v1

    .line 1980
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "OplusCustomizeRestrictionManager"

    const-string v3, "getWifiSarPwrMw error: "

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1983
    .end local v1    # "e":Landroid/os/RemoteException;
    return v0
.end method

.method public whitelist getWlanAllowListWithoutScanLimit(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1884
    const-string v0, "getWlanAllowListWithoutScanLimit fail!"

    const-string v1, "OplusCustomizeRestrictionManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->getWlanAllowListWithoutScanLimit(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1888
    :catch_0
    move-exception v2

    .line 1889
    .local v2, "e":Landroid/os/RemoteException;
    invoke-static {v1, v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1890
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 1885
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 1886
    .local v2, "e":Ljava/lang/SecurityException;
    invoke-static {v1, v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1887
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public whitelist isAdbDisabled(Landroid/content/ComponentName;)Z
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 1494
    const/4 v0, 0x0

    .line 1496
    .local v0, "result":Z
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->isAdbDisabled(Landroid/content/ComponentName;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1499
    goto :goto_0

    .line 1497
    :catch_0
    move-exception v1

    .line 1498
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "OplusCustomizeRestrictionManager"

    const-string v3, "isAdbDisabled fail!"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1500
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public whitelist isAndroidAnimationDisabled()Z
    .locals 4

    .line 1678
    const-string v0, "OplusCustomizeRestrictionManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->isAndroidAnimationDisabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1681
    :catch_0
    move-exception v1

    .line 1682
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAndroidAnimationDisabled Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1679
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 1680
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "isAndroidAnimationDisabled fail!"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1683
    .end local v1    # "e":Landroid/os/RemoteException;
    nop

    .line 1684
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isAndroidBeamDisabled(Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 900
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->isAndroidBeamDisabled(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 901
    :catch_0
    move-exception v0

    .line 902
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "isAndroidBeamDisabled fail!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 903
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist isAppInCustomVoipRecordList(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pakageName"    # Ljava/lang/String;

    .line 1634
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->isAppInCustomVoipRecordList(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1635
    :catch_0
    move-exception v0

    .line 1636
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAppInCustomVoipRecordList Error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusCustomizeRestrictionManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isAppLockDisabled()Z
    .locals 3

    .line 1743
    const-string v0, "OplusCustomizeRestrictionManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->isAppLockDisabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1746
    :catch_0
    move-exception v1

    .line 1747
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "isAppLockDisabled error: "

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1744
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 1745
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "isAppLockDisabled RemoteException Error"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1748
    .end local v1    # "e":Landroid/os/RemoteException;
    nop

    .line 1749
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isBackButtonDisabled()Z
    .locals 3

    .line 1270
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->isBackButtonDisabled()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1271
    :catch_0
    move-exception v0

    .line 1272
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "isBackButtonDisabled error: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1274
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isBiometricDisabled()Z
    .locals 4

    .line 287
    const-string v0, "isBiometricDisabled Error"

    const-string v1, "OplusCustomizeRestrictionManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->isBiometricDisabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 290
    :catch_0
    move-exception v2

    .line 291
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

    .line 288
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 289
    .local v2, "e":Landroid/os/RemoteException;
    invoke-static {v1, v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 292
    .end local v2    # "e":Landroid/os/RemoteException;
    nop

    .line 293
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isBluetoothDataTransferDisabled()Z
    .locals 3

    .line 810
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->isBluetoothDataTransferDisabled()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 811
    :catch_0
    move-exception v0

    .line 812
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "isBluetoothDataTransferDisable fail!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist isBluetoothDisabled()Z
    .locals 3

    .line 693
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->isBluetoothDisabled()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 694
    :catch_0
    move-exception v0

    .line 695
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "isBluetoothDisabled fail!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist isBluetoothEnabled()Z
    .locals 3

    .line 716
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->isBluetoothEnabled()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 717
    :catch_0
    move-exception v0

    .line 718
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "isBluetoothDisabled fail!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist isBluetoothOutGoingCallDisabled()Z
    .locals 3

    .line 791
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->isBluetoothOutGoingCallDisabled()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 792
    :catch_0
    move-exception v0

    .line 793
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "isBluetoothOutGoingCallDisabled fail!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist isBluetoothPairingDisabled()Z
    .locals 3

    .line 772
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->isBluetoothPairingDisabled()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 773
    :catch_0
    move-exception v0

    .line 774
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "isBluetoothPairingDisabled fail!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist isBluetoothRandomEnabled()Z
    .locals 3

    .line 1843
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->isBluetoothRandomEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1844
    :catch_0
    move-exception v0

    .line 1845
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "isLongPressVolumeUpDisabled error: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1847
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isBluetoothTetheringDisabled()Z
    .locals 3

    .line 829
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->isBluetoothTetheringDisabled()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 830
    :catch_0
    move-exception v0

    .line 831
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "isBluetoothTetheringDisabled fail!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist isChangePictorialDisabled(Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 1625
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->isChangePictorialDisabled(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1626
    :catch_0
    move-exception v0

    .line 1627
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "isChangePictorialDisabled fail!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1628
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist isChangeWallpaperDisabled(Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 1002
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->isChangeWallpaperDisabled(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1003
    :catch_0
    move-exception v0

    .line 1004
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "isChangeWallpaperDisabled fail!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1005
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist isCustomizeDozeModeDisabled()Z
    .locals 3

    .line 1809
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->isCustomizeDozeModeDisabled()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1810
    :catch_0
    move-exception v0

    .line 1811
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "isCustomizeDozeModeDisabled fail!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1813
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isDataRoamingDisabled()Z
    .locals 3

    .line 582
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->isDataRoamingDisabled()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 583
    :catch_0
    move-exception v0

    .line 584
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "isDataRoamingDisabled fail!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 585
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist isDataSyncDisabled()Z
    .locals 4

    .line 1568
    const/4 v0, 0x0

    .line 1570
    .local v0, "result":Z
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->isDataSyncDisabled()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1573
    goto :goto_0

    .line 1571
    :catch_0
    move-exception v1

    .line 1572
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "OplusCustomizeRestrictionManager"

    const-string v3, "isDataSyncDisabled fail!"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1574
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public whitelist isDiscoverableDisabled()Z
    .locals 3

    .line 735
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->isDiscoverableDisabled()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 736
    :catch_0
    move-exception v0

    .line 737
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "isDiscoverableDisabled fail!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist isEchoPasswordDisabled()Z
    .locals 4

    .line 1368
    const-string v0, "OplusCustomizeRestrictionManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->isEchoPasswordDisabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1371
    :catch_0
    move-exception v1

    .line 1372
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEchoPasswordDisabled Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1369
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 1370
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "isEchoPasswordDisabled fail!"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1373
    .end local v1    # "e":Landroid/os/RemoteException;
    nop

    .line 1374
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isExternalStorageDisabled()Z
    .locals 4

    .line 308
    const-string v0, "isExternalStorageDisabled Error"

    const-string v1, "OplusCustomizeRestrictionManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->isExternalStorageDisabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 311
    :catch_0
    move-exception v2

    .line 312
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

    .line 309
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 310
    .local v2, "e":Landroid/os/RemoteException;
    invoke-static {v1, v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 313
    .end local v2    # "e":Landroid/os/RemoteException;
    nop

    .line 314
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isFindMyPhoneDisabled()Z
    .locals 3

    .line 1766
    const-string v0, "OplusCustomizeRestrictionManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->isFindMyPhoneDisabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1769
    :catch_0
    move-exception v1

    .line 1770
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "isFindMyPhoneDisabled Error exception: "

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1767
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 1768
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "isFindMyPhoneDisabled RemoteException Error"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1771
    .end local v1    # "e":Landroid/os/RemoteException;
    nop

    .line 1772
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isFloatTaskDisabled(Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 529
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->isFloatTaskDisabled(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 530
    :catch_0
    move-exception v0

    .line 531
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "isTaskButtonDisabled error!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 532
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist isHomeButtonDisabled()Z
    .locals 3

    .line 1253
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->isHomeButtonDisabled()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1254
    :catch_0
    move-exception v0

    .line 1255
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "isHomeButtonDisabled error: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1257
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isLanguageChangeDisabled(Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 1323
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->isLanguageChangeDisabled(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1324
    :catch_0
    move-exception v0

    .line 1325
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "setLanguageChangeDisabled error!"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1328
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isLimitedDiscoverableDisabled()Z
    .locals 3

    .line 753
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->isLimitedDiscoverableDisabled()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 754
    :catch_0
    move-exception v0

    .line 755
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "isLimitedDiscoverableDisabled fail!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist isLongPressLauncherDisabled()Z
    .locals 3

    .line 1530
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->isLongPressLauncherDisabled()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1531
    :catch_0
    move-exception v0

    .line 1532
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "isLongPressLauncherDisabled error: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1534
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isLongPressVolumeUpDisabled()Z
    .locals 3

    .line 1825
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->isLongPressVolumeUpDisabled()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1826
    :catch_0
    move-exception v0

    .line 1827
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "isLongPressVolumeUpDisabled error: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1829
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isMmsDisabled()Z
    .locals 4

    .line 1402
    const-string v0, "OplusCustomizeRestrictionManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->isMmsDisabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1405
    :catch_0
    move-exception v1

    .line 1406
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isMmsDisabled Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1403
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 1404
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "isMmsDisabled"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1407
    .end local v1    # "e":Landroid/os/RemoteException;
    nop

    .line 1408
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isMmsSendReceiveDisabled()Z
    .locals 4

    .line 1435
    const-string v0, "OplusCustomizeRestrictionManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->isMmsSendReceiveDisabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1438
    :catch_0
    move-exception v1

    .line 1439
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isMmsSendReceiveDisabled Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1436
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 1437
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "isMmsSendReceiveDisabled"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1440
    .end local v1    # "e":Landroid/os/RemoteException;
    nop

    .line 1441
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isMultiAppSupport()Z
    .locals 3

    .line 1045
    const-string v0, "OplusCustomizeRestrictionManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->isMultiAppSupport()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1048
    :catch_0
    move-exception v1

    .line 1049
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "isMultiAppSupport Error exception: "

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1046
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 1047
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "isMultiAppSupport Error"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1050
    .end local v1    # "e":Landroid/os/RemoteException;
    nop

    .line 1051
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isNFCDisabled(Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 865
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->isNFCDisabled(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 866
    :catch_0
    move-exception v0

    .line 867
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "isNFCDisabled fail!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 868
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist isNFCTurnOn(Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 882
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->isNFCTurnOn(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 883
    :catch_0
    move-exception v0

    .line 884
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "isNFCTurnOn fail!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 885
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist isNavigationBarDisabled()Z
    .locals 3

    .line 1513
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->isNavigationBarDisabled()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1514
    :catch_0
    move-exception v0

    .line 1515
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNavigationBarDisabled error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusCustomizeRestrictionManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isNavigationModeRevertible()Z
    .locals 3

    .line 670
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->isNavigationModeRevertible()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 671
    :catch_0
    move-exception v0

    .line 672
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNavigationModeRevertible Error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusCustomizeRestrictionManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist isPowerSavingModeDisabled(Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 546
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->isPowerSavingModeDisabled()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 547
    :catch_0
    move-exception v0

    .line 548
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "isPowerSavingModeDisabled fail!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 549
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist isPrivateSafeDisabled()Z
    .locals 3

    .line 1777
    const-string v0, "OplusCustomizeRestrictionManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->isPrivateSafeDisabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1780
    :catch_0
    move-exception v1

    .line 1781
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "isPrivateSafeDisabled Error exception: "

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1778
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 1779
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "isPrivateSafeDisabled RemoteException Error"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1782
    .end local v1    # "e":Landroid/os/RemoteException;
    nop

    .line 1783
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isSafeModeDisabled()Z
    .locals 3

    .line 247
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->isSafeModeDisabled()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "isSafeModeDisabled error: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 251
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isSettingsApplicationDisabled(Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 1019
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->isSettingsApplicationDisabled(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1020
    :catch_0
    move-exception v0

    .line 1021
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "isSettingsApplicationDisabled fail!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1022
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist isSleepByPowerButtonDisabled(Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 634
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->isSleepByPowerButtonDisabled(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 635
    :catch_0
    move-exception v0

    .line 636
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSleepByPowerButtonDisabled Error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusCustomizeRestrictionManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isSleepStandbyOptimizationDisabled()Z
    .locals 4

    .line 1447
    const-string v0, "OplusCustomizeRestrictionManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->isSleepStandbyOptimizationDisabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1450
    :catch_0
    move-exception v1

    .line 1451
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSleepStandbyOptimizationDisabled Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1448
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 1449
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "isSleepStandbyOptimizationDisabled fail!"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1452
    .end local v1    # "e":Landroid/os/RemoteException;
    nop

    .line 1453
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isSmsReceiveDisabled()Z
    .locals 4

    .line 1413
    const-string v0, "OplusCustomizeRestrictionManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->isSmsReceiveDisabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1416
    :catch_0
    move-exception v1

    .line 1417
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSmsReceiveDisabled Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1414
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 1415
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "isSmsReceiveDisabled"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1418
    .end local v1    # "e":Landroid/os/RemoteException;
    nop

    .line 1419
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isSmsSendDisabled()Z
    .locals 4

    .line 1424
    const-string v0, "OplusCustomizeRestrictionManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->isSmsSendDisabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1427
    :catch_0
    move-exception v1

    .line 1428
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSmsSendDisabled Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1425
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 1426
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "isSmsSendDisabled"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1429
    .end local v1    # "e":Landroid/os/RemoteException;
    nop

    .line 1430
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isSuperPowerSavingModeDisabled()Z
    .locals 3

    .line 564
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->isSuperPowerSavingModeDisabled()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 565
    :catch_0
    move-exception v0

    .line 566
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "isPowerSavingModeDisabled fail!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 567
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist isSwipeUpUnlockDisabled()Z
    .locals 3

    .line 1669
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->isSwipeUpUnlockDisabled()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1670
    :catch_0
    move-exception v0

    .line 1671
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "isSwipeUpUnlockDisabled fail!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1673
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isTaskButtonDisabled()Z
    .locals 3

    .line 1236
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->isTaskButtonDisabled()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1237
    :catch_0
    move-exception v0

    .line 1238
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "isTaskButtonDisabled error: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1240
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isUSBDataDisabled()Z
    .locals 3

    .line 207
    const-string v0, "OplusCustomizeRestrictionManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->isUSBDataDisabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 210
    :catch_0
    move-exception v1

    .line 211
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "isUSBDataDisabled Error exception: "

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 208
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 209
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "isUSBDataDisabled Error"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 212
    .end local v1    # "e":Landroid/os/RemoteException;
    nop

    .line 213
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isUSBFileTransferDisabled()Z
    .locals 3

    .line 228
    const-string v0, "OplusCustomizeRestrictionManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->isUSBFileTransferDisabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 231
    :catch_0
    move-exception v1

    .line 232
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "isUSBFileTransferDisabled Error exception: "

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 229
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 230
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "isUSBFileTransferDisabled Error"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 233
    .end local v1    # "e":Landroid/os/RemoteException;
    nop

    .line 234
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isUSBOtgDisabled()Z
    .locals 4

    .line 266
    const-string v0, "isUSBOtgDisabled Error"

    const-string v1, "OplusCustomizeRestrictionManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->isUSBOtgDisabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 269
    :catch_0
    move-exception v2

    .line 270
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

    .line 267
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 268
    .local v2, "e":Landroid/os/RemoteException;
    invoke-static {v1, v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 271
    .end local v2    # "e":Landroid/os/RemoteException;
    nop

    .line 272
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isUnknownSourceAppInstallDisabled(Landroid/content/ComponentName;)Z
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 1588
    const/4 v0, 0x0

    .line 1590
    .local v0, "result":Z
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->isUnknownSourceAppInstallDisabled(Landroid/content/ComponentName;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1593
    goto :goto_0

    .line 1591
    :catch_0
    move-exception v1

    .line 1592
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "OplusCustomizeRestrictionManager"

    const-string v3, "isUnknownSourceAppInstallDisabled fail!"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1594
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public whitelist isUnlockByFaceDisabled(Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 1183
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->isUnlockByFaceDisabled(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1184
    :catch_0
    move-exception v0

    .line 1185
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "isUnlockByFaceDisabled fail!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1186
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist isUnlockByFingerprintDisabled(Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 1165
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->isUnlockByFingerprintDisabled(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1166
    :catch_0
    move-exception v0

    .line 1167
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "isUnlockByFingerprintDisabled fail!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1168
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist isUsbDebugSwitchDisabled(Landroid/content/ComponentName;)Z
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 1476
    const/4 v0, 0x0

    .line 1478
    .local v0, "result":Z
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->isUsbDebugSwitchDisabled(Landroid/content/ComponentName;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1481
    goto :goto_0

    .line 1479
    :catch_0
    move-exception v1

    .line 1480
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "OplusCustomizeRestrictionManager"

    const-string v3, "isUsbDebugSwitchDisabled fail!"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1482
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public whitelist isUsbTetheringDisabled()Z
    .locals 5

    .line 338
    const-string v0, "OplusCustomizeRestrictionManager"

    const/4 v1, 0x0

    .line 340
    .local v1, "result":Z
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->isUsbTetheringDisabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 345
    :goto_0
    goto :goto_1

    .line 343
    :catch_0
    move-exception v2

    .line 344
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isUsbTetheringDisabled Error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 341
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 342
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "isUsbTetheringDisabled"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 346
    :goto_1
    return v1
.end method

.method public whitelist isVoiceDisabled(Landroid/content/ComponentName;)Z
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 496
    const-string v0, "OplusCustomizeRestrictionManager"

    const/4 v1, 0x0

    .line 498
    .local v1, "result":Z
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->isVoiceDisabled(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 503
    :goto_0
    goto :goto_1

    .line 501
    :catch_0
    move-exception v2

    .line 502
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setVoiceIncomingDisable Error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 499
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 500
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "setVoiceIncomingDisable"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 504
    :goto_1
    return v1
.end method

.method public whitelist isVoiceIncomingDisabled(Landroid/content/ComponentName;I)Z
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "slot"    # I

    .line 464
    const-string v0, "OplusCustomizeRestrictionManager"

    const/4 v1, 0x0

    .line 466
    .local v1, "result":Z
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->isVoiceIncomingDisabled(Landroid/content/ComponentName;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 471
    :goto_0
    goto :goto_1

    .line 469
    :catch_0
    move-exception v2

    .line 470
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isVoiceIncomingDisabled Error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 467
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 468
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "isVoiceIncomingDisabled"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 472
    :goto_1
    return v1
.end method

.method public whitelist isVoiceOutgoingDisabled(Landroid/content/ComponentName;I)Z
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "slot"    # I

    .line 452
    const-string v0, "OplusCustomizeRestrictionManager"

    const/4 v1, 0x0

    .line 454
    .local v1, "result":Z
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->isVoiceOutgoingDisabled(Landroid/content/ComponentName;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 459
    :goto_0
    goto :goto_1

    .line 457
    :catch_0
    move-exception v2

    .line 458
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isVoiceOutgoingDisabled Error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 455
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 456
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "isVoiceOutgoingDisabled"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 460
    :goto_1
    return v1
.end method

.method public whitelist isWifiDisabled(Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 1351
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->isWifiDisabled(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1352
    :catch_0
    move-exception v0

    .line 1353
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "isWifiDisabled fail!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1354
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist isWifiOpen(Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 1333
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->isWifiOpen(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1334
    :catch_0
    move-exception v0

    .line 1335
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "isWifiOpen fail!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1336
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist isWifiRandomMacForceDisable(Landroid/content/ComponentName;)Z
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 1932
    const-string v0, "isWifiRandomMacForceDisable fail!"

    const-string v1, "OplusCustomizeRestrictionManager"

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->isWifiRandomMacForceDisable(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1936
    :catch_0
    move-exception v3

    .line 1937
    .local v3, "e":Landroid/os/RemoteException;
    invoke-static {v1, v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1938
    return v2

    .line 1933
    .end local v3    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 1934
    .local v3, "e":Ljava/lang/SecurityException;
    invoke-static {v1, v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1935
    return v2
.end method

.method public whitelist openCloseNFC(Landroid/content/ComponentName;Z)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "enable"    # Z

    .line 874
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->openCloseNFC(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 877
    goto :goto_0

    .line 875
    :catch_0
    move-exception v0

    .line 876
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "openCloseNFC fail!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 878
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public whitelist removeDisallowedClearDataCacheApps(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1711
    .local p1, "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "OplusCustomizeRestrictionManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->removeDisallowedClearDataCacheApps(Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1714
    :catch_0
    move-exception v1

    .line 1715
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeDisallowedClearDataCacheApps Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1712
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 1713
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "removeDisallowedClearDataCacheApps RemoteException Error"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1716
    .end local v1    # "e":Landroid/os/RemoteException;
    nop

    .line 1717
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setAdbDisabled(Landroid/content/ComponentName;Z)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    .line 1487
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->setAdbDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1490
    goto :goto_0

    .line 1488
    :catch_0
    move-exception v0

    .line 1489
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "setAdbDisabled fail!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1491
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public whitelist setAirplanePolices(Landroid/content/ComponentName;I)Z
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "policy"    # I

    .line 1066
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->setAirplanePolices(Landroid/content/ComponentName;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1067
    :catch_0
    move-exception v0

    .line 1068
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "setAirplanePolices error!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1070
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setAndroidAnimationDisabled(Z)Z
    .locals 4
    .param p1, "disabled"    # Z

    .line 1689
    const-string v0, "OplusCustomizeRestrictionManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->setAndroidAnimationDisabled(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1692
    :catch_0
    move-exception v1

    .line 1693
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAndroidAnimationDisabled Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1690
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 1691
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "setAndroidAnimationDisabled fail!"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1694
    .end local v1    # "e":Landroid/os/RemoteException;
    nop

    .line 1695
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setAndroidBeamDisabled(Landroid/content/ComponentName;Z)Z
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    .line 891
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->setAndroidBeamDisabled(Landroid/content/ComponentName;Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 892
    :catch_0
    move-exception v0

    .line 893
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "setAndroidBeamDisabled fail!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 894
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist setAppInstallRestrictionPolicies(I)V
    .locals 3
    .param p1, "mode"    # I

    .line 141
    const-string v0, "OplusCustomizeRestrictionManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->setAppInstallRestrictionPolicies(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 144
    :catch_0
    move-exception v1

    .line 145
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "addInstallPackageBlacklist exception: "

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 142
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 143
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "addInstallPackageBlacklist"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 147
    :goto_1
    return-void
.end method

.method public whitelist setAppLockDisabled(Z)V
    .locals 3
    .param p1, "disabled"    # Z

    .line 1733
    const-string v0, "OplusCustomizeRestrictionManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->setAppLockDisabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1736
    :catch_0
    move-exception v1

    .line 1737
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "setAppLockDisabled error: "

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1734
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 1735
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "setAppLockDisabled RemoteException Error"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1738
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 1739
    :goto_1
    return-void
.end method

.method public whitelist setAppUninstallationPolicies(ILjava/util/List;)V
    .locals 4
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 397
    .local p2, "appPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "OplusCustomizeRestrictionManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->setAppUninstallationPolicies(ILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 400
    :catch_0
    move-exception v1

    .line 401
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAppUninstallationPolicies Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 398
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 399
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "setAppUninstallationPolicies"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 402
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 403
    :goto_1
    return-void
.end method

.method public whitelist setApplicationDisabledInLauncherOrRecentTask(Ljava/util/List;I)V
    .locals 3
    .param p2, "flag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 1028
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->setApplicationDisabledInLauncherOrRecentTask(Ljava/util/List;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1031
    goto :goto_0

    .line 1029
    :catch_0
    move-exception v0

    .line 1030
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "setApplicationDisabledInLauncherOrRecentTask fail!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1032
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public whitelist setBackButtonDisabled(Z)V
    .locals 3
    .param p1, "disabled"    # Z

    .line 1262
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->setBackButtonDisabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1265
    goto :goto_0

    .line 1263
    :catch_0
    move-exception v0

    .line 1264
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "setBackButtonDisabled error: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1266
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public whitelist setBiometricDisabled(Z)V
    .locals 3
    .param p1, "disabled"    # Z

    .line 277
    const-string v0, "OplusCustomizeRestrictionManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->setBiometricDisabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 280
    :catch_0
    move-exception v1

    .line 281
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "setBiometricDisabled Error exception: "

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 278
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 279
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "setBiometricDisabled Error"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 282
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 283
    :goto_1
    return-void
.end method

.method public whitelist setBluetoothDataTransferDisable(Z)Z
    .locals 3
    .param p1, "isDisable"    # Z

    .line 801
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->setBluetoothDataTransferDisable(Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 802
    :catch_0
    move-exception v0

    .line 803
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "setBluetoothDataTransferDisable fail!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist setBluetoothDisabled(Z)V
    .locals 3
    .param p1, "disabled"    # Z

    .line 682
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->setBluetoothDisabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 685
    goto :goto_0

    .line 683
    :catch_0
    move-exception v0

    .line 684
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "setBluetoothDisabled fail!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public whitelist setBluetoothDisabledProfiles(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 839
    .local p1, "disabledProfiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->setBluetoothDisabledProfiles(Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 840
    :catch_0
    move-exception v0

    .line 841
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "setBluetoothDisabledProfiles fail!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist setBluetoothEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 705
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->setBluetoothEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 708
    goto :goto_0

    .line 706
    :catch_0
    move-exception v0

    .line 707
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "setBluetoothDisabled fail!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public whitelist setBluetoothOutGoingCallDisable(Z)Z
    .locals 3
    .param p1, "isDisable"    # Z

    .line 782
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->setBluetoothOutGoingCallDisable(Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 783
    :catch_0
    move-exception v0

    .line 784
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "setBluetoothOutGoingCallDisable fail!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist setBluetoothPairingDisable(Z)Z
    .locals 3
    .param p1, "isDisable"    # Z

    .line 763
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->setBluetoothPairingDisable(Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 764
    :catch_0
    move-exception v0

    .line 765
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "setBluetoothPairingDisable fail!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist setBluetoothRandomEnabled(Z)Z
    .locals 3
    .param p1, "enable"    # Z

    .line 1834
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->setBluetoothRandomEnabled(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1835
    :catch_0
    move-exception v0

    .line 1836
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "isLongPressVolumeUpDisabled error: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1838
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setBluetoothTetheringDisable(Z)Z
    .locals 3
    .param p1, "disabled"    # Z

    .line 820
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->setBluetoothTetheringDisable(Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 821
    :catch_0
    move-exception v0

    .line 822
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "setBluetoothTetheringDisable fail!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist setCameraPolicies(I)Z
    .locals 3
    .param p1, "mode"    # I

    .line 958
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->setCameraPolicies(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 959
    :catch_0
    move-exception v0

    .line 960
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "setCameraPolicies fail!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 961
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist setChangePictorialDisable(Landroid/content/ComponentName;Z)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    .line 1617
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->setChangePictorialDisable(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1620
    goto :goto_0

    .line 1618
    :catch_0
    move-exception v0

    .line 1619
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "setChangePictorialDisable fail!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1621
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public whitelist setChangeWallpaperDisable(Landroid/content/ComponentName;Z)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    .line 994
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->setChangeWallpaperDisable(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 997
    goto :goto_0

    .line 995
    :catch_0
    move-exception v0

    .line 996
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "setChangeWallpaperDisable fail!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 998
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public whitelist setClipboardEnabled(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .line 120
    const-string v0, "setClipboardEnabled Error"

    const-string v1, "OplusCustomizeRestrictionManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->setClipboardEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 123
    :catch_0
    move-exception v2

    .line 124
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

    goto :goto_1

    .line 121
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 122
    .local v2, "e":Landroid/os/RemoteException;
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 126
    :goto_1
    return-void
.end method

.method public whitelist setCustomizeDozeModeDisabled(Z)Z
    .locals 3
    .param p1, "disabled"    # Z

    .line 1800
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->setCustomizeDozeModeDisabled(Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1801
    :catch_0
    move-exception v0

    .line 1802
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "setCustomizeDozeModeDisabled fail!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1804
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setDataRoamingDisabled(Z)Z
    .locals 3
    .param p1, "disabled"    # Z

    .line 573
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->setDataRoamingDisabled(Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 574
    :catch_0
    move-exception v0

    .line 575
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "setDataRoamingDisabled fail!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 576
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist setDataSyncDisabled(Z)Z
    .locals 4
    .param p1, "disabled"    # Z

    .line 1558
    const/4 v0, 0x0

    .line 1560
    .local v0, "result":Z
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->setDataSyncDisabled(Z)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1563
    goto :goto_0

    .line 1561
    :catch_0
    move-exception v1

    .line 1562
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "OplusCustomizeRestrictionManager"

    const-string v3, "setDataSyncDisabled fail!"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1564
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public whitelist setDefaultDataCard(Landroid/content/ComponentName;I)Landroid/os/Bundle;
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "slot"    # I

    .line 92
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->setDefaultDataCard(Landroid/content/ComponentName;I)Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "setDefaultDataCard fail!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist setDiscoverableDisabled(Z)Z
    .locals 3
    .param p1, "disable"    # Z

    .line 726
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->setDiscoverableDisabled(Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 727
    :catch_0
    move-exception v0

    .line 728
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "setDiscoverableDisabled fail!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist setEchoPasswordDisabled(Z)Z
    .locals 4
    .param p1, "disabled"    # Z

    .line 1379
    const-string v0, "OplusCustomizeRestrictionManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->setEchoPasswordDisabled(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1382
    :catch_0
    move-exception v1

    .line 1383
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setEchoPasswordDisabled Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1380
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 1381
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "setEchoPasswordDisabled fail!"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1384
    .end local v1    # "e":Landroid/os/RemoteException;
    nop

    .line 1385
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setExternalStorageDisabled(Z)V
    .locals 3
    .param p1, "disabled"    # Z

    .line 298
    const-string v0, "OplusCustomizeRestrictionManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->setExternalStorageDisabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 301
    :catch_0
    move-exception v1

    .line 302
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "setExternalStorageDisabled Error exception: "

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 299
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 300
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "setExternalStorageDisabled Error"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 303
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 304
    :goto_1
    return-void
.end method

.method public whitelist setFileSharedDisabled(Z)Z
    .locals 3
    .param p1, "disabled"    # Z

    .line 643
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->setFileSharedDisabled(Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 644
    :catch_0
    move-exception v0

    .line 645
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFileSharedDisabled Error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusCustomizeRestrictionManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setFindMyPhoneDisabled(Z)Z
    .locals 4
    .param p1, "disabled"    # Z

    .line 1753
    const-string v0, "OplusCustomizeRestrictionManager"

    const/4 v1, 0x0

    .line 1755
    .local v1, "result":Z
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->setFindMyPhoneDisabled(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 1760
    :goto_0
    goto :goto_1

    .line 1758
    :catch_0
    move-exception v2

    .line 1759
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setFindMyPhoneDisabled Error exception: "

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1756
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 1757
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "setFindMyPhoneDisabled RemoteException Error"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 1761
    :goto_1
    return v1
.end method

.method public whitelist setFloatTaskDisabled(Landroid/content/ComponentName;Z)Z
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "disable"    # Z

    .line 520
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->setFloatTaskDisabled(Landroid/content/ComponentName;Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 521
    :catch_0
    move-exception v0

    .line 522
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "setTaskButtonDisabled error!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 523
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist setGpsPolicies(Landroid/content/ComponentName;I)Z
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "mode"    # I

    .line 1296
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->setGpsPolicies(Landroid/content/ComponentName;I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1297
    :catch_0
    move-exception v0

    .line 1298
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "setGpsPolicies Error"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1300
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setHomeButtonDisabled(Z)V
    .locals 3
    .param p1, "disabled"    # Z

    .line 1245
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->setHomeButtonDisabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1248
    goto :goto_0

    .line 1246
    :catch_0
    move-exception v0

    .line 1247
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "setHomeButtonDisabled error: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1249
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public whitelist setLanguageChangeDisabled(Landroid/content/ComponentName;Z)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    .line 1314
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->setLanguageChangeDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1318
    goto :goto_0

    .line 1315
    :catch_0
    move-exception v0

    .line 1316
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "setLanguageChangeDisabled error!"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1319
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public whitelist setLimitedDiscoverableDisable(Z)Z
    .locals 3
    .param p1, "disable"    # Z

    .line 744
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->setLimitedDiscoverableDisable(Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 745
    :catch_0
    move-exception v0

    .line 746
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "setLimitedDiscoverableDisable fail!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist setLongPressLauncherDisabled(Z)V
    .locals 3
    .param p1, "disabled"    # Z

    .line 1522
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->setLongPressLauncherDisabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1525
    goto :goto_0

    .line 1523
    :catch_0
    move-exception v0

    .line 1524
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "setLongPressLauncherDisabled error: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1526
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public whitelist setLongPressVolumeUpDisabled(Z)V
    .locals 3
    .param p1, "disabled"    # Z

    .line 1817
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->setLongPressVolumeUpDisabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1820
    goto :goto_0

    .line 1818
    :catch_0
    move-exception v0

    .line 1819
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "setLongPressVolumeUpDisabled error: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1821
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public whitelist setMmsDisabled(Z)V
    .locals 4
    .param p1, "disabled"    # Z

    .line 1392
    const-string v0, "OplusCustomizeRestrictionManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->setMmsDisabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1395
    :catch_0
    move-exception v1

    .line 1396
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMmsDisabled Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1393
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 1394
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "setMmsDisabled"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1397
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 1398
    :goto_1
    return-void
.end method

.method public whitelist setMobileDataMode(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "mode"    # I

    .line 927
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->setMobileDataMode(Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 930
    goto :goto_0

    .line 928
    :catch_0
    move-exception v0

    .line 929
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "setMobileDataMode error!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist setMultiAppSupport(Z)V
    .locals 3
    .param p1, "support"    # Z

    .line 1056
    const-string v0, "OplusCustomizeRestrictionManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->setMultiAppSupport(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1059
    :catch_0
    move-exception v1

    .line 1060
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "setMultiAppSupport Error exception: "

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1057
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 1058
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "setMultiAppSupport Error"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1061
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 1062
    :goto_1
    return-void
.end method

.method public whitelist setNFCDisabled(Landroid/content/ComponentName;Z)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    .line 857
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->setNFCDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 860
    goto :goto_0

    .line 858
    :catch_0
    move-exception v0

    .line 859
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "setNFCDisabled fail!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 861
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public whitelist setNavigationBarDisabled(Z)V
    .locals 3
    .param p1, "disabled"    # Z

    .line 1505
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->setNavigationBarDisabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1508
    goto :goto_0

    .line 1506
    :catch_0
    move-exception v0

    .line 1507
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNavigationBarDisabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusCustomizeRestrictionManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public whitelist setNavigationMode(IZ)Z
    .locals 3
    .param p1, "mode"    # I
    .param p2, "revertible"    # Z

    .line 661
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->setNavigationMode(IZ)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 662
    :catch_0
    move-exception v0

    .line 663
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "setNavigationMode fail!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 664
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist setNfcPolicies(Landroid/content/ComponentName;I)Z
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "mode"    # I

    .line 909
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->setNfcPolicies(Landroid/content/ComponentName;I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 910
    :catch_0
    move-exception v0

    .line 911
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "setNfcPolicies fail!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 912
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist setPasswordExpirationTimeout(Landroid/content/ComponentName;J)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "timeoutMs"    # J

    .line 1643
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->setPasswordExpirationTimeout(Landroid/content/ComponentName;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1646
    goto :goto_0

    .line 1644
    :catch_0
    move-exception v0

    .line 1645
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "setPasswordExpirationTimeout fail!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1647
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public whitelist setPasswordNumSequenceMaxLength(I)Z
    .locals 3
    .param p1, "length"    # I

    .line 1210
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->setPasswordNumSequenceMaxLength(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1211
    :catch_0
    move-exception v0

    .line 1212
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "setPasswordNumSequenceMaxLength fail!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1214
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setPasswordRepeatMaxLength(I)Z
    .locals 3
    .param p1, "length"    # I

    .line 1192
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->setPasswordRepeatMaxLength(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1193
    :catch_0
    move-exception v0

    .line 1194
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "setPasswordRepeatMaxLength fail!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1196
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setPowerDisable(Z)V
    .locals 3
    .param p1, "disabled"    # Z

    .line 1279
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->setPowerDisable(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1282
    goto :goto_0

    .line 1280
    :catch_0
    move-exception v0

    .line 1281
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "setPowerDisable error: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1283
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public whitelist setPowerSavingModeDisabled(Landroid/content/ComponentName;Z)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    .line 538
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->setPowerSavingModeDisabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 541
    goto :goto_0

    .line 539
    :catch_0
    move-exception v0

    .line 540
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "setPowerSavingModeDisabled fail!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 542
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public whitelist setPrivateSafeDisabled(Z)Z
    .locals 4
    .param p1, "disabled"    # Z

    .line 1787
    const-string v0, "OplusCustomizeRestrictionManager"

    const/4 v1, 0x0

    .line 1789
    .local v1, "result":Z
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->setPrivateSafeDisabled(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 1794
    :goto_0
    goto :goto_1

    .line 1792
    :catch_0
    move-exception v2

    .line 1793
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setPrivateSafeDisabled Error exception: "

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1790
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 1791
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "setPrivateSafeDisabled RemoteException Error"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 1795
    :goto_1
    return v1
.end method

.method public whitelist setRequiredStrongAuthTime(Landroid/content/ComponentName;J)V
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "timeoutMs"    # J

    .line 351
    const-string v0, "OplusCustomizeRestrictionManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->setRequiredStrongAuthTime(Landroid/content/ComponentName;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 354
    :catch_0
    move-exception v1

    .line 355
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRequiredStrongAuthTime Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 352
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 353
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "setRequiredStrongAuthTime"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 356
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 357
    :goto_1
    return-void
.end method

.method public whitelist setSafeModeDisabled(Z)V
    .locals 3
    .param p1, "disabled"    # Z

    .line 239
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->setSafeModeDisabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    goto :goto_0

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "setSafeModeDisabled error: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 243
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public whitelist setScreenCaptureDisabled(Z)Z
    .locals 5
    .param p1, "disabled"    # Z

    .line 373
    const-string v0, "enableForbidRecordScreen Error"

    const-string v1, "OplusCustomizeRestrictionManager"

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->setScreenCaptureDisabled(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 377
    :catch_0
    move-exception v3

    .line 378
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

    .line 379
    return v2

    .line 374
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 375
    .local v3, "e":Landroid/os/RemoteException;
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    return v2
.end method

.method public whitelist setSettingsApplicationDisabled(Landroid/content/ComponentName;Z)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    .line 1011
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->setSettingsApplicationDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1014
    goto :goto_0

    .line 1012
    :catch_0
    move-exception v0

    .line 1013
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "setSettingsApplicationDisabled fail!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1015
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public whitelist setSideBarPolicies(Landroid/content/ComponentName;I)Z
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "mode"    # I

    .line 1599
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->setSideBarPolicies(Landroid/content/ComponentName;I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1600
    :catch_0
    move-exception v0

    .line 1601
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "setSideBarPolicies Error"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1603
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setSleepByPowerButtonDisabled(Landroid/content/ComponentName;Z)Z
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    .line 625
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->setSleepByPowerButtonDisabled(Landroid/content/ComponentName;Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 626
    :catch_0
    move-exception v0

    .line 627
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "setSleepByPowerButtonDisabled fail!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 628
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist setSleepStandbyOptimizationDisabled(Z)Z
    .locals 4
    .param p1, "disabled"    # Z

    .line 1458
    const-string v0, "OplusCustomizeRestrictionManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->setSleepStandbyOptimizationDisabled(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1461
    :catch_0
    move-exception v1

    .line 1462
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSleepStandbyOptimizationDisabled Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1459
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 1460
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "setSleepStandbyOptimizationDisabled fail!"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1463
    .end local v1    # "e":Landroid/os/RemoteException;
    nop

    .line 1464
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setSlot1DataConnectivityDisabled(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "val"    # Ljava/lang/String;

    .line 433
    const-string v0, "OplusCustomizeRestrictionManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->setSlot1DataConnectivityDisabled(Landroid/content/ComponentName;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 436
    :catch_0
    move-exception v1

    .line 437
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSlot1DataConnectivityDisabled Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 434
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 435
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "setSlot1DataConnectivityDisabled"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 438
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 439
    :goto_1
    return-void
.end method

.method public whitelist setSlot2DataConnectivityDisabled(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "val"    # Ljava/lang/String;

    .line 443
    const-string v0, "OplusCustomizeRestrictionManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->setSlot2DataConnectivityDisabled(Landroid/content/ComponentName;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 446
    :catch_0
    move-exception v1

    .line 447
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSlot2DataConnectivityDisabled Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 444
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 445
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "setSlot2DataConnectivityDisabled"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 448
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 449
    :goto_1
    return-void
.end method

.method public whitelist setSplitScreenDisable(Landroid/content/ComponentName;Z)Z
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "disable"    # Z

    .line 1084
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->setSplitScreenDisable(Landroid/content/ComponentName;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1085
    :catch_0
    move-exception v0

    .line 1086
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "setSplitScreenDisable error!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1087
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist setSuperPowerSavingModeDisabled(Z)Z
    .locals 3
    .param p1, "disabled"    # Z

    .line 555
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->setSuperPowerSavingModeDisabled(Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 556
    :catch_0
    move-exception v0

    .line 557
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "setPowerSavingModeDisabled fail!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 559
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setSwipeUpUnlockDisabled(Landroid/content/ComponentName;Z)Z
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    .line 1660
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->setSwipeUpUnlockDisabled(Landroid/content/ComponentName;Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1661
    :catch_0
    move-exception v0

    .line 1662
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "setSwipeUpUnlockDisabled fail!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1664
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setSystemUpdatePolicies(Landroid/content/ComponentName;I)Z
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "mode"    # I

    .line 1538
    const/4 v0, 0x0

    .line 1540
    .local v0, "result":Z
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->setSystemUpdatePolicies(Landroid/content/ComponentName;I)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1543
    goto :goto_0

    .line 1541
    :catch_0
    move-exception v1

    .line 1542
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "OplusCustomizeRestrictionManager"

    const-string v3, "setSystemUpdatePolicies fail!"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1544
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public whitelist setTaskButtonDisabled(Z)V
    .locals 3
    .param p1, "disabled"    # Z

    .line 1228
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->setTaskButtonDisabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1231
    goto :goto_0

    .line 1229
    :catch_0
    move-exception v0

    .line 1230
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "setTaskButtonDisabled error: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1232
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public whitelist setTorchPolicies(I)Z
    .locals 3
    .param p1, "mode"    # I

    .line 976
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->setTorchPolicies(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 977
    :catch_0
    move-exception v0

    .line 978
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "setTorchPolicies fail!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 979
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist setUSBDataDisabled(Z)V
    .locals 3
    .param p1, "disabled"    # Z

    .line 197
    const-string v0, "OplusCustomizeRestrictionManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->setUSBDataDisabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 200
    :catch_0
    move-exception v1

    .line 201
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "setUSBDataDisabled Error exception: "

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 198
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 199
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "setUSBDataDisabled Error"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 202
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 203
    :goto_1
    return-void
.end method

.method public whitelist setUSBFileTransferDisabled(Z)V
    .locals 3
    .param p1, "disabled"    # Z

    .line 218
    const-string v0, "OplusCustomizeRestrictionManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->setUSBFileTransferDisabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 221
    :catch_0
    move-exception v1

    .line 222
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "setUSBFileTransferDisabled Error exception: "

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 219
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 220
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "setUSBFileTransferDisabled Error"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 223
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 224
    :goto_1
    return-void
.end method

.method public whitelist setUSBOtgDisabled(Z)V
    .locals 3
    .param p1, "disabled"    # Z

    .line 256
    const-string v0, "OplusCustomizeRestrictionManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->setUSBOtgDisabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 259
    :catch_0
    move-exception v1

    .line 260
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "setUSBOtgDisabled Error exception: "

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 257
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 258
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "setUSBOtgDisabled Error"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 261
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 262
    :goto_1
    return-void
.end method

.method public whitelist setUnknownSourceAppInstallDisabled(Landroid/content/ComponentName;Z)Z
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    .line 1578
    const/4 v0, 0x0

    .line 1580
    .local v0, "result":Z
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->setUnknownSourceAppInstallDisabled(Landroid/content/ComponentName;Z)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1583
    goto :goto_0

    .line 1581
    :catch_0
    move-exception v1

    .line 1582
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "OplusCustomizeRestrictionManager"

    const-string v3, "setUnknownSourceAppInstallDisabled fail!"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1584
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public whitelist setUnlockByFaceDisabled(Landroid/content/ComponentName;Z)Z
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    .line 1174
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->setUnlockByFaceDisabled(Landroid/content/ComponentName;Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1175
    :catch_0
    move-exception v0

    .line 1176
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "setUnlockByFaceDisabled fail!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1177
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist setUnlockByFacePolicies(Landroid/content/ComponentName;I)Z
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "policy"    # I

    .line 1138
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->setUnlockByFacePolicies(Landroid/content/ComponentName;I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1139
    :catch_0
    move-exception v0

    .line 1140
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "setUnlockByFacePolicies fail!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1141
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist setUnlockByFingerprintDisabled(Landroid/content/ComponentName;Z)Z
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    .line 1156
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->setUnlockByFingerprintDisabled(Landroid/content/ComponentName;Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1157
    :catch_0
    move-exception v0

    .line 1158
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "setUnlockByFingerprintDisabled fail!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1159
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist setUnlockByFingerprintPolicies(Landroid/content/ComponentName;I)Z
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "policy"    # I

    .line 1120
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->setUnlockByFingerprintPolicies(Landroid/content/ComponentName;I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1121
    :catch_0
    move-exception v0

    .line 1122
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "setUnlockByFingerprintPolicies fail!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1123
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist setUsbDebugSwitchDisabled(Landroid/content/ComponentName;Z)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    .line 1469
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->setUsbDebugSwitchDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1472
    goto :goto_0

    .line 1470
    :catch_0
    move-exception v0

    .line 1471
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "setUsbDebugSwitchDisabled fail!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1473
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public whitelist setUsbTetheringDisable(Z)V
    .locals 4
    .param p1, "disable"    # Z

    .line 324
    const-string v0, "OplusCustomizeRestrictionManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->setUsbTetheringDisable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 327
    :catch_0
    move-exception v1

    .line 328
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setUsbTetheringDisable Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 325
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 326
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "setUsbTetheringDisable"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 329
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 330
    :goto_1
    return-void
.end method

.method public whitelist setUserPasswordPolicies(Landroid/content/ComponentName;I)Z
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "mode"    # I

    .line 1102
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->setUserPasswordPolicies(Landroid/content/ComponentName;I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1103
    :catch_0
    move-exception v0

    .line 1104
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "setUserPasswordPolicies fail!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1105
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist setVoiceDisabled(Landroid/content/ComponentName;Z)V
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    .line 509
    const-string v0, "OplusCustomizeRestrictionManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->setVoiceDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 512
    :catch_0
    move-exception v1

    .line 513
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

    .line 510
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 511
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "setVoiceDisabled"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 514
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 515
    :goto_1
    return-void
.end method

.method public whitelist setVoiceIncomingDisable(Landroid/content/ComponentName;Z)V
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    .line 487
    const-string v0, "OplusCustomizeRestrictionManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->setVoiceIncomingDisable(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 490
    :catch_0
    move-exception v1

    .line 491
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVoiceIncomingDisable Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 488
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 489
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "setVoiceIncomingDisable"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 492
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 493
    :goto_1
    return-void
.end method

.method public whitelist setVoiceOutgoingDisable(Landroid/content/ComponentName;Z)V
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    .line 477
    const-string v0, "OplusCustomizeRestrictionManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->setVoiceOutgoingDisable(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 480
    :catch_0
    move-exception v1

    .line 481
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVoiceOutgoingDisable Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 478
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 479
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "setVoiceOutgoingDisable"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 482
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 483
    :goto_1
    return-void
.end method

.method public whitelist setWifiAssistantPolicies(Landroid/content/ComponentName;I)Z
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "mode"    # I

    .line 1896
    const-string v0, "setWifiAssistantPolicies fail!"

    const-string v1, "OplusCustomizeRestrictionManager"

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->setWifiAssistantPolicies(Landroid/content/ComponentName;I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1900
    :catch_0
    move-exception v3

    .line 1901
    .local v3, "e":Landroid/os/RemoteException;
    invoke-static {v1, v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1902
    return v2

    .line 1897
    .end local v3    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 1898
    .local v3, "e":Ljava/lang/SecurityException;
    invoke-static {v1, v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1899
    return v2
.end method

.method public whitelist setWifiDisabled(Landroid/content/ComponentName;Z)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    .line 1360
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->setWifiDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1363
    goto :goto_0

    .line 1361
    :catch_0
    move-exception v0

    .line 1362
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "setWifiDisabled error!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist setWifiInBackground(Landroid/content/ComponentName;Z)Z
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "enable"    # Z

    .line 1342
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->setWifiInBackground(Landroid/content/ComponentName;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1343
    :catch_0
    move-exception v0

    .line 1344
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "setWifiInBackground error!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist setWifiRandomMacForceDisable(Landroid/content/ComponentName;Z)Z
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "enable"    # Z

    .line 1920
    const-string v0, "setWifiRandomMacForceDisable fail!"

    const-string v1, "OplusCustomizeRestrictionManager"

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->setWifiRandomMacForceDisable(Landroid/content/ComponentName;Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1924
    :catch_0
    move-exception v3

    .line 1925
    .local v3, "e":Landroid/os/RemoteException;
    invoke-static {v1, v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1926
    return v2

    .line 1921
    .end local v3    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 1922
    .local v3, "e":Ljava/lang/SecurityException;
    invoke-static {v1, v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1923
    return v2
.end method

.method public blacklist setWifiSarPwrDbm(F)Z
    .locals 3
    .param p1, "dbm"    # F

    .line 1998
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->setWifiSarPwrDbm(F)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1999
    :catch_0
    move-exception v0

    .line 2000
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "setWifiSarPwrDbm error: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2003
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setWifiSarPwrMw(F)Z
    .locals 3
    .param p1, "mw"    # F

    .line 2019
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->setWifiSarPwrMw(F)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2020
    :catch_0
    move-exception v0

    .line 2021
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OplusCustomizeRestrictionManager"

    const-string v2, "setWifiSarPwrMw error: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2024
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setWlanAllowListWithoutScanLimit(Landroid/content/ComponentName;Ljava/util/List;)Z
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1872
    .local p2, "allowList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "setWlanAllowListWithoutScanLimit fail!"

    const-string v1, "OplusCustomizeRestrictionManager"

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getOplusCustomizeRestrictionManagerService()Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;->setWlanAllowListWithoutScanLimit(Landroid/content/ComponentName;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1876
    :catch_0
    move-exception v3

    .line 1877
    .local v3, "e":Landroid/os/RemoteException;
    invoke-static {v1, v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1878
    return v2

    .line 1873
    .end local v3    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 1874
    .local v3, "e":Ljava/lang/SecurityException;
    invoke-static {v1, v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1875
    return v2
.end method
