.class Landroid/widget/OplusCursorFeedbackManager$13;
.super Ljava/lang/Object;
.source "OplusCursorFeedbackManager.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/OplusCursorFeedbackManager;->startCursorAnimator(Landroid/widget/Editor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/OplusCursorFeedbackManager;

.field final synthetic blacklist val$editor:Landroid/widget/Editor;


# direct methods
.method constructor blacklist <init>(Landroid/widget/OplusCursorFeedbackManager;Landroid/widget/Editor;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/OplusCursorFeedbackManager;

    .line 441
    iput-object p1, p0, Landroid/widget/OplusCursorFeedbackManager$13;->this$0:Landroid/widget/OplusCursorFeedbackManager;

    iput-object p2, p0, Landroid/widget/OplusCursorFeedbackManager$13;->val$editor:Landroid/widget/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 457
    return-void
.end method

.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 449
    iget-object v0, p0, Landroid/widget/OplusCursorFeedbackManager$13;->val$editor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Landroid/widget/OplusCursorFeedbackManager$13;->val$editor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 452
    :cond_0
    return-void
.end method

.method public whitelist onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 462
    return-void
.end method

.method public whitelist onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 445
    return-void
.end method
