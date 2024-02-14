.class public Lcom/oplus/screenshot/OplusScrollCaptureHelper;
.super Lcom/oplus/screenshot/OplusScrollCaptureViewHelper;
.source "OplusScrollCaptureHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Lcom/oplus/screenshot/OplusScrollCaptureViewHelper<",
        "TV;>;"
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "OplusScrollCaptureHelper"


# instance fields
.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mOriginScrollX:I

.field private blacklist mOriginScrollY:I

.field private final blacklist mRequestWebViewLocal:Landroid/graphics/Rect;

.field private final blacklist mScrollable:Lcom/oplus/screenshot/IOplusScrollable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/screenshot/IOplusScrollable<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final blacklist mWebViewBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor blacklist <init>(Lcom/oplus/screenshot/IOplusScrollable;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/screenshot/IOplusScrollable<",
            "TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 50
    .local p0, "this":Lcom/oplus/screenshot/OplusScrollCaptureHelper;, "Lcom/oplus/screenshot/OplusScrollCaptureHelper<TV;>;"
    .local p1, "scrollable":Lcom/oplus/screenshot/IOplusScrollable;, "Lcom/oplus/screenshot/IOplusScrollable<TV;>;"
    invoke-direct {p0}, Lcom/oplus/screenshot/OplusScrollCaptureViewHelper;-><init>()V

    .line 42
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureHelper;->mRequestWebViewLocal:Landroid/graphics/Rect;

    .line 43
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureHelper;->mWebViewBounds:Landroid/graphics/Rect;

    .line 51
    iput-object p1, p0, Lcom/oplus/screenshot/OplusScrollCaptureHelper;->mScrollable:Lcom/oplus/screenshot/IOplusScrollable;

    .line 52
    iput-object p2, p0, Lcom/oplus/screenshot/OplusScrollCaptureHelper;->mExecutor:Ljava/util/concurrent/Executor;

    .line 53
    return-void
.end method

.method private blacklist notifyResultConsumer(Landroid/view/View;Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;ILjava/util/function/Consumer;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "result"    # Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;
    .param p3, "scrollMovement"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;",
            "I",
            "Ljava/util/function/Consumer<",
            "Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;",
            ">;)V"
        }
    .end annotation

    .line 116
    .local p0, "this":Lcom/oplus/screenshot/OplusScrollCaptureHelper;, "Lcom/oplus/screenshot/OplusScrollCaptureHelper<TV;>;"
    .local p4, "resultConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;>;"
    iget-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureHelper;->mScrollable:Lcom/oplus/screenshot/IOplusScrollable;

    invoke-interface {v0, p1}, Lcom/oplus/screenshot/IOplusScrollable;->getVerticalScrollOffset(Landroid/view/View;)I

    move-result v0

    iget v1, p0, Lcom/oplus/screenshot/OplusScrollCaptureHelper;->mOriginScrollY:I

    sub-int/2addr v0, v1

    .line 117
    .local v0, "scrollDelta":I
    iget-object v1, p0, Lcom/oplus/screenshot/OplusScrollCaptureHelper;->mRequestWebViewLocal:Landroid/graphics/Rect;

    neg-int v2, p3

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 118
    iput v0, p2, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->scrollDelta:I

    .line 120
    iget-object v1, p0, Lcom/oplus/screenshot/OplusScrollCaptureHelper;->mRequestWebViewLocal:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/oplus/screenshot/OplusScrollCaptureHelper;->mWebViewBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/oplus/screenshot/OplusScrollCaptureHelper;->mRequestWebViewLocal:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, p2, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->availableArea:Landroid/graphics/Rect;

    .line 122
    iget-object v1, p2, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->availableArea:Landroid/graphics/Rect;

    iget v2, p2, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->scrollDelta:I

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 124
    :cond_0
    invoke-interface {p4, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 125
    return-void
.end method


# virtual methods
.method protected blacklist getScrollable()Lcom/oplus/screenshot/IOplusScrollable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/oplus/screenshot/IOplusScrollable<",
            "TV;>;"
        }
    .end annotation

    .line 112
    .local p0, "this":Lcom/oplus/screenshot/OplusScrollCaptureHelper;, "Lcom/oplus/screenshot/OplusScrollCaptureHelper<TV;>;"
    iget-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureHelper;->mScrollable:Lcom/oplus/screenshot/IOplusScrollable;

    return-object v0
.end method

.method synthetic blacklist lambda$onScrollRequested$0$com-oplus-screenshot-OplusScrollCaptureHelper(Landroid/view/View;Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;ILjava/util/function/Consumer;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "result"    # Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;
    .param p3, "scrollMovement"    # I
    .param p4, "resultConsumer"    # Ljava/util/function/Consumer;

    .line 103
    .local p0, "this":Lcom/oplus/screenshot/OplusScrollCaptureHelper;, "Lcom/oplus/screenshot/OplusScrollCaptureHelper<TV;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/screenshot/OplusScrollCaptureHelper;->notifyResultConsumer(Landroid/view/View;Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;ILjava/util/function/Consumer;)V

    return-void
.end method

.method public blacklist onAcceptSession(Landroid/view/View;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 57
    .local p0, "this":Lcom/oplus/screenshot/OplusScrollCaptureHelper;, "Lcom/oplus/screenshot/OplusScrollCaptureHelper<TV;>;"
    .local p1, "view":Landroid/view/View;, "TV;"
    invoke-virtual {p1}, Landroid/view/View;->isVisibleToUser()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureHelper;->mScrollable:Lcom/oplus/screenshot/IOplusScrollable;

    .line 58
    invoke-interface {v0, p1}, Lcom/oplus/screenshot/IOplusScrollable;->getVerticalScrollRange(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/oplus/screenshot/OplusScrollCaptureHelper;->mScrollable:Lcom/oplus/screenshot/IOplusScrollable;

    invoke-interface {v1, p1}, Lcom/oplus/screenshot/IOplusScrollable;->getVerticalScrollExtent(Landroid/view/View;)I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 57
    :goto_0
    return v0
.end method

.method public blacklist onPrepareForEnd(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 108
    .local p0, "this":Lcom/oplus/screenshot/OplusScrollCaptureHelper;, "Lcom/oplus/screenshot/OplusScrollCaptureHelper<TV;>;"
    iget-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureHelper;->mScrollable:Lcom/oplus/screenshot/IOplusScrollable;

    iget v1, p0, Lcom/oplus/screenshot/OplusScrollCaptureHelper;->mOriginScrollX:I

    iget v2, p0, Lcom/oplus/screenshot/OplusScrollCaptureHelper;->mOriginScrollY:I

    invoke-interface {v0, p1, v1, v2}, Lcom/oplus/screenshot/IOplusScrollable;->scrollTo(Landroid/view/View;II)V

    .line 109
    return-void
.end method

.method public blacklist onPrepareForStart(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1
    .param p2, "scrollBounds"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    .line 63
    .local p0, "this":Lcom/oplus/screenshot/OplusScrollCaptureHelper;, "Lcom/oplus/screenshot/OplusScrollCaptureHelper<TV;>;"
    .local p1, "view":Landroid/view/View;, "TV;"
    iget-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureHelper;->mScrollable:Lcom/oplus/screenshot/IOplusScrollable;

    invoke-interface {v0, p1}, Lcom/oplus/screenshot/IOplusScrollable;->getHorizontalScrollOffset(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureHelper;->mOriginScrollX:I

    .line 64
    iget-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureHelper;->mScrollable:Lcom/oplus/screenshot/IOplusScrollable;

    invoke-interface {v0, p1}, Lcom/oplus/screenshot/IOplusScrollable;->getVerticalScrollOffset(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureHelper;->mOriginScrollY:I

    .line 65
    return-void
.end method

.method public blacklist onScrollRequested(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V
    .locals 18
    .param p2, "scrollBounds"    # Landroid/graphics/Rect;
    .param p3, "requestRect"    # Landroid/graphics/Rect;
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;",
            ">;)V"
        }
    .end annotation

    .line 73
    .local p0, "this":Lcom/oplus/screenshot/OplusScrollCaptureHelper;, "Lcom/oplus/screenshot/OplusScrollCaptureHelper<TV;>;"
    .local p1, "view":Landroid/view/View;, "TV;"
    .local p5, "resultConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;>;"
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    iget-object v0, v6, Lcom/oplus/screenshot/OplusScrollCaptureHelper;->mScrollable:Lcom/oplus/screenshot/IOplusScrollable;

    invoke-interface {v0, v7}, Lcom/oplus/screenshot/IOplusScrollable;->getVerticalScrollOffset(Landroid/view/View;)I

    move-result v9

    .line 74
    .local v9, "scrollY":I
    iget v0, v6, Lcom/oplus/screenshot/OplusScrollCaptureHelper;->mOriginScrollY:I

    sub-int v10, v9, v0

    .line 76
    .local v10, "scrollDelta":I
    new-instance v0, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;

    invoke-direct {v0}, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;-><init>()V

    move-object v11, v0

    .line 77
    .local v11, "result":Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v8}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, v11, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->requestedArea:Landroid/graphics/Rect;

    .line 78
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v11, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->availableArea:Landroid/graphics/Rect;

    .line 79
    iput v10, v11, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->scrollDelta:I

    .line 81
    iget-object v0, v6, Lcom/oplus/screenshot/OplusScrollCaptureHelper;->mWebViewBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 83
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isVisibleToUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    move-object/from16 v12, p5

    invoke-interface {v12, v11}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 85
    return-void

    .line 89
    :cond_0
    move-object/from16 v12, p5

    iget-object v0, v6, Lcom/oplus/screenshot/OplusScrollCaptureHelper;->mRequestWebViewLocal:Landroid/graphics/Rect;

    invoke-virtual {v0, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 90
    iget-object v0, v6, Lcom/oplus/screenshot/OplusScrollCaptureHelper;->mRequestWebViewLocal:Landroid/graphics/Rect;

    neg-int v1, v10

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 93
    neg-int v0, v9

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 94
    .local v13, "upLimit":I
    iget-object v0, v6, Lcom/oplus/screenshot/OplusScrollCaptureHelper;->mScrollable:Lcom/oplus/screenshot/IOplusScrollable;

    invoke-interface {v0, v7}, Lcom/oplus/screenshot/IOplusScrollable;->getVerticalScrollRange(Landroid/view/View;)I

    move-result v14

    .line 95
    .local v14, "contentHeightPx":I
    iget-object v0, v6, Lcom/oplus/screenshot/OplusScrollCaptureHelper;->mScrollable:Lcom/oplus/screenshot/IOplusScrollable;

    invoke-interface {v0, v7}, Lcom/oplus/screenshot/IOplusScrollable;->getVerticalScrollExtent(Landroid/view/View;)I

    move-result v0

    sub-int v0, v14, v0

    sub-int/2addr v0, v9

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 96
    .local v15, "downLimit":I
    iget-object v0, v6, Lcom/oplus/screenshot/OplusScrollCaptureHelper;->mRequestWebViewLocal:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    iget-object v1, v6, Lcom/oplus/screenshot/OplusScrollCaptureHelper;->mWebViewBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    sub-int v5, v0, v1

    .line 98
    .local v5, "scrollToCenter":I
    invoke-static {v5, v13, v15}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 101
    .local v4, "scrollMovement":I
    iget-object v0, v6, Lcom/oplus/screenshot/OplusScrollCaptureHelper;->mScrollable:Lcom/oplus/screenshot/IOplusScrollable;

    invoke-interface {v0, v7, v3, v4}, Lcom/oplus/screenshot/IOplusScrollable;->scrollBy(Landroid/view/View;II)V

    .line 103
    iget-object v3, v6, Lcom/oplus/screenshot/OplusScrollCaptureHelper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/oplus/screenshot/OplusScrollCaptureHelper$$ExternalSyntheticLambda0;

    move-object v0, v2

    move-object/from16 v1, p0

    move-object v6, v2

    move-object/from16 v2, p1

    move-object v7, v3

    move-object v3, v11

    move/from16 v16, v4

    .end local v4    # "scrollMovement":I
    .local v16, "scrollMovement":I
    move/from16 v17, v5

    .end local v5    # "scrollToCenter":I
    .local v17, "scrollToCenter":I
    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/oplus/screenshot/OplusScrollCaptureHelper$$ExternalSyntheticLambda0;-><init>(Lcom/oplus/screenshot/OplusScrollCaptureHelper;Landroid/view/View;Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;ILjava/util/function/Consumer;)V

    invoke-interface {v7, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 104
    return-void
.end method
