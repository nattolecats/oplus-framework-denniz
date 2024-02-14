.class Lcom/oplus/widget/OplusMaxLinearLayout$1;
.super Landroid/view/ViewOutlineProvider;
.source "OplusMaxLinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/widget/OplusMaxLinearLayout;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/oplus/widget/OplusMaxLinearLayout;

.field final synthetic blacklist val$insetPadding:I

.field final synthetic blacklist val$radius:I


# direct methods
.method constructor blacklist <init>(Lcom/oplus/widget/OplusMaxLinearLayout;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/oplus/widget/OplusMaxLinearLayout;

    .line 122
    iput-object p1, p0, Lcom/oplus/widget/OplusMaxLinearLayout$1;->this$0:Lcom/oplus/widget/OplusMaxLinearLayout;

    iput p2, p0, Lcom/oplus/widget/OplusMaxLinearLayout$1;->val$insetPadding:I

    iput p3, p0, Lcom/oplus/widget/OplusMaxLinearLayout$1;->val$radius:I

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outline"    # Landroid/graphics/Outline;

    .line 125
    iget v2, p0, Lcom/oplus/widget/OplusMaxLinearLayout$1;->val$insetPadding:I

    iget-object v0, p0, Lcom/oplus/widget/OplusMaxLinearLayout$1;->this$0:Lcom/oplus/widget/OplusMaxLinearLayout;

    .line 127
    invoke-virtual {v0}, Lcom/oplus/widget/OplusMaxLinearLayout;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/oplus/widget/OplusMaxLinearLayout$1;->val$insetPadding:I

    sub-int v3, v0, v1

    iget-object v0, p0, Lcom/oplus/widget/OplusMaxLinearLayout$1;->this$0:Lcom/oplus/widget/OplusMaxLinearLayout;

    invoke-virtual {v0}, Lcom/oplus/widget/OplusMaxLinearLayout;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lcom/oplus/widget/OplusMaxLinearLayout$1;->val$insetPadding:I

    sub-int v4, v0, v1

    iget v0, p0, Lcom/oplus/widget/OplusMaxLinearLayout$1;->val$radius:I

    int-to-float v5, v0

    .line 125
    move-object v0, p2

    move v1, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 129
    return-void
.end method
