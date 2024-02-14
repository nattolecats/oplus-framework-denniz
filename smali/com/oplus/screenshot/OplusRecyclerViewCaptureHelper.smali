.class public Lcom/oplus/screenshot/OplusRecyclerViewCaptureHelper;
.super Lcom/oplus/screenshot/OplusScrollCaptureViewHelper;
.source "OplusRecyclerViewCaptureHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oplus/screenshot/OplusScrollCaptureViewHelper<",
        "Landroid/view/ViewGroup;",
        ">;"
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "OplusRVCaptureHelper"


# instance fields
.field private blacklist mOverScrollMode:I

.field private blacklist mScrollBarWasEnabled:Z

.field private blacklist mScrollDelta:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/oplus/screenshot/OplusScrollCaptureViewHelper;-><init>()V

    return-void
.end method

.method static blacklist findChildNearestTarget(Landroid/view/ViewGroup;Landroid/graphics/Rect;)Landroid/view/View;
    .locals 11
    .param p0, "parent"    # Landroid/view/ViewGroup;
    .param p1, "targetRect"    # Landroid/graphics/Rect;

    .line 141
    const/4 v0, 0x0

    .line 142
    .local v0, "selected":Landroid/view/View;
    const v1, 0x7fffffff

    .line 143
    .local v1, "minCenterDistance":I
    const/4 v2, 0x0

    .line 147
    .local v2, "maxOverlap":I
    const/high16 v3, 0x3e800000    # 0.25f

    .line 148
    .local v3, "preferredRangeFromCenterPercent":F
    nop

    .line 149
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3e800000    # 0.25f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 151
    .local v4, "preferredDistance":I
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 152
    .local v5, "parentLocalVis":Landroid/graphics/Rect;
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 154
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 155
    .local v6, "frame":Landroid/graphics/Rect;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-ge v7, v8, :cond_3

    .line 156
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 157
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8, v6}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 159
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-eqz v9, :cond_0

    .line 160
    goto :goto_1

    .line 163
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    .line 165
    .local v9, "centerDistance":I
    if-ge v9, v1, :cond_1

    .line 167
    move v1, v9

    .line 168
    move-object v0, v8

    goto :goto_1

    .line 169
    :cond_1
    invoke-virtual {v6, p1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v10

    if-le v10, v4, :cond_2

    .line 171
    move-object v0, v8

    .line 155
    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "centerDistance":I
    :cond_2
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 174
    .end local v7    # "i":I
    :cond_3
    return-object v0
.end method


# virtual methods
.method public bridge synthetic blacklist onAcceptSession(Landroid/view/View;)Z
    .locals 0

    .line 36
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lcom/oplus/screenshot/OplusRecyclerViewCaptureHelper;->onAcceptSession(Landroid/view/ViewGroup;)Z

    move-result p1

    return p1
.end method

.method public blacklist onAcceptSession(Landroid/view/ViewGroup;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/ViewGroup;

    .line 45
    invoke-virtual {p1}, Landroid/view/ViewGroup;->isVisibleToUser()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 46
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 45
    :cond_1
    :goto_0
    return v1
.end method

.method public bridge synthetic blacklist onPrepareForEnd(Landroid/view/View;)V
    .locals 0

    .line 36
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lcom/oplus/screenshot/OplusRecyclerViewCaptureHelper;->onPrepareForEnd(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public blacklist onPrepareForEnd(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "view"    # Landroid/view/ViewGroup;

    .line 180
    iget v0, p0, Lcom/oplus/screenshot/OplusRecyclerViewCaptureHelper;->mScrollDelta:I

    neg-int v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->scrollBy(II)V

    .line 181
    iget v0, p0, Lcom/oplus/screenshot/OplusRecyclerViewCaptureHelper;->mOverScrollMode:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    .line 182
    iget-boolean v0, p0, Lcom/oplus/screenshot/OplusRecyclerViewCaptureHelper;->mScrollBarWasEnabled:Z

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVerticalScrollBarEnabled(Z)V

    .line 183
    return-void
.end method

.method public bridge synthetic blacklist onPrepareForStart(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    .line 36
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/screenshot/OplusRecyclerViewCaptureHelper;->onPrepareForStart(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    return-void
.end method

.method public blacklist onPrepareForStart(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "view"    # Landroid/view/ViewGroup;
    .param p2, "scrollBounds"    # Landroid/graphics/Rect;

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/screenshot/OplusRecyclerViewCaptureHelper;->mScrollDelta:I

    .line 53
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverScrollMode()I

    move-result v1

    iput v1, p0, Lcom/oplus/screenshot/OplusRecyclerViewCaptureHelper;->mOverScrollMode:I

    .line 54
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    .line 56
    invoke-virtual {p1}, Landroid/view/ViewGroup;->isVerticalScrollBarEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/oplus/screenshot/OplusRecyclerViewCaptureHelper;->mScrollBarWasEnabled:Z

    .line 57
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVerticalScrollBarEnabled(Z)V

    .line 58
    return-void
.end method

.method public bridge synthetic blacklist onScrollRequested(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V
    .locals 6

    .line 36
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/oplus/screenshot/OplusRecyclerViewCaptureHelper;->onScrollRequested(Landroid/view/ViewGroup;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public blacklist onScrollRequested(Landroid/view/ViewGroup;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V
    .locals 16
    .param p1, "recyclerView"    # Landroid/view/ViewGroup;
    .param p2, "scrollBounds"    # Landroid/graphics/Rect;
    .param p3, "requestRect"    # Landroid/graphics/Rect;
    .param p4, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;",
            ">;)V"
        }
    .end annotation

    .line 63
    .local p5, "resultConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    new-instance v5, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;

    invoke-direct {v5}, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;-><init>()V

    .line 64
    .local v5, "result":Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v6, v5, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->requestedArea:Landroid/graphics/Rect;

    .line 65
    iget v6, v0, Lcom/oplus/screenshot/OplusRecyclerViewCaptureHelper;->mScrollDelta:I

    iput v6, v5, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->scrollDelta:I

    .line 66
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, v5, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->availableArea:Landroid/graphics/Rect;

    .line 67
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->isVisibleToUser()Z

    move-result v6

    const-string v7, "OplusRVCaptureHelper"

    if-eqz v6, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-nez v6, :cond_0

    goto/16 :goto_0

    .line 73
    :cond_0
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 74
    .local v6, "requestedContainerBounds":Landroid/graphics/Rect;
    iget v8, v0, Lcom/oplus/screenshot/OplusRecyclerViewCaptureHelper;->mScrollDelta:I

    neg-int v8, v8

    const/4 v9, 0x0

    invoke-virtual {v6, v9, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 75
    iget v8, v2, Landroid/graphics/Rect;->left:I

    iget v10, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6, v8, v10}, Landroid/graphics/Rect;->offset(II)V

    .line 78
    invoke-static {v1, v6}, Lcom/oplus/screenshot/OplusRecyclerViewCaptureHelper;->findChildNearestTarget(Landroid/view/ViewGroup;Landroid/graphics/Rect;)Landroid/view/View;

    move-result-object v8

    .line 79
    .local v8, "anchor":Landroid/view/View;
    if-nez v8, :cond_1

    .line 80
    const-string v9, "Failed to locate anchor view"

    invoke-static {v7, v9}, Lcom/oplus/util/OplusLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-interface {v4, v5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 82
    return-void

    .line 84
    :cond_1
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 85
    .local v10, "requestedContentBounds":Landroid/graphics/Rect;
    invoke-virtual {v1, v8, v10}, Landroid/view/ViewGroup;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 86
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v11

    .line 88
    .local v11, "prevAnchorTop":I
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 90
    .local v12, "input":Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v14

    sub-int/2addr v13, v14

    .line 91
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v14

    sub-int/2addr v13, v14

    .line 92
    .local v13, "remainingHeight":I
    if-lez v13, :cond_2

    .line 93
    neg-int v14, v13

    div-int/lit8 v14, v14, 0x2

    invoke-virtual {v12, v9, v14}, Landroid/graphics/Rect;->inset(II)V

    .line 95
    :cond_2
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14, v12}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 96
    .local v14, "tmp":Landroid/graphics/Rect;
    invoke-virtual {v1, v8, v14}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 97
    iget v15, v14, Landroid/graphics/Rect;->top:I

    iget v9, v2, Landroid/graphics/Rect;->top:I

    if-ge v15, v9, :cond_3

    .line 98
    iget v9, v2, Landroid/graphics/Rect;->top:I

    iput v9, v12, Landroid/graphics/Rect;->top:I

    .line 102
    :cond_3
    const/4 v9, 0x1

    invoke-virtual {v1, v8, v12, v9}, Landroid/view/ViewGroup;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v9

    .line 103
    .local v9, "isScrolled":Z
    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    if-eq v15, v1, :cond_4

    .line 104
    const-string v15, "anchor is remove from ancestor view"

    invoke-static {v7, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-interface {v4, v5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 106
    return-void

    .line 108
    :cond_4
    if-eqz v9, :cond_5

    .line 110
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v7

    sub-int v7, v11, v7

    .line 111
    .local v7, "scrolled":I
    iget v15, v0, Lcom/oplus/screenshot/OplusRecyclerViewCaptureHelper;->mScrollDelta:I

    add-int/2addr v15, v7

    iput v15, v0, Lcom/oplus/screenshot/OplusRecyclerViewCaptureHelper;->mScrollDelta:I

    .line 112
    iput v15, v5, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->scrollDelta:I

    .line 114
    .end local v7    # "scrolled":I
    :cond_5
    invoke-virtual {v6, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 115
    invoke-virtual {v1, v8, v6}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 116
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 117
    .local v7, "recyclerLocalVisible":Landroid/graphics/Rect;
    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 119
    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v15

    if-nez v15, :cond_6

    .line 121
    invoke-interface {v4, v5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 122
    return-void

    .line 124
    :cond_6
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 125
    .local v15, "available":Landroid/graphics/Rect;
    iget v1, v2, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget v3, v2, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    invoke-virtual {v15, v1, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 126
    iget v1, v0, Lcom/oplus/screenshot/OplusRecyclerViewCaptureHelper;->mScrollDelta:I

    const/4 v3, 0x0

    invoke-virtual {v15, v3, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 127
    iput-object v15, v5, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->availableArea:Landroid/graphics/Rect;

    .line 128
    invoke-interface {v4, v5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 129
    return-void

    .line 68
    .end local v6    # "requestedContainerBounds":Landroid/graphics/Rect;
    .end local v7    # "recyclerLocalVisible":Landroid/graphics/Rect;
    .end local v8    # "anchor":Landroid/view/View;
    .end local v9    # "isScrolled":Z
    .end local v10    # "requestedContentBounds":Landroid/graphics/Rect;
    .end local v11    # "prevAnchorTop":I
    .end local v12    # "input":Landroid/graphics/Rect;
    .end local v13    # "remainingHeight":I
    .end local v14    # "tmp":Landroid/graphics/Rect;
    .end local v15    # "available":Landroid/graphics/Rect;
    :cond_7
    :goto_0
    const-string v1, "recyclerView is empty or not visible, cannot continue"

    invoke-static {v7, v1}, Lcom/oplus/util/OplusLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-interface {v4, v5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 70
    return-void
.end method
