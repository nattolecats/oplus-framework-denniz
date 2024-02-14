.class Lcom/oplus/resolver/OplusResolverOshareLayout$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OplusResolverOshareLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/resolver/OplusResolverOshareLayout;->startLayoutHeightAnimator(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/oplus/resolver/OplusResolverOshareLayout;


# direct methods
.method constructor blacklist <init>(Lcom/oplus/resolver/OplusResolverOshareLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oplus/resolver/OplusResolverOshareLayout;

    .line 129
    iput-object p1, p0, Lcom/oplus/resolver/OplusResolverOshareLayout$2;->this$0:Lcom/oplus/resolver/OplusResolverOshareLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 132
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 133
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshareLayout$2;->this$0:Lcom/oplus/resolver/OplusResolverOshareLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oplus/resolver/OplusResolverOshareLayout;->-$$Nest$fputmAnimatorCurrentHeight(Lcom/oplus/resolver/OplusResolverOshareLayout;I)V

    .line 134
    return-void
.end method
