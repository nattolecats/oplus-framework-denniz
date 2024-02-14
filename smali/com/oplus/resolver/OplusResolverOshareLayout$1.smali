.class Lcom/oplus/resolver/OplusResolverOshareLayout$1;
.super Ljava/lang/Object;
.source "OplusResolverOshareLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

    .line 120
    iput-object p1, p0, Lcom/oplus/resolver/OplusResolverOshareLayout$1;->this$0:Lcom/oplus/resolver/OplusResolverOshareLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 123
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshareLayout$1;->this$0:Lcom/oplus/resolver/OplusResolverOshareLayout;

    invoke-virtual {v0}, Lcom/oplus/resolver/OplusResolverOshareLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 124
    .local v0, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 125
    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverOshareLayout$1;->this$0:Lcom/oplus/resolver/OplusResolverOshareLayout;

    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-static {v1, v2}, Lcom/oplus/resolver/OplusResolverOshareLayout;->-$$Nest$fputmAnimatorCurrentHeight(Lcom/oplus/resolver/OplusResolverOshareLayout;I)V

    .line 126
    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverOshareLayout$1;->this$0:Lcom/oplus/resolver/OplusResolverOshareLayout;

    invoke-virtual {v1, v0}, Lcom/oplus/resolver/OplusResolverOshareLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    return-void
.end method
