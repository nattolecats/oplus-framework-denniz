.class Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OplusResolverOshare.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->showUserWaitingStatusAnimation(Lcom/oplus/resolver/OplusResolverOshare$MyViewHolder;Lcom/oplus/oshare/OplusOshareState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;

.field final synthetic blacklist val$holder:Lcom/oplus/resolver/OplusResolverOshare$MyViewHolder;


# direct methods
.method constructor blacklist <init>(Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;Lcom/oplus/resolver/OplusResolverOshare$MyViewHolder;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;

    .line 917
    iput-object p1, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter$2;->this$1:Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;

    iput-object p2, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter$2;->val$holder:Lcom/oplus/resolver/OplusResolverOshare$MyViewHolder;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 920
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter$2;->val$holder:Lcom/oplus/resolver/OplusResolverOshare$MyViewHolder;

    iget-boolean v0, v0, Lcom/oplus/resolver/OplusResolverOshare$MyViewHolder;->canRestartAnimator:Z

    if-eqz v0, :cond_0

    .line 921
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter$2;->this$1:Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;

    iget-object v0, v0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    const-string v1, "restart status animator"

    invoke-static {v0, v1}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$mlogIfNeeded(Lcom/oplus/resolver/OplusResolverOshare;Ljava/lang/String;)V

    .line 922
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter$2;->val$holder:Lcom/oplus/resolver/OplusResolverOshare$MyViewHolder;

    iget-object v0, v0, Lcom/oplus/resolver/OplusResolverOshare$MyViewHolder;->userWaitingStatusAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 924
    :cond_0
    return-void
.end method
