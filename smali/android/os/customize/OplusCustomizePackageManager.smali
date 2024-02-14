.class public Landroid/os/customize/OplusCustomizePackageManager;
.super Ljava/lang/Object;
.source "OplusCustomizePackageManager.java"


# static fields
.field private static final blacklist SERVICE_NAME:Ljava/lang/String; = "OplusCustomizePackageManagerService"

.field private static final blacklist TAG:Ljava/lang/String; = "OplusCustomizePackageManager"

.field private static final blacklist mLock:Ljava/lang/Object;

.field private static final blacklist mServiceLock:Ljava/lang/Object;

.field private static volatile blacklist sInstance:Landroid/os/customize/OplusCustomizePackageManager;


# instance fields
.field private blacklist mIOplusCustomizePackageManagerService:Landroid/os/customize/IOplusCustomizePackageManagerService;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/customize/OplusCustomizePackageManager;->mLock:Ljava/lang/Object;

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/customize/OplusCustomizePackageManager;->mServiceLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizePackageManager;->getOplusCustomizePackageManagerService()Landroid/os/customize/IOplusCustomizePackageManagerService;

    .line 42
    return-void
.end method

.method public static final whitelist getInstance(Landroid/content/Context;)Landroid/os/customize/OplusCustomizePackageManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 45
    sget-object v0, Landroid/os/customize/OplusCustomizePackageManager;->sInstance:Landroid/os/customize/OplusCustomizePackageManager;

    if-nez v0, :cond_1

    .line 46
    sget-object v0, Landroid/os/customize/OplusCustomizePackageManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 47
    :try_start_0
    sget-object v1, Landroid/os/customize/OplusCustomizePackageManager;->sInstance:Landroid/os/customize/OplusCustomizePackageManager;

    if-nez v1, :cond_0

    .line 48
    new-instance v1, Landroid/os/customize/OplusCustomizePackageManager;

    invoke-direct {v1}, Landroid/os/customize/OplusCustomizePackageManager;-><init>()V

    sput-object v1, Landroid/os/customize/OplusCustomizePackageManager;->sInstance:Landroid/os/customize/OplusCustomizePackageManager;

    .line 50
    :cond_0
    sget-object v1, Landroid/os/customize/OplusCustomizePackageManager;->sInstance:Landroid/os/customize/OplusCustomizePackageManager;

    monitor-exit v0

    return-object v1

    .line 51
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 53
    :cond_1
    sget-object v0, Landroid/os/customize/OplusCustomizePackageManager;->sInstance:Landroid/os/customize/OplusCustomizePackageManager;

    return-object v0
.end method

.method private blacklist getOplusCustomizePackageManagerService()Landroid/os/customize/IOplusCustomizePackageManagerService;
    .locals 3

    .line 57
    sget-object v0, Landroid/os/customize/OplusCustomizePackageManager;->mServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 58
    :try_start_0
    iget-object v1, p0, Landroid/os/customize/OplusCustomizePackageManager;->mIOplusCustomizePackageManagerService:Landroid/os/customize/IOplusCustomizePackageManagerService;

    if-nez v1, :cond_0

    .line 59
    invoke-static {}, Landroid/os/customize/OplusCustomizeManager;->getInstance()Landroid/os/customize/OplusCustomizeManager;

    move-result-object v1

    const-string v2, "OplusCustomizePackageManagerService"

    invoke-virtual {v1, v2}, Landroid/os/customize/OplusCustomizeManager;->getDeviceManagerServiceByName(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/customize/IOplusCustomizePackageManagerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/customize/IOplusCustomizePackageManagerService;

    move-result-object v1

    iput-object v1, p0, Landroid/os/customize/OplusCustomizePackageManager;->mIOplusCustomizePackageManagerService:Landroid/os/customize/IOplusCustomizePackageManagerService;

    .line 61
    :cond_0
    iget-object v1, p0, Landroid/os/customize/OplusCustomizePackageManager;->mIOplusCustomizePackageManagerService:Landroid/os/customize/IOplusCustomizePackageManagerService;

    if-nez v1, :cond_1

    .line 62
    const-string v1, "OplusCustomizePackageManager"

    const-string v2, "mIOplusCustomizePackageManagerService is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_1
    iget-object v1, p0, Landroid/os/customize/OplusCustomizePackageManager;->mIOplusCustomizePackageManagerService:Landroid/os/customize/IOplusCustomizePackageManagerService;

    monitor-exit v0

    return-object v1

    .line 65
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public whitelist addDisabledDeactivateMdmPackages(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 70
    .local p1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "OplusCustomizePackageManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizePackageManager;->getOplusCustomizePackageManagerService()Landroid/os/customize/IOplusCustomizePackageManagerService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/os/customize/IOplusCustomizePackageManagerService;->addDisabledDeactivateMdmPackages(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 73
    :catch_0
    move-exception v1

    .line 74
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addDisabledDeactivateMdmPackages Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 71
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 72
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "addDisabledDeactivateMdmPackages fail!"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 76
    :goto_1
    return-void
.end method

.method public whitelist addDisallowedUninstallPackages(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 123
    .local p1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "OplusCustomizePackageManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizePackageManager;->getOplusCustomizePackageManagerService()Landroid/os/customize/IOplusCustomizePackageManagerService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/os/customize/IOplusCustomizePackageManagerService;->addDisallowedUninstallPackages(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 126
    :catch_0
    move-exception v1

    .line 127
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addDisallowedUninstallPackages Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 124
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 125
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "addDisallowedUninstallPackages: fail"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 129
    :goto_1
    return-void
.end method

.method public whitelist clearAllSuperWhiteList()Z
    .locals 4

    .line 338
    const-string v0, "OplusCustomizePackageManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizePackageManager;->getOplusCustomizePackageManagerService()Landroid/os/customize/IOplusCustomizePackageManagerService;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/customize/IOplusCustomizePackageManagerService;->clearAllSuperWhiteList()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 341
    :catch_0
    move-exception v1

    .line 342
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearAllSuperWhiteList Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 339
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 340
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "clearAllSuperWhiteList fail!"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 343
    .end local v1    # "e":Landroid/os/RemoteException;
    nop

    .line 344
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist clearAppData(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 165
    const-string v0, "OplusCustomizePackageManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizePackageManager;->getOplusCustomizePackageManagerService()Landroid/os/customize/IOplusCustomizePackageManagerService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/os/customize/IOplusCustomizePackageManagerService;->clearAppData(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 168
    :catch_0
    move-exception v1

    .line 169
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearApplicationUserData Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 166
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 167
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "clearApplicationUserData: fail"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 170
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 171
    :goto_1
    return-void
.end method

.method public whitelist clearSuperWhiteList(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 327
    .local p1, "clearList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "OplusCustomizePackageManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizePackageManager;->getOplusCustomizePackageManagerService()Landroid/os/customize/IOplusCustomizePackageManagerService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/os/customize/IOplusCustomizePackageManagerService;->clearSuperWhiteList(Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 330
    :catch_0
    move-exception v1

    .line 331
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearSuperWhiteList Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 328
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 329
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "clearSuperWhiteList fail!"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 332
    .end local v1    # "e":Landroid/os/RemoteException;
    nop

    .line 333
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAdbInstallUninstallDisabled()Z
    .locals 4

    .line 229
    const-string v0, "OplusCustomizePackageManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizePackageManager;->getOplusCustomizePackageManagerService()Landroid/os/customize/IOplusCustomizePackageManagerService;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/customize/IOplusCustomizePackageManagerService;->getAdbInstallUninstallDisabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 232
    :catch_0
    move-exception v1

    .line 233
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAdbInstallUninstallDisabled Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 230
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 231
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "getAdbInstallUninstallDisabled fail!"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 234
    .end local v1    # "e":Landroid/os/RemoteException;
    nop

    .line 235
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAllInstallSysAppList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 283
    const-string v0, "OplusCustomizePackageManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizePackageManager;->getOplusCustomizePackageManagerService()Landroid/os/customize/IOplusCustomizePackageManagerService;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/customize/IOplusCustomizePackageManagerService;->getAllInstallSysAppList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 286
    :catch_0
    move-exception v1

    .line 287
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAllInstallSysAppList Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 284
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 285
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "getAllInstallSysAppList: fail"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 288
    .end local v1    # "e":Landroid/os/RemoteException;
    nop

    .line 289
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getClearAppName()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 174
    const-string v0, "OplusCustomizePackageManager"

    const/4 v1, 0x0

    .line 176
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizePackageManager;->getOplusCustomizePackageManagerService()Landroid/os/customize/IOplusCustomizePackageManagerService;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/customize/IOplusCustomizePackageManagerService;->getClearAppName()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 181
    :goto_0
    goto :goto_1

    .line 179
    :catch_0
    move-exception v2

    .line 180
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getClearAppName Error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 177
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 178
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "getClearAppName: fail"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 182
    :goto_1
    return-object v1
.end method

.method public whitelist getContainOplusCertificatePackages()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 294
    const-string v0, "OplusCustomizePackageManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizePackageManager;->getOplusCustomizePackageManagerService()Landroid/os/customize/IOplusCustomizePackageManagerService;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/customize/IOplusCustomizePackageManagerService;->getContainOplusCertificatePackages()Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 297
    :catch_0
    move-exception v1

    .line 298
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getContainOplusCertificatePackages Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 295
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 296
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "getContainOplusCertificatePackages: fail"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 299
    .end local v1    # "e":Landroid/os/RemoteException;
    nop

    .line 300
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getCustomizeDefaultApp(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "roleName"    # Ljava/lang/String;

    .line 198
    const-string v0, "OplusCustomizePackageManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizePackageManager;->getOplusCustomizePackageManagerService()Landroid/os/customize/IOplusCustomizePackageManagerService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/os/customize/IOplusCustomizePackageManagerService;->getCustomizeDefaultApp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 201
    :catch_0
    move-exception v1

    .line 202
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCustomizeDefaultApp Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 199
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 200
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "getCustomizeDefaultApp fail!"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 203
    .end local v1    # "e":Landroid/os/RemoteException;
    nop

    .line 204
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getDetachableInstallSysAppList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 272
    const-string v0, "OplusCustomizePackageManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizePackageManager;->getOplusCustomizePackageManagerService()Landroid/os/customize/IOplusCustomizePackageManagerService;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/customize/IOplusCustomizePackageManagerService;->getDetachableInstallSysAppList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 275
    :catch_0
    move-exception v1

    .line 276
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDetachableInstallSysAppList Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 273
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 274
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "getDetachableInstallSysAppList: fail"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 277
    .end local v1    # "e":Landroid/os/RemoteException;
    nop

    .line 278
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getDisabledDeactivateMdmPackages()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 89
    const-string v0, "OplusCustomizePackageManager"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v1, "disabledDeactivateMdmPackagesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizePackageManager;->getOplusCustomizePackageManagerService()Landroid/os/customize/IOplusCustomizePackageManagerService;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/customize/IOplusCustomizePackageManagerService;->getDisabledDeactivateMdmPackages()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 96
    :goto_0
    goto :goto_1

    .line 94
    :catch_0
    move-exception v2

    .line 95
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDisabledDeactivateMdmPackages Error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 92
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 93
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "getDisabledDeactivateMdmPackages fail!"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 97
    :goto_1
    return-object v1
.end method

.method public whitelist getDisallowUninstallPackageList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 153
    const-string v0, "OplusCustomizePackageManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizePackageManager;->getOplusCustomizePackageManagerService()Landroid/os/customize/IOplusCustomizePackageManagerService;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/customize/IOplusCustomizePackageManagerService;->getDisallowUninstallPackageList()Ljava/util/List;

    move-result-object v1

    .line 154
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    .line 157
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 158
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDisallowUninstallPackageList Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 155
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 156
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "getDisallowUninstallPackageList: fail"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 159
    .end local v1    # "e":Landroid/os/RemoteException;
    nop

    .line 160
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getInstallSysAppBundle()Landroid/os/Bundle;
    .locals 4

    .line 250
    const-string v0, "OplusCustomizePackageManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizePackageManager;->getOplusCustomizePackageManagerService()Landroid/os/customize/IOplusCustomizePackageManagerService;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/customize/IOplusCustomizePackageManagerService;->getInstallSysAppBundle()Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 253
    :catch_0
    move-exception v1

    .line 254
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInstallSysAppBundle Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 251
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 252
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "getInstallSysAppBundle: fail"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 255
    .end local v1    # "e":Landroid/os/RemoteException;
    nop

    .line 256
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getPrivInstallSysAppList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 261
    const-string v0, "OplusCustomizePackageManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizePackageManager;->getOplusCustomizePackageManagerService()Landroid/os/customize/IOplusCustomizePackageManagerService;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/customize/IOplusCustomizePackageManagerService;->getPrivInstallSysAppList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 264
    :catch_0
    move-exception v1

    .line 265
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPrivInstallSysAppList Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 262
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 263
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "getPrivInstallSysAppList: fail"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 266
    .end local v1    # "e":Landroid/os/RemoteException;
    nop

    .line 267
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSuperWhiteList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 316
    const-string v0, "OplusCustomizePackageManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizePackageManager;->getOplusCustomizePackageManagerService()Landroid/os/customize/IOplusCustomizePackageManagerService;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/customize/IOplusCustomizePackageManagerService;->getSuperWhiteList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 319
    :catch_0
    move-exception v1

    .line 320
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSuperWhiteList Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 317
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 318
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "getSuperWhiteList: fail"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 321
    .end local v1    # "e":Landroid/os/RemoteException;
    nop

    .line 322
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist isDisabledDeactivateMdmPackage(Ljava/lang/String;)Z
    .locals 4
    .param p1, "adminPackage"    # Ljava/lang/String;

    .line 112
    const-string v0, "OplusCustomizePackageManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizePackageManager;->getOplusCustomizePackageManagerService()Landroid/os/customize/IOplusCustomizePackageManagerService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/os/customize/IOplusCustomizePackageManagerService;->isDisabledDeactivateMdmPackage(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 115
    :catch_0
    move-exception v1

    .line 116
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDisabledDeactivateMdmPackage Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 113
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 114
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "isDisabledDeactivateMdmPackage fail!"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 117
    .end local v1    # "e":Landroid/os/RemoteException;
    nop

    .line 118
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist removeAllDisabledDeactivateMdmPackages()V
    .locals 4

    .line 102
    const-string v0, "OplusCustomizePackageManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizePackageManager;->getOplusCustomizePackageManagerService()Landroid/os/customize/IOplusCustomizePackageManagerService;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/customize/IOplusCustomizePackageManagerService;->removeAllDisabledDeactivateMdmPackages()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 105
    :catch_0
    move-exception v1

    .line 106
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeAllDisabledDeactivateMdmPackages Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 103
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 104
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "removeAllDisabledDeactivateMdmPackages fail!"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 107
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 108
    :goto_1
    return-void
.end method

.method public whitelist removeAllDisallowedUninstallPackages()V
    .locals 4

    .line 143
    const-string v0, "OplusCustomizePackageManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizePackageManager;->getOplusCustomizePackageManagerService()Landroid/os/customize/IOplusCustomizePackageManagerService;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/customize/IOplusCustomizePackageManagerService;->removeAllDisallowedUninstallPackages()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 146
    :catch_0
    move-exception v1

    .line 147
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeAllDisallowedUninstallPackages Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 144
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 145
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "removeAllDisallowedUninstallPackages: fail"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 148
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 149
    :goto_1
    return-void
.end method

.method public whitelist removeCustomizeDefaultApp(Ljava/lang/String;)V
    .locals 4
    .param p1, "roleName"    # Ljava/lang/String;

    .line 209
    const-string v0, "OplusCustomizePackageManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizePackageManager;->getOplusCustomizePackageManagerService()Landroid/os/customize/IOplusCustomizePackageManagerService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/os/customize/IOplusCustomizePackageManagerService;->removeCustomizeDefaultApp(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 212
    :catch_0
    move-exception v1

    .line 213
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeCustomizeDefaultApp Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 210
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 211
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "removeCustomizeDefaultApp fail!"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 214
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 215
    :goto_1
    return-void
.end method

.method public whitelist removeDisabledDeactivateMdmPackages(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 80
    .local p1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "OplusCustomizePackageManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizePackageManager;->getOplusCustomizePackageManagerService()Landroid/os/customize/IOplusCustomizePackageManagerService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/os/customize/IOplusCustomizePackageManagerService;->removeDisabledDeactivateMdmPackages(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 83
    :catch_0
    move-exception v1

    .line 84
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeDisabledDeactivateMdmPackages Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 81
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 82
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "removeDisabledDeactivateMdmPackages fail!"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 86
    :goto_1
    return-void
.end method

.method public whitelist removeDisallowedUninstallPackages(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 133
    .local p1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "OplusCustomizePackageManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizePackageManager;->getOplusCustomizePackageManagerService()Landroid/os/customize/IOplusCustomizePackageManagerService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/os/customize/IOplusCustomizePackageManagerService;->removeDisallowedUninstallPackages(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 136
    :catch_0
    move-exception v1

    .line 137
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeDisallowedUninstallPackages Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 134
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 135
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "removeDisallowedUninstallPackages: fail"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 139
    :goto_1
    return-void
.end method

.method public whitelist setAdbInstallUninstallDisabled(Z)V
    .locals 4
    .param p1, "disabled"    # Z

    .line 219
    const-string v0, "OplusCustomizePackageManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizePackageManager;->getOplusCustomizePackageManagerService()Landroid/os/customize/IOplusCustomizePackageManagerService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/os/customize/IOplusCustomizePackageManagerService;->setAdbInstallUninstallDisabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 222
    :catch_0
    move-exception v1

    .line 223
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAdbInstallUninstallDisabled Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 220
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 221
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "setAdbInstallUninstallDisabled fail!"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 224
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 225
    :goto_1
    return-void
.end method

.method public whitelist setCustomizeDefaultApp(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 187
    const-string v0, "OplusCustomizePackageManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizePackageManager;->getOplusCustomizePackageManagerService()Landroid/os/customize/IOplusCustomizePackageManagerService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/os/customize/IOplusCustomizePackageManagerService;->setCustomizeDefaultApp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 190
    :catch_0
    move-exception v1

    .line 191
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCustomizeDefaultApp Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 188
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 189
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "setCustomizeDefaultApp fail!"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 192
    .end local v1    # "e":Landroid/os/RemoteException;
    nop

    .line 193
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setInstallSysAppBundle(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 240
    const-string v0, "OplusCustomizePackageManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizePackageManager;->getOplusCustomizePackageManagerService()Landroid/os/customize/IOplusCustomizePackageManagerService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/os/customize/IOplusCustomizePackageManagerService;->setInstallSysAppBundle(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 243
    :catch_0
    move-exception v1

    .line 244
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setInstallSysAppBundle Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 241
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 242
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "setInstallSysAppBundle: fail"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 245
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 246
    :goto_1
    return-void
.end method

.method public whitelist setSuperWhiteList(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 305
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "OplusCustomizePackageManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizePackageManager;->getOplusCustomizePackageManagerService()Landroid/os/customize/IOplusCustomizePackageManagerService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/os/customize/IOplusCustomizePackageManagerService;->setSuperWhiteList(Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 308
    :catch_0
    move-exception v1

    .line 309
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSuperWhiteList Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 306
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 307
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "setSuperWhiteList fail!"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 310
    .end local v1    # "e":Landroid/os/RemoteException;
    nop

    .line 311
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
