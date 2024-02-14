.class public interface abstract Landroid/content/res/IOplusThemeManager;
.super Ljava/lang/Object;
.source "IOplusThemeManager.java"

# interfaces
.implements Landroid/common/IOplusCommonFeature;


# static fields
.field public static final blacklist DEFAULT:Landroid/content/res/IOplusThemeManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Landroid/content/res/IOplusThemeManager$1;

    invoke-direct {v0}, Landroid/content/res/IOplusThemeManager$1;-><init>()V

    sput-object v0, Landroid/content/res/IOplusThemeManager;->DEFAULT:Landroid/content/res/IOplusThemeManager;

    return-void
.end method


# virtual methods
.method public blacklist getAppThemeVersion(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "change"    # Z

    .line 161
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getBadgedIcon(Landroid/content/pm/LauncherActivityInfo;ILandroid/content/pm/PackageManager;Landroid/os/UserHandle;Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "info"    # Landroid/content/pm/LauncherActivityInfo;
    .param p2, "density"    # I
    .param p3, "pm"    # Landroid/content/pm/PackageManager;
    .param p4, "user"    # Landroid/os/UserHandle;
    .param p5, "activity"    # Landroid/content/pm/ActivityInfo;

    .line 82
    invoke-virtual {p1, p2}, Landroid/content/pm/LauncherActivityInfo;->getIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 83
    .local v0, "originalIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p3, v0, p4}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic whitelist getDefault()Landroid/common/IOplusCommonFeature;
    .locals 1

    .line 43
    invoke-interface {p0}, Landroid/content/res/IOplusThemeManager;->getDefault()Landroid/content/res/IOplusThemeManager;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDefault()Landroid/content/res/IOplusThemeManager;
    .locals 1

    .line 54
    sget-object v0, Landroid/content/res/IOplusThemeManager;->DEFAULT:Landroid/content/res/IOplusThemeManager;

    return-object v0
.end method

.method public blacklist getDefaultActivityIcon(Landroid/content/res/IUxIconPackageManagerExt;Landroid/content/Context;Landroid/content/res/IResourcesExt;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "packageManagerExt"    # Landroid/content/res/IUxIconPackageManagerExt;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "resourcesExt"    # Landroid/content/res/IResourcesExt;

    .line 70
    const v0, 0x1080093

    invoke-virtual {p2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDrawableForApp(Landroid/content/res/Resources;Landroid/content/res/IResourcesExt;Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "colorRes"    # Landroid/content/res/IResourcesExt;
    .param p3, "src"    # Landroid/graphics/drawable/Drawable;
    .param p4, "isForegroundDrawable"    # Z

    .line 109
    return-object p3
.end method

.method public blacklist getDrawableForApp(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p1, "src"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isForegroundDrawable"    # Z

    .line 105
    return-object p1
.end method

.method public blacklist getDrawableFromUxIcon(Landroid/content/res/IUxIconPackageManagerExt;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "packageManagerExt"    # Landroid/content/res/IUxIconPackageManagerExt;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "activityName"    # Ljava/lang/String;
    .param p4, "id"    # I
    .param p5, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p6, "loadByResolver"    # Z

    .line 98
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/content/res/IUxIconPackageManagerExt;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    invoke-interface {p1}, Landroid/content/res/IUxIconPackageManagerExt;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p2, p4, p5}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 101
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getIconConfigFromSettings(Landroid/content/ContentResolver;Landroid/content/Context;I)J
    .locals 2
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "userId"    # I

    .line 113
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public blacklist getText(Landroid/content/res/IResourcesImplExt;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p1, "res"    # Landroid/content/res/IResourcesImplExt;
    .param p2, "id"    # I
    .param p3, "text"    # Ljava/lang/CharSequence;

    .line 64
    return-object p3
.end method

.method public blacklist hookStateListDrawable(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;Landroid/content/res/TypedArray;Landroid/content/res/IResourcesImplExt;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
    .param p4, "resouce"    # Landroid/content/res/Resources;
    .param p5, "typedArray"    # Landroid/content/res/TypedArray;
    .param p6, "resImpExt"    # Landroid/content/res/IResourcesImplExt;

    .line 153
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist index()Landroid/common/OplusFeatureList$OplusIndex;
    .locals 1

    .line 49
    sget-object v0, Landroid/common/OplusFeatureList$OplusIndex;->IOplusThemeManager:Landroid/common/OplusFeatureList$OplusIndex;

    return-object v0
.end method

.method public blacklist init(Landroid/content/res/IResourcesImplExt;Ljava/lang/String;)V
    .locals 0
    .param p1, "resources"    # Landroid/content/res/IResourcesImplExt;
    .param p2, "name"    # Ljava/lang/String;

    .line 60
    return-void
.end method

.method public blacklist interceptOplusConfigChange(Landroid/content/pm/ActivityInfo;Landroid/content/pm/IPackageManager;Landroid/content/res/Configuration;I)Z
    .locals 1
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "pm"    # Landroid/content/pm/IPackageManager;
    .param p3, "config"    # Landroid/content/res/Configuration;
    .param p4, "changes"    # I

    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isOplusIcons()Z
    .locals 1

    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist loadOverlayResolverDrawable(Landroid/content/res/IUxIconPackageManagerExt;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "packageManagerExt"    # Landroid/content/res/IUxIconPackageManagerExt;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "resourceId"    # I
    .param p4, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p5, "resolverIconName"    # Ljava/lang/String;

    .line 135
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/content/res/IUxIconPackageManagerExt;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 136
    invoke-interface {p1}, Landroid/content/res/IUxIconPackageManagerExt;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 138
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist loadPackageItemIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;Landroid/content/res/IUxIconPackageManagerExt;Landroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "info"    # Landroid/content/pm/PackageItemInfo;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;
    .param p3, "pmExt"    # Landroid/content/res/IUxIconPackageManagerExt;
    .param p4, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p5, "isConvertEnable"    # Z

    .line 76
    invoke-virtual {p2, p1, p4}, Landroid/content/pm/PackageManager;->loadItemIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public blacklist onCleanupUserForTheme(I)V
    .locals 0
    .param p1, "userId"    # I

    .line 128
    return-void
.end method

.method public blacklist setDarkFilterToDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 146
    return-void
.end method

.method public blacklist setIconConfigToSettings(Landroid/content/ContentResolver;JI)V
    .locals 0
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "uxIconConfig"    # J
    .param p4, "userId"    # I

    .line 117
    return-void
.end method

.method public blacklist shouldHookStateListDrawable(Landroid/content/res/IResourcesImplExt;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Z
    .locals 1
    .param p1, "resImpExt"    # Landroid/content/res/IResourcesImplExt;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist shouldReportExtraConfig(II)Z
    .locals 1
    .param p1, "changes"    # I
    .param p2, "realChanges"    # I

    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist supportUxIcon(Landroid/content/res/IUxIconPackageManagerExt;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Z
    .locals 1
    .param p1, "pm"    # Landroid/content/res/IUxIconPackageManagerExt;
    .param p2, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "packageName"    # Ljava/lang/String;

    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist supportUxOnline(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p2, "sourcePackageName"    # Ljava/lang/String;

    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist updateExtraConfigForUxIcon(I)V
    .locals 0
    .param p1, "changes"    # I

    .line 120
    return-void
.end method
