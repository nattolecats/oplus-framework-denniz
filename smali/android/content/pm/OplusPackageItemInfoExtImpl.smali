.class public Landroid/content/pm/OplusPackageItemInfoExtImpl;
.super Ljava/lang/Object;
.source "OplusPackageItemInfoExtImpl.java"

# interfaces
.implements Landroid/content/pm/IPackageItemInfoExt;


# instance fields
.field private blacklist mPackageItemInfo:Landroid/content/pm/PackageItemInfo;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "base"    # Ljava/lang/Object;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    move-object v0, p1

    check-cast v0, Landroid/content/pm/PackageItemInfo;

    iput-object v0, p0, Landroid/content/pm/OplusPackageItemInfoExtImpl;->mPackageItemInfo:Landroid/content/pm/PackageItemInfo;

    .line 27
    return-void
.end method


# virtual methods
.method public blacklist loadIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "pkgItemInfo"    # Landroid/content/pm/PackageItemInfo;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;
    .param p3, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 31
    iget-object v0, p2, Landroid/content/pm/PackageManager;->mPackageManagerExt:Landroid/content/pm/IPackageManagerExt;

    invoke-interface {v0}, Landroid/content/pm/IPackageManagerExt;->getUxIconPackageManagerExt()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/IUxIconPackageManagerExt;

    .line 32
    .local v0, "uxIconPackageManagerExt":Landroid/content/res/IUxIconPackageManagerExt;
    if-nez v0, :cond_0

    .line 33
    sget-object v0, Landroid/content/res/IUxIconPackageManagerExt;->DEFAULT:Landroid/content/res/IUxIconPackageManagerExt;

    .line 35
    :cond_0
    sget-object v1, Landroid/content/res/IOplusThemeManager;->DEFAULT:Landroid/content/res/IOplusThemeManager;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v1

    check-cast v1, Landroid/content/res/IOplusThemeManager;

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, v0

    move-object v5, p3

    invoke-interface/range {v1 .. v6}, Landroid/content/res/IOplusThemeManager;->loadPackageItemIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;Landroid/content/res/IUxIconPackageManagerExt;Landroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method
