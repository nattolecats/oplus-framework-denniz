.class public Lcom/oplus/screenshot/OplusScrollViewCaptureHelper;
.super Lcom/oplus/screenshot/OplusScrollCaptureViewHelper;
.source "OplusScrollViewCaptureHelper.java"


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

.method private static blacklist getInput(Landroid/view/ViewGroup;Landroid/graphics/Rect;Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 6
    .param p0, "view"    # Landroid/view/ViewGroup;
    .param p1, "scrollBounds"    # Landroid/graphics/Rect;
    .param p2, "contentView"    # Landroid/view/View;
    .param p3, "requestedContentBounds"    # Landroid/graphics/Rect;

    .line 129
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 131
    .local v0, "input":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v1, v2

    .line 132
    .local v1, "remainingHeight":I
    const/4 v2, 0x0

    if-lez v1, :cond_0

    .line 133
    neg-int v3, v1

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->inset(II)V

    .line 136
    :cond_0
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 137
    .local v3, "localScrollBounds":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    neg-int v4, v4

    invoke-virtual {v3, v2, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 138
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 139
    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v5, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    .line 140
    .local v4, "scrollMovement":I
    if-gez v4, :cond_1

    .line 141
    neg-int v5, v4

    invoke-virtual {v0, v2, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 143
    :cond_1
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 144
    return-object v0
.end method

.method private static blacklist getRequestedContainerBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/graphics/Rect;
    .locals 3
    .param p0, "scrollBounds"    # Landroid/graphics/Rect;
    .param p1, "requestRect"    # Landroid/graphics/Rect;
    .param p2, "scrollDelta"    # I

    .line 114
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 115
    .local v0, "requestedContainerBounds":Landroid/graphics/Rect;
    neg-int v1, p2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 116
    iget v1, p0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 117
    return-object v0
.end method

.method private static blacklist getRequestedContentBounds(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4
    .param p0, "view"    # Landroid/view/ViewGroup;
    .param p1, "contentView"    # Landroid/view/View;
    .param p2, "requestedContainerBounds"    # Landroid/graphics/Rect;

    .line 121
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 122
    .local v0, "requestedContentBounds":Landroid/graphics/Rect;
    nop

    .line 123
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    .line 124
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    .line 122
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 125
    return-object v0
.end method


# virtual methods
.method public bridge synthetic blacklist onAcceptSession(Landroid/view/View;)Z
    .locals 0

    .line 36
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lcom/oplus/screenshot/OplusScrollViewCaptureHelper;->onAcceptSession(Landroid/view/ViewGroup;)Z

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

    invoke-virtual {p0, p1}, Lcom/oplus/screenshot/OplusScrollViewCaptureHelper;->onPrepareForEnd(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public blacklist onPrepareForEnd(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "view"    # Landroid/view/ViewGroup;

    .line 104
    iget v0, p0, Lcom/oplus/screenshot/OplusScrollViewCaptureHelper;->mStartScrollY:I

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 105
    iget v0, p0, Lcom/oplus/screenshot/OplusScrollViewCaptureHelper;->mOverScrollMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 106
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    .line 108
    :cond_0
    iget-boolean v0, p0, Lcom/oplus/screenshot/OplusScrollViewCaptureHelper;->mScrollBarEnabled:Z

    if-eqz v0, :cond_1

    .line 109
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVerticalScrollBarEnabled(Z)V

    .line 111
    :cond_1
    return-void
.end method

.method public bridge synthetic blacklist onPrepareForStart(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    .line 36
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/screenshot/OplusScrollViewCaptureHelper;->onPrepareForStart(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    return-void
.end method

.method public blacklist onPrepareForStart(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "view"    # Landroid/view/ViewGroup;
    .param p2, "scrollBounds"    # Landroid/graphics/Rect;

    .line 48
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v0

    iput v0, p0, Lcom/oplus/screenshot/OplusScrollViewCaptureHelper;->mStartScrollY:I

    .line 49
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverScrollMode()I

    move-result v0

    iput v0, p0, Lcom/oplus/screenshot/OplusScrollViewCaptureHelper;->mOverScrollMode:I

    .line 50
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 51
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    .line 53
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->isVerticalScrollBarEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/screenshot/OplusScrollViewCaptureHelper;->mScrollBarEnabled:Z

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

    invoke-virtual/range {v0 .. v5}, Lcom/oplus/screenshot/OplusScrollViewCaptureHelper;->onScrollRequested(Landroid/view/ViewGroup;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V

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

    iget v6, v0, Lcom/oplus/screenshot/OplusScrollViewCaptureHelper;->mStartScrollY:I

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
    invoke-static {v2, v3, v5}, Lcom/oplus/screenshot/OplusScrollViewCaptureHelper;->getRequestedContainerBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/graphics/Rect;

    move-result-object v9

    .line 74
    .local v9, "requestedContainerBounds":Landroid/graphics/Rect;
    invoke-static {v1, v8, v9}, Lcom/oplus/screenshot/OplusScrollViewCaptureHelper;->getRequestedContentBounds(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v10

    .line 75
    .local v10, "requestedContentBounds":Landroid/graphics/Rect;
    invoke-static {v1, v2, v8, v10}, Lcom/oplus/screenshot/OplusScrollViewCaptureHelper;->getInput(Landroid/view/ViewGroup;Landroid/graphics/Rect;Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v11

    .line 77
    .local v11, "input":Landroid/graphics/Rect;
    const/4 v12, 0x1

    invoke-virtual {v8, v11, v12}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    .line 79
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v12

    iget v13, v0, Lcom/oplus/screenshot/OplusScrollViewCaptureHelper;->mStartScrollY:I

    sub-int/2addr v12, v13

    .line 80
    .end local v5    # "scrollDelta":I
    .local v12, "scrollDelta":I
    iput v12, v6, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->scrollDelta:I

    .line 82
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 83
    .local v5, "offset":Landroid/graphics/Point;
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 84
    .local v13, "available":Landroid/graphics/Rect;
    invoke-virtual {v1, v8, v13, v5}, Landroid/view/ViewGroup;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 85
    invoke-virtual {v13}, Landroid/graphics/Rect;->setEmpty()V

    .line 86
    iput-object v13, v6, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->availableArea:Landroid/graphics/Rect;

    .line 87
    invoke-interface {v4, v6}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 88
    return-void

    .line 90
    :cond_1
    iget v14, v5, Landroid/graphics/Point;->x:I

    neg-int v14, v14

    iget v15, v5, Landroid/graphics/Point;->y:I

    neg-int v15, v15

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Rect;->offset(II)V

    .line 92
    nop

    .line 93
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v15

    sub-int/2addr v14, v15

    .line 94
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v16

    sub-int v15, v15, v16

    .line 92
    invoke-virtual {v13, v14, v15}, Landroid/graphics/Rect;->offset(II)V

    .line 96
    iget v14, v2, Landroid/graphics/Rect;->left:I

    neg-int v14, v14

    iget v15, v2, Landroid/graphics/Rect;->top:I

    neg-int v15, v15

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Rect;->offset(II)V

    .line 97
    invoke-virtual {v13, v7, v12}, Landroid/graphics/Rect;->offset(II)V

    .line 99
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v13}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v7, v6, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->availableArea:Landroid/graphics/Rect;

    .line 100
    invoke-interface {v4, v6}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 101
    return-void
.end method
