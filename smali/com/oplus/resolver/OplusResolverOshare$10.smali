.class Lcom/oplus/resolver/OplusResolverOshare$10;
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

    .line 495
    iput-object p1, p0, Lcom/oplus/resolver/OplusResolverOshare$10;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 498
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 499
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$10;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    const-string v1, "panel view appear end"

    invoke-static {v0, v1}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$mlogIfNeeded(Lcom/oplus/resolver/OplusResolverOshare;Ljava/lang/String;)V

    .line 500
    return-void
.end method

.method public whitelist onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 504
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 505
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$10;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-static {v0}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$fgetmOshareLayout(Lcom/oplus/resolver/OplusResolverOshare;)Lcom/oplus/resolver/OplusResolverOshareLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oplus/resolver/OplusResolverOshareLayout;->setShareOpenStatus(I)V

    .line 506
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$10;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-static {v0}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$fgetmOsharePanelView(Lcom/oplus/resolver/OplusResolverOshare;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 507
    return-void
.end method
