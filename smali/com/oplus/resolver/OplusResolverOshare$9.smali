.class Lcom/oplus/resolver/OplusResolverOshare$9;
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

    .line 474
    iput-object p1, p0, Lcom/oplus/resolver/OplusResolverOshare$9;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 485
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 486
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$9;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-static {v0}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$fgetmOshareClosedTitle(Lcom/oplus/resolver/OplusResolverOshare;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 487
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$9;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-static {v0}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$fgetmOshareOpenedTextLayout(Lcom/oplus/resolver/OplusResolverOshare;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 488
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$9;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-static {v0}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$fgetmOshareClosedTitle(Lcom/oplus/resolver/OplusResolverOshare;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 489
    return-void
.end method

.method public whitelist onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 477
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 478
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$9;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-static {v0}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$fgetmOshareLayout(Lcom/oplus/resolver/OplusResolverOshare;)Lcom/oplus/resolver/OplusResolverOshareLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oplus/resolver/OplusResolverOshareLayout;->setShareOpenStatus(I)V

    .line 479
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$9;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-static {v0}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$fgetmOshareOpenedTextLayout(Lcom/oplus/resolver/OplusResolverOshare;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 480
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$9;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-static {v0}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$fgetmScanLoadingIcon(Lcom/oplus/resolver/OplusResolverOshare;)Lcom/oplus/resolver/OplusResolverScanLoadingIcon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/resolver/OplusResolverScanLoadingIcon;->startAnimator()V

    .line 481
    return-void
.end method
