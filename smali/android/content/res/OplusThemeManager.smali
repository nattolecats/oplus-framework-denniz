.class public Landroid/content/res/OplusThemeManager;
.super Ljava/lang/Object;
.source "OplusThemeManager.java"

# interfaces
.implements Landroid/content/res/IOplusThemeManager;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "OplusThemeManager"

.field private static volatile blacklist sInstance:Landroid/content/res/OplusThemeManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 73
    const/4 v0, 0x0

    sput-object v0, Landroid/content/res/OplusThemeManager;->sInstance:Landroid/content/res/OplusThemeManager;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    return-void
.end method

.method public static blacklist getInstance()Landroid/content/res/OplusThemeManager;
    .locals 2

    .line 76
    sget-object v0, Landroid/content/res/OplusThemeManager;->sInstance:Landroid/content/res/OplusThemeManager;

    if-nez v0, :cond_1

    .line 77
    const-class v0, Landroid/content/res/OplusThemeManager;

    monitor-enter v0

    .line 78
    :try_start_0
    sget-object v1, Landroid/content/res/OplusThemeManager;->sInstance:Landroid/content/res/OplusThemeManager;

    if-nez v1, :cond_0

    .line 79
    new-instance v1, Landroid/content/res/OplusThemeManager;

    invoke-direct {v1}, Landroid/content/res/OplusThemeManager;-><init>()V

    sput-object v1, Landroid/content/res/OplusThemeManager;->sInstance:Landroid/content/res/OplusThemeManager;

    .line 81
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 83
    :cond_1
    :goto_0
    sget-object v0, Landroid/content/res/OplusThemeManager;->sInstance:Landroid/content/res/OplusThemeManager;

    return-object v0
.end method


# virtual methods
.method public blacklist getAppThemeVersion(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "change"    # Z

    .line 289
    invoke-static {p1, p2}, Lcom/oplus/theme/OplusThemeUtil;->getAppThemeVersion(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getBadgedIcon(Landroid/content/pm/LauncherActivityInfo;ILandroid/content/pm/PackageManager;Landroid/os/UserHandle;Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "info"    # Landroid/content/pm/LauncherActivityInfo;
    .param p2, "density"    # I
    .param p3, "pm"    # Landroid/content/pm/PackageManager;
    .param p4, "user"    # Landroid/os/UserHandle;
    .param p5, "activity"    # Landroid/content/pm/ActivityInfo;

    .line 144
    invoke-virtual {p5, p3}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 145
    .local v0, "originalIcon":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 146
    invoke-virtual {p5, p3}, Landroid/content/pm/ActivityInfo;->loadDefaultIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 148
    :cond_0
    invoke-virtual {p3, v0, p4}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getDefaultActivityIcon(Landroid/content/res/IUxIconPackageManagerExt;Landroid/content/Context;Landroid/content/res/IResourcesExt;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "packageManagerExt"    # Landroid/content/res/IUxIconPackageManagerExt;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "resourcesExt"    # Landroid/content/res/IResourcesExt;

    .line 110
    const-wide/16 v0, 0x2000

    const-string v2, "#UxIcon.getDefaultActivityIcon"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.content.cts"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 113
    const v0, 0x1080093

    invoke-virtual {p2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 115
    :cond_0
    const/high16 v2, 0x10d0000

    invoke-virtual {p2, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 116
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_2

    .line 117
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v3, v4}, Landroid/app/OplusUXIconLoadHelper;->supportUxIcon(Landroid/content/res/IUxIconPackageManagerExt;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 118
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, p3, v2, v4}, Landroid/app/OplusUXIconLoadHelper;->getUxIconDrawable(Landroid/content/res/Resources;Landroid/content/res/IResourcesExt;Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    .line 120
    :cond_1
    invoke-static {}, Landroid/app/OplusThemeHelper;->getInstance()Landroid/app/OplusThemeHelper;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v3, p3, v4, v2}, Landroid/app/OplusThemeHelper;->getDrawableByConvert(Landroid/content/res/IResourcesExt;Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 124
    :cond_2
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 126
    return-object v2
.end method

.method public blacklist getDrawableForApp(Landroid/content/res/Resources;Landroid/content/res/IResourcesExt;Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "colorRes"    # Landroid/content/res/IResourcesExt;
    .param p3, "src"    # Landroid/graphics/drawable/Drawable;
    .param p4, "isForegroundDrawable"    # Z

    .line 167
    invoke-static {p1, p2, p3, p4}, Landroid/app/OplusUXIconLoadHelper;->getUxIconDrawable(Landroid/content/res/Resources;Landroid/content/res/IResourcesExt;Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDrawableFromUxIcon(Landroid/content/res/IUxIconPackageManagerExt;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "packageManagerExt"    # Landroid/content/res/IUxIconPackageManagerExt;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "activityName"    # Ljava/lang/String;
    .param p4, "id"    # I
    .param p5, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p6, "loadByResolver"    # Z

    .line 163
    invoke-static/range {p1 .. p6}, Landroid/app/OplusUXIconLoadHelper;->getDrawable(Landroid/content/res/IUxIconPackageManagerExt;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getIconConfigFromSettings(Landroid/content/ContentResolver;Landroid/content/Context;I)J
    .locals 5
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "userId"    # I

    .line 171
    const-string v0, "key_ux_icon_config"

    const-wide/16 v1, -0x1

    invoke-static {p1, v0, v1, v2, p3}, Landroid/provider/Settings$System;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide v3

    .line 173
    .local v3, "uxIconConfig":J
    cmp-long v1, v3, v1

    if-nez v1, :cond_1

    .line 174
    if-nez p3, :cond_0

    const/4 v1, 0x0

    const-string v2, "persist.sys.themeflag.uxicon"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 175
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :cond_0
    invoke-static {}, Lcom/oplus/content/OplusFeatureConfigManager;->getInstance()Lcom/oplus/content/OplusFeatureConfigManager;

    move-result-object v1

    .line 178
    const-string v2, "oplus.software.uxicon_exp"

    invoke-virtual {v1, v2}, Lcom/oplus/content/OplusFeatureConfigManager;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    .line 179
    .local v1, "isForeign":Z
    invoke-static {v1, p2, p3}, Landroid/app/OplusUxIconConfigParser;->getDefaultIconConfig(ZLandroid/content/Context;I)J

    move-result-wide v3

    .line 180
    invoke-static {p1, v0, v3, v4, p3}, Landroid/provider/Settings$System;->putLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)Z

    .line 182
    .end local v1    # "isForeign":Z
    :cond_1
    return-wide v3
.end method

.method public blacklist getText(Landroid/content/res/IResourcesImplExt;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "resourcesImplExt"    # Landroid/content/res/IResourcesImplExt;
    .param p2, "id"    # I
    .param p3, "text"    # Ljava/lang/CharSequence;

    .line 98
    invoke-interface {p1, p2}, Landroid/content/res/IResourcesImplExt;->getThemeCharSequence(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 99
    .local v0, "themeChar":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 100
    return-object v0

    .line 102
    :cond_0
    return-object p3
.end method

.method public blacklist hookStateListDrawable(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;Landroid/content/res/TypedArray;Landroid/content/res/IResourcesImplExt;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
    .param p4, "r"    # Landroid/content/res/Resources;
    .param p5, "typedArray"    # Landroid/content/res/TypedArray;
    .param p6, "resImpExt"    # Landroid/content/res/IResourcesImplExt;

    .line 266
    const/4 v0, 0x0

    .line 268
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p5, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 269
    .local v1, "id":I
    if-eqz v1, :cond_0

    .line 270
    invoke-virtual {p4, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    .line 271
    .local v2, "entryName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 272
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "res/drawable-xxhdpi/"

    .line 273
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 274
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".xml"

    .line 275
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 276
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 277
    .local v3, "path":Ljava/lang/String;
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 278
    .local v4, "value":Landroid/util/TypedValue;
    iput-object v3, v4, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .line 279
    invoke-interface {p6, p4, v4, v1}, Landroid/content/res/IResourcesImplExt;->loadOverlayDrawable(Landroid/content/res/Resources;Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v5

    .line 283
    .end local v1    # "id":I
    .end local v2    # "entryName":Ljava/lang/String;
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "value":Landroid/util/TypedValue;
    :cond_0
    goto :goto_0

    .line 282
    :catch_0
    move-exception v1

    .line 284
    :goto_0
    return-object v0
.end method

.method public blacklist init(Landroid/content/res/IResourcesImplExt;Ljava/lang/String;)V
    .locals 0
    .param p1, "resourcesImplExt"    # Landroid/content/res/IResourcesImplExt;
    .param p2, "name"    # Ljava/lang/String;

    .line 90
    if-eqz p1, :cond_0

    .line 91
    invoke-interface {p1, p2}, Landroid/content/res/IResourcesImplExt;->init(Ljava/lang/String;)V

    .line 93
    :cond_0
    return-void
.end method

.method public blacklist interceptOplusConfigChange(Landroid/content/pm/ActivityInfo;Landroid/content/pm/IPackageManager;Landroid/content/res/Configuration;I)Z
    .locals 10
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "pm"    # Landroid/content/pm/IPackageManager;
    .param p3, "config"    # Landroid/content/res/Configuration;
    .param p4, "changes"    # I

    .line 293
    const/4 v0, 0x0

    if-eqz p1, :cond_7

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v2, "android"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    if-eqz p2, :cond_7

    if-nez p4, :cond_0

    goto/16 :goto_1

    .line 296
    :cond_0
    const/4 v1, 0x0

    .line 297
    .local v1, "overrideChanges":I
    const/4 v2, 0x0

    .line 298
    .local v2, "blocked":Z
    const/4 v3, 0x0

    .line 299
    .local v3, "bundle":Landroid/os/Bundle;
    const/4 v4, 0x0

    .line 301
    .local v4, "appInfo":Landroid/content/pm/ActivityInfo;
    :try_start_0
    const-class v5, Landroid/content/res/OplusBaseConfiguration;

    invoke-static {v5, p3}, Lcom/oplus/util/OplusTypeCastingHelper;->typeCasting(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/res/OplusBaseConfiguration;

    .line 302
    .local v5, "baseConfig":Landroid/content/res/OplusBaseConfiguration;
    if-eqz v5, :cond_1

    iget-object v6, v5, Landroid/content/res/OplusBaseConfiguration;->mOplusExtraConfiguration:Loplus/content/res/OplusExtraConfiguration;

    if-eqz v6, :cond_1

    .line 303
    iget-object v6, v5, Landroid/content/res/OplusBaseConfiguration;->mOplusExtraConfiguration:Loplus/content/res/OplusExtraConfiguration;

    iget v6, v6, Loplus/content/res/OplusExtraConfiguration;->mUserId:I

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 304
    .local v6, "userId":I
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    const-wide/16 v8, 0x80

    invoke-interface {p2, v7, v8, v9, v6}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    move-result-object v7
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v7

    .line 310
    .end local v5    # "baseConfig":Landroid/content/res/OplusBaseConfiguration;
    .end local v6    # "userId":I
    :cond_1
    goto :goto_0

    .line 306
    :catch_0
    move-exception v5

    .line 307
    .local v5, "ex":Ljava/lang/Exception;
    sget-boolean v6, Landroid/app/OplusUxIconConstants;->DEBUG_UX_ICON:Z

    if-eqz v6, :cond_2

    .line 308
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "interceptOplusConfigChange ex: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "OplusThemeManager"

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    .end local v5    # "ex":Ljava/lang/Exception;
    :cond_2
    :goto_0
    if-eqz v4, :cond_3

    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v5, :cond_3

    .line 312
    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "oplus_config_change"

    invoke-virtual {v5, v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 314
    :cond_3
    if-nez v1, :cond_4

    .line 315
    return v2

    .line 317
    :cond_4
    move v0, p4

    .line 319
    .local v0, "newChanges":I
    const/high16 v5, -0x80000000

    and-int v6, p4, v5

    if-eqz v6, :cond_5

    and-int/2addr v5, v1

    if-nez v5, :cond_5

    .line 320
    const v5, 0x7fffffff

    and-int v0, p4, v5

    .line 322
    :cond_5
    if-eqz v0, :cond_6

    not-int v5, v1

    and-int/2addr v5, v0

    if-nez v5, :cond_6

    .line 323
    const/4 v2, 0x1

    .line 325
    :cond_6
    return v2

    .line 294
    .end local v0    # "newChanges":I
    .end local v1    # "overrideChanges":I
    .end local v2    # "blocked":Z
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v4    # "appInfo":Landroid/content/pm/ActivityInfo;
    :cond_7
    :goto_1
    return v0
.end method

.method public blacklist isOplusIcons()Z
    .locals 1

    .line 154
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist loadOverlayResolverDrawable(Landroid/content/res/IUxIconPackageManagerExt;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "packageManagerExt"    # Landroid/content/res/IUxIconPackageManagerExt;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "resourceId"    # I
    .param p4, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p5, "resolverIconName"    # Ljava/lang/String;

    .line 233
    const/4 v0, 0x0

    .line 234
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    invoke-static {p1, p4, p2}, Landroid/app/OplusUXIconLoadHelper;->supportUxIcon(Landroid/content/res/IUxIconPackageManagerExt;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    invoke-static {p1, p2, p3, p4, p5}, Landroid/app/OplusUXIconLoadHelper;->loadOverlayResolverDrawable(Landroid/content/res/IUxIconPackageManagerExt;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 237
    :cond_0
    invoke-static {}, Landroid/app/OplusThemeHelper;->getInstance()Landroid/app/OplusThemeHelper;

    move-result-object v1

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Landroid/app/OplusThemeHelper;->getDrawable(Landroid/content/res/IUxIconPackageManagerExt;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 239
    :goto_0
    if-nez v0, :cond_1

    .line 240
    invoke-interface {p1}, Landroid/content/res/IUxIconPackageManagerExt;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p2, p3, p4}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 242
    :cond_1
    return-object v0
.end method

.method public blacklist loadPackageItemIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;Landroid/content/res/IUxIconPackageManagerExt;Landroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "info"    # Landroid/content/pm/PackageItemInfo;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;
    .param p3, "pmExt"    # Landroid/content/res/IUxIconPackageManagerExt;
    .param p4, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p5, "isConvertEnable"    # Z

    .line 132
    if-eqz p5, :cond_0

    .line 133
    const/4 v0, 0x1

    invoke-interface {p3, p1, p4, v0}, Landroid/content/res/IUxIconPackageManagerExt;->loadItemIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 135
    :cond_0
    invoke-virtual {p2, p1, p4}, Landroid/content/pm/PackageManager;->loadItemIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public blacklist onCleanupUserForTheme(I)V
    .locals 6
    .param p1, "userId"    # I

    .line 209
    if-eqz p1, :cond_2

    .line 210
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/theme/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 211
    .local v0, "themeFileForUser":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/theme/applying/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 212
    .local v1, "themeApplyForUser":Ljava/io/File;
    const/4 v2, 0x0

    .line 213
    .local v2, "cleanUserThemeResult":Z
    const/4 v3, 0x0

    .line 214
    .local v3, "deleteApply":Z
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 215
    invoke-static {v0}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    move-result v2

    .line 217
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 218
    invoke-static {v1}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    move-result v3

    .line 220
    :cond_1
    sget-boolean v4, Landroid/app/OplusUxIconConstants;->DEBUG_UX_ICON:Z

    if-eqz v4, :cond_2

    .line 221
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCleanupUserForTheme= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", deleteApply= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", user= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OplusThemeManager"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    .end local v0    # "themeFileForUser":Ljava/io/File;
    .end local v1    # "themeApplyForUser":Ljava/io/File;
    .end local v2    # "cleanUserThemeResult":Z
    .end local v3    # "deleteApply":Z
    :cond_2
    return-void
.end method

.method public blacklist setDarkFilterToDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 252
    invoke-static {p1}, Landroid/app/OplusUXIconLoadHelper;->setDarkFilterToDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 253
    return-void
.end method

.method public blacklist setIconConfigToSettings(Landroid/content/ContentResolver;JI)V
    .locals 2
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "uxIconConfig"    # J
    .param p4, "userId"    # I

    .line 186
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    .line 187
    const-string v0, "key_ux_icon_config"

    invoke-static {p1, v0, p2, p3, p4}, Landroid/provider/Settings$System;->putLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)Z

    goto :goto_0

    .line 189
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIconConfigToSettings error: uxIconConfig <= 0 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  userId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusThemeManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :goto_0
    return-void
.end method

.method public blacklist shouldHookStateListDrawable(Landroid/content/res/IResourcesImplExt;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Z
    .locals 2
    .param p1, "resImpExt"    # Landroid/content/res/IResourcesImplExt;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .line 257
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/content/res/IResourcesImplExt;->isHasDrawables()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "color"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 259
    const/4 v0, 0x1

    return v0

    .line 261
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist shouldReportExtraConfig(II)Z
    .locals 1
    .param p1, "changes"    # I
    .param p2, "realChanges"    # I

    .line 247
    invoke-static {p1, p2}, Loplus/content/res/OplusExtraConfiguration;->shouldReportExtra(II)Z

    move-result v0

    return v0
.end method

.method public blacklist supportUxIcon(Landroid/content/res/IUxIconPackageManagerExt;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Z
    .locals 1
    .param p1, "pmExt"    # Landroid/content/res/IUxIconPackageManagerExt;
    .param p2, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "packageName"    # Ljava/lang/String;

    .line 158
    invoke-static {p1, p2, p3}, Landroid/app/OplusUXIconLoadHelper;->supportUxIcon(Landroid/content/res/IUxIconPackageManagerExt;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public blacklist supportUxOnline(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p2, "sourcePackageName"    # Ljava/lang/String;

    .line 202
    invoke-static {p1, p2}, Landroid/app/OplusUXIconLoadHelper;->supportUxOnline(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public blacklist updateExtraConfigForUxIcon(I)V
    .locals 2
    .param p1, "changes"    # I

    .line 195
    invoke-static {p1}, Landroid/app/OplusUXIconLoadHelper;->updateExtraConfig(I)V

    .line 196
    sget-boolean v0, Landroid/app/OplusUxIconConstants;->DEBUG_UX_ICON:Z

    if-eqz v0, :cond_0

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateExtraConfigForUxIcon changes = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; callers:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusThemeManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_0
    return-void
.end method
