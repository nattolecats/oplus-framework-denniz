.class public Landroid/graphics/drawable/OplusGradientDrawableExtImpl;
.super Ljava/lang/Object;
.source "OplusGradientDrawableExtImpl.java"

# interfaces
.implements Landroid/graphics/drawable/IGradientDrawableExt;


# instance fields
.field private blacklist mBase:Landroid/graphics/drawable/GradientDrawable;

.field private blacklist mGradientStateSmoothRound:Z

.field private blacklist mSmoothRound:Z


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "base"    # Ljava/lang/Object;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iput-object v0, p0, Landroid/graphics/drawable/OplusGradientDrawableExtImpl;->mBase:Landroid/graphics/drawable/GradientDrawable;

    .line 31
    return-void
.end method


# virtual methods
.method public blacklist checkElementsName(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "smooth-rect"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/OplusGradientDrawableExtImpl;->mSmoothRound:Z

    .line 44
    iput-boolean v0, p0, Landroid/graphics/drawable/OplusGradientDrawableExtImpl;->mGradientStateSmoothRound:Z

    .line 45
    return v0

    .line 47
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist drawRoundRect(ZLandroid/graphics/Canvas;Landroid/graphics/RectF;FZLandroid/graphics/Paint;Landroid/graphics/Paint;)V
    .locals 9
    .param p1, "smoothRound"    # Z
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "rect"    # Landroid/graphics/RectF;
    .param p4, "rad"    # F
    .param p5, "haveStroke"    # Z
    .param p6, "fillPaint"    # Landroid/graphics/Paint;
    .param p7, "strokePaint"    # Landroid/graphics/Paint;

    .line 36
    sget-object v0, Landroid/drawable/IOplusGradientHooks;->DEFAULT:Landroid/drawable/IOplusGradientHooks;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/drawable/IOplusGradientHooks;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Landroid/drawable/IOplusGradientHooks;->drawRoundRect(ZLandroid/graphics/Canvas;Landroid/graphics/RectF;FZLandroid/graphics/Paint;Landroid/graphics/Paint;)V

    .line 38
    return-void
.end method

.method public blacklist getGradientStateSmoothRoundStyle()Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Landroid/graphics/drawable/OplusGradientDrawableExtImpl;->mGradientStateSmoothRound:Z

    return v0
.end method

.method public blacklist getSmoothRoundStyle()Z
    .locals 1

    .line 57
    iget-boolean v0, p0, Landroid/graphics/drawable/OplusGradientDrawableExtImpl;->mSmoothRound:Z

    return v0
.end method

.method public blacklist setSmoothRoundStyle(Z)V
    .locals 0
    .param p1, "smooth"    # Z

    .line 52
    iput-boolean p1, p0, Landroid/graphics/drawable/OplusGradientDrawableExtImpl;->mSmoothRound:Z

    .line 53
    return-void
.end method
