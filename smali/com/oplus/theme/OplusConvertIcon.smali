.class public final Lcom/oplus/theme/OplusConvertIcon;
.super Ljava/lang/Object;
.source "OplusConvertIcon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/theme/OplusConvertIcon$IconBgType;
    }
.end annotation


# static fields
.field private static final blacklist COVER_ICON_RADIO:F = 0.62f

.field private static final blacklist DARKMODE_ICON_TRANSLATE_BIT_LENGTH:I = 0x3d

.field private static final blacklist DEBUG_ENABLE:Z

.field private static final blacklist DEBUG_NORMAL:Z

.field private static final blacklist DEFAULT_RELATIVE_BRIGHTNESS:F = 0.84f

.field private static final blacklist FLOAT_OFFSET:F = 0.5f

.field private static final blacklist ICON_SIZE_RADIO_OVER_DENSITY_400:F = 1.055f

.field private static final blacklist IPHONE_STYLE_BG_NAME:Ljava/lang/String; = "iphone_style_bg.png"

.field private static final blacklist IPHONE_STYLE_FG_NAME:Ljava/lang/String; = "iphone_style_fg.png"

.field private static final blacklist NEW_IPHONE_STYLE_BG_NAME:Ljava/lang/String; = "new_iphone_style_bg.png"

.field private static final blacklist NEW_IPHONE_STYLE_MASK_NAME:Ljava/lang/String; = "new_iphone_style_mask.png"

.field private static final blacklist NORMAL_ICON_SIZE:I = 0xa8

.field private static final blacklist NORMAL_SCREEN_WIDTH:I = 0x438

.field private static final blacklist TAG:Ljava/lang/String; = "OplusConvertIcon"

.field private static final blacklist THEME_ICON_BIT:I = 0xffff

.field private static final blacklist THEME_ICON_OFFSET:I = 0x20

.field private static final blacklist THEME_ICON_SCALE_MIN:F = 0.3f

.field private static final blacklist THEME_ICON_SIZE_DIV:F = 100.0f

.field private static final blacklist THEME_ICON_SIZE_RANGE:I = 0x20

.field private static blacklist mUserId:I

.field private static final blacklist sCanvas:Landroid/graphics/Canvas;

.field private static blacklist sConfigScale:F

.field private static blacklist sCoverBackgroundPic:Ljava/lang/String;

.field private static blacklist sDarkModeColorFilter:Landroid/graphics/LightingColorFilter;

.field private static blacklist sDetectMaskBorderOffset:I

.field private static final blacklist sDrawableDirs:[Ljava/lang/String;

.field private static blacklist sIconBackground:Landroid/graphics/drawable/Drawable;

.field private static blacklist sIconBgType:Lcom/oplus/theme/OplusConvertIcon$IconBgType;

.field private static blacklist sIconForeground:Landroid/graphics/drawable/Drawable;

.field private static blacklist sIconHeight:I

.field private static blacklist sIconLeft:I

.field private static blacklist sIconSize:I

.field private static blacklist sIconTop:I

.field private static blacklist sIconWidth:I

.field private static blacklist sMaskBackgroundPic:Ljava/lang/String;

.field private static blacklist sMaskBitmap:Landroid/graphics/Bitmap;

.field private static blacklist sMaskForegroundPic:Ljava/lang/String;

.field private static blacklist sNeedDrawForeground:Z

.field private static final blacklist sOldBounds:Landroid/graphics/Rect;

.field private static blacklist sPaint:Landroid/graphics/Paint;

.field private static blacklist sThemeParamScale:I

.field private static blacklist sThemeParamXOffset:I

.field private static blacklist sThemeParamYOffset:I

.field private static blacklist sThemeScale:F


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 4

    .line 60
    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oplus/theme/OplusConvertIcon;->DEBUG_ENABLE:Z

    .line 61
    sput-boolean v0, Lcom/oplus/theme/OplusConvertIcon;->DEBUG_NORMAL:Z

    .line 67
    const-string v0, "res/drawable-hdpi/"

    const-string v2, "res/drawable-xhdpi/"

    const-string v3, "res/drawable-xxhdpi/"

    filled-new-array {v0, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/theme/OplusConvertIcon;->sDrawableDirs:[Ljava/lang/String;

    .line 85
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/oplus/theme/OplusConvertIcon;->sOldBounds:Landroid/graphics/Rect;

    .line 86
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lcom/oplus/theme/OplusConvertIcon;->sCanvas:Landroid/graphics/Canvas;

    .line 88
    const/16 v2, 0x80

    sput v2, Lcom/oplus/theme/OplusConvertIcon;->sThemeParamScale:I

    .line 89
    sput v1, Lcom/oplus/theme/OplusConvertIcon;->sThemeParamXOffset:I

    .line 90
    sput v1, Lcom/oplus/theme/OplusConvertIcon;->sThemeParamYOffset:I

    .line 91
    const/16 v2, 0xa

    sput v2, Lcom/oplus/theme/OplusConvertIcon;->sDetectMaskBorderOffset:I

    .line 93
    const/4 v2, -0x1

    sput v2, Lcom/oplus/theme/OplusConvertIcon;->sIconSize:I

    .line 94
    sput v2, Lcom/oplus/theme/OplusConvertIcon;->sIconWidth:I

    .line 95
    sput v2, Lcom/oplus/theme/OplusConvertIcon;->sIconHeight:I

    .line 96
    sput v1, Lcom/oplus/theme/OplusConvertIcon;->sIconLeft:I

    .line 97
    sput v1, Lcom/oplus/theme/OplusConvertIcon;->sIconTop:I

    .line 99
    const/4 v2, 0x0

    sput v2, Lcom/oplus/theme/OplusConvertIcon;->sConfigScale:F

    .line 100
    const/high16 v2, 0x3f800000    # 1.0f

    sput v2, Lcom/oplus/theme/OplusConvertIcon;->sThemeScale:F

    .line 102
    const/4 v2, 0x0

    sput-object v2, Lcom/oplus/theme/OplusConvertIcon;->sMaskBackgroundPic:Ljava/lang/String;

    .line 103
    sput-object v2, Lcom/oplus/theme/OplusConvertIcon;->sMaskForegroundPic:Ljava/lang/String;

    .line 104
    sput-object v2, Lcom/oplus/theme/OplusConvertIcon;->sCoverBackgroundPic:Ljava/lang/String;

    .line 106
    sput-object v2, Lcom/oplus/theme/OplusConvertIcon;->sIconBackground:Landroid/graphics/drawable/Drawable;

    .line 107
    sput-object v2, Lcom/oplus/theme/OplusConvertIcon;->sIconForeground:Landroid/graphics/drawable/Drawable;

    .line 108
    sput-object v2, Lcom/oplus/theme/OplusConvertIcon;->sMaskBitmap:Landroid/graphics/Bitmap;

    .line 109
    sput-boolean v1, Lcom/oplus/theme/OplusConvertIcon;->sNeedDrawForeground:Z

    .line 111
    sget-object v1, Lcom/oplus/theme/OplusConvertIcon$IconBgType;->MASK:Lcom/oplus/theme/OplusConvertIcon$IconBgType;

    sput-object v1, Lcom/oplus/theme/OplusConvertIcon;->sIconBgType:Lcom/oplus/theme/OplusConvertIcon$IconBgType;

    .line 114
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lcom/oplus/theme/OplusConvertIcon;->sPaint:Landroid/graphics/Paint;

    .line 117
    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x4

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 118
    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist computeDesity(Landroid/graphics/Bitmap;Landroid/content/res/Resources;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "resources"    # Landroid/content/res/Resources;

    .line 751
    if-nez p1, :cond_0

    .line 752
    return-object p0

    .line 754
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 755
    .local v0, "dstDensity":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v1

    .line 756
    .local v1, "density":I
    const/4 v2, 0x0

    .line 757
    .local v2, "scale":F
    if-eqz v1, :cond_1

    .line 758
    int-to-float v3, v0

    int-to-float v4, v1

    div-float v2, v3, v4

    .line 760
    :cond_1
    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 761
    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_2

    .line 762
    return-object p0

    .line 764
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 765
    .local v3, "dstW":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    add-float/2addr v5, v4

    float-to-int v4, v5

    .line 766
    .local v4, "dstH":I
    const/4 v5, 0x1

    invoke-static {p0, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    return-object v5
.end method

.method public static whitelist convertIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Z)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "isThirdPart"    # Z

    .line 129
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/oplus/theme/OplusConvertIcon;->convertIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;ZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized whitelist convertIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;ZZ)Landroid/graphics/Bitmap;
    .locals 16
    .param p0, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "isThirdPart"    # Z
    .param p3, "forceCutAndScale"    # Z

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-class v3, Lcom/oplus/theme/OplusConvertIcon;

    monitor-enter v3

    .line 133
    const/4 v0, 0x0

    if-eqz v1, :cond_11

    if-nez v2, :cond_0

    goto/16 :goto_4

    .line 137
    :cond_0
    :try_start_0
    sget-object v4, Lcom/oplus/theme/OplusConvertIcon;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 138
    :try_start_1
    invoke-static/range {p1 .. p1}, Lcom/oplus/theme/OplusConvertIcon;->initIconSize(Landroid/content/res/Resources;)V

    .line 140
    sget v5, Lcom/oplus/theme/OplusConvertIcon;->sIconWidth:I

    .line 141
    .local v5, "width":I
    sget v6, Lcom/oplus/theme/OplusConvertIcon;->sIconHeight:I

    .line 142
    .local v6, "height":I
    const/4 v7, 0x0

    .line 143
    .local v7, "originalBitmap":Landroid/graphics/Bitmap;
    instance-of v8, v1, Landroid/graphics/drawable/PaintDrawable;

    const/4 v9, 0x0

    if-eqz v8, :cond_1

    .line 145
    move-object v8, v1

    check-cast v8, Landroid/graphics/drawable/PaintDrawable;

    .line 146
    .local v8, "painter":Landroid/graphics/drawable/PaintDrawable;
    invoke-virtual {v8, v5}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 147
    invoke-virtual {v8, v6}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 148
    .end local v8    # "painter":Landroid/graphics/drawable/PaintDrawable;
    goto/16 :goto_0

    :cond_1
    instance-of v8, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v8, :cond_4

    .line 150
    move-object v8, v1

    check-cast v8, Landroid/graphics/drawable/BitmapDrawable;

    .line 151
    .local v8, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-static {v10, v2}, Lcom/oplus/theme/OplusConvertIcon;->computeDesity(Landroid/graphics/Bitmap;Landroid/content/res/Resources;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 153
    .local v10, "bitmap":Landroid/graphics/Bitmap;
    if-eqz p2, :cond_3

    .line 154
    move-object v7, v10

    .line 157
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v11

    .line 160
    .local v11, "bitmapConfig":Landroid/graphics/Bitmap$Config;
    if-eqz v11, :cond_2

    sget-object v12, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v12, v11}, Landroid/graphics/Bitmap$Config;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 161
    :cond_2
    const-string v12, "OplusConvertIcon"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "convertIconBitmap...set the bitmap config to ARGB_8888. bitmapConfig = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object v11, v12

    .line 163
    const/4 v12, 0x1

    invoke-virtual {v7, v11, v12}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v12

    move-object v7, v12

    .line 168
    .end local v8    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v10    # "bitmap":Landroid/graphics/Bitmap;
    .end local v11    # "bitmapConfig":Landroid/graphics/Bitmap$Config;
    :cond_3
    goto :goto_0

    :cond_4
    instance-of v8, v1, Landroid/graphics/drawable/NinePatchDrawable;

    if-nez v8, :cond_5

    instance-of v8, v1, Landroid/graphics/drawable/VectorDrawable;

    if-nez v8, :cond_5

    instance-of v8, v1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v8, :cond_3

    .line 169
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    .line 170
    .local v8, "intricW":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    .line 171
    .local v10, "intricH":I
    if-ltz v8, :cond_10

    if-gez v10, :cond_6

    goto/16 :goto_3

    .line 175
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    move-object v7, v11

    .line 176
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 177
    .local v11, "canvas":Landroid/graphics/Canvas;
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    invoke-virtual {v1, v9, v9, v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 178
    invoke-virtual {v1, v11}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 180
    .end local v8    # "intricW":I
    .end local v10    # "intricH":I
    .end local v11    # "canvas":Landroid/graphics/Canvas;
    :goto_0
    sget v8, Lcom/oplus/theme/OplusConvertIcon;->sIconWidth:I

    if-gtz v8, :cond_7

    .line 181
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    return-object v0

    .line 183
    :cond_7
    :try_start_2
    sget v10, Lcom/oplus/theme/OplusConvertIcon;->sIconHeight:I

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 184
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_8

    .line 185
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 187
    :cond_8
    move-object v10, v4

    .line 188
    .local v10, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v10, v8}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 189
    new-instance v11, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v12, 0x3

    invoke-direct {v11, v9, v12}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v10, v11}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 191
    if-eqz p2, :cond_c

    .line 192
    invoke-static/range {p1 .. p1}, Lcom/oplus/theme/OplusConvertIcon;->setDarkFilterToPaint(Landroid/content/res/Resources;)V

    .line 195
    if-eqz p3, :cond_9

    .line 196
    invoke-static {v1, v7, v2, v10}, Lcom/oplus/theme/OplusConvertIcon;->cutAndScaleBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Landroid/content/res/Resources;Landroid/graphics/Canvas;)V

    goto/16 :goto_2

    .line 199
    :cond_9
    sget-object v0, Lcom/oplus/theme/OplusConvertIcon;->sIconBgType:Lcom/oplus/theme/OplusConvertIcon$IconBgType;

    sget-object v9, Lcom/oplus/theme/OplusConvertIcon$IconBgType;->COVER:Lcom/oplus/theme/OplusConvertIcon$IconBgType;

    if-ne v0, v9, :cond_a

    .line 200
    invoke-static {v1, v7, v2, v10}, Lcom/oplus/theme/OplusConvertIcon;->coverBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Landroid/content/res/Resources;Landroid/graphics/Canvas;)V

    goto :goto_2

    .line 201
    :cond_a
    sget-object v0, Lcom/oplus/theme/OplusConvertIcon;->sIconBgType:Lcom/oplus/theme/OplusConvertIcon$IconBgType;

    sget-object v9, Lcom/oplus/theme/OplusConvertIcon$IconBgType;->MASK:Lcom/oplus/theme/OplusConvertIcon$IconBgType;

    if-ne v0, v9, :cond_b

    sget-object v0, Lcom/oplus/theme/OplusConvertIcon;->sMaskBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_b

    .line 202
    invoke-static {v1, v7, v2, v10}, Lcom/oplus/theme/OplusConvertIcon;->maskBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Landroid/content/res/Resources;Landroid/graphics/Canvas;)V

    goto :goto_2

    .line 204
    :cond_b
    invoke-static {v1, v7, v2, v10}, Lcom/oplus/theme/OplusConvertIcon;->cutAndScaleBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Landroid/content/res/Resources;Landroid/graphics/Canvas;)V

    goto :goto_2

    .line 208
    :cond_c
    invoke-static {v2, v1}, Lcom/oplus/theme/OplusConvertIcon;->setDarkFilterToDrawable(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    .line 209
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    .line 210
    .local v9, "sourceWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    .line 211
    .local v11, "sourceHeight":I
    if-lez v9, :cond_e

    if-lez v11, :cond_e

    .line 212
    int-to-float v12, v9

    int-to-float v13, v11

    div-float/2addr v12, v13

    .line 213
    .local v12, "ratio":F
    if-le v9, v11, :cond_d

    .line 215
    int-to-float v13, v5

    div-float/2addr v13, v12

    float-to-int v6, v13

    goto :goto_1

    .line 216
    :cond_d
    if-le v11, v9, :cond_e

    .line 218
    int-to-float v13, v6

    mul-float/2addr v13, v12

    float-to-int v5, v13

    .line 222
    .end local v12    # "ratio":F
    :cond_e
    :goto_1
    sget v12, Lcom/oplus/theme/OplusConvertIcon;->sIconWidth:I

    sub-int/2addr v12, v5

    div-int/lit8 v12, v12, 0x2

    .line 223
    .local v12, "left":I
    sget v13, Lcom/oplus/theme/OplusConvertIcon;->sIconHeight:I

    sub-int/2addr v13, v6

    div-int/lit8 v13, v13, 0x2

    .line 225
    .local v13, "top":I
    sget v14, Lcom/oplus/theme/OplusConvertIcon;->sConfigScale:F

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-eqz v14, :cond_f

    .line 226
    sget v14, Lcom/oplus/theme/OplusConvertIcon;->sIconLeft:I

    int-to-float v14, v14

    sget v15, Lcom/oplus/theme/OplusConvertIcon;->sIconTop:I

    int-to-float v15, v15

    invoke-virtual {v10, v14, v15}, Landroid/graphics/Canvas;->translate(FF)V

    .line 227
    sget v14, Lcom/oplus/theme/OplusConvertIcon;->sConfigScale:F

    invoke-virtual {v10, v14, v14}, Landroid/graphics/Canvas;->scale(FF)V

    .line 229
    :cond_f
    sget-object v14, Lcom/oplus/theme/OplusConvertIcon;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 230
    add-int v15, v12, v5

    add-int v0, v13, v6

    invoke-virtual {v1, v12, v13, v15, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 231
    invoke-virtual {v1, v10}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 232
    invoke-virtual {v1, v14}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 233
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 235
    .end local v9    # "sourceWidth":I
    .end local v11    # "sourceHeight":I
    .end local v12    # "left":I
    .end local v13    # "top":I
    :goto_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    return-object v8

    .line 172
    .local v8, "intricW":I
    .local v10, "intricH":I
    :cond_10
    :goto_3
    :try_start_3
    const-string v0, "OplusConvertIcon"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "convertIconBitmap error icon size = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v3

    const/4 v0, 0x0

    return-object v0

    .line 236
    .end local v5    # "width":I
    .end local v6    # "height":I
    .end local v7    # "originalBitmap":Landroid/graphics/Bitmap;
    .end local v8    # "intricW":I
    .end local v10    # "intricH":I
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 132
    .end local p0    # "icon":Landroid/graphics/drawable/Drawable;
    .end local p1    # "res":Landroid/content/res/Resources;
    .end local p2    # "isThirdPart":Z
    .end local p3    # "forceCutAndScale":Z
    :catchall_1
    move-exception v0

    monitor-exit v3

    throw v0

    .line 134
    .restart local p0    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local p1    # "res":Landroid/content/res/Resources;
    .restart local p2    # "isThirdPart":Z
    .restart local p3    # "forceCutAndScale":Z
    :cond_11
    :goto_4
    monitor-exit v3

    const/4 v0, 0x0

    return-object v0
.end method

.method static blacklist coverBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Landroid/content/res/Resources;Landroid/graphics/Canvas;)V
    .locals 8
    .param p0, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p1, "originalBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "canvas"    # Landroid/graphics/Canvas;

    .line 269
    if-eqz p1, :cond_5

    .line 271
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    if-nez v0, :cond_0

    .line 272
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 274
    :cond_0
    sget-object v0, Lcom/oplus/theme/OplusConvertIcon;->sIconBackground:Landroid/graphics/drawable/Drawable;

    .line 275
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_1

    .line 276
    sget-object v1, Lcom/oplus/theme/OplusConvertIcon;->sCoverBackgroundPic:Ljava/lang/String;

    sget v2, Lcom/oplus/theme/OplusConvertIcon;->mUserId:I

    invoke-static {p2, v1, v2}, Lcom/oplus/theme/OplusThirdPartUtil;->getLauncherDrawableByNameForUser(Landroid/content/res/Resources;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 278
    :cond_1
    if-eqz v0, :cond_2

    .line 279
    sget-object v1, Lcom/oplus/theme/OplusConvertIcon;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 280
    sget v2, Lcom/oplus/theme/OplusConvertIcon;->sIconWidth:I

    sget v3, Lcom/oplus/theme/OplusConvertIcon;->sIconHeight:I

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 281
    invoke-virtual {v0, p3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 282
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 284
    :cond_2
    invoke-static {}, Lcom/oplus/theme/OplusMaskBitmapUtilities;->getInstance()Lcom/oplus/theme/OplusMaskBitmapUtilities;

    move-result-object v1

    .line 289
    .local v1, "mbu":Lcom/oplus/theme/OplusMaskBitmapUtilities;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, p1}, Lcom/oplus/theme/OplusMaskBitmapUtilities;->cutAndScaleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    :cond_3
    move-object v2, p1

    .line 291
    .local v2, "scale":Landroid/graphics/Bitmap;
    :goto_0
    if-eqz v2, :cond_4

    .line 292
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 293
    .local v3, "w":I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 294
    .local v4, "h":I
    sget v5, Lcom/oplus/theme/OplusConvertIcon;->sIconWidth:I

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    sget v6, Lcom/oplus/theme/OplusConvertIcon;->sThemeParamXOffset:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    sget v6, Lcom/oplus/theme/OplusConvertIcon;->sIconHeight:I

    sub-int/2addr v6, v4

    div-int/lit8 v6, v6, 0x2

    sget v7, Lcom/oplus/theme/OplusConvertIcon;->sThemeParamYOffset:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    sget-object v7, Lcom/oplus/theme/OplusConvertIcon;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {p3, v2, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 296
    .end local v3    # "w":I
    .end local v4    # "h":I
    goto :goto_1

    .line 297
    :cond_4
    const-string v3, "OplusConvertIcon"

    const-string v4, "coverBitmap -- scale == null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    .end local v1    # "mbu":Lcom/oplus/theme/OplusMaskBitmapUtilities;
    .end local v2    # "scale":Landroid/graphics/Bitmap;
    :cond_5
    :goto_1
    sget-boolean v0, Lcom/oplus/theme/OplusConvertIcon;->sNeedDrawForeground:Z

    if-eqz v0, :cond_6

    .line 301
    invoke-static {p2, p3}, Lcom/oplus/theme/OplusConvertIcon;->drawForeground(Landroid/content/res/Resources;Landroid/graphics/Canvas;)V

    .line 303
    :cond_6
    return-void
.end method

.method static blacklist coverBitmapNoCut(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Landroid/content/res/Resources;Landroid/graphics/Canvas;)V
    .locals 10
    .param p0, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p1, "originalBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "canvas"    # Landroid/graphics/Canvas;

    .line 240
    if-eqz p1, :cond_2

    .line 241
    sget-object v0, Lcom/oplus/theme/OplusConvertIcon;->sCoverBackgroundPic:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/oplus/theme/OplusThirdPartUtil;->getLauncherDrawableByName(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 243
    .local v0, "sIconBackground":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 244
    sget-object v1, Lcom/oplus/theme/OplusConvertIcon;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 245
    sget v2, Lcom/oplus/theme/OplusConvertIcon;->sIconWidth:I

    sget v3, Lcom/oplus/theme/OplusConvertIcon;->sIconHeight:I

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 246
    invoke-virtual {v0, p3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 247
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 250
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 251
    .local v1, "f":F
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->xdpi:F

    const/high16 v3, 0x43c80000    # 400.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    sget-boolean v2, Lcom/oplus/theme/OplusThirdPartUtil;->mIsDefaultTheme:Z

    if-eqz v2, :cond_1

    .line 252
    const v1, 0x3f870a3d    # 1.055f

    .line 254
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 255
    .local v2, "sourceWidth":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 257
    .local v3, "sourceHeight":I
    int-to-float v4, v2

    mul-float/2addr v4, v1

    float-to-int v4, v4

    .line 258
    .local v4, "width":I
    int-to-float v5, v3

    mul-float/2addr v5, v1

    float-to-int v5, v5

    .line 260
    .local v5, "height":I
    sget v6, Lcom/oplus/theme/OplusConvertIcon;->sIconWidth:I

    sub-int/2addr v6, v4

    div-int/lit8 v6, v6, 0x2

    .line 261
    .local v6, "l":I
    sget v7, Lcom/oplus/theme/OplusConvertIcon;->sIconHeight:I

    sub-int/2addr v7, v5

    div-int/lit8 v7, v7, 0x2

    .line 262
    .local v7, "t":I
    add-int v8, v6, v4

    add-int v9, v7, v5

    invoke-virtual {p0, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 263
    invoke-virtual {p0, p3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 265
    .end local v0    # "sIconBackground":Landroid/graphics/drawable/Drawable;
    .end local v1    # "f":F
    .end local v2    # "sourceWidth":I
    .end local v3    # "sourceHeight":I
    .end local v4    # "width":I
    .end local v5    # "height":I
    .end local v6    # "l":I
    .end local v7    # "t":I
    :cond_2
    return-void
.end method

.method static blacklist cutAndScaleBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Landroid/content/res/Resources;Landroid/graphics/Canvas;)V
    .locals 7
    .param p0, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p1, "originalBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "canvas"    # Landroid/graphics/Canvas;

    .line 307
    if-eqz p1, :cond_3

    .line 309
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    if-nez v0, :cond_0

    .line 310
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 312
    :cond_0
    invoke-static {}, Lcom/oplus/theme/OplusMaskBitmapUtilities;->getInstance()Lcom/oplus/theme/OplusMaskBitmapUtilities;

    move-result-object v0

    .line 318
    .local v0, "mbu":Lcom/oplus/theme/OplusMaskBitmapUtilities;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1}, Lcom/oplus/theme/OplusMaskBitmapUtilities;->cutAndScaleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, p1

    .line 321
    .local v1, "scale":Landroid/graphics/Bitmap;
    :goto_0
    if-eqz v1, :cond_2

    .line 322
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 323
    .local v2, "w":I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 324
    .local v3, "h":I
    sget v4, Lcom/oplus/theme/OplusConvertIcon;->sIconWidth:I

    sub-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sget v5, Lcom/oplus/theme/OplusConvertIcon;->sIconHeight:I

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sget-object v6, Lcom/oplus/theme/OplusConvertIcon;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {p3, v1, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 325
    .end local v2    # "w":I
    .end local v3    # "h":I
    goto :goto_1

    .line 326
    :cond_2
    const-string v2, "OplusConvertIcon"

    const-string v3, "cutAndScaleBitmap -- scale == null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    .end local v0    # "mbu":Lcom/oplus/theme/OplusMaskBitmapUtilities;
    .end local v1    # "scale":Landroid/graphics/Bitmap;
    :cond_3
    :goto_1
    return-void
.end method

.method public static whitelist drawForeground(Landroid/content/res/Resources;Landroid/graphics/Canvas;)V
    .locals 5
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 399
    sget-object v0, Lcom/oplus/theme/OplusConvertIcon;->sIconForeground:Landroid/graphics/drawable/Drawable;

    .line 400
    .local v0, "foreground":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 401
    sget-object v1, Lcom/oplus/theme/OplusConvertIcon;->sMaskForegroundPic:Ljava/lang/String;

    sget v2, Lcom/oplus/theme/OplusConvertIcon;->mUserId:I

    invoke-static {p0, v1, v2}, Lcom/oplus/theme/OplusThirdPartUtil;->getLauncherDrawableByNameForUser(Landroid/content/res/Resources;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 403
    :cond_0
    if-eqz v0, :cond_1

    .line 404
    invoke-static {p0, v0}, Lcom/oplus/theme/OplusConvertIcon;->setDarkFilterToDrawable(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    .line 405
    sget-object v1, Lcom/oplus/theme/OplusConvertIcon;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 406
    sget v2, Lcom/oplus/theme/OplusConvertIcon;->sIconWidth:I

    sget v3, Lcom/oplus/theme/OplusConvertIcon;->sIconHeight:I

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 407
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 408
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 410
    :cond_1
    return-void
.end method

.method private static blacklist float2int(F)I
    .locals 4
    .param p0, "f"    # F

    .line 827
    float-to-int v0, p0

    .line 828
    .local v0, "i":I
    int-to-float v1, v0

    sub-float v1, p0, v1

    .line 829
    .local v1, "offset":F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 830
    add-int/lit8 v0, v0, 0x1

    .line 832
    :cond_0
    return v0
.end method

.method private static blacklist getDarkModeColorInCurrentContrast(F)I
    .locals 5
    .param p0, "currentContrast"    # F

    .line 815
    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p0, v0

    if-nez v0, :cond_0

    .line 816
    const/16 v0, 0xd6

    .local v0, "currentColorR":I
    goto :goto_0

    .line 818
    .end local v0    # "currentColorR":I
    :cond_0
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p0

    float-to-int v0, v0

    .line 820
    .restart local v0    # "currentColorR":I
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 821
    .local v1, "colorR":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 822
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 823
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    return v3
.end method

.method public static whitelist getIconBgType(Landroid/content/res/Resources;)Lcom/oplus/theme/OplusConvertIcon$IconBgType;
    .locals 9
    .param p0, "resources"    # Landroid/content/res/Resources;

    .line 497
    const-string v0, "getIconBgType: e = "

    const-string v1, "OplusConvertIcon"

    sget-object v2, Lcom/oplus/theme/OplusThirdPartUtil;->sThemePath:Ljava/lang/String;

    .line 499
    .local v2, "path":Ljava/lang/String;
    const/4 v3, 0x0

    .line 500
    .local v3, "zipFile":Ljava/util/zip/ZipFile;
    invoke-static {v2}, Lcom/oplus/theme/OplusThirdPartUtil;->getLauncherName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 502
    .local v4, "launcherName":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/util/zip/ZipFile;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    .line 503
    const-string v5, "iphone_style_bg.png"

    invoke-static {v3, v5}, Lcom/oplus/theme/OplusConvertIcon;->judgePicExist(Ljava/util/zip/ZipFile;Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, 0x1

    const-string v7, "iphone_style_fg.png"

    if-eqz v5, :cond_1

    .line 504
    :try_start_1
    invoke-static {v3, v7}, Lcom/oplus/theme/OplusConvertIcon;->judgePicExist(Ljava/util/zip/ZipFile;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 505
    sput-boolean v6, Lcom/oplus/theme/OplusConvertIcon;->sNeedDrawForeground:Z

    .line 507
    :cond_0
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V

    .line 508
    sget-object v5, Lcom/oplus/theme/OplusConvertIcon$IconBgType;->COVER:Lcom/oplus/theme/OplusConvertIcon$IconBgType;

    sput-object v5, Lcom/oplus/theme/OplusConvertIcon;->sIconBgType:Lcom/oplus/theme/OplusConvertIcon$IconBgType;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 523
    nop

    .line 524
    :try_start_2
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 528
    goto :goto_0

    .line 526
    :catch_0
    move-exception v6

    .line 527
    .local v6, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    .end local v6    # "e":Ljava/io/IOException;
    :goto_0
    return-object v5

    .line 510
    :cond_1
    :try_start_3
    const-string v5, "new_iphone_style_mask.png"

    invoke-static {v3, v5}, Lcom/oplus/theme/OplusConvertIcon;->judgePicExist(Ljava/util/zip/ZipFile;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 511
    invoke-static {v3, v7}, Lcom/oplus/theme/OplusConvertIcon;->judgePicExist(Ljava/util/zip/ZipFile;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 512
    sput-boolean v6, Lcom/oplus/theme/OplusConvertIcon;->sNeedDrawForeground:Z

    .line 514
    :cond_2
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V

    .line 515
    sget-object v5, Lcom/oplus/theme/OplusConvertIcon$IconBgType;->MASK:Lcom/oplus/theme/OplusConvertIcon$IconBgType;

    sput-object v5, Lcom/oplus/theme/OplusConvertIcon;->sIconBgType:Lcom/oplus/theme/OplusConvertIcon$IconBgType;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 523
    nop

    .line 524
    :try_start_4
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 528
    goto :goto_1

    .line 526
    :catch_1
    move-exception v6

    .line 527
    .restart local v6    # "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    .end local v6    # "e":Ljava/io/IOException;
    :goto_1
    return-object v5

    .line 523
    :cond_3
    nop

    .line 524
    :try_start_5
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 528
    goto :goto_2

    .line 526
    :catch_2
    move-exception v5

    .line 527
    .local v5, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    .end local v5    # "e":Ljava/io/IOException;
    nop

    .line 531
    :goto_2
    sget-object v0, Lcom/oplus/theme/OplusConvertIcon$IconBgType;->SCALE:Lcom/oplus/theme/OplusConvertIcon$IconBgType;

    sput-object v0, Lcom/oplus/theme/OplusConvertIcon;->sIconBgType:Lcom/oplus/theme/OplusConvertIcon$IconBgType;

    return-object v0

    .line 522
    :catchall_0
    move-exception v5

    goto :goto_5

    .line 517
    :catch_3
    move-exception v5

    .line 518
    .restart local v5    # "e":Ljava/io/IOException;
    :try_start_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    sget-object v6, Lcom/oplus/theme/OplusConvertIcon$IconBgType;->MASK:Lcom/oplus/theme/OplusConvertIcon$IconBgType;

    sput-object v6, Lcom/oplus/theme/OplusConvertIcon;->sIconBgType:Lcom/oplus/theme/OplusConvertIcon$IconBgType;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 523
    if-eqz v3, :cond_4

    .line 524
    :try_start_7
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_3

    .line 526
    :catch_4
    move-exception v7

    .line 527
    .local v7, "e":Ljava/io/IOException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 528
    .end local v7    # "e":Ljava/io/IOException;
    :cond_4
    :goto_3
    nop

    .line 520
    :goto_4
    return-object v6

    .line 523
    .end local v5    # "e":Ljava/io/IOException;
    :goto_5
    if-eqz v3, :cond_5

    .line 524
    :try_start_8
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_6

    .line 526
    :catch_5
    move-exception v6

    .line 527
    .restart local v6    # "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 528
    .end local v6    # "e":Ljava/io/IOException;
    :cond_5
    :goto_6
    nop

    .line 529
    :goto_7
    throw v5
.end method

.method public static whitelist getIconBgTypeForUser(Landroid/content/res/Resources;I)Lcom/oplus/theme/OplusConvertIcon$IconBgType;
    .locals 9
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "userId"    # I

    .line 541
    const-string v0, "getIconBgType: e = "

    const-string v1, "OplusConvertIcon"

    sget-object v2, Lcom/oplus/theme/OplusThirdPartUtil;->sThemePath:Ljava/lang/String;

    .line 542
    .local v2, "path":Ljava/lang/String;
    const/4 v3, 0x0

    .line 543
    .local v3, "zipFile":Ljava/util/zip/ZipFile;
    invoke-static {v2}, Lcom/oplus/theme/OplusThirdPartUtil;->getLauncherName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 545
    .local v4, "launcherName":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/util/zip/ZipFile;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    .line 546
    const-string v5, "iphone_style_bg.png"

    invoke-static {v3, v5}, Lcom/oplus/theme/OplusConvertIcon;->judgePicExist(Ljava/util/zip/ZipFile;Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, 0x1

    const-string v7, "iphone_style_fg.png"

    if-eqz v5, :cond_1

    .line 547
    :try_start_1
    invoke-static {v3, v7}, Lcom/oplus/theme/OplusConvertIcon;->judgePicExist(Ljava/util/zip/ZipFile;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 548
    sput-boolean v6, Lcom/oplus/theme/OplusConvertIcon;->sNeedDrawForeground:Z

    .line 550
    :cond_0
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V

    .line 551
    sget-object v5, Lcom/oplus/theme/OplusConvertIcon$IconBgType;->COVER:Lcom/oplus/theme/OplusConvertIcon$IconBgType;

    sput-object v5, Lcom/oplus/theme/OplusConvertIcon;->sIconBgType:Lcom/oplus/theme/OplusConvertIcon$IconBgType;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 566
    nop

    .line 567
    :try_start_2
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 571
    goto :goto_0

    .line 569
    :catch_0
    move-exception v6

    .line 570
    .local v6, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    .end local v6    # "e":Ljava/io/IOException;
    :goto_0
    return-object v5

    .line 553
    :cond_1
    :try_start_3
    const-string v5, "new_iphone_style_mask.png"

    invoke-static {v3, v5}, Lcom/oplus/theme/OplusConvertIcon;->judgePicExist(Ljava/util/zip/ZipFile;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 554
    invoke-static {v3, v7}, Lcom/oplus/theme/OplusConvertIcon;->judgePicExist(Ljava/util/zip/ZipFile;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 555
    sput-boolean v6, Lcom/oplus/theme/OplusConvertIcon;->sNeedDrawForeground:Z

    .line 557
    :cond_2
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V

    .line 558
    sget-object v5, Lcom/oplus/theme/OplusConvertIcon$IconBgType;->MASK:Lcom/oplus/theme/OplusConvertIcon$IconBgType;

    sput-object v5, Lcom/oplus/theme/OplusConvertIcon;->sIconBgType:Lcom/oplus/theme/OplusConvertIcon$IconBgType;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 566
    nop

    .line 567
    :try_start_4
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 571
    goto :goto_1

    .line 569
    :catch_1
    move-exception v6

    .line 570
    .restart local v6    # "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    .end local v6    # "e":Ljava/io/IOException;
    :goto_1
    return-object v5

    .line 566
    :cond_3
    nop

    .line 567
    :try_start_5
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 571
    goto :goto_2

    .line 569
    :catch_2
    move-exception v5

    .line 570
    .local v5, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    .end local v5    # "e":Ljava/io/IOException;
    nop

    .line 574
    :goto_2
    sget-object v0, Lcom/oplus/theme/OplusConvertIcon$IconBgType;->SCALE:Lcom/oplus/theme/OplusConvertIcon$IconBgType;

    sput-object v0, Lcom/oplus/theme/OplusConvertIcon;->sIconBgType:Lcom/oplus/theme/OplusConvertIcon$IconBgType;

    return-object v0

    .line 565
    :catchall_0
    move-exception v5

    goto :goto_5

    .line 560
    :catch_3
    move-exception v5

    .line 561
    .restart local v5    # "e":Ljava/io/IOException;
    :try_start_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    sget-object v6, Lcom/oplus/theme/OplusConvertIcon$IconBgType;->MASK:Lcom/oplus/theme/OplusConvertIcon$IconBgType;

    sput-object v6, Lcom/oplus/theme/OplusConvertIcon;->sIconBgType:Lcom/oplus/theme/OplusConvertIcon$IconBgType;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 566
    if-eqz v3, :cond_4

    .line 567
    :try_start_7
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_3

    .line 569
    :catch_4
    move-exception v7

    .line 570
    .local v7, "e":Ljava/io/IOException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 571
    .end local v7    # "e":Ljava/io/IOException;
    :cond_4
    :goto_3
    nop

    .line 563
    :goto_4
    return-object v6

    .line 566
    .end local v5    # "e":Ljava/io/IOException;
    :goto_5
    if-eqz v3, :cond_5

    .line 567
    :try_start_8
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_6

    .line 569
    :catch_5
    move-exception v6

    .line 570
    .restart local v6    # "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 571
    .end local v6    # "e":Ljava/io/IOException;
    :cond_5
    :goto_6
    nop

    .line 572
    :goto_7
    throw v5
.end method

.method public static whitelist getIconSize()I
    .locals 1

    .line 672
    sget v0, Lcom/oplus/theme/OplusConvertIcon;->sIconSize:I

    return v0
.end method

.method public static whitelist getMaskBitmap(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "picName"    # Ljava/lang/String;

    .line 648
    sget-object v0, Lcom/oplus/theme/OplusConvertIcon;->sMaskBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 649
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 650
    sput-object v1, Lcom/oplus/theme/OplusConvertIcon;->sMaskBitmap:Landroid/graphics/Bitmap;

    .line 652
    :cond_0
    invoke-static {p0}, Lcom/oplus/theme/OplusConvertIcon;->initIconSize(Landroid/content/res/Resources;)V

    .line 653
    invoke-static {p0, p1}, Lcom/oplus/theme/OplusThirdPartUtil;->getLauncherDrawableByName(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 654
    .local v0, "mask":Landroid/graphics/drawable/Drawable;
    sget v2, Lcom/oplus/theme/OplusConvertIcon;->sIconWidth:I

    sget v3, Lcom/oplus/theme/OplusConvertIcon;->sIconHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lcom/oplus/theme/OplusConvertIcon;->sMaskBitmap:Landroid/graphics/Bitmap;

    .line 655
    sget-object v3, Lcom/oplus/theme/OplusConvertIcon;->sCanvas:Landroid/graphics/Canvas;

    .line 656
    .local v3, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v3, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 657
    if-eqz v0, :cond_1

    .line 658
    sget v2, Lcom/oplus/theme/OplusConvertIcon;->sIconWidth:I

    sget v4, Lcom/oplus/theme/OplusConvertIcon;->sIconHeight:I

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v5, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 659
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 661
    :cond_1
    const/high16 v2, -0x1000000

    invoke-virtual {v3, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 663
    :goto_0
    invoke-virtual {v3, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 664
    sget-object v1, Lcom/oplus/theme/OplusConvertIcon;->sMaskBitmap:Landroid/graphics/Bitmap;

    return-object v1
.end method

.method public static whitelist getMaskBitmapForUser(Landroid/content/res/Resources;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "picName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 623
    sget-object v0, Lcom/oplus/theme/OplusConvertIcon;->sMaskBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 624
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 625
    sput-object v1, Lcom/oplus/theme/OplusConvertIcon;->sMaskBitmap:Landroid/graphics/Bitmap;

    .line 627
    :cond_0
    invoke-static {p0}, Lcom/oplus/theme/OplusConvertIcon;->initIconSize(Landroid/content/res/Resources;)V

    .line 628
    invoke-static {p0, p1, p2}, Lcom/oplus/theme/OplusThirdPartUtil;->getLauncherDrawableByNameForUser(Landroid/content/res/Resources;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 629
    .local v0, "mask":Landroid/graphics/drawable/Drawable;
    sget v2, Lcom/oplus/theme/OplusConvertIcon;->sIconWidth:I

    sget v3, Lcom/oplus/theme/OplusConvertIcon;->sIconHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lcom/oplus/theme/OplusConvertIcon;->sMaskBitmap:Landroid/graphics/Bitmap;

    .line 630
    sget-object v2, Lcom/oplus/theme/OplusConvertIcon;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v2

    .line 631
    move-object v3, v2

    .line 632
    .local v3, "canvas":Landroid/graphics/Canvas;
    :try_start_0
    sget-object v4, Lcom/oplus/theme/OplusConvertIcon;->sMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 633
    if-eqz v0, :cond_1

    .line 634
    sget v4, Lcom/oplus/theme/OplusConvertIcon;->sIconWidth:I

    sget v5, Lcom/oplus/theme/OplusConvertIcon;->sIconHeight:I

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 635
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 637
    :cond_1
    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 639
    :goto_0
    invoke-virtual {v3, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 640
    .end local v3    # "canvas":Landroid/graphics/Canvas;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 641
    sget-object v1, Lcom/oplus/theme/OplusConvertIcon;->sMaskBitmap:Landroid/graphics/Bitmap;

    return-object v1

    .line 640
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static whitelist getThemeParamScale()I
    .locals 1

    .line 668
    sget v0, Lcom/oplus/theme/OplusConvertIcon;->sThemeParamScale:I

    return v0
.end method

.method public static whitelist hasInit()Z
    .locals 1

    .line 121
    sget-object v0, Lcom/oplus/theme/OplusConvertIcon;->sCoverBackgroundPic:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oplus/theme/OplusConvertIcon;->sMaskBackgroundPic:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oplus/theme/OplusConvertIcon;->sMaskForegroundPic:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 122
    const/4 v0, 0x0

    return v0

    .line 124
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static whitelist initConvertIcon(Landroid/content/res/Resources;)V
    .locals 0
    .param p0, "res"    # Landroid/content/res/Resources;

    .line 691
    return-void
.end method

.method public static declared-synchronized whitelist initConvertIconForUser(Landroid/content/res/Resources;I)V
    .locals 5
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "userId"    # I

    const-class v0, Lcom/oplus/theme/OplusConvertIcon;

    monitor-enter v0

    .line 676
    :try_start_0
    sput p1, Lcom/oplus/theme/OplusConvertIcon;->mUserId:I

    .line 677
    invoke-static {p0, p1}, Lcom/oplus/theme/OplusThirdPartUtil;->setDefaultTheme(Landroid/content/res/Resources;I)V

    .line 678
    invoke-static {p0, p1}, Lcom/oplus/theme/OplusConvertIcon;->getIconBgTypeForUser(Landroid/content/res/Resources;I)Lcom/oplus/theme/OplusConvertIcon$IconBgType;

    move-result-object v1

    .line 679
    .local v1, "iconBgType":Lcom/oplus/theme/OplusConvertIcon$IconBgType;
    const-string v2, "new_iphone_style_bg.png"

    const-string v3, "iphone_style_fg.png"

    const-string v4, "iphone_style_bg.png"

    invoke-static {p0, v2, v3, v4, p1}, Lcom/oplus/theme/OplusConvertIcon;->initThemeParamForUser(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 680
    sget-object v2, Lcom/oplus/theme/OplusConvertIcon$IconBgType;->MASK:Lcom/oplus/theme/OplusConvertIcon$IconBgType;

    if-ne v1, v2, :cond_0

    .line 681
    invoke-static {}, Lcom/oplus/theme/OplusMaskBitmapUtilities;->getInstance()Lcom/oplus/theme/OplusMaskBitmapUtilities;

    move-result-object v2

    const-string v3, "new_iphone_style_mask.png"

    invoke-static {p0, v3, p1}, Lcom/oplus/theme/OplusConvertIcon;->getMaskBitmapForUser(Landroid/content/res/Resources;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v3

    sget v4, Lcom/oplus/theme/OplusConvertIcon;->sDetectMaskBorderOffset:I

    invoke-virtual {v2, v3, v4}, Lcom/oplus/theme/OplusMaskBitmapUtilities;->setMaskBitmap(Landroid/graphics/Bitmap;I)V

    .line 683
    :cond_0
    invoke-static {}, Lcom/oplus/theme/OplusMaskBitmapUtilities;->getInstance()Lcom/oplus/theme/OplusMaskBitmapUtilities;

    move-result-object v2

    invoke-static {}, Lcom/oplus/theme/OplusConvertIcon;->getIconSize()I

    move-result v3

    invoke-static {}, Lcom/oplus/theme/OplusConvertIcon;->getThemeParamScale()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/oplus/theme/OplusMaskBitmapUtilities;->setCutAndScalePram(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 684
    monitor-exit v0

    return-void

    .line 675
    .end local v1    # "iconBgType":Lcom/oplus/theme/OplusConvertIcon$IconBgType;
    .end local p0    # "res":Landroid/content/res/Resources;
    .end local p1    # "userId":I
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static blacklist initIconSize(Landroid/content/res/Resources;)V
    .locals 9
    .param p0, "res"    # Landroid/content/res/Resources;

    .line 705
    const/4 v0, 0x0

    .line 706
    .local v0, "width":I
    const/high16 v1, 0x43200000    # 160.0f

    if-eqz p0, :cond_0

    .line 708
    invoke-static {p0}, Lcom/oplus/util/UxScreenUtil;->getDefaultIconSize(Landroid/content/res/Resources;)I

    move-result v2

    .line 709
    .local v2, "densityW":I
    int-to-float v3, v2

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v3, v4

    sget v4, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    int-to-float v4, v4

    div-float/2addr v4, v1

    mul-float/2addr v3, v4

    invoke-static {v3}, Lcom/oplus/theme/OplusConvertIcon;->float2int(F)I

    move-result v0

    .line 712
    .end local v2    # "densityW":I
    :cond_0
    if-nez v0, :cond_1

    .line 713
    const/16 v0, 0xa8

    .line 715
    :cond_1
    sput v0, Lcom/oplus/theme/OplusConvertIcon;->sIconSize:I

    .line 716
    sput v0, Lcom/oplus/theme/OplusConvertIcon;->sIconWidth:I

    .line 717
    sput v0, Lcom/oplus/theme/OplusConvertIcon;->sIconHeight:I

    .line 718
    const/4 v2, 0x0

    sput v2, Lcom/oplus/theme/OplusConvertIcon;->sConfigScale:F

    .line 719
    const/4 v2, 0x0

    sput v2, Lcom/oplus/theme/OplusConvertIcon;->sIconLeft:I

    .line 720
    sput v2, Lcom/oplus/theme/OplusConvertIcon;->sIconTop:I

    .line 721
    if-nez p0, :cond_2

    .line 722
    return-void

    .line 724
    :cond_2
    const-wide/16 v2, 0x0

    .line 725
    .local v2, "themeFlags":J
    const-class v4, Landroid/content/res/OplusBaseConfiguration;

    iget-object v5, p0, Landroid/content/res/Resources;->mResourcesExt:Landroid/content/res/IResourcesExt;

    invoke-interface {v5}, Landroid/content/res/IResourcesExt;->getConfiguration()Landroid/content/res/OplusBaseConfiguration;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oplus/util/OplusTypeCastingHelper;->typeCasting(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/OplusBaseConfiguration;

    .line 726
    .local v4, "baseConfig":Landroid/content/res/OplusBaseConfiguration;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/content/res/OplusBaseConfiguration;->getOplusExtraConfiguration()Loplus/content/res/OplusExtraConfiguration;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 727
    invoke-virtual {v4}, Landroid/content/res/OplusBaseConfiguration;->getOplusExtraConfiguration()Loplus/content/res/OplusExtraConfiguration;

    move-result-object v5

    iget-wide v2, v5, Loplus/content/res/OplusExtraConfiguration;->mThemeChangedFlags:J

    .line 729
    :cond_3
    const/16 v5, 0x20

    shr-long v5, v2, v5

    const-wide/32 v7, 0xffff

    and-long/2addr v5, v7

    long-to-int v5, v5

    .line 730
    .local v5, "themeSize":I
    if-lez v5, :cond_5

    .line 731
    int-to-float v6, v5

    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v6, v7

    .line 732
    .local v6, "sizeDp":F
    sget v7, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    int-to-float v7, v7

    div-float/2addr v7, v1

    mul-float/2addr v7, v6

    .line 733
    .local v7, "result":F
    sget v1, Lcom/oplus/theme/OplusConvertIcon;->sThemeScale:F

    const v8, 0x3e99999a    # 0.3f

    cmpg-float v8, v1, v8

    if-gez v8, :cond_4

    const/high16 v8, 0x43280000    # 168.0f

    cmpl-float v8, v7, v8

    if-lez v8, :cond_4

    .line 734
    const/high16 v8, 0x42000000    # 32.0f

    mul-float/2addr v1, v8

    float-to-int v1, v1

    int-to-float v1, v1

    add-float/2addr v7, v1

    .line 736
    :cond_4
    int-to-float v1, v0

    div-float v1, v7, v1

    sput v1, Lcom/oplus/theme/OplusConvertIcon;->sConfigScale:F

    .line 737
    int-to-float v1, v0

    sub-float/2addr v1, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v1, v8

    invoke-static {v1}, Lcom/oplus/theme/OplusConvertIcon;->float2int(F)I

    move-result v1

    .line 738
    .local v1, "offset":I
    sput v1, Lcom/oplus/theme/OplusConvertIcon;->sIconLeft:I

    .line 739
    sput v1, Lcom/oplus/theme/OplusConvertIcon;->sIconTop:I

    .line 741
    .end local v1    # "offset":I
    .end local v6    # "sizeDp":F
    .end local v7    # "result":F
    :cond_5
    return-void
.end method

.method public static whitelist initThemeParam(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "maskBg"    # Ljava/lang/String;
    .param p2, "maskFg"    # Ljava/lang/String;
    .param p3, "coverBg"    # Ljava/lang/String;

    .line 455
    new-instance v0, Lcom/oplus/theme/OplusIconParam;

    const-string v1, "themeInfo.xml"

    invoke-direct {v0, v1}, Lcom/oplus/theme/OplusIconParam;-><init>(Ljava/lang/String;)V

    .line 456
    .local v0, "oplusIconParam":Lcom/oplus/theme/OplusIconParam;
    invoke-virtual {v0}, Lcom/oplus/theme/OplusIconParam;->parseXml()Z

    .line 458
    invoke-virtual {v0}, Lcom/oplus/theme/OplusIconParam;->getScale()F

    move-result v1

    .line 459
    .local v1, "tempRatio":F
    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_2

    .line 460
    sget-object v2, Lcom/oplus/theme/OplusConvertIcon;->sIconBgType:Lcom/oplus/theme/OplusConvertIcon$IconBgType;

    sget-object v3, Lcom/oplus/theme/OplusConvertIcon$IconBgType;->COVER:Lcom/oplus/theme/OplusConvertIcon$IconBgType;

    if-ne v2, v3, :cond_0

    .line 461
    const v1, 0x3f1eb852    # 0.62f

    goto :goto_0

    .line 462
    :cond_0
    sget-object v2, Lcom/oplus/theme/OplusConvertIcon;->sIconBgType:Lcom/oplus/theme/OplusConvertIcon$IconBgType;

    sget-object v3, Lcom/oplus/theme/OplusConvertIcon$IconBgType;->SCALE:Lcom/oplus/theme/OplusConvertIcon$IconBgType;

    if-ne v2, v3, :cond_1

    .line 463
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    .line 464
    :cond_1
    sget-object v2, Lcom/oplus/theme/OplusConvertIcon;->sIconBgType:Lcom/oplus/theme/OplusConvertIcon$IconBgType;

    sget-object v3, Lcom/oplus/theme/OplusConvertIcon$IconBgType;->MASK:Lcom/oplus/theme/OplusConvertIcon$IconBgType;

    if-ne v2, v3, :cond_2

    .line 465
    const/high16 v1, 0x3f800000    # 1.0f

    .line 468
    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/oplus/theme/OplusConvertIcon;->initIconSize(Landroid/content/res/Resources;)V

    .line 469
    sget v2, Lcom/oplus/theme/OplusConvertIcon;->sIconSize:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    sput v2, Lcom/oplus/theme/OplusConvertIcon;->sThemeParamScale:I

    .line 470
    sget-boolean v2, Lcom/oplus/theme/OplusConvertIcon;->DEBUG_NORMAL:Z

    const-string v3, "OplusConvertIcon"

    if-eqz v2, :cond_3

    .line 471
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initThemeParam getScale= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", sThemeParamScale = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/oplus/theme/OplusConvertIcon;->sThemeParamScale:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    :cond_3
    invoke-virtual {v0}, Lcom/oplus/theme/OplusIconParam;->getXOffset()F

    move-result v1

    .line 475
    sget v4, Lcom/oplus/theme/OplusConvertIcon;->sIconSize:I

    int-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-int v4, v4

    sput v4, Lcom/oplus/theme/OplusConvertIcon;->sThemeParamXOffset:I

    .line 476
    if-eqz v2, :cond_4

    .line 477
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initThemeParam getXOffset= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", sThemeParamXOffset = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/oplus/theme/OplusConvertIcon;->sThemeParamXOffset:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :cond_4
    invoke-virtual {v0}, Lcom/oplus/theme/OplusIconParam;->getYOffset()F

    move-result v1

    .line 480
    sget v4, Lcom/oplus/theme/OplusConvertIcon;->sIconSize:I

    int-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-int v4, v4

    sput v4, Lcom/oplus/theme/OplusConvertIcon;->sThemeParamYOffset:I

    .line 481
    if-eqz v2, :cond_5

    .line 482
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initThemeParam getYOffset= "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", sThemeParamYOffset = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Lcom/oplus/theme/OplusConvertIcon;->sThemeParamYOffset:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :cond_5
    invoke-virtual {v0}, Lcom/oplus/theme/OplusIconParam;->getDetectMaskBorderOffset()F

    move-result v1

    .line 486
    sget v2, Lcom/oplus/theme/OplusConvertIcon;->sIconSize:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    sput v2, Lcom/oplus/theme/OplusConvertIcon;->sDetectMaskBorderOffset:I

    .line 488
    invoke-static {p1, p2, p3}, Lcom/oplus/theme/OplusConvertIcon;->setIconBgFgRes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    return-void
.end method

.method public static whitelist initThemeParamForUser(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "maskBg"    # Ljava/lang/String;
    .param p2, "maskFg"    # Ljava/lang/String;
    .param p3, "coverBg"    # Ljava/lang/String;
    .param p4, "useId"    # I

    .line 413
    new-instance v0, Lcom/oplus/theme/OplusIconParam;

    const-string v1, "themeInfo.xml"

    invoke-direct {v0, v1}, Lcom/oplus/theme/OplusIconParam;-><init>(Ljava/lang/String;)V

    .line 414
    .local v0, "oplusIconParam":Lcom/oplus/theme/OplusIconParam;
    invoke-virtual {v0, p4}, Lcom/oplus/theme/OplusIconParam;->parseXmlForUser(I)Z

    .line 416
    const/high16 v1, 0x3f800000    # 1.0f

    sput v1, Lcom/oplus/theme/OplusConvertIcon;->sThemeScale:F

    .line 417
    invoke-virtual {v0}, Lcom/oplus/theme/OplusIconParam;->getScale()F

    move-result v1

    .line 418
    .local v1, "tempRatio":F
    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_2

    .line 419
    sget-object v2, Lcom/oplus/theme/OplusConvertIcon;->sIconBgType:Lcom/oplus/theme/OplusConvertIcon$IconBgType;

    sget-object v3, Lcom/oplus/theme/OplusConvertIcon$IconBgType;->COVER:Lcom/oplus/theme/OplusConvertIcon$IconBgType;

    if-ne v2, v3, :cond_0

    .line 420
    const v1, 0x3f1eb852    # 0.62f

    goto :goto_0

    .line 421
    :cond_0
    sget-object v2, Lcom/oplus/theme/OplusConvertIcon;->sIconBgType:Lcom/oplus/theme/OplusConvertIcon$IconBgType;

    sget-object v3, Lcom/oplus/theme/OplusConvertIcon$IconBgType;->SCALE:Lcom/oplus/theme/OplusConvertIcon$IconBgType;

    if-ne v2, v3, :cond_1

    .line 422
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    .line 423
    :cond_1
    sget-object v2, Lcom/oplus/theme/OplusConvertIcon;->sIconBgType:Lcom/oplus/theme/OplusConvertIcon$IconBgType;

    sget-object v3, Lcom/oplus/theme/OplusConvertIcon$IconBgType;->MASK:Lcom/oplus/theme/OplusConvertIcon$IconBgType;

    if-ne v2, v3, :cond_2

    .line 424
    const/high16 v1, 0x3f800000    # 1.0f

    .line 427
    :cond_2
    :goto_0
    sput v1, Lcom/oplus/theme/OplusConvertIcon;->sThemeScale:F

    .line 428
    invoke-static {p0}, Lcom/oplus/theme/OplusConvertIcon;->initIconSize(Landroid/content/res/Resources;)V

    .line 429
    sget v2, Lcom/oplus/theme/OplusConvertIcon;->sIconSize:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    sput v2, Lcom/oplus/theme/OplusConvertIcon;->sThemeParamScale:I

    .line 430
    sget-boolean v2, Lcom/oplus/theme/OplusConvertIcon;->DEBUG_NORMAL:Z

    const-string v3, "OplusConvertIcon"

    if-eqz v2, :cond_3

    .line 431
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initThemeParam getScale= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", sIconSize = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/oplus/theme/OplusConvertIcon;->sIconSize:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", sConfigScale: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/oplus/theme/OplusConvertIcon;->sConfigScale:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :cond_3
    invoke-virtual {v0}, Lcom/oplus/theme/OplusIconParam;->getXOffset()F

    move-result v1

    .line 435
    sget v4, Lcom/oplus/theme/OplusConvertIcon;->sIconSize:I

    int-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-int v4, v4

    sput v4, Lcom/oplus/theme/OplusConvertIcon;->sThemeParamXOffset:I

    .line 436
    if-eqz v2, :cond_4

    .line 437
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initThemeParam getXOffset= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", sThemeParamXOffset = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/oplus/theme/OplusConvertIcon;->sThemeParamXOffset:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :cond_4
    invoke-virtual {v0}, Lcom/oplus/theme/OplusIconParam;->getYOffset()F

    move-result v1

    .line 440
    sget v4, Lcom/oplus/theme/OplusConvertIcon;->sIconSize:I

    int-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-int v4, v4

    sput v4, Lcom/oplus/theme/OplusConvertIcon;->sThemeParamYOffset:I

    .line 441
    if-eqz v2, :cond_5

    .line 442
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initThemeParam getYOffset= "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", sThemeParamYOffset = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Lcom/oplus/theme/OplusConvertIcon;->sThemeParamYOffset:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :cond_5
    invoke-virtual {v0}, Lcom/oplus/theme/OplusIconParam;->getDetectMaskBorderOffset()F

    move-result v1

    .line 446
    sget v2, Lcom/oplus/theme/OplusConvertIcon;->sIconSize:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    sput v2, Lcom/oplus/theme/OplusConvertIcon;->sDetectMaskBorderOffset:I

    .line 448
    invoke-static {p1, p2, p3}, Lcom/oplus/theme/OplusConvertIcon;->setIconBgFgRes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    return-void
.end method

.method public static whitelist judgePicExist(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p0, "zipFilePath"    # Ljava/lang/String;
    .param p1, "picName"    # Ljava/lang/String;

    .line 586
    const-string v0, "judgePicExist: Closing e "

    const-string v1, "OplusConvertIcon"

    const/4 v2, 0x0

    .line 587
    .local v2, "exist":Z
    const/4 v3, 0x0

    .line 589
    .local v3, "file":Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v4, Ljava/util/zip/ZipFile;

    invoke-direct {v4, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    .line 590
    invoke-static {v3, p1}, Lcom/oplus/theme/OplusConvertIcon;->judgePicExist(Ljava/util/zip/ZipFile;Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v4

    .line 594
    nop

    .line 596
    :try_start_1
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 599
    :goto_0
    goto :goto_2

    .line 597
    :catch_0
    move-exception v4

    .line 598
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 594
    :catchall_0
    move-exception v4

    goto :goto_3

    .line 591
    :catch_1
    move-exception v4

    .line 592
    .local v4, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "judgePicExist: e "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 594
    nop

    .end local v4    # "e":Ljava/io/IOException;
    if-eqz v3, :cond_0

    .line 596
    :try_start_3
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 597
    :catch_2
    move-exception v4

    .line 598
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    .line 602
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_2
    return v2

    .line 594
    :goto_3
    if-eqz v3, :cond_1

    .line 596
    :try_start_4
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 599
    goto :goto_4

    .line 597
    :catch_3
    move-exception v5

    .line 598
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_4
    throw v4
.end method

.method public static whitelist judgePicExist(Ljava/util/zip/ZipFile;Ljava/lang/String;)Z
    .locals 4
    .param p0, "zipFile"    # Ljava/util/zip/ZipFile;
    .param p1, "picName"    # Ljava/lang/String;

    .line 613
    sget-object v0, Lcom/oplus/theme/OplusConvertIcon;->sDrawableDirs:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 614
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/oplus/theme/OplusConvertIcon;->sDrawableDirs:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    .line 615
    .local v2, "entry":Ljava/util/zip/ZipEntry;
    if-eqz v2, :cond_0

    .line 616
    return v1

    .line 613
    .end local v2    # "entry":Ljava/util/zip/ZipEntry;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 619
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method static blacklist maskBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Landroid/content/res/Resources;Landroid/graphics/Canvas;)V
    .locals 9
    .param p0, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p1, "originalBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "canvas"    # Landroid/graphics/Canvas;

    .line 332
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 333
    sget v1, Lcom/oplus/theme/OplusConvertIcon;->sIconWidth:I

    sget v2, Lcom/oplus/theme/OplusConvertIcon;->sIconHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 335
    invoke-virtual {p3, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 336
    sget-object v1, Lcom/oplus/theme/OplusConvertIcon;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 337
    sget v2, Lcom/oplus/theme/OplusConvertIcon;->sIconWidth:I

    sget v3, Lcom/oplus/theme/OplusConvertIcon;->sIconHeight:I

    invoke-virtual {p0, v0, v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 338
    invoke-virtual {p0, p3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 339
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 342
    :cond_0
    const-string v1, "OplusConvertIcon"

    if-eqz p1, :cond_7

    .line 344
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v2

    if-nez v2, :cond_1

    .line 345
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 347
    :cond_1
    invoke-static {}, Lcom/oplus/theme/OplusMaskBitmapUtilities;->getInstance()Lcom/oplus/theme/OplusMaskBitmapUtilities;

    move-result-object v2

    .line 348
    .local v2, "mbu":Lcom/oplus/theme/OplusMaskBitmapUtilities;
    invoke-virtual {v2, p1}, Lcom/oplus/theme/OplusMaskBitmapUtilities;->scaleAndMaskBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 349
    .local v3, "scaleAndMaskBitmap":Landroid/graphics/Bitmap;
    sget v4, Lcom/oplus/theme/OplusConvertIcon;->sConfigScale:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_2

    .line 350
    sget v4, Lcom/oplus/theme/OplusConvertIcon;->sIconLeft:I

    int-to-float v4, v4

    sget v5, Lcom/oplus/theme/OplusConvertIcon;->sIconTop:I

    int-to-float v5, v5

    invoke-virtual {p3, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 351
    sget v4, Lcom/oplus/theme/OplusConvertIcon;->sConfigScale:F

    invoke-virtual {p3, v4, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 354
    :cond_2
    sget-object v4, Lcom/oplus/theme/OplusConvertIcon;->sIconBackground:Landroid/graphics/drawable/Drawable;

    .line 355
    .local v4, "background":Landroid/graphics/drawable/Drawable;
    if-nez v4, :cond_3

    .line 356
    sget-object v5, Lcom/oplus/theme/OplusConvertIcon;->sMaskBackgroundPic:Ljava/lang/String;

    sget v6, Lcom/oplus/theme/OplusConvertIcon;->mUserId:I

    invoke-static {p2, v5, v6}, Lcom/oplus/theme/OplusThirdPartUtil;->getLauncherDrawableByNameForUser(Landroid/content/res/Resources;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 360
    :cond_3
    if-eqz v4, :cond_4

    .line 361
    invoke-static {p2, v4}, Lcom/oplus/theme/OplusConvertIcon;->setDarkFilterToDrawable(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    .line 362
    sget-object v5, Lcom/oplus/theme/OplusConvertIcon;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 363
    sget v6, Lcom/oplus/theme/OplusConvertIcon;->sIconWidth:I

    sget v7, Lcom/oplus/theme/OplusConvertIcon;->sIconHeight:I

    invoke-virtual {v4, v0, v0, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 364
    invoke-virtual {v4, p3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 365
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 367
    :cond_4
    const-string v0, "maskBitmap -- sIconBackground == null"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :goto_0
    if-eqz v3, :cond_6

    .line 370
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 371
    .local v0, "w":I
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 373
    .local v1, "h":I
    sget v5, Lcom/oplus/theme/OplusConvertIcon;->sIconWidth:I

    sub-int v6, v0, v5

    div-int/lit8 v6, v6, 0x2

    sget v7, Lcom/oplus/theme/OplusConvertIcon;->sThemeParamXOffset:I

    add-int/2addr v6, v7

    .line 374
    .local v6, "xEndPosDiffer":I
    const/4 v8, -0x1

    if-le v6, v8, :cond_5

    .line 375
    sub-int/2addr v5, v0

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sget v7, Lcom/oplus/theme/OplusConvertIcon;->sIconHeight:I

    sub-int/2addr v7, v1

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sget-object v8, Lcom/oplus/theme/OplusConvertIcon;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {p3, v3, v5, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 377
    :cond_5
    sub-int/2addr v5, v0

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v7

    int-to-float v5, v5

    sget v7, Lcom/oplus/theme/OplusConvertIcon;->sIconHeight:I

    sub-int/2addr v7, v1

    div-int/lit8 v7, v7, 0x2

    sget v8, Lcom/oplus/theme/OplusConvertIcon;->sThemeParamYOffset:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    sget-object v8, Lcom/oplus/theme/OplusConvertIcon;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {p3, v3, v5, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 380
    .end local v0    # "w":I
    .end local v1    # "h":I
    .end local v6    # "xEndPosDiffer":I
    :goto_1
    goto :goto_2

    .line 381
    :cond_6
    const-string v0, "maskBitmap -- scale == null"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    .end local v2    # "mbu":Lcom/oplus/theme/OplusMaskBitmapUtilities;
    .end local v3    # "scaleAndMaskBitmap":Landroid/graphics/Bitmap;
    .end local v4    # "background":Landroid/graphics/drawable/Drawable;
    :goto_2
    goto :goto_3

    .line 385
    :cond_7
    const-string v0, "maskBitmap -- originalBitmap == null"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :goto_3
    sget-boolean v0, Lcom/oplus/theme/OplusConvertIcon;->sNeedDrawForeground:Z

    if-eqz v0, :cond_8

    .line 388
    invoke-static {p2, p3}, Lcom/oplus/theme/OplusConvertIcon;->drawForeground(Landroid/content/res/Resources;Landroid/graphics/Canvas;)V

    .line 390
    :cond_8
    return-void
.end method

.method private static blacklist needSetDarkFilter(Landroid/content/res/Resources;)Z
    .locals 10
    .param p0, "res"    # Landroid/content/res/Resources;

    .line 770
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/OplusBaseConfiguration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/OplusBaseConfiguration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x20

    if-ne v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 772
    .local v0, "isDarkMode":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 773
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/OplusBaseConfiguration;

    move-result-object v3

    .line 774
    .local v3, "config":Landroid/content/res/OplusBaseConfiguration;
    const-class v4, Landroid/content/res/OplusBaseConfiguration;

    invoke-static {v4, v3}, Lcom/oplus/util/OplusTypeCastingHelper;->typeCasting(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/OplusBaseConfiguration;

    .line 775
    .local v4, "baseConfig":Landroid/content/res/OplusBaseConfiguration;
    if-eqz v4, :cond_1

    .line 776
    invoke-virtual {v4}, Landroid/content/res/OplusBaseConfiguration;->getOplusExtraConfiguration()Loplus/content/res/OplusExtraConfiguration;

    move-result-object v5

    .line 777
    .local v5, "extraConfig":Loplus/content/res/OplusExtraConfiguration;
    if-eqz v5, :cond_1

    .line 778
    iget-wide v6, v5, Loplus/content/res/OplusExtraConfiguration;->mUxIconConfig:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 779
    .local v6, "uxiconConfig":Ljava/lang/Long;
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const/16 v9, 0x3d

    shr-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object v6, v7

    invoke-virtual {v7}, Ljava/lang/Long;->intValue()I

    move-result v7

    and-int/2addr v7, v2

    .line 780
    .local v7, "darkModeIcon":I
    if-ne v7, v2, :cond_1

    .line 781
    return v2

    .line 786
    .end local v3    # "config":Landroid/content/res/OplusBaseConfiguration;
    .end local v4    # "baseConfig":Landroid/content/res/OplusBaseConfiguration;
    .end local v5    # "extraConfig":Loplus/content/res/OplusExtraConfiguration;
    .end local v6    # "uxiconConfig":Ljava/lang/Long;
    .end local v7    # "darkModeIcon":I
    :cond_1
    return v1
.end method

.method private static blacklist setDarkFilterToDrawable(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 790
    invoke-static {p0}, Lcom/oplus/theme/OplusConvertIcon;->needSetDarkFilter(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 791
    sget-object v0, Lcom/oplus/theme/OplusConvertIcon;->sDarkModeColorFilter:Landroid/graphics/LightingColorFilter;

    if-nez v0, :cond_0

    .line 792
    const v0, 0x3f570a3d    # 0.84f

    invoke-static {v0}, Lcom/oplus/theme/OplusConvertIcon;->getDarkModeColorInCurrentContrast(F)I

    move-result v0

    .line 793
    .local v0, "color":I
    new-instance v1, Landroid/graphics/LightingColorFilter;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    sput-object v1, Lcom/oplus/theme/OplusConvertIcon;->sDarkModeColorFilter:Landroid/graphics/LightingColorFilter;

    .line 795
    .end local v0    # "color":I
    :cond_0
    sget-object v0, Lcom/oplus/theme/OplusConvertIcon;->sDarkModeColorFilter:Landroid/graphics/LightingColorFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 797
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 799
    :goto_0
    return-void
.end method

.method private static blacklist setDarkFilterToPaint(Landroid/content/res/Resources;)V
    .locals 3
    .param p0, "res"    # Landroid/content/res/Resources;

    .line 802
    invoke-static {p0}, Lcom/oplus/theme/OplusConvertIcon;->needSetDarkFilter(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 803
    sget-object v0, Lcom/oplus/theme/OplusConvertIcon;->sDarkModeColorFilter:Landroid/graphics/LightingColorFilter;

    if-nez v0, :cond_0

    .line 804
    const v0, 0x3f570a3d    # 0.84f

    invoke-static {v0}, Lcom/oplus/theme/OplusConvertIcon;->getDarkModeColorInCurrentContrast(F)I

    move-result v0

    .line 805
    .local v0, "color":I
    new-instance v1, Landroid/graphics/LightingColorFilter;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    sput-object v1, Lcom/oplus/theme/OplusConvertIcon;->sDarkModeColorFilter:Landroid/graphics/LightingColorFilter;

    .line 807
    .end local v0    # "color":I
    :cond_0
    sget-object v0, Lcom/oplus/theme/OplusConvertIcon;->sPaint:Landroid/graphics/Paint;

    sget-object v1, Lcom/oplus/theme/OplusConvertIcon;->sDarkModeColorFilter:Landroid/graphics/LightingColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_0

    .line 809
    :cond_1
    sget-object v0, Lcom/oplus/theme/OplusConvertIcon;->sPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 811
    :goto_0
    return-void
.end method

.method private static blacklist setIconBgFgRes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "maskBg"    # Ljava/lang/String;
    .param p1, "maskFg"    # Ljava/lang/String;
    .param p2, "coverBg"    # Ljava/lang/String;

    .line 697
    sput-object p0, Lcom/oplus/theme/OplusConvertIcon;->sMaskBackgroundPic:Ljava/lang/String;

    .line 698
    sput-object p1, Lcom/oplus/theme/OplusConvertIcon;->sMaskForegroundPic:Ljava/lang/String;

    .line 699
    sput-object p2, Lcom/oplus/theme/OplusConvertIcon;->sCoverBackgroundPic:Ljava/lang/String;

    .line 700
    const/4 v0, 0x0

    sput-object v0, Lcom/oplus/theme/OplusConvertIcon;->sIconBackground:Landroid/graphics/drawable/Drawable;

    .line 701
    sput-object v0, Lcom/oplus/theme/OplusConvertIcon;->sIconForeground:Landroid/graphics/drawable/Drawable;

    .line 702
    return-void
.end method
