.class public Lcom/android/internal/widget/floatingtoolbar/OverflowPanelViewHelperExtImpl;
.super Ljava/lang/Object;
.source "OverflowPanelViewHelperExtImpl.java"

# interfaces
.implements Lcom/android/internal/widget/floatingtoolbar/IOverflowPanelViewHelperExt;


# static fields
.field private static final blacklist OVER_FLOW_FIRST_ITEM_HEIGHT_DP:I = 0x34

.field private static final blacklist OVER_FLOW_FIRST_ITEM_PADDING_TOP_DP:I = 0xc

.field private static final blacklist OVER_FLOW_NORMAL_ITEM_HEIGHT_DP:I = 0x28

.field private static final blacklist PIXEL_OFFSET:F = 0.5f


# instance fields
.field private blacklist mConvertViewPosition:I

.field private blacklist mOpenOverflowUpwards:Z

.field private blacklist mOverFlowMenuCount:I


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "base"    # Ljava/lang/Object;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist dp2px(Landroid/content/Context;I)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dp"    # I

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, p2

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private blacklist setConvertViewPadding(Landroid/view/View;II)V
    .locals 9
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "sidePadding"    # I
    .param p3, "minimumWidth"    # I

    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 57
    const v1, 0xc050082

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 58
    .local v0, "oplusOsMinWidth":I
    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 59
    invoke-virtual {p1, p3}, Landroid/view/View;->setMinimumWidth(I)V

    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x28

    invoke-direct {p0, v1, v2}, Lcom/android/internal/widget/floatingtoolbar/OverflowPanelViewHelperExtImpl;->dp2px(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 63
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    if-nez v1, :cond_0

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, 0x0

    invoke-direct {v3, p3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    move-object v1, v3

    .line 64
    const/4 v3, 0x0

    .line 65
    .local v3, "paddingTop":I
    const/4 v4, 0x0

    .line 66
    .local v4, "paddingBottom":I
    iget-boolean v5, p0, Lcom/android/internal/widget/floatingtoolbar/OverflowPanelViewHelperExtImpl;->mOpenOverflowUpwards:Z

    const/16 v6, 0x34

    const/16 v7, 0xc

    if-eqz v5, :cond_1

    iget v8, p0, Lcom/android/internal/widget/floatingtoolbar/OverflowPanelViewHelperExtImpl;->mConvertViewPosition:I

    if-nez v8, :cond_1

    .line 67
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2, v7}, Lcom/android/internal/widget/floatingtoolbar/OverflowPanelViewHelperExtImpl;->dp2px(Landroid/content/Context;I)I

    move-result v3

    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2, v6}, Lcom/android/internal/widget/floatingtoolbar/OverflowPanelViewHelperExtImpl;->dp2px(Landroid/content/Context;I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 69
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 70
    :cond_1
    if-nez v5, :cond_2

    iget v5, p0, Lcom/android/internal/widget/floatingtoolbar/OverflowPanelViewHelperExtImpl;->mConvertViewPosition:I

    iget v8, p0, Lcom/android/internal/widget/floatingtoolbar/OverflowPanelViewHelperExtImpl;->mOverFlowMenuCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v5, v8, :cond_2

    .line 71
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2, v7}, Lcom/android/internal/widget/floatingtoolbar/OverflowPanelViewHelperExtImpl;->dp2px(Landroid/content/Context;I)I

    move-result v4

    .line 72
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2, v6}, Lcom/android/internal/widget/floatingtoolbar/OverflowPanelViewHelperExtImpl;->dp2px(Landroid/content/Context;I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 73
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 75
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {p0, v5, v2}, Lcom/android/internal/widget/floatingtoolbar/OverflowPanelViewHelperExtImpl;->dp2px(Landroid/content/Context;I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 76
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    :goto_1
    invoke-virtual {p1, p2, v3, p2, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 79
    return-void
.end method


# virtual methods
.method public blacklist hookGetSidePaddingRes(I)I
    .locals 1
    .param p1, "defaultValue"    # I

    .line 91
    const v0, 0xc0500c3

    return v0
.end method

.method public blacklist hookGetView(Landroid/view/View;II)V
    .locals 0
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "sidePadding"    # I
    .param p3, "minimumWidth"    # I

    .line 85
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/floatingtoolbar/OverflowPanelViewHelperExtImpl;->setConvertViewPadding(Landroid/view/View;II)V

    .line 87
    return-void
.end method

.method public blacklist setConvertViewPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .line 47
    iput p1, p0, Lcom/android/internal/widget/floatingtoolbar/OverflowPanelViewHelperExtImpl;->mConvertViewPosition:I

    .line 48
    return-void
.end method

.method public blacklist setOverflowDirection(Z)V
    .locals 0
    .param p1, "upward"    # Z

    .line 52
    iput-boolean p1, p0, Lcom/android/internal/widget/floatingtoolbar/OverflowPanelViewHelperExtImpl;->mOpenOverflowUpwards:Z

    .line 53
    return-void
.end method

.method public blacklist setOverflowMenuCount(I)V
    .locals 0
    .param p1, "count"    # I

    .line 42
    iput p1, p0, Lcom/android/internal/widget/floatingtoolbar/OverflowPanelViewHelperExtImpl;->mOverFlowMenuCount:I

    .line 43
    return-void
.end method
