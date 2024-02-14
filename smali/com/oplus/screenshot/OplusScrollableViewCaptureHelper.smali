.class public Lcom/oplus/screenshot/OplusScrollableViewCaptureHelper;
.super Lcom/oplus/screenshot/OplusScrollCaptureViewHelper;
.source "OplusScrollableViewCaptureHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oplus/screenshot/OplusScrollCaptureViewHelper<",
        "Landroid/view/ViewGroup;",
        ">;"
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "OplusSVCaptureHelper"


# instance fields
.field private blacklist mOverScrollMode:I

.field private blacklist mScrollBarEnabled:Z

.field private blacklist mStartScrollY:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/oplus/screenshot/OplusScrollCaptureViewHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist onAcceptSession(Landroid/view/View;)Z
    .locals 0

    .line 36
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lcom/oplus/screenshot/OplusScrollableViewCaptureHelper;->onAcceptSession(Landroid/view/ViewGroup;)Z

    move-result p1

    return p1
.end method

.method public blacklist onAcceptSession(Landroid/view/ViewGroup;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/ViewGroup;

    .line 43
    invoke-virtual {p1}, Landroid/view/ViewGroup;->isVisibleToUser()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 44
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 43
    :cond_1
    :goto_0
    return v1
.end method

.method public bridge synthetic blacklist onPrepareForEnd(Landroid/view/View;)V
    .locals 0

    .line 36
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lcom/oplus/screenshot/OplusScrollableViewCaptureHelper;->onPrepareForEnd(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public blacklist onPrepareForEnd(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "view"    # Landroid/view/ViewGroup;

    .line 119
    iget v0, p0, Lcom/oplus/screenshot/OplusScrollableViewCaptureHelper;->mStartScrollY:I

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 120
    iget v0, p0, Lcom/oplus/screenshot/OplusScrollableViewCaptureHelper;->mOverScrollMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 121
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    .line 123
    :cond_0
    iget-boolean v0, p0, Lcom/oplus/screenshot/OplusScrollableViewCaptureHelper;->mScrollBarEnabled:Z

    if-eqz v0, :cond_1

    .line 124
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVerticalScrollBarEnabled(Z)V

    .line 126
    :cond_1
    return-void
.end method

.method public bridge synthetic blacklist onPrepareForStart(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    .line 36
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/screenshot/OplusScrollableViewCaptureHelper;->onPrepareForStart(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    return-void
.end method

.method public blacklist onPrepareForStart(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "view"    # Landroid/view/ViewGroup;
    .param p2, "scrollBounds"    # Landroid/graphics/Rect;

    .line 48
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v0

    iput v0, p0, Lcom/oplus/screenshot/OplusScrollableViewCaptureHelper;->mStartScrollY:I

    .line 49
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverScrollMode()I

    move-result v0

    iput v0, p0, Lcom/oplus/screenshot/OplusScrollableViewCaptureHelper;->mOverScrollMode:I

    .line 50
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 51
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    .line 53
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->isVerticalScrollBarEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/screenshot/OplusScrollableViewCaptureHelper;->mScrollBarEnabled:Z

    .line 54
    if-eqz v0, :cond_1

    .line 55
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVerticalScrollBarEnabled(Z)V

    .line 57
    :cond_1
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

    invoke-virtual/range {v0 .. v5}, Lcom/oplus/screenshot/OplusScrollableViewCaptureHelper;->onScrollRequested(Landroid/view/ViewGroup;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public blacklist onScrollRequested(Landroid/view/ViewGroup;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V
    .locals 17
    .param p1, "view"    # Landroid/view/ViewGroup;
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

    .line 61
    .local p5, "resultConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v5

    iget v6, v0, Lcom/oplus/screenshot/OplusScrollableViewCaptureHelper;->mStartScrollY:I

    sub-int/2addr v5, v6

    .line 63
    .local v5, "scrollDelta":I
    new-instance v6, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;

    invoke-direct {v6}, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;-><init>()V

    .line 64
    .local v6, "result":Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v7, v6, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->requestedArea:Landroid/graphics/Rect;

    .line 65
    iput v5, v6, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->scrollDelta:I

    .line 66
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v6, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->availableArea:Landroid/graphics/Rect;

    .line 68
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 69
    .local v8, "contentView":Landroid/view/View;
    if-nez v8, :cond_0

    .line 70
    invoke-interface {v4, v6}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 71
    return-void

    .line 73
    :cond_0
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 74
    .local v9, "requestedContainerBounds":Landroid/graphics/Rect;
    neg-int v10, v5

    invoke-virtual {v9, v7, v10}, Landroid/graphics/Rect;->offset(II)V

    .line 75
    iget v10, v2, Landroid/graphics/Rect;->left:I

    iget v11, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Rect;->offset(II)V

    .line 76
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v9}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 77
    .local v10, "requestedContentBounds":Landroid/graphics/Rect;
    nop

    .line 78
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v11

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v12

    sub-int/2addr v11, v12

    .line 79
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v12

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v13

    sub-int/2addr v12, v13

    .line 77
    invoke-virtual {v10, v11, v12}, Landroid/graphics/Rect;->offset(II)V

    .line 81
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 83
    .local v11, "input":Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v13

    sub-int/2addr v12, v13

    .line 84
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v13

    sub-int/2addr v12, v13

    .line 85
    .local v12, "remainingHeight":I
    if-lez v12, :cond_1

    .line 86
    neg-int v13, v12

    div-int/lit8 v13, v13, 0x2

    invoke-virtual {v11, v7, v13}, Landroid/graphics/Rect;->inset(II)V

    .line 88
    :cond_1
    iget v13, v11, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v14

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v15

    sub-int/2addr v14, v15

    if-ge v13, v14, :cond_2

    .line 89
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v13

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v14

    sub-int/2addr v13, v14

    iput v13, v11, Landroid/graphics/Rect;->top:I

    .line 92
    :cond_2
    const/4 v13, 0x1

    invoke-virtual {v8, v11, v13}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    .line 94
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v13

    iget v14, v0, Lcom/oplus/screenshot/OplusScrollableViewCaptureHelper;->mStartScrollY:I

    sub-int/2addr v13, v14

    .line 95
    .end local v5    # "scrollDelta":I
    .local v13, "scrollDelta":I
    iput v13, v6, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->scrollDelta:I

    .line 97
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 98
    .local v5, "offset":Landroid/graphics/Point;
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 99
    .local v14, "available":Landroid/graphics/Rect;
    invoke-virtual {v1, v8, v14, v5}, Landroid/view/ViewGroup;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 100
    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    .line 101
    iput-object v14, v6, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->availableArea:Landroid/graphics/Rect;

    .line 102
    invoke-interface {v4, v6}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 103
    return-void

    .line 105
    :cond_3
    iget v15, v5, Landroid/graphics/Point;->x:I

    neg-int v15, v15

    iget v7, v5, Landroid/graphics/Point;->y:I

    neg-int v7, v7

    invoke-virtual {v14, v15, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 107
    nop

    .line 108
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v15

    sub-int/2addr v7, v15

    .line 109
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v16

    sub-int v15, v15, v16

    .line 107
    invoke-virtual {v14, v7, v15}, Landroid/graphics/Rect;->offset(II)V

    .line 111
    iget v7, v2, Landroid/graphics/Rect;->left:I

    neg-int v7, v7

    iget v15, v2, Landroid/graphics/Rect;->top:I

    neg-int v15, v15

    invoke-virtual {v14, v7, v15}, Landroid/graphics/Rect;->offset(II)V

    .line 112
    const/4 v7, 0x0

    invoke-virtual {v14, v7, v13}, Landroid/graphics/Rect;->offset(II)V

    .line 114
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v14}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v7, v6, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->availableArea:Landroid/graphics/Rect;

    .line 115
    invoke-interface {v4, v6}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 116
    return-void
.end method
