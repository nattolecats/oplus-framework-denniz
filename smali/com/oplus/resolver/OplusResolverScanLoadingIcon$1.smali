.class Lcom/oplus/resolver/OplusResolverScanLoadingIcon$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OplusResolverScanLoadingIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/resolver/OplusResolverScanLoadingIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/oplus/resolver/OplusResolverScanLoadingIcon;


# direct methods
.method constructor blacklist <init>(Lcom/oplus/resolver/OplusResolverScanLoadingIcon;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oplus/resolver/OplusResolverScanLoadingIcon;

    .line 81
    iput-object p1, p0, Lcom/oplus/resolver/OplusResolverScanLoadingIcon$1;->this$0:Lcom/oplus/resolver/OplusResolverScanLoadingIcon;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 84
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 85
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverScanLoadingIcon$1;->this$0:Lcom/oplus/resolver/OplusResolverScanLoadingIcon;

    invoke-static {v0}, Lcom/oplus/resolver/OplusResolverScanLoadingIcon;->-$$Nest$fgetmCanStartAnimator(Lcom/oplus/resolver/OplusResolverScanLoadingIcon;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    const-string v0, "OplusResolverScanLoadingIcon"

    const-string v1, "scan icon restart animatorSet"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverScanLoadingIcon$1;->this$0:Lcom/oplus/resolver/OplusResolverScanLoadingIcon;

    invoke-static {v0}, Lcom/oplus/resolver/OplusResolverScanLoadingIcon;->-$$Nest$fgetmAnimatorSet(Lcom/oplus/resolver/OplusResolverScanLoadingIcon;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverScanLoadingIcon$1;->this$0:Lcom/oplus/resolver/OplusResolverScanLoadingIcon;

    invoke-static {v0}, Lcom/oplus/resolver/OplusResolverScanLoadingIcon;->-$$Nest$fgetmContext(Lcom/oplus/resolver/OplusResolverScanLoadingIcon;)Landroid/content/Context;

    move-result-object v1

    const v2, 0xc080044

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/resolver/OplusResolverScanLoadingIcon;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 93
    :goto_0
    return-void
.end method
