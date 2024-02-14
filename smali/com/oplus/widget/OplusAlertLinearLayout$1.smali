.class Lcom/oplus/widget/OplusAlertLinearLayout$1;
.super Landroid/view/ViewOutlineProvider;
.source "OplusAlertLinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/widget/OplusAlertLinearLayout;->clipBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/oplus/widget/OplusAlertLinearLayout;


# direct methods
.method constructor blacklist <init>(Lcom/oplus/widget/OplusAlertLinearLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oplus/widget/OplusAlertLinearLayout;

    .line 104
    iput-object p1, p0, Lcom/oplus/widget/OplusAlertLinearLayout$1;->this$0:Lcom/oplus/widget/OplusAlertLinearLayout;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outline"    # Landroid/graphics/Outline;

    .line 107
    iget-object v0, p0, Lcom/oplus/widget/OplusAlertLinearLayout$1;->this$0:Lcom/oplus/widget/OplusAlertLinearLayout;

    invoke-static {v0}, Lcom/oplus/widget/OplusAlertLinearLayout;->-$$Nest$fgetmFixedLeft(Lcom/oplus/widget/OplusAlertLinearLayout;)I

    move-result v2

    iget-object v0, p0, Lcom/oplus/widget/OplusAlertLinearLayout$1;->this$0:Lcom/oplus/widget/OplusAlertLinearLayout;

    invoke-static {v0}, Lcom/oplus/widget/OplusAlertLinearLayout;->-$$Nest$fgetmFixedTop(Lcom/oplus/widget/OplusAlertLinearLayout;)I

    move-result v3

    iget-object v0, p0, Lcom/oplus/widget/OplusAlertLinearLayout$1;->this$0:Lcom/oplus/widget/OplusAlertLinearLayout;

    invoke-static {v0}, Lcom/oplus/widget/OplusAlertLinearLayout;->-$$Nest$fgetmFixedRight(Lcom/oplus/widget/OplusAlertLinearLayout;)I

    move-result v4

    iget-object v0, p0, Lcom/oplus/widget/OplusAlertLinearLayout$1;->this$0:Lcom/oplus/widget/OplusAlertLinearLayout;

    invoke-static {v0}, Lcom/oplus/widget/OplusAlertLinearLayout;->-$$Nest$fgetmFixedBottom(Lcom/oplus/widget/OplusAlertLinearLayout;)I

    move-result v5

    iget-object v0, p0, Lcom/oplus/widget/OplusAlertLinearLayout$1;->this$0:Lcom/oplus/widget/OplusAlertLinearLayout;

    invoke-static {v0}, Lcom/oplus/widget/OplusAlertLinearLayout;->-$$Nest$fgetmBackgroundRadius(Lcom/oplus/widget/OplusAlertLinearLayout;)I

    move-result v0

    int-to-float v6, v0

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 108
    return-void
.end method
