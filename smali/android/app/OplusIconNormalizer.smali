.class public Landroid/app/OplusIconNormalizer;
.super Ljava/lang/Object;
.source "OplusIconNormalizer.java"


# static fields
.field private static final blacklist BOUND_RATIO_MARGIN:F = 0.05f

.field protected static final blacklist CIRCLE_AREA_BY_RECT:F = 0.7853982f

.field protected static final blacklist DEBUG:Z = false

.field public static final blacklist ICON_VISIBLE_AREA_FACTOR:F = 0.92f

.field private static final blacklist LINEAR_SCALE_SLOPE:F = 0.040449437f

.field private static final blacklist LOCK:Ljava/lang/Object;

.field protected static final blacklist MAX_CIRCLE_AREA_FACTOR:F = 0.6597222f

.field protected static final blacklist MAX_SQUARE_AREA_FACTOR:F = 0.6510417f

.field private static final blacklist MIN_VISIBLE_ALPHA:I = 0x28

.field private static final blacklist PIXEL_DIFF_PERCENTAGE_THRESHOLD:F = 0.005f

.field private static final blacklist SCALE_NOT_INITIALIZED:F = 0.0f

.field private static final blacklist TAG:Ljava/lang/String; = "IconNormalizer"

.field private static volatile blacklist sIconNormalizer:Landroid/app/OplusIconNormalizer;


# instance fields
.field private final blacklist mAdaptiveIconBounds:Landroid/graphics/Rect;

.field private blacklist mAdaptiveIconScale:F

.field protected final blacklist mBitmap:Landroid/graphics/Bitmap;

.field protected final blacklist mBounds:Landroid/graphics/Rect;

.field protected final blacklist mCanvas:Landroid/graphics/Canvas;

.field protected final blacklist mLeftBorder:[F

.field protected final blacklist mMaxSize:I

.field protected final blacklist mPixels:[B

.field protected final blacklist mRightBorder:[F


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/OplusIconNormalizer;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 3
    .param p1, "iconBitmapSize"    # I

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    mul-int/lit8 v0, p1, 0x2

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/app/OplusIconNormalizer;->mMaxSize:I

    .line 77
    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Landroid/app/OplusIconNormalizer;->mBitmap:Landroid/graphics/Bitmap;

    .line 78
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Landroid/app/OplusIconNormalizer;->mCanvas:Landroid/graphics/Canvas;

    .line 79
    mul-int v1, v0, v0

    new-array v1, v1, [B

    iput-object v1, p0, Landroid/app/OplusIconNormalizer;->mPixels:[B

    .line 80
    new-array v1, v0, [F

    iput-object v1, p0, Landroid/app/OplusIconNormalizer;->mLeftBorder:[F

    .line 81
    new-array v0, v0, [F

    iput-object v0, p0, Landroid/app/OplusIconNormalizer;->mRightBorder:[F

    .line 82
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/app/OplusIconNormalizer;->mBounds:Landroid/graphics/Rect;

    .line 83
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/app/OplusIconNormalizer;->mAdaptiveIconBounds:Landroid/graphics/Rect;

    .line 84
    return-void
.end method

.method protected static blacklist convertToConvexArray([FIII)V
    .locals 12
    .param p0, "xCoordinates"    # [F
    .param p1, "direction"    # I
    .param p2, "topY"    # I
    .param p3, "bottomY"    # I

    .line 236
    array-length v0, p0

    .line 238
    .local v0, "total":I
    add-int/lit8 v1, v0, -0x1

    new-array v1, v1, [F

    .line 240
    .local v1, "angles":[F
    move v2, p2

    .line 241
    .local v2, "first":I
    const/4 v3, -0x1

    .line 243
    .local v3, "last":I
    const v4, 0x7f7fffff    # Float.MAX_VALUE

    .line 245
    .local v4, "lastAngle":F
    add-int/lit8 v5, p2, 0x1

    .local v5, "i":I
    :goto_0
    if-gt v5, p3, :cond_6

    .line 246
    aget v6, p0, v5

    const/high16 v7, -0x40800000    # -1.0f

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_0

    .line 247
    goto :goto_3

    .line 251
    :cond_0
    const v6, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v6, v4, v6

    if-nez v6, :cond_1

    .line 252
    move v6, v2

    .local v6, "start":I
    goto :goto_1

    .line 254
    .end local v6    # "start":I
    :cond_1
    aget v6, p0, v5

    aget v7, p0, v3

    sub-float/2addr v6, v7

    sub-int v7, v5, v3

    int-to-float v7, v7

    div-float/2addr v6, v7

    .line 255
    .local v6, "currentAngle":F
    move v7, v3

    .line 258
    .local v7, "start":I
    sub-float v8, v6, v4

    int-to-float v9, p1

    mul-float/2addr v8, v9

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-gez v8, :cond_3

    move v11, v7

    move v7, v6

    move v6, v11

    .line 259
    .local v6, "start":I
    .local v7, "currentAngle":F
    :cond_2
    if-le v6, v2, :cond_4

    .line 260
    add-int/lit8 v6, v6, -0x1

    .line 261
    aget v8, p0, v5

    aget v10, p0, v6

    sub-float/2addr v8, v10

    sub-int v10, v5, v6

    int-to-float v10, v10

    div-float v7, v8, v10

    .line 262
    aget v8, v1, v6

    sub-float v8, v7, v8

    int-to-float v10, p1

    mul-float/2addr v8, v10

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_2

    .line 263
    goto :goto_1

    .line 258
    .local v6, "currentAngle":F
    .local v7, "start":I
    :cond_3
    move v6, v7

    .line 270
    .end local v7    # "start":I
    .local v6, "start":I
    :cond_4
    :goto_1
    aget v7, p0, v5

    aget v8, p0, v6

    sub-float/2addr v7, v8

    sub-int v8, v5, v6

    int-to-float v8, v8

    div-float/2addr v7, v8

    .line 272
    .end local v4    # "lastAngle":F
    .local v7, "lastAngle":F
    move v4, v6

    .local v4, "j":I
    :goto_2
    if-ge v4, v5, :cond_5

    .line 273
    aput v7, v1, v4

    .line 274
    aget v8, p0, v6

    sub-int v9, v4, v6

    int-to-float v9, v9

    mul-float/2addr v9, v7

    add-float/2addr v8, v9

    aput v8, p0, v4

    .line 272
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 276
    .end local v4    # "j":I
    :cond_5
    move v3, v5

    move v4, v7

    .line 245
    .end local v6    # "start":I
    .end local v7    # "lastAngle":F
    .local v4, "lastAngle":F
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 278
    .end local v5    # "i":I
    :cond_6
    return-void
.end method

.method public static blacklist getNormalizedCircleSize(I)I
    .locals 5
    .param p0, "size"    # I

    .line 284
    mul-int v0, p0, p0

    int-to-float v0, v0

    const v1, 0x3f28e38e

    mul-float/2addr v0, v1

    .line 285
    .local v0, "area":F
    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v1, v0

    float-to-double v1, v1

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v1, v1

    return v1
.end method


# virtual methods
.method public declared-synchronized blacklist getScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;)F
    .locals 22
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
    .param p2, "outBounds"    # Landroid/graphics/RectF;

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    monitor-enter p0

    .line 101
    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 102
    monitor-exit p0

    return v3

    .line 104
    :cond_0
    :try_start_0
    instance-of v4, v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v4, :cond_2

    .line 105
    iget v4, v1, Landroid/app/OplusIconNormalizer;->mAdaptiveIconScale:F

    cmpl-float v4, v4, v3

    if-eqz v4, :cond_2

    .line 106
    if-eqz v2, :cond_1

    .line 107
    iget-object v3, v1, Landroid/app/OplusIconNormalizer;->mAdaptiveIconBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 109
    .end local p0    # "this":Landroid/app/OplusIconNormalizer;
    :cond_1
    iget v3, v1, Landroid/app/OplusIconNormalizer;->mAdaptiveIconScale:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v3

    .line 112
    :cond_2
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 113
    .local v4, "width":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 114
    .local v5, "height":I
    if-lez v4, :cond_5

    if-gtz v5, :cond_3

    goto :goto_0

    .line 117
    :cond_3
    iget v6, v1, Landroid/app/OplusIconNormalizer;->mMaxSize:I

    if-gt v4, v6, :cond_4

    if-le v5, v6, :cond_a

    .line 118
    :cond_4
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 119
    .local v6, "max":I
    iget v7, v1, Landroid/app/OplusIconNormalizer;->mMaxSize:I

    mul-int v8, v7, v4

    div-int/2addr v8, v6

    move v4, v8

    .line 120
    mul-int/2addr v7, v5

    div-int/2addr v7, v6

    move v5, v7

    goto :goto_5

    .line 115
    .end local v6    # "max":I
    :cond_5
    :goto_0
    if-lez v4, :cond_7

    iget v6, v1, Landroid/app/OplusIconNormalizer;->mMaxSize:I

    if-le v4, v6, :cond_6

    goto :goto_1

    :cond_6
    move v6, v4

    goto :goto_2

    :cond_7
    :goto_1
    iget v6, v1, Landroid/app/OplusIconNormalizer;->mMaxSize:I

    :goto_2
    move v4, v6

    .line 116
    if-lez v5, :cond_9

    iget v6, v1, Landroid/app/OplusIconNormalizer;->mMaxSize:I

    if-le v5, v6, :cond_8

    goto :goto_3

    :cond_8
    move v6, v5

    goto :goto_4

    :cond_9
    :goto_3
    iget v6, v1, Landroid/app/OplusIconNormalizer;->mMaxSize:I

    :goto_4
    move v5, v6

    .line 123
    :cond_a
    :goto_5
    iget-object v6, v1, Landroid/app/OplusIconNormalizer;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 124
    invoke-virtual {v0, v7, v7, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 125
    iget-object v6, v1, Landroid/app/OplusIconNormalizer;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 127
    iget-object v6, v1, Landroid/app/OplusIconNormalizer;->mPixels:[B

    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 128
    .local v6, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 129
    iget-object v7, v1, Landroid/app/OplusIconNormalizer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v6}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 132
    const/4 v7, -0x1

    .line 133
    .local v7, "topY":I
    const/4 v8, -0x1

    .line 134
    .local v8, "bottomY":I
    iget v9, v1, Landroid/app/OplusIconNormalizer;->mMaxSize:I

    add-int/lit8 v10, v9, 0x1

    .line 135
    .local v10, "leftX":I
    const/4 v11, -0x1

    .line 142
    .local v11, "rightX":I
    const/4 v12, 0x0

    .line 144
    .local v12, "index":I
    sub-int/2addr v9, v4

    .line 148
    .local v9, "rowSizeDiff":I
    const/4 v13, 0x0

    .local v13, "y":I
    :goto_6
    const/4 v14, -0x1

    if-ge v13, v5, :cond_10

    .line 149
    move v15, v14

    .local v15, "lastX":I
    move/from16 v16, v14

    .line 150
    .local v16, "firstX":I
    const/16 v17, 0x0

    move/from16 v3, v16

    move/from16 v14, v17

    .end local v16    # "firstX":I
    .local v3, "firstX":I
    .local v14, "x":I
    :goto_7
    if-ge v14, v4, :cond_d

    .line 151
    move-object/from16 v18, v6

    .end local v6    # "buffer":Ljava/nio/ByteBuffer;
    .local v18, "buffer":Ljava/nio/ByteBuffer;
    iget-object v6, v1, Landroid/app/OplusIconNormalizer;->mPixels:[B

    aget-byte v6, v6, v12

    and-int/lit16 v6, v6, 0xff

    const/16 v0, 0x28

    if-le v6, v0, :cond_c

    .line 152
    const/4 v0, -0x1

    if-ne v3, v0, :cond_b

    .line 153
    move v3, v14

    .line 155
    :cond_b
    move v0, v14

    move v15, v0

    .line 157
    :cond_c
    add-int/lit8 v12, v12, 0x1

    .line 150
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p1

    move-object/from16 v6, v18

    goto :goto_7

    .end local v18    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v6    # "buffer":Ljava/nio/ByteBuffer;
    :cond_d
    move-object/from16 v18, v6

    .line 159
    .end local v6    # "buffer":Ljava/nio/ByteBuffer;
    .end local v14    # "x":I
    .restart local v18    # "buffer":Ljava/nio/ByteBuffer;
    add-int/2addr v12, v9

    .line 161
    iget-object v0, v1, Landroid/app/OplusIconNormalizer;->mLeftBorder:[F

    int-to-float v6, v3

    aput v6, v0, v13

    .line 162
    iget-object v0, v1, Landroid/app/OplusIconNormalizer;->mRightBorder:[F

    int-to-float v6, v15

    aput v6, v0, v13

    .line 165
    const/4 v0, -0x1

    if-eq v3, v0, :cond_f

    .line 166
    move v6, v13

    .line 167
    .end local v8    # "bottomY":I
    .local v6, "bottomY":I
    if-ne v7, v0, :cond_e

    .line 168
    move v7, v13

    .line 171
    :cond_e
    invoke-static {v10, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 172
    .end local v10    # "leftX":I
    .local v0, "leftX":I
    invoke-static {v11, v15}, Ljava/lang/Math;->max(II)I

    move-result v8

    move v10, v0

    move v11, v8

    move v8, v6

    .line 148
    .end local v0    # "leftX":I
    .end local v6    # "bottomY":I
    .restart local v8    # "bottomY":I
    .restart local v10    # "leftX":I
    :cond_f
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p1

    move-object/from16 v6, v18

    const/4 v3, 0x0

    goto :goto_6

    .end local v3    # "firstX":I
    .end local v15    # "lastX":I
    .end local v18    # "buffer":Ljava/nio/ByteBuffer;
    .local v6, "buffer":Ljava/nio/ByteBuffer;
    :cond_10
    move-object/from16 v18, v6

    .line 176
    .end local v6    # "buffer":Ljava/nio/ByteBuffer;
    .end local v13    # "y":I
    .restart local v18    # "buffer":Ljava/nio/ByteBuffer;
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v3, -0x1

    if-eq v7, v3, :cond_18

    if-ne v11, v3, :cond_11

    move/from16 v20, v7

    move/from16 v21, v8

    move-object/from16 v7, p1

    goto/16 :goto_d

    .line 181
    :cond_11
    iget-object v3, v1, Landroid/app/OplusIconNormalizer;->mLeftBorder:[F

    const/4 v6, 0x1

    invoke-static {v3, v6, v7, v8}, Landroid/app/OplusIconNormalizer;->convertToConvexArray([FIII)V

    .line 182
    iget-object v3, v1, Landroid/app/OplusIconNormalizer;->mRightBorder:[F

    const/4 v6, -0x1

    invoke-static {v3, v6, v7, v8}, Landroid/app/OplusIconNormalizer;->convertToConvexArray([FIII)V

    .line 185
    const/4 v3, 0x0

    .line 186
    .local v3, "area":F
    const/4 v6, 0x0

    .local v6, "y":I
    :goto_8
    if-ge v6, v5, :cond_13

    .line 187
    iget-object v13, v1, Landroid/app/OplusIconNormalizer;->mLeftBorder:[F

    aget v13, v13, v6

    const/high16 v14, -0x40800000    # -1.0f

    cmpg-float v14, v13, v14

    if-gtz v14, :cond_12

    .line 188
    goto :goto_9

    .line 190
    :cond_12
    iget-object v14, v1, Landroid/app/OplusIconNormalizer;->mRightBorder:[F

    aget v14, v14, v6

    sub-float/2addr v14, v13

    add-float/2addr v14, v0

    add-float/2addr v3, v14

    .line 186
    :goto_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 194
    .end local v6    # "y":I
    :cond_13
    add-int/lit8 v6, v8, 0x1

    sub-int/2addr v6, v7

    add-int/lit8 v13, v11, 0x1

    sub-int/2addr v13, v10

    mul-int/2addr v6, v13

    int-to-float v6, v6

    .line 195
    .local v6, "rectArea":F
    div-float v13, v3, v6

    .line 198
    .local v13, "hullByRect":F
    const v14, 0x3f490fdb

    cmpg-float v14, v13, v14

    if-gez v14, :cond_14

    .line 199
    const v14, 0x3f28e38e

    .local v14, "scaleRequired":F
    goto :goto_a

    .line 201
    .end local v14    # "scaleRequired":F
    :cond_14
    const v14, 0x3f26aaab

    const v15, 0x3d25ae4f

    sub-float v17, v0, v13

    mul-float v17, v17, v15

    add-float v17, v17, v14

    move/from16 v14, v17

    .line 203
    .restart local v14    # "scaleRequired":F
    :goto_a
    iget-object v15, v1, Landroid/app/OplusIconNormalizer;->mBounds:Landroid/graphics/Rect;

    iput v10, v15, Landroid/graphics/Rect;->left:I

    .line 204
    iget-object v15, v1, Landroid/app/OplusIconNormalizer;->mBounds:Landroid/graphics/Rect;

    iput v11, v15, Landroid/graphics/Rect;->right:I

    .line 206
    iget-object v15, v1, Landroid/app/OplusIconNormalizer;->mBounds:Landroid/graphics/Rect;

    iput v7, v15, Landroid/graphics/Rect;->top:I

    .line 207
    iget-object v15, v1, Landroid/app/OplusIconNormalizer;->mBounds:Landroid/graphics/Rect;

    iput v8, v15, Landroid/graphics/Rect;->bottom:I

    .line 209
    if-eqz v2, :cond_15

    .line 210
    iget-object v15, v1, Landroid/app/OplusIconNormalizer;->mBounds:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->left:I

    int-to-float v15, v15

    int-to-float v0, v4

    div-float/2addr v15, v0

    iget-object v0, v1, Landroid/app/OplusIconNormalizer;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    move/from16 v19, v6

    .end local v6    # "rectArea":F
    .local v19, "rectArea":F
    int-to-float v6, v5

    div-float/2addr v0, v6

    iget-object v6, v1, Landroid/app/OplusIconNormalizer;->mBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    move/from16 v20, v7

    .end local v7    # "topY":I
    .local v20, "topY":I
    int-to-float v7, v4

    div-float/2addr v6, v7

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v6, v7, v6

    iget-object v7, v1, Landroid/app/OplusIconNormalizer;->mBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    move/from16 v21, v8

    .end local v8    # "bottomY":I
    .local v21, "bottomY":I
    int-to-float v8, v5

    div-float/2addr v7, v8

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v7, v8, v7

    invoke-virtual {v2, v15, v0, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_b

    .line 209
    .end local v19    # "rectArea":F
    .end local v20    # "topY":I
    .end local v21    # "bottomY":I
    .restart local v6    # "rectArea":F
    .restart local v7    # "topY":I
    .restart local v8    # "bottomY":I
    :cond_15
    move/from16 v19, v6

    move/from16 v20, v7

    move/from16 v21, v8

    .line 215
    .end local v6    # "rectArea":F
    .end local v7    # "topY":I
    .end local v8    # "bottomY":I
    .restart local v19    # "rectArea":F
    .restart local v20    # "topY":I
    .restart local v21    # "bottomY":I
    :goto_b
    mul-int v0, v4, v5

    int-to-float v0, v0

    div-float v0, v3, v0

    .line 217
    .local v0, "areaScale":F
    cmpl-float v6, v0, v14

    if-lez v6, :cond_16

    div-float v6, v14, v0

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    move/from16 v17, v6

    goto :goto_c

    :cond_16
    const/high16 v17, 0x3f800000    # 1.0f

    :goto_c
    move/from16 v6, v17

    .line 218
    .local v6, "scale":F
    move-object/from16 v7, p1

    instance-of v8, v7, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v8, :cond_17

    iget v8, v1, Landroid/app/OplusIconNormalizer;->mAdaptiveIconScale:F

    const/4 v15, 0x0

    cmpl-float v8, v8, v15

    if-nez v8, :cond_17

    .line 220
    iput v6, v1, Landroid/app/OplusIconNormalizer;->mAdaptiveIconScale:F

    .line 221
    iget-object v8, v1, Landroid/app/OplusIconNormalizer;->mAdaptiveIconBounds:Landroid/graphics/Rect;

    iget-object v15, v1, Landroid/app/OplusIconNormalizer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v8, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 223
    :cond_17
    monitor-exit p0

    return v6

    .line 176
    .end local v0    # "areaScale":F
    .end local v3    # "area":F
    .end local v6    # "scale":F
    .end local v13    # "hullByRect":F
    .end local v14    # "scaleRequired":F
    .end local v19    # "rectArea":F
    .end local v20    # "topY":I
    .end local v21    # "bottomY":I
    .restart local v7    # "topY":I
    .restart local v8    # "bottomY":I
    :cond_18
    move/from16 v20, v7

    move/from16 v21, v8

    move-object/from16 v7, p1

    .line 178
    .end local v7    # "topY":I
    .end local v8    # "bottomY":I
    .restart local v20    # "topY":I
    .restart local v21    # "bottomY":I
    :goto_d
    monitor-exit p0

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 100
    .end local v4    # "width":I
    .end local v5    # "height":I
    .end local v9    # "rowSizeDiff":I
    .end local v10    # "leftX":I
    .end local v11    # "rightX":I
    .end local v12    # "index":I
    .end local v18    # "buffer":Ljava/nio/ByteBuffer;
    .end local v20    # "topY":I
    .end local v21    # "bottomY":I
    .end local p1    # "d":Landroid/graphics/drawable/Drawable;
    .end local p2    # "outBounds":Landroid/graphics/RectF;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
