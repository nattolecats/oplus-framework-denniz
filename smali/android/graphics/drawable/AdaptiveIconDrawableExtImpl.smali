.class public Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;
.super Ljava/lang/Object;
.source "AdaptiveIconDrawableExtImpl.java"

# interfaces
.implements Landroid/graphics/drawable/IAdaptiveIconDrawableExt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl$OplusLayerState;
    }
.end annotation


# static fields
.field private static final blacklist DEFAULT_VIEW_PORT_SCALE:F = 0.6666667f

.field private static final blacklist EXTRA_INSET_PERCENTAGE:F = 0.25f

.field private static final blacklist TAG:Ljava/lang/String; = "AdaptiveIconDrawableExt"


# instance fields
.field private blacklist mBackgroundPositionBounds:Landroid/graphics/Rect;

.field private blacklist mBackgroundSizeBounds:Landroid/graphics/Rect;

.field private blacklist mBase:Landroid/graphics/drawable/AdaptiveIconDrawable;

.field private blacklist mConfig:Landroid/app/uxicons/CustomAdaptiveIconConfig;

.field private blacklist mCustomMatrix:Landroid/graphics/Matrix;

.field private blacklist mForegroundPositionBounds:Landroid/graphics/Rect;

.field private blacklist mForegroundSizeBounds:Landroid/graphics/Rect;

.field private blacklist mOplusCanvas:Landroid/graphics/Canvas;

.field private blacklist mOplusLayerState:Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl$OplusLayerState;

.field private blacklist mOplusLayersBitmap:Landroid/graphics/Bitmap;

.field private blacklist mOplusMask:Landroid/graphics/Path;

.field private blacklist mOplusMaskScaleOnly:Landroid/graphics/Path;

.field private blacklist mOplusPaint:Landroid/graphics/Paint;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmConfig(Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;Landroid/app/uxicons/CustomAdaptiveIconConfig;)V
    .locals 0

    iput-object p1, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mConfig:Landroid/app/uxicons/CustomAdaptiveIconConfig;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 2
    .param p1, "base"    # Ljava/lang/Object;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mCustomMatrix:Landroid/graphics/Matrix;

    .line 50
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mBackgroundSizeBounds:Landroid/graphics/Rect;

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mBackgroundPositionBounds:Landroid/graphics/Rect;

    .line 52
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mForegroundSizeBounds:Landroid/graphics/Rect;

    .line 53
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mForegroundPositionBounds:Landroid/graphics/Rect;

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mOplusPaint:Landroid/graphics/Paint;

    .line 64
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    iput-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mBase:Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 65
    return-void
.end method

.method private blacklist drawIcon(Landroid/graphics/Canvas;)Z
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 91
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mConfig:Landroid/app/uxicons/CustomAdaptiveIconConfig;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-object v2, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mOplusLayersBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mOplusCanvas:Landroid/graphics/Canvas;

    if-nez v2, :cond_0

    goto/16 :goto_0

    .line 94
    :cond_0
    invoke-virtual {v0}, Landroid/app/uxicons/CustomAdaptiveIconConfig;->getCustomMask()Landroid/graphics/Path;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 95
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 96
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mOplusLayersBitmap:Landroid/graphics/Bitmap;

    .line 97
    .local v0, "layersBitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mOplusCanvas:Landroid/graphics/Canvas;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 98
    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mOplusCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 99
    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mConfig:Landroid/app/uxicons/CustomAdaptiveIconConfig;

    invoke-virtual {v1}, Landroid/app/uxicons/CustomAdaptiveIconConfig;->getIsPlatformDrawable()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mConfig:Landroid/app/uxicons/CustomAdaptiveIconConfig;

    invoke-virtual {v1}, Landroid/app/uxicons/CustomAdaptiveIconConfig;->getIsAdaptiveIconDrawable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mOplusCanvas:Landroid/graphics/Canvas;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 103
    :cond_1
    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mBase:Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 104
    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mOplusCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 105
    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mOplusCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mBackgroundPositionBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mBackgroundPositionBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 106
    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mBase:Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mOplusCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 107
    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mOplusCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mBackgroundPositionBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    int-to-float v2, v2

    iget-object v3, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mBackgroundPositionBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 108
    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mOplusCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 110
    :cond_2
    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mBase:Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 111
    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mOplusCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 112
    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mOplusCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mForegroundPositionBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mForegroundPositionBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 113
    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mBase:Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mOplusCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 114
    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mOplusCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mForegroundPositionBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    int-to-float v2, v2

    iget-object v3, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mForegroundPositionBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 115
    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mOplusCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 118
    :cond_3
    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mOplusPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/BitmapShader;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v2, v0, v3, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 120
    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mOplusMaskScaleOnly:Landroid/graphics/Path;

    if-eqz v1, :cond_4

    .line 121
    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mBase:Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 122
    .local v1, "bounds":Landroid/graphics/Rect;
    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 123
    iget-object v2, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mOplusMaskScaleOnly:Landroid/graphics/Path;

    iget-object v3, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mOplusPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 124
    iget v2, v1, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 126
    .end local v1    # "bounds":Landroid/graphics/Rect;
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 127
    const/4 v1, 0x1

    return v1

    .line 129
    .end local v0    # "layersBitmap":Landroid/graphics/Bitmap;
    :cond_5
    return v1

    .line 92
    :cond_6
    :goto_0
    return v1
.end method

.method private blacklist updateBounds(Landroid/graphics/Rect;)I
    .locals 9
    .param p1, "b"    # Landroid/graphics/Rect;

    .line 153
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mConfig:Landroid/app/uxicons/CustomAdaptiveIconConfig;

    invoke-virtual {v1}, Landroid/app/uxicons/CustomAdaptiveIconConfig;->getScalePercent()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 154
    .local v0, "bgSize":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v1, v0

    .line 155
    .local v1, "bgDiffSize":I
    int-to-float v2, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    .line 156
    .local v2, "offset":I
    iget-object v4, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mBackgroundPositionBounds:Landroid/graphics/Rect;

    add-int v5, v0, v2

    add-int v6, v0, v2

    invoke-virtual {v4, v2, v2, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 158
    iget-object v4, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mBackgroundSizeBounds:Landroid/graphics/Rect;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v5, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 161
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    iget-object v6, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mConfig:Landroid/app/uxicons/CustomAdaptiveIconConfig;

    invoke-virtual {v6}, Landroid/app/uxicons/CustomAdaptiveIconConfig;->getScalePercent()F

    move-result v6

    mul-float/2addr v4, v6

    iget-object v6, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mConfig:Landroid/app/uxicons/CustomAdaptiveIconConfig;

    invoke-virtual {v6}, Landroid/app/uxicons/CustomAdaptiveIconConfig;->getForegroundScalePercent()F

    move-result v6

    mul-float/2addr v4, v6

    float-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v4, v6

    .line 162
    .local v4, "fgSize":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    sub-int/2addr v6, v4

    .line 163
    .local v6, "fgDiffSize":I
    int-to-float v7, v6

    div-float/2addr v7, v3

    float-to-int v3, v7

    .line 164
    .local v3, "fgOffset":I
    iget-object v7, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mForegroundSizeBounds:Landroid/graphics/Rect;

    invoke-virtual {v7, v5, v5, v4, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 165
    iget-object v5, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mForegroundPositionBounds:Landroid/graphics/Rect;

    add-int v7, v4, v3

    add-int v8, v4, v3

    invoke-virtual {v5, v3, v3, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 169
    iget-object v5, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mConfig:Landroid/app/uxicons/CustomAdaptiveIconConfig;

    invoke-virtual {v5}, Landroid/app/uxicons/CustomAdaptiveIconConfig;->getIsPlatformDrawable()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mConfig:Landroid/app/uxicons/CustomAdaptiveIconConfig;

    invoke-virtual {v5}, Landroid/app/uxicons/CustomAdaptiveIconConfig;->getIsAdaptiveIconDrawable()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 170
    iget-object v5, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mBackgroundSizeBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v5}, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->updateThirdPartAdaptiveIconDrawableBound(Landroid/graphics/Rect;)V

    .line 171
    iget-object v5, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mForegroundSizeBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v5}, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->updateThirdPartAdaptiveIconDrawableBound(Landroid/graphics/Rect;)V

    .line 173
    :cond_0
    return v2
.end method

.method private blacklist updateDrawableBounds()V
    .locals 4

    .line 188
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mBase:Landroid/graphics/drawable/AdaptiveIconDrawable;

    iget-object v0, v0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 189
    .local v0, "bg":Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 190
    iget-object v1, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mBackgroundSizeBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 192
    :cond_0
    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mBase:Landroid/graphics/drawable/AdaptiveIconDrawable;

    iget-object v1, v1, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v1, v1, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    .line 193
    .local v1, "fg":Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    if-eqz v1, :cond_1

    iget-object v2, v1, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 194
    iget-object v2, v1, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mForegroundSizeBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 196
    :cond_1
    return-void
.end method

.method private blacklist updateMaskBounds(Landroid/graphics/Rect;I)V
    .locals 6
    .param p1, "b"    # Landroid/graphics/Rect;
    .param p2, "sizeOffset"    # I

    .line 200
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mCustomMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 201
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mCustomMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mConfig:Landroid/app/uxicons/CustomAdaptiveIconConfig;

    invoke-virtual {v2}, Landroid/app/uxicons/CustomAdaptiveIconConfig;->getScalePercent()F

    move-result v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    const/high16 v3, 0x43160000    # 150.0f

    div-float/2addr v1, v3

    .line 202
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mConfig:Landroid/app/uxicons/CustomAdaptiveIconConfig;

    invoke-virtual {v5}, Landroid/app/uxicons/CustomAdaptiveIconConfig;->getScalePercent()F

    move-result v5

    mul-float/2addr v4, v5

    mul-float/2addr v4, v2

    div-float/2addr v4, v3

    .line 201
    invoke-virtual {v0, v1, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 203
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mOplusMask:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mCustomMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mOplusMaskScaleOnly:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 206
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mOplusMaskScaleOnly:Landroid/graphics/Path;

    int-to-float v1, p2

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->offset(FF)V

    .line 207
    return-void
.end method

.method private blacklist updateParams(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 210
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mOplusLayersBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mOplusLayersBitmap:Landroid/graphics/Bitmap;

    .line 211
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mOplusLayersBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 212
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 213
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 212
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mOplusLayersBitmap:Landroid/graphics/Bitmap;

    .line 215
    :cond_1
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mOplusPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 216
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mOplusPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 217
    return-void
.end method

.method private blacklist updateThirdPartAdaptiveIconDrawableBound(Landroid/graphics/Rect;)V
    .locals 8
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 180
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 181
    .local v0, "cX":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 182
    .local v1, "cY":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3faaaaab

    div-float/2addr v2, v3

    float-to-int v2, v2

    .line 183
    .local v2, "insetWidth":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    float-to-int v3, v4

    .line 184
    .local v3, "insetHeight":I
    sub-int v4, v0, v2

    sub-int v5, v1, v3

    add-int v6, v0, v2

    add-int v7, v1, v3

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 185
    return-void
.end method


# virtual methods
.method public blacklist buildAdaptiveIconDrawable(Landroid/content/res/Resources;IILandroid/graphics/Path;ZZ)V
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "customIconSize"    # I
    .param p3, "customIconFgSize"    # I
    .param p4, "customMask"    # Landroid/graphics/Path;
    .param p5, "isPlatformDrawable"    # Z
    .param p6, "isAdaptiveIconDrawable"    # Z

    .line 295
    new-instance v0, Landroid/app/uxicons/CustomAdaptiveIconConfig$Builder;

    invoke-direct {v0, p1}, Landroid/app/uxicons/CustomAdaptiveIconConfig$Builder;-><init>(Landroid/content/res/Resources;)V

    .line 296
    invoke-virtual {v0, p2}, Landroid/app/uxicons/CustomAdaptiveIconConfig$Builder;->setCustomIconSize(I)Landroid/app/uxicons/CustomAdaptiveIconConfig$Builder;

    move-result-object v0

    .line 297
    invoke-virtual {v0, p3}, Landroid/app/uxicons/CustomAdaptiveIconConfig$Builder;->setCustomIconFgSize(I)Landroid/app/uxicons/CustomAdaptiveIconConfig$Builder;

    move-result-object v0

    .line 298
    invoke-virtual {v0, p4}, Landroid/app/uxicons/CustomAdaptiveIconConfig$Builder;->setCustomMask(Landroid/graphics/Path;)Landroid/app/uxicons/CustomAdaptiveIconConfig$Builder;

    move-result-object v0

    .line 299
    invoke-virtual {v0, p5}, Landroid/app/uxicons/CustomAdaptiveIconConfig$Builder;->setIsPlatformDrawable(Z)Landroid/app/uxicons/CustomAdaptiveIconConfig$Builder;

    move-result-object v0

    .line 300
    invoke-virtual {v0, p6}, Landroid/app/uxicons/CustomAdaptiveIconConfig$Builder;->setIsAdaptiveIconDrawable(Z)Landroid/app/uxicons/CustomAdaptiveIconConfig$Builder;

    move-result-object v0

    .line 301
    invoke-virtual {v0}, Landroid/app/uxicons/CustomAdaptiveIconConfig$Builder;->create()Landroid/app/uxicons/CustomAdaptiveIconConfig;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mConfig:Landroid/app/uxicons/CustomAdaptiveIconConfig;

    .line 302
    invoke-virtual {p0}, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->init()V

    .line 303
    return-void
.end method

.method public blacklist getAdaptiveIconDrawable()Landroid/graphics/drawable/AdaptiveIconDrawable;
    .locals 1

    .line 69
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mBase:Landroid/graphics/drawable/AdaptiveIconDrawable;

    return-object v0
.end method

.method public blacklist getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .line 265
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mOplusLayerState:Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl$OplusLayerState;

    return-object v0
.end method

.method public blacklist getForegroundScalePercent()F
    .locals 3

    .line 73
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mConfig:Landroid/app/uxicons/CustomAdaptiveIconConfig;

    invoke-virtual {v0}, Landroid/app/uxicons/CustomAdaptiveIconConfig;->getForegroundScalePercent()F

    move-result v0

    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mConfig:Landroid/app/uxicons/CustomAdaptiveIconConfig;

    invoke-virtual {v1}, Landroid/app/uxicons/CustomAdaptiveIconConfig;->getScalePercent()F

    move-result v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    .line 74
    .local v0, "fgScale":F
    iget-object v2, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mConfig:Landroid/app/uxicons/CustomAdaptiveIconConfig;

    invoke-virtual {v2}, Landroid/app/uxicons/CustomAdaptiveIconConfig;->getIsPlatformDrawable()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mConfig:Landroid/app/uxicons/CustomAdaptiveIconConfig;

    invoke-virtual {v2}, Landroid/app/uxicons/CustomAdaptiveIconConfig;->getIsAdaptiveIconDrawable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    mul-float/2addr v1, v0

    const v2, 0x3f2aaaab

    div-float v0, v1, v2

    .line 77
    :cond_0
    return v0
.end method

.method public blacklist hookDraw(Landroid/graphics/Canvas;)Z
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 270
    invoke-direct {p0, p1}, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->drawIcon(Landroid/graphics/Canvas;)Z

    move-result v0

    return v0
.end method

.method public blacklist hookGetIconMask()Landroid/graphics/Path;
    .locals 1

    .line 280
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mOplusMask:Landroid/graphics/Path;

    return-object v0
.end method

.method public blacklist hookGetIntrinsicHeight()Z
    .locals 1

    .line 285
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mConfig:Landroid/app/uxicons/CustomAdaptiveIconConfig;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist hookGetIntrinsicWidth()Z
    .locals 1

    .line 290
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mConfig:Landroid/app/uxicons/CustomAdaptiveIconConfig;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist hookOnBoundsChange(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 275
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->onDrawableBoundsChange(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public blacklist init()V
    .locals 3

    .line 81
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mConfig:Landroid/app/uxicons/CustomAdaptiveIconConfig;

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0}, Landroid/app/uxicons/CustomAdaptiveIconConfig;->getCustomMask()Landroid/graphics/Path;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mOplusCanvas:Landroid/graphics/Canvas;

    .line 84
    new-instance v0, Landroid/graphics/Path;

    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mConfig:Landroid/app/uxicons/CustomAdaptiveIconConfig;

    invoke-virtual {v1}, Landroid/app/uxicons/CustomAdaptiveIconConfig;->getCustomMask()Landroid/graphics/Path;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mOplusMask:Landroid/graphics/Path;

    .line 85
    new-instance v0, Landroid/graphics/Path;

    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mOplusMask:Landroid/graphics/Path;

    invoke-direct {v0, v1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mOplusMaskScaleOnly:Landroid/graphics/Path;

    .line 86
    new-instance v0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl$OplusLayerState;

    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mBase:Landroid/graphics/drawable/AdaptiveIconDrawable;

    iget-object v1, v1, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v2, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mConfig:Landroid/app/uxicons/CustomAdaptiveIconConfig;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl$OplusLayerState;-><init>(Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;Landroid/app/uxicons/CustomAdaptiveIconConfig;)V

    iput-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mOplusLayerState:Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl$OplusLayerState;

    .line 88
    :cond_0
    return-void
.end method

.method protected blacklist onDrawableBoundsChange(Landroid/graphics/Rect;)Z
    .locals 2
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 134
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mConfig:Landroid/app/uxicons/CustomAdaptiveIconConfig;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/uxicons/CustomAdaptiveIconConfig;->getCustomMask()Landroid/graphics/Path;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 138
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->updateBounds(Landroid/graphics/Rect;)I

    move-result v0

    .line 139
    .local v0, "sizeOffset":I
    invoke-direct {p0}, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->updateDrawableBounds()V

    .line 140
    invoke-direct {p0, p1, v0}, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->updateMaskBounds(Landroid/graphics/Rect;I)V

    .line 141
    invoke-direct {p0, p1}, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->updateParams(Landroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    const/4 v1, 0x1

    return v1

    .line 143
    .end local v0    # "sizeOffset":I
    :catch_0
    move-exception v0

    .line 146
    return v1

    .line 135
    :cond_1
    :goto_0
    return v1
.end method

.method public blacklist shouldHookGetConstantState()Z
    .locals 1

    .line 260
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->mConfig:Landroid/app/uxicons/CustomAdaptiveIconConfig;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/uxicons/CustomAdaptiveIconConfig;->getCustomMask()Landroid/graphics/Path;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
