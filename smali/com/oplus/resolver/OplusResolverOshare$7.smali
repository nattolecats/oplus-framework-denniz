.class Lcom/oplus/resolver/OplusResolverOshare$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OplusResolverOshare.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/resolver/OplusResolverOshare;->animatePress()V
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

    .line 392
    iput-object p1, p0, Lcom/oplus/resolver/OplusResolverOshare$7;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 395
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$7;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-static {}, Lcom/oplus/resolver/COUIPressFeedbackUtil;->generatePressAnimationRecord()Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$fputmPressAnimationRecorder(Lcom/oplus/resolver/OplusResolverOshare;Landroid/animation/ValueAnimator;)V

    .line 396
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$7;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-static {v0}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$fgetmPressAnimationRecorder(Lcom/oplus/resolver/OplusResolverOshare;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/oplus/resolver/OplusResolverOshare$7$1;

    invoke-direct {v1, p0}, Lcom/oplus/resolver/OplusResolverOshare$7$1;-><init>(Lcom/oplus/resolver/OplusResolverOshare$7;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 406
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$7;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-static {v0}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$fgetmPressAnimationRecorder(Lcom/oplus/resolver/OplusResolverOshare;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 407
    return-void
.end method
