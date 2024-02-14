.class public Landroid/content/pm/LauncherActivityInfoExtImpl;
.super Ljava/lang/Object;
.source "LauncherActivityInfoExtImpl.java"

# interfaces
.implements Landroid/content/pm/ILauncherActivityInfoExt;


# instance fields
.field private blacklist mLauncherActivityInfo:Landroid/content/pm/LauncherActivityInfo;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "launcherActivityInfo"    # Ljava/lang/Object;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    move-object v0, p1

    check-cast v0, Landroid/content/pm/LauncherActivityInfo;

    iput-object v0, p0, Landroid/content/pm/LauncherActivityInfoExtImpl;->mLauncherActivityInfo:Landroid/content/pm/LauncherActivityInfo;

    .line 25
    return-void
.end method


# virtual methods
.method public blacklist getBadgedIcon(ILandroid/content/pm/PackageManager;Landroid/os/UserHandle;Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "density"    # I
    .param p2, "pm"    # Landroid/content/pm/PackageManager;
    .param p3, "user"    # Landroid/os/UserHandle;
    .param p4, "info"    # Landroid/content/pm/ActivityInfo;

    .line 35
    sget-object v0, Landroid/content/res/IOplusThemeManager;->DEFAULT:Landroid/content/res/IOplusThemeManager;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/res/IOplusThemeManager;

    iget-object v2, p0, Landroid/content/pm/LauncherActivityInfoExtImpl;->mLauncherActivityInfo:Landroid/content/pm/LauncherActivityInfo;

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Landroid/content/res/IOplusThemeManager;->getBadgedIcon(Landroid/content/pm/LauncherActivityInfo;ILandroid/content/pm/PackageManager;Landroid/os/UserHandle;Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public blacklist isOplusIcons()Z
    .locals 2

    .line 29
    sget-object v0, Landroid/content/res/IOplusThemeManager;->DEFAULT:Landroid/content/res/IOplusThemeManager;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Landroid/content/res/IOplusThemeManager;

    invoke-interface {v0}, Landroid/content/res/IOplusThemeManager;->isOplusIcons()Z

    move-result v0

    return v0
.end method
