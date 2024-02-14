.class public Landroid/os/customize/OplusCustomizeSettingsManager;
.super Ljava/lang/Object;
.source "OplusCustomizeSettingsManager.java"


# static fields
.field private static final blacklist SERVICE_NAME:Ljava/lang/String; = "OplusCustomizeSettingsManagerService"

.field private static final blacklist TAG:Ljava/lang/String; = "OplusCustomizeSettingsManager"

.field private static final blacklist mLock:Ljava/lang/Object;

.field private static final blacklist mServiceLock:Ljava/lang/Object;

.field private static volatile blacklist sInstance:Landroid/os/customize/OplusCustomizeSettingsManager;


# instance fields
.field private blacklist mOplusCustomizeSettingsManagerService:Landroid/os/customize/IOplusCustomizeSettingsManagerService;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/customize/OplusCustomizeSettingsManager;->mLock:Ljava/lang/Object;

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/customize/OplusCustomizeSettingsManager;->mServiceLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeSettingsManager;->getOplusCustomizeSettingsManagerService()Landroid/os/customize/IOplusCustomizeSettingsManagerService;

    .line 38
    return-void
.end method

.method public static final whitelist getInstance(Landroid/content/Context;)Landroid/os/customize/OplusCustomizeSettingsManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 41
    sget-object v0, Landroid/os/customize/OplusCustomizeSettingsManager;->sInstance:Landroid/os/customize/OplusCustomizeSettingsManager;

    if-nez v0, :cond_1

    .line 42
    sget-object v0, Landroid/os/customize/OplusCustomizeSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 43
    :try_start_0
    sget-object v1, Landroid/os/customize/OplusCustomizeSettingsManager;->sInstance:Landroid/os/customize/OplusCustomizeSettingsManager;

    if-nez v1, :cond_0

    .line 44
    new-instance v1, Landroid/os/customize/OplusCustomizeSettingsManager;

    invoke-direct {v1}, Landroid/os/customize/OplusCustomizeSettingsManager;-><init>()V

    sput-object v1, Landroid/os/customize/OplusCustomizeSettingsManager;->sInstance:Landroid/os/customize/OplusCustomizeSettingsManager;

    .line 46
    :cond_0
    sget-object v1, Landroid/os/customize/OplusCustomizeSettingsManager;->sInstance:Landroid/os/customize/OplusCustomizeSettingsManager;

    monitor-exit v0

    return-object v1

    .line 47
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 49
    :cond_1
    sget-object v0, Landroid/os/customize/OplusCustomizeSettingsManager;->sInstance:Landroid/os/customize/OplusCustomizeSettingsManager;

    return-object v0
.end method

.method private blacklist getOplusCustomizeSettingsManagerService()Landroid/os/customize/IOplusCustomizeSettingsManagerService;
    .locals 3

    .line 53
    sget-object v0, Landroid/os/customize/OplusCustomizeSettingsManager;->mServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 54
    :try_start_0
    iget-object v1, p0, Landroid/os/customize/OplusCustomizeSettingsManager;->mOplusCustomizeSettingsManagerService:Landroid/os/customize/IOplusCustomizeSettingsManagerService;

    if-nez v1, :cond_0

    .line 55
    invoke-static {}, Landroid/os/customize/OplusCustomizeManager;->getInstance()Landroid/os/customize/OplusCustomizeManager;

    move-result-object v1

    const-string v2, "OplusCustomizeSettingsManagerService"

    invoke-virtual {v1, v2}, Landroid/os/customize/OplusCustomizeManager;->getDeviceManagerServiceByName(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/customize/IOplusCustomizeSettingsManagerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/customize/IOplusCustomizeSettingsManagerService;

    move-result-object v1

    iput-object v1, p0, Landroid/os/customize/OplusCustomizeSettingsManager;->mOplusCustomizeSettingsManagerService:Landroid/os/customize/IOplusCustomizeSettingsManagerService;

    .line 57
    :cond_0
    iget-object v1, p0, Landroid/os/customize/OplusCustomizeSettingsManager;->mOplusCustomizeSettingsManagerService:Landroid/os/customize/IOplusCustomizeSettingsManagerService;

    monitor-exit v0

    return-object v1

    .line 58
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public whitelist addManageNotificationToWhiteList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 264
    .local p1, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeSettingsManager;->getOplusCustomizeSettingsManagerService()Landroid/os/customize/IOplusCustomizeSettingsManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/customize/IOplusCustomizeSettingsManagerService;->addManageNotificationToWhiteList(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    goto :goto_0

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addManageNotificationToWhiteList fail!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusCustomizeSettingsManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public whitelist deleteManageNotificationFromWhiteList()V
    .locals 3

    .line 289
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeSettingsManager;->getOplusCustomizeSettingsManagerService()Landroid/os/customize/IOplusCustomizeSettingsManagerService;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/customize/IOplusCustomizeSettingsManagerService;->deleteManageNotificationFromWhiteList()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    goto :goto_0

    .line 290
    :catch_0
    move-exception v0

    .line 291
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteManageNotificationFromWhiteList fail!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusCustomizeSettingsManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public whitelist getAutoScreenOffTime(Landroid/content/ComponentName;)J
    .locals 3
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 151
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeSettingsManager;->getOplusCustomizeSettingsManagerService()Landroid/os/customize/IOplusCustomizeSettingsManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/customize/IOplusCustomizeSettingsManagerService;->getAutoScreenOffTime(Landroid/content/ComponentName;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAutoScreenOffTime error!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusCustomizeSettingsManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    .end local v0    # "e":Ljava/lang/Exception;
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist getManageNotificationWhiteList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 280
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeSettingsManager;->getOplusCustomizeSettingsManagerService()Landroid/os/customize/IOplusCustomizeSettingsManagerService;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/customize/IOplusCustomizeSettingsManagerService;->getManageNotificationWhiteList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 281
    :catch_0
    move-exception v0

    .line 282
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getManageNotificationWhiteList fail!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusCustomizeSettingsManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getRomVersion(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 3
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 195
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeSettingsManager;->getOplusCustomizeSettingsManagerService()Landroid/os/customize/IOplusCustomizeSettingsManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/customize/IOplusCustomizeSettingsManagerService;->getRomVersion(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRomVersion error!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusCustomizeSettingsManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getTopWatermark()Z
    .locals 1

    .line 115
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeSettingsManager;->getOplusCustomizeSettingsManagerService()Landroid/os/customize/IOplusCustomizeSettingsManagerService;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/customize/IOplusCustomizeSettingsManagerService;->getTopWatermark()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 119
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isBackupRestoreDisabled(Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 133
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeSettingsManager;->getOplusCustomizeSettingsManagerService()Landroid/os/customize/IOplusCustomizeSettingsManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/customize/IOplusCustomizeSettingsManagerService;->isBackupRestoreDisabled(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeSettingsManager"

    const-string v2, "isBackupRestoreDisabled fail!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 136
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist isDeveloperOptionsDisabled(Landroid/content/ComponentName;)Z
    .locals 4
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 233
    const/4 v0, 0x0

    .line 235
    .local v0, "result":Z
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeSettingsManager;->getOplusCustomizeSettingsManagerService()Landroid/os/customize/IOplusCustomizeSettingsManagerService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/os/customize/IOplusCustomizeSettingsManagerService;->isDeveloperOptionsDisabled(Landroid/content/ComponentName;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 238
    goto :goto_0

    .line 236
    :catch_0
    move-exception v1

    .line 237
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDeveloperOptionsDisabled Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OplusCustomizeSettingsManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public whitelist isProtectEyesOn(Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 72
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeSettingsManager;->getOplusCustomizeSettingsManagerService()Landroid/os/customize/IOplusCustomizeSettingsManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/customize/IOplusCustomizeSettingsManagerService;->isProtectEyesOn(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeSettingsManager"

    const-string v2, "isProtectEyesOn fail!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist isRestoreFactoryDisabled(Landroid/content/ComponentName;)Z
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 213
    const/4 v0, 0x0

    .line 215
    .local v0, "result":Z
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeSettingsManager;->getOplusCustomizeSettingsManagerService()Landroid/os/customize/IOplusCustomizeSettingsManagerService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/os/customize/IOplusCustomizeSettingsManagerService;->isRestoreFactoryDisabled(Landroid/content/ComponentName;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 218
    goto :goto_0

    .line 216
    :catch_0
    move-exception v1

    .line 217
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRestoreFactoryDisabled Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OplusCustomizeSettingsManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public whitelist isSIMLockDisabled(Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 90
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeSettingsManager;->getOplusCustomizeSettingsManagerService()Landroid/os/customize/IOplusCustomizeSettingsManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/customize/IOplusCustomizeSettingsManagerService;->isSIMLockDisabled(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeSettingsManager"

    const-string v2, "isSIMLockDisabled fail!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist isScreenOffTimeSetByPolicy(Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 160
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeSettingsManager;->getOplusCustomizeSettingsManagerService()Landroid/os/customize/IOplusCustomizeSettingsManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/customize/IOplusCustomizeSettingsManagerService;->isScreenOffTimeSetByPolicy(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAutoScreenOffTime error!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusCustomizeSettingsManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isSearchIndexDisabled(Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 186
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeSettingsManager;->getOplusCustomizeSettingsManagerService()Landroid/os/customize/IOplusCustomizeSettingsManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/customize/IOplusCustomizeSettingsManagerService;->isSearchIndexDisabled(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeSettingsManager"

    const-string v2, "isSearchIndexDisabled error!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 190
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isTimeAndDateSetDisabled(Landroid/content/ComponentName;)Z
    .locals 4
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 253
    const/4 v0, 0x0

    .line 255
    .local v0, "result":Z
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeSettingsManager;->getOplusCustomizeSettingsManagerService()Landroid/os/customize/IOplusCustomizeSettingsManagerService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/os/customize/IOplusCustomizeSettingsManagerService;->isTimeAndDateSetDisabled(Landroid/content/ComponentName;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 258
    goto :goto_0

    .line 256
    :catch_0
    move-exception v1

    .line 257
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isTimeAndDateSetDisabled Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OplusCustomizeSettingsManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public whitelist removeManageNotificationFromWhiteList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 272
    .local p1, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeSettingsManager;->getOplusCustomizeSettingsManagerService()Landroid/os/customize/IOplusCustomizeSettingsManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/customize/IOplusCustomizeSettingsManagerService;->removeManageNotificationFromWhiteList(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    goto :goto_0

    .line 273
    :catch_0
    move-exception v0

    .line 274
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeManageNotificationFromWhiteList fail!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusCustomizeSettingsManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public whitelist setAutoScreenOffTime(Landroid/content/ComponentName;J)Z
    .locals 3
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "millis"    # J

    .line 142
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeSettingsManager;->getOplusCustomizeSettingsManagerService()Landroid/os/customize/IOplusCustomizeSettingsManagerService;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/os/customize/IOplusCustomizeSettingsManagerService;->setAutoScreenOffTime(Landroid/content/ComponentName;J)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAutoScreenOffTime error!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusCustomizeSettingsManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setBackupRestoreDisabled(Landroid/content/ComponentName;Z)Z
    .locals 3
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    .line 124
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeSettingsManager;->getOplusCustomizeSettingsManagerService()Landroid/os/customize/IOplusCustomizeSettingsManagerService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/os/customize/IOplusCustomizeSettingsManagerService;->setBackupRestoreDisabled(Landroid/content/ComponentName;Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeSettingsManager"

    const-string v2, "setBackupRestoreDisabled fail!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 127
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist setDevelopmentOptionsDisabled(Landroid/content/ComponentName;Z)Z
    .locals 4
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    .line 223
    const/4 v0, 0x0

    .line 225
    .local v0, "result":Z
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeSettingsManager;->getOplusCustomizeSettingsManagerService()Landroid/os/customize/IOplusCustomizeSettingsManagerService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/os/customize/IOplusCustomizeSettingsManagerService;->setDevelopmentOptionsDisabled(Landroid/content/ComponentName;Z)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 228
    goto :goto_0

    .line 226
    :catch_0
    move-exception v1

    .line 227
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDevelopmentOptionsDisabled Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OplusCustomizeSettingsManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public whitelist setInterceptAllNotifications(Z)Z
    .locals 3
    .param p1, "intercepted"    # Z

    .line 297
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeSettingsManager;->getOplusCustomizeSettingsManagerService()Landroid/os/customize/IOplusCustomizeSettingsManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/customize/IOplusCustomizeSettingsManagerService;->setInterceptAllNotifications(Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 298
    :catch_0
    move-exception v0

    .line 299
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInterceptAllNotifications fail!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusCustomizeSettingsManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist setInterceptNonSystemNotifications(Z)Z
    .locals 3
    .param p1, "intercepted"    # Z

    .line 315
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeSettingsManager;->getOplusCustomizeSettingsManagerService()Landroid/os/customize/IOplusCustomizeSettingsManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/customize/IOplusCustomizeSettingsManagerService;->setInterceptNonSystemNotifications(Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 316
    :catch_0
    move-exception v0

    .line 317
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInterceptNonSystemNotifications fail!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusCustomizeSettingsManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist setRestoreFactoryDisabled(Landroid/content/ComponentName;Z)Z
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    .line 203
    const/4 v0, 0x0

    .line 205
    .local v0, "result":Z
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeSettingsManager;->getOplusCustomizeSettingsManagerService()Landroid/os/customize/IOplusCustomizeSettingsManagerService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/os/customize/IOplusCustomizeSettingsManagerService;->setRestoreFactoryDisabled(Landroid/content/ComponentName;Z)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 208
    goto :goto_0

    .line 206
    :catch_0
    move-exception v1

    .line 207
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRestoreFactoryDisabled Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OplusCustomizeSettingsManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public whitelist setSIMLockDisabled(Landroid/content/ComponentName;Z)Z
    .locals 3
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    .line 81
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeSettingsManager;->getOplusCustomizeSettingsManagerService()Landroid/os/customize/IOplusCustomizeSettingsManagerService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/os/customize/IOplusCustomizeSettingsManagerService;->setSIMLockDisabled(Landroid/content/ComponentName;Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeSettingsManager"

    const-string v2, "setSIMLockDisabled fail!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist setSearchIndexDisabled(Landroid/content/ComponentName;Z)Z
    .locals 3
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    .line 177
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeSettingsManager;->getOplusCustomizeSettingsManagerService()Landroid/os/customize/IOplusCustomizeSettingsManagerService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/os/customize/IOplusCustomizeSettingsManagerService;->setSearchIndexDisabled(Landroid/content/ComponentName;Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeSettingsManager"

    const-string v2, "setSearchIndexDisabled error!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 181
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setTimeAndDateSetDisabled(Landroid/content/ComponentName;Z)Z
    .locals 4
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    .line 243
    const/4 v0, 0x0

    .line 245
    .local v0, "result":Z
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeSettingsManager;->getOplusCustomizeSettingsManagerService()Landroid/os/customize/IOplusCustomizeSettingsManagerService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/os/customize/IOplusCustomizeSettingsManagerService;->setTimeAndDateSetDisabled(Landroid/content/ComponentName;Z)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 248
    goto :goto_0

    .line 246
    :catch_0
    move-exception v1

    .line 247
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setTimeAndDateSetDisabled Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OplusCustomizeSettingsManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public whitelist setTopWatermarkDisable()V
    .locals 1

    .line 107
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeSettingsManager;->getOplusCustomizeSettingsManagerService()Landroid/os/customize/IOplusCustomizeSettingsManagerService;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/customize/IOplusCustomizeSettingsManagerService;->setTopWatermarkDisable()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 111
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public whitelist setTopWatermarkEnable(Ljava/lang/String;)V
    .locals 3
    .param p1, "displayText"    # Ljava/lang/String;

    .line 99
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeSettingsManager;->getOplusCustomizeSettingsManagerService()Landroid/os/customize/IOplusCustomizeSettingsManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/customize/IOplusCustomizeSettingsManagerService;->setTopWatermarkEnable(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeSettingsManager"

    const-string v2, "setTopWatermarkEnable fail!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public whitelist shouldInterceptAllNotifications()Z
    .locals 3

    .line 306
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeSettingsManager;->getOplusCustomizeSettingsManagerService()Landroid/os/customize/IOplusCustomizeSettingsManagerService;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/customize/IOplusCustomizeSettingsManagerService;->shouldInterceptAllNotifications()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 307
    :catch_0
    move-exception v0

    .line 308
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldInterceptAllNotifications fail!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusCustomizeSettingsManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist shouldInterceptNonSystemNotifications()Z
    .locals 3

    .line 324
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeSettingsManager;->getOplusCustomizeSettingsManagerService()Landroid/os/customize/IOplusCustomizeSettingsManagerService;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/customize/IOplusCustomizeSettingsManagerService;->shouldInterceptNonSystemNotifications()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 325
    :catch_0
    move-exception v0

    .line 326
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldInterceptNonSystemNotifications fail!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusCustomizeSettingsManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist storeLastManualScreenOffTimeout(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "value"    # I

    .line 169
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeSettingsManager;->getOplusCustomizeSettingsManagerService()Landroid/os/customize/IOplusCustomizeSettingsManagerService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/os/customize/IOplusCustomizeSettingsManagerService;->storeLastManualScreenOffTimeout(Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    goto :goto_0

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAutoScreenOffTime error!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusCustomizeSettingsManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public whitelist turnOnProtectEyes(Landroid/content/ComponentName;Z)Z
    .locals 3
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "on"    # Z

    .line 63
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeSettingsManager;->getOplusCustomizeSettingsManagerService()Landroid/os/customize/IOplusCustomizeSettingsManagerService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/os/customize/IOplusCustomizeSettingsManagerService;->turnOnProtectEyes(Landroid/content/ComponentName;Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCustomizeSettingsManager"

    const-string v2, "turnOnProtectEyes fail!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    const/4 v1, 0x0

    return v1
.end method
