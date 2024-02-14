.class public Lcom/oplus/multiapp/OplusMultiAppImpl;
.super Ljava/lang/Object;
.source "OplusMultiAppImpl.java"

# interfaces
.implements Lcom/oplus/multiapp/IOplusMultiApp;


# static fields
.field private static blacklist DEBUG:Z = false

.field private static final blacklist FILTER_PROFILE_PACKAGE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "MultiApp.Impl"

.field private static final blacklist iUserManagerSingleton:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Landroid/os/IUserManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mIsSupportCache:Ljava/lang/Boolean;

.field private blacklist oplusActivityManager:Landroid/app/OplusActivityManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 56
    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oplus/multiapp/OplusMultiAppImpl;->DEBUG:Z

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oplus/multiapp/OplusMultiAppImpl;->FILTER_PROFILE_PACKAGE:Ljava/util/List;

    .line 61
    const-string v1, "com.android.settings"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    const-string v1, "com.android.managedprovisioning"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    new-instance v0, Lcom/oplus/multiapp/OplusMultiAppImpl$1;

    invoke-direct {v0}, Lcom/oplus/multiapp/OplusMultiAppImpl$1;-><init>()V

    sput-object v0, Lcom/oplus/multiapp/OplusMultiAppImpl;->iUserManagerSingleton:Landroid/util/Singleton;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/multiapp/OplusMultiAppImpl;->mIsSupportCache:Ljava/lang/Boolean;

    .line 69
    const-string v0, "MultiApp.Impl"

    const-string v1, "OplusMultiAppImpl"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-void
.end method

.method private declared-synchronized blacklist enforceActivityManager()Z
    .locals 4

    monitor-enter p0

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/oplus/multiapp/OplusMultiAppImpl;->oplusActivityManager:Landroid/app/OplusActivityManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 74
    const/4 v0, 0x0

    .line 76
    .local v0, "am":Landroid/app/IActivityManager;
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    .line 79
    goto :goto_0

    .line 77
    .end local p0    # "this":Lcom/oplus/multiapp/OplusMultiAppImpl;
    :catch_0
    move-exception v1

    .line 78
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "MultiApp.Impl"

    const-string v3, "enforceActivityManager error, ams not ready yet!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    if-nez v0, :cond_0

    .line 81
    const-string v1, "MultiApp.Impl"

    const-string v2, "enforceActivityManager error, ams not ready yet!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 82
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 84
    :cond_0
    :try_start_3
    new-instance v1, Landroid/app/OplusActivityManager;

    invoke-direct {v1}, Landroid/app/OplusActivityManager;-><init>()V

    iput-object v1, p0, Lcom/oplus/multiapp/OplusMultiAppImpl;->oplusActivityManager:Landroid/app/OplusActivityManager;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 86
    .end local v0    # "am":Landroid/app/IActivityManager;
    :cond_1
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static blacklist getUserManagerService()Landroid/os/IUserManager;
    .locals 1

    .line 100
    sget-object v0, Lcom/oplus/multiapp/OplusMultiAppImpl;->iUserManagerSingleton:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IUserManager;

    return-object v0
.end method

.method private blacklist isStorageLow()Z
    .locals 5

    .line 359
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 360
    .local v0, "pm":Landroid/content/pm/IPackageManager;
    const/4 v1, 0x1

    const-string v2, "MultiApp.Impl"

    if-nez v0, :cond_0

    .line 361
    const-string v3, "isStorageLow pm is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    return v1

    .line 365
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->isStorageLow()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 366
    :catch_0
    move-exception v3

    .line 367
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "isStorageLow"

    invoke-static {v2, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 369
    .end local v3    # "e":Ljava/lang/Exception;
    return v1
.end method


# virtual methods
.method public blacklist getMaxCreateNum()I
    .locals 4

    .line 244
    invoke-virtual {p0}, Lcom/oplus/multiapp/OplusMultiAppImpl;->isMultiAppSupport()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 245
    return v1

    .line 248
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/oplus/multiapp/OplusMultiAppImpl;->oplusActivityManager:Landroid/app/OplusActivityManager;

    invoke-virtual {v0}, Landroid/app/OplusActivityManager;->getMultiAppMaxCreateNum()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 249
    :catch_0
    move-exception v0

    .line 250
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "MultiApp.Impl"

    const-string v3, "getMaxCreateNum "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 252
    .end local v0    # "e":Ljava/lang/Exception;
    return v1
.end method

.method public blacklist getMultiAppAccessMode(Ljava/lang/String;)I
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 172
    invoke-virtual {p0}, Lcom/oplus/multiapp/OplusMultiAppImpl;->isMultiAppSupport()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 173
    return v1

    .line 177
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/oplus/multiapp/OplusMultiAppImpl;->oplusActivityManager:Landroid/app/OplusActivityManager;

    invoke-virtual {v0, p1}, Landroid/app/OplusActivityManager;->getMultiAppAccessMode(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "MultiApp.Impl"

    const-string v3, "getMultiAppAccessMode "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 181
    .end local v0    # "e":Ljava/lang/Exception;
    return v1
.end method

.method public blacklist getMultiAppAlias(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 145
    invoke-virtual {p0}, Lcom/oplus/multiapp/OplusMultiAppImpl;->isMultiAppSupport()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 146
    return-object v1

    .line 150
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/oplus/multiapp/OplusMultiAppImpl;->oplusActivityManager:Landroid/app/OplusActivityManager;

    invoke-virtual {v0, p1}, Landroid/app/OplusActivityManager;->getMultiAppAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "MultiApp.Impl"

    const-string v3, "getMultiAppAlias "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    .end local v0    # "e":Ljava/lang/Exception;
    return-object v1
.end method

.method public blacklist getMultiAppAllAccessMode()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 199
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 200
    .local v0, "resMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/oplus/multiapp/OplusMultiAppImpl;->isMultiAppSupport()Z

    move-result v1

    if-nez v1, :cond_0

    .line 201
    return-object v0

    .line 204
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/oplus/multiapp/OplusMultiAppImpl;->oplusActivityManager:Landroid/app/OplusActivityManager;

    invoke-virtual {v1}, Landroid/app/OplusActivityManager;->getMultiAppAllAccessMode()Ljava/util/Map;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 207
    goto :goto_0

    .line 205
    :catch_0
    move-exception v1

    .line 206
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "MultiApp.Impl"

    const-string v3, "getMultiAppAllAccessMode"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 208
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public blacklist getMultiAppConfig()Lcom/oplus/multiapp/OplusMultiAppConfig;
    .locals 4

    .line 132
    invoke-virtual {p0}, Lcom/oplus/multiapp/OplusMultiAppImpl;->isMultiAppSupport()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 133
    return-object v1

    .line 136
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/oplus/multiapp/OplusMultiAppImpl;->oplusActivityManager:Landroid/app/OplusActivityManager;

    invoke-virtual {v0}, Landroid/app/OplusActivityManager;->getMultiAppConfig()Lcom/oplus/multiapp/OplusMultiAppConfig;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "MultiApp.Impl"

    const-string v3, "setMultiAppConfig"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 140
    .end local v0    # "e":Ljava/lang/Exception;
    return-object v1
.end method

.method public blacklist getMultiAppList(I)Ljava/util/List;
    .locals 3
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 105
    invoke-virtual {p0}, Lcom/oplus/multiapp/OplusMultiAppImpl;->isMultiAppSupport()Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 110
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/oplus/multiapp/OplusMultiAppImpl;->oplusActivityManager:Landroid/app/OplusActivityManager;

    invoke-virtual {v0, p1}, Landroid/app/OplusActivityManager;->getMultiAppList(I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MultiApp.Impl"

    const-string v2, "getMultiAppList "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    .end local v0    # "e":Ljava/lang/Exception;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public blacklist getMultiAppUserHandle()Landroid/os/UserHandle;
    .locals 8

    .line 286
    invoke-virtual {p0}, Lcom/oplus/multiapp/OplusMultiAppImpl;->isMultiAppSupport()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 287
    return-object v1

    .line 290
    :cond_0
    invoke-static {}, Lcom/oplus/multiapp/OplusMultiAppImpl;->getUserManagerService()Landroid/os/IUserManager;

    move-result-object v0

    .line 291
    .local v0, "userManager":Landroid/os/IUserManager;
    const-string v2, "MultiApp.Impl"

    if-nez v0, :cond_1

    .line 292
    const-string v3, "getMultiAppUserHandle userManager is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    return-object v1

    .line 296
    :cond_1
    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v0, v4, v3}, Landroid/os/IUserManager;->getProfileIds(IZ)[I

    move-result-object v3

    .line 297
    .local v3, "userIds":[I
    array-length v5, v3

    :goto_0
    if-ge v4, v5, :cond_3

    aget v6, v3, v4

    .line 298
    .local v6, "id":I
    const/16 v7, 0x3e7

    if-ne v7, v6, :cond_2

    .line 299
    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, v6}, Landroid/os/UserHandle;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 297
    .end local v6    # "id":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 304
    .end local v3    # "userIds":[I
    :cond_3
    goto :goto_1

    .line 302
    :catch_0
    move-exception v3

    .line 303
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "getMultiAppUserHandle"

    invoke-static {v2, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 305
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    const-string v3, "getMultiAppUserHandle return null"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    return-object v1
.end method

.method public blacklist isCrossUserAuthority(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 320
    invoke-virtual {p0}, Lcom/oplus/multiapp/OplusMultiAppImpl;->isMultiAppSupport()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 321
    return v1

    .line 324
    :cond_0
    invoke-virtual {p0, p2}, Lcom/oplus/multiapp/OplusMultiAppImpl;->isMultiAppUserId(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 325
    return v1

    .line 328
    :cond_1
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/oplus/multiapp/OplusMultiAppImpl;->getMultiAppList(I)Ljava/util/List;

    move-result-object v0

    .line 329
    .local v0, "crossAuthorityList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "MultiApp.Impl"

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "multi app ->  isCrossUserAuthority allow for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    const/4 v1, 0x1

    return v1

    .line 333
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "multi app ->  isCrossUserAuthority not allow for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    return v1
.end method

.method public blacklist isMultiApp(ILjava/lang/String;)Z
    .locals 4
    .param p1, "userId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 213
    invoke-virtual {p0}, Lcom/oplus/multiapp/OplusMultiAppImpl;->isMultiAppSupport()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 214
    return v1

    .line 217
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/oplus/multiapp/OplusMultiAppImpl;->oplusActivityManager:Landroid/app/OplusActivityManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/OplusActivityManager;->isMultiApp(ILjava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "MultiApp.Impl"

    const-string v3, "isMultiApp"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 221
    .end local v0    # "e":Ljava/lang/Exception;
    return v1
.end method

.method public blacklist isMultiAppSupport()Z
    .locals 4

    .line 258
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/oplus/multiapp/OplusMultiAppImpl;->mIsSupportCache:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    .line 259
    invoke-direct {p0}, Lcom/oplus/multiapp/OplusMultiAppImpl;->enforceActivityManager()Z

    move-result v1

    if-nez v1, :cond_0

    .line 260
    return v0

    .line 262
    :cond_0
    iget-object v1, p0, Lcom/oplus/multiapp/OplusMultiAppImpl;->oplusActivityManager:Landroid/app/OplusActivityManager;

    invoke-virtual {v1}, Landroid/app/OplusActivityManager;->getIsSupportMultiApp()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/multiapp/OplusMultiAppImpl;->mIsSupportCache:Ljava/lang/Boolean;

    .line 264
    :cond_1
    iget-object v1, p0, Lcom/oplus/multiapp/OplusMultiAppImpl;->mIsSupportCache:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 265
    :catch_0
    move-exception v1

    .line 266
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "MultiApp.Impl"

    const-string v3, "getMultiAppList "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 268
    .end local v1    # "e":Ljava/lang/Exception;
    return v0
.end method

.method public blacklist isMultiAppUserHandle(Landroid/os/UserHandle;)Z
    .locals 3
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 273
    invoke-virtual {p0}, Lcom/oplus/multiapp/OplusMultiAppImpl;->isMultiAppSupport()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 274
    return v1

    .line 277
    :cond_0
    if-nez p1, :cond_1

    .line 278
    const-string v0, "MultiApp.Impl"

    const-string v2, "isMultiAppUserHandle userHandle is null error!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    return v1

    .line 281
    :cond_1
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const/16 v2, 0x3e7

    if-ne v0, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public blacklist isMultiAppUserId(I)Z
    .locals 2
    .param p1, "userId"    # I

    .line 311
    invoke-virtual {p0}, Lcom/oplus/multiapp/OplusMultiAppImpl;->isMultiAppSupport()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 312
    return v1

    .line 315
    :cond_0
    const/16 v0, 0x3e7

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public blacklist isProfileFilterPackage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 339
    invoke-virtual {p0}, Lcom/oplus/multiapp/OplusMultiAppImpl;->isMultiAppSupport()Z

    move-result v0

    if-nez v0, :cond_0

    .line 340
    const/4 v0, 0x0

    return v0

    .line 343
    :cond_0
    sget-object v0, Lcom/oplus/multiapp/OplusMultiAppImpl;->FILTER_PROFILE_PACKAGE:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist scanFileIfNeed(ILjava/lang/String;)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "path"    # Ljava/lang/String;

    .line 348
    invoke-virtual {p0}, Lcom/oplus/multiapp/OplusMultiAppImpl;->isMultiAppSupport()Z

    move-result v0

    if-nez v0, :cond_0

    .line 349
    return-void

    .line 352
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/oplus/multiapp/OplusMultiAppImpl;->oplusActivityManager:Landroid/app/OplusActivityManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/OplusActivityManager;->scanFileIfNeed(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    goto :goto_0

    .line 353
    :catch_0
    move-exception v0

    .line 354
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MultiApp.Impl"

    const-string v2, "scanFileIfNeed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 356
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist setMultiAppAccessMode(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "accessMode"    # I

    .line 186
    invoke-virtual {p0}, Lcom/oplus/multiapp/OplusMultiAppImpl;->isMultiAppSupport()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 187
    return v1

    .line 190
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/oplus/multiapp/OplusMultiAppImpl;->oplusActivityManager:Landroid/app/OplusActivityManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/OplusActivityManager;->setMultiAppAccessMode(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "MultiApp.Impl"

    const-string v3, "setMultiAppAccessMode"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 194
    .end local v0    # "e":Ljava/lang/Exception;
    return v1
.end method

.method public blacklist setMultiAppAlias(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;

    .line 159
    invoke-virtual {p0}, Lcom/oplus/multiapp/OplusMultiAppImpl;->isMultiAppSupport()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 160
    return v1

    .line 163
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/oplus/multiapp/OplusMultiAppImpl;->oplusActivityManager:Landroid/app/OplusActivityManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/OplusActivityManager;->setMultiAppAlias(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "MultiApp.Impl"

    const-string v3, "setMultiAppAlias"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 167
    .end local v0    # "e":Ljava/lang/Exception;
    return v1
.end method

.method public blacklist setMultiAppConfig(Lcom/oplus/multiapp/OplusMultiAppConfig;)Z
    .locals 4
    .param p1, "config"    # Lcom/oplus/multiapp/OplusMultiAppConfig;

    .line 119
    invoke-virtual {p0}, Lcom/oplus/multiapp/OplusMultiAppImpl;->isMultiAppSupport()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 120
    return v1

    .line 123
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/oplus/multiapp/OplusMultiAppImpl;->oplusActivityManager:Landroid/app/OplusActivityManager;

    invoke-virtual {v0, p1}, Landroid/app/OplusActivityManager;->setMultiAppConfig(Lcom/oplus/multiapp/OplusMultiAppConfig;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "MultiApp.Impl"

    const-string v3, "setMultiAppConfig"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 127
    .end local v0    # "e":Ljava/lang/Exception;
    return v1
.end method

.method public blacklist setMultiAppPackageStatus(Ljava/lang/String;I)I
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "status"    # I

    .line 226
    invoke-virtual {p0}, Lcom/oplus/multiapp/OplusMultiAppImpl;->isMultiAppSupport()Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    const/4 v0, -0x2

    return v0

    .line 229
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    const-string v2, "MultiApp.Impl"

    if-eqz v0, :cond_1

    .line 230
    const-string v0, "setMultiAppPackageStatus pkgName is null"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    return v1

    .line 235
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/oplus/multiapp/OplusMultiAppImpl;->oplusActivityManager:Landroid/app/OplusActivityManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/OplusActivityManager;->setMultiAppStatus(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 236
    :catch_0
    move-exception v0

    .line 237
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "setMultiAppStatus"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 239
    .end local v0    # "e":Ljava/lang/Exception;
    return v1
.end method
