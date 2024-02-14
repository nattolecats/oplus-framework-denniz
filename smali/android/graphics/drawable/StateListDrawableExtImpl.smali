.class public Landroid/graphics/drawable/StateListDrawableExtImpl;
.super Ljava/lang/Object;
.source "StateListDrawableExtImpl.java"

# interfaces
.implements Landroid/graphics/drawable/IStateListDrawableExt;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "stateListDrawable"    # Ljava/lang/Object;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method


# virtual methods
.method public blacklist hookInflateChildElements(Landroid/graphics/drawable/Drawable;Landroid/content/res/IResourcesImplExt;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;Landroid/content/res/TypedArray;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;
    .param p2, "resImpExt"    # Landroid/content/res/IResourcesImplExt;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "attrs"    # Landroid/util/AttributeSet;
    .param p5, "theme"    # Landroid/content/res/Resources$Theme;
    .param p6, "r"    # Landroid/content/res/Resources;
    .param p7, "typedArray"    # Landroid/content/res/TypedArray;

    .line 38
    invoke-virtual {p6}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/content/res/IOplusThemeManager;->DEFAULT:Landroid/content/res/IOplusThemeManager;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Landroid/content/res/IOplusThemeManager;

    invoke-interface {v0, p2, p3, p4}, Landroid/content/res/IOplusThemeManager;->shouldHookStateListDrawable(Landroid/content/res/IResourcesImplExt;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    sget-object v0, Landroid/content/res/IOplusThemeManager;->DEFAULT:Landroid/content/res/IOplusThemeManager;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/res/IOplusThemeManager;

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    move-object v7, p2

    invoke-interface/range {v1 .. v7}, Landroid/content/res/IOplusThemeManager;->hookStateListDrawable(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;Landroid/content/res/TypedArray;Landroid/content/res/IResourcesImplExt;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 41
    :cond_0
    invoke-virtual {p7}, Landroid/content/res/TypedArray;->recycle()V

    .line 42
    return-object p1
.end method
