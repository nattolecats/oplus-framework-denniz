.class public Landroid/os/customize/OplusCustomizeNetworkManager;
.super Ljava/lang/Object;
.source "OplusCustomizeNetworkManager.java"


# static fields
.field private static final blacklist SERVICE_NAME:Ljava/lang/String; = "OplusCustomizeNetworkManagerService"

.field private static final blacklist TAG:Ljava/lang/String; = "OplusCustomizeNetworkManager"

.field private static final blacklist mLock:Ljava/lang/Object;

.field private static final blacklist mServiceLock:Ljava/lang/Object;

.field private static volatile blacklist sInstance:Landroid/os/customize/OplusCustomizeNetworkManager;


# instance fields
.field private blacklist mOplusCustomizeNetworkManagerService:Landroid/os/customize/IOplusCustomizeNetworkManagerService;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/customize/OplusCustomizeNetworkManager;->mLock:Ljava/lang/Object;

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/customize/OplusCustomizeNetworkManager;->mServiceLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeNetworkManager;->getOplusCustomizeNetworkManagerService()Landroid/os/customize/IOplusCustomizeNetworkManagerService;

    .line 44
    return-void
.end method

.method public static final whitelist getInstance(Landroid/content/Context;)Landroid/os/customize/OplusCustomizeNetworkManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 47
    sget-object v0, Landroid/os/customize/OplusCustomizeNetworkManager;->sInstance:Landroid/os/customize/OplusCustomizeNetworkManager;

    if-nez v0, :cond_1

    .line 48
    sget-object v0, Landroid/os/customize/OplusCustomizeNetworkManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 49
    :try_start_0
    sget-object v1, Landroid/os/customize/OplusCustomizeNetworkManager;->sInstance:Landroid/os/customize/OplusCustomizeNetworkManager;

    if-nez v1, :cond_0

    .line 50
    new-instance v1, Landroid/os/customize/OplusCustomizeNetworkManager;

    invoke-direct {v1}, Landroid/os/customize/OplusCustomizeNetworkManager;-><init>()V

    sput-object v1, Landroid/os/customize/OplusCustomizeNetworkManager;->sInstance:Landroid/os/customize/OplusCustomizeNetworkManager;

    .line 52
    :cond_0
    sget-object v1, Landroid/os/customize/OplusCustomizeNetworkManager;->sInstance:Landroid/os/customize/OplusCustomizeNetworkManager;

    monitor-exit v0

    return-object v1

    .line 53
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 55
    :cond_1
    sget-object v0, Landroid/os/customize/OplusCustomizeNetworkManager;->sInstance:Landroid/os/customize/OplusCustomizeNetworkManager;

    return-object v0
.end method

.method private blacklist getOplusCustomizeNetworkManagerService()Landroid/os/customize/IOplusCustomizeNetworkManagerService;
    .locals 3

    .line 59
    sget-object v0, Landroid/os/customize/OplusCustomizeNetworkManager;->mServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 60
    :try_start_0
    iget-object v1, p0, Landroid/os/customize/OplusCustomizeNetworkManager;->mOplusCustomizeNetworkManagerService:Landroid/os/customize/IOplusCustomizeNetworkManagerService;

    if-nez v1, :cond_0

    .line 61
    invoke-static {}, Landroid/os/customize/OplusCustomizeManager;->getInstance()Landroid/os/customize/OplusCustomizeManager;

    move-result-object v1

    const-string v2, "OplusCustomizeNetworkManagerService"

    invoke-virtual {v1, v2}, Landroid/os/customize/OplusCustomizeManager;->getDeviceManagerServiceByName(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/customize/IOplusCustomizeNetworkManagerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/customize/IOplusCustomizeNetworkManagerService;

    move-result-object v1

    iput-object v1, p0, Landroid/os/customize/OplusCustomizeNetworkManager;->mOplusCustomizeNetworkManagerService:Landroid/os/customize/IOplusCustomizeNetworkManagerService;

    .line 63
    :cond_0
    iget-object v1, p0, Landroid/os/customize/OplusCustomizeNetworkManager;->mOplusCustomizeNetworkManagerService:Landroid/os/customize/IOplusCustomizeNetworkManagerService;

    monitor-exit v0

    return-object v1

    .line 64
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public whitelist addAppMeteredDataBlackList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 145
    .local p1, "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "addAppMeteredDataBlackList Error"

    const-string v1, "OplusCustomizeNetworkManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeNetworkManager;->getOplusCustomizeNetworkManagerService()Landroid/os/customize/IOplusCustomizeNetworkManagerService;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/os/customize/IOplusCustomizeNetworkManagerService;->addAppMeteredDataBlackList(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 148
    :catch_0
    move-exception v2

    .line 149
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 146
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 147
    .local v2, "e":Landroid/os/RemoteException;
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 151
    :goto_1
    return-void
.end method

.method public whitelist addAppWlanDataBlackList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 155
    .local p1, "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "addAppWlanDataBlackList Error"

    const-string v1, "OplusCustomizeNetworkManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeNetworkManager;->getOplusCustomizeNetworkManagerService()Landroid/os/customize/IOplusCustomizeNetworkManagerService;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/os/customize/IOplusCustomizeNetworkManagerService;->addAppWlanDataBlackList(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 158
    :catch_0
    move-exception v2

    .line 159
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 156
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 157
    .local v2, "e":Landroid/os/RemoteException;
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 161
    :goto_1
    return-void
.end method

.method public whitelist addDomainRestrictionList(ILjava/util/List;)V
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

    .line 263
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "addDomainRestrictionList Error"

    const-string v1, "OplusCustomizeNetworkManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeNetworkManager;->getOplusCustomizeNetworkManagerService()Landroid/os/customize/IOplusCustomizeNetworkManagerService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/os/customize/IOplusCustomizeNetworkManagerService;->addDomainRestrictionList(ILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 266
    :catch_0
    move-exception v2

    .line 267
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

    .line 264
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 265
    .local v2, "e":Landroid/os/RemoteException;
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 269
    :goto_1
    return-void
.end method

.method public whitelist addNetworkRestriction(ILjava/util/List;)V
    .locals 4
    .param p1, "pattern"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 81
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "addNetworkRestriction Error"

    const-string v1, "OplusCustomizeNetworkManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeNetworkManager;->getOplusCustomizeNetworkManagerService()Landroid/os/customize/IOplusCustomizeNetworkManagerService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/os/customize/IOplusCustomizeNetworkManagerService;->addNetworkRestriction(ILjava/util/List;)V
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

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 82
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 83
    .local v2, "e":Landroid/os/RemoteException;
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 87
    :goto_1
    return-void
.end method

.method public whitelist getAppMeteredDataBlackList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 185
    const-string v0, "getAppMeteredDataBlackList Error"

    const-string v1, "OplusCustomizeNetworkManager"

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeNetworkManager;->getOplusCustomizeNetworkManagerService()Landroid/os/customize/IOplusCustomizeNetworkManagerService;

    move-result-object v3

    invoke-interface {v3}, Landroid/os/customize/IOplusCustomizeNetworkManagerService;->getAppMeteredDataBlackList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 189
    :catch_0
    move-exception v3

    .line 190
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    return-object v2

    .line 186
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 187
    .local v3, "e":Landroid/os/RemoteException;
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    return-object v2
.end method

.method public whitelist getAppWlanDataBlackList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 197
    const-string v0, "getAppWlanDataBlackList Error"

    const-string v1, "OplusCustomizeNetworkManager"

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeNetworkManager;->getOplusCustomizeNetworkManagerService()Landroid/os/customize/IOplusCustomizeNetworkManagerService;

    move-result-object v3

    invoke-interface {v3}, Landroid/os/customize/IOplusCustomizeNetworkManagerService;->getAppWlanDataBlackList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 201
    :catch_0
    move-exception v3

    .line 202
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    return-object v2

    .line 198
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 199
    .local v3, "e":Landroid/os/RemoteException;
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    return-object v2
.end method

.method public whitelist getDomainRestrictionList(I)Ljava/util/List;
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

    .line 274
    const-string v0, "getDomainRestrictionList Error"

    const-string v1, "OplusCustomizeNetworkManager"

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeNetworkManager;->getOplusCustomizeNetworkManagerService()Landroid/os/customize/IOplusCustomizeNetworkManagerService;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/os/customize/IOplusCustomizeNetworkManagerService;->getDomainRestrictionList(I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 278
    :catch_0
    move-exception v3

    .line 279
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

    .line 280
    return-object v2

    .line 275
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 276
    .local v3, "e":Landroid/os/RemoteException;
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    return-object v2
.end method

.method public whitelist getDomainRestrictionMode()I
    .locals 5

    .line 250
    const-string v0, "getDomainRestrictionMode Error"

    const-string v1, "OplusCustomizeNetworkManager"

    const/4 v2, -0x1

    .line 252
    .local v2, "mode":I
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeNetworkManager;->getOplusCustomizeNetworkManagerService()Landroid/os/customize/IOplusCustomizeNetworkManagerService;

    move-result-object v3

    invoke-interface {v3}, Landroid/os/customize/IOplusCustomizeNetworkManagerService;->getDomainRestrictionMode()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v0

    .line 257
    :goto_0
    goto :goto_1

    .line 255
    :catch_0
    move-exception v3

    .line 256
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

    .line 253
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 254
    .local v3, "e":Landroid/os/RemoteException;
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 258
    :goto_1
    return v2
.end method

.method public whitelist getNetworkControlMode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 217
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeNetworkManager;->getOplusCustomizeNetworkManagerService()Landroid/os/customize/IOplusCustomizeNetworkManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/customize/IOplusCustomizeNetworkManagerService;->getNetworkControlMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNetworkControlMode error! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusCustomizeNetworkManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getNetworkRestrictionList(I)Ljava/util/List;
    .locals 5
    .param p1, "pattern"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 111
    const-string v0, "getNetworkRestrictionList Error"

    const-string v1, "OplusCustomizeNetworkManager"

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeNetworkManager;->getOplusCustomizeNetworkManagerService()Landroid/os/customize/IOplusCustomizeNetworkManagerService;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/os/customize/IOplusCustomizeNetworkManagerService;->getNetworkRestrictionList(I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 115
    :catch_0
    move-exception v3

    .line 116
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

    .line 117
    return-object v2

    .line 112
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 113
    .local v3, "e":Landroid/os/RemoteException;
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return-object v2
.end method

.method public whitelist getNetworkRestrictionMode()I
    .locals 5

    .line 228
    const-string v0, "getNetworkRestrictionMode Error"

    const-string v1, "OplusCustomizeNetworkManager"

    const/4 v2, -0x1

    .line 230
    .local v2, "pattern":I
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeNetworkManager;->getOplusCustomizeNetworkManagerService()Landroid/os/customize/IOplusCustomizeNetworkManagerService;

    move-result-object v3

    invoke-interface {v3}, Landroid/os/customize/IOplusCustomizeNetworkManagerService;->getNetworkRestrictionMode()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v0

    .line 235
    :goto_0
    goto :goto_1

    .line 233
    :catch_0
    move-exception v3

    .line 234
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

    .line 231
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 232
    .local v3, "e":Landroid/os/RemoteException;
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 236
    :goto_1
    return v2
.end method

.method public whitelist getUserApnMgrPolicies()I
    .locals 4

    .line 134
    const-string v0, "getUserApnMgrPolicies Error"

    const-string v1, "OplusCustomizeNetworkManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeNetworkManager;->getOplusCustomizeNetworkManagerService()Landroid/os/customize/IOplusCustomizeNetworkManagerService;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/customize/IOplusCustomizeNetworkManagerService;->getUserApnMgrPolicies()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 137
    :catch_0
    move-exception v2

    .line 138
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

    .line 135
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 136
    .local v2, "e":Landroid/os/RemoteException;
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .end local v2    # "e":Landroid/os/RemoteException;
    nop

    .line 140
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist removeAllDomainRestrictionList(I)V
    .locals 4
    .param p1, "mode"    # I

    .line 296
    const-string v0, "removeAllDomainRestrictionList Error"

    const-string v1, "OplusCustomizeNetworkManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeNetworkManager;->getOplusCustomizeNetworkManagerService()Landroid/os/customize/IOplusCustomizeNetworkManagerService;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/os/customize/IOplusCustomizeNetworkManagerService;->removeAllDomainRestrictionList(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 299
    :catch_0
    move-exception v2

    .line 300
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

    .line 297
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 298
    .local v2, "e":Landroid/os/RemoteException;
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 302
    :goto_1
    return-void
.end method

.method public whitelist removeAppMeteredDataBlackList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 165
    .local p1, "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "removeAppMeteredDataBlackList Error"

    const-string v1, "OplusCustomizeNetworkManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeNetworkManager;->getOplusCustomizeNetworkManagerService()Landroid/os/customize/IOplusCustomizeNetworkManagerService;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/os/customize/IOplusCustomizeNetworkManagerService;->removeAppMeteredDataBlackList(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 168
    :catch_0
    move-exception v2

    .line 169
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 166
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 167
    .local v2, "e":Landroid/os/RemoteException;
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 171
    :goto_1
    return-void
.end method

.method public whitelist removeAppWlanDataBlackList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 175
    .local p1, "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "removeAppWlanDataBlackList Error"

    const-string v1, "OplusCustomizeNetworkManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeNetworkManager;->getOplusCustomizeNetworkManagerService()Landroid/os/customize/IOplusCustomizeNetworkManagerService;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/os/customize/IOplusCustomizeNetworkManagerService;->removeAppWlanDataBlackList(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 178
    :catch_0
    move-exception v2

    .line 179
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 176
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 177
    .local v2, "e":Landroid/os/RemoteException;
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 181
    :goto_1
    return-void
.end method

.method public whitelist removeDomainRestrictionList(ILjava/util/List;)V
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

    .line 286
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "removeDomainRestrictionList Error"

    const-string v1, "OplusCustomizeNetworkManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeNetworkManager;->getOplusCustomizeNetworkManagerService()Landroid/os/customize/IOplusCustomizeNetworkManagerService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/os/customize/IOplusCustomizeNetworkManagerService;->removeDomainRestrictionList(ILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 289
    :catch_0
    move-exception v2

    .line 290
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

    .line 287
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 288
    .local v2, "e":Landroid/os/RemoteException;
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 292
    :goto_1
    return-void
.end method

.method public whitelist removeNetworkRestriction(ILjava/util/List;)V
    .locals 4
    .param p1, "pattern"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 91
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "removeNetworkRestriction Error"

    const-string v1, "OplusCustomizeNetworkManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeNetworkManager;->getOplusCustomizeNetworkManagerService()Landroid/os/customize/IOplusCustomizeNetworkManagerService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/os/customize/IOplusCustomizeNetworkManagerService;->removeNetworkRestriction(ILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 94
    :catch_0
    move-exception v2

    .line 95
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

    .line 92
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 93
    .local v2, "e":Landroid/os/RemoteException;
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 97
    :goto_1
    return-void
.end method

.method public whitelist removeNetworkRestrictionAll(I)V
    .locals 4
    .param p1, "pattern"    # I

    .line 101
    const-string v0, "removeNetworkRestrictionAll Error"

    const-string v1, "OplusCustomizeNetworkManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeNetworkManager;->getOplusCustomizeNetworkManagerService()Landroid/os/customize/IOplusCustomizeNetworkManagerService;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/os/customize/IOplusCustomizeNetworkManagerService;->removeNetworkRestrictionAll(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 104
    :catch_0
    move-exception v2

    .line 105
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

    .line 102
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 103
    .local v2, "e":Landroid/os/RemoteException;
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 107
    :goto_1
    return-void
.end method

.method public whitelist setDomainRestrictionMode(I)V
    .locals 4
    .param p1, "mode"    # I

    .line 241
    const-string v0, "setDomainRestrictionMode Error"

    const-string v1, "OplusCustomizeNetworkManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeNetworkManager;->getOplusCustomizeNetworkManagerService()Landroid/os/customize/IOplusCustomizeNetworkManagerService;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/os/customize/IOplusCustomizeNetworkManagerService;->setDomainRestrictionMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 244
    :catch_0
    move-exception v2

    .line 245
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

    .line 242
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 243
    .local v2, "e":Landroid/os/RemoteException;
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 247
    :goto_1
    return-void
.end method

.method public whitelist setNetworkControlMode(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "mode"    # I

    .line 209
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeNetworkManager;->getOplusCustomizeNetworkManagerService()Landroid/os/customize/IOplusCustomizeNetworkManagerService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/os/customize/IOplusCustomizeNetworkManagerService;->setNetworkControlMode(Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    goto :goto_0

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNetworkControlMode error! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusCustomizeNetworkManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist setNetworkRestriction(I)V
    .locals 4
    .param p1, "pattern"    # I

    .line 71
    const-string v0, "setNetworkRestriction Error"

    const-string v1, "OplusCustomizeNetworkManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeNetworkManager;->getOplusCustomizeNetworkManagerService()Landroid/os/customize/IOplusCustomizeNetworkManagerService;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/os/customize/IOplusCustomizeNetworkManagerService;->setNetworkRestriction(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 74
    :catch_0
    move-exception v2

    .line 75
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

    .line 72
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 73
    .local v2, "e":Landroid/os/RemoteException;
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 77
    :goto_1
    return-void
.end method

.method public whitelist setUserApnMgrPolicies(I)V
    .locals 4
    .param p1, "mode"    # I

    .line 124
    const-string v0, "setUserApnMgrPolicies Error"

    const-string v1, "OplusCustomizeNetworkManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizeNetworkManager;->getOplusCustomizeNetworkManagerService()Landroid/os/customize/IOplusCustomizeNetworkManagerService;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/os/customize/IOplusCustomizeNetworkManagerService;->setUserApnMgrPolicies(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 127
    :catch_0
    move-exception v2

    .line 128
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

    .line 125
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 126
    .local v2, "e":Landroid/os/RemoteException;
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 130
    :goto_1
    return-void
.end method
