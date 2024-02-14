.class Lcom/oplus/resolver/OplusResolverItemAnimator$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OplusResolverItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/resolver/OplusResolverItemAnimator;->animateRemoveImpl(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/oplus/resolver/OplusResolverItemAnimator;

.field final synthetic blacklist val$animation:Landroid/view/ViewPropertyAnimator;

.field final synthetic blacklist val$holder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

.field final synthetic blacklist val$view:Landroid/view/View;


# direct methods
.method constructor blacklist <init>(Lcom/oplus/resolver/OplusResolverItemAnimator;Lcom/android/internal/widget/RecyclerView$ViewHolder;Landroid/view/View;Landroid/view/ViewPropertyAnimator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oplus/resolver/OplusResolverItemAnimator;

    .line 215
    iput-object p1, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$4;->this$0:Lcom/oplus/resolver/OplusResolverItemAnimator;

    iput-object p2, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$4;->val$holder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iput-object p3, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$4;->val$view:Landroid/view/View;

    iput-object p4, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$4;->val$animation:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 223
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 224
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$4;->val$view:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 225
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$4;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 226
    return-void
.end method

.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 230
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$4;->val$animation:Landroid/view/ViewPropertyAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 231
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$4;->val$view:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 232
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$4;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 233
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$4;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 234
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$4;->this$0:Lcom/oplus/resolver/OplusResolverItemAnimator;

    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$4;->val$holder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lcom/oplus/resolver/OplusResolverItemAnimator;->dispatchRemoveFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 235
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$4;->this$0:Lcom/oplus/resolver/OplusResolverItemAnimator;

    iget-object v0, v0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$4;->val$holder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 236
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$4;->this$0:Lcom/oplus/resolver/OplusResolverItemAnimator;

    invoke-virtual {v0}, Lcom/oplus/resolver/OplusResolverItemAnimator;->dispatchFinishedWhenDone()V

    .line 237
    return-void
.end method

.method public whitelist onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 218
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$4;->this$0:Lcom/oplus/resolver/OplusResolverItemAnimator;

    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$4;->val$holder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lcom/oplus/resolver/OplusResolverItemAnimator;->dispatchRemoveStarting(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 219
    return-void
.end method
