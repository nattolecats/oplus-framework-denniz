.class public Lcom/oplus/screenshot/OplusScrollCaptureViewSupport;
.super Ljava/lang/Object;
.source "OplusScrollCaptureViewSupport.java"

# interfaces
.implements Lcom/oplus/screenshot/IOplusScrollCaptureCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$ViewRenderer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/oplus/screenshot/IOplusScrollCaptureCallback;"
    }
.end annotation


# static fields
.field private static final blacklist SETTING_CAPTURE_DELAY:Ljava/lang/String; = "screenshot.scroll_capture_delay"

.field private static final blacklist SETTING_CAPTURE_DELAY_DEFAULT:J = 0x3cL

.field private static final blacklist TAG:Ljava/lang/String; = "OplusSCViewSupport"


# instance fields
.field private blacklist mEnded:Z

.field private final blacklist mPostScrollDelayMillis:J

.field private final blacklist mRenderer:Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$ViewRenderer;

.field private blacklist mStarted:Z

.field private final blacklist mViewHelper:Lcom/android/internal/view/ScrollCaptureViewHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/view/ScrollCaptureViewHelper<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final blacklist mWeakView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/view/View;Lcom/android/internal/view/ScrollCaptureViewHelper;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Lcom/android/internal/view/ScrollCaptureViewHelper<",
            "TV;>;)V"
        }
    .end annotation

    .line 81
    .local p0, "this":Lcom/oplus/screenshot/OplusScrollCaptureViewSupport;, "Lcom/oplus/screenshot/OplusScrollCaptureViewSupport<TV;>;"
    .local p1, "containingView":Landroid/view/View;, "TV;"
    .local p2, "viewHelper":Lcom/android/internal/view/ScrollCaptureViewHelper;, "Lcom/android/internal/view/ScrollCaptureViewHelper<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport;->mWeakView:Ljava/lang/ref/WeakReference;

    .line 83
    new-instance v0, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$ViewRenderer;

    invoke-direct {v0}, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$ViewRenderer;-><init>()V

    iput-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport;->mRenderer:Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$ViewRenderer;

    .line 85
    iput-object p2, p0, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport;->mViewHelper:Lcom/android/internal/view/ScrollCaptureViewHelper;

    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 87
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 88
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    const-string v2, "screenshot.scroll_capture_delay"

    const-wide/16 v3, 0x3c

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport;->mPostScrollDelayMillis:J

    .line 90
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "screenshot.scroll_capture_delay = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OplusSCViewSupport"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return-void
.end method

.method public static blacklist computeScrollAmount(Landroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 5
    .param p0, "parentVisibleBounds"    # Landroid/graphics/Rect;
    .param p1, "requested"    # Landroid/graphics/Rect;

    .line 147
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 148
    .local v0, "height":I
    iget v1, p0, Landroid/graphics/Rect;->top:I

    .line 149
    .local v1, "top":I
    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    .line 150
    .local v2, "bottom":I
    const/4 v3, 0x0

    .line 152
    .local v3, "scrollYDelta":I
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    if-le v4, v2, :cond_1

    iget v4, p1, Landroid/graphics/Rect;->top:I

    if-le v4, v1, :cond_1

    .line 157
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-le v4, v0, :cond_0

    .line 159
    iget v4, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v1

    add-int/2addr v3, v4

    goto :goto_0

    .line 162
    :cond_0
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v2

    add-int/2addr v3, v4

    goto :goto_0

    .line 164
    :cond_1
    iget v4, p1, Landroid/graphics/Rect;->top:I

    if-ge v4, v1, :cond_3

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v4, v2, :cond_3

    .line 169
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-le v4, v0, :cond_2

    .line 171
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v2, v4

    sub-int/2addr v3, v4

    goto :goto_0

    .line 174
    :cond_2
    iget v4, p1, Landroid/graphics/Rect;->top:I

    sub-int v4, v1, v4

    sub-int/2addr v3, v4

    .line 177
    :cond_3
    :goto_0
    return v3
.end method

.method private blacklist doCapture(Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;Landroid/view/View;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V
    .locals 7
    .param p1, "scrollResult"    # Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;
    .param p3, "viewCaptureArea"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;",
            "TV;",
            "Landroid/graphics/Rect;",
            "Ljava/util/function/Consumer<",
            "[",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 302
    .local p0, "this":Lcom/oplus/screenshot/OplusScrollCaptureViewSupport;, "Lcom/oplus/screenshot/OplusScrollCaptureViewSupport<TV;>;"
    .local p2, "view":Landroid/view/View;, "TV;"
    .local p4, "onComplete":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<[Landroid/graphics/Rect;>;"
    iget-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport;->mRenderer:Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$ViewRenderer;

    invoke-virtual {v0, p2, p3}, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$ViewRenderer;->renderView(Landroid/view/View;Landroid/graphics/Rect;)I

    move-result v0

    .line 303
    .local v0, "result":I
    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 311
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "syncAndDraw(): SyncAndDrawResult = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OplusSCViewSupport"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    new-array v2, v2, [Landroid/graphics/Rect;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    aput-object v4, v2, v1

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    aput-object v1, v2, v3

    invoke-interface {p4, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_1

    .line 305
    :cond_1
    :goto_0
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 306
    .local v4, "screenArea":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport;->mRenderer:Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$ViewRenderer;

    invoke-static {v5, p2, p3, v4}, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$ViewRenderer;->-$$Nest$mtransformToRoot(Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$ViewRenderer;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 308
    new-array v2, v2, [Landroid/graphics/Rect;

    new-instance v5, Landroid/graphics/Rect;

    iget-object v6, p1, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->availableArea:Landroid/graphics/Rect;

    invoke-direct {v5, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    aput-object v5, v2, v1

    aput-object v4, v2, v3

    invoke-interface {p4, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 309
    .end local v4    # "screenArea":Landroid/graphics/Rect;
    nop

    .line 314
    :goto_1
    return-void
.end method

.method public static blacklist findScrollingReferenceView(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 7
    .param p0, "parent"    # Landroid/view/ViewGroup;
    .param p1, "expectedScrollDistance"    # I

    .line 191
    const/4 v0, 0x0

    .line 192
    .local v0, "selected":Landroid/view/View;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 193
    .local v1, "parentLocalVisible":Landroid/graphics/Rect;
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 195
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 196
    .local v2, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 197
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 198
    .local v4, "child":Landroid/view/View;
    if-nez v0, :cond_0

    .line 199
    move-object v0, v4

    goto :goto_1

    .line 200
    :cond_0
    if-gez p1, :cond_1

    .line 201
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 202
    move-object v0, v4

    goto :goto_1

    .line 204
    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v6

    if-le v5, v6, :cond_2

    .line 205
    move-object v0, v4

    .line 196
    .end local v4    # "child":Landroid/view/View;
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 208
    .end local v3    # "i":I
    :cond_3
    return-object v0
.end method

.method private static blacklist getColorMode(Landroid/view/View;)I
    .locals 3
    .param p0, "containingView"    # Landroid/view/View;

    .line 96
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 97
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getColorMode()I

    move-result v1

    .line 98
    .local v1, "colorMode":I
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->isScreenWideColorGamut()Z

    move-result v2

    if-nez v2, :cond_0

    .line 99
    const/4 v1, 0x0

    .line 101
    :cond_0
    return v1
.end method

.method private blacklist onScrollResult(Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;Landroid/view/View;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V
    .locals 9
    .param p1, "scrollResult"    # Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;",
            "TV;",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/function/Consumer<",
            "[",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 282
    .local p0, "this":Lcom/oplus/screenshot/OplusScrollCaptureViewSupport;, "Lcom/oplus/screenshot/OplusScrollCaptureViewSupport<TV;>;"
    .local p2, "view":Landroid/view/View;, "TV;"
    .local p4, "onComplete":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<[Landroid/graphics/Rect;>;"
    invoke-virtual {p3}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    const-string v0, "OplusSCViewSupport"

    const-string v1, "onScrollCaptureImageRequest: cancelled! skipping render."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    return-void

    .line 287
    :cond_0
    iget-object v0, p1, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->availableArea:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 288
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/Rect;

    iget-object v2, p1, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->availableArea:Landroid/graphics/Rect;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    aput-object v2, v0, v1

    invoke-interface {p4, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 289
    return-void

    .line 292
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p1, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->availableArea:Landroid/graphics/Rect;

    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 293
    .local v0, "viewCaptureArea":Landroid/graphics/Rect;
    iget v2, p1, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->scrollDelta:I

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 295
    new-instance v1, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$$ExternalSyntheticLambda1;

    move-object v3, v1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, v0

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$$ExternalSyntheticLambda1;-><init>(Lcom/oplus/screenshot/OplusScrollCaptureViewSupport;Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;Landroid/view/View;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V

    iget-wide v2, p0, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport;->mPostScrollDelayMillis:J

    invoke-virtual {p2, v1, v2, v3}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 298
    return-void
.end method

.method public static blacklist transformFromContainerToRequest(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 3
    .param p0, "scrollY"    # I
    .param p1, "requestBounds"    # Landroid/graphics/Rect;
    .param p2, "containerRect"    # Landroid/graphics/Rect;

    .line 132
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 133
    .local v0, "requestRect":Landroid/graphics/Rect;
    iget v1, p1, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 134
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Landroid/graphics/Rect;->offset(II)V

    .line 135
    return-object v0
.end method

.method public static blacklist transformFromRequestToContainer(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 3
    .param p0, "scrollY"    # I
    .param p1, "requestBounds"    # Landroid/graphics/Rect;
    .param p2, "requestRect"    # Landroid/graphics/Rect;

    .line 115
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 116
    .local v0, "requestedContainerBounds":Landroid/graphics/Rect;
    neg-int v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 117
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 118
    return-object v0
.end method


# virtual methods
.method synthetic blacklist lambda$onScrollCaptureImageRequest2$0$com-oplus-screenshot-OplusScrollCaptureViewSupport(Landroid/view/View;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "signal"    # Landroid/os/CancellationSignal;
    .param p3, "onComplete"    # Ljava/util/function/Consumer;
    .param p4, "result"    # Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;

    .line 276
    .local p0, "this":Lcom/oplus/screenshot/OplusScrollCaptureViewSupport;, "Lcom/oplus/screenshot/OplusScrollCaptureViewSupport<TV;>;"
    invoke-direct {p0, p4, p1, p2, p3}, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport;->onScrollResult(Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;Landroid/view/View;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V

    return-void
.end method

.method synthetic blacklist lambda$onScrollResult$1$com-oplus-screenshot-OplusScrollCaptureViewSupport(Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;Landroid/view/View;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V
    .locals 0
    .param p1, "scrollResult"    # Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewCaptureArea"    # Landroid/graphics/Rect;
    .param p4, "onComplete"    # Ljava/util/function/Consumer;

    .line 296
    .local p0, "this":Lcom/oplus/screenshot/OplusScrollCaptureViewSupport;, "Lcom/oplus/screenshot/OplusScrollCaptureViewSupport<TV;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport;->doCapture(Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;Landroid/view/View;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final whitelist onScrollCaptureEnd(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "onReady"    # Ljava/lang/Runnable;

    .line 318
    .local p0, "this":Lcom/oplus/screenshot/OplusScrollCaptureViewSupport;, "Lcom/oplus/screenshot/OplusScrollCaptureViewSupport<TV;>;"
    iget-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport;->mWeakView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 319
    .local v0, "view":Landroid/view/View;, "TV;"
    iget-boolean v1, p0, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport;->mStarted:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport;->mEnded:Z

    if-nez v1, :cond_1

    .line 320
    if-eqz v0, :cond_0

    .line 321
    iget-object v1, p0, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport;->mViewHelper:Lcom/android/internal/view/ScrollCaptureViewHelper;

    invoke-interface {v1, v0}, Lcom/android/internal/view/ScrollCaptureViewHelper;->onPrepareForEnd(Landroid/view/View;)V

    .line 322
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 324
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport;->mEnded:Z

    .line 325
    iget-object v1, p0, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport;->mRenderer:Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$ViewRenderer;

    invoke-virtual {v1}, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$ViewRenderer;->destroy()V

    .line 327
    :cond_1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 328
    return-void
.end method

.method public final whitelist onScrollCaptureImageRequest(Landroid/view/ScrollCaptureSession;Landroid/os/CancellationSignal;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V
    .locals 1
    .param p1, "session"    # Landroid/view/ScrollCaptureSession;
    .param p2, "signal"    # Landroid/os/CancellationSignal;
    .param p3, "requestRect"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ScrollCaptureSession;",
            "Landroid/os/CancellationSignal;",
            "Landroid/graphics/Rect;",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 251
    .local p0, "this":Lcom/oplus/screenshot/OplusScrollCaptureViewSupport;, "Lcom/oplus/screenshot/OplusScrollCaptureViewSupport<TV;>;"
    .local p4, "onComplete":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/graphics/Rect;>;"
    new-instance v0, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$1;

    invoke-direct {v0, p0, p4}, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$1;-><init>(Lcom/oplus/screenshot/OplusScrollCaptureViewSupport;Ljava/util/function/Consumer;)V

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport;->onScrollCaptureImageRequest2(Landroid/view/ScrollCaptureSession;Landroid/os/CancellationSignal;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V

    .line 257
    return-void
.end method

.method public final blacklist onScrollCaptureImageRequest2(Landroid/view/ScrollCaptureSession;Landroid/os/CancellationSignal;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V
    .locals 7
    .param p1, "session"    # Landroid/view/ScrollCaptureSession;
    .param p2, "signal"    # Landroid/os/CancellationSignal;
    .param p3, "requestRect"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ScrollCaptureSession;",
            "Landroid/os/CancellationSignal;",
            "Landroid/graphics/Rect;",
            "Ljava/util/function/Consumer<",
            "[",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 262
    .local p0, "this":Lcom/oplus/screenshot/OplusScrollCaptureViewSupport;, "Lcom/oplus/screenshot/OplusScrollCaptureViewSupport<TV;>;"
    .local p4, "onComplete":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<[Landroid/graphics/Rect;>;"
    invoke-virtual {p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    const-string v0, "OplusSCViewSupport"

    const-string v1, "onScrollCaptureImageRequest: cancelled!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    return-void

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport;->mWeakView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 268
    .local v0, "view":Landroid/view/View;, "TV;"
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->isVisibleToUser()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 275
    :cond_1
    iget-object v1, p0, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport;->mViewHelper:Lcom/android/internal/view/ScrollCaptureViewHelper;

    invoke-virtual {p1}, Landroid/view/ScrollCaptureSession;->getScrollBounds()Landroid/graphics/Rect;

    move-result-object v3

    new-instance v6, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0, v0, p2, p4}, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$$ExternalSyntheticLambda0;-><init>(Lcom/oplus/screenshot/OplusScrollCaptureViewSupport;Landroid/view/View;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V

    move-object v2, v0

    move-object v4, p3

    move-object v5, p2

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/view/ScrollCaptureViewHelper;->onScrollRequested(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V

    .line 277
    return-void

    .line 270
    :cond_2
    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/Rect;

    const/4 v2, 0x0

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    aput-object v3, v1, v2

    invoke-interface {p4, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 271
    return-void
.end method

.method public final whitelist onScrollCaptureSearch(Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V
    .locals 2
    .param p1, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 213
    .local p0, "this":Lcom/oplus/screenshot/OplusScrollCaptureViewSupport;, "Lcom/oplus/screenshot/OplusScrollCaptureViewSupport<TV;>;"
    .local p2, "onReady":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/graphics/Rect;>;"
    invoke-virtual {p1}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    return-void

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport;->mWeakView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 217
    .local v0, "view":Landroid/view/View;, "TV;"
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport;->mStarted:Z

    .line 218
    iput-boolean v1, p0, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport;->mEnded:Z

    .line 220
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isVisibleToUser()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport;->mViewHelper:Lcom/android/internal/view/ScrollCaptureViewHelper;

    invoke-interface {v1, v0}, Lcom/android/internal/view/ScrollCaptureViewHelper;->onAcceptSession(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 221
    iget-object v1, p0, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport;->mViewHelper:Lcom/android/internal/view/ScrollCaptureViewHelper;

    invoke-interface {v1, v0}, Lcom/android/internal/view/ScrollCaptureViewHelper;->onComputeScrollBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 222
    return-void

    .line 224
    :cond_1
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 225
    return-void
.end method

.method public final whitelist onScrollCaptureStart(Landroid/view/ScrollCaptureSession;Landroid/os/CancellationSignal;Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "session"    # Landroid/view/ScrollCaptureSession;
    .param p2, "signal"    # Landroid/os/CancellationSignal;
    .param p3, "onReady"    # Ljava/lang/Runnable;

    .line 230
    .local p0, "this":Lcom/oplus/screenshot/OplusScrollCaptureViewSupport;, "Lcom/oplus/screenshot/OplusScrollCaptureViewSupport<TV;>;"
    invoke-virtual {p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport;->mWeakView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 235
    .local v0, "view":Landroid/view/View;, "TV;"
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport;->mEnded:Z

    .line 236
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport;->mStarted:Z

    .line 241
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isVisibleToUser()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 242
    iget-object v1, p0, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport;->mRenderer:Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$ViewRenderer;

    invoke-virtual {p1}, Landroid/view/ScrollCaptureSession;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$ViewRenderer;->setSurface(Landroid/view/Surface;)V

    .line 243
    iget-object v1, p0, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport;->mViewHelper:Lcom/android/internal/view/ScrollCaptureViewHelper;

    invoke-virtual {p1}, Landroid/view/ScrollCaptureSession;->getScrollBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/view/ScrollCaptureViewHelper;->onPrepareForStart(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 245
    :cond_1
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 246
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 469
    .local p0, "this":Lcom/oplus/screenshot/OplusScrollCaptureViewSupport;, "Lcom/oplus/screenshot/OplusScrollCaptureViewSupport<TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OplusScrollCaptureViewSupport{view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport;->mWeakView:Ljava/lang/ref/WeakReference;

    .line 470
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", helper="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport;->mViewHelper:Lcom/android/internal/view/ScrollCaptureViewHelper;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 469
    return-object v0
.end method
