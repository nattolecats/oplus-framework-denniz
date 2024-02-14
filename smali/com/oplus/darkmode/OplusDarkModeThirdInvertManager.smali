.class public Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;
.super Ljava/lang/Object;
.source "OplusDarkModeThirdInvertManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager$Holder;
    }
.end annotation


# static fields
.field private static final blacklist COLORFUL_BITMAP:I = 0x8

.field private static final blacklist FOREGROUND_ICON_SIZE:I = 0x28

.field private static final blacklist FULL_DARK_BITMAP:I = 0x2

.field private static final blacklist FULL_LIGHT_BITMAP:I = 0x1

.field private static final blacklist HAS_WHITE_BITMAP:I = 0x7

.field private static final blacklist INVERT_FILTER:Landroid/graphics/ColorFilter;

.field private static final blacklist MORE_BLACK_BITMAP:I = 0x5

.field private static final blacklist MORE_WHITE_BITMAP:I = 0x4

.field private static final blacklist SMALLEST_BACKGROUND_SIZE:I = 0xf

.field private static final blacklist WHITE_BLACK_BALANCE_BITMAP:I = 0x6

.field private static final blacklist isDebug:Z = false


# instance fields
.field private final blacklist mApplication:Landroid/app/Application;

.field private blacklist mBackgroundMaxL:F

.field private blacklist mBounds:Landroid/graphics/RectF;

.field private blacklist mCacheThirdPartyFilter:[Landroid/graphics/OplusDarkModeThirdPartyFilter;

.field private blacklist mDrawnBounds:Landroid/graphics/RectF;

.field private blacklist mForegroundMinL:F

.field private blacklist mIsAppSupportDarkMode:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 761
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    const/16 v1, 0x14

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    sput-object v0, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->INVERT_FILTER:Landroid/graphics/ColorFilter;

    return-void

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private constructor blacklist <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->mIsAppSupportDarkMode:Z

    .line 35
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->mBackgroundMaxL:F

    .line 36
    iput v0, p0, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->mForegroundMinL:F

    .line 37
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/graphics/OplusDarkModeThirdPartyFilter;

    iput-object v0, p0, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->mCacheThirdPartyFilter:[Landroid/graphics/OplusDarkModeThirdPartyFilter;

    .line 668
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->mDrawnBounds:Landroid/graphics/RectF;

    .line 669
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->mBounds:Landroid/graphics/RectF;

    .line 48
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->mApplication:Landroid/app/Application;

    .line 49
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;-><init>()V

    return-void
.end method

.method public static whitelist attachApplication(Landroid/app/Application;)V
    .locals 0
    .param p0, "application"    # Landroid/app/Application;

    .line 68
    return-void
.end method

.method private blacklist calculateBitmapColor(Landroid/graphics/Bitmap;ZLandroid/graphics/RectF;I)V
    .locals 51
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "isNinePatch"    # Z
    .param p3, "rectF"    # Landroid/graphics/RectF;
    .param p4, "transformType"    # I

    .line 112
    move-object/from16 v0, p1

    if-nez v0, :cond_0

    .line 113
    return-void

    .line 116
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/oplus/darkmode/OplusDarkModeUtils;->hasCalculatedColor(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    return-void

    .line 120
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x1

    if-eq v1, v2, :cond_32

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-eqz v1, :cond_32

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-nez v1, :cond_2

    move v1, v3

    goto/16 :goto_13

    .line 125
    :cond_2
    const/4 v1, 0x0

    .line 126
    .local v1, "whitePixelNum":I
    const/4 v2, 0x0

    .line 127
    .local v2, "blackPixelNum":I
    const/4 v4, 0x0

    .line 128
    .local v4, "colorfulPixelNum":I
    const/4 v5, 0x0

    .line 129
    .local v5, "alphaPixelNum":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0xa

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 130
    .local v6, "heightSpacing":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0xa

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 131
    .local v7, "widthSpacing":I
    const/4 v8, 0x0

    .line 132
    .local v8, "allPixelNum":I
    const/4 v9, 0x3

    new-array v9, v9, [F

    .line 133
    .local v9, "hsl":[F
    const/4 v10, 0x0

    .line 134
    .local v10, "startColumn":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 135
    .local v11, "endColumn":I
    const/4 v12, 0x0

    .line 136
    .local v12, "startRow":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    .line 137
    .local v13, "endRow":I
    const/4 v14, 0x0

    .line 138
    .local v14, "totalLightness":F
    const/4 v15, 0x0

    .line 139
    .local v15, "maxH":F
    const/16 v16, 0x0

    .line 140
    .local v16, "minH":F
    const/16 v17, 0x0

    .line 141
    .local v17, "maxS":F
    const/16 v18, 0x0

    .line 142
    .local v18, "minS":F
    const/16 v19, 0x0

    .line 143
    .local v19, "maxL":F
    const/16 v20, 0x0

    .line 145
    .local v20, "minL":F
    if-eqz p2, :cond_3

    .line 146
    const/4 v10, 0x1

    .line 147
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    add-int/lit8 v11, v21, -0x1

    .line 148
    const/4 v12, 0x1

    .line 149
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    add-int/lit8 v13, v21, -0x1

    .line 151
    :cond_3
    move/from16 v21, v10

    move/from16 v3, v21

    .local v3, "i":I
    :goto_0
    const-wide v22, 0x4053200000000000L    # 76.5

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v26, v1

    .end local v1    # "whitePixelNum":I
    .local v26, "whitePixelNum":I
    if-ge v3, v11, :cond_11

    .line 152
    move/from16 v27, v12

    move/from16 v1, v27

    .local v1, "j":I
    :goto_1
    if-ge v1, v13, :cond_10

    .line 153
    add-int/lit8 v8, v8, 0x1

    .line 154
    move/from16 v28, v8

    .end local v8    # "allPixelNum":I
    .local v28, "allPixelNum":I
    invoke-virtual {v0, v3, v1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v8

    .line 155
    .local v8, "pixel":I
    move/from16 v29, v10

    .end local v10    # "startColumn":I
    .local v29, "startColumn":I
    invoke-static {v8}, Landroid/graphics/Color;->alpha(I)I

    move-result v10

    .line 156
    .local v10, "alpha":I
    move/from16 v30, v11

    move/from16 v31, v12

    .end local v11    # "endColumn":I
    .end local v12    # "startRow":I
    .local v30, "endColumn":I
    .local v31, "startRow":I
    int-to-double v11, v10

    cmpg-double v11, v11, v22

    if-gez v11, :cond_4

    .line 157
    add-int/lit8 v5, v5, 0x1

    .line 158
    goto/16 :goto_6

    .line 160
    :cond_4
    invoke-static {v8, v9}, Lcom/android/internal/graphics/ColorUtils;->colorToHSL(I[F)V

    .line 161
    invoke-static {v9}, Lcom/oplus/darkmode/OplusDarkModeUtils;->isMaybeWhiteColor([F)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 162
    add-int/lit8 v26, v26, 0x1

    goto :goto_2

    .line 163
    :cond_5
    invoke-static {v9}, Lcom/oplus/darkmode/OplusDarkModeUtils;->isMaybeBlackColor([F)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 164
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 166
    :cond_6
    add-int/lit8 v4, v4, 0x1

    .line 168
    :goto_2
    aget v11, v9, v25

    cmpl-float v11, v11, v15

    if-lez v11, :cond_8

    .line 169
    aget v11, v9, v25

    .line 170
    .end local v15    # "maxH":F
    .local v11, "maxH":F
    cmpl-float v12, v16, v24

    if-nez v12, :cond_7

    .line 171
    move v12, v11

    move v15, v11

    move/from16 v16, v12

    .end local v16    # "minH":F
    .local v12, "minH":F
    goto :goto_3

    .line 170
    .end local v12    # "minH":F
    .restart local v16    # "minH":F
    :cond_7
    move v15, v11

    goto :goto_3

    .line 173
    .end local v11    # "maxH":F
    .restart local v15    # "maxH":F
    :cond_8
    aget v11, v9, v25

    cmpg-float v11, v11, v16

    if-gez v11, :cond_9

    .line 174
    aget v11, v9, v25

    move/from16 v16, v11

    .line 176
    :cond_9
    :goto_3
    const/4 v11, 0x1

    aget v12, v9, v11

    cmpl-float v12, v12, v17

    if-lez v12, :cond_b

    .line 177
    aget v12, v9, v11

    .line 178
    .end local v17    # "maxS":F
    .local v12, "maxS":F
    cmpl-float v17, v18, v24

    if-nez v17, :cond_a

    .line 179
    move/from16 v17, v12

    move/from16 v18, v17

    .end local v18    # "minS":F
    .local v17, "minS":F
    goto :goto_4

    .line 178
    .end local v17    # "minS":F
    .restart local v18    # "minS":F
    :cond_a
    move/from16 v17, v12

    goto :goto_4

    .line 181
    .end local v12    # "maxS":F
    .local v17, "maxS":F
    :cond_b
    aget v12, v9, v11

    cmpg-float v12, v12, v18

    if-gez v12, :cond_c

    .line 182
    aget v12, v9, v11

    move/from16 v18, v12

    .line 184
    :cond_c
    :goto_4
    const/4 v11, 0x2

    aget v12, v9, v11

    cmpl-float v12, v12, v19

    if-lez v12, :cond_e

    .line 185
    aget v12, v9, v11

    .line 186
    .end local v19    # "maxL":F
    .local v12, "maxL":F
    cmpl-float v19, v20, v24

    if-nez v19, :cond_d

    .line 187
    move/from16 v19, v12

    move/from16 v20, v19

    .end local v20    # "minL":F
    .local v19, "minL":F
    goto :goto_5

    .line 186
    .end local v19    # "minL":F
    .restart local v20    # "minL":F
    :cond_d
    move/from16 v19, v12

    goto :goto_5

    .line 189
    .end local v12    # "maxL":F
    .local v19, "maxL":F
    :cond_e
    aget v12, v9, v11

    cmpg-float v12, v12, v20

    if-gez v12, :cond_f

    .line 190
    aget v12, v9, v11

    move/from16 v20, v12

    .line 192
    :cond_f
    :goto_5
    aget v12, v9, v11

    add-float/2addr v14, v12

    .line 152
    .end local v8    # "pixel":I
    .end local v10    # "alpha":I
    :goto_6
    add-int/2addr v1, v6

    move/from16 v8, v28

    move/from16 v10, v29

    move/from16 v11, v30

    move/from16 v12, v31

    goto/16 :goto_1

    .end local v28    # "allPixelNum":I
    .end local v29    # "startColumn":I
    .end local v30    # "endColumn":I
    .end local v31    # "startRow":I
    .local v8, "allPixelNum":I
    .local v10, "startColumn":I
    .local v11, "endColumn":I
    .local v12, "startRow":I
    :cond_10
    move/from16 v29, v10

    move/from16 v30, v11

    move/from16 v31, v12

    .line 151
    .end local v1    # "j":I
    .end local v10    # "startColumn":I
    .end local v11    # "endColumn":I
    .end local v12    # "startRow":I
    .restart local v29    # "startColumn":I
    .restart local v30    # "endColumn":I
    .restart local v31    # "startRow":I
    add-int/2addr v3, v7

    move/from16 v1, v26

    goto/16 :goto_0

    .end local v29    # "startColumn":I
    .end local v30    # "endColumn":I
    .end local v31    # "startRow":I
    .restart local v10    # "startColumn":I
    .restart local v11    # "endColumn":I
    .restart local v12    # "startRow":I
    :cond_11
    move/from16 v29, v10

    move/from16 v30, v11

    move/from16 v31, v12

    .line 196
    .end local v3    # "i":I
    .end local v10    # "startColumn":I
    .end local v11    # "endColumn":I
    .end local v12    # "startRow":I
    .restart local v29    # "startColumn":I
    .restart local v30    # "endColumn":I
    .restart local v31    # "startRow":I
    if-nez p2, :cond_12

    if-nez v8, :cond_12

    .line 197
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oplus/darkmode/OplusDarkModeUtils;->setHasCalculatedColor(Landroid/graphics/Bitmap;Z)V

    .line 198
    return-void

    .line 201
    :cond_12
    const/4 v1, 0x0

    .line 202
    .end local v31    # "startRow":I
    .local v1, "startRow":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 204
    .end local v13    # "endRow":I
    .local v3, "endRow":I
    if-eqz p2, :cond_13

    if-eqz v8, :cond_13

    .line 205
    const/4 v1, 0x1

    .line 206
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    const/4 v11, 0x1

    add-int/lit8 v3, v10, -0x1

    .line 208
    :cond_13
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    const/4 v11, 0x2

    div-int/2addr v10, v11

    .line 209
    .local v10, "row":I
    move v11, v1

    move v12, v11

    move v11, v8

    move v8, v5

    move v5, v4

    move v4, v2

    move/from16 v2, v26

    .end local v26    # "whitePixelNum":I
    .local v2, "whitePixelNum":I
    .local v4, "blackPixelNum":I
    .local v5, "colorfulPixelNum":I
    .local v8, "alphaPixelNum":I
    .local v11, "allPixelNum":I
    .local v12, "i":I
    :goto_7
    if-ge v12, v3, :cond_1d

    .line 210
    add-int/lit8 v11, v11, 0x1

    .line 211
    invoke-virtual {v0, v12, v10}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v13

    .line 212
    .local v13, "pixel":I
    move/from16 v26, v1

    .end local v1    # "startRow":I
    .local v26, "startRow":I
    invoke-static {v13}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 213
    .local v1, "alpha":I
    move/from16 v28, v10

    move/from16 v31, v11

    .end local v10    # "row":I
    .end local v11    # "allPixelNum":I
    .local v28, "row":I
    .local v31, "allPixelNum":I
    int-to-double v10, v1

    cmpg-double v10, v10, v22

    if-gez v10, :cond_14

    .line 214
    add-int/lit8 v8, v8, 0x1

    .line 215
    goto :goto_c

    .line 217
    :cond_14
    invoke-static {v13, v9}, Lcom/android/internal/graphics/ColorUtils;->colorToHSL(I[F)V

    .line 218
    invoke-static {v9}, Lcom/oplus/darkmode/OplusDarkModeUtils;->isMaybeWhiteColor([F)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 219
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 220
    :cond_15
    invoke-static {v9}, Lcom/oplus/darkmode/OplusDarkModeUtils;->isMaybeBlackColor([F)Z

    move-result v10

    if-eqz v10, :cond_16

    .line 221
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 223
    :cond_16
    add-int/lit8 v5, v5, 0x1

    .line 225
    :goto_8
    aget v10, v9, v25

    cmpl-float v10, v10, v15

    if-lez v10, :cond_17

    .line 226
    aget v15, v9, v25

    .line 227
    cmpl-float v10, v16, v24

    if-nez v10, :cond_18

    .line 228
    move/from16 v16, v15

    goto :goto_9

    .line 230
    :cond_17
    aget v10, v9, v25

    cmpg-float v10, v10, v16

    if-gez v10, :cond_18

    .line 231
    aget v16, v9, v25

    .line 233
    :cond_18
    :goto_9
    const/4 v10, 0x1

    aget v11, v9, v10

    cmpl-float v11, v11, v17

    if-lez v11, :cond_19

    .line 234
    aget v17, v9, v10

    .line 235
    cmpl-float v11, v18, v24

    if-nez v11, :cond_1a

    .line 236
    move/from16 v18, v17

    goto :goto_a

    .line 238
    :cond_19
    aget v11, v9, v10

    cmpg-float v11, v11, v18

    if-gez v11, :cond_1a

    .line 239
    aget v18, v9, v10

    .line 241
    :cond_1a
    :goto_a
    const/4 v10, 0x2

    aget v11, v9, v10

    cmpl-float v11, v11, v19

    if-lez v11, :cond_1b

    .line 242
    aget v19, v9, v10

    .line 243
    cmpl-float v11, v20, v24

    if-nez v11, :cond_1c

    .line 244
    move/from16 v20, v19

    goto :goto_b

    .line 246
    :cond_1b
    aget v11, v9, v10

    cmpg-float v11, v11, v20

    if-gez v11, :cond_1c

    .line 247
    aget v20, v9, v10

    .line 249
    :cond_1c
    :goto_b
    aget v11, v9, v10

    add-float/2addr v14, v11

    .line 209
    .end local v1    # "alpha":I
    .end local v13    # "pixel":I
    :goto_c
    add-int/2addr v12, v7

    move/from16 v1, v26

    move/from16 v10, v28

    move/from16 v11, v31

    goto/16 :goto_7

    .end local v26    # "startRow":I
    .end local v28    # "row":I
    .end local v31    # "allPixelNum":I
    .local v1, "startRow":I
    .restart local v10    # "row":I
    .restart local v11    # "allPixelNum":I
    :cond_1d
    move/from16 v26, v1

    move/from16 v28, v10

    .line 252
    .end local v1    # "startRow":I
    .end local v10    # "row":I
    .end local v12    # "i":I
    .restart local v26    # "startRow":I
    .restart local v28    # "row":I
    if-ne v8, v11, :cond_1e

    .line 253
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oplus/darkmode/OplusDarkModeUtils;->setHasCalculatedColor(Landroid/graphics/Bitmap;Z)V

    .line 254
    return-void

    .line 257
    :cond_1e
    sub-int v1, v11, v8

    int-to-double v12, v1

    .line 258
    .local v12, "notAlphaPixelNum":D
    move v1, v6

    move v10, v7

    .end local v6    # "heightSpacing":I
    .end local v7    # "widthSpacing":I
    .local v1, "heightSpacing":I
    .local v10, "widthSpacing":I
    int-to-double v6, v5

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    mul-double v6, v6, v22

    div-double/2addr v6, v12

    .line 259
    .local v6, "colorfulPixelPercent":D
    move/from16 v31, v8

    move-object/from16 v24, v9

    .end local v8    # "alphaPixelNum":I
    .end local v9    # "hsl":[F
    .local v24, "hsl":[F
    .local v31, "alphaPixelNum":I
    int-to-double v8, v2

    mul-double v8, v8, v22

    div-double/2addr v8, v12

    .line 260
    .local v8, "whitePixelPercent":D
    move/from16 v33, v1

    move/from16 v32, v2

    .end local v1    # "heightSpacing":I
    .end local v2    # "whitePixelNum":I
    .local v32, "whitePixelNum":I
    .local v33, "heightSpacing":I
    int-to-double v1, v4

    mul-double v1, v1, v22

    div-double/2addr v1, v12

    .line 261
    .local v1, "blackPixelPercent":D
    move/from16 v35, v10

    move/from16 v34, v11

    .end local v10    # "widthSpacing":I
    .end local v11    # "allPixelNum":I
    .local v34, "allPixelNum":I
    .local v35, "widthSpacing":I
    float-to-double v10, v14

    mul-double v10, v10, v22

    div-double/2addr v10, v12

    .line 262
    .local v10, "averageLightness":D
    sub-float v36, v15, v16

    .line 263
    .local v36, "hDelta":F
    move/from16 v37, v3

    .end local v3    # "endRow":I
    .local v37, "endRow":I
    sub-float v3, v17, v18

    .line 264
    .local v3, "sDelta":F
    move/from16 v38, v5

    .end local v5    # "colorfulPixelNum":I
    .local v38, "colorfulPixelNum":I
    sub-float v5, v19, v20

    .line 265
    .local v5, "lDelta":F
    const/high16 v39, 0x41f00000    # 30.0f

    cmpg-float v39, v36, v39

    if-gtz v39, :cond_1f

    move-wide/from16 v39, v12

    .end local v12    # "notAlphaPixelNum":D
    .local v39, "notAlphaPixelNum":D
    float-to-double v12, v3

    const-wide v41, 0x3fb999999999999aL    # 0.1

    cmpg-double v12, v12, v41

    if-gtz v12, :cond_20

    const/4 v12, 0x1

    goto :goto_d

    .end local v39    # "notAlphaPixelNum":D
    .restart local v12    # "notAlphaPixelNum":D
    :cond_1f
    move-wide/from16 v39, v12

    .end local v12    # "notAlphaPixelNum":D
    .restart local v39    # "notAlphaPixelNum":D
    :cond_20
    move/from16 v12, v25

    .line 266
    .local v12, "isPure":Z
    :goto_d
    move/from16 v41, v14

    .end local v14    # "totalLightness":F
    .local v41, "totalLightness":F
    float-to-double v13, v5

    const-wide v42, 0x3fe999999999999aL    # 0.8

    cmpl-double v13, v13, v42

    const-wide v42, 0x3fc3333333333333L    # 0.15

    if-ltz v13, :cond_21

    float-to-double v13, v3

    cmpg-double v13, v13, v42

    if-gtz v13, :cond_21

    const/4 v13, 0x1

    goto :goto_e

    :cond_21
    move/from16 v13, v25

    .line 268
    .local v13, "isBlackAndWhite":Z
    :goto_e
    move-object/from16 v14, p0

    move/from16 v44, v3

    .end local v3    # "sDelta":F
    .local v44, "sDelta":F
    iget-object v3, v14, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->mApplication:Landroid/app/Application;

    invoke-static {v3}, Lcom/oplus/darkmode/OplusDarkModeUtils;->isWeiBo(Landroid/app/Application;)Z

    move-result v3

    const-wide v45, 0x3fc999999999999aL    # 0.2

    if-eqz v3, :cond_23

    .line 269
    const-wide v47, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v3, v6, v47

    if-gtz v3, :cond_22

    const-wide v47, 0x3fefd70a3d70a3d7L    # 0.995

    cmpl-double v3, v10, v47

    if-ltz v3, :cond_22

    const/4 v3, 0x1

    goto :goto_f

    :cond_22
    move/from16 v3, v25

    .local v3, "maybeWhitePure":Z
    :goto_f
    goto :goto_10

    .line 271
    .end local v3    # "maybeWhitePure":Z
    :cond_23
    cmpg-double v3, v6, v45

    if-gtz v3, :cond_24

    const-wide v47, 0x3feb333333333333L    # 0.85

    cmpl-double v3, v10, v47

    if-ltz v3, :cond_24

    const/4 v3, 0x1

    goto :goto_10

    :cond_24
    move/from16 v3, v25

    .line 273
    .restart local v3    # "maybeWhitePure":Z
    :goto_10
    cmpg-double v45, v6, v45

    if-gtz v45, :cond_25

    cmpg-double v42, v10, v42

    if-gtz v42, :cond_25

    const/16 v25, 0x1

    .line 274
    .local v25, "maybeBlackPure":Z
    :cond_25
    if-eqz p2, :cond_26

    .line 275
    move/from16 v42, v5

    .end local v5    # "lDelta":F
    .local v42, "lDelta":F
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "colorfulPixelPercent:"

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v14, ",whitePixelPercent:"

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v14, ",blackPixelPercent:"

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v14, ",averageLightness:"

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v14, "tag1"

    invoke-static {v14, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 274
    .end local v42    # "lDelta":F
    .restart local v5    # "lDelta":F
    :cond_26
    move/from16 v42, v5

    .line 278
    .end local v5    # "lDelta":F
    .restart local v42    # "lDelta":F
    :goto_11
    const-wide v45, 0x3fd3333333333333L    # 0.3

    if-nez v12, :cond_27

    if-eqz v25, :cond_28

    :cond_27
    cmpg-double v5, v10, v45

    if-gtz v5, :cond_28

    .line 279
    const/4 v5, 0x2

    invoke-static {v0, v5}, Lcom/oplus/darkmode/OplusDarkModeUtils;->setColorState(Landroid/graphics/Bitmap;I)V

    move-wide/from16 v22, v1

    goto/16 :goto_12

    .line 280
    :cond_28
    const-wide v47, 0x3fe6666666666666L    # 0.7

    if-eqz v12, :cond_29

    if-eqz v3, :cond_29

    cmpl-double v5, v10, v47

    if-ltz v5, :cond_29

    if-nez v13, :cond_29

    .line 281
    const/4 v5, 0x1

    invoke-static {v0, v5}, Lcom/oplus/darkmode/OplusDarkModeUtils;->setColorState(Landroid/graphics/Bitmap;I)V

    move-wide/from16 v22, v1

    goto/16 :goto_12

    .line 282
    :cond_29
    cmpl-double v5, v6, v45

    if-ltz v5, :cond_2a

    .line 283
    const/16 v5, 0x8

    invoke-static {v0, v5}, Lcom/oplus/darkmode/OplusDarkModeUtils;->setColorState(Landroid/graphics/Bitmap;I)V

    move-wide/from16 v22, v1

    goto :goto_12

    .line 284
    :cond_2a
    cmpl-double v5, v8, v22

    if-nez v5, :cond_2b

    .line 285
    const/4 v5, 0x1

    invoke-static {v0, v5}, Lcom/oplus/darkmode/OplusDarkModeUtils;->setColorState(Landroid/graphics/Bitmap;I)V

    move-wide/from16 v22, v1

    goto :goto_12

    .line 286
    :cond_2b
    const/4 v5, 0x1

    if-eqz p2, :cond_2c

    const-wide/high16 v49, 0x3fd0000000000000L    # 0.25

    cmpl-double v14, v8, v49

    if-ltz v14, :cond_2c

    .line 287
    invoke-static {v0, v5}, Lcom/oplus/darkmode/OplusDarkModeUtils;->setColorState(Landroid/graphics/Bitmap;I)V

    move-wide/from16 v22, v1

    goto :goto_12

    .line 288
    :cond_2c
    cmpl-double v5, v8, v47

    if-lez v5, :cond_2d

    .line 289
    const/4 v5, 0x4

    invoke-static {v0, v5}, Lcom/oplus/darkmode/OplusDarkModeUtils;->setColorState(Landroid/graphics/Bitmap;I)V

    move-wide/from16 v22, v1

    goto :goto_12

    .line 290
    :cond_2d
    cmpl-double v5, v1, v22

    if-nez v5, :cond_2e

    .line 291
    const/4 v5, 0x2

    invoke-static {v0, v5}, Lcom/oplus/darkmode/OplusDarkModeUtils;->setColorState(Landroid/graphics/Bitmap;I)V

    move-wide/from16 v22, v1

    goto :goto_12

    .line 292
    :cond_2e
    cmpl-double v5, v1, v47

    if-lez v5, :cond_2f

    .line 293
    const/4 v5, 0x5

    invoke-static {v0, v5}, Lcom/oplus/darkmode/OplusDarkModeUtils;->setColorState(Landroid/graphics/Bitmap;I)V

    move-wide/from16 v22, v1

    goto :goto_12

    .line 294
    :cond_2f
    move-wide/from16 v22, v1

    .end local v1    # "blackPixelPercent":D
    .local v22, "blackPixelPercent":D
    int-to-double v1, v4

    sub-double v1, v8, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    cmpg-double v1, v1, v45

    if-gez v1, :cond_30

    .line 295
    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/oplus/darkmode/OplusDarkModeUtils;->setColorState(Landroid/graphics/Bitmap;I)V

    goto :goto_12

    .line 296
    :cond_30
    const-wide/16 v1, 0x0

    cmpl-double v1, v8, v1

    if-lez v1, :cond_31

    .line 297
    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/oplus/darkmode/OplusDarkModeUtils;->setColorState(Landroid/graphics/Bitmap;I)V

    .line 299
    :cond_31
    :goto_12
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oplus/darkmode/OplusDarkModeUtils;->setHasCalculatedColor(Landroid/graphics/Bitmap;Z)V

    .line 300
    return-void

    .line 120
    .end local v3    # "maybeWhitePure":Z
    .end local v4    # "blackPixelNum":I
    .end local v6    # "colorfulPixelPercent":D
    .end local v8    # "whitePixelPercent":D
    .end local v10    # "averageLightness":D
    .end local v12    # "isPure":Z
    .end local v13    # "isBlackAndWhite":Z
    .end local v15    # "maxH":F
    .end local v16    # "minH":F
    .end local v17    # "maxS":F
    .end local v18    # "minS":F
    .end local v19    # "maxL":F
    .end local v20    # "minL":F
    .end local v22    # "blackPixelPercent":D
    .end local v24    # "hsl":[F
    .end local v25    # "maybeBlackPure":Z
    .end local v26    # "startRow":I
    .end local v28    # "row":I
    .end local v29    # "startColumn":I
    .end local v30    # "endColumn":I
    .end local v31    # "alphaPixelNum":I
    .end local v32    # "whitePixelNum":I
    .end local v33    # "heightSpacing":I
    .end local v34    # "allPixelNum":I
    .end local v35    # "widthSpacing":I
    .end local v36    # "hDelta":F
    .end local v37    # "endRow":I
    .end local v38    # "colorfulPixelNum":I
    .end local v39    # "notAlphaPixelNum":D
    .end local v41    # "totalLightness":F
    .end local v42    # "lDelta":F
    .end local v44    # "sDelta":F
    :cond_32
    move v1, v3

    .line 121
    :goto_13
    invoke-static {v0, v1}, Lcom/oplus/darkmode/OplusDarkModeUtils;->setHasCalculatedColor(Landroid/graphics/Bitmap;Z)V

    .line 122
    return-void
.end method

.method private blacklist changeAreaTransformType(Landroid/graphics/RectF;Landroid/graphics/IBaseCanvasExt;I)I
    .locals 3
    .param p1, "rectF"    # Landroid/graphics/RectF;
    .param p2, "canvas"    # Landroid/graphics/IBaseCanvasExt;
    .param p3, "transformType"    # I

    .line 474
    move v0, p3

    .line 475
    .local v0, "result":I
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/graphics/IBaseCanvasExt;->getOplusViewType()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 476
    .local v1, "viewType":I
    :goto_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 477
    const/4 v0, 0x1

    .line 479
    :cond_1
    return v0
.end method

.method private blacklist changePaintWhenDrawBitmap(Landroid/graphics/Paint;Landroid/graphics/Bitmap;Landroid/graphics/RectF;ZLandroid/graphics/IBaseCanvasExt;)Landroid/graphics/Paint;
    .locals 23
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "rectF"    # Landroid/graphics/RectF;
    .param p4, "isNinePatch"    # Z
    .param p5, "canvas"    # Landroid/graphics/IBaseCanvasExt;

    .line 303
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p4

    move-object/from16 v3, p5

    if-eqz v1, :cond_1a

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_e

    .line 307
    :cond_0
    const/4 v4, 0x1

    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v6

    if-eqz v3, :cond_1

    invoke-interface/range {p5 .. p5}, Landroid/graphics/IBaseCanvasExt;->getTransformType()I

    move-result v7

    goto :goto_0

    :cond_1
    const/4 v7, 0x2

    :goto_0
    invoke-direct {v0, v6, v7, v3}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->makeColorFilterColor(Landroid/graphics/ColorFilter;ILandroid/graphics/IBaseCanvasExt;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 308
    invoke-static {v1, v4}, Lcom/oplus/darkmode/OplusDarkModeUtils;->setHasCalculatedColor(Landroid/graphics/Bitmap;Z)V

    .line 309
    return-object p1

    .line 312
    :cond_2
    if-eqz v3, :cond_3

    invoke-interface/range {p5 .. p5}, Landroid/graphics/IBaseCanvasExt;->getTransformType()I

    move-result v6

    goto :goto_1

    :cond_3
    const/4 v6, 0x2

    :goto_1
    move-object/from16 v7, p3

    invoke-direct {v0, v1, v2, v7, v6}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->calculateBitmapColor(Landroid/graphics/Bitmap;ZLandroid/graphics/RectF;I)V

    .line 314
    invoke-static/range {p2 .. p2}, Lcom/oplus/darkmode/OplusDarkModeUtils;->getColorState(Landroid/graphics/Bitmap;)I

    move-result v6

    .line 315
    .local v6, "bitmapState":I
    if-eqz v3, :cond_4

    invoke-interface/range {p5 .. p5}, Landroid/graphics/IBaseCanvasExt;->getTransformType()I

    move-result v8

    goto :goto_2

    :cond_4
    const/4 v8, 0x2

    .line 316
    .local v8, "transformType":I
    :goto_2
    const/4 v9, 0x7

    const/4 v10, 0x6

    const/4 v11, 0x3

    const/4 v12, 0x4

    if-eqz v2, :cond_7

    .line 317
    if-eq v6, v4, :cond_5

    if-eq v6, v12, :cond_5

    if-eq v6, v9, :cond_5

    if-ne v6, v10, :cond_7

    .line 321
    :cond_5
    if-nez p1, :cond_6

    .line 322
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .end local p1    # "paint":Landroid/graphics/Paint;
    .local v4, "paint":Landroid/graphics/Paint;
    goto :goto_3

    .line 321
    .end local v4    # "paint":Landroid/graphics/Paint;
    .restart local p1    # "paint":Landroid/graphics/Paint;
    :cond_6
    move-object/from16 v4, p1

    .line 324
    .end local p1    # "paint":Landroid/graphics/Paint;
    .restart local v4    # "paint":Landroid/graphics/Paint;
    :goto_3
    invoke-direct {v0, v11}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->getBitmapFilter(I)Landroid/graphics/ColorFilter;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 325
    return-object v4

    .line 328
    .end local v4    # "paint":Landroid/graphics/Paint;
    .restart local p1    # "paint":Landroid/graphics/Paint;
    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    .line 329
    .local v13, "bitmapWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    .line 330
    .local v14, "bitmapHeight":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v15

    int-to-double v11, v15

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    mul-double v11, v11, v16

    const-wide/high16 v16, 0x4064000000000000L    # 160.0

    div-double v11, v11, v16

    .line 331
    .local v11, "bitmapDensity":D
    int-to-double v9, v13

    div-double/2addr v9, v11

    .line 332
    .local v9, "bitmapWidthDp":D
    int-to-double v4, v14

    div-double/2addr v4, v11

    .line 333
    .local v4, "bitmapHeightDp":D
    iget-object v15, v0, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->mApplication:Landroid/app/Application;

    invoke-static {v15}, Lcom/oplus/darkmode/OplusDarkModeUtils;->getScreenWidth(Landroid/app/Application;)F

    move-result v15

    .line 334
    .local v15, "screenWidth":F
    const-wide/high16 v20, 0x4044000000000000L    # 40.0

    packed-switch v8, :pswitch_data_0

    move/from16 v22, v8

    .end local v8    # "transformType":I
    .local v22, "transformType":I
    goto/16 :goto_d

    .line 336
    .end local v22    # "transformType":I
    .restart local v8    # "transformType":I
    :pswitch_0
    cmpg-double v19, v4, v20

    if-gtz v19, :cond_d

    cmpg-double v19, v9, v20

    if-gtz v19, :cond_d

    .line 337
    const/4 v1, 0x2

    if-eq v6, v1, :cond_b

    const/4 v1, 0x5

    if-ne v6, v1, :cond_8

    goto :goto_5

    .line 344
    :cond_8
    const/4 v1, 0x6

    if-ne v6, v1, :cond_a

    .line 345
    if-nez p1, :cond_9

    .line 346
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .end local p1    # "paint":Landroid/graphics/Paint;
    .local v1, "paint":Landroid/graphics/Paint;
    goto :goto_4

    .line 345
    .end local v1    # "paint":Landroid/graphics/Paint;
    .restart local p1    # "paint":Landroid/graphics/Paint;
    :cond_9
    move-object/from16 v1, p1

    .line 348
    .end local p1    # "paint":Landroid/graphics/Paint;
    .restart local v1    # "paint":Landroid/graphics/Paint;
    :goto_4
    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->getBitmapFilter(I)Landroid/graphics/ColorFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 349
    return-object v1

    .line 344
    .end local v1    # "paint":Landroid/graphics/Paint;
    .restart local p1    # "paint":Landroid/graphics/Paint;
    :cond_a
    move/from16 v22, v8

    goto/16 :goto_d

    .line 339
    :cond_b
    :goto_5
    if-nez p1, :cond_c

    .line 340
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .end local p1    # "paint":Landroid/graphics/Paint;
    .restart local v1    # "paint":Landroid/graphics/Paint;
    goto :goto_6

    .line 339
    .end local v1    # "paint":Landroid/graphics/Paint;
    .restart local p1    # "paint":Landroid/graphics/Paint;
    :cond_c
    move-object/from16 v1, p1

    .line 342
    .end local p1    # "paint":Landroid/graphics/Paint;
    .restart local v1    # "paint":Landroid/graphics/Paint;
    :goto_6
    const/4 v2, 0x4

    invoke-direct {v0, v2}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->getBitmapFilter(I)Landroid/graphics/ColorFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 343
    return-object v1

    .line 351
    .end local v1    # "paint":Landroid/graphics/Paint;
    .restart local p1    # "paint":Landroid/graphics/Paint;
    :cond_d
    int-to-double v1, v13

    move/from16 v22, v8

    .end local v8    # "transformType":I
    .restart local v22    # "transformType":I
    float-to-double v7, v15

    const-wide v18, 0x3fe999999999999aL    # 0.8

    mul-double v7, v7, v18

    cmpl-double v1, v1, v7

    if-ltz v1, :cond_19

    .line 352
    const/4 v1, 0x1

    if-ne v6, v1, :cond_19

    .line 353
    if-nez p1, :cond_e

    .line 354
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .end local p1    # "paint":Landroid/graphics/Paint;
    .restart local v1    # "paint":Landroid/graphics/Paint;
    goto :goto_7

    .line 353
    .end local v1    # "paint":Landroid/graphics/Paint;
    .restart local p1    # "paint":Landroid/graphics/Paint;
    :cond_e
    move-object/from16 v1, p1

    .line 356
    .end local p1    # "paint":Landroid/graphics/Paint;
    .restart local v1    # "paint":Landroid/graphics/Paint;
    :goto_7
    const/4 v2, 0x3

    invoke-direct {v0, v2}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->getBitmapFilter(I)Landroid/graphics/ColorFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 357
    return-object v1

    .line 362
    .end local v1    # "paint":Landroid/graphics/Paint;
    .end local v22    # "transformType":I
    .restart local v8    # "transformType":I
    .restart local p1    # "paint":Landroid/graphics/Paint;
    :pswitch_1
    move/from16 v22, v8

    .end local v8    # "transformType":I
    .restart local v22    # "transformType":I
    cmpg-double v1, v4, v20

    if-gtz v1, :cond_17

    cmpg-double v1, v9, v20

    if-gtz v1, :cond_17

    .line 363
    const/4 v1, 0x2

    if-eq v6, v1, :cond_15

    const/4 v1, 0x5

    if-ne v6, v1, :cond_f

    goto :goto_a

    .line 371
    :cond_f
    const/4 v1, 0x1

    if-eq v6, v1, :cond_10

    const/4 v1, 0x4

    if-ne v6, v1, :cond_12

    :cond_10
    const/16 v1, 0xf

    if-le v13, v1, :cond_12

    const-wide/high16 v1, 0x402e000000000000L    # 15.0

    cmpl-double v1, v4, v1

    if-lez v1, :cond_12

    .line 373
    if-nez p1, :cond_11

    .line 374
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .end local p1    # "paint":Landroid/graphics/Paint;
    .restart local v1    # "paint":Landroid/graphics/Paint;
    goto :goto_8

    .line 373
    .end local v1    # "paint":Landroid/graphics/Paint;
    .restart local p1    # "paint":Landroid/graphics/Paint;
    :cond_11
    move-object/from16 v1, p1

    .line 376
    .end local p1    # "paint":Landroid/graphics/Paint;
    .restart local v1    # "paint":Landroid/graphics/Paint;
    :goto_8
    const/4 v2, 0x3

    invoke-direct {v0, v2}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->getBitmapFilter(I)Landroid/graphics/ColorFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 377
    return-object v1

    .line 378
    .end local v1    # "paint":Landroid/graphics/Paint;
    .restart local p1    # "paint":Landroid/graphics/Paint;
    :cond_12
    const/4 v1, 0x7

    if-eq v6, v1, :cond_13

    const/4 v1, 0x6

    if-ne v6, v1, :cond_19

    .line 380
    :cond_13
    if-nez p1, :cond_14

    .line 381
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .end local p1    # "paint":Landroid/graphics/Paint;
    .restart local v1    # "paint":Landroid/graphics/Paint;
    goto :goto_9

    .line 380
    .end local v1    # "paint":Landroid/graphics/Paint;
    .restart local p1    # "paint":Landroid/graphics/Paint;
    :cond_14
    move-object/from16 v1, p1

    .line 383
    .end local p1    # "paint":Landroid/graphics/Paint;
    .restart local v1    # "paint":Landroid/graphics/Paint;
    :goto_9
    const/4 v2, 0x2

    invoke-direct {v0, v2}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->getBitmapFilter(I)Landroid/graphics/ColorFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 384
    return-object v1

    .line 365
    .end local v1    # "paint":Landroid/graphics/Paint;
    .restart local p1    # "paint":Landroid/graphics/Paint;
    :cond_15
    :goto_a
    if-nez p1, :cond_16

    .line 366
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .end local p1    # "paint":Landroid/graphics/Paint;
    .restart local v1    # "paint":Landroid/graphics/Paint;
    goto :goto_b

    .line 365
    .end local v1    # "paint":Landroid/graphics/Paint;
    .restart local p1    # "paint":Landroid/graphics/Paint;
    :cond_16
    move-object/from16 v1, p1

    .line 368
    .end local p1    # "paint":Landroid/graphics/Paint;
    .restart local v1    # "paint":Landroid/graphics/Paint;
    :goto_b
    const/4 v2, 0x4

    invoke-direct {v0, v2}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->getBitmapFilter(I)Landroid/graphics/ColorFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 369
    return-object v1

    .line 387
    .end local v1    # "paint":Landroid/graphics/Paint;
    .restart local p1    # "paint":Landroid/graphics/Paint;
    :cond_17
    const/4 v1, 0x1

    if-ne v6, v1, :cond_19

    .line 388
    if-nez p1, :cond_18

    .line 389
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .end local p1    # "paint":Landroid/graphics/Paint;
    .restart local v1    # "paint":Landroid/graphics/Paint;
    goto :goto_c

    .line 388
    .end local v1    # "paint":Landroid/graphics/Paint;
    .restart local p1    # "paint":Landroid/graphics/Paint;
    :cond_18
    move-object/from16 v1, p1

    .line 391
    .end local p1    # "paint":Landroid/graphics/Paint;
    .restart local v1    # "paint":Landroid/graphics/Paint;
    :goto_c
    const/4 v2, 0x3

    invoke-direct {v0, v2}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->getBitmapFilter(I)Landroid/graphics/ColorFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 392
    return-object v1

    .line 399
    .end local v1    # "paint":Landroid/graphics/Paint;
    .restart local p1    # "paint":Landroid/graphics/Paint;
    :cond_19
    :goto_d
    return-object p1

    .line 304
    .end local v4    # "bitmapHeightDp":D
    .end local v6    # "bitmapState":I
    .end local v9    # "bitmapWidthDp":D
    .end local v11    # "bitmapDensity":D
    .end local v13    # "bitmapWidth":I
    .end local v14    # "bitmapHeight":I
    .end local v15    # "screenWidth":F
    .end local v22    # "transformType":I
    :cond_1a
    :goto_e
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist getBitmapFilter(I)Landroid/graphics/ColorFilter;
    .locals 18
    .param p1, "type"    # I

    .line 83
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 84
    .local v1, "createColorFilter":Z
    iget-object v2, v0, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->mCacheThirdPartyFilter:[Landroid/graphics/OplusDarkModeThirdPartyFilter;

    aget-object v7, v2, p1

    .line 85
    .local v7, "colorFilter":Landroid/graphics/OplusDarkModeThirdPartyFilter;
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroid/graphics/OplusDarkModeThirdPartyFilter;->getLABBgMaxL()F

    move-result v2

    iget v3, v0, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->mBackgroundMaxL:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    .line 86
    invoke-virtual {v7}, Landroid/graphics/OplusDarkModeThirdPartyFilter;->getLABFgMinL()F

    move-result v2

    iget v3, v0, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->mForegroundMinL:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v8, v1

    goto :goto_1

    .line 87
    :cond_1
    :goto_0
    const/4 v1, 0x1

    move v8, v1

    .line 89
    .end local v1    # "createColorFilter":Z
    .local v8, "createColorFilter":Z
    :goto_1
    if-eqz v8, :cond_2

    .line 90
    iget v1, v0, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->mBackgroundMaxL:F

    float-to-double v9, v1

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    invoke-static/range {v9 .. v14}, Lcom/android/internal/graphics/ColorUtils;->LABToColor(DDD)I

    move-result v9

    .line 91
    .local v9, "bgColor":I
    const/4 v1, 0x3

    new-array v10, v1, [F

    .line 92
    .local v10, "hsl":[F
    invoke-static {v9, v10}, Lcom/android/internal/graphics/ColorUtils;->colorToHSL(I[F)V

    .line 93
    const/4 v1, 0x2

    aget v11, v10, v1

    .line 94
    .local v11, "bgL":F
    iget v2, v0, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->mForegroundMinL:F

    float-to-double v12, v2

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    invoke-static/range {v12 .. v17}, Lcom/android/internal/graphics/ColorUtils;->LABToColor(DDD)I

    move-result v12

    .line 95
    .local v12, "fgColor":I
    invoke-static {v12, v10}, Lcom/android/internal/graphics/ColorUtils;->colorToHSL(I[F)V

    .line 96
    new-instance v13, Landroid/graphics/OplusDarkModeThirdPartyFilter;

    aget v4, v10, v1

    iget v5, v0, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->mBackgroundMaxL:F

    iget v6, v0, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->mForegroundMinL:F

    move-object v1, v13

    move/from16 v2, p1

    move v3, v11

    invoke-direct/range {v1 .. v6}, Landroid/graphics/OplusDarkModeThirdPartyFilter;-><init>(IFFFF)V

    .line 97
    .local v1, "newColorFilter":Landroid/graphics/OplusDarkModeThirdPartyFilter;
    iget-object v2, v0, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->mCacheThirdPartyFilter:[Landroid/graphics/OplusDarkModeThirdPartyFilter;

    aput-object v1, v2, p1

    .line 98
    return-object v1

    .line 100
    .end local v1    # "newColorFilter":Landroid/graphics/OplusDarkModeThirdPartyFilter;
    .end local v9    # "bgColor":I
    .end local v10    # "hsl":[F
    .end local v11    # "bgL":F
    .end local v12    # "fgColor":I
    :cond_2
    return-object v7
.end method

.method private blacklist getDarkModeColor(II)I
    .locals 1
    .param p1, "color"    # I
    .param p2, "transformType"    # I

    .line 604
    packed-switch p2, :pswitch_data_0

    .line 610
    return p1

    .line 608
    :pswitch_0
    iget v0, p0, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->mForegroundMinL:F

    invoke-static {p1, v0}, Lcom/oplus/darkmode/OplusDarkModeUtils;->makeColorForeground(IF)I

    move-result v0

    return v0

    .line 606
    :pswitch_1
    iget v0, p0, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->mBackgroundMaxL:F

    invoke-static {p1, v0}, Lcom/oplus/darkmode/OplusDarkModeUtils;->makeColorBackground(IF)I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static whitelist getInstance()Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;
    .locals 1

    .line 44
    sget-object v0, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager$Holder;->INSTANCE:Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;

    return-object v0
.end method

.method private blacklist handleAreaColor(Landroid/graphics/Paint;Landroid/graphics/RectF;Landroid/graphics/Path;Landroid/graphics/IBaseCanvasExt;)V
    .locals 7
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "rectF"    # Landroid/graphics/RectF;
    .param p3, "path"    # Landroid/graphics/Path;
    .param p4, "canvas"    # Landroid/graphics/IBaseCanvasExt;

    .line 443
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    .line 444
    .local v0, "color":I
    if-eqz p3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 445
    .local v1, "hasPath":Z
    :goto_0
    const/4 v2, 0x2

    if-eqz p4, :cond_1

    invoke-interface {p4}, Landroid/graphics/IBaseCanvasExt;->getTransformType()I

    move-result v3

    goto :goto_1

    :cond_1
    move v3, v2

    .line 446
    .local v3, "transformType":I
    :goto_1
    if-eqz v1, :cond_3

    .line 447
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result v4

    invoke-static {v4}, Lcom/oplus/darkmode/OplusDarkModeUtils;->isMaybeWhiteColor(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 448
    if-ne v3, v2, :cond_2

    .line 449
    const/4 v3, 0x1

    .line 452
    :cond_2
    invoke-direct {p0, v0, v3}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->getDarkModeColor(II)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 453
    return-void

    .line 456
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v4

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v4, v5, :cond_4

    .line 457
    invoke-virtual {p1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    const/high16 v5, 0x40400000    # 3.0f

    iget-object v6, p0, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->mApplication:Landroid/app/Application;

    invoke-static {v6}, Lcom/oplus/darkmode/OplusDarkModeUtils;->getDpDensity(Landroid/app/Application;)F

    move-result v6

    mul-float/2addr v6, v5

    cmpg-float v4, v4, v6

    if-gtz v4, :cond_4

    .line 458
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result v4

    invoke-direct {p0, v4, v2}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->getDarkModeColor(II)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 459
    return-void

    .line 462
    :cond_4
    invoke-direct {p0, p2, p4, v3}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->changeAreaTransformType(Landroid/graphics/RectF;Landroid/graphics/IBaseCanvasExt;I)I

    move-result v3

    .line 463
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result v4

    invoke-static {v4}, Lcom/oplus/darkmode/OplusDarkModeUtils;->isMaybeWhiteColor(I)Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz p4, :cond_5

    .line 464
    if-ne v3, v2, :cond_5

    .line 465
    invoke-interface {p4}, Landroid/graphics/IBaseCanvasExt;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v4, p0, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->mApplication:Landroid/app/Application;

    invoke-static {v4}, Lcom/oplus/darkmode/OplusDarkModeUtils;->getDpDensity(Landroid/app/Application;)F

    move-result v4

    const/high16 v5, 0x41700000    # 15.0f

    mul-float/2addr v4, v5

    cmpl-float v2, v2, v4

    if-lez v2, :cond_5

    .line 466
    invoke-interface {p4}, Landroid/graphics/IBaseCanvasExt;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v4, p0, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->mApplication:Landroid/app/Application;

    invoke-static {v4}, Lcom/oplus/darkmode/OplusDarkModeUtils;->getDpDensity(Landroid/app/Application;)F

    move-result v4

    mul-float/2addr v4, v5

    cmpl-float v2, v2, v4

    if-lez v2, :cond_5

    .line 467
    const/4 v3, 0x1

    .line 470
    :cond_5
    invoke-direct {p0, v0, v3}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->getDarkModeColor(II)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 471
    return-void
.end method

.method private blacklist handleShader(Landroid/graphics/Paint;Landroid/graphics/RectF;Landroid/graphics/Shader;Landroid/graphics/IBaseCanvasExt;)V
    .locals 5
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "rectF"    # Landroid/graphics/RectF;
    .param p3, "shader"    # Landroid/graphics/Shader;
    .param p4, "canvas"    # Landroid/graphics/IBaseCanvasExt;

    .line 483
    instance-of v0, p3, Landroid/graphics/BitmapShader;

    if-eqz v0, :cond_0

    .line 484
    move-object v0, p3

    check-cast v0, Landroid/graphics/BitmapShader;

    invoke-virtual {v0}, Landroid/graphics/BitmapShader;->getWrapper()Landroid/graphics/IBitmapShaderWrapper;

    move-result-object v0

    invoke-interface {v0}, Landroid/graphics/IBitmapShaderWrapper;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 485
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0, p1, v0, p2, p4}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->changePaintWhenDrawBitmap(Landroid/graphics/Paint;Landroid/graphics/Bitmap;Landroid/graphics/RectF;Landroid/graphics/IBaseCanvasExt;)Landroid/graphics/Paint;

    .line 486
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    goto/16 :goto_2

    :cond_0
    instance-of v0, p3, Landroid/graphics/LinearGradient;

    const/4 v1, 0x2

    if-nez v0, :cond_4

    instance-of v0, p3, Landroid/graphics/SweepGradient;

    if-nez v0, :cond_4

    instance-of v0, p3, Landroid/graphics/RadialGradient;

    if-eqz v0, :cond_1

    goto :goto_1

    .line 498
    :cond_1
    instance-of v0, p3, Landroid/graphics/ComposeShader;

    if-eqz v0, :cond_6

    .line 499
    iget-object v0, p3, Landroid/graphics/Shader;->mShaderExt:Landroid/graphics/IShaderExt;

    if-eqz v0, :cond_6

    .line 500
    iget-object v0, p3, Landroid/graphics/Shader;->mShaderExt:Landroid/graphics/IShaderExt;

    invoke-interface {v0}, Landroid/graphics/IShaderExt;->getComposeShaderColor()Ljava/util/List;

    move-result-object v0

    .line 501
    .local v0, "colors":Ljava/util/List;, "Ljava/util/List<[J>;"
    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v1, :cond_6

    .line 502
    if-eqz p4, :cond_2

    invoke-interface {p4}, Landroid/graphics/IBaseCanvasExt;->getTransformType()I

    move-result v1

    :cond_2
    invoke-direct {p0, p2, p4, v1}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->changeAreaTransformType(Landroid/graphics/RectF;Landroid/graphics/IBaseCanvasExt;I)I

    move-result v1

    .line 503
    .local v1, "transformType":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 504
    .local v2, "newColors":Ljava/util/List;, "Ljava/util/List<[J>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 505
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [J

    invoke-virtual {p0, v4, v1}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->getShaderDarkModeColors([JI)V

    .line 504
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 507
    .end local v3    # "i":I
    :cond_3
    iget-object v3, p3, Landroid/graphics/Shader;->mShaderExt:Landroid/graphics/IShaderExt;

    invoke-interface {v3, v2}, Landroid/graphics/IShaderExt;->setComposeShaderColor(Ljava/util/List;)V

    goto :goto_2

    .line 489
    .end local v0    # "colors":Ljava/util/List;, "Ljava/util/List<[J>;"
    .end local v1    # "transformType":I
    .end local v2    # "newColors":Ljava/util/List;, "Ljava/util/List<[J>;"
    :cond_4
    :goto_1
    iget-object v0, p3, Landroid/graphics/Shader;->mShaderExt:Landroid/graphics/IShaderExt;

    if-eqz v0, :cond_6

    .line 490
    iget-object v0, p3, Landroid/graphics/Shader;->mShaderExt:Landroid/graphics/IShaderExt;

    invoke-interface {v0}, Landroid/graphics/IShaderExt;->getColorLongs()[J

    move-result-object v0

    .line 491
    .local v0, "colors":[J
    if-eqz v0, :cond_6

    .line 492
    invoke-virtual {v0}, [J->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    .line 493
    .local v2, "newColors":[J
    if-eqz p4, :cond_5

    invoke-interface {p4}, Landroid/graphics/IBaseCanvasExt;->getTransformType()I

    move-result v1

    :cond_5
    invoke-direct {p0, p2, p4, v1}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->changeAreaTransformType(Landroid/graphics/RectF;Landroid/graphics/IBaseCanvasExt;I)I

    move-result v1

    .line 494
    .restart local v1    # "transformType":I
    invoke-virtual {p0, v2, v1}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->getShaderDarkModeColors([JI)V

    .line 495
    iget-object v3, p3, Landroid/graphics/Shader;->mShaderExt:Landroid/graphics/IShaderExt;

    invoke-interface {v3, v2}, Landroid/graphics/IShaderExt;->setColors([J)V

    .line 511
    .end local v0    # "colors":[J
    .end local v1    # "transformType":I
    .end local v2    # "newColors":[J
    :cond_6
    :goto_2
    return-void
.end method

.method private blacklist isCrudeView(Landroid/view/View;Landroid/graphics/Canvas;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .line 672
    invoke-static {p1}, Lcom/oplus/darkmode/OplusDarkModeUtils;->getCrudeState(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 673
    return v1

    .line 674
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 675
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 676
    .local v0, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lez v3, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1

    .line 678
    .end local v0    # "viewGroup":Landroid/view/ViewGroup;
    :cond_2
    return v2
.end method

.method private blacklist makeColorFilterColor(Landroid/graphics/ColorFilter;I)Z
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;
    .param p2, "transformType"    # I

    .line 526
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->makeColorFilterColor(Landroid/graphics/ColorFilter;ILandroid/graphics/IBaseCanvasExt;)Z

    move-result v0

    return v0
.end method

.method private blacklist makeColorFilterColor(Landroid/graphics/ColorFilter;ILandroid/graphics/IBaseCanvasExt;)Z
    .locals 5
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;
    .param p2, "transformType"    # I
    .param p3, "canvas"    # Landroid/graphics/IBaseCanvasExt;

    .line 530
    const/4 v0, 0x0

    .line 531
    .local v0, "shouldInvert":Z
    const/4 v1, -0x1

    .line 532
    .local v1, "originColor":I
    instance-of v2, p1, Landroid/graphics/PorterDuffColorFilter;

    if-eqz v2, :cond_0

    .line 533
    move-object v2, p1

    check-cast v2, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v2}, Landroid/graphics/PorterDuffColorFilter;->getColor()I

    move-result v1

    .line 534
    const/4 v0, 0x1

    goto :goto_0

    .line 535
    :cond_0
    instance-of v2, p1, Landroid/graphics/BlendModeColorFilter;

    if-eqz v2, :cond_1

    .line 536
    move-object v2, p1

    check-cast v2, Landroid/graphics/BlendModeColorFilter;

    invoke-virtual {v2}, Landroid/graphics/BlendModeColorFilter;->getColor()I

    move-result v1

    .line 537
    const/4 v0, 0x1

    .line 539
    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    .line 540
    move v2, v1

    .line 541
    .local v2, "newColor":I
    if-eqz p3, :cond_2

    .line 542
    invoke-interface {p3}, Landroid/graphics/IBaseCanvasExt;->getOplusViewType()I

    move-result v3

    .line 543
    .local v3, "viewType":I
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 545
    :pswitch_0
    const/4 v4, 0x1

    if-ne p2, v4, :cond_2

    .line 546
    invoke-static {v1}, Lcom/oplus/darkmode/OplusDarkModeUtils;->isMaybeBlackColor(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 547
    const/4 p2, 0x2

    .line 553
    .end local v3    # "viewType":I
    :cond_2
    :goto_1
    packed-switch p2, :pswitch_data_1

    goto :goto_2

    .line 558
    :pswitch_1
    iget v3, p0, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->mForegroundMinL:F

    invoke-static {v1, v3}, Lcom/oplus/darkmode/OplusDarkModeUtils;->makeSVGColorForeground(IF)I

    move-result v2

    .line 559
    goto :goto_2

    .line 555
    :pswitch_2
    iget v3, p0, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->mBackgroundMaxL:F

    invoke-static {v1, v3}, Lcom/oplus/darkmode/OplusDarkModeUtils;->makeSVGColorBackground(IF)I

    move-result v2

    .line 556
    nop

    .line 563
    :goto_2
    if-eq v2, v1, :cond_3

    .line 564
    invoke-static {p1, v2}, Lcom/oplus/darkmode/OplusDarkModeUtils;->setColorFilterColor(Landroid/graphics/ColorFilter;I)V

    .line 567
    .end local v2    # "newColor":I
    :cond_3
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private blacklist markCrude(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .line 691
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 692
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 693
    .local v0, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 694
    .local v1, "childCount":I
    iget-object v2, p0, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->setEmpty()V

    .line 695
    iget-object v2, p0, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->mDrawnBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->setEmpty()V

    .line 696
    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 697
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 698
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 699
    .local v4, "child":Landroid/view/View;
    iget-object v5, p0, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v6

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v7

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v8

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v9

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 700
    iget-object v5, p0, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->mDrawnBounds:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->mBounds:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->mDrawnBounds:Landroid/graphics/RectF;

    invoke-virtual {v5, v6}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 701
    invoke-static {v4, v2}, Lcom/oplus/darkmode/OplusDarkModeUtils;->setCrudeState(Landroid/view/View;I)V

    .line 703
    :cond_0
    iget-object v5, p0, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->mDrawnBounds:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v5, v6}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 697
    .end local v4    # "child":Landroid/view/View;
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 707
    .end local v0    # "viewGroup":Landroid/view/ViewGroup;
    .end local v1    # "childCount":I
    .end local v3    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public whitelist changeColorFilterInDarkMode(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 522
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->makeColorFilterColor(Landroid/graphics/ColorFilter;I)Z

    .line 523
    return-void
.end method

.method public whitelist changePaintWhenDrawArea(Landroid/graphics/Paint;Landroid/graphics/RectF;Landroid/graphics/IBaseCanvasExt;)V
    .locals 1
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "rectF"    # Landroid/graphics/RectF;
    .param p3, "canvas"    # Landroid/graphics/IBaseCanvasExt;

    .line 439
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->changePaintWhenDrawArea(Landroid/graphics/Paint;Landroid/graphics/RectF;Landroid/graphics/Path;Landroid/graphics/IBaseCanvasExt;)V

    .line 440
    return-void
.end method

.method public whitelist changePaintWhenDrawArea(Landroid/graphics/Paint;Landroid/graphics/RectF;Landroid/graphics/Path;Landroid/graphics/IBaseCanvasExt;)V
    .locals 3
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "rectF"    # Landroid/graphics/RectF;
    .param p3, "path"    # Landroid/graphics/Path;
    .param p4, "canvas"    # Landroid/graphics/IBaseCanvasExt;

    .line 427
    invoke-virtual {p1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v0

    .line 428
    .local v0, "shader":Landroid/graphics/Shader;
    if-eqz v0, :cond_0

    .line 429
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->handleShader(Landroid/graphics/Paint;Landroid/graphics/RectF;Landroid/graphics/Shader;Landroid/graphics/IBaseCanvasExt;)V

    .line 430
    return-void

    .line 433
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v1

    if-eqz p3, :cond_1

    const/4 v2, 0x2

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_0
    invoke-direct {p0, v1, v2, p4}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->makeColorFilterColor(Landroid/graphics/ColorFilter;ILandroid/graphics/IBaseCanvasExt;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 434
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->handleAreaColor(Landroid/graphics/Paint;Landroid/graphics/RectF;Landroid/graphics/Path;Landroid/graphics/IBaseCanvasExt;)V

    .line 436
    :cond_2
    return-void
.end method

.method public whitelist changePaintWhenDrawBitmap(Landroid/graphics/Paint;Landroid/graphics/Bitmap;Landroid/graphics/RectF;Landroid/graphics/IBaseCanvasExt;)Landroid/graphics/Paint;
    .locals 6
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "rectF"    # Landroid/graphics/RectF;
    .param p4, "canvas"    # Landroid/graphics/IBaseCanvasExt;

    .line 514
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->changePaintWhenDrawBitmap(Landroid/graphics/Paint;Landroid/graphics/Bitmap;Landroid/graphics/RectF;ZLandroid/graphics/IBaseCanvasExt;)Landroid/graphics/Paint;

    move-result-object v0

    return-object v0
.end method

.method public whitelist changePaintWhenDrawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Paint;Landroid/graphics/RectF;Landroid/graphics/IBaseCanvasExt;)Landroid/graphics/Paint;
    .locals 6
    .param p1, "ninePatch"    # Landroid/graphics/NinePatch;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "rectF"    # Landroid/graphics/RectF;
    .param p4, "canvas"    # Landroid/graphics/IBaseCanvasExt;

    .line 518
    invoke-virtual {p1}, Landroid/graphics/NinePatch;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->changePaintWhenDrawBitmap(Landroid/graphics/Paint;Landroid/graphics/Bitmap;Landroid/graphics/RectF;ZLandroid/graphics/IBaseCanvasExt;)Landroid/graphics/Paint;

    move-result-object v0

    return-object v0
.end method

.method public whitelist changePaintWhenDrawText(Landroid/graphics/Paint;Landroid/graphics/IBaseCanvasExt;)V
    .locals 5
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "canvas"    # Landroid/graphics/IBaseCanvasExt;

    .line 403
    invoke-virtual {p0}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->isInDarkMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 404
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    .line 405
    .local v0, "color":I
    iget-object v1, p0, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->mApplication:Landroid/app/Application;

    invoke-static {v1}, Lcom/oplus/darkmode/OplusDarkModeUtils;->isBiliBili(Landroid/app/Application;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 406
    invoke-virtual {p1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    .line 407
    .local v1, "strokeWidth":F
    invoke-virtual {p1}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v2

    .line 408
    .local v2, "style":Landroid/graphics/Paint$Style;
    sget-object v3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    if-ne v2, v3, :cond_0

    .line 409
    const/high16 v3, 0x40400000    # 3.0f

    iget-object v4, p0, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->mApplication:Landroid/app/Application;

    invoke-static {v4}, Lcom/oplus/darkmode/OplusDarkModeUtils;->getDpDensity(Landroid/app/Application;)F

    move-result v4

    mul-float/2addr v4, v3

    cmpg-float v3, v1, v4

    if-gtz v3, :cond_0

    .line 411
    return-void

    .line 415
    .end local v1    # "strokeWidth":F
    .end local v2    # "style":Landroid/graphics/Paint$Style;
    :cond_0
    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->getDarkModeColor(II)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 417
    .end local v0    # "color":I
    :cond_1
    return-void
.end method

.method public whitelist changeWhenDrawColor(IZLandroid/graphics/IBaseCanvasExt;)I
    .locals 1
    .param p1, "color"    # I
    .param p2, "isDarkMode"    # Z
    .param p3, "canvas"    # Landroid/graphics/IBaseCanvasExt;

    .line 420
    if-eqz p2, :cond_0

    .line 421
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->getDarkModeColor(II)I

    move-result p1

    .line 423
    :cond_0
    return p1
.end method

.method public whitelist getBackgroundMaxL()F
    .locals 1

    .line 56
    iget v0, p0, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->mBackgroundMaxL:F

    return v0
.end method

.method public blacklist getColorFilterWhenDrawVectorDrawable(Landroid/graphics/drawable/SumEntity;Landroid/graphics/drawable/SumEntity;Landroid/graphics/drawable/SumEntity;)Landroid/graphics/ColorFilter;
    .locals 2
    .param p1, "HEntity"    # Landroid/graphics/drawable/SumEntity;
    .param p2, "SEntity"    # Landroid/graphics/drawable/SumEntity;
    .param p3, "LEntity"    # Landroid/graphics/drawable/SumEntity;

    .line 770
    invoke-virtual {p3}, Landroid/graphics/drawable/SumEntity;->count()I

    move-result v0

    if-lez v0, :cond_0

    .line 771
    invoke-virtual {p1}, Landroid/graphics/drawable/SumEntity;->delta()F

    move-result v0

    const/high16 v1, 0x41a00000    # 20.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-virtual {p2}, Landroid/graphics/drawable/SumEntity;->delta()F

    move-result v0

    const v1, 0x3dcccccd    # 0.1f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 772
    invoke-virtual {p3}, Landroid/graphics/drawable/SumEntity;->average()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 773
    sget-object v0, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->INVERT_FILTER:Landroid/graphics/ColorFilter;

    return-object v0

    .line 777
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getDarkModeColors([ILandroid/graphics/IBaseCanvasExt;)[I
    .locals 4
    .param p1, "colors"    # [I
    .param p2, "canvas"    # Landroid/graphics/IBaseCanvasExt;

    .line 583
    if-nez p1, :cond_0

    .line 584
    const/4 v0, 0x0

    return-object v0

    .line 586
    :cond_0
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 587
    .local v0, "darkModeColor":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 588
    aget v2, v0, v1

    if-eqz p2, :cond_1

    invoke-interface {p2}, Landroid/graphics/IBaseCanvasExt;->getTransformType()I

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x2

    :goto_1
    invoke-direct {p0, v2, v3}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->getDarkModeColor(II)I

    move-result v2

    aput v2, v0, v1

    .line 587
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 590
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method public whitelist getForegroundMinL()F
    .locals 1

    .line 60
    iget v0, p0, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->mForegroundMinL:F

    return v0
.end method

.method public whitelist getRealPaintState(Landroid/graphics/Paint;)Landroid/graphics/IBaseCanvasExt$RealPaintState;
    .locals 3
    .param p1, "paint"    # Landroid/graphics/Paint;

    .line 616
    if-nez p1, :cond_0

    .line 617
    const/4 v0, 0x0

    return-object v0

    .line 620
    :cond_0
    new-instance v0, Landroid/graphics/IBaseCanvasExt$RealPaintState;

    invoke-direct {v0}, Landroid/graphics/IBaseCanvasExt$RealPaintState;-><init>()V

    .line 621
    .local v0, "realPaintState":Landroid/graphics/IBaseCanvasExt$RealPaintState;
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    iput v1, v0, Landroid/graphics/IBaseCanvasExt$RealPaintState;->color:I

    .line 622
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/IBaseCanvasExt$RealPaintState;->colorFilter:Landroid/graphics/ColorFilter;

    .line 623
    invoke-virtual {p1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v1

    .line 624
    .local v1, "shader":Landroid/graphics/Shader;
    instance-of v2, v1, Landroid/graphics/LinearGradient;

    if-nez v2, :cond_2

    instance-of v2, v1, Landroid/graphics/SweepGradient;

    if-nez v2, :cond_2

    instance-of v2, v1, Landroid/graphics/RadialGradient;

    if-eqz v2, :cond_1

    goto :goto_0

    .line 630
    :cond_1
    instance-of v2, v1, Landroid/graphics/ComposeShader;

    if-eqz v2, :cond_3

    .line 631
    iget-object v2, v1, Landroid/graphics/Shader;->mShaderExt:Landroid/graphics/IShaderExt;

    if-eqz v2, :cond_3

    .line 632
    iget-object v2, v1, Landroid/graphics/Shader;->mShaderExt:Landroid/graphics/IShaderExt;

    invoke-interface {v2}, Landroid/graphics/IShaderExt;->getComposeShaderColor()Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Landroid/graphics/IBaseCanvasExt$RealPaintState;->composeShaderColors:Ljava/util/List;

    goto :goto_1

    .line 627
    :cond_2
    :goto_0
    iget-object v2, v1, Landroid/graphics/Shader;->mShaderExt:Landroid/graphics/IShaderExt;

    if-eqz v2, :cond_3

    .line 628
    iget-object v2, v1, Landroid/graphics/Shader;->mShaderExt:Landroid/graphics/IShaderExt;

    invoke-interface {v2}, Landroid/graphics/IShaderExt;->getColorLongs()[J

    move-result-object v2

    iput-object v2, v0, Landroid/graphics/IBaseCanvasExt$RealPaintState;->shaderColors:[J

    .line 635
    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v2

    instance-of v2, v2, Landroid/graphics/PorterDuffColorFilter;

    if-eqz v2, :cond_4

    .line 636
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v2

    check-cast v2, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v2}, Landroid/graphics/PorterDuffColorFilter;->getColor()I

    move-result v2

    iput v2, v0, Landroid/graphics/IBaseCanvasExt$RealPaintState;->colorFilterColor:I

    goto :goto_2

    .line 637
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v2

    instance-of v2, v2, Landroid/graphics/BlendModeColorFilter;

    if-eqz v2, :cond_5

    .line 638
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v2

    check-cast v2, Landroid/graphics/BlendModeColorFilter;

    invoke-virtual {v2}, Landroid/graphics/BlendModeColorFilter;->getColor()I

    move-result v2

    iput v2, v0, Landroid/graphics/IBaseCanvasExt$RealPaintState;->colorFilterColor:I

    .line 640
    :cond_5
    :goto_2
    return-object v0
.end method

.method public whitelist getShaderDarkModeColors([JI)V
    .locals 8
    .param p1, "colors"    # [J
    .param p2, "transformType"    # I

    .line 571
    if-nez p1, :cond_0

    .line 572
    return-void

    .line 574
    :cond_0
    array-length v0, p1

    .line 575
    .local v0, "size":I
    const-wide/16 v1, 0x0

    .line 576
    .local v1, "color":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 577
    aget-wide v1, p1, v3

    .line 578
    invoke-static {v1, v2}, Landroid/graphics/Color;->alpha(J)F

    move-result v4

    invoke-static {v1, v2}, Landroid/graphics/Color;->red(J)F

    move-result v5

    invoke-static {v1, v2}, Landroid/graphics/Color;->green(J)F

    move-result v6

    invoke-static {v1, v2}, Landroid/graphics/Color;->blue(J)F

    move-result v7

    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Color;->argb(FFFF)I

    move-result v4

    invoke-direct {p0, v4, p2}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->getDarkModeColor(II)I

    move-result v4

    invoke-static {v4}, Landroid/graphics/Color;->pack(I)J

    move-result-wide v4

    aput-wide v4, p1, v3

    .line 576
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 580
    .end local v3    # "i":I
    :cond_1
    return-void
.end method

.method public whitelist isInDarkMode()Z
    .locals 1

    .line 104
    iget-boolean v0, p0, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->mIsAppSupportDarkMode:Z

    return v0
.end method

.method public whitelist isInDarkMode(Z)Z
    .locals 1
    .param p1, "isHardware"    # Z

    .line 108
    iget-boolean v0, p0, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->mIsAppSupportDarkMode:Z

    return v0
.end method

.method public whitelist markBackground(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .line 682
    iget-boolean v0, p0, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->mIsAppSupportDarkMode:Z

    if-eqz v0, :cond_0

    .line 683
    nop

    .line 684
    invoke-static {p1}, Lcom/oplus/darkmode/OplusDarkModeUtils;->getViewType(Landroid/view/View;)I

    move-result v0

    .line 683
    invoke-static {p2, v0}, Lcom/oplus/darkmode/OplusDarkModeUtils;->setViewType(Landroid/graphics/Canvas;I)V

    .line 685
    const/4 v0, 0x1

    .line 686
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 685
    invoke-static {p2, v0, v1, v2}, Lcom/oplus/darkmode/OplusDarkModeUtils;->setCanvasTransformType(Landroid/graphics/Canvas;III)V

    .line 688
    :cond_0
    return-void
.end method

.method public whitelist markDispatchDraw(Landroid/view/ViewGroup;Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .line 710
    iget-boolean v0, p0, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->mIsAppSupportDarkMode:Z

    if-eqz v0, :cond_0

    .line 711
    invoke-direct {p0, p1, p2}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->markCrude(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 713
    :cond_0
    return-void
.end method

.method public whitelist markDrawChild(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "canvas"    # Landroid/graphics/Canvas;

    .line 732
    iget-boolean v0, p0, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->mIsAppSupportDarkMode:Z

    if-eqz v0, :cond_0

    .line 733
    nop

    .line 734
    invoke-static {p2}, Lcom/oplus/darkmode/OplusDarkModeUtils;->getViewType(Landroid/view/View;)I

    move-result v0

    .line 733
    invoke-static {p3, v0}, Lcom/oplus/darkmode/OplusDarkModeUtils;->setViewType(Landroid/graphics/Canvas;I)V

    .line 735
    const/4 v0, 0x1

    .line 736
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 735
    invoke-static {p3, v0, v1, v2}, Lcom/oplus/darkmode/OplusDarkModeUtils;->setCanvasTransformType(Landroid/graphics/Canvas;III)V

    .line 738
    :cond_0
    return-void
.end method

.method public whitelist markDrawFadingEdge(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .line 755
    iget-boolean v0, p0, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->mIsAppSupportDarkMode:Z

    if-eqz v0, :cond_0

    .line 756
    const/4 v0, 0x1

    .line 757
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 756
    invoke-static {p2, v0, v1, v2}, Lcom/oplus/darkmode/OplusDarkModeUtils;->setCanvasTransformType(Landroid/graphics/Canvas;III)V

    .line 759
    :cond_0
    return-void
.end method

.method public whitelist markForeground(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .line 741
    iget-boolean v0, p0, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->mIsAppSupportDarkMode:Z

    if-eqz v0, :cond_1

    .line 742
    nop

    .line 743
    invoke-static {p1}, Lcom/oplus/darkmode/OplusDarkModeUtils;->getViewType(Landroid/view/View;)I

    move-result v0

    .line 742
    invoke-static {p2, v0}, Lcom/oplus/darkmode/OplusDarkModeUtils;->setViewType(Landroid/graphics/Canvas;I)V

    .line 744
    nop

    .line 745
    invoke-direct {p0, p1, p2}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->isCrudeView(Landroid/view/View;Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 746
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 744
    invoke-static {p2, v0, v1, v2}, Lcom/oplus/darkmode/OplusDarkModeUtils;->setCanvasTransformType(Landroid/graphics/Canvas;III)V

    .line 748
    :cond_1
    return-void
.end method

.method public whitelist markOnDraw(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .line 751
    invoke-virtual {p0, p1, p2}, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->markForeground(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 752
    return-void
.end method

.method public whitelist markViewTypeBySize(Landroid/view/View;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;

    .line 716
    invoke-static {p1}, Lcom/oplus/darkmode/OplusDarkModeUtils;->getDpDensity(Landroid/view/View;)F

    move-result v0

    .line 717
    .local v0, "density":F
    invoke-static {p1}, Lcom/oplus/darkmode/OplusDarkModeUtils;->getScreenWidth(Landroid/view/View;)F

    move-result v1

    .line 718
    .local v1, "screenWidth":F
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 719
    .local v2, "viewHeight":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 720
    .local v3, "viewWidth":I
    int-to-float v4, v2

    const/high16 v5, 0x42a00000    # 80.0f

    mul-float/2addr v5, v0

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_0

    int-to-float v4, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v1, v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_0

    .line 721
    const/4 v4, 0x1

    invoke-static {p1, v4}, Lcom/oplus/darkmode/OplusDarkModeUtils;->setViewType(Landroid/view/View;I)V

    goto :goto_0

    .line 722
    :cond_0
    int-to-double v4, v3

    float-to-double v6, v1

    const-wide v8, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v6, v8

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_2

    .line 723
    int-to-float v4, v2

    const/high16 v5, 0x41000000    # 8.0f

    mul-float/2addr v5, v0

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_1

    .line 724
    const/4 v4, 0x2

    invoke-static {p1, v4}, Lcom/oplus/darkmode/OplusDarkModeUtils;->setViewType(Landroid/view/View;I)V

    goto :goto_0

    .line 726
    :cond_1
    const/4 v4, 0x3

    invoke-static {p1, v4}, Lcom/oplus/darkmode/OplusDarkModeUtils;->setViewType(Landroid/view/View;I)V

    .line 729
    :cond_2
    :goto_0
    return-void
.end method

.method public whitelist resetRealPaintIfNeed(Landroid/graphics/Paint;Landroid/graphics/IBaseCanvasExt$RealPaintState;)V
    .locals 3
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "realPaintState"    # Landroid/graphics/IBaseCanvasExt$RealPaintState;

    .line 644
    if-eqz p1, :cond_6

    if-nez p2, :cond_0

    goto :goto_3

    .line 647
    :cond_0
    iget v0, p2, Landroid/graphics/IBaseCanvasExt$RealPaintState;->color:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 648
    iget-object v0, p2, Landroid/graphics/IBaseCanvasExt$RealPaintState;->colorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 649
    invoke-virtual {p1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v0

    .line 650
    .local v0, "shader":Landroid/graphics/Shader;
    instance-of v1, v0, Landroid/graphics/LinearGradient;

    if-nez v1, :cond_2

    instance-of v1, v0, Landroid/graphics/SweepGradient;

    if-nez v1, :cond_2

    instance-of v1, v0, Landroid/graphics/RadialGradient;

    if-eqz v1, :cond_1

    goto :goto_0

    .line 656
    :cond_1
    instance-of v1, v0, Landroid/graphics/ComposeShader;

    if-eqz v1, :cond_3

    .line 657
    iget-object v1, v0, Landroid/graphics/Shader;->mShaderExt:Landroid/graphics/IShaderExt;

    if-eqz v1, :cond_3

    iget-object v1, p2, Landroid/graphics/IBaseCanvasExt$RealPaintState;->composeShaderColors:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 658
    iget-object v1, v0, Landroid/graphics/Shader;->mShaderExt:Landroid/graphics/IShaderExt;

    iget-object v2, p2, Landroid/graphics/IBaseCanvasExt$RealPaintState;->composeShaderColors:Ljava/util/List;

    invoke-interface {v1, v2}, Landroid/graphics/IShaderExt;->setComposeShaderColor(Ljava/util/List;)V

    goto :goto_1

    .line 653
    :cond_2
    :goto_0
    iget-object v1, v0, Landroid/graphics/Shader;->mShaderExt:Landroid/graphics/IShaderExt;

    if-eqz v1, :cond_3

    iget-object v1, p2, Landroid/graphics/IBaseCanvasExt$RealPaintState;->shaderColors:[J

    if-eqz v1, :cond_3

    .line 654
    iget-object v1, v0, Landroid/graphics/Shader;->mShaderExt:Landroid/graphics/IShaderExt;

    iget-object v2, p2, Landroid/graphics/IBaseCanvasExt$RealPaintState;->shaderColors:[J

    invoke-interface {v1, v2}, Landroid/graphics/IShaderExt;->setColors([J)V

    .line 661
    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v1

    instance-of v1, v1, Landroid/graphics/PorterDuffColorFilter;

    if-eqz v1, :cond_4

    .line 662
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v1

    iget v2, p2, Landroid/graphics/IBaseCanvasExt$RealPaintState;->colorFilterColor:I

    invoke-static {v1, v2}, Lcom/oplus/darkmode/OplusDarkModeUtils;->setColorFilterColor(Landroid/graphics/ColorFilter;I)V

    goto :goto_2

    .line 663
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v1

    instance-of v1, v1, Landroid/graphics/BlendModeColorFilter;

    if-eqz v1, :cond_5

    .line 664
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v1

    iget v2, p2, Landroid/graphics/IBaseCanvasExt$RealPaintState;->colorFilterColor:I

    invoke-static {v1, v2}, Lcom/oplus/darkmode/OplusDarkModeUtils;->setColorFilterColor(Landroid/graphics/ColorFilter;I)V

    .line 666
    :cond_5
    :goto_2
    return-void

    .line 645
    .end local v0    # "shader":Landroid/graphics/Shader;
    :cond_6
    :goto_3
    return-void
.end method

.method public whitelist setBackgroundMaxL(F)V
    .locals 0
    .param p1, "value"    # F

    .line 52
    iput p1, p0, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->mBackgroundMaxL:F

    .line 53
    return-void
.end method

.method public whitelist setForegroundMinL(F)V
    .locals 0
    .param p1, "value"    # F

    .line 64
    iput p1, p0, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->mForegroundMinL:F

    .line 65
    return-void
.end method

.method public whitelist setIsSupportDarkModeStatus(I)V
    .locals 1
    .param p1, "isSupportDarkMode"    # I

    .line 71
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/oplus/darkmode/OplusDarkModeThirdInvertManager;->mIsAppSupportDarkMode:Z

    .line 72
    return-void
.end method
