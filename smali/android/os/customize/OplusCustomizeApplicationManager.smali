.class public Landroid/os/customize/OplusCustomizeApplicationManager;
.super Ljava/lang/Object;
.source "OplusCustomizeApplicationManager.java"


# static fields
.field private static final blacklist SERVICE_NAME:Ljava/lang/String; = "OplusCustomizeApplicationManagerService"

.field private static final blacklist TAG:Ljava/lang/String; = "OplusCustomizeApplicationManager"

.field private static final blacklist mLock:Ljava/lang/Object;

.field private static final blacklist mServiceLock:Ljava/lang/Object;

.field private static volatile blacklist sInstance:Landroid/os/customize/OplusCustomizeApplicationManager;


# instance fields
.field private blacklist mOplusCustomizeApplicationManagerService:Landroid/os/customize/IOplusCustomizeApplicationManagerService;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/customize/OplusCustomizeApplicationManager;->mLock:Ljava/lang/Object;

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/customize/OplusCustomizeApplicationManager;->mServiceLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeApplicationManager;->getOplusCustomizeApplicationManagerService()Landroid/os/customize/IOplusCustomizeApplicationManagerService;

    .line 42
    return-void
.end method

.method public static final whitelist getInstance(Landroid/content/Context;)Landroid/os/customize/OplusCustomizeApplicationManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 45
    sget-object v0, Landroid/os/customize/OplusCustomizeApplicationManager;->sInstance:Landroid/os/customize/OplusCustomizeApplicationManager;

    if-nez v0, :cond_1

    .line 46
    sget-object v0, Landroid/os/customize/OplusCustomizeApplicationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 47
    :try_start_0
    sget-object v1, Landroid/os/customize/OplusCustomizeApplicationManager;->sInstance:Landroid/os/customize/OplusCustomizeApplicationManager;

    if-nez v1, :cond_0

    .line 48
    new-instance v1, Landroid/os/customize/OplusCustomizeApplicationManager;

    invoke-direct {v1}, Landroid/os/customize/OplusCustomizeApplicationManager;-><init>()V

    sput-object v1, Landroid/os/customize/OplusCustomizeApplicationManager;->sInstance:Landroid/os/customize/OplusCustomizeApplicationManager;

    .line 50
    :cond_0
    sget-object v1, Landroid/os/customize/OplusCustomizeApplicationManager;->sInstance:Landroid/os/customize/OplusCustomizeApplicationManager;

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
    sget-object v0, Landroid/os/customize/OplusCustomizeApplicationManager;->sInstance:Landroid/os/customize/OplusCustomizeApplicationManager;

    return-object v0
.end method

.method private blacklist getOplusCustomizeApplicationManagerService()Landroid/os/customize/IOplusCustomizeApplicationManagerService;
    .locals 3

    .line 57
    sget-object v0, Landroid/os/customize/OplusCustomizeApplicationManager;->mServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 58
    :try_start_0
    iget-object v1, p0, Landroid/os/customize/OplusCustomizeApplicationManager;->mOplusCustomizeApplicationManagerService:Landroid/os/customize/IOplusCustomizeApplicationManagerService;

    if-nez v1, :cond_0

    .line 59
    invoke-static {}, Landroid/os/customize/OplusCustomizeManager;->getInstance()Landroid/os/customize/OplusCustomizeManager;

    move-result-object v1

    const-string v2, "OplusCustomizeApplicationManagerService"

    invoke-virtual {v1, v2}, Landroid/os/customize/OplusCustomizeManager;->getDeviceManagerServiceByName(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/customize/IOplusCustomizeApplicationManagerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/customize/IOplusCustomizeApplicationManagerService;

    move-result-object v1

    iput-object v1, p0, Landroid/os/customize/OplusCustomizeApplicationManager;->mOplusCustomizeApplicationManagerService:Landroid/os/customize/IOplusCustomizeApplicationManagerService;

    .line 61
    :cond_0
    iget-object v1, p0, Landroid/os/customize/OplusCustomizeApplicationManager;->mOplusCustomizeApplicationManagerService:Landroid/os/customize/IOplusCustomizeApplicationManagerService;

    if-nez v1, :cond_1

    .line 62
    const-string v1, "OplusCustomizeApplicationManager"

    const-string v2, "mOplusCustomizeApplicationManagerService is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_1
    iget-object v1, p0, Landroid/os/customize/OplusCustomizeApplicationManager;->mOplusCustomizeApplicationManagerService:Landroid/os/customize/IOplusCustomizeApplicationManagerService;

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
.method public whitelist addAppAlarmWhiteList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 321
    .local p1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeApplicationManager;->getOplusCustomizeApplicationManagerService()Landroid/os/customize/IOplusCustomizeApplicationManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/customize/IOplusCustomizeApplicationManagerService;->addAppAlarmWhiteList(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    goto :goto_0

    .line 322
    :catch_0
    move-exception v0

    .line 323
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addAppAlarmWhiteList exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusCustomizeApplicationManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public whitelist addDisallowedRunningApp(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 142
    .local p1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "OplusCustomizeApplicationManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeApplicationManager;->getOplusCustomizeApplicationManagerService()Landroid/os/customize/IOplusCustomizeApplicationManagerService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/os/customize/IOplusCustomizeApplicationManagerService;->addDisallowedRunningApp(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 145
    :catch_0
    move-exception v1

    .line 146
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addDisallowedRunningApp Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 143
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 144
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "addDisallowedRunningApp fail!"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 147
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 148
    :goto_1
    return-void
.end method

.method public whitelist addPersistentApp(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .param p2, "label"    # Ljava/lang/String;
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

    .line 377
    .local p1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeApplicationManager;->getOplusCustomizeApplicationManagerService()Landroid/os/customize/IOplusCustomizeApplicationManagerService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/os/customize/IOplusCustomizeApplicationManagerService;->addPersistentApp(Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    goto :goto_0

    .line 378
    :catch_0
    move-exception v0

    .line 379
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addPersistentApp exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusCustomizeApplicationManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public whitelist addTrustedAppStore(Ljava/lang/String;)V
    .locals 4
    .param p1, "appStorePkgName"    # Ljava/lang/String;

    .line 187
    const-string v0, "OplusCustomizeApplicationManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeApplicationManager;->getOplusCustomizeApplicationManagerService()Landroid/os/customize/IOplusCustomizeApplicationManagerService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/os/customize/IOplusCustomizeApplicationManagerService;->addTrustedAppStore(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 190
    :catch_0
    move-exception v1

    .line 191
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addTrustedAppStore Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 188
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 189
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "addTrustedAppStore fail!"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 192
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 193
    :goto_1
    return-void
.end method

.method public whitelist addTrustedAppStoreList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 296
    .local p1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "OplusCustomizeApplicationManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeApplicationManager;->getOplusCustomizeApplicationManagerService()Landroid/os/customize/IOplusCustomizeApplicationManagerService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/os/customize/IOplusCustomizeApplicationManagerService;->addTrustedAppStoreList(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 299
    :catch_0
    move-exception v1

    .line 300
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addTrustedAppStoreList Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 297
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 298
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "addTrustedAppStoreList fail!"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 301
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 302
    :goto_1
    return-void
.end method

.method public whitelist cleanBackgroundProcess()V
    .locals 4

    .line 127
    const-string v0, "OplusCustomizeApplicationManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeApplicationManager;->getOplusCustomizeApplicationManagerService()Landroid/os/customize/IOplusCustomizeApplicationManagerService;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/customize/IOplusCustomizeApplicationManagerService;->cleanBackgroundProcess()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 130
    :catch_0
    move-exception v1

    .line 131
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cleanBackgroundProcess Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 128
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 129
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "cleanBackgroundProcess fail!"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 133
    :goto_1
    return-void
.end method

.method public whitelist clearAllTrustedAppStore()V
    .locals 4

    .line 311
    const-string v0, "OplusCustomizeApplicationManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeApplicationManager;->getOplusCustomizeApplicationManagerService()Landroid/os/customize/IOplusCustomizeApplicationManagerService;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/customize/IOplusCustomizeApplicationManagerService;->clearAllTrustedAppStore()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 314
    :catch_0
    move-exception v1

    .line 315
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearAllTrustedAppStore Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 312
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 313
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "clearAllTrustedAppStore fail!"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 316
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 317
    :goto_1
    return-void
.end method

.method public whitelist deleteTrustedAppStore(Ljava/lang/String;)V
    .locals 4
    .param p1, "appStorePkgName"    # Ljava/lang/String;

    .line 202
    const-string v0, "OplusCustomizeApplicationManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeApplicationManager;->getOplusCustomizeApplicationManagerService()Landroid/os/customize/IOplusCustomizeApplicationManagerService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/os/customize/IOplusCustomizeApplicationManagerService;->deleteTrustedAppStore(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 205
    :catch_0
    move-exception v1

    .line 206
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteTrustedAppStore Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 203
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 204
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "deleteTrustedAppStore fail!"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 207
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 208
    :goto_1
    return-void
.end method

.method public whitelist enableTrustedAppStore(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .line 217
    const-string v0, "OplusCustomizeApplicationManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeApplicationManager;->getOplusCustomizeApplicationManagerService()Landroid/os/customize/IOplusCustomizeApplicationManagerService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/os/customize/IOplusCustomizeApplicationManagerService;->enableTrustedAppStore(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 220
    :catch_0
    move-exception v1

    .line 221
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableTrustedAppStore Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 218
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 219
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "enableTrustedAppStore fail!"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 222
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 223
    :goto_1
    return-void
.end method

.method public whitelist forceStopPackage(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 75
    .local p1, "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "OplusCustomizeApplicationManager"

    if-nez p1, :cond_0

    .line 76
    const/4 v0, 0x0

    return v0

    .line 78
    :cond_0
    const/4 v1, 0x0

    .line 80
    .local v1, "ret":Z
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeApplicationManager;->getOplusCustomizeApplicationManagerService()Landroid/os/customize/IOplusCustomizeApplicationManagerService;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/os/customize/IOplusCustomizeApplicationManagerService;->forceStopPackage(Ljava/util/List;)Z

    move-result v2

    move v1, v2

    .line 81
    const-string v2, "forceStopPackage: succeeded"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 84
    :catch_0
    move-exception v2

    .line 85
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "forceStopPackage Error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 82
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 83
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "forceStopPackage fail!"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 87
    :goto_1
    return v1
.end method

.method public whitelist getAERDeviceOwnerApp()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 454
    const-string v0, "OplusCustomizeApplicationManager"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 456
    .local v1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeApplicationManager;->getOplusCustomizeApplicationManagerService()Landroid/os/customize/IOplusCustomizeApplicationManagerService;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/customize/IOplusCustomizeApplicationManagerService;->getAERDeviceOwnerApp()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 461
    :goto_0
    goto :goto_1

    .line 459
    :catch_0
    move-exception v2

    .line 460
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAERDeviceOwnerApp Error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 457
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 458
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "getAERDeviceOwnerApp fail!"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 462
    :goto_1
    return-object v1
.end method

.method public whitelist getAppAlarmWhiteList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 329
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeApplicationManager;->getOplusCustomizeApplicationManagerService()Landroid/os/customize/IOplusCustomizeApplicationManagerService;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/customize/IOplusCustomizeApplicationManagerService;->getAppAlarmWhiteList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 330
    :catch_0
    move-exception v0

    .line 331
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAppAlarmWhiteList exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusCustomizeApplicationManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getDisallowedRunningApp()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 172
    const-string v0, "OplusCustomizeApplicationManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeApplicationManager;->getOplusCustomizeApplicationManagerService()Landroid/os/customize/IOplusCustomizeApplicationManagerService;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/customize/IOplusCustomizeApplicationManagerService;->getDisallowedRunningApp()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 175
    :catch_0
    move-exception v1

    .line 176
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDisallowedRunningApp Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 173
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 174
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "getDisallowedRunningApp fail!"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 177
    .end local v1    # "e":Landroid/os/RemoteException;
    nop

    .line 178
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getPersistentApp()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 392
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 394
    .local v0, "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeApplicationManager;->getOplusCustomizeApplicationManagerService()Landroid/os/customize/IOplusCustomizeApplicationManagerService;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/customize/IOplusCustomizeApplicationManagerService;->getPersistentApp()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 397
    goto :goto_0

    .line 395
    :catch_0
    move-exception v1

    .line 396
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPersistentApp exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OplusCustomizeApplicationManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public whitelist getSpecificCutoutModeAppList(I)Ljava/util/List;
    .locals 4
    .param p1, "cutoutMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 402
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 404
    .local v0, "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeApplicationManager;->getOplusCustomizeApplicationManagerService()Landroid/os/customize/IOplusCustomizeApplicationManagerService;

    move-result-object v1

    .line 405
    invoke-interface {v1, p1}, Landroid/os/customize/IOplusCustomizeApplicationManagerService;->getSpecificCutoutModeAppList(I)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 408
    goto :goto_0

    .line 406
    :catch_0
    move-exception v1

    .line 407
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSpecificCutoutModeAppList exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OplusCustomizeApplicationManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public whitelist getStopLockTaskAvailability()Z
    .locals 3

    .line 433
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeApplicationManager;->getOplusCustomizeApplicationManagerService()Landroid/os/customize/IOplusCustomizeApplicationManagerService;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/customize/IOplusCustomizeApplicationManagerService;->getStopLockTaskAvailability()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 434
    :catch_0
    move-exception v0

    .line 435
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getStopLockTaskAvailability exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusCustomizeApplicationManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getTopAppPackageName()Ljava/lang/String;
    .locals 4

    .line 98
    const-string v0, "OplusCustomizeApplicationManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeApplicationManager;->getOplusCustomizeApplicationManagerService()Landroid/os/customize/IOplusCustomizeApplicationManagerService;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/customize/IOplusCustomizeApplicationManagerService;->getTopAppPackageName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 101
    :catch_0
    move-exception v1

    .line 102
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTopAppPackageName Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 99
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 100
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "getTopAppPackageName fail!"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    .end local v1    # "e":Landroid/os/RemoteException;
    nop

    .line 104
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public whitelist getTrustedAppStore()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 249
    const-string v0, "OplusCustomizeApplicationManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeApplicationManager;->getOplusCustomizeApplicationManagerService()Landroid/os/customize/IOplusCustomizeApplicationManagerService;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/customize/IOplusCustomizeApplicationManagerService;->getTrustedAppStore()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 252
    :catch_0
    move-exception v1

    .line 253
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTrustedAppStore Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 250
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 251
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "getTrustedAppStore fail!"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 254
    .end local v1    # "e":Landroid/os/RemoteException;
    nop

    .line 255
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist interceptStopLockTask(Z)V
    .locals 3
    .param p1, "intercept"    # Z

    .line 425
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeApplicationManager;->getOplusCustomizeApplicationManagerService()Landroid/os/customize/IOplusCustomizeApplicationManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/customize/IOplusCustomizeApplicationManagerService;->interceptStopLockTask(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    goto :goto_0

    .line 426
    :catch_0
    move-exception v0

    .line 427
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interceptStopLockTask exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusCustomizeApplicationManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public whitelist isAllowControlAppRun()Z
    .locals 4

    .line 366
    const-string v0, "OplusCustomizeApplicationManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeApplicationManager;->getOplusCustomizeApplicationManagerService()Landroid/os/customize/IOplusCustomizeApplicationManagerService;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/customize/IOplusCustomizeApplicationManagerService;->isAllowControlAppRun()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 369
    :catch_0
    move-exception v1

    .line 370
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAllowControlAppRun Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 367
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 368
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "isAllowControlAppRun: fail"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 371
    .end local v1    # "e":Landroid/os/RemoteException;
    nop

    .line 372
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isAllowTrustedAppStore()Z
    .locals 4

    .line 280
    const-string v0, "OplusCustomizeApplicationManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeApplicationManager;->getOplusCustomizeApplicationManagerService()Landroid/os/customize/IOplusCustomizeApplicationManagerService;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/customize/IOplusCustomizeApplicationManagerService;->isAllowTrustedAppStore()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 283
    :catch_0
    move-exception v1

    .line 284
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAllowTrustedAppStore Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 281
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 282
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "isAllowTrustedAppStore: fail"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 285
    .end local v1    # "e":Landroid/os/RemoteException;
    nop

    .line 286
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isTrustedAppStoreEnabled()Z
    .locals 5

    .line 231
    const-string v0, "isTrustedAppStoreEnabled Error"

    const-string v1, "OplusCustomizeApplicationManager"

    const/4 v2, 0x0

    .line 233
    .local v2, "ret":Z
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeApplicationManager;->getOplusCustomizeApplicationManagerService()Landroid/os/customize/IOplusCustomizeApplicationManagerService;

    move-result-object v3

    invoke-interface {v3}, Landroid/os/customize/IOplusCustomizeApplicationManagerService;->isTrustedAppStoreEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 236
    :catch_0
    move-exception v3

    .line 237
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

    goto :goto_0

    .line 234
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 235
    .local v3, "e":Landroid/os/RemoteException;
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    .end local v3    # "e":Landroid/os/RemoteException;
    nop

    .line 239
    :goto_0
    return v2
.end method

.method public whitelist killApplicationProcess(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 108
    const-string v0, "OplusCustomizeApplicationManager"

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 112
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeApplicationManager;->getOplusCustomizeApplicationManagerService()Landroid/os/customize/IOplusCustomizeApplicationManagerService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/os/customize/IOplusCustomizeApplicationManagerService;->killApplicationProcess(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 115
    :catch_0
    move-exception v1

    .line 116
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "killApplicationProcess Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 113
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 114
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "killApplicationProcess fail!"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 117
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 118
    :goto_1
    return-void

    .line 109
    :cond_1
    :goto_2
    return-void
.end method

.method public whitelist removeAllAppAlarmWhiteList()Z
    .locals 3

    .line 347
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeApplicationManager;->getOplusCustomizeApplicationManagerService()Landroid/os/customize/IOplusCustomizeApplicationManagerService;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/customize/IOplusCustomizeApplicationManagerService;->removeAllAppAlarmWhiteList()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 348
    :catch_0
    move-exception v0

    .line 349
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeAllAppAlarmWhiteList exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusCustomizeApplicationManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist removeAppAlarmWhiteList(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 338
    .local p1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeApplicationManager;->getOplusCustomizeApplicationManagerService()Landroid/os/customize/IOplusCustomizeApplicationManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/customize/IOplusCustomizeApplicationManagerService;->removeAppAlarmWhiteList(Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 339
    :catch_0
    move-exception v0

    .line 340
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeAppAlarmWhiteList exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusCustomizeApplicationManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist removeDisallowedRunningApp(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 157
    .local p1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "OplusCustomizeApplicationManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeApplicationManager;->getOplusCustomizeApplicationManagerService()Landroid/os/customize/IOplusCustomizeApplicationManagerService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/os/customize/IOplusCustomizeApplicationManagerService;->removeDisallowedRunningApp(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 160
    :catch_0
    move-exception v1

    .line 161
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeDisallowedRunningApp Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 158
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 159
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "removeDisallowedRunningApp fail!"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 162
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 163
    :goto_1
    return-void
.end method

.method public whitelist removePersistentApp(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 385
    .local p1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeApplicationManager;->getOplusCustomizeApplicationManagerService()Landroid/os/customize/IOplusCustomizeApplicationManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/customize/IOplusCustomizeApplicationManagerService;->removePersistentApp(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    goto :goto_0

    .line 386
    :catch_0
    move-exception v0

    .line 387
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removePersistentApp exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusCustomizeApplicationManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public whitelist setAERDeviceOwnerApp(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 441
    .local p1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "OplusCustomizeApplicationManager"

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 445
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeApplicationManager;->getOplusCustomizeApplicationManagerService()Landroid/os/customize/IOplusCustomizeApplicationManagerService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/os/customize/IOplusCustomizeApplicationManagerService;->setAERDeviceOwnerApp(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 448
    :catch_0
    move-exception v1

    .line 449
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAERDeviceOwnerApp Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 446
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 447
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "setAERDeviceOwnerApp fail!"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 450
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 451
    :goto_1
    return-void

    .line 442
    :cond_1
    :goto_2
    return-void
.end method

.method public whitelist setAllowControlAppRun(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .line 356
    const-string v0, "OplusCustomizeApplicationManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeApplicationManager;->getOplusCustomizeApplicationManagerService()Landroid/os/customize/IOplusCustomizeApplicationManagerService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/os/customize/IOplusCustomizeApplicationManagerService;->setAllowControlAppRun(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 359
    :catch_0
    move-exception v1

    .line 360
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAllowControlAppRun Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 357
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 358
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "setAllowControlAppRun: fail"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 361
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 362
    :goto_1
    return-void
.end method

.method public whitelist setAllowTrustedAppStore(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .line 265
    const-string v0, "OplusCustomizeApplicationManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeApplicationManager;->getOplusCustomizeApplicationManagerService()Landroid/os/customize/IOplusCustomizeApplicationManagerService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/os/customize/IOplusCustomizeApplicationManagerService;->setAllowTrustedAppStore(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 268
    :catch_0
    move-exception v1

    .line 269
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAllowTrustedAppStore Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 266
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 267
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "setAllowTrustedAppStore: fail"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 270
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 271
    :goto_1
    return-void
.end method

.method public whitelist setSpecificCutoutModeAppList(Ljava/util/List;I)V
    .locals 3
    .param p2, "cutoutMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 414
    .local p1, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeApplicationManager;->getOplusCustomizeApplicationManagerService()Landroid/os/customize/IOplusCustomizeApplicationManagerService;

    move-result-object v0

    .line 416
    invoke-interface {v0, p1, p2}, Landroid/os/customize/IOplusCustomizeApplicationManagerService;->setSpecificCutoutModeAppList(Ljava/util/List;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 418
    :catch_0
    move-exception v0

    .line 419
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSpecificCutoutModeAppList exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusCustomizeApplicationManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 420
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    nop

    .line 421
    :goto_1
    return-void
.end method
