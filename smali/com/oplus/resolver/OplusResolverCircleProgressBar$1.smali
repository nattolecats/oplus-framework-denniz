.class Lcom/oplus/resolver/OplusResolverCircleProgressBar$1;
.super Ljava/lang/Object;
.source "OplusResolverCircleProgressBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/resolver/OplusResolverCircleProgressBar;->startAnimator(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/oplus/resolver/OplusResolverCircleProgressBar;

.field final synthetic blacklist val$currentProgress:I


# direct methods
.method constructor blacklist <init>(Lcom/oplus/resolver/OplusResolverCircleProgressBar;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/oplus/resolver/OplusResolverCircleProgressBar;

    .line 299
    iput-object p1, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar$1;->this$0:Lcom/oplus/resolver/OplusResolverCircleProgressBar;

    iput p2, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar$1;->val$currentProgress:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 302
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 303
    .local v0, "value":I
    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar$1;->this$0:Lcom/oplus/resolver/OplusResolverCircleProgressBar;

    iget v2, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar$1;->val$currentProgress:I

    add-int/2addr v2, v0

    invoke-static {v1, v2}, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->-$$Nest$fputmProgress(Lcom/oplus/resolver/OplusResolverCircleProgressBar;I)V

    .line 304
    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar$1;->this$0:Lcom/oplus/resolver/OplusResolverCircleProgressBar;

    invoke-static {v1}, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->-$$Nest$mverifyProgress(Lcom/oplus/resolver/OplusResolverCircleProgressBar;)V

    .line 305
    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar$1;->this$0:Lcom/oplus/resolver/OplusResolverCircleProgressBar;

    invoke-static {v1}, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->-$$Nest$fgetmProgress(Lcom/oplus/resolver/OplusResolverCircleProgressBar;)I

    move-result v1

    iget-object v2, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar$1;->this$0:Lcom/oplus/resolver/OplusResolverCircleProgressBar;

    invoke-static {v2}, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->-$$Nest$fgetmMax(Lcom/oplus/resolver/OplusResolverCircleProgressBar;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 306
    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar$1;->this$0:Lcom/oplus/resolver/OplusResolverCircleProgressBar;

    invoke-static {v1}, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->-$$Nest$mdisappearSelf(Lcom/oplus/resolver/OplusResolverCircleProgressBar;)V

    .line 308
    :cond_0
    return-void
.end method
