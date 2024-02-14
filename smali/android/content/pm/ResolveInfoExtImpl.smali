.class public Landroid/content/pm/ResolveInfoExtImpl;
.super Ljava/lang/Object;
.source "ResolveInfoExtImpl.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getDrawableByComponentInfoInLoadIcon(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p0, "manager"    # Landroid/content/pm/PackageManager;
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "iconResourceId"    # I
    .param p4, "ai"    # Landroid/content/pm/ApplicationInfo;

    .line 44
    if-nez p0, :cond_0

    .line 45
    const/4 v0, 0x0

    return-object v0

    .line 47
    :cond_0
    iget-object v0, p0, Landroid/content/pm/PackageManager;->mPackageManagerExt:Landroid/content/pm/IPackageManagerExt;

    invoke-interface {v0}, Landroid/content/pm/IPackageManagerExt;->getUxIconPackageManagerExt()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/IUxIconPackageManagerExt;

    .line 48
    .local v0, "uxIconPackageManagerExt":Landroid/content/res/IUxIconPackageManagerExt;
    if-nez v0, :cond_1

    .line 49
    sget-object v0, Landroid/content/res/IUxIconPackageManagerExt;->DEFAULT:Landroid/content/res/IUxIconPackageManagerExt;

    .line 51
    :cond_1
    const/4 v7, 0x0

    .line 52
    move-object v1, v0

    move-object v2, p1

    move-object v3, p0

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-interface/range {v1 .. v7}, Landroid/content/res/IUxIconPackageManagerExt;->loadResolveIcon(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 51
    return-object v1
.end method

.method public static blacklist getDrawableByResolvePackageNameInLoadIcon(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p0, "manager"    # Landroid/content/pm/PackageManager;
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;
    .param p2, "resolvePackageName"    # Ljava/lang/String;
    .param p3, "iconResourceId"    # I

    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    return-object v0

    .line 31
    :cond_0
    iget-object v0, p0, Landroid/content/pm/PackageManager;->mPackageManagerExt:Landroid/content/pm/IPackageManagerExt;

    invoke-interface {v0}, Landroid/content/pm/IPackageManagerExt;->getUxIconPackageManagerExt()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/IUxIconPackageManagerExt;

    .line 32
    .local v0, "uxIconPackageManagerExt":Landroid/content/res/IUxIconPackageManagerExt;
    if-nez v0, :cond_1

    .line 33
    sget-object v0, Landroid/content/res/IUxIconPackageManagerExt;->DEFAULT:Landroid/content/res/IUxIconPackageManagerExt;

    .line 35
    :cond_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 36
    move-object v1, v0

    move-object v2, p1

    move-object v3, p0

    move-object v4, p2

    move v5, p3

    invoke-interface/range {v1 .. v7}, Landroid/content/res/IUxIconPackageManagerExt;->loadResolveIcon(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 35
    return-object v1
.end method
