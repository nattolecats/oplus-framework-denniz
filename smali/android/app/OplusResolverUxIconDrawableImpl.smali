.class public Landroid/app/OplusResolverUxIconDrawableImpl;
.super Ljava/lang/Object;
.source "OplusResolverUxIconDrawableImpl.java"

# interfaces
.implements Landroid/app/IOplusResolverUxIconDrawableManager;


# instance fields
.field private blacklist mIconName:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "iconName"    # Ljava/lang/String;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Landroid/app/OplusResolverUxIconDrawableImpl;->mIconName:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public whitelist getDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p4, "originDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 37
    const/4 v0, 0x0

    .line 38
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v1, p4, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-nez v1, :cond_0

    .line 40
    :try_start_0
    invoke-virtual {p1, p3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v5

    .line 41
    .local v5, "resources":Landroid/content/res/Resources;
    invoke-static {}, Landroid/app/OplusUXIconLoader;->getLoader()Landroid/app/OplusUXIconLoader;

    move-result-object v2

    iget-object v4, p0, Landroid/app/OplusResolverUxIconDrawableImpl;->mIconName:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v3, p2

    invoke-virtual/range {v2 .. v8}, Landroid/app/OplusUXIconLoader;->findAppDrawable(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;ZZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 44
    .end local v5    # "resources":Landroid/content/res/Resources;
    goto :goto_0

    .line 42
    :catch_0
    move-exception v1

    .line 43
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 47
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 48
    move-object v0, p4

    .line 51
    :cond_1
    invoke-static {}, Landroid/app/OplusUXIconLoader;->getLoader()Landroid/app/OplusUXIconLoader;

    move-result-object v1

    sget-object v2, Landroid/app/IOplusResolverUxIconDrawableManager;->DEFAULT:Landroid/app/IOplusResolverUxIconDrawableManager;

    iput-object v2, v1, Landroid/app/OplusUXIconLoader;->mOplusUxIconDrawableManager:Landroid/app/IOplusResolverUxIconDrawableManager;

    .line 52
    return-object v0
.end method
