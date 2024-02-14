.class public interface abstract Lcom/oplus/preloadsplash/IOplusPreLoadSplashManager;
.super Ljava/lang/Object;
.source "IOplusPreLoadSplashManager.java"

# interfaces
.implements Landroid/common/IOplusCommonFeature;


# static fields
.field public static final blacklist DEFAULT:Lcom/oplus/preloadsplash/IOplusPreLoadSplashManager;

.field public static final blacklist NAME:Ljava/lang/String; = "IOplusPreLoadSplashManager"

.field public static final blacklist debug:Z = false


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lcom/oplus/preloadsplash/IOplusPreLoadSplashManager$1;

    invoke-direct {v0}, Lcom/oplus/preloadsplash/IOplusPreLoadSplashManager$1;-><init>()V

    sput-object v0, Lcom/oplus/preloadsplash/IOplusPreLoadSplashManager;->DEFAULT:Lcom/oplus/preloadsplash/IOplusPreLoadSplashManager;

    return-void
.end method


# virtual methods
.method public whitelist getDefault()Landroid/common/IOplusCommonFeature;
    .locals 1

    .line 38
    sget-object v0, Lcom/oplus/preloadsplash/IOplusPreLoadSplashManager;->DEFAULT:Lcom/oplus/preloadsplash/IOplusPreLoadSplashManager;

    return-object v0
.end method

.method public blacklist getDrawableCache(IILandroid/content/res/Resources$Theme;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "resourceID"    # I
    .param p2, "density"    # I
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
    .param p4, "wrapper"    # Landroid/content/res/Resources;

    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist index()Landroid/common/OplusFeatureList$OplusIndex;
    .locals 1

    .line 33
    sget-object v0, Landroid/common/OplusFeatureList$OplusIndex;->IOplusPreLoadSplashManager:Landroid/common/OplusFeatureList$OplusIndex;

    return-object v0
.end method

.method public blacklist init(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 46
    return-void
.end method

.method public blacklist preloadCacheDrawable()V
    .locals 0

    .line 53
    return-void
.end method

.method public blacklist saveDrawableCache(ILandroid/graphics/drawable/Drawable;I)Z
    .locals 1
    .param p1, "resourceID"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "density"    # I

    .line 68
    const/4 v0, 0x0

    return v0
.end method
