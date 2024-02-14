.class public Lcom/oplus/screenshot/OplusViewScrollable;
.super Ljava/lang/Object;
.source "OplusViewScrollable.java"

# interfaces
.implements Lcom/oplus/screenshot/IOplusScrollable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oplus/screenshot/IOplusScrollable<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getHorizontalScrollExtent(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getViewWrapper()Landroid/view/IViewWrapper;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IViewWrapper;->computeHorizontalScrollExtent()I

    move-result v0

    return v0
.end method

.method public blacklist getHorizontalScrollOffset(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getViewWrapper()Landroid/view/IViewWrapper;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IViewWrapper;->computeHorizontalScrollOffset()I

    move-result v0

    return v0
.end method

.method public blacklist getHorizontalScrollRange(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getViewWrapper()Landroid/view/IViewWrapper;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IViewWrapper;->computeHorizontalScrollRange()I

    move-result v0

    return v0
.end method

.method public blacklist getVerticalScrollExtent(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getViewWrapper()Landroid/view/IViewWrapper;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IViewWrapper;->computeVerticalScrollExtent()I

    move-result v0

    return v0
.end method

.method public blacklist getVerticalScrollOffset(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getViewWrapper()Landroid/view/IViewWrapper;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IViewWrapper;->computeVerticalScrollOffset()I

    move-result v0

    return v0
.end method

.method public blacklist getVerticalScrollRange(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getViewWrapper()Landroid/view/IViewWrapper;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IViewWrapper;->computeVerticalScrollRange()I

    move-result v0

    return v0
.end method

.method public blacklist scrollBy(Landroid/view/View;II)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .line 31
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->scrollBy(II)V

    .line 32
    return-void
.end method

.method public blacklist scrollTo(Landroid/view/View;II)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .line 36
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->scrollTo(II)V

    .line 37
    return-void
.end method
