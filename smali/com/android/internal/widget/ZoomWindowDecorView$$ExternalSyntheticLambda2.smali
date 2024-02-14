.class public final synthetic Lcom/android/internal/widget/ZoomWindowDecorView$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/widget/ZoomWindowDecorView;

.field public final synthetic blacklist f$1:Landroid/graphics/drawable/Drawable;

.field public final synthetic blacklist f$2:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/widget/ZoomWindowDecorView;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/ZoomWindowDecorView$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/widget/ZoomWindowDecorView;

    iput-object p2, p0, Lcom/android/internal/widget/ZoomWindowDecorView$$ExternalSyntheticLambda2;->f$1:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/android/internal/widget/ZoomWindowDecorView$$ExternalSyntheticLambda2;->f$2:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final whitelist onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/widget/ZoomWindowDecorView;

    iget-object v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView$$ExternalSyntheticLambda2;->f$1:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/internal/widget/ZoomWindowDecorView$$ExternalSyntheticLambda2;->f$2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/internal/widget/ZoomWindowDecorView;->lambda$updateHandleColor$3$com-android-internal-widget-ZoomWindowDecorView(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V

    return-void
.end method
