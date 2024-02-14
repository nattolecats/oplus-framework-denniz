.class public Landroid/view/autolayout/AutoLayoutCanvas;
.super Ljava/lang/Object;
.source "AutoLayoutCanvas.java"


# static fields
.field private static final blacklist SAMPLE_POSITION_BOTTOM:I = 0x3

.field private static final blacklist SAMPLE_POSITION_CENTER:I = 0x2

.field private static final blacklist SAMPLE_POSITION_TOP:I = 0x1

.field private static blacklist sCanvas:Landroid/graphics/Canvas;

.field private static blacklist sInstance:Landroid/view/autolayout/AutoLayoutCanvas;


# instance fields
.field private blacklist mView:Landroid/view/View;


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method private blacklist calAveragePixel([I)I
    .locals 12
    .param p1, "pixels"    # [I

    .line 166
    array-length v0, p1

    .line 167
    .local v0, "length":I
    const/4 v1, 0x0

    .line 168
    .local v1, "allAlpha":F
    const/4 v2, 0x0

    .line 169
    .local v2, "allRed":F
    const/4 v3, 0x0

    .line 170
    .local v3, "allGreen":F
    const/4 v4, 0x0

    .line 171
    .local v4, "allBlue":F
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_0

    .line 172
    aget v6, p1, v5

    .line 173
    .local v6, "singlePixel":I
    invoke-static {v6}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v7

    .line 175
    .local v7, "color":Landroid/graphics/Color;
    invoke-virtual {v7}, Landroid/graphics/Color;->alpha()F

    move-result v8

    add-float/2addr v1, v8

    .line 176
    invoke-virtual {v7}, Landroid/graphics/Color;->red()F

    move-result v8

    add-float/2addr v2, v8

    .line 177
    invoke-virtual {v7}, Landroid/graphics/Color;->green()F

    move-result v8

    add-float/2addr v3, v8

    .line 178
    invoke-virtual {v7}, Landroid/graphics/Color;->blue()F

    move-result v8

    add-float/2addr v4, v8

    .line 171
    .end local v6    # "singlePixel":I
    .end local v7    # "color":Landroid/graphics/Color;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 181
    .end local v5    # "i":I
    :cond_0
    int-to-float v5, v0

    div-float v5, v1, v5

    .line 182
    .local v5, "averageAlpha":F
    int-to-float v6, v0

    div-float v6, v2, v6

    .line 183
    .local v6, "averageRed":F
    int-to-float v7, v0

    div-float v7, v3, v7

    .line 184
    .local v7, "averageGreen":F
    int-to-float v8, v0

    div-float v8, v4, v8

    .line 186
    .local v8, "averageBlue":F
    invoke-static {v6, v7, v8, v5}, Landroid/graphics/Color;->valueOf(FFFF)Landroid/graphics/Color;

    move-result-object v9

    .line 187
    .local v9, "newColor":Landroid/graphics/Color;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "calAveragePixel averageAlpha "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " averageRed "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " averageGreen "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " averageBlue "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/view/autolayout/AutoLayoutDebug;->log(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v9}, Landroid/graphics/Color;->toArgb()I

    move-result v10

    return v10
.end method

.method private blacklist drawGradientBackgrond(Landroid/graphics/Bitmap;)V
    .locals 17
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 115
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0xa

    new-array v3, v2, [I

    .line 116
    .local v3, "topPixels":[I
    const/4 v4, 0x1

    invoke-direct {v0, v1, v4}, Landroid/view/autolayout/AutoLayoutCanvas;->sampleBitmap(Landroid/graphics/Bitmap;I)[I

    move-result-object v3

    .line 117
    new-array v4, v2, [I

    .line 118
    .local v4, "centerPixels":[I
    const/4 v5, 0x2

    invoke-direct {v0, v1, v5}, Landroid/view/autolayout/AutoLayoutCanvas;->sampleBitmap(Landroid/graphics/Bitmap;I)[I

    move-result-object v4

    .line 119
    new-array v2, v2, [I

    .line 120
    .local v2, "bottomPixels":[I
    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Landroid/view/autolayout/AutoLayoutCanvas;->sampleBitmap(Landroid/graphics/Bitmap;I)[I

    move-result-object v2

    .line 122
    invoke-direct {v0, v3}, Landroid/view/autolayout/AutoLayoutCanvas;->calAveragePixel([I)I

    move-result v13

    .line 123
    .local v13, "averageTopPixel":I
    invoke-direct {v0, v4}, Landroid/view/autolayout/AutoLayoutCanvas;->calAveragePixel([I)I

    move-result v14

    .line 124
    .local v14, "averageCenterPixel":I
    invoke-direct {v0, v2}, Landroid/view/autolayout/AutoLayoutCanvas;->calAveragePixel([I)I

    move-result v15

    .line 126
    .local v15, "averageBottomPixel":I
    new-instance v16, Landroid/graphics/LinearGradient;

    iget-object v5, v0, Landroid/view/autolayout/AutoLayoutCanvas;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v9, v5

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v5, v16

    move v10, v13

    move v11, v15

    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 128
    .local v5, "linearGradient":Landroid/graphics/LinearGradient;
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 129
    .local v6, "backgroundPaint":Landroid/graphics/Paint;
    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 130
    sget-object v7, Landroid/view/autolayout/AutoLayoutCanvas;->sCanvas:Landroid/graphics/Canvas;

    new-instance v8, Landroid/graphics/Rect;

    iget-object v9, v0, Landroid/view/autolayout/AutoLayoutCanvas;->mView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    iget-object v10, v0, Landroid/view/autolayout/AutoLayoutCanvas;->mView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    const/4 v11, 0x0

    invoke-direct {v8, v11, v11, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v7, v8, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 131
    return-void
.end method

.method public static blacklist getInstance()Landroid/view/autolayout/AutoLayoutCanvas;
    .locals 1

    .line 63
    sget-object v0, Landroid/view/autolayout/AutoLayoutCanvas;->sInstance:Landroid/view/autolayout/AutoLayoutCanvas;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Landroid/view/autolayout/AutoLayoutCanvas;

    invoke-direct {v0}, Landroid/view/autolayout/AutoLayoutCanvas;-><init>()V

    sput-object v0, Landroid/view/autolayout/AutoLayoutCanvas;->sInstance:Landroid/view/autolayout/AutoLayoutCanvas;

    .line 67
    :cond_0
    sget-object v0, Landroid/view/autolayout/AutoLayoutCanvas;->sInstance:Landroid/view/autolayout/AutoLayoutCanvas;

    return-object v0
.end method

.method public static blacklist getInstance(Landroid/graphics/Canvas;)Landroid/view/autolayout/AutoLayoutCanvas;
    .locals 1
    .param p0, "canvas"    # Landroid/graphics/Canvas;

    .line 54
    sget-object v0, Landroid/view/autolayout/AutoLayoutCanvas;->sInstance:Landroid/view/autolayout/AutoLayoutCanvas;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Landroid/view/autolayout/AutoLayoutCanvas;

    invoke-direct {v0}, Landroid/view/autolayout/AutoLayoutCanvas;-><init>()V

    sput-object v0, Landroid/view/autolayout/AutoLayoutCanvas;->sInstance:Landroid/view/autolayout/AutoLayoutCanvas;

    .line 58
    :cond_0
    sput-object p0, Landroid/view/autolayout/AutoLayoutCanvas;->sCanvas:Landroid/graphics/Canvas;

    .line 59
    sget-object v0, Landroid/view/autolayout/AutoLayoutCanvas;->sInstance:Landroid/view/autolayout/AutoLayoutCanvas;

    return-object v0
.end method

.method private blacklist isBannerBitmap()Z
    .locals 6

    .line 193
    iget-object v0, p0, Landroid/view/autolayout/AutoLayoutCanvas;->mView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    sget-object v2, Landroid/view/autolayout/AutoLayoutCanvas;->sCanvas:Landroid/graphics/Canvas;

    if-nez v2, :cond_0

    goto :goto_0

    .line 197
    :cond_0
    invoke-static {v0}, Landroid/view/autolayout/AutoLayoutUtils;->getViewInfo(Landroid/view/View;)Landroid/view/autolayout/AutoLayoutViewInfo;

    move-result-object v0

    .line 198
    .local v0, "viewInfo":Landroid/view/autolayout/AutoLayoutViewInfo;
    invoke-virtual {v0}, Landroid/view/autolayout/AutoLayoutViewInfo;->getIsImageType()Z

    move-result v2

    if-nez v2, :cond_1

    .line 199
    return v1

    .line 202
    :cond_1
    invoke-virtual {v0}, Landroid/view/autolayout/AutoLayoutViewInfo;->getHeightType()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v2, v3, :cond_2

    .line 203
    invoke-virtual {v0}, Landroid/view/autolayout/AutoLayoutViewInfo;->getHeightType()I

    move-result v2

    if-ne v2, v4, :cond_3

    .line 204
    :cond_2
    invoke-virtual {v0}, Landroid/view/autolayout/AutoLayoutViewInfo;->getWidthType()I

    move-result v2

    const/4 v5, 0x3

    if-ne v2, v5, :cond_3

    .line 205
    return v4

    .line 208
    :cond_3
    invoke-virtual {v0}, Landroid/view/autolayout/AutoLayoutViewInfo;->getWidthType()I

    move-result v2

    if-ne v2, v3, :cond_4

    .line 209
    invoke-virtual {v0}, Landroid/view/autolayout/AutoLayoutViewInfo;->getHeightType()I

    move-result v2

    if-ne v2, v4, :cond_4

    .line 210
    invoke-virtual {v0}, Landroid/view/autolayout/AutoLayoutViewInfo;->getIsFlatView()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 211
    return v4

    .line 214
    :cond_4
    return v1

    .line 194
    .end local v0    # "viewInfo":Landroid/view/autolayout/AutoLayoutViewInfo;
    :cond_5
    :goto_0
    return v1
.end method

.method private blacklist sampleBitmap(Landroid/graphics/Bitmap;I)[I
    .locals 12
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "position"    # I

    .line 134
    const/16 v0, 0xa

    new-array v0, v0, [I

    .line 135
    .local v0, "pixels":[I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 136
    .local v1, "bitmapWidth":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 137
    .local v2, "bitmapHeight":I
    const/4 v3, 0x0

    .line 138
    .local v3, "sampleY":I
    const/16 v4, 0xa

    .line 139
    .local v4, "sampleCount":I
    add-int/lit8 v5, v4, 0x1

    div-int v5, v1, v5

    .line 140
    .local v5, "sampleStep":I
    const v6, 0x3e19999a    # 0.15f

    .line 141
    .local v6, "topPosition":F
    const/high16 v7, 0x3f000000    # 0.5f

    .line 142
    .local v7, "centerPosition":F
    const v8, 0x3f59999a    # 0.85f

    .line 143
    .local v8, "bottomPosition":F
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 151
    :pswitch_0
    int-to-float v9, v2

    mul-float/2addr v9, v8

    float-to-int v3, v9

    .line 152
    goto :goto_0

    .line 148
    :pswitch_1
    int-to-float v9, v2

    mul-float/2addr v9, v7

    float-to-int v3, v9

    .line 149
    goto :goto_0

    .line 145
    :pswitch_2
    int-to-float v9, v2

    mul-float/2addr v9, v6

    float-to-int v3, v9

    .line 146
    nop

    .line 157
    :goto_0
    const/16 v9, 0xa

    .line 158
    .local v9, "startOffset":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v4, :cond_0

    .line 159
    mul-int v11, v10, v5

    add-int/2addr v11, v9

    invoke-virtual {p1, v11, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v11

    aput v11, v0, v10

    .line 158
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 162
    .end local v10    # "i":I
    :cond_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist scaleBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 103
    invoke-direct {p0}, Landroid/view/autolayout/AutoLayoutCanvas;->isBannerBitmap()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    return-void

    .line 108
    :cond_0
    invoke-direct {p0, p1}, Landroid/view/autolayout/AutoLayoutCanvas;->drawGradientBackgrond(Landroid/graphics/Bitmap;)V

    .line 111
    invoke-direct {p0, p1}, Landroid/view/autolayout/AutoLayoutCanvas;->transformCanvasAndDraw(Landroid/graphics/Bitmap;)V

    .line 112
    return-void
.end method

.method private blacklist transformCanvasAndDraw(Landroid/graphics/Bitmap;)V
    .locals 8
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 219
    iget-object v0, p0, Landroid/view/autolayout/AutoLayoutCanvas;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    float-to-int v0, v0

    .line 220
    .local v0, "centerAlignOffset":I
    const/4 v2, 0x0

    .line 221
    .local v2, "startAlignOffset":I
    iget-object v3, p0, Landroid/view/autolayout/AutoLayoutCanvas;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v1, v3

    .line 223
    .local v1, "endAlignOffset":I
    iget-object v3, p0, Landroid/view/autolayout/AutoLayoutCanvas;->mView:Landroid/view/View;

    invoke-static {v3}, Landroid/view/autolayout/AutoLayoutUtils;->getViewInfo(Landroid/view/View;)Landroid/view/autolayout/AutoLayoutViewInfo;

    move-result-object v3

    .line 224
    .local v3, "viewInfo":Landroid/view/autolayout/AutoLayoutViewInfo;
    invoke-virtual {v3}, Landroid/view/autolayout/AutoLayoutViewInfo;->getOriginScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v4

    .line 225
    .local v4, "originScaleType":Landroid/widget/ImageView$ScaleType;
    sget-object v5, Landroid/view/autolayout/AutoLayoutCanvas$1;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    invoke-virtual {v4}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/4 v6, 0x0

    packed-switch v5, :pswitch_data_0

    .line 233
    sget-object v5, Landroid/view/autolayout/AutoLayoutCanvas;->sCanvas:Landroid/graphics/Canvas;

    int-to-float v7, v0

    invoke-virtual {v5, v7, v6}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 230
    :pswitch_0
    sget-object v5, Landroid/view/autolayout/AutoLayoutCanvas;->sCanvas:Landroid/graphics/Canvas;

    int-to-float v7, v1

    invoke-virtual {v5, v7, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 231
    goto :goto_0

    .line 227
    :pswitch_1
    sget-object v5, Landroid/view/autolayout/AutoLayoutCanvas;->sCanvas:Landroid/graphics/Canvas;

    int-to-float v7, v2

    invoke-virtual {v5, v7, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 228
    nop

    .line 236
    :goto_0
    const/high16 v5, 0x3f000000    # 0.5f

    .line 237
    .local v5, "scaleRatio":F
    sget-object v6, Landroid/view/autolayout/AutoLayoutCanvas;->sCanvas:Landroid/graphics/Canvas;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v5, v7}, Landroid/graphics/Canvas;->scale(FF)V

    .line 238
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final blacklist drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 76
    invoke-direct {p0, p1}, Landroid/view/autolayout/AutoLayoutCanvas;->scaleBitmap(Landroid/graphics/Bitmap;)V

    .line 77
    return-void
.end method

.method public final blacklist drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "matrix"    # Landroid/graphics/Matrix;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .line 81
    invoke-direct {p0, p1}, Landroid/view/autolayout/AutoLayoutCanvas;->scaleBitmap(Landroid/graphics/Bitmap;)V

    .line 82
    return-void
.end method

.method public final blacklist drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "src"    # Landroid/graphics/Rect;
    .param p3, "dst"    # Landroid/graphics/Rect;
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 86
    invoke-direct {p0, p1}, Landroid/view/autolayout/AutoLayoutCanvas;->scaleBitmap(Landroid/graphics/Bitmap;)V

    .line 87
    return-void
.end method

.method public final blacklist drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "src"    # Landroid/graphics/Rect;
    .param p3, "dst"    # Landroid/graphics/RectF;
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 92
    return-void
.end method

.method public final blacklist end()V
    .locals 1

    .line 99
    sget-object v0, Landroid/view/autolayout/AutoLayoutCanvas;->sCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 100
    return-void
.end method

.method public final blacklist setView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 71
    iput-object p1, p0, Landroid/view/autolayout/AutoLayoutCanvas;->mView:Landroid/view/View;

    .line 72
    return-void
.end method

.method public final blacklist start()V
    .locals 1

    .line 95
    sget-object v0, Landroid/view/autolayout/AutoLayoutCanvas;->sCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 96
    return-void
.end method
