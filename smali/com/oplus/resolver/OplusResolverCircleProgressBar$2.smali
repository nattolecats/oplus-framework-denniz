.class Lcom/oplus/resolver/OplusResolverCircleProgressBar$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OplusResolverCircleProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/resolver/OplusResolverCircleProgressBar;->disappearSelf()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/oplus/resolver/OplusResolverCircleProgressBar;


# direct methods
.method constructor blacklist <init>(Lcom/oplus/resolver/OplusResolverCircleProgressBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oplus/resolver/OplusResolverCircleProgressBar;

    .line 318
    iput-object p1, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar$2;->this$0:Lcom/oplus/resolver/OplusResolverCircleProgressBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 321
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 322
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar$2;->this$0:Lcom/oplus/resolver/OplusResolverCircleProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->setVisibility(I)V

    .line 323
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar$2;->this$0:Lcom/oplus/resolver/OplusResolverCircleProgressBar;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->setAlpha(F)V

    .line 324
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar$2;->this$0:Lcom/oplus/resolver/OplusResolverCircleProgressBar;

    invoke-virtual {v0}, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->release()V

    .line 325
    return-void
.end method
