.class Lcom/oplus/resolver/OplusResolverOshare$7$1;
.super Ljava/lang/Object;
.source "OplusResolverOshare.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/resolver/OplusResolverOshare$7;->onAnimationStart(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/oplus/resolver/OplusResolverOshare$7;


# direct methods
.method constructor blacklist <init>(Lcom/oplus/resolver/OplusResolverOshare$7;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oplus/resolver/OplusResolverOshare$7;

    .line 396
    iput-object p1, p0, Lcom/oplus/resolver/OplusResolverOshare$7$1;->this$1:Lcom/oplus/resolver/OplusResolverOshare$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 399
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$7$1;->this$1:Lcom/oplus/resolver/OplusResolverOshare$7;

    iget-object v0, v0, Lcom/oplus/resolver/OplusResolverOshare$7;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$fputmPressValue(Lcom/oplus/resolver/OplusResolverOshare;F)V

    .line 400
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$7$1;->this$1:Lcom/oplus/resolver/OplusResolverOshare$7;

    iget-object v0, v0, Lcom/oplus/resolver/OplusResolverOshare$7;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-static {v0}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$fgetmIsNeedToDelayCancelScaleAnim(Lcom/oplus/resolver/OplusResolverOshare;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v0

    long-to-float v0, v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v1

    long-to-float v1, v1

    const v2, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$7$1;->this$1:Lcom/oplus/resolver/OplusResolverOshare$7;

    iget-object v0, v0, Lcom/oplus/resolver/OplusResolverOshare$7;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$fputmIsNeedToDelayCancelScaleAnim(Lcom/oplus/resolver/OplusResolverOshare;Z)V

    .line 402
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$7$1;->this$1:Lcom/oplus/resolver/OplusResolverOshare$7;

    iget-object v0, v0, Lcom/oplus/resolver/OplusResolverOshare$7;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-static {v0}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$manimateNormal(Lcom/oplus/resolver/OplusResolverOshare;)V

    .line 404
    :cond_0
    return-void
.end method
