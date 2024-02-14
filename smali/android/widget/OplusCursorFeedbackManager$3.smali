.class Landroid/widget/OplusCursorFeedbackManager$3;
.super Ljava/lang/Object;
.source "OplusCursorFeedbackManager.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/OplusCursorFeedbackManager;->startCursorOffsetAnimator(Landroid/animation/AnimatorSet$Builder;Landroid/widget/Editor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/OplusCursorFeedbackManager;


# direct methods
.method constructor blacklist <init>(Landroid/widget/OplusCursorFeedbackManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/OplusCursorFeedbackManager;

    .line 183
    iput-object p1, p0, Landroid/widget/OplusCursorFeedbackManager$3;->this$0:Landroid/widget/OplusCursorFeedbackManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 186
    iget-object v0, p0, Landroid/widget/OplusCursorFeedbackManager$3;->this$0:Landroid/widget/OplusCursorFeedbackManager;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/widget/OplusCursorFeedbackManager;->-$$Nest$fputmExtraHorizontalOffset(Landroid/widget/OplusCursorFeedbackManager;I)V

    .line 187
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 188
    .local v0, "currentValue":F
    iget-object v1, p0, Landroid/widget/OplusCursorFeedbackManager$3;->this$0:Landroid/widget/OplusCursorFeedbackManager;

    invoke-static {v1, v0}, Landroid/widget/OplusCursorFeedbackManager;->-$$Nest$fputmCursorHorizontalOffsetAnimatorRatio(Landroid/widget/OplusCursorFeedbackManager;F)V

    .line 189
    return-void
.end method
