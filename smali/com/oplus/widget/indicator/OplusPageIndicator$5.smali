.class Lcom/oplus/widget/indicator/OplusPageIndicator$5;
.super Ljava/lang/Object;
.source "OplusPageIndicator.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/widget/indicator/OplusPageIndicator;->addIndicatorDots(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/oplus/widget/indicator/OplusPageIndicator;

.field final synthetic blacklist val$index:I


# direct methods
.method constructor blacklist <init>(Lcom/oplus/widget/indicator/OplusPageIndicator;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/oplus/widget/indicator/OplusPageIndicator;

    .line 291
    iput-object p1, p0, Lcom/oplus/widget/indicator/OplusPageIndicator$5;->this$0:Lcom/oplus/widget/indicator/OplusPageIndicator;

    iput p2, p0, Lcom/oplus/widget/indicator/OplusPageIndicator$5;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 294
    iget-object v0, p0, Lcom/oplus/widget/indicator/OplusPageIndicator$5;->this$0:Lcom/oplus/widget/indicator/OplusPageIndicator;

    invoke-static {v0}, Lcom/oplus/widget/indicator/OplusPageIndicator;->-$$Nest$fgetmOnDotClickListener(Lcom/oplus/widget/indicator/OplusPageIndicator;)Lcom/oplus/widget/indicator/OplusPageIndicator$OnIndicatorDotClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/oplus/widget/indicator/OplusPageIndicator$5;->this$0:Lcom/oplus/widget/indicator/OplusPageIndicator;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oplus/widget/indicator/OplusPageIndicator;->-$$Nest$fputmNeedSettlePositionTemp(Lcom/oplus/widget/indicator/OplusPageIndicator;Z)V

    .line 296
    iget-object v0, p0, Lcom/oplus/widget/indicator/OplusPageIndicator$5;->this$0:Lcom/oplus/widget/indicator/OplusPageIndicator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oplus/widget/indicator/OplusPageIndicator;->-$$Nest$fputmIsAnimated(Lcom/oplus/widget/indicator/OplusPageIndicator;Z)V

    .line 297
    iget-object v0, p0, Lcom/oplus/widget/indicator/OplusPageIndicator$5;->this$0:Lcom/oplus/widget/indicator/OplusPageIndicator;

    invoke-virtual {v0}, Lcom/oplus/widget/indicator/OplusPageIndicator;->stopTraceAnimator()V

    .line 298
    iget-object v0, p0, Lcom/oplus/widget/indicator/OplusPageIndicator$5;->this$0:Lcom/oplus/widget/indicator/OplusPageIndicator;

    invoke-static {v0}, Lcom/oplus/widget/indicator/OplusPageIndicator;->-$$Nest$fgetmOnDotClickListener(Lcom/oplus/widget/indicator/OplusPageIndicator;)Lcom/oplus/widget/indicator/OplusPageIndicator$OnIndicatorDotClickListener;

    move-result-object v0

    iget v1, p0, Lcom/oplus/widget/indicator/OplusPageIndicator$5;->val$index:I

    invoke-interface {v0, v1}, Lcom/oplus/widget/indicator/OplusPageIndicator$OnIndicatorDotClickListener;->onClick(I)V

    .line 300
    :cond_0
    return-void
.end method
