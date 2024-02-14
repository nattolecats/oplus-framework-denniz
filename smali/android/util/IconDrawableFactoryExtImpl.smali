.class public Landroid/util/IconDrawableFactoryExtImpl;
.super Ljava/lang/Object;
.source "IconDrawableFactoryExtImpl.java"

# interfaces
.implements Landroid/util/IIconDrawableFactoryExt;


# instance fields
.field private blacklist mIconDrawableFactory:Landroid/util/IconDrawableFactory;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "iconDrawableFactory"    # Ljava/lang/Object;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/util/IconDrawableFactoryExtImpl;->mIconDrawableFactory:Landroid/util/IconDrawableFactory;

    .line 17
    move-object v0, p1

    check-cast v0, Landroid/util/IconDrawableFactory;

    iput-object v0, p0, Landroid/util/IconDrawableFactoryExtImpl;->mIconDrawableFactory:Landroid/util/IconDrawableFactory;

    .line 18
    return-void
.end method


# virtual methods
.method public blacklist hookgetBadgedIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 32
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 33
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0xc080017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 34
    .local v1, "badgeShadow":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_0

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    aput-object v1, v2, v3

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    aput-object p1, v4, v3

    aput-object v1, v4, v2

    move-object v2, v4

    .line 35
    .local v2, "drawables":[Landroid/graphics/drawable/Drawable;
    :goto_0
    new-instance v3, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v3, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-object v3
.end method

.method public blacklist isMultiAppUserId(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 27
    invoke-static {}, Lcom/oplus/multiapp/OplusMultiAppManager;->getInstance()Lcom/oplus/multiapp/OplusMultiAppManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oplus/multiapp/OplusMultiAppManager;->isMultiAppUserId(I)Z

    move-result v0

    return v0
.end method

.method public blacklist isOemIcons()Z
    .locals 2

    .line 22
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
