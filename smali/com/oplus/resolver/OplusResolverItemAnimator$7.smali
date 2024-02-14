.class Lcom/oplus/resolver/OplusResolverItemAnimator$7;
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

.field final synthetic blacklist val$oldViewAnim:Landroid/view/ViewPropertyAnimator;

.field final synthetic blacklist val$view:Landroid/view/View;


# direct methods
.method constructor blacklist <init>(Lcom/oplus/resolver/OplusResolverItemAnimator;Lcom/oplus/resolver/OplusResolverItemAnimator$ChangeInfo;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oplus/resolver/OplusResolverItemAnimator;

    .line 385
    iput-object p1, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$7;->this$0:Lcom/oplus/resolver/OplusResolverItemAnimator;

    iput-object p2, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$7;->val$changeInfo:Lcom/oplus/resolver/OplusResolverItemAnimator$ChangeInfo;

    iput-object p3, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$7;->val$oldViewAnim:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$7;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 393
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$7;->val$oldViewAnim:Landroid/view/ViewPropertyAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 394
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$7;->val$view:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 395
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$7;->val$view:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 396
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$7;->val$view:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 397
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$7;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 398
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$7;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 399
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$7;->this$0:Lcom/oplus/resolver/OplusResolverItemAnimator;

    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$7;->val$changeInfo:Lcom/oplus/resolver/OplusResolverItemAnimator$ChangeInfo;

    iget-object v1, v1, Lcom/oplus/resolver/OplusResolverItemAnimator$ChangeInfo;->oldHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/oplus/resolver/OplusResolverItemAnimator;->dispatchChangeFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;Z)V

    .line 400
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$7;->this$0:Lcom/oplus/resolver/OplusResolverItemAnimator;

    iget-object v0, v0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$7;->val$changeInfo:Lcom/oplus/resolver/OplusResolverItemAnimator$ChangeInfo;

    iget-object v1, v1, Lcom/oplus/resolver/OplusResolverItemAnimator$ChangeInfo;->oldHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 401
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$7;->this$0:Lcom/oplus/resolver/OplusResolverItemAnimator;

    invoke-virtual {v0}, Lcom/oplus/resolver/OplusResolverItemAnimator;->dispatchFinishedWhenDone()V

    .line 402
    return-void
.end method

.method public whitelist onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 388
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$7;->this$0:Lcom/oplus/resolver/OplusResolverItemAnimator;

    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$7;->val$changeInfo:Lcom/oplus/resolver/OplusResolverItemAnimator$ChangeInfo;

    iget-object v1, v1, Lcom/oplus/resolver/OplusResolverItemAnimator$ChangeInfo;->oldHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/oplus/resolver/OplusResolverItemAnimator;->dispatchChangeStarting(Lcom/android/internal/widget/RecyclerView$ViewHolder;Z)V

    .line 389
    return-void
.end method
