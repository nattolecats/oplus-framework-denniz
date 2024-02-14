.class public Landroid/os/customize/OplusCustomizeStateManager;
.super Ljava/lang/Object;
.source "OplusCustomizeStateManager.java"


# static fields
.field private static final blacklist SERVICE_NAME:Ljava/lang/String; = "OplusCustomizeStateManagerService"

.field private static final blacklist TAG:Ljava/lang/String; = "OplusCustomizeStateManager"

.field private static final blacklist mLock:Ljava/lang/Object;

.field private static final blacklist mServiceLock:Ljava/lang/Object;

.field private static volatile blacklist sInstance:Landroid/os/customize/OplusCustomizeStateManager;


# instance fields
.field private blacklist mOplusCustomizeStateManagerService:Landroid/os/customize/IOplusCustomizeStateManagerService;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/customize/OplusCustomizeStateManager;->mLock:Ljava/lang/Object;

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/customize/OplusCustomizeStateManager;->mServiceLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeStateManager;->getOplusCustomizeStateManagerService()Landroid/os/customize/IOplusCustomizeStateManagerService;

    .line 42
    return-void
.end method

.method public static final whitelist getInstance(Landroid/content/Context;)Landroid/os/customize/OplusCustomizeStateManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 45
    sget-object v0, Landroid/os/customize/OplusCustomizeStateManager;->sInstance:Landroid/os/customize/OplusCustomizeStateManager;

    if-nez v0, :cond_1

    .line 46
    sget-object v0, Landroid/os/customize/OplusCustomizeStateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 47
    :try_start_0
    sget-object v1, Landroid/os/customize/OplusCustomizeStateManager;->sInstance:Landroid/os/customize/OplusCustomizeStateManager;

    if-nez v1, :cond_0

    .line 48
    new-instance v1, Landroid/os/customize/OplusCustomizeStateManager;

    invoke-direct {v1}, Landroid/os/customize/OplusCustomizeStateManager;-><init>()V

    sput-object v1, Landroid/os/customize/OplusCustomizeStateManager;->sInstance:Landroid/os/customize/OplusCustomizeStateManager;

    .line 50
    :cond_0
    sget-object v1, Landroid/os/customize/OplusCustomizeStateManager;->sInstance:Landroid/os/customize/OplusCustomizeStateManager;

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
    sget-object v0, Landroid/os/customize/OplusCustomizeStateManager;->sInstance:Landroid/os/customize/OplusCustomizeStateManager;

    return-object v0
.end method

.method private blacklist getOplusCustomizeStateManagerService()Landroid/os/customize/IOplusCustomizeStateManagerService;
    .locals 3

    .line 57
    sget-object v0, Landroid/os/customize/OplusCustomizeStateManager;->mServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 58
    :try_start_0
    iget-object v1, p0, Landroid/os/customize/OplusCustomizeStateManager;->mOplusCustomizeStateManagerService:Landroid/os/customize/IOplusCustomizeStateManagerService;

    if-nez v1, :cond_0

    .line 59
    invoke-static {}, Landroid/os/customize/OplusCustomizeManager;->getInstance()Landroid/os/customize/OplusCustomizeManager;

    move-result-object v1

    const-string v2, "OplusCustomizeStateManagerService"

    invoke-virtual {v1, v2}, Landroid/os/customize/OplusCustomizeManager;->getDeviceManagerServiceByName(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/customize/IOplusCustomizeStateManagerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/customize/IOplusCustomizeStateManagerService;

    move-result-object v1

    iput-object v1, p0, Landroid/os/customize/OplusCustomizeStateManager;->mOplusCustomizeStateManagerService:Landroid/os/customize/IOplusCustomizeStateManagerService;

    .line 61
    :cond_0
    iget-object v1, p0, Landroid/os/customize/OplusCustomizeStateManager;->mOplusCustomizeStateManagerService:Landroid/os/customize/IOplusCustomizeStateManagerService;

    if-nez v1, :cond_1

    .line 62
    const-string v1, "OplusCustomizeStateManager"

    const-string v2, "mOplusCustomizeStateManagerService is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_1
    iget-object v1, p0, Landroid/os/customize/OplusCustomizeStateManager;->mOplusCustomizeStateManagerService:Landroid/os/customize/IOplusCustomizeStateManagerService;

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
.method public whitelist getAllowedAllFilesAccessList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 242
    const-string v0, "OplusCustomizeStateManager"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 244
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeStateManager;->getOplusCustomizeStateManagerService()Landroid/os/customize/IOplusCustomizeStateManagerService;

    move-result-object v2

    .line 245
    .local v2, "iService":Landroid/os/customize/IOplusCustomizeStateManagerService;
    if-eqz v2, :cond_0

    .line 246
    invoke-interface {v2}, Landroid/os/customize/IOplusCustomizeStateManagerService;->getAllowedAllFilesAccessList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 252
    .end local v2    # "iService":Landroid/os/customize/IOplusCustomizeStateManagerService;
    :cond_0
    :goto_0
    goto :goto_1

    .line 250
    :catch_0
    move-exception v2

    .line 251
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAllowedAllFilesAccessList Error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 248
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 249
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "getAllowedAllFilesAccessList: fail"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 253
    :goto_1
    return-object v1
.end method

.method public whitelist getAllowedGetUsageStatusList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 188
    const-string v0, "OplusCustomizeStateManager"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 190
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeStateManager;->getOplusCustomizeStateManagerService()Landroid/os/customize/IOplusCustomizeStateManagerService;

    move-result-object v2

    .line 191
    .local v2, "iService":Landroid/os/customize/IOplusCustomizeStateManagerService;
    if-eqz v2, :cond_0

    .line 192
    invoke-interface {v2}, Landroid/os/customize/IOplusCustomizeStateManagerService;->getAllowedGetUsageStatusList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 198
    .end local v2    # "iService":Landroid/os/customize/IOplusCustomizeStateManagerService;
    :cond_0
    :goto_0
    goto :goto_1

    .line 196
    :catch_0
    move-exception v2

    .line 197
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAllowedGetUsageStatusList Error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 194
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 195
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "getAllowedGetUsageStatusList: fail"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 199
    :goto_1
    return-object v1
.end method

.method public whitelist getAllowedNotificationListenerAccessList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeStateManager;->getOplusCustomizeStateManagerService()Landroid/os/customize/IOplusCustomizeStateManagerService;

    move-result-object v1

    .line 165
    .local v1, "iService":Landroid/os/customize/IOplusCustomizeStateManagerService;
    if-eqz v1, :cond_0

    .line 166
    invoke-interface {v1}, Landroid/os/customize/IOplusCustomizeStateManagerService;->getAllowedNotificationListenerAccessList()Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 170
    .end local v1    # "iService":Landroid/os/customize/IOplusCustomizeStateManagerService;
    :cond_0
    goto :goto_0

    .line 168
    :catch_0
    move-exception v1

    .line 169
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "OplusCustomizeStateManager"

    const-string v3, "getAllowedNotificationListenerAccessList fail: "

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 171
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public whitelist getAppRuntimeExceptionInfo()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 93
    const/4 v0, 0x0

    .line 95
    .local v0, "appExceps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeStateManager;->getOplusCustomizeStateManagerService()Landroid/os/customize/IOplusCustomizeStateManagerService;

    move-result-object v1

    .line 96
    .local v1, "iService":Landroid/os/customize/IOplusCustomizeStateManagerService;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/os/customize/IOplusCustomizeStateManagerService;->getAppRuntimeExceptionInfo()Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 99
    .end local v1    # "iService":Landroid/os/customize/IOplusCustomizeStateManagerService;
    :cond_0
    goto :goto_0

    .line 97
    :catch_0
    move-exception v1

    .line 98
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAppRuntimeExceptionInfo error!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OplusCustomizeStateManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public whitelist getDeviceState()[Ljava/lang/String;
    .locals 4

    .line 82
    const/4 v0, 0x0

    .line 84
    .local v0, "ret":[Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeStateManager;->getOplusCustomizeStateManagerService()Landroid/os/customize/IOplusCustomizeStateManagerService;

    move-result-object v1

    .line 85
    .local v1, "iService":Landroid/os/customize/IOplusCustomizeStateManagerService;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/os/customize/IOplusCustomizeStateManagerService;->getDeviceState()[Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 88
    .end local v1    # "iService":Landroid/os/customize/IOplusCustomizeStateManagerService;
    :cond_0
    goto :goto_0

    .line 86
    :catch_0
    move-exception v1

    .line 87
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDeviceState fail!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OplusCustomizeStateManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public whitelist getExtStorageMode(Ljava/lang/String;)I
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 216
    const/4 v0, -0x1

    .line 218
    .local v0, "mode":I
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeStateManager;->getOplusCustomizeStateManagerService()Landroid/os/customize/IOplusCustomizeStateManagerService;

    move-result-object v1

    .line 219
    .local v1, "iService":Landroid/os/customize/IOplusCustomizeStateManagerService;
    if-eqz v1, :cond_0

    .line 220
    invoke-interface {v1, p1}, Landroid/os/customize/IOplusCustomizeStateManagerService;->getExtStorageMode(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 224
    .end local v1    # "iService":Landroid/os/customize/IOplusCustomizeStateManagerService;
    :cond_0
    goto :goto_0

    .line 222
    :catch_0
    move-exception v1

    .line 223
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "OplusCustomizeStateManager"

    const-string v3, "getExtStorageMode: fail"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 225
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public whitelist getRunningApplication()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v0, "runningApplicationList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeStateManager;->getOplusCustomizeStateManagerService()Landroid/os/customize/IOplusCustomizeStateManagerService;

    move-result-object v1

    .line 72
    .local v1, "iOplusCustomizeStateManagerService":Landroid/os/customize/IOplusCustomizeStateManagerService;
    if-eqz v1, :cond_0

    .line 73
    invoke-interface {v1}, Landroid/os/customize/IOplusCustomizeStateManagerService;->getRunningApplication()Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 77
    .end local v1    # "iOplusCustomizeStateManagerService":Landroid/os/customize/IOplusCustomizeStateManagerService;
    :cond_0
    goto :goto_0

    .line 75
    :catch_0
    move-exception v1

    .line 76
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "OplusCustomizeStateManager"

    const-string v3, "getRunningApplication fail!"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    return-object v1
.end method

.method public whitelist getScreenOnStatus()Z
    .locals 4

    .line 124
    const/4 v0, 0x0

    .line 126
    .local v0, "ret":Z
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeStateManager;->getOplusCustomizeStateManagerService()Landroid/os/customize/IOplusCustomizeStateManagerService;

    move-result-object v1

    .line 127
    .local v1, "iService":Landroid/os/customize/IOplusCustomizeStateManagerService;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/os/customize/IOplusCustomizeStateManagerService;->getScreenOnStatus()Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 130
    .end local v1    # "iService":Landroid/os/customize/IOplusCustomizeStateManagerService;
    :cond_0
    goto :goto_0

    .line 128
    :catch_0
    move-exception v1

    .line 129
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getScreenOnStatus error!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OplusCustomizeStateManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public whitelist getSystemIntegrity()Z
    .locals 4

    .line 104
    const/4 v0, 0x0

    .line 106
    .local v0, "ret":Z
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeStateManager;->getOplusCustomizeStateManagerService()Landroid/os/customize/IOplusCustomizeStateManagerService;

    move-result-object v1

    .line 107
    .local v1, "iService":Landroid/os/customize/IOplusCustomizeStateManagerService;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/os/customize/IOplusCustomizeStateManagerService;->getSystemIntegrity()Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 110
    .end local v1    # "iService":Landroid/os/customize/IOplusCustomizeStateManagerService;
    :cond_0
    goto :goto_0

    .line 108
    :catch_0
    move-exception v1

    .line 109
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSystemIntegrity error!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OplusCustomizeStateManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public whitelist setAllowedAllFilesAccessList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 230
    .local p1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "OplusCustomizeStateManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeStateManager;->getOplusCustomizeStateManagerService()Landroid/os/customize/IOplusCustomizeStateManagerService;

    move-result-object v1

    .line 231
    .local v1, "iService":Landroid/os/customize/IOplusCustomizeStateManagerService;
    if-eqz v1, :cond_0

    .line 232
    invoke-interface {v1, p1}, Landroid/os/customize/IOplusCustomizeStateManagerService;->setAllowedAllFilesAccessList(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 236
    .end local v1    # "iService":Landroid/os/customize/IOplusCustomizeStateManagerService;
    :catch_0
    move-exception v1

    .line 237
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAllowedAllFilesAccessList Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 234
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 235
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "setAllowedAllFilesAccessList: fail"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 238
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    nop

    .line 239
    :goto_1
    return-void
.end method

.method public whitelist setAllowedGetUsageStatusList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 176
    .local p1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "OplusCustomizeStateManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeStateManager;->getOplusCustomizeStateManagerService()Landroid/os/customize/IOplusCustomizeStateManagerService;

    move-result-object v1

    .line 177
    .local v1, "iService":Landroid/os/customize/IOplusCustomizeStateManagerService;
    if-eqz v1, :cond_0

    .line 178
    invoke-interface {v1, p1}, Landroid/os/customize/IOplusCustomizeStateManagerService;->setAllowedGetUsageStatusList(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 182
    .end local v1    # "iService":Landroid/os/customize/IOplusCustomizeStateManagerService;
    :catch_0
    move-exception v1

    .line 183
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAllowedGetUsageStatusList Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 180
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 181
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "setAllowedGetUsageStatusList: fail"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 184
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    nop

    .line 185
    :goto_1
    return-void
.end method

.method public whitelist setAllowedNotificationListenerAccessList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 144
    .local p1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeStateManager;->getOplusCustomizeStateManagerService()Landroid/os/customize/IOplusCustomizeStateManagerService;

    move-result-object v0

    .line 145
    .local v0, "iService":Landroid/os/customize/IOplusCustomizeStateManagerService;
    if-eqz v0, :cond_0

    .line 146
    invoke-interface {v0, p1}, Landroid/os/customize/IOplusCustomizeStateManagerService;->setAllowedNotificationListenerAccessList(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .end local v0    # "iService":Landroid/os/customize/IOplusCustomizeStateManagerService;
    :cond_0
    goto :goto_0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OplusCustomizeStateManager"

    const-string v2, "setAllowedNotificationListenerAccessList fail: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist setExtStorageMode(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "choice"    # I
    .param p4, "systemFixed"    # Z

    .line 204
    const-string v0, "OplusCustomizeStateManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeStateManager;->getOplusCustomizeStateManagerService()Landroid/os/customize/IOplusCustomizeStateManagerService;

    move-result-object v1

    .line 205
    .local v1, "iService":Landroid/os/customize/IOplusCustomizeStateManagerService;
    if-eqz v1, :cond_0

    .line 206
    invoke-interface {v1, p1, p2, p3, p4}, Landroid/os/customize/IOplusCustomizeStateManagerService;->setExtStorageMode(Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 210
    .end local v1    # "iService":Landroid/os/customize/IOplusCustomizeStateManagerService;
    :catch_0
    move-exception v1

    .line 211
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setExtStorageMode Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 208
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 209
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "setExtStorageMode: fail"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 212
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    nop

    .line 213
    :goto_1
    return-void
.end method

.method public whitelist setScreenOnStatus(Z)V
    .locals 3
    .param p1, "screenOnStatus"    # Z

    .line 116
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeStateManager;->getOplusCustomizeStateManagerService()Landroid/os/customize/IOplusCustomizeStateManagerService;

    move-result-object v0

    .line 117
    .local v0, "iService":Landroid/os/customize/IOplusCustomizeStateManagerService;
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/os/customize/IOplusCustomizeStateManagerService;->setScreenOnStatus(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .end local v0    # "iService":Landroid/os/customize/IOplusCustomizeStateManagerService;
    :cond_0
    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScreenOnStatus error!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusCustomizeStateManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
