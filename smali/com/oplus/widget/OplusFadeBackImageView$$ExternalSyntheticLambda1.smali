.class public final synthetic Lcom/oplus/widget/OplusFadeBackImageView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic blacklist f$0:Lcom/oplus/widget/OplusFadeBackImageView;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/oplus/widget/OplusFadeBackImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/widget/OplusFadeBackImageView$$ExternalSyntheticLambda1;->f$0:Lcom/oplus/widget/OplusFadeBackImageView;

    return-void
.end method


# virtual methods
.method public final whitelist onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/oplus/widget/OplusFadeBackImageView$$ExternalSyntheticLambda1;->f$0:Lcom/oplus/widget/OplusFadeBackImageView;

    invoke-virtual {v0, p1}, Lcom/oplus/widget/OplusFadeBackImageView;->lambda$performTouchStartAnim$0$com-oplus-widget-OplusFadeBackImageView(Landroid/animation/ValueAnimator;)V

    return-void
.end method
