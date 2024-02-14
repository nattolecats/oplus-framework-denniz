.class public Landroid/app/UxIconPackageManagerExt;
.super Ljava/lang/Object;
.source "UxIconPackageManagerExt.java"

# interfaces
.implements Landroid/content/res/IUxIconPackageManagerExt;


# static fields
.field private static final blacklist CONTACT_PREFIX:Ljava/lang/String; = "dialer_"

.field private static final blacklist EDIT_ICON_PATH:Ljava/lang/String; = "/data/oplus/uxicons/choose/"

.field private static final blacklist ICON_SUFFIX:Ljava/lang/String; = ".png"

.field private static final blacklist META_DATA:Ljava/lang/String; = "uxicon_support_editicon"

.field private static final blacklist TAG:Ljava/lang/String; = "UxIconPackageManagerExt"


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor blacklist <init>(Landroid/content/pm/PackageManager;Landroid/content/Context;)V
    .locals 1
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p2, "context"    # Landroid/content/Context;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/UxIconPackageManagerExt;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 42
    iput-object v0, p0, Landroid/app/UxIconPackageManagerExt;->mContext:Landroid/content/Context;

    .line 45
    iput-object p1, p0, Landroid/app/UxIconPackageManagerExt;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 46
    iput-object p2, p0, Landroid/app/UxIconPackageManagerExt;->mContext:Landroid/content/Context;

    .line 47
    return-void
.end method

.method private blacklist loadDrawableFromTheme(Landroid/content/pm/ResolveInfo;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "resid"    # I
    .param p4, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p5, "convert"    # Z

    .line 220
    if-eqz p5, :cond_2

    .line 221
    const/4 v0, 0x0

    .line 222
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    invoke-static {p0, p4, p2}, Landroid/app/OplusUXIconLoadHelper;->supportUxIcon(Landroid/content/res/IUxIconPackageManagerExt;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 223
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move-object v4, v1

    .line 224
    .local v4, "activityName":Ljava/lang/String;
    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, p2

    move v5, p3

    move-object v6, p4

    invoke-static/range {v2 .. v7}, Landroid/app/OplusUXIconLoadHelper;->getDrawable(Landroid/content/res/IUxIconPackageManagerExt;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 225
    .end local v4    # "activityName":Ljava/lang/String;
    goto :goto_1

    .line 226
    :cond_1
    invoke-static {}, Landroid/app/OplusThemeHelper;->getInstance()Landroid/app/OplusThemeHelper;

    move-result-object v1

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Landroid/app/OplusThemeHelper;->getDrawable(Landroid/content/res/IUxIconPackageManagerExt;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 228
    :goto_1
    return-object v0

    .line 230
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_3

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_2

    :cond_3
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    :goto_2
    move-object v6, v0

    .line 231
    .local v6, "ci":Landroid/content/pm/ComponentInfo;
    invoke-static {}, Landroid/app/OplusThemeHelper;->getInstance()Landroid/app/OplusThemeHelper;

    move-result-object v1

    iget v4, p1, Landroid/content/pm/ResolveInfo;->icon:I

    invoke-static {}, Landroid/app/OplusThemeHelper;->getInstance()Landroid/app/OplusThemeHelper;

    move-result-object v0

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v2}, Landroid/app/OplusThemeHelper;->isCustomizedIcon(Landroid/content/IntentFilter;)Z

    move-result v7

    move-object v2, p0

    move-object v3, p2

    move-object v5, p4

    invoke-virtual/range {v1 .. v7}, Landroid/app/OplusThemeHelper;->getDrawable(Landroid/content/res/IUxIconPackageManagerExt;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageItemInfo;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private blacklist loadItemIconWithoutEdit(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/Drawable;
    .locals 10
    .param p1, "itemInfo"    # Landroid/content/pm/PackageItemInfo;
    .param p2, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "isConvertEnable"    # Z

    .line 72
    const/4 v0, 0x0

    .line 74
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz p3, :cond_2

    sget-object v1, Landroid/content/res/IOplusThemeManager;->DEFAULT:Landroid/content/res/IOplusThemeManager;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    .line 75
    invoke-static {v1, v3}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v1

    check-cast v1, Landroid/content/res/IOplusThemeManager;

    iget-object v3, p0, Landroid/app/UxIconPackageManagerExt;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v4, p0, Landroid/app/UxIconPackageManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/res/IOplusThemeManager;->supportUxOnline(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 76
    sget-object v1, Landroid/content/res/IOplusThemeManager;->DEFAULT:Landroid/content/res/IOplusThemeManager;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v1

    check-cast v1, Landroid/content/res/IOplusThemeManager;

    iget-object v3, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, p0, p2, v3}, Landroid/content/res/IOplusThemeManager;->supportUxIcon(Landroid/content/res/IUxIconPackageManagerExt;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    const/4 v1, 0x0

    .line 83
    .local v1, "activityName":Ljava/lang/String;
    instance-of v3, p1, Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_0

    .line 84
    iget-object v1, p1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 86
    :cond_0
    sget-object v3, Landroid/content/res/IOplusThemeManager;->DEFAULT:Landroid/content/res/IOplusThemeManager;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v2}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/content/res/IOplusThemeManager;

    iget-object v5, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget v7, p1, Landroid/content/pm/PackageItemInfo;->icon:I

    const/4 v9, 0x0

    move-object v4, p0

    move-object v6, v1

    move-object v8, p2

    invoke-interface/range {v3 .. v9}, Landroid/content/res/IOplusThemeManager;->getDrawableFromUxIcon(Landroid/content/res/IUxIconPackageManagerExt;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 89
    .end local v1    # "activityName":Ljava/lang/String;
    goto :goto_0

    .line 90
    :cond_1
    invoke-static {}, Landroid/app/OplusThemeHelper;->getInstance()Landroid/app/OplusThemeHelper;

    move-result-object v1

    iget-object v3, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget v4, p1, Landroid/content/pm/PackageItemInfo;->icon:I

    iget-object v6, p1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    move-object v2, p0

    move-object v5, p2

    invoke-virtual/range {v1 .. v6}, Landroid/app/OplusThemeHelper;->getDrawable(Landroid/content/res/IUxIconPackageManagerExt;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 93
    :cond_2
    iget-object v1, p0, Landroid/app/UxIconPackageManagerExt;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v2, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget v3, p1, Landroid/content/pm/PackageItemInfo;->icon:I

    invoke-virtual {v1, v2, v3, p2}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 95
    :goto_0
    return-object v0
.end method


# virtual methods
.method public blacklist checkChooseIconsRootPath()Z
    .locals 3

    .line 63
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/oplus/uxicons/choose/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 64
    .local v0, "rootFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 65
    const-string v1, "UxIconPackageManagerExt"

    const-string v2, "UxIcon checkChooseIconsRootPath false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const/4 v1, 0x0

    return v1

    .line 68
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist clearCachedIconForActivity(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "activityName"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 239
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    const/4 v0, 0x3

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1, v3}, Landroid/app/ApplicationPackageManager;->handlePackageBroadcast(I[Ljava/lang/String;Z)V

    .line 242
    :cond_0
    return-void
.end method

.method public whitelist getCachedIconForThemeHelper(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "id"    # I

    .line 160
    iget-object v0, p0, Landroid/app/UxIconPackageManagerExt;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/ApplicationPackageManager;

    if-nez v1, :cond_0

    goto :goto_0

    .line 163
    :cond_0
    check-cast v0, Landroid/app/ApplicationPackageManager;

    invoke-virtual {v0}, Landroid/app/ApplicationPackageManager;->getWrapper()Landroid/app/IApplicationPackageManagerWrapper;

    move-result-object v0

    .line 164
    .local v0, "wrapper":Landroid/app/IApplicationPackageManagerWrapper;
    invoke-interface {v0, p1, p2}, Landroid/app/IApplicationPackageManagerWrapper;->newResourceName(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    .line 165
    .local v1, "resourceName":Ljava/lang/Object;
    invoke-interface {v0, v1}, Landroid/app/IApplicationPackageManagerWrapper;->getCachedIcon(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    return-object v2

    .line 161
    .end local v0    # "wrapper":Landroid/app/IApplicationPackageManagerWrapper;
    .end local v1    # "resourceName":Ljava/lang/Object;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getOplusBaseResourcesForThemeHelper(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/IResourcesExt;
    .locals 2
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 178
    iget-object v0, p0, Landroid/app/UxIconPackageManagerExt;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_0

    .line 179
    const/4 v0, 0x0

    return-object v0

    .line 181
    :cond_0
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v0

    .line 182
    .local v0, "resources":Landroid/content/res/Resources;
    iget-object v1, v0, Landroid/content/res/Resources;->mResourcesExt:Landroid/content/res/IResourcesExt;

    return-object v1
.end method

.method public whitelist getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .line 50
    iget-object v0, p0, Landroid/app/UxIconPackageManagerExt;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method public blacklist getUserManager()Landroid/os/UserManager;
    .locals 2

    .line 56
    iget-object v0, p0, Landroid/app/UxIconPackageManagerExt;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/app/ApplicationPackageManager;

    if-eqz v1, :cond_0

    .line 57
    check-cast v0, Landroid/app/ApplicationPackageManager;

    invoke-virtual {v0}, Landroid/app/ApplicationPackageManager;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    return-object v0

    .line 59
    :cond_0
    iget-object v0, p0, Landroid/app/UxIconPackageManagerExt;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getUxIconDrawable(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "src"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isForegroundDrawable"    # Z

    .line 189
    sget-object v0, Landroid/content/res/IOplusThemeManager;->DEFAULT:Landroid/content/res/IOplusThemeManager;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Landroid/content/res/IOplusThemeManager;

    invoke-interface {v0, p1, p2}, Landroid/content/res/IOplusThemeManager;->getDrawableForApp(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getUxIconDrawable(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "src"    # Landroid/graphics/drawable/Drawable;
    .param p3, "isForegroundDrawable"    # Z

    .line 194
    iget-object v0, p0, Landroid/app/UxIconPackageManagerExt;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_0

    .line 195
    return-object p2

    .line 198
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    .line 199
    .local v0, "res":Landroid/content/res/Resources;
    if-nez v0, :cond_1

    .line 200
    return-object p2

    .line 202
    :cond_1
    sget-object v1, Landroid/content/res/IOplusThemeManager;->DEFAULT:Landroid/content/res/IOplusThemeManager;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v1

    check-cast v1, Landroid/content/res/IOplusThemeManager;

    iget-object v2, v0, Landroid/content/res/Resources;->mResourcesExt:Landroid/content/res/IResourcesExt;

    invoke-interface {v1, v0, v2, p2, p3}, Landroid/content/res/IOplusThemeManager;->getDrawableForApp(Landroid/content/res/Resources;Landroid/content/res/IResourcesExt;Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 203
    .end local v0    # "res":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 204
    .local v0, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getResourcesForApplication error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UxIconPackageManagerExt"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    .end local v0    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    return-object p2
.end method

.method public whitelist loadItemIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p1, "itemInfo"    # Landroid/content/pm/PackageItemInfo;
    .param p2, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "isConvertEnable"    # Z

    .line 99
    const-string v0, ".png"

    const/4 v1, 0x0

    .line 104
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    iget-object v2, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 105
    const/4 v2, 0x0

    .line 107
    .local v2, "supportEditIcon":Z
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    iget-object v4, p0, Landroid/app/UxIconPackageManagerExt;->mContext:Landroid/content/Context;

    .line 108
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x80

    iget-object v7, p0, Landroid/app/UxIconPackageManagerExt;->mContext:Landroid/content/Context;

    .line 110
    invoke-virtual {v7}, Landroid/content/Context;->getUserId()I

    move-result v7

    .line 107
    invoke-interface {v3, v4, v5, v6, v7}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 112
    .local v3, "usageAppInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v3, :cond_0

    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_0

    .line 113
    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "uxicon_support_editicon"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v4

    .line 116
    .end local v3    # "usageAppInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    goto :goto_0

    .line 115
    :catch_0
    move-exception v3

    .line 118
    :goto_0
    invoke-virtual {p0}, Landroid/app/UxIconPackageManagerExt;->checkChooseIconsRootPath()Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v2, :cond_5

    .line 119
    const/4 v3, 0x0

    .line 122
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/oplus/uxicons/choose/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 125
    .local v4, "path":Ljava/lang/String;
    iget-object v5, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v6, "com.android.contacts"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    instance-of v5, p1, Landroid/content/pm/ActivityInfo;

    if-eqz v5, :cond_1

    .line 126
    move-object v5, p1

    check-cast v5, Landroid/content/pm/ActivityInfo;

    invoke-virtual {v5}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v5

    iget v6, p2, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eq v5, v6, :cond_1

    .line 127
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/oplus/uxicons/choose/dialer_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 131
    :cond_1
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    .line 132
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 133
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 134
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v5

    .line 138
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v4    # "path":Ljava/lang/String;
    :cond_2
    nop

    .line 140
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 142
    :goto_1
    goto :goto_3

    .line 141
    :catch_1
    move-exception v0

    goto :goto_1

    .line 138
    :catchall_0
    move-exception v0

    if-eqz v3, :cond_3

    .line 140
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 142
    goto :goto_2

    .line 141
    :catch_2
    move-exception v4

    .line 144
    :cond_3
    :goto_2
    throw v0

    .line 136
    :catch_3
    move-exception v0

    .line 138
    if-eqz v3, :cond_4

    .line 140
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 146
    :cond_4
    :goto_3
    if-eqz v1, :cond_5

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "success loadItemIcon --"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " return choose drawable"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "UxIconPackageManagerExt"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-static {v1}, Landroid/app/OplusUXIconLoadHelper;->setDarkFilterToDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 149
    return-object v1

    .line 152
    .end local v3    # "fis":Ljava/io/FileInputStream;
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Landroid/app/UxIconPackageManagerExt;->loadItemIconWithoutEdit(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 154
    .end local v2    # "supportEditIcon":Z
    :cond_6
    return-object v1
.end method

.method public whitelist loadResolveIcon(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "resid"    # I
    .param p5, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p6, "convert"    # Z

    .line 211
    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/app/UxIconPackageManagerExt;->loadDrawableFromTheme(Landroid/content/pm/ResolveInfo;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 212
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 213
    invoke-virtual {p2, p3, p4, p5}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 215
    :cond_0
    return-object v0
.end method

.method public whitelist putCachedIconForThemeHelper(Ljava/lang/String;ILandroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "dr"    # Landroid/graphics/drawable/Drawable;

    .line 169
    iget-object v0, p0, Landroid/app/UxIconPackageManagerExt;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/ApplicationPackageManager;

    if-nez v1, :cond_0

    goto :goto_0

    .line 172
    :cond_0
    check-cast v0, Landroid/app/ApplicationPackageManager;

    invoke-virtual {v0}, Landroid/app/ApplicationPackageManager;->getWrapper()Landroid/app/IApplicationPackageManagerWrapper;

    move-result-object v0

    .line 173
    .local v0, "wrapper":Landroid/app/IApplicationPackageManagerWrapper;
    invoke-interface {v0, p1, p2}, Landroid/app/IApplicationPackageManagerWrapper;->newResourceName(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    .line 174
    .local v1, "resourceName":Ljava/lang/Object;
    invoke-interface {v0, v1, p3}, Landroid/app/IApplicationPackageManagerWrapper;->putCachedIcon(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;)V

    .line 175
    return-void

    .line 170
    .end local v0    # "wrapper":Landroid/app/IApplicationPackageManagerWrapper;
    .end local v1    # "resourceName":Ljava/lang/Object;
    :cond_1
    :goto_0
    return-void
.end method
