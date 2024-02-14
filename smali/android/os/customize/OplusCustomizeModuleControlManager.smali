.class public Landroid/os/customize/OplusCustomizeModuleControlManager;
.super Ljava/lang/Object;
.source "OplusCustomizeModuleControlManager.java"


# static fields
.field private static final blacklist SERVICE_NAME:Ljava/lang/String; = "OplusCustomizeModuleControlManagerService"

.field private static final blacklist TAG:Ljava/lang/String; = "OplusCustomizeModuleControlManager"

.field private static final blacklist mLock:Ljava/lang/Object;

.field private static final blacklist mServiceLock:Ljava/lang/Object;

.field private static volatile blacklist sInstance:Landroid/os/customize/OplusCustomizeModuleControlManager;


# instance fields
.field private blacklist mOplusCustomizeModuleControlManagerService:Landroid/os/customize/IOplusCustomizeModuleControlManagerService;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/customize/OplusCustomizeModuleControlManager;->mLock:Ljava/lang/Object;

    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/customize/OplusCustomizeModuleControlManager;->mServiceLock:Ljava/lang/Object;

    .line 21
    const/4 v0, 0x0

    sput-object v0, Landroid/os/customize/OplusCustomizeModuleControlManager;->sInstance:Landroid/os/customize/OplusCustomizeModuleControlManager;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final whitelist getInstance(Landroid/content/Context;)Landroid/os/customize/OplusCustomizeModuleControlManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 33
    sget-object v0, Landroid/os/customize/OplusCustomizeModuleControlManager;->sInstance:Landroid/os/customize/OplusCustomizeModuleControlManager;

    if-nez v0, :cond_1

    .line 34
    sget-object v0, Landroid/os/customize/OplusCustomizeModuleControlManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 35
    :try_start_0
    sget-object v1, Landroid/os/customize/OplusCustomizeModuleControlManager;->sInstance:Landroid/os/customize/OplusCustomizeModuleControlManager;

    if-nez v1, :cond_0

    .line 36
    new-instance v1, Landroid/os/customize/OplusCustomizeModuleControlManager;

    invoke-direct {v1}, Landroid/os/customize/OplusCustomizeModuleControlManager;-><init>()V

    sput-object v1, Landroid/os/customize/OplusCustomizeModuleControlManager;->sInstance:Landroid/os/customize/OplusCustomizeModuleControlManager;

    .line 38
    :cond_0
    sget-object v1, Landroid/os/customize/OplusCustomizeModuleControlManager;->sInstance:Landroid/os/customize/OplusCustomizeModuleControlManager;

    monitor-exit v0

    return-object v1

    .line 39
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 41
    :cond_1
    sget-object v0, Landroid/os/customize/OplusCustomizeModuleControlManager;->sInstance:Landroid/os/customize/OplusCustomizeModuleControlManager;

    return-object v0
.end method

.method private blacklist getOplusCustomizeModuleControlManagerService()Landroid/os/customize/IOplusCustomizeModuleControlManagerService;
    .locals 3

    .line 45
    sget-object v0, Landroid/os/customize/OplusCustomizeModuleControlManager;->mServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 46
    :try_start_0
    iget-object v1, p0, Landroid/os/customize/OplusCustomizeModuleControlManager;->mOplusCustomizeModuleControlManagerService:Landroid/os/customize/IOplusCustomizeModuleControlManagerService;

    if-nez v1, :cond_0

    .line 47
    invoke-static {}, Landroid/os/customize/OplusCustomizeManager;->getInstance()Landroid/os/customize/OplusCustomizeManager;

    move-result-object v1

    const-string v2, "OplusCustomizeModuleControlManagerService"

    invoke-virtual {v1, v2}, Landroid/os/customize/OplusCustomizeManager;->getDeviceManagerServiceByName(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/customize/IOplusCustomizeModuleControlManagerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/customize/IOplusCustomizeModuleControlManagerService;

    move-result-object v1

    iput-object v1, p0, Landroid/os/customize/OplusCustomizeModuleControlManager;->mOplusCustomizeModuleControlManagerService:Landroid/os/customize/IOplusCustomizeModuleControlManagerService;

    .line 49
    :cond_0
    iget-object v1, p0, Landroid/os/customize/OplusCustomizeModuleControlManager;->mOplusCustomizeModuleControlManagerService:Landroid/os/customize/IOplusCustomizeModuleControlManagerService;

    monitor-exit v0

    return-object v1

    .line 50
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public whitelist getModuleControlStateByType(I)Z
    .locals 4
    .param p1, "moduleType"    # I

    .line 63
    const-string v0, "OplusCustomizeModuleControlManager"

    const/4 v1, 0x1

    .line 65
    .local v1, "result":Z
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeModuleControlManager;->getOplusCustomizeModuleControlManagerService()Landroid/os/customize/IOplusCustomizeModuleControlManagerService;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/os/customize/IOplusCustomizeModuleControlManagerService;->getModuleControlStateByType(I)Z

    move-result v2

    move v1, v2

    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getApplicationControlState is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 69
    :catch_0
    move-exception v2

    .line 70
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getApplicationControlState fail"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 67
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 68
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "getApplicationControlState"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 72
    :goto_1
    return v1
.end method

.method public whitelist getModuleControlStateByTypeAdmin(ILandroid/content/ComponentName;Landroid/os/Bundle;)Z
    .locals 4
    .param p1, "moduleType"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .line 110
    const-string v0, "OplusCustomizeModuleControlManager"

    const/4 v1, 0x1

    .line 112
    .local v1, "result":Z
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeModuleControlManager;->getOplusCustomizeModuleControlManagerService()Landroid/os/customize/IOplusCustomizeModuleControlManagerService;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroid/os/customize/IOplusCustomizeModuleControlManagerService;->getModuleControlStateByTypeAdmin(ILandroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result v2

    move v1, v2

    .line 113
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getApplicationControlState is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 116
    :catch_0
    move-exception v2

    .line 117
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getApplicationControlState fail"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 114
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 115
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "getApplicationControlState"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 118
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 119
    :goto_1
    return v1
.end method

.method public whitelist getModuleControlStateByTypeBundle(ILandroid/os/Bundle;)Z
    .locals 4
    .param p1, "moduleType"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 86
    const-string v0, "OplusCustomizeModuleControlManager"

    const/4 v1, 0x1

    .line 88
    .local v1, "result":Z
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeModuleControlManager;->getOplusCustomizeModuleControlManagerService()Landroid/os/customize/IOplusCustomizeModuleControlManagerService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/os/customize/IOplusCustomizeModuleControlManagerService;->getModuleControlStateByTypeBundle(ILandroid/os/Bundle;)Z

    move-result v2

    move v1, v2

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getApplicationControlState is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 92
    :catch_0
    move-exception v2

    .line 93
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getApplicationControlState fail"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 90
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 91
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "getApplicationControlState"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 95
    :goto_1
    return v1
.end method
