.class public Landroid/app/OplusIconPackUtil;
.super Ljava/lang/Object;
.source "OplusIconPackUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/OplusIconPackUtil$Item;
    }
.end annotation


# static fields
.field private static final blacklist ADAPTIVE_ICON_SIZE:I = 0x64

.field public static final blacklist BLUR_FACTOR:F = 0.010416667f

.field private static final blacklist ICON_ADAPTIVE_PATH:Ljava/lang/String; = "adaptive_path"

.field private static final blacklist ICON_BACK_TAG:Ljava/lang/String; = "iconback"

.field private static final blacklist ICON_MASK_TAG:Ljava/lang/String; = "iconmask"

.field private static final blacklist ICON_SCALE_TAG:Ljava/lang/String; = "scale"

.field private static final blacklist ICON_UPON_TAG:Ljava/lang/String; = "iconupon"

.field private static final blacklist MAX_ICON_SIZE:I = 0xc8

.field private static final blacklist MAX_RANDOM_INDEX:I = 0x3e8

.field private static final blacklist PACMAN_WEATHER_DRAWABLE_NAME:Ljava/lang/String; = "ic_dynamic_weather_sunny_slice"

.field private static final blacklist PACMAN_WEATHER_PACKAGE_NAME:Ljava/lang/String; = "net.oneplus.weather"

.field private static final blacklist PAC_MAN_ICON_PACK_PACKAGE_NAME:Ljava/lang/String; = "com.oneplus.iconpack.pacman"

.field private static final blacklist TAG:Ljava/lang/String; = "OplusIconPackUtil"


# instance fields
.field private blacklist mAdaptivePath:Ljava/lang/String;

.field private blacklist mFactor:F

.field private final blacklist mGenerateCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mIconBack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mIconBitmapScaleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mIconMask:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mIconPackItemCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/OplusIconPackUtil$Item;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mIconPackName:Ljava/lang/String;

.field private final blacklist mIconPackResource:Landroid/content/res/Resources;

.field private final blacklist mIconUpon:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIconUtils:Landroid/app/OplusIconNormalizer;

.field private blacklist mIndex:I


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "iconPackName"    # Ljava/lang/String;
    .param p2, "iconPackResources"    # Landroid/content/res/Resources;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/app/OplusIconPackUtil;->mFactor:F

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/OplusIconPackUtil;->mIconBack:Ljava/util/List;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/OplusIconPackUtil;->mIconMask:Ljava/util/List;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/OplusIconPackUtil;->mIconUpon:Ljava/util/List;

    .line 78
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/app/OplusIconPackUtil;->mIconPackItemCache:Ljava/util/Map;

    .line 79
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/app/OplusIconPackUtil;->mIconBitmapScaleMap:Ljava/util/Map;

    .line 80
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/app/OplusIconPackUtil;->mGenerateCache:Ljava/util/Map;

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "iconPackName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusIconPackUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iput-object p1, p0, Landroid/app/OplusIconPackUtil;->mIconPackName:Ljava/lang/String;

    .line 91
    iput-object p2, p0, Landroid/app/OplusIconPackUtil;->mIconPackResource:Landroid/content/res/Resources;

    .line 92
    new-instance v0, Landroid/app/OplusIconNormalizer;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Landroid/app/OplusIconNormalizer;-><init>(I)V

    iput-object v0, p0, Landroid/app/OplusIconPackUtil;->mIconUtils:Landroid/app/OplusIconNormalizer;

    .line 93
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 94
    .local v0, "random":Ljava/util/Random;
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    iput v1, p0, Landroid/app/OplusIconPackUtil;->mIndex:I

    .line 95
    return-void
.end method

.method private blacklist createAdaptivePathIcon(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "iconSize"    # I

    .line 571
    invoke-static {p2}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v0

    .line 572
    .local v0, "path1":Landroid/graphics/Path;
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 573
    .local v1, "result":Landroid/graphics/Path;
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 574
    .local v2, "matrix":Landroid/graphics/Matrix;
    div-int/lit8 v3, p3, 0x64

    int-to-float v3, v3

    div-int/lit8 v4, p3, 0x64

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 575
    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 576
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3}, Landroid/graphics/Canvas;-><init>()V

    .line 577
    .local v3, "canvas":Landroid/graphics/Canvas;
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 579
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 580
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 581
    invoke-virtual {v3, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 582
    const/4 v5, 0x0

    invoke-virtual {p1, v5, v5, p3, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 583
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 584
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    .line 585
    return-object v4
.end method

.method private blacklist createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/drawable/BitmapDrawable;FFI)Landroid/graphics/Bitmap;
    .locals 27
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "iconBack"    # Landroid/graphics/drawable/BitmapDrawable;
    .param p4, "iconMask"    # Landroid/graphics/drawable/BitmapDrawable;
    .param p5, "iconUpon"    # Landroid/graphics/drawable/BitmapDrawable;
    .param p6, "scale"    # F
    .param p7, "iconMaskScale"    # F
    .param p8, "iconSize"    # I

    .line 457
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    const/4 v4, 0x1

    move/from16 v5, p8

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 458
    .end local p8    # "iconSize":I
    .local v4, "iconSize":I
    move v5, v4

    .line 459
    .local v5, "width":I
    move v6, v4

    .line 461
    .local v6, "height":I
    instance-of v7, v0, Landroid/graphics/drawable/PaintDrawable;

    if-eqz v7, :cond_0

    .line 462
    move-object v7, v0

    check-cast v7, Landroid/graphics/drawable/PaintDrawable;

    .line 463
    .local v7, "painter":Landroid/graphics/drawable/PaintDrawable;
    invoke-virtual {v7, v5}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 464
    invoke-virtual {v7, v6}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .end local v7    # "painter":Landroid/graphics/drawable/PaintDrawable;
    goto :goto_0

    .line 465
    :cond_0
    instance-of v7, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v7, :cond_1

    .line 467
    move-object v7, v0

    check-cast v7, Landroid/graphics/drawable/BitmapDrawable;

    .line 468
    .local v7, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    .line 469
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v9

    if-nez v9, :cond_2

    .line 470
    invoke-virtual/range {p2 .. p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    goto :goto_1

    .line 465
    .end local v7    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v8    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    nop

    .line 474
    :cond_2
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 475
    .local v7, "sourceWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    .line 476
    .local v8, "sourceHeight":I
    if-lez v7, :cond_4

    if-lez v8, :cond_4

    .line 478
    int-to-float v9, v7

    int-to-float v10, v8

    div-float/2addr v9, v10

    .line 479
    .local v9, "ratio":F
    if-le v7, v8, :cond_3

    .line 480
    int-to-float v10, v5

    div-float/2addr v10, v9

    float-to-int v6, v10

    goto :goto_2

    .line 481
    :cond_3
    if-le v8, v7, :cond_4

    .line 482
    int-to-float v10, v6

    mul-float/2addr v10, v9

    float-to-int v5, v10

    .line 486
    .end local v9    # "ratio":F
    :cond_4
    :goto_2
    move v9, v4

    .line 487
    .local v9, "textureWidth":I
    move v10, v4

    .line 488
    .local v10, "textureHeight":I
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 489
    .local v11, "oldBounds":Landroid/graphics/Rect;
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 491
    .local v12, "newBounds":Landroid/graphics/Rect;
    new-instance v13, Landroid/graphics/Canvas;

    invoke-direct {v13}, Landroid/graphics/Canvas;-><init>()V

    .line 492
    .local v13, "canvas":Landroid/graphics/Canvas;
    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 494
    .local v15, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v13, v15}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 496
    sub-int v14, v9, v5

    div-int/lit8 v14, v14, 0x2

    .line 497
    .local v14, "left":I
    sub-int v16, v10, v6

    move-object/from16 p8, v15

    .end local v15    # "bitmap":Landroid/graphics/Bitmap;
    .local p8, "bitmap":Landroid/graphics/Bitmap;
    div-int/lit8 v15, v16, 0x2

    .line 499
    .local v15, "top":I
    move/from16 v20, v7

    .end local v7    # "sourceWidth":I
    .local v20, "sourceWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v11, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 500
    instance-of v7, v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v7, :cond_5

    .line 501
    const v7, 0x3c2aaaab

    move/from16 v21, v8

    .end local v8    # "sourceHeight":I
    .local v21, "sourceHeight":I
    int-to-float v8, v9

    mul-float/2addr v8, v7

    float-to-double v7, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 502
    .local v7, "offset":I
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v8

    mul-int/lit8 v16, v7, 0x2

    sub-int v8, v8, v16

    .line 503
    .local v8, "size":I
    add-int v3, v7, v8

    add-int v1, v7, v8

    invoke-virtual {v0, v7, v7, v3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 504
    .end local v7    # "offset":I
    .end local v8    # "size":I
    goto :goto_3

    .line 505
    .end local v21    # "sourceHeight":I
    .local v8, "sourceHeight":I
    :cond_5
    move/from16 v21, v8

    .end local v8    # "sourceHeight":I
    .restart local v21    # "sourceHeight":I
    add-int v1, v14, v5

    add-int v3, v15, v6

    invoke-virtual {v0, v14, v15, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 507
    :goto_3
    invoke-virtual {v13}, Landroid/graphics/Canvas;->save()I

    .line 508
    int-to-float v1, v9

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    int-to-float v7, v10

    div-float/2addr v7, v3

    move/from16 v8, p6

    invoke-virtual {v13, v8, v8, v1, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 509
    invoke-virtual {v0, v13}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 510
    invoke-virtual {v13}, Landroid/graphics/Canvas;->restore()V

    .line 511
    invoke-virtual {v0, v11}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 513
    const/4 v1, 0x0

    invoke-virtual {v12, v1, v1, v4, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 514
    if-eqz v2, :cond_7

    .line 515
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/drawable/BitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 516
    move/from16 v1, p7

    .line 517
    .end local p6    # "scale":F
    .local v1, "scale":F
    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float v8, v1, v7

    if-gez v8, :cond_6

    .line 518
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 519
    .local v8, "clearPaint":Landroid/graphics/Paint;
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 521
    const/4 v3, -0x1

    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 522
    int-to-float v3, v9

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v16, v7, v1

    mul-float v3, v3, v16

    const/high16 v16, 0x40000000    # 2.0f

    div-float v3, v3, v16

    add-float/2addr v3, v7

    .line 523
    .local v3, "innerLeft":F
    int-to-float v0, v10

    sub-float v17, v7, v1

    mul-float v0, v0, v17

    div-float v0, v0, v16

    add-float/2addr v0, v7

    .line 524
    .local v0, "innerTop":F
    int-to-float v7, v9

    sub-float/2addr v7, v3

    .line 525
    .local v7, "innerRight":F
    move/from16 v22, v4

    .end local v4    # "iconSize":I
    .local v22, "iconSize":I
    int-to-float v4, v10

    sub-float/2addr v4, v0

    .line 527
    .local v4, "innerBottom":F
    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v23, v5

    .end local v5    # "width":I
    .local v23, "width":I
    int-to-float v5, v9

    move/from16 v24, v14

    .end local v14    # "left":I
    .local v24, "left":I
    move-object v14, v13

    move-object/from16 v25, p8

    move/from16 v26, v15

    .end local v15    # "top":I
    .end local p8    # "bitmap":Landroid/graphics/Bitmap;
    .local v25, "bitmap":Landroid/graphics/Bitmap;
    .local v26, "top":I
    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v5

    move/from16 v18, v0

    move-object/from16 v19, v8

    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 528
    const/4 v15, 0x0

    int-to-float v5, v10

    move/from16 v16, v0

    move/from16 v17, v3

    move/from16 v18, v5

    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 529
    int-to-float v5, v9

    int-to-float v15, v10

    move/from16 v18, v15

    move v15, v7

    move/from16 v17, v5

    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 530
    int-to-float v5, v10

    move v15, v3

    move/from16 v16, v4

    move/from16 v17, v7

    move/from16 v18, v5

    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_4

    .line 517
    .end local v0    # "innerTop":F
    .end local v3    # "innerLeft":F
    .end local v7    # "innerRight":F
    .end local v8    # "clearPaint":Landroid/graphics/Paint;
    .end local v22    # "iconSize":I
    .end local v23    # "width":I
    .end local v24    # "left":I
    .end local v25    # "bitmap":Landroid/graphics/Bitmap;
    .end local v26    # "top":I
    .local v4, "iconSize":I
    .restart local v5    # "width":I
    .restart local v14    # "left":I
    .restart local v15    # "top":I
    .restart local p8    # "bitmap":Landroid/graphics/Bitmap;
    :cond_6
    move-object/from16 v25, p8

    move/from16 v22, v4

    move/from16 v23, v5

    move/from16 v24, v14

    move/from16 v26, v15

    .line 532
    .end local v4    # "iconSize":I
    .end local v5    # "width":I
    .end local v14    # "left":I
    .end local v15    # "top":I
    .end local p8    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v22    # "iconSize":I
    .restart local v23    # "width":I
    .restart local v24    # "left":I
    .restart local v25    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v26    # "top":I
    :goto_4
    invoke-virtual {v13}, Landroid/graphics/Canvas;->save()I

    .line 533
    int-to-float v0, v9

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    int-to-float v4, v10

    div-float/2addr v4, v3

    invoke-virtual {v13, v1, v1, v0, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 534
    invoke-virtual {v2, v12}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 535
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 537
    invoke-virtual {v2, v13}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 538
    invoke-virtual {v2, v11}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 539
    invoke-virtual {v13}, Landroid/graphics/Canvas;->restore()V

    move v8, v1

    goto :goto_5

    .line 514
    .end local v1    # "scale":F
    .end local v22    # "iconSize":I
    .end local v23    # "width":I
    .end local v24    # "left":I
    .end local v25    # "bitmap":Landroid/graphics/Bitmap;
    .end local v26    # "top":I
    .restart local v4    # "iconSize":I
    .restart local v5    # "width":I
    .restart local v14    # "left":I
    .restart local v15    # "top":I
    .restart local p6    # "scale":F
    .restart local p8    # "bitmap":Landroid/graphics/Bitmap;
    :cond_7
    move-object/from16 v25, p8

    move/from16 v22, v4

    move/from16 v23, v5

    move/from16 v24, v14

    move/from16 v26, v15

    .line 542
    .end local v4    # "iconSize":I
    .end local v5    # "width":I
    .end local v14    # "left":I
    .end local v15    # "top":I
    .end local p6    # "scale":F
    .end local p8    # "bitmap":Landroid/graphics/Bitmap;
    .local v8, "scale":F
    .restart local v22    # "iconSize":I
    .restart local v23    # "width":I
    .restart local v24    # "left":I
    .restart local v25    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v26    # "top":I
    :goto_5
    move-object/from16 v0, p3

    if-eqz v0, :cond_8

    .line 543
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/drawable/BitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 544
    move/from16 v8, p7

    .line 545
    invoke-virtual {v13}, Landroid/graphics/Canvas;->save()I

    .line 546
    int-to-float v1, v9

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    int-to-float v4, v10

    div-float/2addr v4, v3

    invoke-virtual {v13, v8, v8, v1, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 547
    invoke-virtual {v0, v12}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 548
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 550
    invoke-virtual {v0, v13}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 551
    invoke-virtual {v0, v11}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 552
    invoke-virtual {v13}, Landroid/graphics/Canvas;->restore()V

    .line 555
    :cond_8
    move-object/from16 v1, p5

    if-eqz v1, :cond_9

    .line 556
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/drawable/BitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v11, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 557
    move/from16 v8, p7

    .line 558
    invoke-virtual {v13}, Landroid/graphics/Canvas;->save()I

    .line 559
    int-to-float v3, v9

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    int-to-float v5, v10

    div-float/2addr v5, v4

    invoke-virtual {v13, v8, v8, v3, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 560
    invoke-virtual {v1, v12}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 561
    invoke-virtual {v1, v13}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 562
    invoke-virtual {v1, v11}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 563
    invoke-virtual {v13}, Landroid/graphics/Canvas;->restore()V

    .line 566
    :cond_9
    const/4 v3, 0x0

    invoke-virtual {v13, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 567
    return-object v25
.end method

.method private blacklist getDrawableNormalizeScale(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)F
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "d"    # Landroid/graphics/drawable/Drawable;

    .line 427
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    .line 431
    :cond_0
    iget-object v0, p0, Landroid/app/OplusIconPackUtil;->mIconBitmapScaleMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 432
    iget-object v0, p0, Landroid/app/OplusIconPackUtil;->mIconUtils:Landroid/app/OplusIconNormalizer;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/app/OplusIconNormalizer;->getScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;)F

    move-result v0

    .line 433
    .local v0, "scale":F
    invoke-direct {p0, p1}, Landroid/app/OplusIconPackUtil;->isComposedIconComponent(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 434
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDrawableNormalizeScale key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusIconPackUtil"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :cond_1
    iget-object v1, p0, Landroid/app/OplusIconPackUtil;->mIconBitmapScaleMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 438
    .end local v0    # "scale":F
    :cond_2
    iget-object v0, p0, Landroid/app/OplusIconPackUtil;->mIconBitmapScaleMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 440
    .restart local v0    # "scale":F
    :goto_0
    return v0

    .line 428
    .end local v0    # "scale":F
    :cond_3
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist getIconBackgroundScale(FF)F
    .locals 3
    .param p0, "iconBackScale"    # F
    .param p1, "iconUponScale"    # F

    .line 444
    move v0, p0

    .line 445
    .local v0, "iconBackgroundScale":F
    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-nez v2, :cond_0

    .line 446
    move v0, p1

    .line 448
    :cond_0
    cmpl-float v1, v0, v1

    if-nez v1, :cond_1

    .line 449
    const/high16 v0, 0x3f800000    # 1.0f

    .line 451
    :cond_1
    return v0
.end method

.method private blacklist isComposedIconComponent(Ljava/lang/String;)Z
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .line 253
    const-string v0, "iconmask"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 254
    const-string v0, "iconback"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 255
    const-string v0, "iconupon"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 256
    const-string v0, "scale"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 257
    const-string v0, "adaptive_path"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 253
    :goto_1
    return v0
.end method

.method private blacklist loadBitmap(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 2
    .param p1, "iconPackRes"    # Landroid/content/res/Resources;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "drawableName"    # Ljava/lang/String;

    .line 307
    invoke-direct {p0, p1, p2, p3}, Landroid/app/OplusIconPackUtil;->loadDrawable(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 308
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 309
    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    return-object v1

    .line 311
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist loadDrawable(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "iconPackRes"    # Landroid/content/res/Resources;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "drawableName"    # Ljava/lang/String;

    .line 315
    const-string v0, "drawable"

    invoke-virtual {p1, p3, v0, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 316
    .local v0, "id":I
    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 317
    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 319
    :cond_0
    return-object v1
.end method

.method private blacklist loadResourcesFromXmlParser(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V
    .locals 9
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/OplusIconPackUtil$Item;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    .local p2, "itemDrawable":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/app/OplusIconPackUtil$Item;>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 204
    .local v0, "eventType":I
    :goto_0
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    .line 205
    goto/16 :goto_2

    .line 207
    :cond_0
    invoke-direct {p0, p1}, Landroid/app/OplusIconPackUtil;->parseComposedIcon(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 208
    goto/16 :goto_2

    .line 210
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "item"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 211
    goto/16 :goto_2

    .line 214
    :cond_2
    const/4 v1, 0x0

    const-string v3, "component"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 215
    .local v3, "component":Ljava/lang/String;
    const-string v4, "drawable"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 218
    .local v4, "drawable":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 219
    goto/16 :goto_2

    .line 223
    :cond_3
    const-string v5, "ComponentInfo{"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "}"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 224
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x10

    if-lt v5, v6, :cond_7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_4

    .line 225
    goto :goto_2

    .line 229
    :cond_4
    const/16 v5, 0xe

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 231
    const/4 v5, 0x0

    .line 232
    .local v5, "name":Landroid/content/ComponentName;
    const-string v6, "/"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 234
    new-instance v6, Landroid/content/ComponentName;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v6

    goto :goto_1

    .line 236
    :cond_5
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    .line 239
    :goto_1
    if-eqz v5, :cond_7

    .line 240
    new-instance v6, Landroid/app/OplusIconPackUtil$Item;

    invoke-direct {v6, v1}, Landroid/app/OplusIconPackUtil$Item;-><init>(Landroid/app/OplusIconPackUtil$Item-IA;)V

    move-object v1, v6

    .line 241
    .local v1, "item":Landroid/app/OplusIconPackUtil$Item;
    iput-object v4, v1, Landroid/app/OplusIconPackUtil$Item;->mDrawableName:Ljava/lang/String;

    .line 242
    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 243
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    :cond_6
    iget-object v6, p0, Landroid/app/OplusIconPackUtil;->mIconPackItemCache:Ljava/util/Map;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 246
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    .end local v1    # "item":Landroid/app/OplusIconPackUtil$Item;
    .end local v3    # "component":Ljava/lang/String;
    .end local v4    # "drawable":Ljava/lang/String;
    .end local v5    # "name":Landroid/content/ComponentName;
    :cond_7
    :goto_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v0, v1

    if-ne v1, v2, :cond_8

    .line 250
    return-void

    .line 249
    :cond_8
    goto/16 :goto_0
.end method

.method private declared-synchronized blacklist parseComposedIcon(Lorg/xmlpull/v1/XmlPullParser;)Z
    .locals 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    monitor-enter p0

    .line 261
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, "tag":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/app/OplusIconPackUtil;->isComposedIconComponent(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 263
    monitor-exit p0

    return v2

    .line 266
    :cond_0
    :try_start_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    const/4 v3, 0x1

    if-lt v1, v3, :cond_9

    .line 267
    const-string v1, "iconback"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 268
    iget-object v1, p0, Landroid/app/OplusIconPackUtil;->mIconBack:Ljava/util/List;

    invoke-direct {p0, p1, v1}, Landroid/app/OplusIconPackUtil;->parseIconXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)V

    .line 269
    const-string v1, "OplusIconPackUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseComposedIcon mIconBack size:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/app/OplusIconPackUtil;->mIconBack:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 270
    .end local p0    # "this":Landroid/app/OplusIconPackUtil;
    :cond_1
    const-string v1, "iconmask"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 271
    iget-object v1, p0, Landroid/app/OplusIconPackUtil;->mIconMask:Ljava/util/List;

    invoke-direct {p0, p1, v1}, Landroid/app/OplusIconPackUtil;->parseIconXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)V

    goto/16 :goto_0

    .line 272
    :cond_2
    const-string v1, "iconupon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 273
    iget-object v1, p0, Landroid/app/OplusIconPackUtil;->mIconUpon:Ljava/util/List;

    invoke-direct {p0, p1, v1}, Landroid/app/OplusIconPackUtil;->parseIconXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)V

    goto :goto_0

    .line 274
    :cond_3
    const-string v1, "scale"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 275
    const/4 v1, 0x0

    const-string v4, "factor"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 276
    .local v1, "factor":Ljava/lang/String;
    if-nez v1, :cond_4

    .line 277
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v4

    if-ne v4, v3, :cond_4

    .line 278
    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 281
    :cond_4
    if-eqz v1, :cond_5

    .line 282
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Landroid/app/OplusIconPackUtil;->mFactor:F

    .line 284
    :cond_5
    const-string v2, "OplusIconPackUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parseComposedIcon factor: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    nop

    .end local v1    # "factor":Ljava/lang/String;
    goto :goto_0

    :cond_6
    const-string v1, "adaptive_path"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 286
    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/OplusIconPackUtil;->mAdaptivePath:Ljava/lang/String;

    .line 287
    const-string v1, "OplusIconPackUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parseComposedIcon adaptivePath: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/app/OplusIconPackUtil;->mAdaptivePath:Ljava/lang/String;

    if-nez v5, :cond_7

    move v2, v3

    :cond_7
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 289
    :cond_8
    :goto_0
    monitor-exit p0

    return v3

    .line 291
    :cond_9
    monitor-exit p0

    return v2

    .line 260
    .end local v0    # "tag":Ljava/lang/String;
    .end local p1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private blacklist parseIconXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)V
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/List<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;)V"
        }
    .end annotation

    .line 296
    .local p2, "result":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/drawable/BitmapDrawable;>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    .line 297
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 298
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    .line 299
    .local v2, "icon":Ljava/lang/String;
    iget-object v3, p0, Landroid/app/OplusIconPackUtil;->mIconPackResource:Landroid/content/res/Resources;

    iget-object v4, p0, Landroid/app/OplusIconPackUtil;->mIconPackName:Ljava/lang/String;

    invoke-direct {p0, v3, v4, v2}, Landroid/app/OplusIconPackUtil;->loadBitmap(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    .line 300
    .local v3, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v3, :cond_0

    .line 301
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    .end local v3    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 304
    .end local v1    # "i":I
    .end local v2    # "icon":Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method public blacklist generateIconPackDrawable(Landroid/content/ComponentName;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 20
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 397
    move-object/from16 v9, p0

    move-object/from16 v0, p2

    iget-object v1, v9, Landroid/app/OplusIconPackUtil;->mIconBack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v9, Landroid/app/OplusIconPackUtil;->mAdaptivePath:Ljava/lang/String;

    if-eqz v1, :cond_1

    :cond_0
    if-nez p1, :cond_4

    .line 398
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateIconPackDrawable has null:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v9, Landroid/app/OplusIconPackUtil;->mIconBack:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   path:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v9, Landroid/app/OplusIconPackUtil;->mAdaptivePath:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v4

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  CN:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    move v3, v4

    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusIconPackUtil"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    return-object v0

    .line 402
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 403
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    move-object v10, v1

    .line 404
    .local v10, "key":Ljava/lang/String;
    iget-object v1, v9, Landroid/app/OplusIconPackUtil;->mGenerateCache:Ljava/util/Map;

    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 405
    .local v11, "constantState":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v11, :cond_6

    .line 406
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 409
    :cond_6
    iget-object v1, v9, Landroid/app/OplusIconPackUtil;->mAdaptivePath:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 410
    const v1, 0x3f7851ec    # 0.97f

    iput v1, v9, Landroid/app/OplusIconPackUtil;->mFactor:F

    .line 411
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, v9, Landroid/app/OplusIconPackUtil;->mIconPackResource:Landroid/content/res/Resources;

    iget-object v3, v9, Landroid/app/OplusIconPackUtil;->mAdaptivePath:Ljava/lang/String;

    const/16 v4, 0xc8

    invoke-direct {v9, v0, v3, v4}, Landroid/app/OplusIconPackUtil;->createAdaptivePathIcon(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v0, v1

    move-object v12, v0

    .end local p2    # "icon":Landroid/graphics/drawable/Drawable;
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    goto :goto_3

    .line 409
    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local p2    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_7
    move-object v12, v0

    .line 413
    .end local p2    # "icon":Landroid/graphics/drawable/Drawable;
    .local v12, "icon":Landroid/graphics/drawable/Drawable;
    :goto_3
    iget-object v0, v9, Landroid/app/OplusIconPackUtil;->mIconBack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    move-object v0, v1

    goto :goto_4

    :cond_8
    iget-object v0, v9, Landroid/app/OplusIconPackUtil;->mIconBack:Ljava/util/List;

    iget v2, v9, Landroid/app/OplusIconPackUtil;->mIndex:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    rem-int/2addr v2, v3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    :goto_4
    move-object v13, v0

    .line 414
    .local v13, "iconBack":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v0, v9, Landroid/app/OplusIconPackUtil;->mIconMask:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    move-object v4, v1

    goto :goto_5

    :cond_9
    iget-object v0, v9, Landroid/app/OplusIconPackUtil;->mIconMask:Ljava/util/List;

    iget v2, v9, Landroid/app/OplusIconPackUtil;->mIndex:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    rem-int/2addr v2, v3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v4, v0

    .line 415
    .local v4, "iconMask":Landroid/graphics/drawable/BitmapDrawable;
    :goto_5
    iget-object v0, v9, Landroid/app/OplusIconPackUtil;->mIconUpon:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_6

    :cond_a
    iget-object v0, v9, Landroid/app/OplusIconPackUtil;->mIconUpon:Ljava/util/List;

    iget v1, v9, Landroid/app/OplusIconPackUtil;->mIndex:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    :goto_6
    move-object v14, v1

    .line 416
    .local v14, "iconUpon":Landroid/graphics/drawable/BitmapDrawable;
    invoke-direct {v9, v10, v12}, Landroid/app/OplusIconPackUtil;->getDrawableNormalizeScale(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)F

    move-result v15

    .line 417
    .local v15, "iconScale":F
    const-string v0, "iconback"

    invoke-direct {v9, v0, v13}, Landroid/app/OplusIconPackUtil;->getDrawableNormalizeScale(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)F

    move-result v8

    .line 418
    .local v8, "iconBackScale":F
    const-string v0, "iconupon"

    invoke-direct {v9, v0, v14}, Landroid/app/OplusIconPackUtil;->getDrawableNormalizeScale(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)F

    move-result v7

    .line 419
    .local v7, "iconUponScale":F
    invoke-static {v8, v7}, Landroid/app/OplusIconPackUtil;->getIconBackgroundScale(FF)F

    move-result v16

    .line 420
    .local v16, "iconBackgroundScale":F
    iget-object v2, v9, Landroid/app/OplusIconPackUtil;->mIconPackResource:Landroid/content/res/Resources;

    iget v0, v9, Landroid/app/OplusIconPackUtil;->mFactor:F

    mul-float v6, v15, v0

    const/16 v17, 0xc8

    move-object/from16 v0, p0

    move-object v1, v12

    move-object v3, v13

    move-object v5, v14

    move/from16 v18, v7

    .end local v7    # "iconUponScale":F
    .local v18, "iconUponScale":F
    move/from16 v7, v16

    move/from16 v19, v8

    .end local v8    # "iconBackScale":F
    .local v19, "iconBackScale":F
    move/from16 v8, v17

    invoke-direct/range {v0 .. v8}, Landroid/app/OplusIconPackUtil;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/drawable/BitmapDrawable;FFI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 421
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, v9, Landroid/app/OplusIconPackUtil;->mIconPackResource:Landroid/content/res/Resources;

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 422
    .local v1, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v2, v9, Landroid/app/OplusIconPackUtil;->mGenerateCache:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    invoke-interface {v2, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    return-object v1
.end method

.method public blacklist getDrawableIconForPackage(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 324
    const/4 v0, 0x0

    const-string v1, "OplusIconPackUtil"

    if-nez p1, :cond_0

    .line 325
    const-string v2, "getDrawableIconForPackage componentName is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    return-object v0

    .line 329
    :cond_0
    const/4 v2, 0x0

    .line 330
    .local v2, "item":Landroid/app/OplusIconPackUtil$Item;
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 331
    iget-object v3, p0, Landroid/app/OplusIconPackUtil;->mIconPackItemCache:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Landroid/app/OplusIconPackUtil$Item;

    .line 332
    if-nez v2, :cond_1

    .line 333
    iget-object v3, p0, Landroid/app/OplusIconPackUtil;->mIconPackItemCache:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Landroid/app/OplusIconPackUtil$Item;

    .line 335
    :cond_1
    if-nez v2, :cond_2

    .line 336
    iget-object v3, p0, Landroid/app/OplusIconPackUtil;->mIconPackItemCache:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Landroid/app/OplusIconPackUtil$Item;

    .line 338
    :cond_2
    if-nez v2, :cond_4

    .line 339
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    .line 340
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 339
    invoke-static {v3, v4}, Landroid/app/OplusIconPackMappingHelper;->getMappingComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 341
    .local v3, "mappingComponent":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 342
    iget-object v4, p0, Landroid/app/OplusIconPackUtil;->mIconPackItemCache:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    check-cast v2, Landroid/app/OplusIconPackUtil$Item;

    goto :goto_0

    .line 344
    :cond_3
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    .line 345
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 344
    invoke-static {v4, v5}, Landroid/app/OplusIconPackMappingHelper;->getMappingComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 346
    if-eqz v3, :cond_4

    .line 347
    iget-object v4, p0, Landroid/app/OplusIconPackUtil;->mIconPackItemCache:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    check-cast v2, Landroid/app/OplusIconPackUtil$Item;

    .line 352
    .end local v3    # "mappingComponent":Ljava/lang/String;
    :cond_4
    :goto_0
    if-nez v2, :cond_5

    .line 353
    iget-object v3, p0, Landroid/app/OplusIconPackUtil;->mIconPackItemCache:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Landroid/app/OplusIconPackUtil$Item;

    .line 355
    :cond_5
    if-eqz v2, :cond_8

    .line 357
    iget v3, v2, Landroid/app/OplusIconPackUtil$Item;->mDrawableId:I

    .line 358
    .local v3, "drawableId":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_6

    .line 359
    move v4, v3

    .local v4, "id":I
    goto :goto_2

    .line 362
    .end local v4    # "id":I
    :cond_6
    iget-object v4, p0, Landroid/app/OplusIconPackUtil;->mIconPackName:Ljava/lang/String;

    const-string v5, "com.oneplus.iconpack.pacman"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 363
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "net.oneplus.weather"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 364
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "change compat drawable name for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const-string v4, "ic_dynamic_weather_sunny_slice"

    .local v4, "drawableName":Ljava/lang/String;
    goto :goto_1

    .line 367
    .end local v4    # "drawableName":Ljava/lang/String;
    :cond_7
    iget-object v4, v2, Landroid/app/OplusIconPackUtil$Item;->mDrawableName:Ljava/lang/String;

    .line 369
    .restart local v4    # "drawableName":Ljava/lang/String;
    :goto_1
    iget-object v5, p0, Landroid/app/OplusIconPackUtil;->mIconPackResource:Landroid/content/res/Resources;

    iget-object v6, p0, Landroid/app/OplusIconPackUtil;->mIconPackName:Ljava/lang/String;

    const-string v7, "drawable"

    invoke-virtual {v5, v4, v7, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    move v4, v5

    .line 372
    .local v4, "id":I
    :goto_2
    if-lez v4, :cond_8

    .line 373
    iput v4, v2, Landroid/app/OplusIconPackUtil$Item;->mDrawableId:I

    .line 374
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDrawableIconForPackage getDrawable id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v1, p0, Landroid/app/OplusIconPackUtil;->mIconPackResource:Landroid/content/res/Resources;

    invoke-virtual {v1, v4, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 379
    .end local v3    # "drawableId":I
    .end local v4    # "id":I
    :cond_8
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 380
    :cond_9
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    :goto_3
    nop

    .line 381
    .local v3, "key":Ljava/lang/String;
    iget-object v4, p0, Landroid/app/OplusIconPackUtil;->mGenerateCache:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 382
    .local v4, "constantState":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v4, :cond_a

    .line 383
    const-string v0, "getDrawableIconForPackage getDrawable id is 0, try mGenerateCache get OK!"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 386
    :cond_a
    const-string v5, "getDrawableIconForPackage getDrawable id is 0, try mGenerateCache get null"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    return-object v0
.end method

.method public blacklist getIconResMapFromXml()V
    .locals 20

    .line 99
    move-object/from16 v1, p0

    iget-object v0, v1, Landroid/app/OplusIconPackUtil;->mIconBack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 100
    iget-object v0, v1, Landroid/app/OplusIconPackUtil;->mIconMask:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 101
    iget-object v0, v1, Landroid/app/OplusIconPackUtil;->mIconUpon:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 102
    iget-object v0, v1, Landroid/app/OplusIconPackUtil;->mIconPackItemCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 103
    iget-object v0, v1, Landroid/app/OplusIconPackUtil;->mIconBitmapScaleMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 104
    iget-object v0, v1, Landroid/app/OplusIconPackUtil;->mGenerateCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 105
    iget-object v2, v1, Landroid/app/OplusIconPackUtil;->mIconPackResource:Landroid/content/res/Resources;

    .line 106
    .local v2, "res":Landroid/content/res/Resources;
    iget-object v3, v1, Landroid/app/OplusIconPackUtil;->mIconPackName:Ljava/lang/String;

    .line 107
    .local v3, "packageName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 108
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v5, 0x0

    .line 109
    .local v5, "inputStream":Ljava/io/InputStream;
    iget-object v6, v1, Landroid/app/OplusIconPackUtil;->mIconPackItemCache:Ljava/util/Map;

    .line 111
    .local v6, "itemCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/app/OplusIconPackUtil$Item;>;"
    :try_start_0
    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v7, "appfilter.xml"

    invoke-virtual {v0, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    move-object v5, v0

    .line 112
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    .line 113
    .local v0, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    move-object v4, v7

    .line 114
    const-string v7, "UTF-8"

    invoke-interface {v4, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .end local v0    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "appfilter"

    const-string v8, "xml"

    invoke-virtual {v2, v7, v8, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 119
    .local v7, "resId":I
    if-eqz v7, :cond_0

    .line 120
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 124
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v7    # "resId":I
    :cond_0
    :goto_0
    const-string v7, "OplusIconPackUtil"

    if-eqz v4, :cond_6

    .line 126
    :try_start_1
    invoke-direct {v1, v4, v6}, Landroid/app/OplusIconPackUtil;->loadResourcesFromXmlParser(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    instance-of v0, v4, Landroid/content/res/XmlResourceParser;

    if-eqz v0, :cond_1

    .line 134
    :goto_1
    move-object v0, v4

    check-cast v0, Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_5

    .line 135
    :cond_1
    if-eqz v5, :cond_6

    .line 137
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 139
    :goto_2
    goto/16 :goto_5

    .line 138
    :catch_1
    move-exception v0

    goto :goto_2

    .line 133
    :catchall_0
    move-exception v0

    move-object v7, v0

    goto :goto_3

    .line 129
    :catch_2
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 130
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getIconResMapFromXml-->IOException:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 133
    nop

    .end local v0    # "e":Ljava/io/IOException;
    instance-of v0, v4, Landroid/content/res/XmlResourceParser;

    if-eqz v0, :cond_2

    .line 134
    goto :goto_1

    .line 135
    :cond_2
    if-eqz v5, :cond_6

    .line 137
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 127
    :catch_3
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 128
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getIconResMapFromXml-->XmlPullParserException:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 133
    nop

    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    instance-of v0, v4, Landroid/content/res/XmlResourceParser;

    if-eqz v0, :cond_3

    .line 134
    goto :goto_1

    .line 135
    :cond_3
    if-eqz v5, :cond_6

    .line 137
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 133
    :goto_3
    instance-of v0, v4, Landroid/content/res/XmlResourceParser;

    if-nez v0, :cond_4

    .line 135
    if-eqz v5, :cond_5

    .line 137
    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 139
    goto :goto_4

    .line 138
    :catch_4
    move-exception v0

    goto :goto_4

    .line 134
    :cond_4
    move-object v0, v4

    check-cast v0, Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 141
    :cond_5
    :goto_4
    throw v7

    .line 145
    :cond_6
    :goto_5
    const-string v0, "theme_iconpack"

    const-string v8, "array"

    invoke-virtual {v2, v0, v8, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 146
    .local v0, "arrayId":I
    if-nez v0, :cond_7

    .line 147
    const-string v9, "icon_pack"

    invoke-virtual {v2, v9, v8, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 150
    :cond_7
    if-eqz v0, :cond_10

    .line 151
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 152
    .local v8, "iconPack":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 153
    .local v9, "compName":Landroid/content/ComponentName;
    array-length v10, v8

    const/4 v12, 0x0

    :goto_6
    if-ge v12, v10, :cond_f

    aget-object v13, v8, v12

    .line 154
    .local v13, "entry":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 155
    move/from16 v17, v0

    move-object/from16 v16, v2

    goto/16 :goto_7

    .line 158
    :cond_8
    move-object v14, v13

    .line 159
    .local v14, "icon":Ljava/lang/String;
    const-string v15, "_"

    const-string v11, "."

    invoke-virtual {v13, v15, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 161
    new-instance v15, Landroid/app/OplusIconPackUtil$Item;

    move/from16 v17, v0

    .end local v0    # "arrayId":I
    .local v17, "arrayId":I
    const/4 v0, 0x0

    invoke-direct {v15, v0}, Landroid/app/OplusIconPackUtil$Item;-><init>(Landroid/app/OplusIconPackUtil$Item-IA;)V

    .line 162
    .local v15, "item":Landroid/app/OplusIconPackUtil$Item;
    iput-object v14, v15, Landroid/app/OplusIconPackUtil$Item;->mDrawableName:Ljava/lang/String;

    .line 163
    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 164
    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    :cond_9
    invoke-virtual {v13, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 168
    .local v0, "activityIndex":I
    if-lez v0, :cond_e

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v1, v18, -0x1

    if-ne v0, v1, :cond_a

    .line 169
    move-object/from16 v16, v2

    goto :goto_7

    .line 172
    :cond_a
    const/4 v1, 0x0

    invoke-virtual {v13, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 173
    .local v16, "iconPackage":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 174
    move-object/from16 v16, v2

    goto :goto_7

    .line 177
    :cond_b
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {v13, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, "iconActivity":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_c

    .line 179
    move-object/from16 v16, v2

    goto :goto_7

    .line 183
    :cond_c
    move/from16 v19, v0

    .end local v0    # "activityIndex":I
    .local v19, "activityIndex":I
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 184
    .end local v16    # "iconPackage":Ljava/lang/String;
    .local v0, "iconPackage":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 186
    move-object/from16 v16, v2

    .end local v2    # "res":Landroid/content/res/Resources;
    .local v16, "res":Landroid/content/res/Resources;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 187
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .end local v9    # "compName":Landroid/content/ComponentName;
    .local v2, "compName":Landroid/content/ComponentName;
    new-instance v9, Landroid/app/OplusIconPackUtil$Item;

    const/4 v11, 0x0

    invoke-direct {v9, v11}, Landroid/app/OplusIconPackUtil$Item;-><init>(Landroid/app/OplusIconPackUtil$Item-IA;)V

    .line 189
    .end local v15    # "item":Landroid/app/OplusIconPackUtil$Item;
    .local v9, "item":Landroid/app/OplusIconPackUtil$Item;
    iput-object v14, v9, Landroid/app/OplusIconPackUtil$Item;->mDrawableName:Ljava/lang/String;

    .line 190
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_d

    .line 192
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .end local v0    # "iconPackage":Ljava/lang/String;
    .end local v1    # "iconActivity":Ljava/lang/String;
    .end local v9    # "item":Landroid/app/OplusIconPackUtil$Item;
    .end local v13    # "entry":Ljava/lang/String;
    .end local v14    # "icon":Ljava/lang/String;
    .end local v19    # "activityIndex":I
    :cond_d
    move-object v9, v2

    goto :goto_7

    .line 168
    .end local v16    # "res":Landroid/content/res/Resources;
    .local v0, "activityIndex":I
    .local v2, "res":Landroid/content/res/Resources;
    .local v9, "compName":Landroid/content/ComponentName;
    .restart local v13    # "entry":Ljava/lang/String;
    .restart local v14    # "icon":Ljava/lang/String;
    .restart local v15    # "item":Landroid/app/OplusIconPackUtil$Item;
    :cond_e
    move/from16 v19, v0

    move-object/from16 v16, v2

    .line 153
    .end local v0    # "activityIndex":I
    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v13    # "entry":Ljava/lang/String;
    .end local v14    # "icon":Ljava/lang/String;
    .end local v15    # "item":Landroid/app/OplusIconPackUtil$Item;
    .restart local v16    # "res":Landroid/content/res/Resources;
    :goto_7
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move/from16 v0, v17

    goto/16 :goto_6

    .line 195
    .end local v16    # "res":Landroid/content/res/Resources;
    .end local v17    # "arrayId":I
    .local v0, "arrayId":I
    .restart local v2    # "res":Landroid/content/res/Resources;
    :cond_f
    move/from16 v17, v0

    move-object/from16 v16, v2

    .end local v0    # "arrayId":I
    .end local v2    # "res":Landroid/content/res/Resources;
    .restart local v16    # "res":Landroid/content/res/Resources;
    .restart local v17    # "arrayId":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIconResMapFromXml cache size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    .end local v8    # "iconPack":[Ljava/lang/String;
    .end local v9    # "compName":Landroid/content/ComponentName;
    goto :goto_8

    .line 197
    .end local v16    # "res":Landroid/content/res/Resources;
    .end local v17    # "arrayId":I
    .restart local v0    # "arrayId":I
    .restart local v2    # "res":Landroid/content/res/Resources;
    :cond_10
    move/from16 v17, v0

    move-object/from16 v16, v2

    .end local v0    # "arrayId":I
    .end local v2    # "res":Landroid/content/res/Resources;
    .restart local v16    # "res":Landroid/content/res/Resources;
    .restart local v17    # "arrayId":I
    const-string v0, "getIconResMapFromXml array id is 0"

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :goto_8
    return-void
.end method

.method public blacklist hasGenerateIconPack()Z
    .locals 1

    .line 391
    iget-object v0, p0, Landroid/app/OplusIconPackUtil;->mIconBack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/OplusIconPackUtil;->mIconMask:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/app/OplusIconPackUtil;->mAdaptivePath:Ljava/lang/String;

    .line 392
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 391
    :goto_0
    return v0
.end method
