.class public Lcom/oplus/screenshot/OplusAsyncScrollCaptureHelper;
.super Lcom/oplus/screenshot/OplusScrollCaptureHelper;
.source "OplusAsyncScrollCaptureHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Lcom/oplus/screenshot/OplusScrollCaptureHelper<",
        "TV;>;"
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "OplusAsyncScrollCaptureHelper"


# direct methods
.method public constructor blacklist <init>(Lcom/oplus/screenshot/IOplusScrollable;Ljava/util/concurrent/Executor;)V
    .locals 0
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

    .line 36
    .local p0, "this":Lcom/oplus/screenshot/OplusAsyncScrollCaptureHelper;, "Lcom/oplus/screenshot/OplusAsyncScrollCaptureHelper<TV;>;"
    .local p1, "scrollable":Lcom/oplus/screenshot/IOplusScrollable;, "Lcom/oplus/screenshot/IOplusScrollable<TV;>;"
    invoke-direct {p0, p1, p2}, Lcom/oplus/screenshot/OplusScrollCaptureHelper;-><init>(Lcom/oplus/screenshot/IOplusScrollable;Ljava/util/concurrent/Executor;)V

    .line 37
    return-void
.end method


# virtual methods
.method public blacklist onAcceptSession(Landroid/view/View;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 41
    .local p0, "this":Lcom/oplus/screenshot/OplusAsyncScrollCaptureHelper;, "Lcom/oplus/screenshot/OplusAsyncScrollCaptureHelper<TV;>;"
    .local p1, "view":Landroid/view/View;, "TV;"
    invoke-virtual {p0}, Lcom/oplus/screenshot/OplusAsyncScrollCaptureHelper;->getScrollable()Lcom/oplus/screenshot/IOplusScrollable;

    move-result-object v0

    .line 43
    .local v0, "scrollable":Lcom/oplus/screenshot/IOplusScrollable;, "Lcom/oplus/screenshot/IOplusScrollable<TV;>;"
    invoke-interface {v0, p1}, Lcom/oplus/screenshot/IOplusScrollable;->getVerticalScrollOffset(Landroid/view/View;)I

    move-result v1

    .line 44
    .local v1, "scrollY":I
    const/4 v2, 0x0

    const-string v3, "OplusAsyncScrollCaptureHelper"

    if-nez v1, :cond_0

    .line 45
    const-string v4, "vertical scroll offset is 0."

    invoke-static {v3, v4}, Lcom/oplus/util/OplusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return v2

    .line 49
    :cond_0
    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    .line 51
    const-string v4, "vertical scroll offset is 1."

    invoke-static {v3, v4}, Lcom/oplus/util/OplusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const/4 v3, -0x1

    invoke-interface {v0, p1, v2, v3}, Lcom/oplus/screenshot/IOplusScrollable;->scrollBy(Landroid/view/View;II)V

    .line 55
    :cond_1
    invoke-super {p0, p1}, Lcom/oplus/screenshot/OplusScrollCaptureHelper;->onAcceptSession(Landroid/view/View;)Z

    move-result v2

    return v2
.end method
