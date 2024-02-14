.class public Landroid/os/customize/OplusCustomizeSecurityManager;
.super Ljava/lang/Object;
.source "OplusCustomizeSecurityManager.java"


# static fields
.field private static final blacklist SERVICE_NAME:Ljava/lang/String; = "OplusCustomizeSecurityManagerService"

.field private static final blacklist TAG:Ljava/lang/String; = "OplusCustomizeSecurityManager"

.field private static final blacklist mLock:Ljava/lang/Object;

.field private static final blacklist mServiceLock:Ljava/lang/Object;

.field private static volatile blacklist sInstance:Landroid/os/customize/OplusCustomizeSecurityManager;


# instance fields
.field private blacklist mOplusCustomizeSecurityManagerService:Landroid/os/customize/IOplusCustomizeSecurityManagerService;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/customize/OplusCustomizeSecurityManager;->mLock:Ljava/lang/Object;

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/customize/OplusCustomizeSecurityManager;->mServiceLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeSecurityManager;->getOplusCustomizeSecurityManagerService()Landroid/os/customize/IOplusCustomizeSecurityManagerService;

    .line 42
    return-void
.end method

.method public static final whitelist getInstance(Landroid/content/Context;)Landroid/os/customize/OplusCustomizeSecurityManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 45
    sget-object v0, Landroid/os/customize/OplusCustomizeSecurityManager;->sInstance:Landroid/os/customize/OplusCustomizeSecurityManager;

    if-nez v0, :cond_1

    .line 46
    sget-object v0, Landroid/os/customize/OplusCustomizeSecurityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 47
    :try_start_0
    sget-object v1, Landroid/os/customize/OplusCustomizeSecurityManager;->sInstance:Landroid/os/customize/OplusCustomizeSecurityManager;

    if-nez v1, :cond_0

    .line 48
    new-instance v1, Landroid/os/customize/OplusCustomizeSecurityManager;

    invoke-direct {v1}, Landroid/os/customize/OplusCustomizeSecurityManager;-><init>()V

    sput-object v1, Landroid/os/customize/OplusCustomizeSecurityManager;->sInstance:Landroid/os/customize/OplusCustomizeSecurityManager;

    .line 50
    :cond_0
    sget-object v1, Landroid/os/customize/OplusCustomizeSecurityManager;->sInstance:Landroid/os/customize/OplusCustomizeSecurityManager;

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
    sget-object v0, Landroid/os/customize/OplusCustomizeSecurityManager;->sInstance:Landroid/os/customize/OplusCustomizeSecurityManager;

    return-object v0
.end method

.method private blacklist getOplusCustomizeSecurityManagerService()Landroid/os/customize/IOplusCustomizeSecurityManagerService;
    .locals 3

    .line 57
    sget-object v0, Landroid/os/customize/OplusCustomizeSecurityManager;->mServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 58
    :try_start_0
    iget-object v1, p0, Landroid/os/customize/OplusCustomizeSecurityManager;->mOplusCustomizeSecurityManagerService:Landroid/os/customize/IOplusCustomizeSecurityManagerService;

    if-nez v1, :cond_0

    .line 59
    invoke-static {}, Landroid/os/customize/OplusCustomizeManager;->getInstance()Landroid/os/customize/OplusCustomizeManager;

    move-result-object v1

    const-string v2, "OplusCustomizeSecurityManagerService"

    invoke-virtual {v1, v2}, Landroid/os/customize/OplusCustomizeManager;->getDeviceManagerServiceByName(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/customize/IOplusCustomizeSecurityManagerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/customize/IOplusCustomizeSecurityManagerService;

    move-result-object v1

    iput-object v1, p0, Landroid/os/customize/OplusCustomizeSecurityManager;->mOplusCustomizeSecurityManagerService:Landroid/os/customize/IOplusCustomizeSecurityManagerService;

    .line 61
    :cond_0
    iget-object v1, p0, Landroid/os/customize/OplusCustomizeSecurityManager;->mOplusCustomizeSecurityManagerService:Landroid/os/customize/IOplusCustomizeSecurityManagerService;

    if-nez v1, :cond_1

    .line 62
    const-string v1, "OplusCustomizeSecurityManager"

    const-string v2, "mOplusCustomizeSecurityManagerService is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_1
    iget-object v1, p0, Landroid/os/customize/OplusCustomizeSecurityManager;->mOplusCustomizeSecurityManagerService:Landroid/os/customize/IOplusCustomizeSecurityManagerService;

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
.method public whitelist backupAppData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9
    .param p1, "rootPathMode"    # I
    .param p2, "src"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "dest"    # Ljava/lang/String;
    .param p5, "requestId"    # I

    .line 339
    const-string v0, "backupAppData Error"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "backupAppData src:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rootPathMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dest:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requestId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusCustomizeSecurityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeSecurityManager;->getOplusCustomizeSecurityManagerService()Landroid/os/customize/IOplusCustomizeSecurityManagerService;

    move-result-object v3

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    invoke-interface/range {v3 .. v8}, Landroid/os/customize/IOplusCustomizeSecurityManagerService;->backupAppData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 344
    :catch_0
    move-exception v1

    .line 345
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 342
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 343
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 347
    :goto_1
    return-void
.end method

.method public whitelist captureFullScreen()Landroid/graphics/Bitmap;
    .locals 3

    .line 160
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeSecurityManager;->getOplusCustomizeSecurityManagerService()Landroid/os/customize/IOplusCustomizeSecurityManagerService;

    move-result-object v0

    .line 161
    .local v0, "iService":Landroid/os/customize/IOplusCustomizeSecurityManagerService;
    if-eqz v0, :cond_0

    .line 162
    invoke-interface {v0}, Landroid/os/customize/IOplusCustomizeSecurityManagerService;->captureFullScreen()Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 166
    .end local v0    # "iService":Landroid/os/customize/IOplusCustomizeSecurityManagerService;
    :cond_0
    goto :goto_0

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "captureFullScreen error!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusCustomizeSecurityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist clearDeviceOwner(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 116
    const-string v0, "OplusCustomizeSecurityManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeSecurityManager;->getOplusCustomizeSecurityManagerService()Landroid/os/customize/IOplusCustomizeSecurityManagerService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/os/customize/IOplusCustomizeSecurityManagerService;->clearDeviceOwner(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 119
    :catch_0
    move-exception v1

    .line 120
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearDeviceOwner Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 117
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 118
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "clearDeviceOwner fail!"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 122
    :goto_1
    return-void
.end method

.method public whitelist clearMdmLog()Z
    .locals 4

    .line 476
    const-string v0, "OplusCustomizeSecurityManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeSecurityManager;->getOplusCustomizeSecurityManagerService()Landroid/os/customize/IOplusCustomizeSecurityManagerService;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/customize/IOplusCustomizeSecurityManagerService;->clearMdmLog()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 479
    :catch_0
    move-exception v1

    .line 480
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearMdmLog Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 477
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 478
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "clearMdmLog: fail"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 481
    .end local v1    # "e":Landroid/os/RemoteException;
    nop

    .line 482
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist clearProfileOwner(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 376
    const-string v0, "OplusCustomizeSecurityManager"

    if-eqz p1, :cond_0

    .line 377
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeSecurityManager;->getOplusCustomizeSecurityManagerService()Landroid/os/customize/IOplusCustomizeSecurityManagerService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/os/customize/IOplusCustomizeSecurityManagerService;->clearProfileOwner(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 381
    :catch_0
    move-exception v1

    .line 382
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearProfileOwner Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 379
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 380
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "clearProfileOwner fail!"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 383
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    nop

    .line 384
    :goto_1
    return-void
.end method

.method public whitelist copyFileToAppData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "src"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "requestId"    # I

    .line 501
    const-string v0, "copyFileToAppData Error"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "copyFileToAppData from:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " src:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requestId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusCustomizeSecurityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeSecurityManager;->getOplusCustomizeSecurityManagerService()Landroid/os/customize/IOplusCustomizeSecurityManagerService;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/os/customize/IOplusCustomizeSecurityManagerService;->copyFileToAppData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 506
    :catch_0
    move-exception v1

    .line 507
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 504
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 505
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 509
    :goto_1
    return-void
.end method

.method public whitelist deleteAppData(ZLjava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "isDir"    # Z
    .param p2, "src"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "requestId"    # I

    .line 487
    const-string v0, "deleteAppData Error"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteAppData packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " src:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requestId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusCustomizeSecurityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeSecurityManager;->getOplusCustomizeSecurityManagerService()Landroid/os/customize/IOplusCustomizeSecurityManagerService;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/os/customize/IOplusCustomizeSecurityManagerService;->deleteAppData(ZLjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 492
    :catch_0
    move-exception v1

    .line 493
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 490
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 491
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 495
    :goto_1
    return-void
.end method

.method public whitelist enableThirdRecord(Z)Z
    .locals 5
    .param p1, "isEnable"    # Z

    .line 288
    const-string v0, "enableThirdRecord Error"

    const-string v1, "OplusCustomizeSecurityManager"

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeSecurityManager;->getOplusCustomizeSecurityManagerService()Landroid/os/customize/IOplusCustomizeSecurityManagerService;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/os/customize/IOplusCustomizeSecurityManagerService;->enableThirdRecord(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 292
    :catch_0
    move-exception v3

    .line 293
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

    .line 294
    return v2

    .line 289
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 290
    .local v3, "e":Landroid/os/RemoteException;
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    return v2
.end method

.method public whitelist executeShellToSetIptables(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "commandline"    # Ljava/lang/String;

    .line 174
    const-string v0, "OplusCustomizeSecurityManager"

    const/4 v1, 0x0

    .line 176
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeSecurityManager;->getOplusCustomizeSecurityManagerService()Landroid/os/customize/IOplusCustomizeSecurityManagerService;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/os/customize/IOplusCustomizeSecurityManagerService;->executeShellToSetIptables(Ljava/lang/String;)Ljava/lang/String;

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

    const-string v4, "setCustomDevicePolicyEnabled Error"

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
    const-string v3, "setCustomDevicePolicyEnabled fail!"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 182
    :goto_1
    return-object v1
.end method

.method public whitelist getDeviceInfo(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 4
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

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v0, "devInfo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeSecurityManager;->getOplusCustomizeSecurityManagerService()Landroid/os/customize/IOplusCustomizeSecurityManagerService;

    move-result-object v1

    .line 149
    .local v1, "iService":Landroid/os/customize/IOplusCustomizeSecurityManagerService;
    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Landroid/os/customize/IOplusCustomizeSecurityManagerService;->getDeviceInfo(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 152
    .end local v1    # "iService":Landroid/os/customize/IOplusCustomizeSecurityManagerService;
    :cond_0
    goto :goto_0

    .line 150
    :catch_0
    move-exception v1

    .line 151
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDeviceInfo error!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OplusCustomizeSecurityManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public whitelist getDeviceOwner()Landroid/content/ComponentName;
    .locals 4

    .line 105
    const-string v0, "OplusCustomizeSecurityManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeSecurityManager;->getOplusCustomizeSecurityManagerService()Landroid/os/customize/IOplusCustomizeSecurityManagerService;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/customize/IOplusCustomizeSecurityManagerService;->getDeviceOwner()Landroid/content/ComponentName;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 108
    :catch_0
    move-exception v1

    .line 109
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDeviceOwner Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 106
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 107
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "getDeviceOwner fail!"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    .end local v1    # "e":Landroid/os/RemoteException;
    nop

    .line 111
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getDeviceOwnerOrganizationName()Ljava/lang/CharSequence;
    .locals 4

    .line 413
    const-string v0, "OplusCustomizeSecurityManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeSecurityManager;->getOplusCustomizeSecurityManagerService()Landroid/os/customize/IOplusCustomizeSecurityManagerService;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/customize/IOplusCustomizeSecurityManagerService;->getDeviceOwnerOrganizationName()Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 416
    :catch_0
    move-exception v1

    .line 417
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDeviceOwnerOrganizationName Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 414
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 415
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "getDeviceOwnerOrganizationName fail!"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 418
    .end local v1    # "e":Landroid/os/RemoteException;
    nop

    .line 419
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getEmmAdmin()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 79
    const-string v0, "OplusCustomizeSecurityManager"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v1, "emmAdminList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeSecurityManager;->getOplusCustomizeSecurityManagerService()Landroid/os/customize/IOplusCustomizeSecurityManagerService;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/customize/IOplusCustomizeSecurityManagerService;->getEmmAdmin()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 86
    :goto_0
    goto :goto_1

    .line 84
    :catch_0
    move-exception v2

    .line 85
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getEmmAdmin Error"

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
    const-string v3, "getEmmAdmin fail!"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 87
    :goto_1
    return-object v1
.end method

.method public whitelist getMobileCommSettings(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "business"    # Ljava/lang/String;
    .param p3, "setting"    # Ljava/lang/String;

    .line 197
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeSecurityManager;->getOplusCustomizeSecurityManagerService()Landroid/os/customize/IOplusCustomizeSecurityManagerService;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/os/customize/IOplusCustomizeSecurityManagerService;->getMobileCommSettings(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeSecurityManager"

    const-string v2, "getMobileCommSettings:err"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 201
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getOrganizationName(Landroid/content/ComponentName;)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 400
    const-string v0, "OplusCustomizeSecurityManager"

    if-eqz p1, :cond_0

    .line 401
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeSecurityManager;->getOplusCustomizeSecurityManagerService()Landroid/os/customize/IOplusCustomizeSecurityManagerService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/os/customize/IOplusCustomizeSecurityManagerService;->getOrganizationName(Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 405
    :catch_0
    move-exception v1

    .line 406
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOrganizationName Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 403
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 404
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "getOrganizationName fail!"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 407
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    nop

    .line 408
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getPhoneNumber(I)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I

    .line 185
    const-string v0, "OplusCustomizeSecurityManager"

    const/4 v1, 0x0

    .line 187
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeSecurityManager;->getOplusCustomizeSecurityManagerService()Landroid/os/customize/IOplusCustomizeSecurityManagerService;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/os/customize/IOplusCustomizeSecurityManagerService;->getPhoneNumber(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 192
    :goto_0
    goto :goto_1

    .line 190
    :catch_0
    move-exception v2

    .line 191
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPhoneNumber Error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 188
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 189
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "getPhoneNumber fail!"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 193
    :goto_1
    return-object v1
.end method

.method public whitelist getProfileOwner()Landroid/content/ComponentName;
    .locals 4

    .line 365
    const-string v0, "OplusCustomizeSecurityManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeSecurityManager;->getOplusCustomizeSecurityManagerService()Landroid/os/customize/IOplusCustomizeSecurityManagerService;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/customize/IOplusCustomizeSecurityManagerService;->getProfileOwner()Landroid/content/ComponentName;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 368
    :catch_0
    move-exception v1

    .line 369
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getProfileOwner Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 366
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 367
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "getProfileOwner fail!"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 370
    .end local v1    # "e":Landroid/os/RemoteException;
    nop

    .line 371
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getServerType()I
    .locals 4

    .line 225
    const/4 v0, 0x0

    .line 227
    .local v0, "ret":I
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeSecurityManager;->getOplusCustomizeSecurityManagerService()Landroid/os/customize/IOplusCustomizeSecurityManagerService;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/customize/IOplusCustomizeSecurityManagerService;->getServerType()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 230
    goto :goto_0

    .line 228
    :catch_0
    move-exception v1

    .line 229
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "OplusCustomizeSecurityManager"

    const-string v3, "getServerType:err"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 231
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public whitelist isCustomDevicePolicyEnabled()Z
    .locals 4

    .line 136
    const-string v0, "OplusCustomizeSecurityManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeSecurityManager;->getOplusCustomizeSecurityManagerService()Landroid/os/customize/IOplusCustomizeSecurityManagerService;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/customize/IOplusCustomizeSecurityManagerService;->isCustomDevicePolicyEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 139
    :catch_0
    move-exception v1

    .line 140
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCustomDevicePolicyEnabled Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 137
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 138
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "isCustomDevicePolicyEnabled fail!"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    .end local v1    # "e":Landroid/os/RemoteException;
    nop

    .line 142
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isEnableThirdRecord()Z
    .locals 5

    .line 300
    const-string v0, "isEnableThirdRecord Error"

    const-string v1, "OplusCustomizeSecurityManager"

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeSecurityManager;->getOplusCustomizeSecurityManagerService()Landroid/os/customize/IOplusCustomizeSecurityManagerService;

    move-result-object v3

    invoke-interface {v3}, Landroid/os/customize/IOplusCustomizeSecurityManagerService;->isEnableThirdRecord()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 304
    :catch_0
    move-exception v3

    .line 305
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

    .line 306
    return v2

    .line 301
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 302
    .local v3, "e":Landroid/os/RemoteException;
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    return v2
.end method

.method public whitelist isSetPasswordDisable()Z
    .locals 4

    .line 325
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeSecurityManager;->getOplusCustomizeSecurityManagerService()Landroid/os/customize/IOplusCustomizeSecurityManagerService;

    move-result-object v1

    .line 326
    .local v1, "manager":Landroid/os/customize/IOplusCustomizeSecurityManagerService;
    if-eqz v1, :cond_0

    .line 327
    invoke-interface {v1}, Landroid/os/customize/IOplusCustomizeSecurityManagerService;->isSetPasswordDisable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 332
    .end local v1    # "manager":Landroid/os/customize/IOplusCustomizeSecurityManagerService;
    :cond_0
    nop

    .line 333
    return v0

    .line 329
    :catch_0
    move-exception v1

    .line 330
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "OplusCustomizeSecurityManager"

    const-string v3, "isSetPasswordDisable Error"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    return v0
.end method

.method public whitelist isVerificationSkip()Z
    .locals 5

    .line 438
    const-string v0, "OplusCustomizeSecurityManager"

    const/4 v1, 0x0

    .line 440
    .local v1, "isSkip":Z
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeSecurityManager;->getOplusCustomizeSecurityManagerService()Landroid/os/customize/IOplusCustomizeSecurityManagerService;

    move-result-object v2

    .line 441
    .local v2, "iService":Landroid/os/customize/IOplusCustomizeSecurityManagerService;
    if-eqz v2, :cond_0

    .line 442
    invoke-interface {v2}, Landroid/os/customize/IOplusCustomizeSecurityManagerService;->isVerificationSkip()Z

    move-result v0

    move v1, v0

    .end local v1    # "isSkip":Z
    .local v0, "isSkip":Z
    goto :goto_0

    .line 444
    .end local v0    # "isSkip":Z
    .restart local v1    # "isSkip":Z
    :cond_0
    const-string v3, "mdm service IDeviceSecurityManager manager is null"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 450
    .end local v2    # "iService":Landroid/os/customize/IOplusCustomizeSecurityManagerService;
    :goto_0
    goto :goto_1

    .line 448
    :catch_0
    move-exception v2

    .line 449
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isVerificationSkip Error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 446
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 447
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "isVerificationSkip: fail"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 451
    :goto_1
    return v1
.end method

.method public whitelist listImei()[Ljava/lang/String;
    .locals 4

    .line 514
    const-string v0, "OplusCustomizeSecurityManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeSecurityManager;->getOplusCustomizeSecurityManagerService()Landroid/os/customize/IOplusCustomizeSecurityManagerService;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/customize/IOplusCustomizeSecurityManagerService;->listImei()[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 517
    :catch_0
    move-exception v1

    .line 518
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "list Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 515
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 516
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "list fail"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 519
    .end local v1    # "e":Landroid/os/RemoteException;
    nop

    .line 520
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist needHideKeyguardByMdm()Z
    .locals 4

    .line 270
    const-string v0, "OplusCustomizeSecurityManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeSecurityManager;->getOplusCustomizeSecurityManagerService()Landroid/os/customize/IOplusCustomizeSecurityManagerService;

    move-result-object v1

    .line 271
    .local v1, "manager":Landroid/os/customize/IOplusCustomizeSecurityManagerService;
    if-eqz v1, :cond_0

    .line 272
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mdm service IDeviceSecurityManager manager:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-interface {v1}, Landroid/os/customize/IOplusCustomizeSecurityManagerService;->needHideKeyguardByMdm()Z

    move-result v0

    return v0

    .line 275
    :cond_0
    const-string v2, "mdm service IDeviceSecurityManager manager is null"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    nop

    .end local v1    # "manager":Landroid/os/customize/IOplusCustomizeSecurityManagerService;
    goto :goto_0

    .line 277
    :catch_0
    move-exception v1

    .line 278
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "needHideKeyguardByMdm error!"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 281
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist readMdmLog()Ljava/lang/String;
    .locals 4

    .line 456
    const-string v0, "OplusCustomizeSecurityManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeSecurityManager;->getOplusCustomizeSecurityManagerService()Landroid/os/customize/IOplusCustomizeSecurityManagerService;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/customize/IOplusCustomizeSecurityManagerService;->readMdmLog()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 459
    :catch_0
    move-exception v1

    .line 460
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readMdmLog Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 457
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 458
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "readMdmLog: fail"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 461
    .end local v1    # "e":Landroid/os/RemoteException;
    nop

    .line 462
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist setCustomDevicePolicyEnabled(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .line 126
    const-string v0, "OplusCustomizeSecurityManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeSecurityManager;->getOplusCustomizeSecurityManagerService()Landroid/os/customize/IOplusCustomizeSecurityManagerService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/os/customize/IOplusCustomizeSecurityManagerService;->setCustomDevicePolicyEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 129
    :catch_0
    move-exception v1

    .line 130
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCustomDevicePolicyEnabled Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 127
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 128
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "setCustomDevicePolicyEnabled fail!"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 132
    :goto_1
    return-void
.end method

.method public whitelist setDeviceLocked(Landroid/content/ComponentName;)Z
    .locals 4
    .param p1, "cn"    # Landroid/content/ComponentName;

    .line 238
    const-string v0, "OplusCustomizeSecurityManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeSecurityManager;->getOplusCustomizeSecurityManagerService()Landroid/os/customize/IOplusCustomizeSecurityManagerService;

    move-result-object v1

    .line 239
    .local v1, "manager":Landroid/os/customize/IOplusCustomizeSecurityManagerService;
    if-eqz v1, :cond_0

    .line 240
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mdm service IDeviceSecurityManager manager:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-interface {v1, p1}, Landroid/os/customize/IOplusCustomizeSecurityManagerService;->setDeviceLocked(Landroid/content/ComponentName;)Z

    move-result v0

    return v0

    .line 243
    :cond_0
    const-string v2, "mdm service IDeviceSecurityManager manager is null"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    nop

    .end local v1    # "manager":Landroid/os/customize/IOplusCustomizeSecurityManagerService;
    goto :goto_0

    .line 245
    :catch_0
    move-exception v1

    .line 246
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "setDeviceLocked error!"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 249
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setDeviceOwner(Landroid/content/ComponentName;)Z
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 92
    const-string v0, "OplusCustomizeSecurityManager"

    if-eqz p1, :cond_0

    .line 93
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeSecurityManager;->getOplusCustomizeSecurityManagerService()Landroid/os/customize/IOplusCustomizeSecurityManagerService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/os/customize/IOplusCustomizeSecurityManagerService;->setDeviceOwner(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 97
    :catch_0
    move-exception v1

    .line 98
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDeviceOwner Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 95
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 96
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "setDeviceOwner fail!"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    nop

    .line 100
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setDeviceUnLocked(Landroid/content/ComponentName;)Z
    .locals 4
    .param p1, "cn"    # Landroid/content/ComponentName;

    .line 254
    const-string v0, "OplusCustomizeSecurityManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeSecurityManager;->getOplusCustomizeSecurityManagerService()Landroid/os/customize/IOplusCustomizeSecurityManagerService;

    move-result-object v1

    .line 255
    .local v1, "manager":Landroid/os/customize/IOplusCustomizeSecurityManagerService;
    if-eqz v1, :cond_0

    .line 256
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mdm service IDeviceSecurityManager manager:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-interface {v1, p1}, Landroid/os/customize/IOplusCustomizeSecurityManagerService;->setDeviceUnLocked(Landroid/content/ComponentName;)Z

    move-result v0

    return v0

    .line 259
    :cond_0
    const-string v2, "mdm service IDeviceSecurityManager manager is null"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    nop

    .end local v1    # "manager":Landroid/os/customize/IOplusCustomizeSecurityManagerService;
    goto :goto_0

    .line 261
    :catch_0
    move-exception v1

    .line 262
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "setDeviceUnLocked error!"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 265
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setEmmAdmin(Landroid/content/ComponentName;Z)V
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "enable"    # Z

    .line 70
    const-string v0, "OplusCustomizeSecurityManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeSecurityManager;->getOplusCustomizeSecurityManagerService()Landroid/os/customize/IOplusCustomizeSecurityManagerService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/os/customize/IOplusCustomizeSecurityManagerService;->setEmmAdmin(Landroid/content/ComponentName;Z)V
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

    const-string v3, "setEmmAdmin Error"

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
    const-string v2, "setEmmAdmin fail!"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 76
    :goto_1
    return-void
.end method

.method public whitelist setMobileCommSettings(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "business"    # Ljava/lang/String;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .line 206
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeSecurityManager;->getOplusCustomizeSecurityManagerService()Landroid/os/customize/IOplusCustomizeSecurityManagerService;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/os/customize/IOplusCustomizeSecurityManagerService;->setMobileCommSettings(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    goto :goto_0

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeSecurityManager"

    const-string v2, "setMobileCommSettings:err"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 210
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public whitelist setOrganizationName(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "name"    # Ljava/lang/CharSequence;

    .line 388
    const-string v0, "OplusCustomizeSecurityManager"

    if-eqz p1, :cond_0

    .line 389
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeSecurityManager;->getOplusCustomizeSecurityManagerService()Landroid/os/customize/IOplusCustomizeSecurityManagerService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/os/customize/IOplusCustomizeSecurityManagerService;->setOrganizationName(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 393
    :catch_0
    move-exception v1

    .line 394
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setOrganizationName Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 391
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 392
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "setOrganizationName fail!"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 395
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    nop

    .line 396
    :goto_1
    return-void
.end method

.method public whitelist setPasswordDisable(Z)Z
    .locals 4
    .param p1, "disable"    # Z

    .line 312
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeSecurityManager;->getOplusCustomizeSecurityManagerService()Landroid/os/customize/IOplusCustomizeSecurityManagerService;

    move-result-object v1

    .line 313
    .local v1, "manager":Landroid/os/customize/IOplusCustomizeSecurityManagerService;
    if-eqz v1, :cond_0

    .line 314
    invoke-interface {v1, p1}, Landroid/os/customize/IOplusCustomizeSecurityManagerService;->setPasswordDisable(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 319
    .end local v1    # "manager":Landroid/os/customize/IOplusCustomizeSecurityManagerService;
    :cond_0
    nop

    .line 320
    return v0

    .line 316
    :catch_0
    move-exception v1

    .line 317
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "OplusCustomizeSecurityManager"

    const-string v3, "setPasswordDisable Error"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    return v0
.end method

.method public whitelist setProfileOwner(Landroid/content/ComponentName;)Z
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 352
    const-string v0, "OplusCustomizeSecurityManager"

    if-eqz p1, :cond_0

    .line 353
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeSecurityManager;->getOplusCustomizeSecurityManagerService()Landroid/os/customize/IOplusCustomizeSecurityManagerService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/os/customize/IOplusCustomizeSecurityManagerService;->setProfileOwner(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 357
    :catch_0
    move-exception v1

    .line 358
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setProfileOwner Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 355
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 356
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "setProfileOwner fail!"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 359
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    nop

    .line 360
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setServerType(I)Z
    .locals 4
    .param p1, "serverType"    # I

    .line 214
    const/4 v0, 0x0

    .line 216
    .local v0, "ret":Z
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeSecurityManager;->getOplusCustomizeSecurityManagerService()Landroid/os/customize/IOplusCustomizeSecurityManagerService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/os/customize/IOplusCustomizeSecurityManagerService;->setServerType(I)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 219
    goto :goto_0

    .line 217
    :catch_0
    move-exception v1

    .line 218
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "OplusCustomizeSecurityManager"

    const-string v3, "setServerType:err"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 221
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public whitelist setVerificationSkip(Z)V
    .locals 4
    .param p1, "skip"    # Z

    .line 424
    const-string v0, "OplusCustomizeSecurityManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeSecurityManager;->getOplusCustomizeSecurityManagerService()Landroid/os/customize/IOplusCustomizeSecurityManagerService;

    move-result-object v1

    .line 425
    .local v1, "iService":Landroid/os/customize/IOplusCustomizeSecurityManagerService;
    if-eqz v1, :cond_0

    .line 426
    invoke-interface {v1, p1}, Landroid/os/customize/IOplusCustomizeSecurityManagerService;->setVerificationSkip(Z)V

    goto :goto_0

    .line 428
    :cond_0
    const-string v2, "mdm service IDeviceSecurityManager manager is null"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 432
    .end local v1    # "iService":Landroid/os/customize/IOplusCustomizeSecurityManagerService;
    :catch_0
    move-exception v1

    .line 433
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVerificationSkip Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 430
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 431
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "setVerificationSkip: fail"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 434
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 435
    :goto_1
    return-void
.end method

.method public whitelist writeMdmLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "result"    # Ljava/lang/String;
    .param p3, "describe"    # Ljava/lang/String;

    .line 466
    const-string v0, "OplusCustomizeSecurityManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeSecurityManager;->getOplusCustomizeSecurityManagerService()Landroid/os/customize/IOplusCustomizeSecurityManagerService;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroid/os/customize/IOplusCustomizeSecurityManagerService;->writeMdmLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 469
    :catch_0
    move-exception v1

    .line 470
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeMdmLog Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 467
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 468
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "writeMdmLog: fail"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 471
    .end local v1    # "e":Landroid/os/RemoteException;
    nop

    .line 472
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
