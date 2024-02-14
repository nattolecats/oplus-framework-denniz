.class Lcom/android/internal/widget/ZoomWindowDecorView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ZoomWindowDecorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/ZoomWindowDecorView;->updateBoundColorWithAnim(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/widget/ZoomWindowDecorView;

.field final synthetic blacklist val$drawable:Landroid/graphics/drawable/Drawable;

.field final synthetic blacklist val$isToZoom:Z


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/ZoomWindowDecorView;ZLandroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/widget/ZoomWindowDecorView;

    .line 808
    iput-object p1, p0, Lcom/android/internal/widget/ZoomWindowDecorView$4;->this$0:Lcom/android/internal/widget/ZoomWindowDecorView;

    iput-boolean p2, p0, Lcom/android/internal/widget/ZoomWindowDecorView$4;->val$isToZoom:Z

    iput-object p3, p0, Lcom/android/internal/widget/ZoomWindowDecorView$4;->val$drawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 811
    const-string v0, "ZoomWindowDecorView"

    const-string v1, "updateBoundColorWithAnim cancel"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    return-void
.end method

.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 821
    const-string v0, "ZoomWindowDecorView"

    const-string v1, "updateBoundColorWithAnim end"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    iget-boolean v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView$4;->val$isToZoom:Z

    if-eqz v0, :cond_0

    .line 823
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView$4;->val$drawable:Landroid/graphics/drawable/Drawable;

    const-string v1, "#007AFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_0

    .line 825
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView$4;->val$drawable:Landroid/graphics/drawable/Drawable;

    const-string v1, "#FD8326"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 827
    :goto_0
    return-void
.end method
