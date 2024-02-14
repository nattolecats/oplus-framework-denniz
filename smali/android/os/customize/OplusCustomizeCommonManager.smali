.class public Landroid/os/customize/OplusCustomizeCommonManager;
.super Ljava/lang/Object;
.source "OplusCustomizeCommonManager.java"


# static fields
.field private static final blacklist SERVICE_NAME:Ljava/lang/String; = "OplusCustomizeCommonManagerService"

.field private static final blacklist TAG:Ljava/lang/String; = "OplusCustomizeCommonManager"

.field private static final blacklist mLock:Ljava/lang/Object;

.field private static final blacklist mServiceLock:Ljava/lang/Object;

.field private static volatile blacklist sInstance:Landroid/os/customize/OplusCustomizeCommonManager;


# instance fields
.field private blacklist mOplusCustomizeCommonManagerService:Landroid/os/customize/IOplusCustomizeCommonManagerService;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/customize/OplusCustomizeCommonManager;->mLock:Ljava/lang/Object;

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/customize/OplusCustomizeCommonManager;->mServiceLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeCommonManager;->getOplusCustomizeCommonManagerService()Landroid/os/customize/IOplusCustomizeCommonManagerService;

    .line 44
    return-void
.end method

.method public static final whitelist getInstance(Landroid/content/Context;)Landroid/os/customize/OplusCustomizeCommonManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 54
    sget-object v0, Landroid/os/customize/OplusCustomizeCommonManager;->sInstance:Landroid/os/customize/OplusCustomizeCommonManager;

    if-nez v0, :cond_1

    .line 55
    sget-object v0, Landroid/os/customize/OplusCustomizeCommonManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 56
    :try_start_0
    sget-object v1, Landroid/os/customize/OplusCustomizeCommonManager;->sInstance:Landroid/os/customize/OplusCustomizeCommonManager;

    if-nez v1, :cond_0

    .line 57
    new-instance v1, Landroid/os/customize/OplusCustomizeCommonManager;

    invoke-direct {v1}, Landroid/os/customize/OplusCustomizeCommonManager;-><init>()V

    sput-object v1, Landroid/os/customize/OplusCustomizeCommonManager;->sInstance:Landroid/os/customize/OplusCustomizeCommonManager;

    .line 59
    :cond_0
    sget-object v1, Landroid/os/customize/OplusCustomizeCommonManager;->sInstance:Landroid/os/customize/OplusCustomizeCommonManager;

    monitor-exit v0

    return-object v1

    .line 60
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 62
    :cond_1
    sget-object v0, Landroid/os/customize/OplusCustomizeCommonManager;->sInstance:Landroid/os/customize/OplusCustomizeCommonManager;

    return-object v0
.end method

.method private blacklist getOplusCustomizeCommonManagerService()Landroid/os/customize/IOplusCustomizeCommonManagerService;
    .locals 3

    .line 66
    sget-object v0, Landroid/os/customize/OplusCustomizeCommonManager;->mServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 67
    :try_start_0
    iget-object v1, p0, Landroid/os/customize/OplusCustomizeCommonManager;->mOplusCustomizeCommonManagerService:Landroid/os/customize/IOplusCustomizeCommonManagerService;

    if-nez v1, :cond_0

    .line 68
    nop

    .line 69
    invoke-static {}, Landroid/os/customize/OplusCustomizeManager;->getInstance()Landroid/os/customize/OplusCustomizeManager;

    move-result-object v1

    const-string v2, "OplusCustomizeCommonManagerService"

    invoke-virtual {v1, v2}, Landroid/os/customize/OplusCustomizeManager;->getDeviceManagerServiceByName(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/customize/IOplusCustomizeCommonManagerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/customize/IOplusCustomizeCommonManagerService;

    move-result-object v1

    iput-object v1, p0, Landroid/os/customize/OplusCustomizeCommonManager;->mOplusCustomizeCommonManagerService:Landroid/os/customize/IOplusCustomizeCommonManagerService;

    .line 71
    :cond_0
    iget-object v1, p0, Landroid/os/customize/OplusCustomizeCommonManager;->mOplusCustomizeCommonManagerService:Landroid/os/customize/IOplusCustomizeCommonManagerService;

    monitor-exit v0

    return-object v1

    .line 72
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public whitelist getPolicy(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4
    .param p1, "cmd"    # I
    .param p2, "param"    # Landroid/os/Bundle;

    .line 127
    const-string v0, "getPolicy fail!"

    const-string v1, "OplusCustomizeCommonManager"

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 129
    .local v2, "bundle":Landroid/os/Bundle;
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeCommonManager;->getOplusCustomizeCommonManagerService()Landroid/os/customize/IOplusCustomizeCommonManagerService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/os/customize/IOplusCustomizeCommonManagerService;->getPolicy(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    move-object v2, v3

    .line 130
    const-string v3, "getPolicy: succeeded"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 133
    :catch_0
    move-exception v3

    .line 134
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v1, v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 131
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 132
    .local v3, "e":Landroid/os/RemoteException;
    invoke-static {v1, v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 136
    :goto_1
    return-object v2
.end method

.method public whitelist handleCmd(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "cmd"    # I
    .param p2, "param"    # Landroid/os/Bundle;

    .line 86
    const-string v0, "handleCmd fail!"

    const-string v1, "OplusCustomizeCommonManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeCommonManager;->getOplusCustomizeCommonManagerService()Landroid/os/customize/IOplusCustomizeCommonManagerService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/os/customize/IOplusCustomizeCommonManagerService;->handleCmd(ILandroid/os/Bundle;)V

    .line 87
    const-string v2, "handleCmd: succeeded"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 90
    :catch_0
    move-exception v2

    .line 91
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v1, v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 88
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 89
    .local v2, "e":Landroid/os/RemoteException;
    invoke-static {v1, v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 93
    :goto_1
    return-void
.end method

.method public whitelist handleCmdExt(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4
    .param p1, "cmd"    # I
    .param p2, "param"    # Landroid/os/Bundle;

    .line 105
    const-string v0, "handleCmdExt fail!"

    const-string v1, "OplusCustomizeCommonManager"

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 107
    .local v2, "bundle":Landroid/os/Bundle;
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeCommonManager;->getOplusCustomizeCommonManagerService()Landroid/os/customize/IOplusCustomizeCommonManagerService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/os/customize/IOplusCustomizeCommonManagerService;->handleCmdExt(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    move-object v2, v3

    .line 108
    const-string v3, "handleCmdExt: succeeded"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 111
    :catch_0
    move-exception v3

    .line 112
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v1, v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 109
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 110
    .local v3, "e":Landroid/os/RemoteException;
    invoke-static {v1, v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 113
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 114
    :goto_1
    return-object v2
.end method
