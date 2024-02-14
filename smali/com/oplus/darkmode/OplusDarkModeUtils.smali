.class public Lcom/oplus/darkmode/OplusDarkModeUtils;
.super Ljava/lang/Object;
.source "OplusDarkModeUtils.java"


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getBitmapExt(Landroid/graphics/Bitmap;)Landroid/graphics/IBitmapExt;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 257
    if-eqz p0, :cond_0

    .line 258
    iget-object v0, p0, Landroid/graphics/Bitmap;->mBitmapExt:Landroid/graphics/IBitmapExt;

    return-object v0

    .line 260
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static whitelist getColorState(Landroid/graphics/Bitmap;)I
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 185
    invoke-static {p0}, Lcom/oplus/darkmode/OplusDarkModeUtils;->getBitmapExt(Landroid/graphics/Bitmap;)Landroid/graphics/IBitmapExt;

    move-result-object v0

    .line 186
    .local v0, "bitmapExt":Landroid/graphics/IBitmapExt;
    if-eqz v0, :cond_0

    .line 187
    invoke-interface {v0}, Landroid/graphics/IBitmapExt;->getColorState()I

    move-result v1

    return v1

    .line 189
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static whitelist getCrudeState(Landroid/view/View;)I
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .line 211
    invoke-static {p0}, Lcom/oplus/darkmode/OplusDarkModeUtils;->getViewExt(Landroid/view/View;)Landroid/view/IViewExt;

    move-result-object v0

    .line 212
    .local v0, "viewExt":Landroid/view/IViewExt;
    if-eqz v0, :cond_0

    .line 213
    invoke-interface {v0}, Landroid/view/IViewExt;->getCrudeState()I

    move-result v1

    return v1

    .line 215
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static whitelist getDpDensity(Landroid/app/Application;)F
    .locals 2
    .param p0, "application"    # Landroid/app/Application;

    .line 35
    const/high16 v0, 0x43200000    # 160.0f

    if-eqz p0, :cond_0

    .line 37
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-float v1, v1

    div-float/2addr v1, v0

    return v1

    .line 38
    :catch_0
    move-exception v1

    .line 40
    :cond_0
    sget v1, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    return v1
.end method

.method public static whitelist getDpDensity(Landroid/view/View;)F
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .line 53
    const/high16 v0, 0x43200000    # 160.0f

    if-eqz p0, :cond_0

    .line 55
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-float v1, v1

    div-float/2addr v1, v0

    return v1

    .line 56
    :catch_0
    move-exception v1

    .line 58
    :cond_0
    sget v1, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    return v1
.end method

.method private static blacklist getOplusCanvas(Landroid/graphics/Canvas;)Landroid/graphics/IBaseCanvasExt;
    .locals 1
    .param p0, "canvas"    # Landroid/graphics/Canvas;

    .line 253
    iget-object v0, p0, Landroid/graphics/Canvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    return-object v0
.end method

.method public static whitelist getScreenWidth(Landroid/app/Application;)F
    .locals 1
    .param p0, "application"    # Landroid/app/Application;

    .line 44
    if-eqz p0, :cond_0

    .line 46
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-float v0, v0

    return v0

    .line 47
    :catch_0
    move-exception v0

    .line 49
    :cond_0
    const/high16 v0, 0x44b40000    # 1440.0f

    return v0
.end method

.method public static whitelist getScreenWidth(Landroid/view/View;)F
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 62
    if-eqz p0, :cond_0

    .line 64
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-float v0, v0

    return v0

    .line 65
    :catch_0
    move-exception v0

    .line 67
    :cond_0
    const/high16 v0, 0x44b40000    # 1440.0f

    return v0
.end method

.method private static blacklist getViewExt(Landroid/view/View;)Landroid/view/IViewExt;
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 265
    invoke-virtual {p0}, Landroid/view/View;->getViewWrapper()Landroid/view/IViewWrapper;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IViewWrapper;->getViewExt()Landroid/view/IViewExt;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getViewType(Landroid/graphics/Canvas;)I
    .locals 2
    .param p0, "canvas"    # Landroid/graphics/Canvas;

    .line 238
    invoke-static {p0}, Lcom/oplus/darkmode/OplusDarkModeUtils;->getOplusCanvas(Landroid/graphics/Canvas;)Landroid/graphics/IBaseCanvasExt;

    move-result-object v0

    .line 239
    .local v0, "baseCanvas":Landroid/graphics/IBaseCanvasExt;
    if-eqz v0, :cond_0

    .line 240
    invoke-interface {v0}, Landroid/graphics/IBaseCanvasExt;->getOplusViewType()I

    move-result v1

    return v1

    .line 242
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static whitelist getViewType(Landroid/view/View;)I
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .line 221
    invoke-static {p0}, Lcom/oplus/darkmode/OplusDarkModeUtils;->getViewExt(Landroid/view/View;)Landroid/view/IViewExt;

    move-result-object v0

    .line 222
    .local v0, "viewExt":Landroid/view/IViewExt;
    if-eqz v0, :cond_0

    .line 223
    invoke-interface {v0}, Landroid/view/IViewExt;->getOplusViewType()I

    move-result v1

    return v1

    .line 225
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static whitelist hasCalculatedColor(Landroid/graphics/Bitmap;)Z
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 137
    invoke-static {p0}, Lcom/oplus/darkmode/OplusDarkModeUtils;->getBitmapExt(Landroid/graphics/Bitmap;)Landroid/graphics/IBitmapExt;

    move-result-object v0

    .line 138
    .local v0, "bitmapExt":Landroid/graphics/IBitmapExt;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/graphics/IBitmapExt;->hasCalculatedColor()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static whitelist isAddArea(Landroid/graphics/Path;)Z
    .locals 3
    .param p0, "path"    # Landroid/graphics/Path;

    .line 149
    if-eqz p0, :cond_0

    .line 150
    invoke-virtual {p0}, Landroid/graphics/Path;->getWrapper()Landroid/graphics/IPathWrapper;

    move-result-object v0

    .line 151
    .local v0, "wrapper":Landroid/graphics/IPathWrapper;
    if-eqz v0, :cond_0

    .line 152
    invoke-interface {v0}, Landroid/graphics/IPathWrapper;->getPathExt()Landroid/graphics/IPathExt;

    move-result-object v1

    .line 153
    .local v1, "pathExt":Landroid/graphics/IPathExt;
    if-eqz v1, :cond_0

    .line 154
    invoke-interface {v1}, Landroid/graphics/IPathExt;->isAddArea()Z

    move-result v2

    return v2

    .line 158
    .end local v0    # "wrapper":Landroid/graphics/IPathWrapper;
    .end local v1    # "pathExt":Landroid/graphics/IPathExt;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist isAssetSource(Landroid/graphics/Bitmap;)Z
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 180
    invoke-static {p0}, Lcom/oplus/darkmode/OplusDarkModeUtils;->getBitmapExt(Landroid/graphics/Bitmap;)Landroid/graphics/IBitmapExt;

    move-result-object v0

    .line 181
    .local v0, "bitmapExt":Landroid/graphics/IBitmapExt;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/graphics/IBitmapExt;->isAssetSource()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static whitelist isBiliBili(Landroid/app/Application;)Z
    .locals 2
    .param p0, "application"    # Landroid/app/Application;

    .line 269
    if-eqz p0, :cond_0

    .line 271
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 272
    const-string v0, "tv.danmaku.bili"

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 274
    :catch_0
    move-exception v0

    .line 276
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist isCanvasBaseBitmap(Landroid/graphics/Bitmap;)Z
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 175
    invoke-static {p0}, Lcom/oplus/darkmode/OplusDarkModeUtils;->getBitmapExt(Landroid/graphics/Bitmap;)Landroid/graphics/IBitmapExt;

    move-result-object v0

    .line 176
    .local v0, "bitmapExt":Landroid/graphics/IBitmapExt;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/graphics/IBitmapExt;->isCanvasBaseBitmap()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static whitelist isMaybeBlackColor(I)Z
    .locals 2
    .param p0, "color"    # I

    .line 15
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 16
    .local v0, "hsl":[F
    invoke-static {p0, v0}, Lcom/android/internal/graphics/ColorUtils;->colorToHSL(I[F)V

    .line 17
    invoke-static {v0}, Lcom/oplus/darkmode/OplusDarkModeUtils;->isMaybeBlackColor([F)Z

    move-result v1

    return v1
.end method

.method public static whitelist isMaybeBlackColor([F)Z
    .locals 10
    .param p0, "hsl"    # [F

    .line 31
    const/4 v0, 0x2

    aget v1, p0, v0

    float-to-double v1, v1

    const-wide v3, 0x3fa47ae147ae147bL    # 0.04

    cmpg-double v1, v1, v3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_2

    aget v1, p0, v3

    const/4 v4, 0x0

    cmpl-float v1, v1, v4

    const-wide v4, 0x3fcae147ae147ae1L    # 0.21

    if-nez v1, :cond_0

    aget v1, p0, v0

    float-to-double v6, v1

    cmpg-double v1, v6, v4

    if-lez v1, :cond_2

    :cond_0
    aget v1, p0, v2

    const/high16 v6, 0x43340000    # 180.0f

    cmpl-float v1, v1, v6

    if-nez v1, :cond_1

    aget v1, p0, v3

    float-to-double v6, v1

    const-wide v8, 0x3fb999999999999aL    # 0.1

    cmpg-double v1, v6, v8

    if-gtz v1, :cond_1

    aget v1, p0, v0

    float-to-double v6, v1

    cmpg-double v1, v6, v4

    if-lez v1, :cond_2

    :cond_1
    aget v1, p0, v3

    float-to-double v4, v1

    const-wide v6, 0x3fa999999999999aL    # 0.05

    cmpg-double v1, v4, v6

    if-gtz v1, :cond_3

    aget v0, p0, v0

    float-to-double v0, v0

    const-wide v4, 0x3fbc28f5c28f5c29L    # 0.11

    cmpg-double v0, v0, v4

    if-gtz v0, :cond_3

    :cond_2
    move v2, v3

    :cond_3
    return v2
.end method

.method public static whitelist isMaybeWhiteColor(I)Z
    .locals 2
    .param p0, "color"    # I

    .line 21
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 22
    .local v0, "hsl":[F
    invoke-static {p0, v0}, Lcom/android/internal/graphics/ColorUtils;->colorToHSL(I[F)V

    .line 23
    invoke-static {v0}, Lcom/oplus/darkmode/OplusDarkModeUtils;->isMaybeWhiteColor([F)Z

    move-result v1

    return v1
.end method

.method public static whitelist isMaybeWhiteColor([F)Z
    .locals 7
    .param p0, "hsl"    # [F

    .line 27
    const/4 v0, 0x2

    aget v1, p0, v0

    float-to-double v1, v1

    const-wide v3, 0x3feeb851eb851eb8L    # 0.96

    cmpl-double v1, v1, v3

    const/4 v2, 0x1

    if-gez v1, :cond_2

    aget v1, p0, v2

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    aget v1, p0, v0

    float-to-double v3, v1

    const-wide v5, 0x3fe999999999999aL    # 0.8

    cmpl-double v1, v3, v5

    if-gez v1, :cond_2

    :cond_0
    aget v1, p0, v2

    float-to-double v3, v1

    const-wide v5, 0x3fa999999999999aL    # 0.05

    cmpg-double v1, v3, v5

    if-gtz v1, :cond_1

    aget v0, p0, v0

    float-to-double v0, v0

    const-wide v3, 0x3feccccccccccccdL    # 0.9

    cmpl-double v0, v0, v3

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_0
    return v2
.end method

.method public static whitelist isViewSrc(Landroid/graphics/Bitmap;)Z
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 170
    invoke-static {p0}, Lcom/oplus/darkmode/OplusDarkModeUtils;->getBitmapExt(Landroid/graphics/Bitmap;)Landroid/graphics/IBitmapExt;

    move-result-object v0

    .line 171
    .local v0, "bitmapExt":Landroid/graphics/IBitmapExt;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/graphics/IBitmapExt;->isViewSrc()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static whitelist isWeiBo(Landroid/app/Application;)Z
    .locals 2
    .param p0, "application"    # Landroid/app/Application;

    .line 280
    if-eqz p0, :cond_0

    .line 282
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 283
    const-string v0, "com.sina.weibo"

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 285
    :catch_0
    move-exception v0

    .line 287
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist makeColorBackground(IF)I
    .locals 12
    .param p0, "originColor"    # I
    .param p1, "backgroundMaxL"    # F

    .line 71
    const/4 v0, 0x3

    new-array v0, v0, [D

    .line 72
    .local v0, "lab":[D
    invoke-static {p0, v0}, Lcom/android/internal/graphics/ColorUtils;->colorToLAB(I[D)V

    .line 73
    const/4 v1, 0x0

    aget-wide v2, v0, v1

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    sub-double/2addr v4, v2

    .line 74
    .local v4, "invertedL":D
    aget-wide v2, v0, v1

    cmpg-double v2, v4, v2

    if-gez v2, :cond_1

    .line 75
    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v2, p1, v2

    if-eqz v2, :cond_0

    .line 76
    float-to-double v2, p1

    const-wide/high16 v6, 0x4049000000000000L    # 50.0

    div-double v6, v4, v6

    const/high16 v8, 0x42480000    # 50.0f

    sub-float/2addr v8, p1

    float-to-double v8, v8

    mul-double/2addr v6, v8

    add-double v4, v2, v6

    .line 78
    :cond_0
    aput-wide v4, v0, v1

    .line 79
    aget-wide v6, v0, v1

    const/4 v1, 0x1

    aget-wide v8, v0, v1

    const/4 v1, 0x2

    aget-wide v10, v0, v1

    invoke-static/range {v6 .. v11}, Lcom/android/internal/graphics/ColorUtils;->LABToColor(DDD)I

    move-result v1

    .line 80
    .local v1, "newColor":I
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v6

    .line 81
    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    .line 80
    invoke-static {v2, v3, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    return v2

    .line 83
    .end local v1    # "newColor":I
    :cond_1
    return p0
.end method

.method public static whitelist makeColorForeground(IF)I
    .locals 12
    .param p0, "originColor"    # I
    .param p1, "foregroundMinL"    # F

    .line 88
    const/4 v0, 0x3

    new-array v0, v0, [D

    .line 89
    .local v0, "lab":[D
    invoke-static {p0, v0}, Lcom/android/internal/graphics/ColorUtils;->colorToLAB(I[D)V

    .line 90
    const/4 v1, 0x0

    aget-wide v2, v0, v1

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    sub-double/2addr v4, v2

    .line 91
    .local v4, "invertedL":D
    aget-wide v2, v0, v1

    cmpl-double v2, v4, v2

    if-lez v2, :cond_1

    .line 92
    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v2, p1, v2

    if-eqz v2, :cond_0

    .line 93
    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    sub-double v6, v4, v2

    div-double/2addr v6, v2

    const/high16 v8, 0x42480000    # 50.0f

    sub-float v8, p1, v8

    float-to-double v8, v8

    mul-double/2addr v6, v8

    add-double v4, v6, v2

    .line 95
    :cond_0
    aput-wide v4, v0, v1

    .line 96
    aget-wide v6, v0, v1

    const/4 v1, 0x1

    aget-wide v8, v0, v1

    const/4 v1, 0x2

    aget-wide v10, v0, v1

    invoke-static/range {v6 .. v11}, Lcom/android/internal/graphics/ColorUtils;->LABToColor(DDD)I

    move-result v1

    .line 97
    .local v1, "newColor":I
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v6

    .line 98
    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    .line 97
    invoke-static {v2, v3, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    return v2

    .line 100
    .end local v1    # "newColor":I
    :cond_1
    return p0
.end method

.method public static whitelist makeSVGColorBackground(IF)I
    .locals 6
    .param p0, "originColor"    # I
    .param p1, "backgroundMaxL"    # F

    .line 117
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 118
    .local v0, "hsl":[F
    invoke-static {p0, v0}, Lcom/android/internal/graphics/ColorUtils;->colorToHSL(I[F)V

    .line 119
    invoke-static {v0}, Lcom/oplus/darkmode/OplusDarkModeUtils;->isMaybeWhiteColor([F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x2

    aget v3, v0, v2

    sub-float/2addr v1, v3

    aput v1, v0, v2

    .line 121
    invoke-static {v0}, Lcom/android/internal/graphics/ColorUtils;->HSLToColor([F)I

    move-result v1

    .line 122
    .local v1, "newColor":I
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    .line 123
    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    .line 122
    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    return v2

    .line 125
    .end local v1    # "newColor":I
    :cond_0
    return p0
.end method

.method public static whitelist makeSVGColorForeground(IF)I
    .locals 6
    .param p0, "originColor"    # I
    .param p1, "foregroundMinL"    # F

    .line 105
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 106
    .local v0, "hsl":[F
    invoke-static {p0, v0}, Lcom/android/internal/graphics/ColorUtils;->colorToHSL(I[F)V

    .line 107
    invoke-static {v0}, Lcom/oplus/darkmode/OplusDarkModeUtils;->isMaybeBlackColor([F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x2

    aget v3, v0, v2

    sub-float/2addr v1, v3

    aput v1, v0, v2

    .line 109
    invoke-static {v0}, Lcom/android/internal/graphics/ColorUtils;->HSLToColor([F)I

    move-result v1

    .line 110
    .local v1, "newColor":I
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    .line 111
    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    .line 110
    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    return v2

    .line 113
    .end local v1    # "newColor":I
    :cond_0
    return p0
.end method

.method public static whitelist setCanvasTransformType(Landroid/graphics/Canvas;III)V
    .locals 1
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "transformType"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 129
    invoke-static {p0}, Lcom/oplus/darkmode/OplusDarkModeUtils;->getOplusCanvas(Landroid/graphics/Canvas;)Landroid/graphics/IBaseCanvasExt;

    move-result-object v0

    .line 130
    .local v0, "baseCanvas":Landroid/graphics/IBaseCanvasExt;
    if-eqz v0, :cond_0

    .line 131
    invoke-interface {v0, p1}, Landroid/graphics/IBaseCanvasExt;->setTransformType(I)V

    .line 132
    invoke-interface {v0, p2, p3}, Landroid/graphics/IBaseCanvasExt;->setViewArea(II)V

    .line 134
    :cond_0
    return-void
.end method

.method public static whitelist setColorFilterColor(Landroid/graphics/ColorFilter;I)V
    .locals 1
    .param p0, "filter"    # Landroid/graphics/ColorFilter;
    .param p1, "color"    # I

    .line 162
    instance-of v0, p0, Landroid/graphics/BlendModeColorFilter;

    if-eqz v0, :cond_0

    .line 163
    move-object v0, p0

    check-cast v0, Landroid/graphics/BlendModeColorFilter;

    invoke-virtual {v0}, Landroid/graphics/BlendModeColorFilter;->getWrapper()Landroid/graphics/IBlendModeColorFilterWrapper;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/graphics/IBlendModeColorFilterWrapper;->setColor(I)V

    goto :goto_0

    .line 164
    :cond_0
    instance-of v0, p0, Landroid/graphics/PorterDuffColorFilter;

    if-eqz v0, :cond_1

    .line 165
    move-object v0, p0

    check-cast v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0}, Landroid/graphics/PorterDuffColorFilter;->getWrapper()Landroid/graphics/IPorterDuffColorFilterWrapper;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/graphics/IPorterDuffColorFilterWrapper;->setColor(I)V

    .line 167
    :cond_1
    :goto_0
    return-void
.end method

.method public static whitelist setColorState(Landroid/graphics/Bitmap;I)V
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "colorState"    # I

    .line 193
    invoke-static {p0}, Lcom/oplus/darkmode/OplusDarkModeUtils;->getBitmapExt(Landroid/graphics/Bitmap;)Landroid/graphics/IBitmapExt;

    move-result-object v0

    .line 194
    .local v0, "bitmapExt":Landroid/graphics/IBitmapExt;
    if-eqz v0, :cond_0

    .line 195
    invoke-interface {v0, p1}, Landroid/graphics/IBitmapExt;->setColorState(I)V

    .line 197
    :cond_0
    return-void
.end method

.method public static whitelist setCrudeState(Landroid/view/View;I)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "state"    # I

    .line 202
    invoke-static {p0}, Lcom/oplus/darkmode/OplusDarkModeUtils;->getViewExt(Landroid/view/View;)Landroid/view/IViewExt;

    move-result-object v0

    .line 203
    .local v0, "viewExt":Landroid/view/IViewExt;
    if-eqz v0, :cond_0

    .line 204
    invoke-interface {v0, p1}, Landroid/view/IViewExt;->setCrudeState(I)V

    .line 206
    :cond_0
    return-void
.end method

.method public static whitelist setHasCalculatedColor(Landroid/graphics/Bitmap;Z)V
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "value"    # Z

    .line 142
    invoke-static {p0}, Lcom/oplus/darkmode/OplusDarkModeUtils;->getBitmapExt(Landroid/graphics/Bitmap;)Landroid/graphics/IBitmapExt;

    move-result-object v0

    .line 143
    .local v0, "bitmapExt":Landroid/graphics/IBitmapExt;
    if-eqz v0, :cond_0

    .line 144
    invoke-interface {v0, p1}, Landroid/graphics/IBitmapExt;->setHasCalculatedColor(Z)V

    .line 146
    :cond_0
    return-void
.end method

.method public static whitelist setViewType(Landroid/graphics/Canvas;I)V
    .locals 1
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "viewType"    # I

    .line 246
    invoke-static {p0}, Lcom/oplus/darkmode/OplusDarkModeUtils;->getOplusCanvas(Landroid/graphics/Canvas;)Landroid/graphics/IBaseCanvasExt;

    move-result-object v0

    .line 247
    .local v0, "baseCanvas":Landroid/graphics/IBaseCanvasExt;
    if-eqz v0, :cond_0

    .line 248
    invoke-interface {v0, p1}, Landroid/graphics/IBaseCanvasExt;->setOplusViewTypeLocked(I)V

    .line 250
    :cond_0
    return-void
.end method

.method public static whitelist setViewType(Landroid/view/View;I)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "viewType"    # I

    .line 231
    invoke-static {p0}, Lcom/oplus/darkmode/OplusDarkModeUtils;->getViewExt(Landroid/view/View;)Landroid/view/IViewExt;

    move-result-object v0

    .line 232
    .local v0, "viewExt":Landroid/view/IViewExt;
    if-eqz v0, :cond_0

    .line 233
    invoke-interface {v0, p1}, Landroid/view/IViewExt;->setOplusViewTypeLocked(I)V

    .line 235
    :cond_0
    return-void
.end method
