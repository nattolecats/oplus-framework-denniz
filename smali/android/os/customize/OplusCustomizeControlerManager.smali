.class public Landroid/os/customize/OplusCustomizeControlerManager;
.super Ljava/lang/Object;
.source "OplusCustomizeControlerManager.java"


# static fields
.field private static final blacklist SERVICE_NAME:Ljava/lang/String; = "OplusCustomizeControlerManagerService"

.field private static final blacklist TAG:Ljava/lang/String; = "OplusCustomizeControlerManager"

.field private static final blacklist mLock:Ljava/lang/Object;

.field private static final blacklist mServiceLock:Ljava/lang/Object;

.field private static volatile blacklist sInstance:Landroid/os/customize/OplusCustomizeControlerManager;


# instance fields
.field private blacklist mOplusCustomizeControlerManagerService:Landroid/os/customize/IOplusCustomizeControlerManagerService;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/customize/OplusCustomizeControlerManager;->mLock:Ljava/lang/Object;

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/customize/OplusCustomizeControlerManager;->mServiceLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeControlerManager;->getOplusCustomizeControlerManagerService()Landroid/os/customize/IOplusCustomizeControlerManagerService;

    .line 42
    return-void
.end method

.method public static final whitelist getInstance(Landroid/content/Context;)Landroid/os/customize/OplusCustomizeControlerManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 45
    sget-object v0, Landroid/os/customize/OplusCustomizeControlerManager;->sInstance:Landroid/os/customize/OplusCustomizeControlerManager;

    if-nez v0, :cond_1

    .line 46
    sget-object v0, Landroid/os/customize/OplusCustomizeControlerManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 47
    :try_start_0
    sget-object v1, Landroid/os/customize/OplusCustomizeControlerManager;->sInstance:Landroid/os/customize/OplusCustomizeControlerManager;

    if-nez v1, :cond_0

    .line 48
    new-instance v1, Landroid/os/customize/OplusCustomizeControlerManager;

    invoke-direct {v1}, Landroid/os/customize/OplusCustomizeControlerManager;-><init>()V

    sput-object v1, Landroid/os/customize/OplusCustomizeControlerManager;->sInstance:Landroid/os/customize/OplusCustomizeControlerManager;

    .line 50
    :cond_0
    sget-object v1, Landroid/os/customize/OplusCustomizeControlerManager;->sInstance:Landroid/os/customize/OplusCustomizeControlerManager;

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
    sget-object v0, Landroid/os/customize/OplusCustomizeControlerManager;->sInstance:Landroid/os/customize/OplusCustomizeControlerManager;

    return-object v0
.end method

.method private blacklist getOplusCustomizeControlerManagerService()Landroid/os/customize/IOplusCustomizeControlerManagerService;
    .locals 3

    .line 57
    sget-object v0, Landroid/os/customize/OplusCustomizeControlerManager;->mServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 58
    :try_start_0
    iget-object v1, p0, Landroid/os/customize/OplusCustomizeControlerManager;->mOplusCustomizeControlerManagerService:Landroid/os/customize/IOplusCustomizeControlerManagerService;

    if-nez v1, :cond_0

    .line 59
    invoke-static {}, Landroid/os/customize/OplusCustomizeManager;->getInstance()Landroid/os/customize/OplusCustomizeManager;

    move-result-object v1

    const-string v2, "OplusCustomizeControlerManagerService"

    invoke-virtual {v1, v2}, Landroid/os/customize/OplusCustomizeManager;->getDeviceManagerServiceByName(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/customize/IOplusCustomizeControlerManagerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/customize/IOplusCustomizeControlerManagerService;

    move-result-object v1

    iput-object v1, p0, Landroid/os/customize/OplusCustomizeControlerManager;->mOplusCustomizeControlerManagerService:Landroid/os/customize/IOplusCustomizeControlerManagerService;

    .line 61
    :cond_0
    iget-object v1, p0, Landroid/os/customize/OplusCustomizeControlerManager;->mOplusCustomizeControlerManagerService:Landroid/os/customize/IOplusCustomizeControlerManagerService;

    monitor-exit v0

    return-object v1

    .line 62
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public whitelist addAccessibilityServiceToWhiteList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 175
    .local p1, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "OplusCustomizeControlerManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeControlerManager;->getOplusCustomizeControlerManagerService()Landroid/os/customize/IOplusCustomizeControlerManagerService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/os/customize/IOplusCustomizeControlerManagerService;->addAccessibilityServiceToWhiteList(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 178
    :catch_0
    move-exception v1

    .line 179
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addAccessibilityServiceToWhiteList Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 176
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 177
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "addAccessibilityServiceToWhiteList fail!"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 181
    :goto_1
    return-void
.end method

.method public whitelist deleteAccessibilityServiceWhiteList()V
    .locals 4

    .line 206
    const-string v0, "OplusCustomizeControlerManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeControlerManager;->getOplusCustomizeControlerManagerService()Landroid/os/customize/IOplusCustomizeControlerManagerService;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/customize/IOplusCustomizeControlerManagerService;->deleteAccessibilityServiceWhiteList()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 209
    :catch_0
    move-exception v1

    .line 210
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteAccessibilityServiceWhiteList Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 207
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 208
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "deleteAccessibilityServiceWhiteList fail!"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 211
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 212
    :goto_1
    return-void
.end method

.method public whitelist disableAccessibilityService(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 129
    const-string v0, "OplusCustomizeControlerManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeControlerManager;->getOplusCustomizeControlerManagerService()Landroid/os/customize/IOplusCustomizeControlerManagerService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/os/customize/IOplusCustomizeControlerManagerService;->disableAccessibilityService(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 132
    :catch_0
    move-exception v1

    .line 133
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disableAccessibilityService Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 130
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 131
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "disableAccessibilityService fail!"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 135
    :goto_1
    return-void
.end method

.method public whitelist enableAccessibilityService(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 119
    const-string v0, "OplusCustomizeControlerManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeControlerManager;->getOplusCustomizeControlerManagerService()Landroid/os/customize/IOplusCustomizeControlerManagerService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/os/customize/IOplusCustomizeControlerManagerService;->enableAccessibilityService(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 122
    :catch_0
    move-exception v1

    .line 123
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableAccessibilityService Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 120
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 121
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "enableAccessibilityService fail!"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 125
    :goto_1
    return-void
.end method

.method public whitelist formatSDCard(Ljava/lang/String;)Z
    .locals 4
    .param p1, "diskId"    # Ljava/lang/String;

    .line 106
    const-string v0, "OplusCustomizeControlerManager"

    const/4 v1, 0x0

    .line 108
    .local v1, "result":Z
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeControlerManager;->getOplusCustomizeControlerManagerService()Landroid/os/customize/IOplusCustomizeControlerManagerService;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/os/customize/IOplusCustomizeControlerManagerService;->formatSDCard(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 113
    :goto_0
    goto :goto_1

    .line 111
    :catch_0
    move-exception v2

    .line 112
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "formatSDCard Error exception: "

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 109
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 110
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "formatSDCard Error"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 114
    :goto_1
    return v1
.end method

.method public whitelist getAccessibilityService()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 138
    const-string v0, "OplusCustomizeControlerManager"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .local v1, "enabledServicesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeControlerManager;->getOplusCustomizeControlerManagerService()Landroid/os/customize/IOplusCustomizeControlerManagerService;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/customize/IOplusCustomizeControlerManagerService;->getAccessibilityService()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 145
    :goto_0
    goto :goto_1

    .line 143
    :catch_0
    move-exception v2

    .line 144
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAccessibilityService Error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 141
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 142
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "getAccessibilityService fail!"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 146
    :goto_1
    return-object v1
.end method

.method public whitelist getAccessibilityServiceWhiteList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 195
    const-string v0, "OplusCustomizeControlerManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeControlerManager;->getOplusCustomizeControlerManagerService()Landroid/os/customize/IOplusCustomizeControlerManagerService;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/customize/IOplusCustomizeControlerManagerService;->getAccessibilityServiceWhiteList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 198
    :catch_0
    move-exception v1

    .line 199
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAccessibilityServiceWhiteList Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 196
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 197
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "getAccessibilityServiceWhiteList fail!"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 200
    .end local v1    # "e":Landroid/os/RemoteException;
    nop

    .line 201
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getAirplaneMode(Landroid/content/ComponentName;)Z
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 270
    const/4 v0, 0x0

    .line 272
    .local v0, "result":Z
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeControlerManager;->getOplusCustomizeControlerManagerService()Landroid/os/customize/IOplusCustomizeControlerManagerService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/os/customize/IOplusCustomizeControlerManagerService;->getAirplaneMode(Landroid/content/ComponentName;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 275
    goto :goto_0

    .line 273
    :catch_0
    move-exception v1

    .line 274
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAirplaneMode error! e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OplusCustomizeControlerManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public whitelist getCustomAnimationPath()Ljava/lang/String;
    .locals 5

    .line 322
    const-string v0, "OplusCustomizeControlerManager"

    const-string v1, ""

    .line 324
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeControlerManager;->getOplusCustomizeControlerManagerService()Landroid/os/customize/IOplusCustomizeControlerManagerService;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/customize/IOplusCustomizeControlerManagerService;->getCustomAnimationPath()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 329
    :goto_0
    goto :goto_1

    .line 327
    :catch_0
    move-exception v2

    .line 328
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCustomAnimationPath Error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 325
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 326
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "getCustomAnimationPath fail!"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 330
    :goto_1
    return-object v1
.end method

.method public whitelist getCustomSoundPath()Ljava/lang/String;
    .locals 5

    .line 344
    const-string v0, "OplusCustomizeControlerManager"

    const-string v1, ""

    .line 346
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeControlerManager;->getOplusCustomizeControlerManagerService()Landroid/os/customize/IOplusCustomizeControlerManagerService;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/customize/IOplusCustomizeControlerManagerService;->getCustomSoundPath()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 351
    :goto_0
    goto :goto_1

    .line 349
    :catch_0
    move-exception v2

    .line 350
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCustomSoundPath Error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 347
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 348
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "getCustomSoundPath fail!"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 352
    :goto_1
    return-object v1
.end method

.method public whitelist getEnabledAccessibilityServicesName()Ljava/lang/String;
    .locals 5

    .line 162
    const-string v0, "OplusCustomizeControlerManager"

    const-string v1, ""

    .line 164
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeControlerManager;->getOplusCustomizeControlerManagerService()Landroid/os/customize/IOplusCustomizeControlerManagerService;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/customize/IOplusCustomizeControlerManagerService;->getEnabledAccessibilityServicesName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 169
    :goto_0
    goto :goto_1

    .line 167
    :catch_0
    move-exception v2

    .line 168
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getEnabledAccessibilityServicesName Error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 165
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 166
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "getEnabledAccessibilityServicesName fail!"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 170
    :goto_1
    return-object v1
.end method

.method public whitelist installSystemUpdate(Ljava/lang/String;)V
    .locals 4
    .param p1, "updatePath"    # Ljava/lang/String;

    .line 97
    const-string v0, "OplusCustomizeControlerManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeControlerManager;->getOplusCustomizeControlerManagerService()Landroid/os/customize/IOplusCustomizeControlerManagerService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/os/customize/IOplusCustomizeControlerManagerService;->installSystemUpdate(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 100
    :catch_0
    move-exception v1

    .line 101
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "installSystemUpdate Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 98
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 99
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "installSystemUpdate fail!"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 103
    :goto_1
    return-void
.end method

.method public whitelist isAccessibilityServiceEnabled()Z
    .locals 5

    .line 150
    const-string v0, "OplusCustomizeControlerManager"

    const/4 v1, 0x0

    .line 152
    .local v1, "result":Z
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeControlerManager;->getOplusCustomizeControlerManagerService()Landroid/os/customize/IOplusCustomizeControlerManagerService;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/customize/IOplusCustomizeControlerManagerService;->isAccessibilityServiceEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 157
    :goto_0
    goto :goto_1

    .line 155
    :catch_0
    move-exception v2

    .line 156
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAccessibilityServiceEnabled Error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 153
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 154
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "isAccessibilityServiceEnabled fail!"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 158
    :goto_1
    return v1
.end method

.method public whitelist isDisableKeyguardForgetPassword()Z
    .locals 3

    .line 229
    const-string v0, "OplusCustomizeControlerManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeControlerManager;->getOplusCustomizeControlerManagerService()Landroid/os/customize/IOplusCustomizeControlerManagerService;

    move-result-object v1

    .line 230
    .local v1, "manager":Landroid/os/customize/IOplusCustomizeControlerManagerService;
    const-string v2, "isDisableKeyguardForgetPassword: succeeded"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-interface {v1}, Landroid/os/customize/IOplusCustomizeControlerManagerService;->isDisableKeyguardForgetPassword()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 232
    .end local v1    # "manager":Landroid/os/customize/IOplusCustomizeControlerManagerService;
    :catch_0
    move-exception v1

    .line 233
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "isDisableKeyguardForgetPassword fail!"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 234
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isDisabledKeyguardPolicy(Ljava/lang/String;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 250
    const-string v0, "OplusCustomizeControlerManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeControlerManager;->getOplusCustomizeControlerManagerService()Landroid/os/customize/IOplusCustomizeControlerManagerService;

    move-result-object v1

    .line 251
    .local v1, "manager":Landroid/os/customize/IOplusCustomizeControlerManagerService;
    const-string v2, "isDisabledKeyguardPolicy: succeeded"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-interface {v1, p1}, Landroid/os/customize/IOplusCustomizeControlerManagerService;->isDisabledKeyguardPolicy(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 253
    .end local v1    # "manager":Landroid/os/customize/IOplusCustomizeControlerManagerService;
    :catch_0
    move-exception v1

    .line 254
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "isDisabledKeyguardPolicy fail!"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 255
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist rebootDevice()V
    .locals 3

    .line 77
    const-string v0, "OplusCustomizeControlerManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeControlerManager;->getOplusCustomizeControlerManagerService()Landroid/os/customize/IOplusCustomizeControlerManagerService;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/customize/IOplusCustomizeControlerManagerService;->rebootDevice()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 80
    :catch_0
    move-exception v1

    .line 81
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "rebootDevice Error exception"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 78
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 79
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "rebootDevice Error"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 83
    :goto_1
    return-void
.end method

.method public whitelist removeAccessibilityServiceFromWhiteList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 185
    .local p1, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "OplusCustomizeControlerManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeControlerManager;->getOplusCustomizeControlerManagerService()Landroid/os/customize/IOplusCustomizeControlerManagerService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/os/customize/IOplusCustomizeControlerManagerService;->removeAccessibilityServiceFromWhiteList(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 188
    :catch_0
    move-exception v1

    .line 189
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeAccessibilityServiceFromWhiteList Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 186
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 187
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "removeAccessibilityServiceFromWhiteList fail!"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 190
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 191
    :goto_1
    return-void
.end method

.method public whitelist setAirplaneMode(Landroid/content/ComponentName;Z)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "on"    # Z

    .line 263
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeControlerManager;->getOplusCustomizeControlerManagerService()Landroid/os/customize/IOplusCustomizeControlerManagerService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/os/customize/IOplusCustomizeControlerManagerService;->setAirplaneMode(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    goto :goto_0

    .line 264
    :catch_0
    move-exception v0

    .line 265
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAirplaneMode error! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusCustomizeControlerManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist setCustomAnimationPath(Ljava/lang/String;)V
    .locals 4
    .param p1, "customAnimPath"    # Ljava/lang/String;

    .line 313
    const-string v0, "OplusCustomizeControlerManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeControlerManager;->getOplusCustomizeControlerManagerService()Landroid/os/customize/IOplusCustomizeControlerManagerService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/os/customize/IOplusCustomizeControlerManagerService;->setCustomAnimationPath(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 316
    :catch_0
    move-exception v1

    .line 317
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCustomAnimationPath Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 314
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 315
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "setCustomAnimationPath fail!"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 318
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 319
    :goto_1
    return-void
.end method

.method public whitelist setCustomSettingsMenu(Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 293
    .local p2, "deleteMenus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "OplusCustomizeControlerManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeControlerManager;->getOplusCustomizeControlerManagerService()Landroid/os/customize/IOplusCustomizeControlerManagerService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/os/customize/IOplusCustomizeControlerManagerService;->setCustomSettingsMenu(Landroid/content/ComponentName;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 296
    :catch_0
    move-exception v1

    .line 297
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCustomSettingsMenu Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 294
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 295
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "setCustomSettingsMenu fail!"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 298
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 299
    :goto_1
    return-void
.end method

.method public whitelist setCustomSoundPath(Ljava/lang/String;)V
    .locals 4
    .param p1, "customSoundPath"    # Ljava/lang/String;

    .line 335
    const-string v0, "OplusCustomizeControlerManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeControlerManager;->getOplusCustomizeControlerManagerService()Landroid/os/customize/IOplusCustomizeControlerManagerService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/os/customize/IOplusCustomizeControlerManagerService;->setCustomSoundPath(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 338
    :catch_0
    move-exception v1

    .line 339
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCustomSoundPath Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 336
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 337
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "setCustomSoundPath fail!"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 340
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 341
    :goto_1
    return-void
.end method

.method public whitelist setDisableKeyguardForgetPassword(Z)Z
    .locals 3
    .param p1, "disable"    # Z

    .line 218
    const-string v0, "OplusCustomizeControlerManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeControlerManager;->getOplusCustomizeControlerManagerService()Landroid/os/customize/IOplusCustomizeControlerManagerService;

    move-result-object v1

    .line 219
    .local v1, "manager":Landroid/os/customize/IOplusCustomizeControlerManagerService;
    const-string v2, "setDisableKeyguardForgetPassword: succeeded"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-interface {v1, p1}, Landroid/os/customize/IOplusCustomizeControlerManagerService;->setDisableKeyguardForgetPassword(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 221
    .end local v1    # "manager":Landroid/os/customize/IOplusCustomizeControlerManagerService;
    :catch_0
    move-exception v1

    .line 222
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "setDisableKeyguardForgetPassword fail!"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 223
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setDisabledKeyguardPolicy(ZLjava/lang/String;)V
    .locals 3
    .param p1, "disable"    # Z
    .param p2, "key"    # Ljava/lang/String;

    .line 240
    const-string v0, "OplusCustomizeControlerManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeControlerManager;->getOplusCustomizeControlerManagerService()Landroid/os/customize/IOplusCustomizeControlerManagerService;

    move-result-object v1

    .line 241
    .local v1, "manager":Landroid/os/customize/IOplusCustomizeControlerManagerService;
    const-string v2, "setDisabledKeyguardPolicy: succeeded"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-interface {v1, p1, p2}, Landroid/os/customize/IOplusCustomizeControlerManagerService;->setDisabledKeyguardPolicy(ZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    .end local v1    # "manager":Landroid/os/customize/IOplusCustomizeControlerManagerService;
    goto :goto_0

    .line 243
    :catch_0
    move-exception v1

    .line 244
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "setDisabledKeyguardPolicy fail!"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 246
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist setMaxDelayTimeForCustomizeRebootanim(I)V
    .locals 4
    .param p1, "timeout"    # I

    .line 303
    const-string v0, "OplusCustomizeControlerManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeControlerManager;->getOplusCustomizeControlerManagerService()Landroid/os/customize/IOplusCustomizeControlerManagerService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/os/customize/IOplusCustomizeControlerManagerService;->setMaxDelayTimeForCustomizeRebootanim(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 306
    :catch_0
    move-exception v1

    .line 307
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMaxDelayTimeForCustomizeRebootanim Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 304
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 305
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "setMaxDelayTimeForCustomizeRebootanim fail!"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 308
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 309
    :goto_1
    return-void
.end method

.method public whitelist setSysTime(Landroid/content/ComponentName;J)Z
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "mills"    # J

    .line 280
    const-string v0, "OplusCustomizeControlerManager"

    const/4 v1, 0x0

    .line 282
    .local v1, "result":Z
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeControlerManager;->getOplusCustomizeControlerManagerService()Landroid/os/customize/IOplusCustomizeControlerManagerService;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroid/os/customize/IOplusCustomizeControlerManagerService;->setSysTime(Landroid/content/ComponentName;J)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 287
    :goto_0
    goto :goto_1

    .line 285
    :catch_0
    move-exception v2

    .line 286
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSysTime Error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 283
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 284
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "setSysTime fail!"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 288
    :goto_1
    return v1
.end method

.method public whitelist shutdownDevice()V
    .locals 3

    .line 67
    const-string v0, "OplusCustomizeControlerManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeControlerManager;->getOplusCustomizeControlerManagerService()Landroid/os/customize/IOplusCustomizeControlerManagerService;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/customize/IOplusCustomizeControlerManagerService;->shutdownDevice()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 70
    :catch_0
    move-exception v1

    .line 71
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "shutdownDevice Error exception: "

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 68
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 69
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "shutdownDevice Error"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 73
    :goto_1
    return-void
.end method

.method public whitelist wipeDeviceData()V
    .locals 3

    .line 87
    const-string v0, "OplusCustomizeControlerManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeControlerManager;->getOplusCustomizeControlerManagerService()Landroid/os/customize/IOplusCustomizeControlerManagerService;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/customize/IOplusCustomizeControlerManagerService;->wipeDeviceData()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 90
    :catch_0
    move-exception v1

    .line 91
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "wipeDeviceData Error exception"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 88
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 89
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "wipeDeviceData Error"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 93
    :goto_1
    return-void
.end method
