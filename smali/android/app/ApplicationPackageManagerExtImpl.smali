.class public Landroid/app/ApplicationPackageManagerExtImpl;
.super Ljava/lang/Object;
.source "ApplicationPackageManagerExtImpl.java"

# interfaces
.implements Landroid/app/IApplicationPackageManagerExt;


# static fields
.field private static final blacklist TAG:Ljava/lang/String;

.field private static blacklist mActivityIconsCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist mAppIconsCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist mIconCacheDirty:Z


# instance fields
.field private blacklist mApplicationPackageManager:Landroid/app/ApplicationPackageManager;

.field private blacklist mContext:Landroid/app/ContextImpl;

.field private blacklist mOplusPm:Landroid/content/pm/OplusPackageManager;

.field private blacklist mUxIconPmExt:Landroid/content/res/IUxIconPackageManagerExt;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 59
    const-class v0, Landroid/app/ApplicationPackageManagerExtImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/ApplicationPackageManagerExtImpl;->TAG:Ljava/lang/String;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/app/ApplicationPackageManagerExtImpl;->mAppIconsCache:Ljava/util/HashMap;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/app/ApplicationPackageManagerExtImpl;->mActivityIconsCache:Ljava/util/HashMap;

    .line 71
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/ApplicationPackageManagerExtImpl;->mIconCacheDirty:Z

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "base"    # Ljava/lang/Object;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    sget-object v0, Landroid/content/res/IUxIconPackageManagerExt;->DEFAULT:Landroid/content/res/IUxIconPackageManagerExt;

    iput-object v0, p0, Landroid/app/ApplicationPackageManagerExtImpl;->mUxIconPmExt:Landroid/content/res/IUxIconPackageManagerExt;

    .line 81
    move-object v0, p1

    check-cast v0, Landroid/app/ApplicationPackageManager;

    iput-object v0, p0, Landroid/app/ApplicationPackageManagerExtImpl;->mApplicationPackageManager:Landroid/app/ApplicationPackageManager;

    .line 82
    return-void
.end method

.method static synthetic blacklist lambda$getInstalledApplicationsAsUserExt$1(ILandroid/content/pm/ApplicationInfo;)Z
    .locals 1
    .param p0, "uid"    # I
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 156
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic blacklist lambda$getInstalledPackagesAsUserExt$0(ILandroid/content/pm/PackageInfo;)Z
    .locals 1
    .param p0, "uid"    # I
    .param p1, "info"    # Landroid/content/pm/PackageInfo;

    .line 144
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public blacklist arePermissionsIndividuallyControlledOverrideTrue()Z
    .locals 2

    .line 103
    invoke-static {}, Lcom/oplus/content/OplusFeatureConfigManager;->getInstacne()Lcom/oplus/content/OplusFeatureConfigManager;

    move-result-object v0

    const-string v1, "oplus.software.permission_intercept_enabled"

    invoke-virtual {v0, v1}, Lcom/oplus/content/OplusFeatureConfigManager;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public blacklist beforeGetInstalledPackagesOrApplications()V
    .locals 5

    .line 164
    sget-object v0, Lcom/oplus/permission/IOplusPermissionCheckInjector;->DEFAULT:Lcom/oplus/permission/IOplusPermissionCheckInjector;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Lcom/oplus/permission/IOplusPermissionCheckInjector;

    .line 165
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string v3, "com.android.permission.GET_INSTALLED_APPS"

    const-string v4, "get_installed"

    invoke-interface {v0, v3, v1, v2, v4}, Lcom/oplus/permission/IOplusPermissionCheckInjector;->checkPermission(Ljava/lang/String;IILjava/lang/String;)Z

    .line 166
    return-void
.end method

.method public blacklist checkAndLogMultiApp(ZLandroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .param p1, "print"    # Z
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "name"    # Ljava/lang/Object;
    .param p4, "tag"    # Ljava/lang/String;

    .line 338
    if-eqz p1, :cond_0

    .line 339
    if-eqz p2, :cond_0

    const/16 v0, 0x3e7

    invoke-virtual {p2}, Landroid/content/Context;->getUserId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 340
    sget-object v0, Landroid/app/ApplicationPackageManagerExtImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "multi app -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is null! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,pkg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 341
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 340
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_0
    return-void
.end method

.method public blacklist checkEMMApkRuntimePermission(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "cn"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 312
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 329
    return-void

    .line 314
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Package name is null"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist getActivityIconsCache(Landroid/content/pm/IPackageDeleteObserver;)Ljava/util/Map;
    .locals 3
    .param p1, "observer"    # Landroid/content/pm/IPackageDeleteObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/IPackageDeleteObserver;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 195
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManagerExtImpl;->mOplusPm:Landroid/content/pm/OplusPackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/OplusPackageManager;->getActivityIconsCache(Landroid/content/pm/IPackageDeleteObserver;)Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist getAppIconBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 174
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManagerExtImpl;->mOplusPm:Landroid/content/pm/OplusPackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/OplusPackageManager;->getAppIconBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getAppIconsCache(Z)Ljava/util/Map;
    .locals 2
    .param p1, "compress"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 183
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManagerExtImpl;->mOplusPm:Landroid/content/pm/OplusPackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/OplusPackageManager;->getAppIconsCache(Z)Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getDefaultActivityIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 111
    sget-object v0, Landroid/content/res/IOplusThemeManager;->DEFAULT:Landroid/content/res/IOplusThemeManager;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Landroid/content/res/IOplusThemeManager;

    iget-object v1, p0, Landroid/app/ApplicationPackageManagerExtImpl;->mUxIconPmExt:Landroid/content/res/IUxIconPackageManagerExt;

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Resources;->mResourcesExt:Landroid/content/res/IResourcesExt;

    .line 111
    invoke-interface {v0, v1, p1, v2}, Landroid/content/res/IOplusThemeManager;->getDefaultActivityIcon(Landroid/content/res/IUxIconPackageManagerExt;Landroid/content/Context;Landroid/content/res/IResourcesExt;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getInstalledApplicationsAsUserExt(Landroid/content/pm/ParceledListSlice;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .line 152
    .local p1, "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    sget-object v0, Lcom/oplus/permission/IOplusPermissionCheckInjector;->DEFAULT:Lcom/oplus/permission/IOplusPermissionCheckInjector;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Lcom/oplus/permission/IOplusPermissionCheckInjector;

    .line 153
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string v3, "com.android.permission.GET_INSTALLED_APPS"

    const-string v4, "get_installed"

    invoke-interface {v0, v3, v1, v2, v4}, Lcom/oplus/permission/IOplusPermissionCheckInjector;->checkPermission(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 155
    .local v0, "uid":I
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/app/ApplicationPackageManagerExtImpl$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Landroid/app/ApplicationPackageManagerExtImpl$$ExternalSyntheticLambda1;-><init>(I)V

    .line 156
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 157
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 155
    return-object v1

    .line 159
    .end local v0    # "uid":I
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getInstalledPackagesAsUserExt(Landroid/content/pm/ParceledListSlice;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/PackageInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 140
    .local p1, "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PackageInfo;>;"
    sget-object v0, Lcom/oplus/permission/IOplusPermissionCheckInjector;->DEFAULT:Lcom/oplus/permission/IOplusPermissionCheckInjector;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Lcom/oplus/permission/IOplusPermissionCheckInjector;

    .line 141
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string v3, "com.android.permission.GET_INSTALLED_APPS"

    const-string v4, "get_installed"

    invoke-interface {v0, v3, v1, v2, v4}, Lcom/oplus/permission/IOplusPermissionCheckInjector;->checkPermission(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 143
    .local v0, "uid":I
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/app/ApplicationPackageManagerExtImpl$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Landroid/app/ApplicationPackageManagerExtImpl$$ExternalSyntheticLambda0;-><init>(I)V

    .line 144
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 145
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 143
    return-object v1

    .line 147
    .end local v0    # "uid":I
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getMultiAppUserBadgeId(Landroid/os/UserHandle;Z)I
    .locals 2
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "withbg"    # Z

    .line 363
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/oplus/multiapp/OplusMultiAppManager;->getInstance()Lcom/oplus/multiapp/OplusMultiAppManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/multiapp/OplusMultiAppManager;->isMultiAppUserId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 364
    if-eqz p2, :cond_0

    .line 365
    const v0, 0xc08001f

    return v0

    .line 367
    :cond_0
    const v0, 0xc080020

    return v0

    .line 370
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getMultiAppUserBadgedIcon(Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 351
    const/4 v0, 0x0

    .line 352
    .local v0, "badge":Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_0

    const/16 v1, 0x3e7

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 353
    iget-object v1, p0, Landroid/app/ApplicationPackageManagerExtImpl;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc080017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 355
    :cond_0
    return-object v0
.end method

.method public blacklist getOplusFreezePackageState(Ljava/lang/String;I)I
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 225
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManagerExtImpl;->mOplusPm:Landroid/content/pm/OplusPackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/OplusPackageManager;->getOplusFreezePackageState(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist getOplusFreezedPackageList(I)Ljava/util/List;
    .locals 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 243
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManagerExtImpl;->mOplusPm:Landroid/content/pm/OplusPackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/OplusPackageManager;->getOplusFreezedPackageList(I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist getOplusPackageFreezeFlag(Ljava/lang/String;I)I
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 252
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManagerExtImpl;->mOplusPm:Landroid/content/pm/OplusPackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/OplusPackageManager;->getOplusPackageFreezeFlag(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist getOplusSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;
    .locals 3

    .line 290
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManagerExtImpl;->mOplusPm:Landroid/content/pm/OplusPackageManager;

    invoke-virtual {v0}, Landroid/content/pm/OplusPackageManager;->getOplusSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 291
    :catch_0
    move-exception v0

    .line 292
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist getUxIconPackageManagerExt()Ljava/lang/Object;
    .locals 1

    .line 96
    iget-object v0, p0, Landroid/app/ApplicationPackageManagerExtImpl;->mUxIconPmExt:Landroid/content/res/IUxIconPackageManagerExt;

    return-object v0
.end method

.method public blacklist inOplusFreezePackageList(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 234
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManagerExtImpl;->mOplusPm:Landroid/content/pm/OplusPackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/OplusPackageManager;->inOplusFreezePackageList(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist init(Landroid/app/ContextImpl;)V
    .locals 5
    .param p1, "context"    # Landroid/app/ContextImpl;

    .line 86
    iput-object p1, p0, Landroid/app/ApplicationPackageManagerExtImpl;->mContext:Landroid/app/ContextImpl;

    .line 87
    new-instance v0, Landroid/content/pm/OplusPackageManager;

    invoke-direct {v0, p1}, Landroid/content/pm/OplusPackageManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/ApplicationPackageManagerExtImpl;->mOplusPm:Landroid/content/pm/OplusPackageManager;

    .line 90
    invoke-static {}, Landroid/common/OplusFrameworkFactory;->getInstance()Landroid/common/OplusFrameworkFactory;

    move-result-object v0

    sget-object v1, Landroid/content/res/IUxIconPackageManagerExt;->DEFAULT:Landroid/content/res/IUxIconPackageManagerExt;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Landroid/app/ApplicationPackageManagerExtImpl;->mApplicationPackageManager:Landroid/app/ApplicationPackageManager;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/common/OplusFrameworkFactory;->getFeature(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Landroid/content/res/IUxIconPackageManagerExt;

    iput-object v0, p0, Landroid/app/ApplicationPackageManagerExtImpl;->mUxIconPmExt:Landroid/content/res/IUxIconPackageManagerExt;

    .line 92
    return-void
.end method

.method public blacklist interceptGetDrawableInLoadUnbadgedItemIcon(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "manager"    # Landroid/content/pm/PackageManager;
    .param p2, "itemInfo"    # Landroid/content/pm/PackageItemInfo;
    .param p3, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 131
    sget-object v0, Landroid/content/res/IOplusThemeManager;->DEFAULT:Landroid/content/res/IOplusThemeManager;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Landroid/content/res/IOplusThemeManager;

    invoke-interface {v0}, Landroid/content/res/IOplusThemeManager;->isOplusIcons()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    sget-object v0, Landroid/content/res/IOplusThemeManager;->DEFAULT:Landroid/content/res/IOplusThemeManager;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/res/IOplusThemeManager;

    iget-object v4, p0, Landroid/app/ApplicationPackageManagerExtImpl;->mUxIconPmExt:Landroid/content/res/IUxIconPackageManagerExt;

    const/4 v6, 0x1

    move-object v2, p2

    move-object v3, p1

    move-object v5, p3

    invoke-interface/range {v1 .. v6}, Landroid/content/res/IOplusThemeManager;->loadPackageItemIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;Landroid/content/res/IUxIconPackageManagerExt;Landroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 134
    :cond_0
    iget-object v0, p2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget v1, p2, Landroid/content/pm/PackageItemInfo;->icon:I

    invoke-virtual {p1, v0, v1, p3}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 131
    :goto_0
    return-object v0
.end method

.method public blacklist isClosedSuperFirewall()Z
    .locals 1

    .line 281
    iget-object v0, p0, Landroid/app/ApplicationPackageManagerExtImpl;->mOplusPm:Landroid/content/pm/OplusPackageManager;

    invoke-virtual {v0}, Landroid/content/pm/OplusPackageManager;->isClosedSuperFirewall()Z

    move-result v0

    return v0
.end method

.method public blacklist isFullFunctionMode()Z
    .locals 1

    .line 276
    iget-object v0, p0, Landroid/app/ApplicationPackageManagerExtImpl;->mOplusPm:Landroid/content/pm/OplusPackageManager;

    invoke-virtual {v0}, Landroid/content/pm/OplusPackageManager;->isClosedSuperFirewall()Z

    move-result v0

    return v0
.end method

.method public blacklist isMultiAppUserId(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 378
    invoke-static {}, Lcom/oplus/multiapp/OplusMultiAppManager;->getInstance()Lcom/oplus/multiapp/OplusMultiAppManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oplus/multiapp/OplusMultiAppManager;->isMultiAppUserId(I)Z

    move-result v0

    return v0
.end method

.method public blacklist isSecurePayApp(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .line 264
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManagerExtImpl;->mOplusPm:Landroid/content/pm/OplusPackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/OplusPackageManager;->isSecurePayApp(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist isSystemDataApp(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 301
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManagerExtImpl;->mOplusPm:Landroid/content/pm/OplusPackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/OplusPackageManager;->isSystemDataApp(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 302
    :catch_0
    move-exception v0

    .line 303
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist modifyResultInGetResourcesForApplication(Landroid/content/res/Resources;Landroid/content/pm/ApplicationInfo;)V
    .locals 2
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "app"    # Landroid/content/pm/ApplicationInfo;

    .line 120
    invoke-virtual {p1}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/ResourcesImpl;->mResourcesImplExt:Landroid/content/res/IResourcesImplExt;

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p1}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/ResourcesImpl;->mResourcesImplExt:Landroid/content/res/IResourcesImplExt;

    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/res/IResourcesImplExt;->init(Ljava/lang/String;)V

    .line 124
    :cond_0
    return-void
.end method

.method public blacklist oplusFreezePackage(Ljava/lang/String;III)I
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "freezeFlag"    # I
    .param p4, "flag"    # I

    .line 207
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManagerExtImpl;->mOplusPm:Landroid/content/pm/OplusPackageManager;

    iget-object v1, p0, Landroid/app/ApplicationPackageManagerExtImpl;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/OplusPackageManager;->oplusFreezePackage(Ljava/lang/String;IIILjava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist oplusUnFreezePackage(Ljava/lang/String;III)I
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "freezeFlag"    # I
    .param p4, "flag"    # I

    .line 216
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManagerExtImpl;->mOplusPm:Landroid/content/pm/OplusPackageManager;

    iget-object v1, p0, Landroid/app/ApplicationPackageManagerExtImpl;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/OplusPackageManager;->oplusUnFreezePackage(Ljava/lang/String;IIILjava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
