.class Lcom/oplus/resolver/OplusResolverItemAnimator$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OplusResolverItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/resolver/OplusResolverItemAnimator;->animateMoveImpl(Lcom/android/internal/widget/RecyclerView$ViewHolder;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/oplus/resolver/OplusResolverItemAnimator;

.field final synthetic blacklist val$animation:Landroid/view/ViewPropertyAnimator;

.field final synthetic blacklist val$deltaX:I

.field final synthetic blacklist val$deltaY:I

.field final synthetic blacklist val$holder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

.field final synthetic blacklist val$view:Landroid/view/View;


# direct methods
.method constructor blacklist <init>(Lcom/oplus/resolver/OplusResolverItemAnimator;Lcom/android/internal/widget/RecyclerView$ViewHolder;ILandroid/view/View;ILandroid/view/ViewPropertyAnimator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oplus/resolver/OplusResolverItemAnimator;

    .line 319
    iput-object p1, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$6;->this$0:Lcom/oplus/resolver/OplusResolverItemAnimator;

    iput-object p2, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$6;->val$holder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iput p3, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$6;->val$deltaX:I

    iput-object p4, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$6;->val$view:Landroid/view/View;

    iput p5, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$6;->val$deltaY:I

    iput-object p6, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$6;->val$animation:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 327
    iget v0, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$6;->val$deltaX:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$6;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 330
    :cond_0
    iget v0, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$6;->val$deltaY:I

    if-eqz v0, :cond_1

    .line 331
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$6;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 333
    :cond_1
    return-void
.end method

.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 337
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$6;->val$animation:Landroid/view/ViewPropertyAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 338
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$6;->this$0:Lcom/oplus/resolver/OplusResolverItemAnimator;

    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$6;->val$holder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lcom/oplus/resolver/OplusResolverItemAnimator;->dispatchMoveFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 339
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$6;->this$0:Lcom/oplus/resolver/OplusResolverItemAnimator;

    iget-object v0, v0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$6;->val$holder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 340
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$6;->this$0:Lcom/oplus/resolver/OplusResolverItemAnimator;

    invoke-virtual {v0}, Lcom/oplus/resolver/OplusResolverItemAnimator;->dispatchFinishedWhenDone()V

    .line 341
    return-void
.end method

.method public whitelist onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 322
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$6;->this$0:Lcom/oplus/resolver/OplusResolverItemAnimator;

    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$6;->val$holder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lcom/oplus/resolver/OplusResolverItemAnimator;->dispatchMoveStarting(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 323
    return-void
.end method
