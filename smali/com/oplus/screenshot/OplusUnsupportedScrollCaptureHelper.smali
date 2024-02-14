.class public Lcom/oplus/screenshot/OplusUnsupportedScrollCaptureHelper;
.super Ljava/lang/Object;
.source "OplusUnsupportedScrollCaptureHelper.java"

# interfaces
.implements Lcom/android/internal/view/ScrollCaptureViewHelper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/view/ScrollCaptureViewHelper<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# static fields
.field public static final blacklist TAG:Ljava/lang/String; = "OplusUnsupportedScrollCaptureHelper"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method


# virtual methods
.method public blacklist onAcceptSession(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist onPrepareForEnd(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 65
    const-string v0, "OplusUnsupportedScrollCaptureHelper"

    const-string v1, "not supported"

    invoke-static {v0, v1}, Lcom/oplus/util/OplusLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public blacklist onPrepareForStart(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "scrollBounds"    # Landroid/graphics/Rect;

    .line 48
    const-string v0, "OplusUnsupportedScrollCaptureHelper"

    const-string v1, "not supported"

    invoke-static {v0, v1}, Lcom/oplus/util/OplusLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public blacklist onScrollRequested(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "scrollBounds"    # Landroid/graphics/Rect;
    .param p3, "requestRect"    # Landroid/graphics/Rect;
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;",
            ">;)V"
        }
    .end annotation

    .line 55
    .local p5, "resultConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;>;"
    const-string v0, "OplusUnsupportedScrollCaptureHelper"

    const-string v1, "not supported"

    invoke-static {v0, v1}, Lcom/oplus/util/OplusLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    new-instance v0, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;

    invoke-direct {v0}, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;-><init>()V

    .line 57
    .local v0, "result":Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, v0, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->requestedArea:Landroid/graphics/Rect;

    .line 58
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->availableArea:Landroid/graphics/Rect;

    .line 59
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->scrollDelta:I

    .line 60
    invoke-interface {p5, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 61
    return-void
.end method
