.class Lcom/android/internal/widget/ZoomWindowDecorView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ZoomWindowDecorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/ZoomWindowDecorView;->updateHandleColor(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/widget/ZoomWindowDecorView;

.field final synthetic blacklist val$drawable:Landroid/graphics/drawable/Drawable;

.field final synthetic blacklist val$toDefault:Z


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/ZoomWindowDecorView;ZLandroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/widget/ZoomWindowDecorView;

    .line 861
    iput-object p1, p0, Lcom/android/internal/widget/ZoomWindowDecorView$5;->this$0:Lcom/android/internal/widget/ZoomWindowDecorView;

    iput-boolean p2, p0, Lcom/android/internal/widget/ZoomWindowDecorView$5;->val$toDefault:Z

    iput-object p3, p0, Lcom/android/internal/widget/ZoomWindowDecorView$5;->val$drawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 864
    const-string v0, "ZoomWindowDecorView"

    const-string v1, "updateHandleColor cancel"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    return-void
.end method

.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 869
    const-string v0, "ZoomWindowDecorView"

    const-string v1, "updateHandleColor end"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    iget-boolean v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView$5;->val$toDefault:Z

    if-eqz v0, :cond_0

    .line 871
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView$5;->val$drawable:Landroid/graphics/drawable/Drawable;

    const-string v1, "#999999"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_0

    .line 873
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView$5;->val$drawable:Landroid/graphics/drawable/Drawable;

    const-string v1, "#0A7FFB"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 875
    :goto_0
    return-void
.end method
