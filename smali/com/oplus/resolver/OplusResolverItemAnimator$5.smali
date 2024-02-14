.class Lcom/oplus/resolver/OplusResolverItemAnimator$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OplusResolverItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/resolver/OplusResolverItemAnimator;->animateAddImpl(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
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

    .line 257
    iput-object p1, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$5;->this$0:Lcom/oplus/resolver/OplusResolverItemAnimator;

    iput-object p2, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$5;->val$holder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iput-object p3, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$5;->val$view:Landroid/view/View;

    iput-object p4, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$5;->val$animation:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 265
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$5;->val$view:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 266
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$5;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 267
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$5;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 268
    return-void
.end method

.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 272
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$5;->val$animation:Landroid/view/ViewPropertyAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 273
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$5;->this$0:Lcom/oplus/resolver/OplusResolverItemAnimator;

    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$5;->val$holder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lcom/oplus/resolver/OplusResolverItemAnimator;->dispatchAddFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 274
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$5;->this$0:Lcom/oplus/resolver/OplusResolverItemAnimator;

    iget-object v0, v0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$5;->val$holder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 275
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$5;->this$0:Lcom/oplus/resolver/OplusResolverItemAnimator;

    invoke-virtual {v0}, Lcom/oplus/resolver/OplusResolverItemAnimator;->dispatchFinishedWhenDone()V

    .line 276
    return-void
.end method

.method public whitelist onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 260
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$5;->this$0:Lcom/oplus/resolver/OplusResolverItemAnimator;

    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$5;->val$holder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lcom/oplus/resolver/OplusResolverItemAnimator;->dispatchAddStarting(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 261
    return-void
.end method
