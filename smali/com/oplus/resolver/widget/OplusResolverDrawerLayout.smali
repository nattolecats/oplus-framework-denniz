.class public Lcom/oplus/resolver/widget/OplusResolverDrawerLayout;
.super Lcom/android/internal/widget/ResolverDrawerLayout;
.source "OplusResolverDrawerLayout.java"

# interfaces
.implements Lcom/oplus/resolver/OplusResolverDialogHelper$OnProfileSelectedListener;


# static fields
.field private static final blacklist DEFAULT_CHECK_SCREEN_WIDTH:I = 0x280

.field private static final blacklist TAG:Ljava/lang/String; = "OplusResolverDrawerLayout"


# instance fields
.field private blacklist mCurrentPager:I

.field private blacklist mDefaultMaxHeight:I

.field private blacklist mDefaultMaxWidth:I

.field private blacklist mIsUserMaxHeight:Z

.field private blacklist mLandscapeMaxHeight:I

.field private blacklist mLandscapeMaxWidth:I

.field private blacklist mPagerHeight:Landroid/util/SparseIntArray;

.field private blacklist mPortraitMaxHeight:I

.field private blacklist mPortraitMaxWidth:I

.field private blacklist mSpaceView:Landroid/view/View;

.field private blacklist mViewBottom:Landroid/view/View;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oplus/resolver/widget/OplusResolverDrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/resolver/widget/OplusResolverDrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/ResolverDrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/oplus/resolver/widget/OplusResolverDrawerLayout;->mPagerHeight:Landroid/util/SparseIntArray;

    .line 68
    sget-object v0, Lcom/oplus/internal/R$styleable;->OplusResolverDrawerLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 69
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/oplus/resolver/widget/OplusResolverDrawerLayout;->mPortraitMaxWidth:I

    .line 70
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/oplus/resolver/widget/OplusResolverDrawerLayout;->mLandscapeMaxWidth:I

    .line 71
    iput v2, p0, Lcom/oplus/resolver/widget/OplusResolverDrawerLayout;->mDefaultMaxWidth:I

    .line 72
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 74
    sget-object v2, Lcom/oplus/internal/R$styleable;->OplusMaxLinearLayout:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 75
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/oplus/resolver/widget/OplusResolverDrawerLayout;->mPortraitMaxHeight:I

    .line 76
    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/oplus/resolver/widget/OplusResolverDrawerLayout;->mLandscapeMaxHeight:I

    .line 77
    iget v2, p0, Lcom/oplus/resolver/widget/OplusResolverDrawerLayout;->mPortraitMaxHeight:I

    iput v2, p0, Lcom/oplus/resolver/widget/OplusResolverDrawerLayout;->mDefaultMaxHeight:I

    .line 78
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 80
    new-instance v2, Landroid/view/View;

    invoke-virtual {p0}, Lcom/oplus/resolver/widget/OplusResolverDrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/oplus/resolver/widget/OplusResolverDrawerLayout;->mSpaceView:Landroid/view/View;

    .line 81
    new-instance v3, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v1}, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    iget-object v1, p0, Lcom/oplus/resolver/widget/OplusResolverDrawerLayout;->mSpaceView:Landroid/view/View;

    const v2, 0xc060038

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 83
    return-void
.end method

.method private blacklist getScreenSize()Landroid/graphics/Point;
    .locals 3

    .line 195
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 196
    .local v0, "point":Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/oplus/resolver/widget/OplusResolverDrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 197
    .local v1, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 198
    return-object v0
.end method

.method private blacklist updateNavigationBarColor(Z)V
    .locals 5
    .param p1, "enforceTransparency"    # Z

    .line 180
    invoke-virtual {p0}, Lcom/oplus/resolver/widget/OplusResolverDrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 181
    return-void

    .line 183
    :cond_0
    invoke-direct {p0}, Lcom/oplus/resolver/widget/OplusResolverDrawerLayout;->getScreenSize()Landroid/graphics/Point;

    move-result-object v0

    .line 184
    .local v0, "screenSize":Landroid/graphics/Point;
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v3

    .line 185
    .local v1, "port":Z
    :goto_0
    if-eqz v1, :cond_2

    iget v2, p0, Lcom/oplus/resolver/widget/OplusResolverDrawerLayout;->mPortraitMaxHeight:I

    goto :goto_1

    :cond_2
    iget v2, p0, Lcom/oplus/resolver/widget/OplusResolverDrawerLayout;->mLandscapeMaxHeight:I

    :goto_1
    invoke-virtual {p0, v2}, Lcom/oplus/resolver/widget/OplusResolverDrawerLayout;->setMaxCollapsedHeight(I)V

    .line 186
    if-eqz p1, :cond_3

    .line 187
    invoke-virtual {p0}, Lcom/oplus/resolver/widget/OplusResolverDrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    .line 189
    :cond_3
    invoke-virtual {p0}, Lcom/oplus/resolver/widget/OplusResolverDrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {p0}, Lcom/oplus/resolver/widget/OplusResolverDrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v1, :cond_5

    if-eqz p1, :cond_4

    goto :goto_2

    .line 190
    :cond_4
    const v4, 0xc060038

    goto :goto_3

    :cond_5
    :goto_2
    const v4, 0x106000d

    .line 189
    :goto_3
    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 191
    invoke-virtual {p0}, Lcom/oplus/resolver/widget/OplusResolverDrawerLayout;->requestLayout()V

    .line 192
    return-void
.end method


# virtual methods
.method protected whitelist onAttachedToWindow()V
    .locals 1

    .line 92
    invoke-super {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->onAttachedToWindow()V

    .line 93
    invoke-static {}, Lcom/oplus/resolver/OplusResolverUtils;->isTablet()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oplus/resolver/widget/OplusResolverDrawerLayout;->updateNavigationBarColor(Z)V

    .line 94
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 98
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 99
    .local v0, "sourceWidth":I
    move v1, p1

    .line 100
    .local v1, "widthSpec":I
    invoke-direct {p0}, Lcom/oplus/resolver/widget/OplusResolverDrawerLayout;->getScreenSize()Landroid/graphics/Point;

    move-result-object v2

    .line 101
    .local v2, "screenSize":Landroid/graphics/Point;
    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v4, v2, Landroid/graphics/Point;->y:I

    const/4 v5, 0x1

    if-ge v3, v4, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 102
    .local v3, "port":Z
    :goto_0
    const/4 v4, -0x1

    if-eqz v3, :cond_1

    iget v6, p0, Lcom/oplus/resolver/widget/OplusResolverDrawerLayout;->mPortraitMaxWidth:I

    if-eq v6, v4, :cond_2

    :cond_1
    if-nez v3, :cond_3

    iget v6, p0, Lcom/oplus/resolver/widget/OplusResolverDrawerLayout;->mLandscapeMaxWidth:I

    if-ne v6, v4, :cond_3

    .line 103
    :cond_2
    invoke-super {p0, v1, p2}, Lcom/android/internal/widget/ResolverDrawerLayout;->onMeasure(II)V

    goto :goto_2

    .line 105
    :cond_3
    if-eqz v3, :cond_4

    iget v4, p0, Lcom/oplus/resolver/widget/OplusResolverDrawerLayout;->mPortraitMaxWidth:I

    goto :goto_1

    :cond_4
    iget v4, p0, Lcom/oplus/resolver/widget/OplusResolverDrawerLayout;->mLandscapeMaxWidth:I

    :goto_1
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 106
    .local v4, "width":I
    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 107
    invoke-super {p0, v1, p2}, Lcom/android/internal/widget/ResolverDrawerLayout;->onMeasure(II)V

    .line 109
    .end local v4    # "width":I
    :goto_2
    iget-boolean v4, p0, Lcom/oplus/resolver/widget/OplusResolverDrawerLayout;->mIsUserMaxHeight:Z

    if-eqz v4, :cond_d

    .line 110
    const/4 v4, 0x0

    .line 111
    .local v4, "useHeight":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    invoke-virtual {p0}, Lcom/oplus/resolver/widget/OplusResolverDrawerLayout;->getChildCount()I

    move-result v7

    if-ge v6, v7, :cond_5

    .line 112
    invoke-virtual {p0, v6}, Lcom/oplus/resolver/widget/OplusResolverDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v4, v7

    .line 111
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 114
    .end local v6    # "i":I
    :cond_5
    iget-object v6, p0, Lcom/oplus/resolver/widget/OplusResolverDrawerLayout;->mSpaceView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 115
    iget-object v6, p0, Lcom/oplus/resolver/widget/OplusResolverDrawerLayout;->mSpaceView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    sub-int/2addr v4, v6

    .line 117
    :cond_6
    iget-object v6, p0, Lcom/oplus/resolver/widget/OplusResolverDrawerLayout;->mPagerHeight:Landroid/util/SparseIntArray;

    iget v7, p0, Lcom/oplus/resolver/widget/OplusResolverDrawerLayout;->mCurrentPager:I

    invoke-virtual {v6, v7, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 119
    iget-object v6, p0, Lcom/oplus/resolver/widget/OplusResolverDrawerLayout;->mPagerHeight:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    if-le v6, v5, :cond_d

    .line 120
    const/4 v5, 0x0

    .line 121
    .local v5, "maxHeight":I
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_4
    iget-object v7, p0, Lcom/oplus/resolver/widget/OplusResolverDrawerLayout;->mPagerHeight:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_8

    .line 122
    iget-object v7, p0, Lcom/oplus/resolver/widget/OplusResolverDrawerLayout;->mPagerHeight:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v7

    .line 123
    .local v7, "value":I
    if-ge v5, v7, :cond_7

    .line 124
    move v5, v7

    .line 121
    .end local v7    # "value":I
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 128
    .end local v6    # "i":I
    :cond_8
    if-ge v4, v5, :cond_a

    .line 129
    iget-object v6, p0, Lcom/oplus/resolver/widget/OplusResolverDrawerLayout;->mSpaceView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    sub-int v7, v5, v4

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 130
    iget-object v6, p0, Lcom/oplus/resolver/widget/OplusResolverDrawerLayout;->mSpaceView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-nez v6, :cond_c

    .line 131
    iget-object v6, p0, Lcom/oplus/resolver/widget/OplusResolverDrawerLayout;->mViewBottom:Landroid/view/View;

    if-eqz v6, :cond_9

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    instance-of v6, v6, Landroid/view/ViewGroup;

    if-eqz v6, :cond_9

    .line 132
    iget-object v6, p0, Lcom/oplus/resolver/widget/OplusResolverDrawerLayout;->mViewBottom:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iget-object v7, p0, Lcom/oplus/resolver/widget/OplusResolverDrawerLayout;->mViewBottom:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v6

    .line 133
    .local v6, "index":I
    iget-object v7, p0, Lcom/oplus/resolver/widget/OplusResolverDrawerLayout;->mViewBottom:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/oplus/resolver/widget/OplusResolverDrawerLayout;->mSpaceView:Landroid/view/View;

    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v7, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 134
    .end local v6    # "index":I
    goto :goto_5

    .line 135
    :cond_9
    iget-object v6, p0, Lcom/oplus/resolver/widget/OplusResolverDrawerLayout;->mSpaceView:Landroid/view/View;

    invoke-virtual {p0, v6}, Lcom/oplus/resolver/widget/OplusResolverDrawerLayout;->addView(Landroid/view/View;)V

    goto :goto_5

    .line 138
    :cond_a
    iget-object v6, p0, Lcom/oplus/resolver/widget/OplusResolverDrawerLayout;->mViewBottom:Landroid/view/View;

    if-eqz v6, :cond_b

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    instance-of v6, v6, Landroid/view/ViewGroup;

    if-eqz v6, :cond_b

    .line 139
    iget-object v6, p0, Lcom/oplus/resolver/widget/OplusResolverDrawerLayout;->mViewBottom:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iget-object v7, p0, Lcom/oplus/resolver/widget/OplusResolverDrawerLayout;->mSpaceView:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_5

    .line 141
    :cond_b
    iget-object v6, p0, Lcom/oplus/resolver/widget/OplusResolverDrawerLayout;->mSpaceView:Landroid/view/View;

    invoke-virtual {p0, v6}, Lcom/oplus/resolver/widget/OplusResolverDrawerLayout;->removeView(Landroid/view/View;)V

    .line 143
    :cond_c
    :goto_5
    invoke-super {p0, v1, p2}, Lcom/android/internal/widget/ResolverDrawerLayout;->onMeasure(II)V

    .line 146
    .end local v4    # "useHeight":I
    .end local v5    # "maxHeight":I
    :cond_d
    invoke-virtual {p0}, Lcom/oplus/resolver/widget/OplusResolverDrawerLayout;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p0, v0, v4}, Lcom/oplus/resolver/widget/OplusResolverDrawerLayout;->setMeasuredDimension(II)V

    .line 147
    return-void
.end method

.method public whitelist onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I

    .line 151
    const/4 v0, 0x0

    invoke-super {p0, p1, p2, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 152
    return-void
.end method

.method public whitelist onProfileSelected(I)V
    .locals 0
    .param p1, "profileIndex"    # I

    .line 203
    iput p1, p0, Lcom/oplus/resolver/widget/OplusResolverDrawerLayout;->mCurrentPager:I

    .line 204
    return-void
.end method

.method public blacklist setConfiguration(ZLandroid/content/res/OplusBaseConfiguration;ZZ)V
    .locals 3
    .param p1, "isMainScreen"    # Z
    .param p2, "config"    # Landroid/content/res/OplusBaseConfiguration;
    .param p3, "isInMultiWindowMode"    # Z
    .param p4, "enforceTransparency"    # Z

    .line 155
    invoke-virtual {p0}, Lcom/oplus/resolver/widget/OplusResolverDrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 156
    return-void

    .line 159
    :cond_0
    const/4 v0, -0x1

    if-eqz p1, :cond_1

    iget v1, p0, Lcom/oplus/resolver/widget/OplusResolverDrawerLayout;->mDefaultMaxWidth:I

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    iput v1, p0, Lcom/oplus/resolver/widget/OplusResolverDrawerLayout;->mPortraitMaxWidth:I

    .line 160
    iget v1, p0, Lcom/oplus/resolver/widget/OplusResolverDrawerLayout;->mDefaultMaxWidth:I

    iput v1, p0, Lcom/oplus/resolver/widget/OplusResolverDrawerLayout;->mLandscapeMaxWidth:I

    .line 161
    if-eqz p1, :cond_2

    iget v1, p2, Landroid/content/res/OplusBaseConfiguration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 163
    invoke-virtual {p0}, Lcom/oplus/resolver/widget/OplusResolverDrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 164
    iput v0, p0, Lcom/oplus/resolver/widget/OplusResolverDrawerLayout;->mLandscapeMaxWidth:I

    .line 166
    :cond_2
    invoke-static {}, Lcom/oplus/resolver/OplusResolverUtils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 167
    iget v1, p2, Landroid/content/res/OplusBaseConfiguration;->screenWidthDp:I

    const/16 v2, 0x280

    if-ge v1, v2, :cond_3

    .line 168
    iput v0, p0, Lcom/oplus/resolver/widget/OplusResolverDrawerLayout;->mPortraitMaxWidth:I

    .line 169
    iput v0, p0, Lcom/oplus/resolver/widget/OplusResolverDrawerLayout;->mLandscapeMaxWidth:I

    goto :goto_1

    .line 171
    :cond_3
    iget-object v0, p0, Lcom/oplus/resolver/widget/OplusResolverDrawerLayout;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/oplus/resolver/OplusResolverUtils;->calculateResponsiveUIWidth(Landroid/content/Context;Landroid/content/res/OplusBaseConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/oplus/resolver/widget/OplusResolverDrawerLayout;->mPortraitMaxWidth:I

    .line 173
    iput v0, p0, Lcom/oplus/resolver/widget/OplusResolverDrawerLayout;->mLandscapeMaxWidth:I

    .line 176
    :cond_4
    :goto_1
    invoke-direct {p0, p4}, Lcom/oplus/resolver/widget/OplusResolverDrawerLayout;->updateNavigationBarColor(Z)V

    .line 177
    return-void
.end method

.method public blacklist setIsUserMaxHeight(ZLandroid/view/View;)V
    .locals 0
    .param p1, "isUserMaxHeight"    # Z
    .param p2, "viewBottom"    # Landroid/view/View;

    .line 86
    iput-boolean p1, p0, Lcom/oplus/resolver/widget/OplusResolverDrawerLayout;->mIsUserMaxHeight:Z

    .line 87
    iput-object p2, p0, Lcom/oplus/resolver/widget/OplusResolverDrawerLayout;->mViewBottom:Landroid/view/View;

    .line 88
    return-void
.end method
