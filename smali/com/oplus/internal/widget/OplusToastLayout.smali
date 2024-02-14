.class public Lcom/oplus/internal/widget/OplusToastLayout;
.super Landroid/widget/LinearLayout;
.source "OplusToastLayout.java"


# static fields
.field private static final blacklist DBG:Z = false

.field private static final blacklist ELEVATION:I = 0xa

.field private static final blacklist ELEVATION_ALPHA:F = 0.3f

.field private static final blacklist HORIZONTAL_MARGIN_DELTA:I = 0x8

.field private static final blacklist LAYOUT_MIN_HEIGHT_DP:I = 0x22

.field private static final blacklist PIXEL_OFFSET:F = 0.5f

.field private static final blacklist TAG:Ljava/lang/String; = "OplusToastLayout"

.field private static final blacklist TEXT_ADD_SPACING:F = 0.0f

.field private static final blacklist TEXT_MULTI_SPACING:F = 1.2f

.field private static final blacklist TOAST_MARGIN_LEFT:I = 0x10


# instance fields
.field private final blacklist mTextColor:I

.field private final blacklist mTextPadding:Landroid/graphics/Rect;

.field private final blacklist mTextSize:F

.field private final blacklist mTypeface:Landroid/graphics/Typeface;

.field private final blacklist mWm:Landroid/view/WindowManager;


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oplus/internal/widget/OplusToastLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 84
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/internal/widget/OplusToastLayout;->mTextPadding:Landroid/graphics/Rect;

    .line 85
    const v1, 0xc080039

    invoke-virtual {p0, v1}, Lcom/oplus/internal/widget/OplusToastLayout;->setBackgroundResource(I)V

    .line 86
    invoke-virtual {p0}, Lcom/oplus/internal/widget/OplusToastLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc060037

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/oplus/internal/widget/OplusToastLayout;->mTextColor:I

    .line 87
    invoke-virtual {p0}, Lcom/oplus/internal/widget/OplusToastLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc05006d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/oplus/internal/widget/OplusToastLayout;->mTextSize:F

    .line 88
    invoke-virtual {p0}, Lcom/oplus/internal/widget/OplusToastLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc05006e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 89
    invoke-virtual {p0}, Lcom/oplus/internal/widget/OplusToastLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc05006f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 90
    invoke-virtual {p0}, Lcom/oplus/internal/widget/OplusToastLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc050070

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 91
    invoke-virtual {p0}, Lcom/oplus/internal/widget/OplusToastLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc050071

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 95
    const-string v0, "sans-serif-medium"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/internal/widget/OplusToastLayout;->mTypeface:Landroid/graphics/Typeface;

    .line 100
    const v0, 0xc020084

    invoke-virtual {p0, v0}, Lcom/oplus/internal/widget/OplusToastLayout;->setId(I)V

    .line 105
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/oplus/internal/widget/OplusToastLayout;->mWm:Landroid/view/WindowManager;

    .line 107
    return-void
.end method

.method private blacklist dp2px(I)I
    .locals 2
    .param p1, "dp"    # I

    .line 166
    invoke-virtual {p0}, Lcom/oplus/internal/widget/OplusToastLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method protected whitelist onFinishInflate()V
    .locals 7

    .line 114
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 115
    const v0, 0x102000b

    invoke-virtual {p0, v0}, Lcom/oplus/internal/widget/OplusToastLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 116
    .local v0, "textView":Landroid/widget/TextView;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v1, v1, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 117
    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 118
    iget-object v3, p0, Lcom/oplus/internal/widget/OplusToastLayout;->mTextPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/oplus/internal/widget/OplusToastLayout;->mTextPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/oplus/internal/widget/OplusToastLayout;->mTextPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/oplus/internal/widget/OplusToastLayout;->mTextPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 119
    iget v3, p0, Lcom/oplus/internal/widget/OplusToastLayout;->mTextColor:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 120
    iget v3, p0, Lcom/oplus/internal/widget/OplusToastLayout;->mTextSize:F

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 123
    iget-object v3, p0, Lcom/oplus/internal/widget/OplusToastLayout;->mTypeface:Landroid/graphics/Typeface;

    if-eqz v3, :cond_0

    .line 124
    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 126
    :cond_0
    const/16 v2, 0x22

    invoke-direct {p0, v2}, Lcom/oplus/internal/widget/OplusToastLayout;->dp2px(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 127
    const v2, 0x3f99999a    # 1.2f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 132
    invoke-virtual {p0}, Lcom/oplus/internal/widget/OplusToastLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc0500be

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 133
    .local v1, "cornerSize":I
    new-instance v2, Lcom/oplus/internal/widget/OplusToastLayout$1;

    invoke-direct {v2, p0, v1}, Lcom/oplus/internal/widget/OplusToastLayout$1;-><init>(Lcom/oplus/internal/widget/OplusToastLayout;I)V

    .line 140
    .local v2, "viewOutlineProvider":Landroid/view/ViewOutlineProvider;
    invoke-virtual {p0, v2}, Lcom/oplus/internal/widget/OplusToastLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 141
    const/16 v3, 0xa

    invoke-direct {p0, v3}, Lcom/oplus/internal/widget/OplusToastLayout;->dp2px(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0, v3}, Lcom/oplus/internal/widget/OplusToastLayout;->setElevation(F)V

    .line 143
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 150
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 151
    .local v0, "size":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 152
    .local v1, "mode":I
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 153
    .local v2, "displaySize":Landroid/graphics/Point;
    iget-object v3, p0, Lcom/oplus/internal/widget/OplusToastLayout;->mWm:Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 154
    iget v3, v2, Landroid/graphics/Point;->x:I

    const/16 v4, 0x10

    invoke-direct {p0, v4}, Lcom/oplus/internal/widget/OplusToastLayout;->dp2px(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    .line 155
    .local v3, "targetWidth":I
    if-le v0, v3, :cond_0

    .line 156
    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v4

    invoke-super {p0, v4, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_0

    .line 158
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 160
    :goto_0
    return-void
.end method
