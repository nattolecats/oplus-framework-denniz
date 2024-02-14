.class public Lcom/oplus/animation/SurfaceParamsWrapper;
.super Ljava/lang/Object;
.source "SurfaceParamsWrapper.java"


# static fields
.field private static final blacklist FLAG_ALL:I = -0x1

.field private static final blacklist FLAG_ALPHA:I = 0x1

.field private static final blacklist FLAG_BACKGROUND_BLUR_RADIUS:I = 0x20

.field private static final blacklist FLAG_CORNER_RADIUS:I = 0x10

.field private static final blacklist FLAG_LAYER:I = 0x8

.field private static final blacklist FLAG_MATRIX:I = 0x2

.field private static final blacklist FLAG_RELATIVE_LAYER:I = 0x80

.field private static final blacklist FLAG_REPARENT:I = 0x200

.field private static final blacklist FLAG_SHADOW_RADIUS:I = 0x100

.field private static final blacklist FLAG_VISIBILITY:I = 0x40

.field private static final blacklist FLAG_WINDOW_CROP:I = 0x4

.field private static final blacklist TAG:Ljava/lang/String; = "SurfaceParamsWrapper"


# instance fields
.field blacklist mAlpha:F

.field blacklist mBackgroundBlurRadius:I

.field blacklist mCornerRadius:F

.field blacklist mFlags:I

.field blacklist mLayer:I

.field blacklist mMatrix:Landroid/graphics/Matrix;

.field blacklist mNewParent:Landroid/view/SurfaceControl;

.field blacklist mRelativeLayer:I

.field blacklist mRelativeTo:Landroid/view/SurfaceControl;

.field blacklist mShadowRadius:F

.field blacklist mSurface:Landroid/view/SurfaceControl;

.field blacklist mTmpValues:[F

.field blacklist mVisible:Z

.field blacklist mWindowCrop:Landroid/graphics/Rect;


# direct methods
.method public constructor whitelist <init>(Landroid/view/SurfaceControl;)V
    .locals 1
    .param p1, "leash"    # Landroid/view/SurfaceControl;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/oplus/animation/SurfaceParamsWrapper;->mTmpValues:[F

    .line 67
    iput-object p1, p0, Lcom/oplus/animation/SurfaceParamsWrapper;->mSurface:Landroid/view/SurfaceControl;

    .line 68
    return-void
.end method


# virtual methods
.method blacklist applyTo(Landroid/view/SurfaceControl$Transaction;)V
    .locals 3
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 193
    iget-object v0, p0, Lcom/oplus/animation/SurfaceParamsWrapper;->mSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 197
    :cond_0
    iget v0, p0, Lcom/oplus/animation/SurfaceParamsWrapper;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/oplus/animation/SurfaceParamsWrapper;->mSurface:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/oplus/animation/SurfaceParamsWrapper;->mMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/oplus/animation/SurfaceParamsWrapper;->mTmpValues:[F

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    .line 200
    :cond_1
    iget v0, p0, Lcom/oplus/animation/SurfaceParamsWrapper;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 201
    iget-object v0, p0, Lcom/oplus/animation/SurfaceParamsWrapper;->mSurface:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/oplus/animation/SurfaceParamsWrapper;->mWindowCrop:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 203
    :cond_2
    iget v0, p0, Lcom/oplus/animation/SurfaceParamsWrapper;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 204
    iget-object v0, p0, Lcom/oplus/animation/SurfaceParamsWrapper;->mSurface:Landroid/view/SurfaceControl;

    iget v1, p0, Lcom/oplus/animation/SurfaceParamsWrapper;->mAlpha:F

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 206
    :cond_3
    iget v0, p0, Lcom/oplus/animation/SurfaceParamsWrapper;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    .line 207
    iget-object v0, p0, Lcom/oplus/animation/SurfaceParamsWrapper;->mSurface:Landroid/view/SurfaceControl;

    iget v1, p0, Lcom/oplus/animation/SurfaceParamsWrapper;->mLayer:I

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 209
    :cond_4
    iget v0, p0, Lcom/oplus/animation/SurfaceParamsWrapper;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    .line 210
    iget-object v0, p0, Lcom/oplus/animation/SurfaceParamsWrapper;->mSurface:Landroid/view/SurfaceControl;

    iget v1, p0, Lcom/oplus/animation/SurfaceParamsWrapper;->mCornerRadius:F

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 212
    :cond_5
    iget v0, p0, Lcom/oplus/animation/SurfaceParamsWrapper;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_6

    .line 213
    iget-object v0, p0, Lcom/oplus/animation/SurfaceParamsWrapper;->mSurface:Landroid/view/SurfaceControl;

    iget v1, p0, Lcom/oplus/animation/SurfaceParamsWrapper;->mBackgroundBlurRadius:I

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setBackgroundBlurRadius(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 215
    :cond_6
    iget v0, p0, Lcom/oplus/animation/SurfaceParamsWrapper;->mFlags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_8

    .line 216
    iget-boolean v0, p0, Lcom/oplus/animation/SurfaceParamsWrapper;->mVisible:Z

    if-eqz v0, :cond_7

    .line 217
    iget-object v0, p0, Lcom/oplus/animation/SurfaceParamsWrapper;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_0

    .line 219
    :cond_7
    iget-object v0, p0, Lcom/oplus/animation/SurfaceParamsWrapper;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 222
    :cond_8
    :goto_0
    iget v0, p0, Lcom/oplus/animation/SurfaceParamsWrapper;->mFlags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_9

    .line 223
    iget-object v0, p0, Lcom/oplus/animation/SurfaceParamsWrapper;->mSurface:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/oplus/animation/SurfaceParamsWrapper;->mRelativeTo:Landroid/view/SurfaceControl;

    iget v2, p0, Lcom/oplus/animation/SurfaceParamsWrapper;->mRelativeLayer:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 225
    :cond_9
    iget v0, p0, Lcom/oplus/animation/SurfaceParamsWrapper;->mFlags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_a

    .line 226
    iget-object v0, p0, Lcom/oplus/animation/SurfaceParamsWrapper;->mSurface:Landroid/view/SurfaceControl;

    iget v1, p0, Lcom/oplus/animation/SurfaceParamsWrapper;->mShadowRadius:F

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setShadowRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 229
    :cond_a
    iget v0, p0, Lcom/oplus/animation/SurfaceParamsWrapper;->mFlags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_b

    .line 230
    iget-object v0, p0, Lcom/oplus/animation/SurfaceParamsWrapper;->mSurface:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/oplus/animation/SurfaceParamsWrapper;->mNewParent:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 232
    :cond_b
    return-void

    .line 194
    :cond_c
    :goto_1
    return-void
.end method

.method public whitelist withAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .line 79
    iput p1, p0, Lcom/oplus/animation/SurfaceParamsWrapper;->mAlpha:F

    .line 80
    iget v0, p0, Lcom/oplus/animation/SurfaceParamsWrapper;->mFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oplus/animation/SurfaceParamsWrapper;->mFlags:I

    .line 81
    return-void
.end method

.method public whitelist withBackgroundBlur(I)V
    .locals 1
    .param p1, "radius"    # I

    .line 158
    iput p1, p0, Lcom/oplus/animation/SurfaceParamsWrapper;->mBackgroundBlurRadius:I

    .line 159
    iget v0, p0, Lcom/oplus/animation/SurfaceParamsWrapper;->mFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/oplus/animation/SurfaceParamsWrapper;->mFlags:I

    .line 160
    return-void
.end method

.method public whitelist withCornerRadius(F)V
    .locals 1
    .param p1, "radius"    # F

    .line 136
    iput p1, p0, Lcom/oplus/animation/SurfaceParamsWrapper;->mCornerRadius:F

    .line 137
    iget v0, p0, Lcom/oplus/animation/SurfaceParamsWrapper;->mFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/oplus/animation/SurfaceParamsWrapper;->mFlags:I

    .line 138
    return-void
.end method

.method public whitelist withLayer(I)V
    .locals 1
    .param p1, "layer"    # I

    .line 112
    iput p1, p0, Lcom/oplus/animation/SurfaceParamsWrapper;->mLayer:I

    .line 113
    iget v0, p0, Lcom/oplus/animation/SurfaceParamsWrapper;->mFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/oplus/animation/SurfaceParamsWrapper;->mFlags:I

    .line 114
    return-void
.end method

.method public whitelist withMatrix(Landroid/graphics/Matrix;)V
    .locals 1
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .line 90
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0, p1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v0, p0, Lcom/oplus/animation/SurfaceParamsWrapper;->mMatrix:Landroid/graphics/Matrix;

    .line 91
    iget v0, p0, Lcom/oplus/animation/SurfaceParamsWrapper;->mFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oplus/animation/SurfaceParamsWrapper;->mFlags:I

    .line 92
    return-void
.end method

.method public whitelist withRelativeLayerTo(Landroid/view/SurfaceControl;I)V
    .locals 1
    .param p1, "relativeTo"    # Landroid/view/SurfaceControl;
    .param p2, "relativeLayer"    # I

    .line 124
    iput-object p1, p0, Lcom/oplus/animation/SurfaceParamsWrapper;->mRelativeTo:Landroid/view/SurfaceControl;

    .line 125
    iput p2, p0, Lcom/oplus/animation/SurfaceParamsWrapper;->mRelativeLayer:I

    .line 126
    iget v0, p0, Lcom/oplus/animation/SurfaceParamsWrapper;->mFlags:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/oplus/animation/SurfaceParamsWrapper;->mFlags:I

    .line 127
    return-void
.end method

.method public whitelist withReparent(Landroid/view/SurfaceControl;)V
    .locals 1
    .param p1, "newParent"    # Landroid/view/SurfaceControl;

    .line 181
    iput-object p1, p0, Lcom/oplus/animation/SurfaceParamsWrapper;->mNewParent:Landroid/view/SurfaceControl;

    .line 182
    iget v0, p0, Lcom/oplus/animation/SurfaceParamsWrapper;->mFlags:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/oplus/animation/SurfaceParamsWrapper;->mFlags:I

    .line 183
    return-void
.end method

.method public whitelist withShadowRadius(F)V
    .locals 1
    .param p1, "radius"    # F

    .line 147
    iput p1, p0, Lcom/oplus/animation/SurfaceParamsWrapper;->mShadowRadius:F

    .line 148
    iget v0, p0, Lcom/oplus/animation/SurfaceParamsWrapper;->mFlags:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/oplus/animation/SurfaceParamsWrapper;->mFlags:I

    .line 149
    return-void
.end method

.method public whitelist withVisibility(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .line 169
    iput-boolean p1, p0, Lcom/oplus/animation/SurfaceParamsWrapper;->mVisible:Z

    .line 170
    iget v0, p0, Lcom/oplus/animation/SurfaceParamsWrapper;->mFlags:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/oplus/animation/SurfaceParamsWrapper;->mFlags:I

    .line 171
    return-void
.end method

.method public whitelist withWindowCrop(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "windowCrop"    # Landroid/graphics/Rect;

    .line 101
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/oplus/animation/SurfaceParamsWrapper;->mWindowCrop:Landroid/graphics/Rect;

    .line 102
    iget v0, p0, Lcom/oplus/animation/SurfaceParamsWrapper;->mFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/oplus/animation/SurfaceParamsWrapper;->mFlags:I

    .line 103
    return-void
.end method
