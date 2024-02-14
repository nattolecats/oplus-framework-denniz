.class public Lcom/oplus/screenshot/OplusListViewCaptureHelper;
.super Lcom/oplus/screenshot/OplusScrollCaptureViewHelper;
.source "OplusListViewCaptureHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oplus/screenshot/OplusScrollCaptureViewHelper<",
        "Landroid/widget/ListView;",
        ">;"
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "OplusLVCaptureHelper"


# instance fields
.field private blacklist mOverScrollMode:I

.field private blacklist mScrollBarWasEnabled:Z

.field private blacklist mScrollDelta:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/oplus/screenshot/OplusScrollCaptureViewHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist onAcceptSession(Landroid/view/View;)Z
    .locals 0

    .line 39
    check-cast p1, Landroid/widget/ListView;

    invoke-virtual {p0, p1}, Lcom/oplus/screenshot/OplusListViewCaptureHelper;->onAcceptSession(Landroid/widget/ListView;)Z

    move-result p1

    return p1
.end method

.method public blacklist onAcceptSession(Landroid/widget/ListView;)Z
    .locals 2
    .param p1, "view"    # Landroid/widget/ListView;

    .line 48
    invoke-virtual {p1}, Landroid/widget/ListView;->isVisibleToUser()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 49
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 48
    :cond_1
    :goto_0
    return v1
.end method

.method public bridge synthetic blacklist onPrepareForEnd(Landroid/view/View;)V
    .locals 0

    .line 39
    check-cast p1, Landroid/widget/ListView;

    invoke-virtual {p0, p1}, Lcom/oplus/screenshot/OplusListViewCaptureHelper;->onPrepareForEnd(Landroid/widget/ListView;)V

    return-void
.end method

.method public blacklist onPrepareForEnd(Landroid/widget/ListView;)V
    .locals 1
    .param p1, "listView"    # Landroid/widget/ListView;

    .line 128
    iget v0, p0, Lcom/oplus/screenshot/OplusListViewCaptureHelper;->mScrollDelta:I

    neg-int v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->scrollListBy(I)V

    .line 129
    iget v0, p0, Lcom/oplus/screenshot/OplusListViewCaptureHelper;->mOverScrollMode:I

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOverScrollMode(I)V

    .line 130
    iget-boolean v0, p0, Lcom/oplus/screenshot/OplusListViewCaptureHelper;->mScrollBarWasEnabled:Z

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 131
    return-void
.end method

.method public bridge synthetic blacklist onPrepareForStart(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    .line 39
    check-cast p1, Landroid/widget/ListView;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/screenshot/OplusListViewCaptureHelper;->onPrepareForStart(Landroid/widget/ListView;Landroid/graphics/Rect;)V

    return-void
.end method

.method public blacklist onPrepareForStart(Landroid/widget/ListView;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "view"    # Landroid/widget/ListView;
    .param p2, "scrollBounds"    # Landroid/graphics/Rect;

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/screenshot/OplusListViewCaptureHelper;->mScrollDelta:I

    .line 56
    invoke-virtual {p1}, Landroid/widget/ListView;->getOverScrollMode()I

    move-result v1

    iput v1, p0, Lcom/oplus/screenshot/OplusListViewCaptureHelper;->mOverScrollMode:I

    .line 57
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setOverScrollMode(I)V

    .line 59
    invoke-virtual {p1}, Landroid/widget/ListView;->isVerticalScrollBarEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/oplus/screenshot/OplusListViewCaptureHelper;->mScrollBarWasEnabled:Z

    .line 60
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 61
    return-void
.end method

.method public bridge synthetic blacklist onScrollRequested(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V
    .locals 6

    .line 39
    move-object v1, p1

    check-cast v1, Landroid/widget/ListView;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/oplus/screenshot/OplusListViewCaptureHelper;->onScrollRequested(Landroid/widget/ListView;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public blacklist onScrollRequested(Landroid/widget/ListView;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V
    .locals 18
    .param p1, "listView"    # Landroid/widget/ListView;
    .param p2, "scrollBounds"    # Landroid/graphics/Rect;
    .param p3, "requestRect"    # Landroid/graphics/Rect;
    .param p4, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ListView;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;",
            ">;)V"
        }
    .end annotation

    .line 66
    .local p5, "resultConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onScrollRequested(scrollBounds="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", requestRect="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "OplusLVCaptureHelper"

    invoke-static {v6, v7, v5}, Lcom/oplus/util/OplusLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 68
    new-instance v5, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;

    invoke-direct {v5}, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;-><init>()V

    .line 69
    .local v5, "result":Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v8, v5, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->requestedArea:Landroid/graphics/Rect;

    .line 70
    iget v8, v0, Lcom/oplus/screenshot/OplusListViewCaptureHelper;->mScrollDelta:I

    iput v8, v5, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->scrollDelta:I

    .line 71
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, v5, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->availableArea:Landroid/graphics/Rect;

    .line 73
    invoke-virtual/range {p1 .. p1}, Landroid/widget/ListView;->isVisibleToUser()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/widget/ListView;->getChildCount()I

    move-result v8

    if-nez v8, :cond_0

    goto/16 :goto_1

    .line 80
    :cond_0
    iget v8, v0, Lcom/oplus/screenshot/OplusListViewCaptureHelper;->mScrollDelta:I

    .line 81
    invoke-static {v8, v2, v3}, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport;->transformFromRequestToContainer(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v8

    .line 82
    .local v8, "requestedContainerBounds":Landroid/graphics/Rect;
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 83
    .local v9, "recyclerLocalVisible":Landroid/graphics/Rect;
    invoke-virtual {v1, v9}, Landroid/widget/ListView;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 84
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "recyclerLocalVisible="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", scrollBounds="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v7, v10}, Lcom/oplus/util/OplusLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 86
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v8}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 87
    .local v10, "adjustedContainerBounds":Landroid/graphics/Rect;
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v11

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v12

    sub-int/2addr v11, v12

    .line 88
    .local v11, "remainingHeight":I
    if-lez v11, :cond_1

    .line 89
    neg-int v12, v11

    div-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v6, v12}, Landroid/graphics/Rect;->inset(II)V

    .line 92
    :cond_1
    invoke-static {v9, v10}, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport;->computeScrollAmount(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v12

    .line 93
    .local v12, "scrollAmount":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "scrollAmount: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v6, v7, v13}, Lcom/oplus/util/OplusLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 95
    if-gez v12, :cond_2

    .line 96
    const/4 v12, 0x0

    .line 97
    const-string v13, "About to scroll UP (content moves down within parent)"

    invoke-static {v6, v7, v13}, Lcom/oplus/util/OplusLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_2
    if-lez v12, :cond_3

    .line 99
    const-string v13, "About to scroll DOWN (content moves up within parent)"

    invoke-static {v6, v7, v13}, Lcom/oplus/util/OplusLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_3
    :goto_0
    invoke-static {v1, v12}, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport;->findScrollingReferenceView(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v13

    .line 103
    .local v13, "refView":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v14

    .line 105
    .local v14, "refTop":I
    invoke-virtual {v1, v12}, Landroid/widget/ListView;->scrollListBy(I)V

    .line 106
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v15

    sub-int v15, v14, v15

    .line 107
    .local v15, "scrollDistance":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v8

    .end local v8    # "requestedContainerBounds":Landroid/graphics/Rect;
    .local v16, "requestedContainerBounds":Landroid/graphics/Rect;
    const-string v8, "Parent view has scrolled vertically by "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " px"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v17, v10

    const/4 v10, 0x0

    .end local v10    # "adjustedContainerBounds":Landroid/graphics/Rect;
    .local v17, "adjustedContainerBounds":Landroid/graphics/Rect;
    invoke-static {v10, v7, v6}, Lcom/oplus/util/OplusLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 109
    iget v6, v0, Lcom/oplus/screenshot/OplusListViewCaptureHelper;->mScrollDelta:I

    add-int/2addr v6, v15

    iput v6, v0, Lcom/oplus/screenshot/OplusListViewCaptureHelper;->mScrollDelta:I

    .line 110
    iput v6, v5, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->scrollDelta:I

    .line 111
    if-eqz v15, :cond_4

    .line 112
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Scroll delta is now "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v10, v0, Lcom/oplus/screenshot/OplusListViewCaptureHelper;->mScrollDelta:I

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-static {v8, v7, v6}, Lcom/oplus/util/OplusLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_4
    new-instance v6, Landroid/graphics/Rect;

    iget v7, v0, Lcom/oplus/screenshot/OplusListViewCaptureHelper;->mScrollDelta:I

    .line 116
    invoke-static {v7, v2, v3}, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport;->transformFromRequestToContainer(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 117
    .end local v16    # "requestedContainerBounds":Landroid/graphics/Rect;
    .local v6, "requestedContainerBounds":Landroid/graphics/Rect;
    invoke-virtual {v1, v9}, Landroid/widget/ListView;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 118
    invoke-virtual {v6, v9}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 119
    iget v7, v0, Lcom/oplus/screenshot/OplusListViewCaptureHelper;->mScrollDelta:I

    invoke-static {v7, v2, v6}, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport;->transformFromContainerToRequest(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v7

    iput-object v7, v5, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->availableArea:Landroid/graphics/Rect;

    .line 122
    :cond_5
    invoke-interface {v4, v5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 123
    return-void

    .line 74
    .end local v6    # "requestedContainerBounds":Landroid/graphics/Rect;
    .end local v9    # "recyclerLocalVisible":Landroid/graphics/Rect;
    .end local v11    # "remainingHeight":I
    .end local v12    # "scrollAmount":I
    .end local v13    # "refView":Landroid/view/View;
    .end local v14    # "refTop":I
    .end local v15    # "scrollDistance":I
    .end local v17    # "adjustedContainerBounds":Landroid/graphics/Rect;
    :cond_6
    :goto_1
    const-string v6, "listView is empty or not visible, cannot continue"

    invoke-static {v7, v6}, Lcom/oplus/util/OplusLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-interface {v4, v5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 76
    return-void
.end method
