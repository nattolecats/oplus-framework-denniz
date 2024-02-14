.class public Landroid/graphics/BaseCanvasExtImpl;
.super Ljava/lang/Object;
.source "BaseCanvasExtImpl.java"

# interfaces
.implements Landroid/graphics/IBaseCanvasExt;


# instance fields
.field private blacklist mClipChildRect:Landroid/graphics/Rect;

.field private blacklist mTransformType:I

.field private blacklist mViewHeight:I

.field private blacklist mViewType:I

.field private blacklist mViewWidth:I


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "base"    # Ljava/lang/Object;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x2

    iput v0, p0, Landroid/graphics/BaseCanvasExtImpl;->mTransformType:I

    .line 34
    return-void
.end method

.method private blacklist ensureRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 4
    .param p1, "rectF"    # Landroid/graphics/RectF;

    .line 205
    if-nez p1, :cond_0

    .line 206
    sget-object v0, Landroid/graphics/BaseCanvasExtImpl;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/BaseCanvasExtImpl;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/graphics/BaseCanvasExtImpl;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 207
    sget-object v0, Landroid/graphics/BaseCanvasExtImpl;->mRectF:Landroid/graphics/RectF;

    return-object v0

    .line 209
    :cond_0
    return-object p1
.end method

.method private blacklist getAutoLayoutManager()Landroid/view/autolayout/IOplusAutoLayoutManager;
    .locals 2

    .line 277
    sget-object v0, Landroid/view/autolayout/IOplusAutoLayoutManager;->mDefault:Landroid/view/autolayout/IOplusAutoLayoutManager;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Landroid/view/autolayout/IOplusAutoLayoutManager;

    return-object v0
.end method

.method private blacklist getOplusRgbNormalizeManager()Landroid/view/rgbnormalize/IOplusRGBNormalizeManager;
    .locals 2

    .line 284
    sget-object v0, Landroid/view/rgbnormalize/IOplusRGBNormalizeManager;->DEFAULT:Landroid/view/rgbnormalize/IOplusRGBNormalizeManager;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Landroid/view/rgbnormalize/IOplusRGBNormalizeManager;

    return-object v0
.end method


# virtual methods
.method public blacklist changeArea(Landroid/graphics/Paint;Landroid/graphics/RectF;)Landroid/graphics/IBaseCanvasExt$Entity;
    .locals 6
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "rectF"    # Landroid/graphics/RectF;

    .line 147
    invoke-virtual {p0}, Landroid/graphics/BaseCanvasExtImpl;->isDarkMode()Z

    move-result v0

    .line 148
    .local v0, "isDarkMode":Z
    const/4 v1, 0x0

    .line 149
    .local v1, "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    const/4 v2, 0x0

    .line 150
    .local v2, "realPaintState":Landroid/graphics/IBaseCanvasExt$RealPaintState;
    if-eqz v0, :cond_0

    .line 151
    new-instance v3, Landroid/graphics/IBaseCanvasExt$Entity;

    invoke-direct {v3}, Landroid/graphics/IBaseCanvasExt$Entity;-><init>()V

    move-object v1, v3

    .line 152
    sget-object v3, Lcom/oplus/darkmode/IOplusDarkModeManager;->DEFAULT:Lcom/oplus/darkmode/IOplusDarkModeManager;

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v3, v5}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v3

    check-cast v3, Lcom/oplus/darkmode/IOplusDarkModeManager;

    invoke-interface {v3, p1}, Lcom/oplus/darkmode/IOplusDarkModeManager;->getRealPaintState(Landroid/graphics/Paint;)Landroid/graphics/IBaseCanvasExt$RealPaintState;

    move-result-object v2

    .line 153
    sget-object v3, Lcom/oplus/darkmode/IOplusDarkModeManager;->DEFAULT:Lcom/oplus/darkmode/IOplusDarkModeManager;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v3

    check-cast v3, Lcom/oplus/darkmode/IOplusDarkModeManager;

    invoke-direct {p0, p2}, Landroid/graphics/BaseCanvasExtImpl;->ensureRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-interface {v3, p1, v4, p0}, Lcom/oplus/darkmode/IOplusDarkModeManager;->changePaintWhenDrawArea(Landroid/graphics/Paint;Landroid/graphics/RectF;Landroid/graphics/IBaseCanvasExt;)V

    .line 154
    iput-object v2, v1, Landroid/graphics/IBaseCanvasExt$Entity;->realPaintState:Landroid/graphics/IBaseCanvasExt$RealPaintState;

    .line 155
    iput-boolean v0, v1, Landroid/graphics/IBaseCanvasExt$Entity;->isDarkMode:Z

    .line 158
    :cond_0
    invoke-direct {p0}, Landroid/graphics/BaseCanvasExtImpl;->getOplusRgbNormalizeManager()Landroid/view/rgbnormalize/IOplusRGBNormalizeManager;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/view/rgbnormalize/IOplusRGBNormalizeManager;->hookPaintColor(Landroid/graphics/Paint;)V

    .line 160
    return-object v1
.end method

.method public blacklist changeArea(Landroid/graphics/Paint;Landroid/graphics/RectF;Landroid/graphics/Path;)Landroid/graphics/IBaseCanvasExt$Entity;
    .locals 6
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "rectF"    # Landroid/graphics/RectF;
    .param p3, "path"    # Landroid/graphics/Path;

    .line 164
    invoke-virtual {p0}, Landroid/graphics/BaseCanvasExtImpl;->isDarkMode()Z

    move-result v0

    .line 165
    .local v0, "isDarkMode":Z
    const/4 v1, 0x0

    .line 166
    .local v1, "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    const/4 v2, 0x0

    .line 167
    .local v2, "realPaintState":Landroid/graphics/IBaseCanvasExt$RealPaintState;
    if-eqz v0, :cond_0

    .line 168
    new-instance v3, Landroid/graphics/IBaseCanvasExt$Entity;

    invoke-direct {v3}, Landroid/graphics/IBaseCanvasExt$Entity;-><init>()V

    move-object v1, v3

    .line 169
    sget-object v3, Lcom/oplus/darkmode/IOplusDarkModeManager;->DEFAULT:Lcom/oplus/darkmode/IOplusDarkModeManager;

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v3, v5}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v3

    check-cast v3, Lcom/oplus/darkmode/IOplusDarkModeManager;

    invoke-interface {v3, p1}, Lcom/oplus/darkmode/IOplusDarkModeManager;->getRealPaintState(Landroid/graphics/Paint;)Landroid/graphics/IBaseCanvasExt$RealPaintState;

    move-result-object v2

    .line 170
    sget-object v3, Lcom/oplus/darkmode/IOplusDarkModeManager;->DEFAULT:Lcom/oplus/darkmode/IOplusDarkModeManager;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v3

    check-cast v3, Lcom/oplus/darkmode/IOplusDarkModeManager;

    invoke-direct {p0, p2}, Landroid/graphics/BaseCanvasExtImpl;->ensureRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-interface {v3, p1, v4, p3, p0}, Lcom/oplus/darkmode/IOplusDarkModeManager;->changePaintWhenDrawArea(Landroid/graphics/Paint;Landroid/graphics/RectF;Landroid/graphics/Path;Landroid/graphics/IBaseCanvasExt;)V

    .line 171
    iput-object v2, v1, Landroid/graphics/IBaseCanvasExt$Entity;->realPaintState:Landroid/graphics/IBaseCanvasExt$RealPaintState;

    .line 172
    iput-boolean v0, v1, Landroid/graphics/IBaseCanvasExt$Entity;->isDarkMode:Z

    .line 175
    :cond_0
    invoke-direct {p0}, Landroid/graphics/BaseCanvasExtImpl;->getOplusRgbNormalizeManager()Landroid/view/rgbnormalize/IOplusRGBNormalizeManager;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/view/rgbnormalize/IOplusRGBNormalizeManager;->hookPaintColor(Landroid/graphics/Paint;)V

    .line 177
    return-object v1
.end method

.method public blacklist changeBitmap(Landroid/graphics/Paint;Landroid/graphics/Bitmap;Landroid/graphics/RectF;)Landroid/graphics/IBaseCanvasExt$Entity;
    .locals 6
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "rectF"    # Landroid/graphics/RectF;

    .line 109
    invoke-virtual {p0}, Landroid/graphics/BaseCanvasExtImpl;->isDarkMode()Z

    move-result v0

    .line 110
    .local v0, "isDarkMode":Z
    const/4 v1, 0x0

    .line 111
    .local v1, "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    const/4 v2, 0x0

    .line 112
    .local v2, "realPaintState":Landroid/graphics/IBaseCanvasExt$RealPaintState;
    if-eqz v0, :cond_0

    .line 113
    new-instance v3, Landroid/graphics/IBaseCanvasExt$Entity;

    invoke-direct {v3}, Landroid/graphics/IBaseCanvasExt$Entity;-><init>()V

    move-object v1, v3

    .line 114
    sget-object v3, Lcom/oplus/darkmode/IOplusDarkModeManager;->DEFAULT:Lcom/oplus/darkmode/IOplusDarkModeManager;

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v3, v5}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v3

    check-cast v3, Lcom/oplus/darkmode/IOplusDarkModeManager;

    invoke-interface {v3, p1}, Lcom/oplus/darkmode/IOplusDarkModeManager;->getRealPaintState(Landroid/graphics/Paint;)Landroid/graphics/IBaseCanvasExt$RealPaintState;

    move-result-object v2

    .line 115
    sget-object v3, Lcom/oplus/darkmode/IOplusDarkModeManager;->DEFAULT:Lcom/oplus/darkmode/IOplusDarkModeManager;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v3

    check-cast v3, Lcom/oplus/darkmode/IOplusDarkModeManager;

    invoke-direct {p0, p3}, Landroid/graphics/BaseCanvasExtImpl;->ensureRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-interface {v3, p1, p2, v4, p0}, Lcom/oplus/darkmode/IOplusDarkModeManager;->getPaintWhenDrawBitmap(Landroid/graphics/Paint;Landroid/graphics/Bitmap;Landroid/graphics/RectF;Landroid/graphics/IBaseCanvasExt;)Landroid/graphics/Paint;

    move-result-object v3

    iput-object v3, v1, Landroid/graphics/IBaseCanvasExt$Entity;->newPaint:Landroid/graphics/Paint;

    .line 116
    iput-object v2, v1, Landroid/graphics/IBaseCanvasExt$Entity;->realPaintState:Landroid/graphics/IBaseCanvasExt$RealPaintState;

    .line 117
    iput-boolean v0, v1, Landroid/graphics/IBaseCanvasExt$Entity;->isDarkMode:Z

    .line 120
    :cond_0
    invoke-direct {p0}, Landroid/graphics/BaseCanvasExtImpl;->getOplusRgbNormalizeManager()Landroid/view/rgbnormalize/IOplusRGBNormalizeManager;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/view/rgbnormalize/IOplusRGBNormalizeManager;->hookPaintBitmap(Landroid/graphics/Paint;Landroid/graphics/Bitmap;)V

    .line 122
    return-object v1
.end method

.method public blacklist changeColor(I)I
    .locals 2
    .param p1, "color"    # I

    .line 126
    invoke-virtual {p0}, Landroid/graphics/BaseCanvasExtImpl;->isDarkMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    sget-object v0, Lcom/oplus/darkmode/IOplusDarkModeManager;->DEFAULT:Lcom/oplus/darkmode/IOplusDarkModeManager;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Lcom/oplus/darkmode/IOplusDarkModeManager;

    invoke-virtual {p0}, Landroid/graphics/BaseCanvasExtImpl;->isDarkMode()Z

    move-result v1

    invoke-interface {v0, p1, v1, p0}, Lcom/oplus/darkmode/IOplusDarkModeManager;->changeWhenDrawColor(IZLandroid/graphics/IBaseCanvasExt;)I

    move-result v0

    return v0

    .line 129
    :cond_0
    return p1
.end method

.method public blacklist changeColors([I)[I
    .locals 0
    .param p1, "colors"    # [I

    .line 105
    return-object p1
.end method

.method public blacklist changePatch(Landroid/graphics/NinePatch;Landroid/graphics/Paint;Landroid/graphics/RectF;)Landroid/graphics/IBaseCanvasExt$Entity;
    .locals 6
    .param p1, "patch"    # Landroid/graphics/NinePatch;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "rectF"    # Landroid/graphics/RectF;

    .line 133
    invoke-virtual {p0}, Landroid/graphics/BaseCanvasExtImpl;->isDarkMode()Z

    move-result v0

    .line 134
    .local v0, "isDarkMode":Z
    const/4 v1, 0x0

    .line 135
    .local v1, "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    const/4 v2, 0x0

    .line 136
    .local v2, "realPaintState":Landroid/graphics/IBaseCanvasExt$RealPaintState;
    if-eqz v0, :cond_0

    .line 137
    new-instance v3, Landroid/graphics/IBaseCanvasExt$Entity;

    invoke-direct {v3}, Landroid/graphics/IBaseCanvasExt$Entity;-><init>()V

    move-object v1, v3

    .line 138
    sget-object v3, Lcom/oplus/darkmode/IOplusDarkModeManager;->DEFAULT:Lcom/oplus/darkmode/IOplusDarkModeManager;

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v3, v5}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v3

    check-cast v3, Lcom/oplus/darkmode/IOplusDarkModeManager;

    invoke-interface {v3, p2}, Lcom/oplus/darkmode/IOplusDarkModeManager;->getRealPaintState(Landroid/graphics/Paint;)Landroid/graphics/IBaseCanvasExt$RealPaintState;

    move-result-object v2

    .line 139
    sget-object v3, Lcom/oplus/darkmode/IOplusDarkModeManager;->DEFAULT:Lcom/oplus/darkmode/IOplusDarkModeManager;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v3

    check-cast v3, Lcom/oplus/darkmode/IOplusDarkModeManager;

    invoke-direct {p0, p3}, Landroid/graphics/BaseCanvasExtImpl;->ensureRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-interface {v3, p1, p2, v4, p0}, Lcom/oplus/darkmode/IOplusDarkModeManager;->getPaintWhenDrawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Paint;Landroid/graphics/RectF;Landroid/graphics/IBaseCanvasExt;)Landroid/graphics/Paint;

    move-result-object v3

    iput-object v3, v1, Landroid/graphics/IBaseCanvasExt$Entity;->newPaint:Landroid/graphics/Paint;

    .line 140
    iput-object v2, v1, Landroid/graphics/IBaseCanvasExt$Entity;->realPaintState:Landroid/graphics/IBaseCanvasExt$RealPaintState;

    .line 141
    iput-boolean v0, v1, Landroid/graphics/IBaseCanvasExt$Entity;->isDarkMode:Z

    .line 143
    :cond_0
    return-object v1
.end method

.method public blacklist changeText(Landroid/graphics/Paint;)Landroid/graphics/IBaseCanvasExt$Entity;
    .locals 6
    .param p1, "paint"    # Landroid/graphics/Paint;

    .line 181
    invoke-virtual {p0}, Landroid/graphics/BaseCanvasExtImpl;->isDarkMode()Z

    move-result v0

    .line 182
    .local v0, "isDarkMode":Z
    const/4 v1, 0x0

    .line 183
    .local v1, "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    const/4 v2, 0x0

    .line 184
    .local v2, "realPaintState":Landroid/graphics/IBaseCanvasExt$RealPaintState;
    if-eqz v0, :cond_0

    .line 185
    new-instance v3, Landroid/graphics/IBaseCanvasExt$Entity;

    invoke-direct {v3}, Landroid/graphics/IBaseCanvasExt$Entity;-><init>()V

    move-object v1, v3

    .line 186
    sget-object v3, Lcom/oplus/darkmode/IOplusDarkModeManager;->DEFAULT:Lcom/oplus/darkmode/IOplusDarkModeManager;

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v3, v5}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v3

    check-cast v3, Lcom/oplus/darkmode/IOplusDarkModeManager;

    invoke-interface {v3, p1}, Lcom/oplus/darkmode/IOplusDarkModeManager;->getRealPaintState(Landroid/graphics/Paint;)Landroid/graphics/IBaseCanvasExt$RealPaintState;

    move-result-object v2

    .line 187
    sget-object v3, Lcom/oplus/darkmode/IOplusDarkModeManager;->DEFAULT:Lcom/oplus/darkmode/IOplusDarkModeManager;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v3

    check-cast v3, Lcom/oplus/darkmode/IOplusDarkModeManager;

    invoke-interface {v3, p1, p0}, Lcom/oplus/darkmode/IOplusDarkModeManager;->changePaintWhenDrawText(Landroid/graphics/Paint;Landroid/graphics/IBaseCanvasExt;)V

    .line 188
    iput-object v2, v1, Landroid/graphics/IBaseCanvasExt$Entity;->realPaintState:Landroid/graphics/IBaseCanvasExt$RealPaintState;

    .line 189
    iput-boolean v0, v1, Landroid/graphics/IBaseCanvasExt$Entity;->isDarkMode:Z

    .line 192
    :cond_0
    invoke-direct {p0}, Landroid/graphics/BaseCanvasExtImpl;->getOplusRgbNormalizeManager()Landroid/view/rgbnormalize/IOplusRGBNormalizeManager;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/view/rgbnormalize/IOplusRGBNormalizeManager;->hookPaintColor(Landroid/graphics/Paint;)V

    .line 194
    return-object v1
.end method

.method public blacklist drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 242
    invoke-direct {p0}, Landroid/graphics/BaseCanvasExtImpl;->getAutoLayoutManager()Landroid/view/autolayout/IOplusAutoLayoutManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/autolayout/IOplusAutoLayoutManager;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 243
    return-void
.end method

.method public blacklist drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "matrix"    # Landroid/graphics/Matrix;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .line 248
    invoke-direct {p0}, Landroid/graphics/BaseCanvasExtImpl;->getAutoLayoutManager()Landroid/view/autolayout/IOplusAutoLayoutManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/view/autolayout/IOplusAutoLayoutManager;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 249
    return-void
.end method

.method public blacklist drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "src"    # Landroid/graphics/Rect;
    .param p3, "dst"    # Landroid/graphics/Rect;
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 254
    invoke-direct {p0}, Landroid/graphics/BaseCanvasExtImpl;->getAutoLayoutManager()Landroid/view/autolayout/IOplusAutoLayoutManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/autolayout/IOplusAutoLayoutManager;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 255
    return-void
.end method

.method public blacklist drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "src"    # Landroid/graphics/Rect;
    .param p3, "dst"    # Landroid/graphics/RectF;
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 260
    invoke-direct {p0}, Landroid/graphics/BaseCanvasExtImpl;->getAutoLayoutManager()Landroid/view/autolayout/IOplusAutoLayoutManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/autolayout/IOplusAutoLayoutManager;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 261
    return-void
.end method

.method public blacklist end()V
    .locals 1

    .line 270
    invoke-direct {p0}, Landroid/graphics/BaseCanvasExtImpl;->getAutoLayoutManager()Landroid/view/autolayout/IOplusAutoLayoutManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/autolayout/IOplusAutoLayoutManager;->end()V

    .line 273
    invoke-direct {p0}, Landroid/graphics/BaseCanvasExtImpl;->getOplusRgbNormalizeManager()Landroid/view/rgbnormalize/IOplusRGBNormalizeManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/rgbnormalize/IOplusRGBNormalizeManager;->clear()V

    .line 274
    return-void
.end method

.method public blacklist getClipChildRect()Landroid/graphics/Rect;
    .locals 1

    .line 234
    iget-object v0, p0, Landroid/graphics/BaseCanvasExtImpl;->mClipChildRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getHeight()I
    .locals 1

    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getOplusViewType()I
    .locals 1

    .line 50
    iget v0, p0, Landroid/graphics/BaseCanvasExtImpl;->mViewType:I

    return v0
.end method

.method public blacklist getRectF(FF)Landroid/graphics/RectF;
    .locals 2
    .param p1, "width"    # F
    .param p2, "height"    # F

    .line 66
    sget-object v0, Landroid/graphics/BaseCanvasExtImpl;->mRectF:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 67
    sget-object v0, Landroid/graphics/BaseCanvasExtImpl;->mRectF:Landroid/graphics/RectF;

    return-object v0
.end method

.method public blacklist getRectF(FFFF)Landroid/graphics/RectF;
    .locals 1
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .line 71
    sget-object v0, Landroid/graphics/BaseCanvasExtImpl;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 72
    sget-object v0, Landroid/graphics/BaseCanvasExtImpl;->mRectF:Landroid/graphics/RectF;

    return-object v0
.end method

.method public blacklist getRectF(Landroid/graphics/Rect;)Landroid/graphics/RectF;
    .locals 1
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 76
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public blacklist getTransformType()I
    .locals 1

    .line 58
    iget v0, p0, Landroid/graphics/BaseCanvasExtImpl;->mTransformType:I

    return v0
.end method

.method public blacklist getViewAreaHeight()I
    .locals 1

    .line 46
    iget v0, p0, Landroid/graphics/BaseCanvasExtImpl;->mViewHeight:I

    return v0
.end method

.method public blacklist getViewAreaWidth()I
    .locals 1

    .line 42
    iget v0, p0, Landroid/graphics/BaseCanvasExtImpl;->mViewWidth:I

    return v0
.end method

.method public blacklist getWidth()I
    .locals 1

    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isDarkMode()Z
    .locals 2

    .line 93
    sget-object v0, Lcom/oplus/darkmode/IOplusDarkModeManager;->DEFAULT:Lcom/oplus/darkmode/IOplusDarkModeManager;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Lcom/oplus/darkmode/IOplusDarkModeManager;

    invoke-virtual {p0}, Landroid/graphics/BaseCanvasExtImpl;->isHardwareAccelerated()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/oplus/darkmode/IOplusDarkModeManager;->isInDarkMode(Z)Z

    move-result v0

    return v0
.end method

.method public blacklist isHardwareAccelerated()Z
    .locals 1

    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist resetEntity(Landroid/graphics/IBaseCanvasExt$Entity;Landroid/graphics/Paint;)V
    .locals 2
    .param p1, "entity"    # Landroid/graphics/IBaseCanvasExt$Entity;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 198
    if-eqz p1, :cond_0

    iget-boolean v0, p1, Landroid/graphics/IBaseCanvasExt$Entity;->isDarkMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/graphics/IBaseCanvasExt$Entity;->realPaintState:Landroid/graphics/IBaseCanvasExt$RealPaintState;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 199
    sget-object v0, Lcom/oplus/darkmode/IOplusDarkModeManager;->DEFAULT:Lcom/oplus/darkmode/IOplusDarkModeManager;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Lcom/oplus/darkmode/IOplusDarkModeManager;

    iget-object v1, p1, Landroid/graphics/IBaseCanvasExt$Entity;->realPaintState:Landroid/graphics/IBaseCanvasExt$RealPaintState;

    invoke-interface {v0, p2, v1}, Lcom/oplus/darkmode/IOplusDarkModeManager;->resetRealPaintIfNeed(Landroid/graphics/Paint;Landroid/graphics/IBaseCanvasExt$RealPaintState;)V

    .line 201
    :cond_0
    return-void
.end method

.method public blacklist setClipChildRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 219
    if-nez p1, :cond_0

    .line 220
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/BaseCanvasExtImpl;->mClipChildRect:Landroid/graphics/Rect;

    goto :goto_0

    .line 222
    :cond_0
    iget-object v0, p0, Landroid/graphics/BaseCanvasExtImpl;->mClipChildRect:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    .line 223
    iput-object p1, p0, Landroid/graphics/BaseCanvasExtImpl;->mClipChildRect:Landroid/graphics/Rect;

    goto :goto_0

    .line 225
    :cond_1
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 228
    :goto_0
    return-void
.end method

.method public blacklist setIsCanvasBaseBitmap(Landroid/graphics/Bitmap;Z)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "value"    # Z

    .line 80
    if-eqz p1, :cond_0

    .line 81
    iget-object v0, p1, Landroid/graphics/Bitmap;->mBitmapExt:Landroid/graphics/IBitmapExt;

    .line 82
    .local v0, "bitmapExt":Landroid/graphics/IBitmapExt;
    if-eqz v0, :cond_0

    .line 83
    invoke-interface {v0, p2}, Landroid/graphics/IBitmapExt;->setIsCanvasBaseBitmap(Z)V

    .line 86
    .end local v0    # "bitmapExt":Landroid/graphics/IBitmapExt;
    :cond_0
    return-void
.end method

.method public blacklist setOplusViewTypeLocked(I)V
    .locals 0
    .param p1, "viewType"    # I

    .line 54
    iput p1, p0, Landroid/graphics/BaseCanvasExtImpl;->mViewType:I

    .line 55
    return-void
.end method

.method public blacklist setTransformType(I)V
    .locals 0
    .param p1, "mTransformType"    # I

    .line 62
    iput p1, p0, Landroid/graphics/BaseCanvasExtImpl;->mTransformType:I

    .line 63
    return-void
.end method

.method public blacklist setViewArea(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 37
    iput p1, p0, Landroid/graphics/BaseCanvasExtImpl;->mViewWidth:I

    .line 38
    iput p2, p0, Landroid/graphics/BaseCanvasExtImpl;->mViewHeight:I

    .line 39
    return-void
.end method

.method public blacklist start()V
    .locals 1

    .line 265
    invoke-direct {p0}, Landroid/graphics/BaseCanvasExtImpl;->getAutoLayoutManager()Landroid/view/autolayout/IOplusAutoLayoutManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/autolayout/IOplusAutoLayoutManager;->start()V

    .line 266
    return-void
.end method
