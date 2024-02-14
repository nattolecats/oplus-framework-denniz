.class public final synthetic Lcom/android/internal/widget/ZoomWindowDecorView$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/widget/ZoomWindowDecorView;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/widget/ZoomWindowDecorView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/ZoomWindowDecorView$$ExternalSyntheticLambda4;->f$0:Lcom/android/internal/widget/ZoomWindowDecorView;

    return-void
.end method


# virtual methods
.method public final whitelist onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView$$ExternalSyntheticLambda4;->f$0:Lcom/android/internal/widget/ZoomWindowDecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ZoomWindowDecorView;->lambda$updateHandleViewBackgroundWithAnim$5$com-android-internal-widget-ZoomWindowDecorView(Landroid/animation/ValueAnimator;)V

    return-void
.end method
