.class public Landroid/view/rgbnormalize/OplusRGBNormalizeManager;
.super Ljava/lang/Object;
.source "OplusRGBNormalizeManager.java"

# interfaces
.implements Landroid/view/rgbnormalize/IOplusRGBNormalizeManager;


# static fields
.field private static final blacklist ALPHA_TOLERANCE:I = 0x32

.field private static final blacklist DEFAULT_MATRIX:[F

.field private static final blacklist ERROR_INT_VALUE:I = -0x80000000

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mActivityName:Ljava/lang/String;

.field private blacklist mAncestorRgbInfo:Landroid/view/rgbnormalize/RGBNormalizePolicyHelper$OplusRGBViewInfo;

.field private blacklist mColorMatrix:Landroid/graphics/ColorMatrix;

.field private blacklist mGrayScaleColorFilter:Landroid/graphics/ColorMatrixColorFilter;

.field private blacklist mLastPaint:Landroid/graphics/Paint;

.field private blacklist mMainThreadId:J

.field private blacklist mMatrix:[F

.field private blacklist mNeedSetColorFilter:Z

.field private blacklist mViewSelfRgbInfo:Landroid/view/rgbnormalize/RGBNormalizePolicyHelper$OplusRGBViewInfo;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 42
    const-class v0, Landroid/view/rgbnormalize/OplusRGBNormalizeManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/rgbnormalize/OplusRGBNormalizeManager;->TAG:Ljava/lang/String;

    .line 44
    const/16 v0, 0x14

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Landroid/view/rgbnormalize/OplusRGBNormalizeManager;->DEFAULT_MATRIX:[F

    return-void

    :array_0
    .array-data 4
        0x3f266666    # 0.65f
        0x0
        0x0
        0x0
        0x42200000    # 40.0f
        0x0
        0x3f266666    # 0.65f
        0x0
        0x0
        0x42200000    # 40.0f
        0x0
        0x0
        0x3f266666    # 0.65f
        0x0
        0x42200000    # 40.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .locals 4

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/rgbnormalize/OplusRGBNormalizeManager;->mMainThreadId:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/view/rgbnormalize/OplusRGBNormalizeManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to get main thread id - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private blacklist checkThread()Z
    .locals 4

    .line 395
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 396
    .local v0, "currThreadId":J
    iget-wide v2, p0, Landroid/view/rgbnormalize/OplusRGBNormalizeManager;->mMainThreadId:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 397
    const/4 v2, 0x0

    return v2

    .line 399
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist getCenterMainColor(Landroid/graphics/Bitmap;)I
    .locals 13
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 321
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 322
    .local v0, "region":Landroid/graphics/Rect;
    const v1, 0x3ecccccd    # 0.4f

    .line 323
    .local v1, "startEdge":F
    const v2, 0x3f19999a    # 0.6f

    .line 324
    .local v2, "endEdge":F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-int v4, v4

    .line 325
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v2

    float-to-int v6, v6

    .line 324
    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 326
    invoke-direct {p0, p1, v0}, Landroid/view/rgbnormalize/OplusRGBNormalizeManager;->getPixelsFromBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)[I

    move-result-object v3

    .line 327
    .local v3, "pixels":[I
    const/4 v4, 0x0

    .line 328
    .local v4, "allRed":I
    const/4 v5, 0x0

    .line 329
    .local v5, "allGreen":I
    const/4 v6, 0x0

    .line 330
    .local v6, "allBlue":I
    const/4 v7, 0x0

    .line 331
    .local v7, "allAlpha":I
    const/4 v8, 0x0

    .line 332
    .local v8, "count":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v10, v3

    if-ge v9, v10, :cond_1

    .line 333
    aget v10, v3, v9

    invoke-static {v10}, Landroid/graphics/Color;->alpha(I)I

    move-result v10

    const/16 v11, 0x32

    if-ge v10, v11, :cond_0

    .line 334
    goto :goto_1

    .line 336
    :cond_0
    aget v10, v3, v9

    invoke-static {v10}, Landroid/graphics/Color;->red(I)I

    move-result v10

    add-int/2addr v4, v10

    .line 337
    aget v10, v3, v9

    invoke-static {v10}, Landroid/graphics/Color;->green(I)I

    move-result v10

    add-int/2addr v5, v10

    .line 338
    aget v10, v3, v9

    invoke-static {v10}, Landroid/graphics/Color;->blue(I)I

    move-result v10

    add-int/2addr v6, v10

    .line 339
    aget v10, v3, v9

    invoke-static {v10}, Landroid/graphics/Color;->alpha(I)I

    move-result v10

    add-int/2addr v7, v10

    .line 340
    add-int/lit8 v8, v8, 0x1

    .line 332
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 343
    .end local v9    # "i":I
    :cond_1
    if-nez v8, :cond_2

    .line 344
    const/high16 v9, -0x80000000

    return v9

    .line 346
    :cond_2
    div-int v9, v7, v8

    div-int v10, v4, v8

    div-int v11, v5, v8

    div-int v12, v6, v8

    invoke-static {v9, v10, v11, v12}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    return v9
.end method

.method private blacklist getCorrectRgbInfo()Landroid/view/rgbnormalize/RGBNormalizePolicyHelper$OplusRGBViewInfo;
    .locals 1

    .line 383
    iget-object v0, p0, Landroid/view/rgbnormalize/OplusRGBNormalizeManager;->mViewSelfRgbInfo:Landroid/view/rgbnormalize/RGBNormalizePolicyHelper$OplusRGBViewInfo;

    if-nez v0, :cond_0

    .line 384
    iget-object v0, p0, Landroid/view/rgbnormalize/OplusRGBNormalizeManager;->mAncestorRgbInfo:Landroid/view/rgbnormalize/RGBNormalizePolicyHelper$OplusRGBViewInfo;

    return-object v0

    .line 387
    :cond_0
    return-object v0
.end method

.method private blacklist getPixelsFromBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)[I
    .locals 11
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "region"    # Landroid/graphics/Rect;

    .line 350
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 351
    .local v8, "bitmapWidth":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 352
    .local v9, "bitmapHeight":I
    mul-int v0, v8, v9

    new-array v10, v0, [I

    .line 353
    .local v10, "pixels":[I
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, v10

    move v3, v8

    move v6, v8

    move v7, v9

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 355
    if-nez p2, :cond_0

    .line 357
    return-object v10

    .line 363
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 364
    .local v0, "regionWidth":I
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 369
    .local v1, "regionHeight":I
    mul-int v2, v0, v1

    new-array v2, v2, [I

    .line 370
    .local v2, "subsetPixels":[I
    const/4 v3, 0x0

    .local v3, "row":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 371
    iget v4, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v3

    mul-int/2addr v4, v8

    iget v5, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    mul-int v5, v3, v0

    invoke-static {v10, v4, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 370
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 378
    .end local v3    # "row":I
    :cond_1
    return-object v2
.end method

.method private blacklist isInPolicy(Landroid/view/View;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 275
    const/4 v0, 0x0

    .line 276
    .local v0, "ancestorInPolicy":Z
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 277
    .local v1, "ancestor":Landroid/view/ViewParent;
    if-eqz v1, :cond_1

    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_1

    .line 278
    :goto_0
    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 279
    iget-object v2, p0, Landroid/view/rgbnormalize/OplusRGBNormalizeManager;->mActivityName:Ljava/lang/String;

    move-object v3, v1

    check-cast v3, Landroid/view/View;

    invoke-static {v2, v3}, Landroid/view/rgbnormalize/RGBNormalizePolicyHelper;->isViewInPolicy(Ljava/lang/String;Landroid/view/View;)Z

    move-result v0

    .line 280
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 281
    .local v2, "parent":Landroid/view/ViewParent;
    if-eqz v2, :cond_0

    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 282
    move-object v1, v2

    goto :goto_1

    .line 284
    :cond_0
    const/4 v1, 0x0

    .line 286
    .end local v2    # "parent":Landroid/view/ViewParent;
    :goto_1
    goto :goto_0

    .line 288
    :cond_1
    invoke-static {}, Landroid/view/rgbnormalize/RGBNormalizePolicyHelper;->getCurrentRenderingViewInfo()Landroid/view/rgbnormalize/RGBNormalizePolicyHelper$OplusRGBViewInfo;

    move-result-object v2

    iput-object v2, p0, Landroid/view/rgbnormalize/OplusRGBNormalizeManager;->mAncestorRgbInfo:Landroid/view/rgbnormalize/RGBNormalizePolicyHelper$OplusRGBViewInfo;

    .line 291
    iget-object v2, p0, Landroid/view/rgbnormalize/OplusRGBNormalizeManager;->mActivityName:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/view/rgbnormalize/RGBNormalizePolicyHelper;->isViewInPolicy(Ljava/lang/String;Landroid/view/View;)Z

    move-result v2

    .line 292
    .local v2, "inPolicy":Z
    invoke-static {}, Landroid/view/rgbnormalize/RGBNormalizePolicyHelper;->getCurrentRenderingViewInfo()Landroid/view/rgbnormalize/RGBNormalizePolicyHelper$OplusRGBViewInfo;

    move-result-object v3

    iput-object v3, p0, Landroid/view/rgbnormalize/OplusRGBNormalizeManager;->mViewSelfRgbInfo:Landroid/view/rgbnormalize/RGBNormalizePolicyHelper$OplusRGBViewInfo;

    .line 294
    instance-of v3, p1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_4

    .line 295
    if-nez v2, :cond_3

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v3, 0x1

    :goto_3
    return v3

    .line 297
    :cond_4
    return v0
.end method

.method private blacklist updateColorMatrixForCurrentView()V
    .locals 3

    .line 302
    invoke-static {}, Landroid/view/rgbnormalize/RGBNormalizePolicyHelper;->getMatrix()[F

    move-result-object v0

    iput-object v0, p0, Landroid/view/rgbnormalize/OplusRGBNormalizeManager;->mMatrix:[F

    .line 304
    sget-object v1, Landroid/view/rgbnormalize/OplusRGBNormalizeManager;->DEFAULT_MATRIX:[F

    array-length v2, v1

    .line 305
    .local v2, "defaultSize":I
    if-eqz v0, :cond_0

    array-length v0, v0

    if-eq v0, v2, :cond_1

    .line 306
    :cond_0
    iput-object v1, p0, Landroid/view/rgbnormalize/OplusRGBNormalizeManager;->mMatrix:[F

    .line 309
    :cond_1
    iget-object v0, p0, Landroid/view/rgbnormalize/OplusRGBNormalizeManager;->mColorMatrix:Landroid/graphics/ColorMatrix;

    if-nez v0, :cond_2

    .line 310
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v0, p0, Landroid/view/rgbnormalize/OplusRGBNormalizeManager;->mColorMatrix:Landroid/graphics/ColorMatrix;

    .line 312
    :cond_2
    iget-object v0, p0, Landroid/view/rgbnormalize/OplusRGBNormalizeManager;->mColorMatrix:Landroid/graphics/ColorMatrix;

    iget-object v1, p0, Landroid/view/rgbnormalize/OplusRGBNormalizeManager;->mMatrix:[F

    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 314
    iget-object v0, p0, Landroid/view/rgbnormalize/OplusRGBNormalizeManager;->mGrayScaleColorFilter:Landroid/graphics/ColorMatrixColorFilter;

    if-nez v0, :cond_3

    .line 315
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    iget-object v1, p0, Landroid/view/rgbnormalize/OplusRGBNormalizeManager;->mColorMatrix:Landroid/graphics/ColorMatrix;

    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    iput-object v0, p0, Landroid/view/rgbnormalize/OplusRGBNormalizeManager;->mGrayScaleColorFilter:Landroid/graphics/ColorMatrixColorFilter;

    .line 317
    :cond_3
    iget-object v0, p0, Landroid/view/rgbnormalize/OplusRGBNormalizeManager;->mGrayScaleColorFilter:Landroid/graphics/ColorMatrixColorFilter;

    iget-object v1, p0, Landroid/view/rgbnormalize/OplusRGBNormalizeManager;->mColorMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrixColorFilter;->setColorMatrix(Landroid/graphics/ColorMatrix;)V

    .line 318
    return-void
.end method


# virtual methods
.method public blacklist beforeDraw(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 138
    invoke-direct {p0, p1}, Landroid/view/rgbnormalize/OplusRGBNormalizeManager;->isInPolicy(Landroid/view/View;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/rgbnormalize/OplusRGBNormalizeManager;->mNeedSetColorFilter:Z

    .line 139
    if-eqz v0, :cond_0

    .line 140
    invoke-direct {p0}, Landroid/view/rgbnormalize/OplusRGBNormalizeManager;->updateColorMatrixForCurrentView()V

    .line 142
    :cond_0
    return-void
.end method

.method public blacklist clear()V
    .locals 2

    .line 267
    iget-object v0, p0, Landroid/view/rgbnormalize/OplusRGBNormalizeManager;->mLastPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/view/rgbnormalize/OplusRGBNormalizeManager;->checkThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Landroid/view/rgbnormalize/OplusRGBNormalizeManager;->mLastPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 269
    iput-object v1, p0, Landroid/view/rgbnormalize/OplusRGBNormalizeManager;->mLastPaint:Landroid/graphics/Paint;

    .line 271
    :cond_0
    return-void
.end method

.method public blacklist getGrayScaleColorFilter()Landroid/graphics/ColorMatrixColorFilter;
    .locals 1

    .line 159
    iget-object v0, p0, Landroid/view/rgbnormalize/OplusRGBNormalizeManager;->mGrayScaleColorFilter:Landroid/graphics/ColorMatrixColorFilter;

    return-object v0
.end method

.method public blacklist hookHandleBindApplication(Landroid/content/pm/ApplicationInfo;)V
    .locals 0
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 110
    invoke-static {p1}, Landroid/view/rgbnormalize/RGBNormalizePolicyHelper;->initRGBNormalizeApplicationInfo(Landroid/content/pm/ApplicationInfo;)V

    .line 111
    invoke-direct {p0}, Landroid/view/rgbnormalize/OplusRGBNormalizeManager;->updateColorMatrixForCurrentView()V

    .line 112
    return-void
.end method

.method public blacklist hookPaintBitmap(Landroid/graphics/Paint;Landroid/graphics/Bitmap;)V
    .locals 29
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .line 205
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Landroid/view/rgbnormalize/OplusRGBNormalizeManager;->needSetColorFilterForCurrentRenderingView()Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v1, :cond_5

    .line 207
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v3

    if-nez v3, :cond_5

    if-eqz v2, :cond_5

    .line 209
    invoke-direct/range {p0 .. p0}, Landroid/view/rgbnormalize/OplusRGBNormalizeManager;->checkThread()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 210
    iput-object v1, v0, Landroid/view/rgbnormalize/OplusRGBNormalizeManager;->mLastPaint:Landroid/graphics/Paint;

    .line 211
    invoke-direct {v0, v2}, Landroid/view/rgbnormalize/OplusRGBNormalizeManager;->getCenterMainColor(Landroid/graphics/Bitmap;)I

    move-result v3

    .line 212
    .local v3, "mainColor":I
    const/high16 v4, -0x80000000

    if-ne v3, v4, :cond_0

    .line 213
    return-void

    .line 215
    :cond_0
    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v4

    .line 216
    .local v4, "mainGrayValue":I
    iget-object v5, v0, Landroid/view/rgbnormalize/OplusRGBNormalizeManager;->mAncestorRgbInfo:Landroid/view/rgbnormalize/RGBNormalizePolicyHelper$OplusRGBViewInfo;

    if-nez v5, :cond_1

    iget-object v5, v0, Landroid/view/rgbnormalize/OplusRGBNormalizeManager;->mViewSelfRgbInfo:Landroid/view/rgbnormalize/RGBNormalizePolicyHelper$OplusRGBViewInfo;

    if-nez v5, :cond_1

    .line 218
    iget-object v5, v0, Landroid/view/rgbnormalize/OplusRGBNormalizeManager;->mGrayScaleColorFilter:Landroid/graphics/ColorMatrixColorFilter;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 219
    return-void

    .line 221
    :cond_1
    invoke-direct/range {p0 .. p0}, Landroid/view/rgbnormalize/OplusRGBNormalizeManager;->getCorrectRgbInfo()Landroid/view/rgbnormalize/RGBNormalizePolicyHelper$OplusRGBViewInfo;

    move-result-object v5

    .line 222
    .local v5, "viewInfo":Landroid/view/rgbnormalize/RGBNormalizePolicyHelper$OplusRGBViewInfo;
    if-nez v5, :cond_2

    .line 224
    return-void

    .line 226
    :cond_2
    invoke-virtual {v5}, Landroid/view/rgbnormalize/RGBNormalizePolicyHelper$OplusRGBViewInfo;->getMaxGrayScaleValue()I

    move-result v6

    .line 227
    .local v6, "maxGrayValue":I
    invoke-virtual {v5}, Landroid/view/rgbnormalize/RGBNormalizePolicyHelper$OplusRGBViewInfo;->getMinGrayScaleValue()I

    move-result v7

    .line 228
    .local v7, "minGrayValue":I
    invoke-static {v3}, Lcom/android/internal/util/ImageUtils;->isGrayscale(I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 229
    const/16 v10, 0x10

    const/16 v11, 0xf

    const/16 v12, 0xe

    const/16 v13, 0xd

    const/16 v14, 0xc

    const/16 v15, 0xb

    const/16 v16, 0xa

    const/16 v17, 0x9

    const/16 v18, 0x8

    const/16 v19, 0x7

    const/16 v20, 0x6

    const/16 v21, 0x5

    const/16 v22, 0x4

    const/16 v23, 0x3

    const/16 v24, 0x2

    const/16 v25, 0x1

    const/16 v26, 0x0

    const/16 v8, 0x14

    const/high16 v27, 0x3f800000    # 1.0f

    const/16 v28, 0x0

    if-nez v4, :cond_3

    .line 231
    new-array v8, v8, [F

    aput v27, v8, v26

    aput v28, v8, v25

    aput v28, v8, v24

    aput v28, v8, v23

    int-to-float v9, v7

    aput v9, v8, v22

    aput v28, v8, v21

    aput v27, v8, v20

    aput v28, v8, v19

    aput v28, v8, v18

    int-to-float v9, v7

    aput v9, v8, v17

    aput v28, v8, v16

    aput v28, v8, v15

    aput v27, v8, v14

    aput v28, v8, v13

    int-to-float v9, v7

    aput v9, v8, v12

    aput v28, v8, v11

    aput v28, v8, v10

    const/16 v9, 0x11

    aput v28, v8, v9

    const/16 v9, 0x12

    aput v27, v8, v9

    const/16 v9, 0x13

    aput v28, v8, v9

    .line 235
    .local v8, "matrix":[F
    new-instance v9, Landroid/graphics/ColorMatrix;

    invoke-direct {v9, v8}, Landroid/graphics/ColorMatrix;-><init>([F)V

    .line 236
    .local v9, "colorMatrix":Landroid/graphics/ColorMatrix;
    new-instance v10, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v10, v9}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 237
    .local v10, "filter":Landroid/graphics/ColorMatrixColorFilter;
    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 238
    .end local v8    # "matrix":[F
    .end local v9    # "colorMatrix":Landroid/graphics/ColorMatrix;
    .end local v10    # "filter":Landroid/graphics/ColorMatrixColorFilter;
    goto/16 :goto_0

    :cond_3
    if-le v4, v6, :cond_4

    .line 240
    int-to-float v9, v6

    mul-float v9, v9, v27

    int-to-float v10, v4

    div-float/2addr v9, v10

    .line 241
    .local v9, "modifyRatio":F
    new-array v8, v8, [F

    aput v9, v8, v26

    aput v28, v8, v25

    aput v28, v8, v24

    aput v28, v8, v23

    aput v28, v8, v22

    aput v28, v8, v21

    aput v9, v8, v20

    aput v28, v8, v19

    aput v28, v8, v18

    aput v28, v8, v17

    aput v28, v8, v16

    aput v28, v8, v15

    aput v9, v8, v14

    aput v28, v8, v13

    aput v28, v8, v12

    aput v28, v8, v11

    const/16 v10, 0x10

    aput v28, v8, v10

    const/16 v10, 0x11

    aput v28, v8, v10

    const/16 v10, 0x12

    aput v27, v8, v10

    const/16 v10, 0x13

    aput v28, v8, v10

    .line 245
    .restart local v8    # "matrix":[F
    new-instance v10, Landroid/graphics/ColorMatrix;

    invoke-direct {v10, v8}, Landroid/graphics/ColorMatrix;-><init>([F)V

    .line 246
    .local v10, "colorMatrix":Landroid/graphics/ColorMatrix;
    new-instance v11, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v11, v10}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 247
    .local v11, "filter":Landroid/graphics/ColorMatrixColorFilter;
    invoke-virtual {v1, v11}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .end local v8    # "matrix":[F
    .end local v9    # "modifyRatio":F
    .end local v10    # "colorMatrix":Landroid/graphics/ColorMatrix;
    .end local v11    # "filter":Landroid/graphics/ColorMatrixColorFilter;
    goto :goto_0

    .line 248
    :cond_4
    if-ge v4, v7, :cond_5

    .line 250
    int-to-float v9, v7

    mul-float v9, v9, v27

    int-to-float v10, v4

    div-float/2addr v9, v10

    .line 251
    .restart local v9    # "modifyRatio":F
    new-array v8, v8, [F

    aput v9, v8, v26

    aput v28, v8, v25

    aput v28, v8, v24

    aput v28, v8, v23

    aput v28, v8, v22

    aput v28, v8, v21

    aput v9, v8, v20

    aput v28, v8, v19

    aput v28, v8, v18

    aput v28, v8, v17

    aput v28, v8, v16

    aput v28, v8, v15

    aput v9, v8, v14

    aput v28, v8, v13

    aput v28, v8, v12

    aput v28, v8, v11

    const/16 v10, 0x10

    aput v28, v8, v10

    const/16 v10, 0x11

    aput v28, v8, v10

    const/16 v10, 0x12

    aput v27, v8, v10

    const/16 v10, 0x13

    aput v28, v8, v10

    .line 255
    .restart local v8    # "matrix":[F
    new-instance v10, Landroid/graphics/ColorMatrix;

    invoke-direct {v10, v8}, Landroid/graphics/ColorMatrix;-><init>([F)V

    .line 256
    .restart local v10    # "colorMatrix":Landroid/graphics/ColorMatrix;
    new-instance v11, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v11, v10}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 257
    .restart local v11    # "filter":Landroid/graphics/ColorMatrixColorFilter;
    invoke-virtual {v1, v11}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    nop

    .line 261
    .end local v3    # "mainColor":I
    .end local v4    # "mainGrayValue":I
    .end local v5    # "viewInfo":Landroid/view/rgbnormalize/RGBNormalizePolicyHelper$OplusRGBViewInfo;
    .end local v6    # "maxGrayValue":I
    .end local v7    # "minGrayValue":I
    .end local v8    # "matrix":[F
    .end local v9    # "modifyRatio":F
    .end local v10    # "colorMatrix":Landroid/graphics/ColorMatrix;
    .end local v11    # "filter":Landroid/graphics/ColorMatrixColorFilter;
    :cond_5
    :goto_0
    return-void
.end method

.method public blacklist hookPaintColor(Landroid/graphics/Paint;)V
    .locals 6
    .param p1, "paint"    # Landroid/graphics/Paint;

    .line 169
    invoke-virtual {p0}, Landroid/view/rgbnormalize/OplusRGBNormalizeManager;->needSetColorFilterForCurrentRenderingView()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 171
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    if-nez v0, :cond_3

    .line 172
    invoke-direct {p0}, Landroid/view/rgbnormalize/OplusRGBNormalizeManager;->checkThread()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 173
    iput-object p1, p0, Landroid/view/rgbnormalize/OplusRGBNormalizeManager;->mLastPaint:Landroid/graphics/Paint;

    .line 174
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    .line 175
    .local v0, "originColor":I
    iget-object v1, p0, Landroid/view/rgbnormalize/OplusRGBNormalizeManager;->mAncestorRgbInfo:Landroid/view/rgbnormalize/RGBNormalizePolicyHelper$OplusRGBViewInfo;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/view/rgbnormalize/OplusRGBNormalizeManager;->mViewSelfRgbInfo:Landroid/view/rgbnormalize/RGBNormalizePolicyHelper$OplusRGBViewInfo;

    if-nez v1, :cond_0

    .line 177
    iget-object v1, p0, Landroid/view/rgbnormalize/OplusRGBNormalizeManager;->mGrayScaleColorFilter:Landroid/graphics/ColorMatrixColorFilter;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 178
    return-void

    .line 180
    :cond_0
    invoke-direct {p0}, Landroid/view/rgbnormalize/OplusRGBNormalizeManager;->getCorrectRgbInfo()Landroid/view/rgbnormalize/RGBNormalizePolicyHelper$OplusRGBViewInfo;

    move-result-object v1

    .line 181
    .local v1, "viewInfo":Landroid/view/rgbnormalize/RGBNormalizePolicyHelper$OplusRGBViewInfo;
    if-nez v1, :cond_1

    .line 183
    return-void

    .line 185
    :cond_1
    invoke-virtual {v1}, Landroid/view/rgbnormalize/RGBNormalizePolicyHelper$OplusRGBViewInfo;->getMaxGrayScaleValue()I

    move-result v2

    .line 186
    .local v2, "maxGrayValue":I
    invoke-virtual {v1}, Landroid/view/rgbnormalize/RGBNormalizePolicyHelper$OplusRGBViewInfo;->getMinGrayScaleValue()I

    move-result v3

    .line 187
    .local v3, "minGrayValue":I
    invoke-static {v0}, Lcom/android/internal/util/ImageUtils;->isGrayscale(I)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    const/16 v5, 0x32

    if-le v4, v5, :cond_3

    .line 188
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v4

    if-ge v4, v3, :cond_2

    .line 189
    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 190
    :cond_2
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v4

    if-le v4, v2, :cond_3

    .line 191
    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 195
    .end local v0    # "originColor":I
    .end local v1    # "viewInfo":Landroid/view/rgbnormalize/RGBNormalizePolicyHelper$OplusRGBViewInfo;
    .end local v2    # "maxGrayValue":I
    .end local v3    # "minGrayValue":I
    :cond_3
    :goto_0
    return-void
.end method

.method public blacklist hookPerformLaunchActivity(Landroid/content/pm/ActivityInfo;)V
    .locals 1
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;

    .line 120
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/rgbnormalize/OplusRGBNormalizeManager;->mActivityName:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public blacklist hookPerformResumeActivity(Landroid/content/pm/ActivityInfo;)V
    .locals 1
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;

    .line 129
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/rgbnormalize/OplusRGBNormalizeManager;->mActivityName:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public blacklist needSetColorFilterForCurrentRenderingView()Z
    .locals 1

    .line 150
    iget-boolean v0, p0, Landroid/view/rgbnormalize/OplusRGBNormalizeManager;->mNeedSetColorFilter:Z

    return v0
.end method
