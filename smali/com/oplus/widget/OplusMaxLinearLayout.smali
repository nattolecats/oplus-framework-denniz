.class public Lcom/oplus/widget/OplusMaxLinearLayout;
.super Landroid/widget/LinearLayout;
.source "OplusMaxLinearLayout.java"


# static fields
.field public static final blacklist INVALID_MAX_VALUE:I = 0x7fffffff


# instance fields
.field private blacklist mLandscapeMaxHeight:I

.field private blacklist mLandscapeMaxWidth:I

.field private blacklist mPortraitMaxHeight:I

.field private blacklist mPortraitMaxWidth:I


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 48
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    sget-object v0, Lcom/oplus/internal/R$styleable;->OplusMaxLinearLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 54
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const v2, 0x7fffffff

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/oplus/widget/OplusMaxLinearLayout;->mPortraitMaxHeight:I

    .line 55
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/oplus/widget/OplusMaxLinearLayout;->mLandscapeMaxHeight:I

    .line 56
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/oplus/widget/OplusMaxLinearLayout;->mPortraitMaxWidth:I

    .line 57
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/oplus/widget/OplusMaxLinearLayout;->mLandscapeMaxWidth:I

    .line 58
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 59
    return-void
.end method

.method private blacklist isPortrait()Z
    .locals 3

    .line 109
    invoke-virtual {p0}, Lcom/oplus/widget/OplusMaxLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 110
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public blacklist getMaxHeight()I
    .locals 1

    .line 105
    invoke-direct {p0}, Lcom/oplus/widget/OplusMaxLinearLayout;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/oplus/widget/OplusMaxLinearLayout;->mPortraitMaxHeight:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/oplus/widget/OplusMaxLinearLayout;->mLandscapeMaxHeight:I

    :goto_0
    return v0
.end method

.method public blacklist getMaxWidth()I
    .locals 1

    .line 101
    invoke-direct {p0}, Lcom/oplus/widget/OplusMaxLinearLayout;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/oplus/widget/OplusMaxLinearLayout;->mPortraitMaxWidth:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/oplus/widget/OplusMaxLinearLayout;->mLandscapeMaxWidth:I

    :goto_0
    return v0
.end method

.method protected whitelist onAttachedToWindow()V
    .locals 3

    .line 117
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 118
    invoke-virtual {p0}, Lcom/oplus/widget/OplusMaxLinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/InsetDrawable;

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/oplus/widget/OplusMaxLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc0500dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 120
    .local v0, "radius":I
    invoke-virtual {p0}, Lcom/oplus/widget/OplusMaxLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc0500d0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 121
    .local v1, "insetPadding":I
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/oplus/widget/OplusMaxLinearLayout;->setClipToOutline(Z)V

    .line 122
    new-instance v2, Lcom/oplus/widget/OplusMaxLinearLayout$1;

    invoke-direct {v2, p0, v1, v0}, Lcom/oplus/widget/OplusMaxLinearLayout$1;-><init>(Lcom/oplus/widget/OplusMaxLinearLayout;II)V

    invoke-virtual {p0, v2}, Lcom/oplus/widget/OplusMaxLinearLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 132
    .end local v0    # "radius":I
    .end local v1    # "insetPadding":I
    :cond_0
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 63
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 65
    const/4 v0, 0x0

    .line 66
    .local v0, "needRemeasure":Z
    invoke-virtual {p0}, Lcom/oplus/widget/OplusMaxLinearLayout;->getMeasuredWidth()I

    move-result v1

    .line 67
    .local v1, "width":I
    invoke-virtual {p0}, Lcom/oplus/widget/OplusMaxLinearLayout;->getMeasuredHeight()I

    move-result v2

    .line 68
    .local v2, "height":I
    invoke-virtual {p0}, Lcom/oplus/widget/OplusMaxLinearLayout;->getMaxWidth()I

    move-result v3

    .line 69
    .local v3, "maxWidth":I
    invoke-virtual {p0}, Lcom/oplus/widget/OplusMaxLinearLayout;->getMaxHeight()I

    move-result v4

    .line 71
    .local v4, "maxHeight":I
    const/high16 v5, 0x40000000    # 2.0f

    if-le v1, v3, :cond_0

    .line 72
    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 73
    const/4 v0, 0x1

    .line 75
    :cond_0
    if-le v2, v4, :cond_1

    .line 76
    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 77
    const/4 v0, 0x1

    .line 79
    :cond_1
    if-eqz v0, :cond_2

    .line 80
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 82
    :cond_2
    return-void
.end method

.method public blacklist setLandscapeMaxHeight(I)V
    .locals 0
    .param p1, "maxValue"    # I

    .line 97
    iput p1, p0, Lcom/oplus/widget/OplusMaxLinearLayout;->mLandscapeMaxHeight:I

    .line 98
    return-void
.end method

.method public blacklist setLandscapeMaxWidth(I)V
    .locals 0
    .param p1, "maxValue"    # I

    .line 93
    iput p1, p0, Lcom/oplus/widget/OplusMaxLinearLayout;->mLandscapeMaxWidth:I

    .line 94
    return-void
.end method

.method public blacklist setPortraitMaxHeight(I)V
    .locals 0
    .param p1, "maxValue"    # I

    .line 89
    iput p1, p0, Lcom/oplus/widget/OplusMaxLinearLayout;->mPortraitMaxHeight:I

    .line 90
    return-void
.end method

.method public blacklist setPortraitMaxWidth(I)V
    .locals 0
    .param p1, "maxValue"    # I

    .line 85
    iput p1, p0, Lcom/oplus/widget/OplusMaxLinearLayout;->mPortraitMaxWidth:I

    .line 86
    return-void
.end method
