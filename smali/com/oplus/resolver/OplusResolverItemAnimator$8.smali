.class Lcom/oplus/resolver/OplusResolverItemAnimator$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OplusResolverItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/resolver/OplusResolverItemAnimator;->animateChangeImpl(Lcom/oplus/resolver/OplusResolverItemAnimator$ChangeInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/oplus/resolver/OplusResolverItemAnimator;

.field final synthetic blacklist val$changeInfo:Lcom/oplus/resolver/OplusResolverItemAnimator$ChangeInfo;

.field final synthetic blacklist val$newView:Landroid/view/View;

.field final synthetic blacklist val$newViewAnimation:Landroid/view/ViewPropertyAnimator;


# direct methods
.method constructor blacklist <init>(Lcom/oplus/resolver/OplusResolverItemAnimator;Lcom/oplus/resolver/OplusResolverItemAnimator$ChangeInfo;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oplus/resolver/OplusResolverItemAnimator;

    .line 409
    iput-object p1, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$8;->this$0:Lcom/oplus/resolver/OplusResolverItemAnimator;

    iput-object p2, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$8;->val$changeInfo:Lcom/oplus/resolver/OplusResolverItemAnimator$ChangeInfo;

    iput-object p3, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$8;->val$newViewAnimation:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$8;->val$newView:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 417
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$8;->val$newViewAnimation:Landroid/view/ViewPropertyAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 418
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$8;->val$newView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 419
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$8;->val$newView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 420
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$8;->val$newView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 421
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$8;->val$newView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 422
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$8;->val$newView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 423
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$8;->this$0:Lcom/oplus/resolver/OplusResolverItemAnimator;

    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$8;->val$changeInfo:Lcom/oplus/resolver/OplusResolverItemAnimator$ChangeInfo;

    iget-object v1, v1, Lcom/oplus/resolver/OplusResolverItemAnimator$ChangeInfo;->newHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/oplus/resolver/OplusResolverItemAnimator;->dispatchChangeFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;Z)V

    .line 424
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$8;->this$0:Lcom/oplus/resolver/OplusResolverItemAnimator;

    iget-object v0, v0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$8;->val$changeInfo:Lcom/oplus/resolver/OplusResolverItemAnimator$ChangeInfo;

    iget-object v1, v1, Lcom/oplus/resolver/OplusResolverItemAnimator$ChangeInfo;->newHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 425
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$8;->this$0:Lcom/oplus/resolver/OplusResolverItemAnimator;

    invoke-virtual {v0}, Lcom/oplus/resolver/OplusResolverItemAnimator;->dispatchFinishedWhenDone()V

    .line 426
    return-void
.end method

.method public whitelist onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 412
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$8;->this$0:Lcom/oplus/resolver/OplusResolverItemAnimator;

    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$8;->val$changeInfo:Lcom/oplus/resolver/OplusResolverItemAnimator$ChangeInfo;

    iget-object v1, v1, Lcom/oplus/resolver/OplusResolverItemAnimator$ChangeInfo;->newHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/oplus/resolver/OplusResolverItemAnimator;->dispatchChangeStarting(Lcom/android/internal/widget/RecyclerView$ViewHolder;Z)V

    .line 413
    return-void
.end method
