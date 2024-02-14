.class Lcom/oplus/resolver/OplusResolverOshare$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OplusResolverOshare.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/resolver/OplusResolverOshare;->initOsharePanelViewAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/oplus/resolver/OplusResolverOshare;


# direct methods
.method constructor blacklist <init>(Lcom/oplus/resolver/OplusResolverOshare;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oplus/resolver/OplusResolverOshare;

    .line 445
    iput-object p1, p0, Lcom/oplus/resolver/OplusResolverOshare$8;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 448
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 449
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$8;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    const-string v1, "panel view disappear end"

    invoke-static {v0, v1}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$mlogIfNeeded(Lcom/oplus/resolver/OplusResolverOshare;Ljava/lang/String;)V

    .line 450
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$8;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-static {v0}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$minitOsharingView(Lcom/oplus/resolver/OplusResolverOshare;)V

    .line 451
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$8;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-static {v0}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$fgetmOshareDividerLine(Lcom/oplus/resolver/OplusResolverOshare;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 452
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$8;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-static {v0}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$fgetmOshareDividerLine(Lcom/oplus/resolver/OplusResolverOshare;)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 453
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$8;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-static {v0}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$fgetmOshareDividerLine(Lcom/oplus/resolver/OplusResolverOshare;)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    const-string v3, "alpha"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 454
    .local v0, "oshareDividerLineAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x10b

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 455
    invoke-static {}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$sfgetDEFAUT_PATHINTERPOLATOR()Landroid/view/animation/PathInterpolator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 456
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 457
    iget-object v2, p0, Lcom/oplus/resolver/OplusResolverOshare$8;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-static {v2}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$fgetmOsharePanelView(Lcom/oplus/resolver/OplusResolverOshare;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 458
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public whitelist onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 462
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 463
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$8;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-static {v0}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$fgetmOsharePanelView(Lcom/oplus/resolver/OplusResolverOshare;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 464
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$8;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-static {v0}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$fgetmScanLoadingIcon(Lcom/oplus/resolver/OplusResolverOshare;)Lcom/oplus/resolver/OplusResolverScanLoadingIcon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/resolver/OplusResolverScanLoadingIcon;->stopAnimator()V

    .line 465
    return-void
.end method
