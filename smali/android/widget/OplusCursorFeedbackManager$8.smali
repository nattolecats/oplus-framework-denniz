.class Landroid/widget/OplusCursorFeedbackManager$8;
.super Ljava/lang/Object;
.source "OplusCursorFeedbackManager.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/OplusCursorFeedbackManager;->startCursorWidthAnimator(Landroid/animation/AnimatorSet$Builder;Landroid/widget/Editor;)V
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

    .line 298
    iput-object p1, p0, Landroid/widget/OplusCursorFeedbackManager$8;->this$0:Landroid/widget/OplusCursorFeedbackManager;

    iput-object p2, p0, Landroid/widget/OplusCursorFeedbackManager$8;->val$editor:Landroid/widget/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 302
    :try_start_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 303
    .local v0, "currentValue":F
    iget-object v1, p0, Landroid/widget/OplusCursorFeedbackManager$8;->this$0:Landroid/widget/OplusCursorFeedbackManager;

    invoke-static {v1, v0}, Landroid/widget/OplusCursorFeedbackManager;->-$$Nest$fputmCursorWidthAnimatorRatio(Landroid/widget/OplusCursorFeedbackManager;F)V

    .line 304
    iget-object v1, p0, Landroid/widget/OplusCursorFeedbackManager$8;->val$editor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->updateCursorPosition()V

    .line 305
    iget-object v1, p0, Landroid/widget/OplusCursorFeedbackManager$8;->val$editor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->getWrapper()Landroid/widget/IEditorWrapper;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/IEditorWrapper;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    .line 306
    .local v1, "textView":Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 307
    invoke-virtual {v1}, Landroid/widget/TextView;->invalidateCursorPath()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    .end local v0    # "currentValue":F
    .end local v1    # "textView":Landroid/widget/TextView;
    :cond_0
    goto :goto_0

    .line 309
    :catch_0
    move-exception v0

    .line 310
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Landroid/widget/OplusCursorFeedbackManager$8;->this$0:Landroid/widget/OplusCursorFeedbackManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startCursorWidthAnimator update failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/widget/OplusCursorFeedbackManager;->-$$Nest$mlog(Landroid/widget/OplusCursorFeedbackManager;Ljava/lang/String;)V

    .line 311
    iget-object v1, p0, Landroid/widget/OplusCursorFeedbackManager$8;->this$0:Landroid/widget/OplusCursorFeedbackManager;

    iget-object v2, p0, Landroid/widget/OplusCursorFeedbackManager$8;->val$editor:Landroid/widget/Editor;

    invoke-virtual {v1, v2}, Landroid/widget/OplusCursorFeedbackManager;->stopCursorAnimator(Landroid/widget/Editor;)V

    .line 313
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
