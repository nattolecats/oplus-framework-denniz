.class public abstract Lcom/oplus/screenshot/OplusScrollCaptureViewHelper;
.super Ljava/lang/Object;
.source "OplusScrollCaptureViewHelper.java"

# interfaces
.implements Lcom/android/internal/view/ScrollCaptureViewHelper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/internal/view/ScrollCaptureViewHelper<",
        "TV;>;"
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 32
    .local p0, "this":Lcom/oplus/screenshot/OplusScrollCaptureViewHelper;, "Lcom/oplus/screenshot/OplusScrollCaptureViewHelper<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onComputeScrollBounds(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Landroid/graphics/Rect;"
        }
    .end annotation

    .line 36
    .local p0, "this":Lcom/oplus/screenshot/OplusScrollCaptureViewHelper;, "Lcom/oplus/screenshot/OplusScrollCaptureViewHelper<TV;>;"
    .local p1, "view":Landroid/view/View;, "TV;"
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 37
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 38
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    .line 37
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->inset(IIII)V

    .line 39
    return-object v0
.end method
