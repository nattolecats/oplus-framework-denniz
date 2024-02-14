.class public Lcom/oplus/screenshot/OplusWebViewCaptureHelper;
.super Lcom/oplus/screenshot/OplusScrollCaptureViewHelper;
.source "OplusWebViewCaptureHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oplus/screenshot/OplusScrollCaptureViewHelper<",
        "Landroid/webkit/WebView;",
        ">;"
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "OplusWebViewScrollCapture"


# instance fields
.field private blacklist mOriginScrollX:I

.field private blacklist mOriginScrollY:I

.field private final blacklist mRequestWebViewLocal:Landroid/graphics/Rect;

.field private final blacklist mWebViewBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/oplus/screenshot/OplusScrollCaptureViewHelper;-><init>()V

    .line 41
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/screenshot/OplusWebViewCaptureHelper;->mRequestWebViewLocal:Landroid/graphics/Rect;

    .line 42
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/screenshot/OplusWebViewCaptureHelper;->mWebViewBounds:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist onAcceptSession(Landroid/view/View;)Z
    .locals 0

    .line 37
    check-cast p1, Landroid/webkit/WebView;

    invoke-virtual {p0, p1}, Lcom/oplus/screenshot/OplusWebViewCaptureHelper;->onAcceptSession(Landroid/webkit/WebView;)Z

    move-result p1

    return p1
.end method

.method public blacklist onAcceptSession(Landroid/webkit/WebView;)Z
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;

    .line 49
    invoke-virtual {p1}, Landroid/webkit/WebView;->isVisibleToUser()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getScale()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 49
    :goto_0
    return v0
.end method

.method public bridge synthetic blacklist onPrepareForEnd(Landroid/view/View;)V
    .locals 0

    .line 37
    check-cast p1, Landroid/webkit/WebView;

    invoke-virtual {p0, p1}, Lcom/oplus/screenshot/OplusWebViewCaptureHelper;->onPrepareForEnd(Landroid/webkit/WebView;)V

    return-void
.end method

.method public blacklist onPrepareForEnd(Landroid/webkit/WebView;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;

    .line 106
    iget v0, p0, Lcom/oplus/screenshot/OplusWebViewCaptureHelper;->mOriginScrollX:I

    iget v1, p0, Lcom/oplus/screenshot/OplusWebViewCaptureHelper;->mOriginScrollY:I

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->scrollTo(II)V

    .line 107
    return-void
.end method

.method public bridge synthetic blacklist onPrepareForStart(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    .line 37
    check-cast p1, Landroid/webkit/WebView;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/screenshot/OplusWebViewCaptureHelper;->onPrepareForStart(Landroid/webkit/WebView;Landroid/graphics/Rect;)V

    return-void
.end method

.method public blacklist onPrepareForStart(Landroid/webkit/WebView;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "scrollBounds"    # Landroid/graphics/Rect;

    .line 55
    invoke-virtual {p1}, Landroid/webkit/WebView;->getScrollX()I

    move-result v0

    iput v0, p0, Lcom/oplus/screenshot/OplusWebViewCaptureHelper;->mOriginScrollX:I

    .line 56
    invoke-virtual {p1}, Landroid/webkit/WebView;->getScrollY()I

    move-result v0

    iput v0, p0, Lcom/oplus/screenshot/OplusWebViewCaptureHelper;->mOriginScrollY:I

    .line 57
    return-void
.end method

.method public bridge synthetic blacklist onScrollRequested(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V
    .locals 6

    .line 37
    move-object v1, p1

    check-cast v1, Landroid/webkit/WebView;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/oplus/screenshot/OplusWebViewCaptureHelper;->onScrollRequested(Landroid/webkit/WebView;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public blacklist onScrollRequested(Landroid/webkit/WebView;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V
    .locals 10
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "scrollBounds"    # Landroid/graphics/Rect;
    .param p3, "requestRect"    # Landroid/graphics/Rect;
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;",
            ">;)V"
        }
    .end annotation

    .line 65
    .local p5, "resultConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;>;"
    invoke-virtual {p1}, Landroid/webkit/WebView;->getScrollY()I

    move-result v0

    iget v1, p0, Lcom/oplus/screenshot/OplusWebViewCaptureHelper;->mOriginScrollY:I

    sub-int/2addr v0, v1

    .line 67
    .local v0, "scrollDelta":I
    new-instance v1, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;

    invoke-direct {v1}, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;-><init>()V

    .line 68
    .local v1, "result":Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v2, v1, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->requestedArea:Landroid/graphics/Rect;

    .line 69
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v1, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->availableArea:Landroid/graphics/Rect;

    .line 70
    iput v0, v1, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->scrollDelta:I

    .line 72
    iget-object v2, p0, Lcom/oplus/screenshot/OplusWebViewCaptureHelper;->mWebViewBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/webkit/WebView;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 74
    invoke-virtual {p1}, Landroid/webkit/WebView;->isVisibleToUser()Z

    move-result v2

    if-nez v2, :cond_0

    .line 75
    invoke-interface {p5, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 79
    :cond_0
    iget-object v2, p0, Lcom/oplus/screenshot/OplusWebViewCaptureHelper;->mRequestWebViewLocal:Landroid/graphics/Rect;

    invoke-virtual {v2, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 80
    iget-object v2, p0, Lcom/oplus/screenshot/OplusWebViewCaptureHelper;->mRequestWebViewLocal:Landroid/graphics/Rect;

    neg-int v3, v0

    invoke-virtual {v2, v5, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 83
    invoke-virtual {p1}, Landroid/webkit/WebView;->getScrollY()I

    move-result v2

    neg-int v2, v2

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 84
    .local v2, "upLimit":I
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/webkit/WebView;->getScale()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 85
    .local v3, "contentHeightPx":I
    invoke-virtual {p1}, Landroid/webkit/WebView;->getHeight()I

    move-result v4

    sub-int v4, v3, v4

    invoke-virtual {p1}, Landroid/webkit/WebView;->getScrollY()I

    move-result v6

    sub-int/2addr v4, v6

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 86
    .local v4, "downLimit":I
    iget-object v6, p0, Lcom/oplus/screenshot/OplusWebViewCaptureHelper;->mRequestWebViewLocal:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    iget-object v7, p0, Lcom/oplus/screenshot/OplusWebViewCaptureHelper;->mWebViewBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    sub-int/2addr v6, v7

    .line 87
    .local v6, "scrollToCenter":I
    invoke-static {v6, v2, v4}, Landroid/util/MathUtils;->constrain(III)I

    move-result v7

    .line 88
    .local v7, "scrollMovement":I
    if-gez v7, :cond_1

    .line 89
    const/4 v7, 0x0

    .line 92
    :cond_1
    invoke-virtual {p1, v5, v7}, Landroid/webkit/WebView;->scrollBy(II)V

    .line 93
    invoke-virtual {p1}, Landroid/webkit/WebView;->getScrollY()I

    move-result v8

    iget v9, p0, Lcom/oplus/screenshot/OplusWebViewCaptureHelper;->mOriginScrollY:I

    sub-int/2addr v8, v9

    .line 94
    .end local v0    # "scrollDelta":I
    .local v8, "scrollDelta":I
    iget-object v0, p0, Lcom/oplus/screenshot/OplusWebViewCaptureHelper;->mRequestWebViewLocal:Landroid/graphics/Rect;

    neg-int v9, v7

    invoke-virtual {v0, v5, v9}, Landroid/graphics/Rect;->offset(II)V

    .line 95
    iput v8, v1, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->scrollDelta:I

    .line 97
    iget-object v0, p0, Lcom/oplus/screenshot/OplusWebViewCaptureHelper;->mRequestWebViewLocal:Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/oplus/screenshot/OplusWebViewCaptureHelper;->mWebViewBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v9}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    new-instance v0, Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/oplus/screenshot/OplusWebViewCaptureHelper;->mRequestWebViewLocal:Landroid/graphics/Rect;

    invoke-direct {v0, v9}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, v1, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->availableArea:Landroid/graphics/Rect;

    .line 99
    iget-object v0, v1, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->availableArea:Landroid/graphics/Rect;

    iget v9, v1, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->scrollDelta:I

    invoke-virtual {v0, v5, v9}, Landroid/graphics/Rect;->offset(II)V

    .line 101
    :cond_2
    invoke-interface {p5, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 102
    return-void
.end method
