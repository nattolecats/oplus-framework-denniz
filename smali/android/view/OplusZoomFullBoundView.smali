.class public Landroid/view/OplusZoomFullBoundView;
.super Landroid/widget/ImageView;
.source "OplusZoomFullBoundView.java"


# instance fields
.field private blacklist mContext:Landroid/content/Context;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 18
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 19
    iput-object p1, p0, Landroid/view/OplusZoomFullBoundView;->mContext:Landroid/content/Context;

    .line 20
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    iput-object p1, p0, Landroid/view/OplusZoomFullBoundView;->mContext:Landroid/content/Context;

    .line 25
    return-void
.end method


# virtual methods
.method public blacklist dipToPixel(I)I
    .locals 3
    .param p1, "dpValue"    # I

    .line 39
    iget-object v0, p0, Landroid/view/OplusZoomFullBoundView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 40
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    if-nez v0, :cond_0

    .line 41
    const/4 v1, 0x0

    return v1

    .line 44
    :cond_0
    const/4 v1, 0x1

    int-to-float v2, p1

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    return v1
.end method

.method protected whitelist onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 29
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 30
    .local v0, "paint":Landroid/graphics/Paint;
    const-string v1, "#2660F5"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 31
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 32
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Landroid/view/OplusZoomFullBoundView;->dipToPixel(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 33
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 34
    new-instance v1, Landroid/graphics/RectF;

    const/4 v2, 0x0

    const/high16 v3, 0x44870000    # 1080.0f

    const/high16 v4, 0x45160000    # 2400.0f

    invoke-direct {v1, v2, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 35
    .local v1, "rectF":Landroid/graphics/RectF;
    const/16 v2, 0x28

    invoke-virtual {p0, v2}, Landroid/view/OplusZoomFullBoundView;->dipToPixel(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0, v2}, Landroid/view/OplusZoomFullBoundView;->dipToPixel(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 36
    return-void
.end method
