.class public Lcom/oplus/screenshot/OplusViewScrollCaptureHelperWrapper;
.super Ljava/lang/Object;
.source "OplusViewScrollCaptureHelperWrapper.java"

# interfaces
.implements Lcom/android/internal/view/ScrollCaptureViewHelper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/internal/view/ScrollCaptureViewHelper<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final blacklist mIsResetScroll:Z

.field private blacklist mOverScrollMode:I

.field private blacklist mScrollBarEnabled:Z

.field private final blacklist mWrapperd:Lcom/android/internal/view/ScrollCaptureViewHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/view/ScrollCaptureViewHelper<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/view/ScrollCaptureViewHelper;Z)V
    .locals 0
    .param p2, "isResetScroll"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/view/ScrollCaptureViewHelper<",
            "TT;>;Z)V"
        }
    .end annotation

    .line 41
    .local p0, "this":Lcom/oplus/screenshot/OplusViewScrollCaptureHelperWrapper;, "Lcom/oplus/screenshot/OplusViewScrollCaptureHelperWrapper<TT;>;"
    .local p1, "helper":Lcom/android/internal/view/ScrollCaptureViewHelper;, "Lcom/android/internal/view/ScrollCaptureViewHelper<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/oplus/screenshot/OplusViewScrollCaptureHelperWrapper;->mWrapperd:Lcom/android/internal/view/ScrollCaptureViewHelper;

    .line 43
    iput-boolean p2, p0, Lcom/oplus/screenshot/OplusViewScrollCaptureHelperWrapper;->mIsResetScroll:Z

    .line 44
    return-void
.end method


# virtual methods
.method public blacklist onAcceptSession(Landroid/view/View;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 48
    .local p0, "this":Lcom/oplus/screenshot/OplusViewScrollCaptureHelperWrapper;, "Lcom/oplus/screenshot/OplusViewScrollCaptureHelperWrapper<TT;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    iget-object v0, p0, Lcom/oplus/screenshot/OplusViewScrollCaptureHelperWrapper;->mWrapperd:Lcom/android/internal/view/ScrollCaptureViewHelper;

    invoke-interface {v0, p1}, Lcom/android/internal/view/ScrollCaptureViewHelper;->onAcceptSession(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public blacklist onComputeScrollBounds(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/graphics/Rect;"
        }
    .end annotation

    .line 53
    .local p0, "this":Lcom/oplus/screenshot/OplusViewScrollCaptureHelperWrapper;, "Lcom/oplus/screenshot/OplusViewScrollCaptureHelperWrapper<TT;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    iget-object v0, p0, Lcom/oplus/screenshot/OplusViewScrollCaptureHelperWrapper;->mWrapperd:Lcom/android/internal/view/ScrollCaptureViewHelper;

    invoke-interface {v0, p1}, Lcom/android/internal/view/ScrollCaptureViewHelper;->onComputeScrollBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public blacklist onPrepareForEnd(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 74
    .local p0, "this":Lcom/oplus/screenshot/OplusViewScrollCaptureHelperWrapper;, "Lcom/oplus/screenshot/OplusViewScrollCaptureHelperWrapper<TT;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    iget-boolean v0, p0, Lcom/oplus/screenshot/OplusViewScrollCaptureHelperWrapper;->mIsResetScroll:Z

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/oplus/screenshot/OplusViewScrollCaptureHelperWrapper;->mWrapperd:Lcom/android/internal/view/ScrollCaptureViewHelper;

    invoke-interface {v0, p1}, Lcom/android/internal/view/ScrollCaptureViewHelper;->onPrepareForEnd(Landroid/view/View;)V

    goto :goto_0

    .line 77
    :cond_0
    iget v0, p0, Lcom/oplus/screenshot/OplusViewScrollCaptureHelperWrapper;->mOverScrollMode:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setOverScrollMode(I)V

    .line 78
    iget-boolean v0, p0, Lcom/oplus/screenshot/OplusViewScrollCaptureHelperWrapper;->mScrollBarEnabled:Z

    invoke-virtual {p1, v0}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 80
    :goto_0
    return-void
.end method

.method public blacklist onPrepareForStart(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1
    .param p2, "scrollBounds"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    .line 58
    .local p0, "this":Lcom/oplus/screenshot/OplusViewScrollCaptureHelperWrapper;, "Lcom/oplus/screenshot/OplusViewScrollCaptureHelperWrapper<TT;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    iget-boolean v0, p0, Lcom/oplus/screenshot/OplusViewScrollCaptureHelperWrapper;->mIsResetScroll:Z

    if-nez v0, :cond_0

    .line 59
    invoke-virtual {p1}, Landroid/view/View;->getOverScrollMode()I

    move-result v0

    iput v0, p0, Lcom/oplus/screenshot/OplusViewScrollCaptureHelperWrapper;->mOverScrollMode:I

    .line 60
    invoke-virtual {p1}, Landroid/view/View;->isVerticalScrollBarEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/screenshot/OplusViewScrollCaptureHelperWrapper;->mScrollBarEnabled:Z

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/oplus/screenshot/OplusViewScrollCaptureHelperWrapper;->mWrapperd:Lcom/android/internal/view/ScrollCaptureViewHelper;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/ScrollCaptureViewHelper;->onPrepareForStart(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 63
    return-void
.end method

.method public blacklist onScrollRequested(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V
    .locals 6
    .param p2, "scrollBounds"    # Landroid/graphics/Rect;
    .param p3, "requestRect"    # Landroid/graphics/Rect;
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;",
            ">;)V"
        }
    .end annotation

    .line 69
    .local p0, "this":Lcom/oplus/screenshot/OplusViewScrollCaptureHelperWrapper;, "Lcom/oplus/screenshot/OplusViewScrollCaptureHelperWrapper<TT;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    .local p5, "resultConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;>;"
    iget-object v0, p0, Lcom/oplus/screenshot/OplusViewScrollCaptureHelperWrapper;->mWrapperd:Lcom/android/internal/view/ScrollCaptureViewHelper;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/view/ScrollCaptureViewHelper;->onScrollRequested(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V

    .line 70
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 84
    .local p0, "this":Lcom/oplus/screenshot/OplusViewScrollCaptureHelperWrapper;, "Lcom/oplus/screenshot/OplusViewScrollCaptureHelperWrapper<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/screenshot/OplusViewScrollCaptureHelperWrapper;->mWrapperd:Lcom/android/internal/view/ScrollCaptureViewHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
