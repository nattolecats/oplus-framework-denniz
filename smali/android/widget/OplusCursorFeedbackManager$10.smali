.class Landroid/widget/OplusCursorFeedbackManager$10;
.super Ljava/lang/Object;
.source "OplusCursorFeedbackManager.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/OplusCursorFeedbackManager;->startCursorColorAnimator(Landroid/animation/AnimatorSet$Builder;Landroid/widget/Editor;)V
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

    .line 351
    iput-object p1, p0, Landroid/widget/OplusCursorFeedbackManager$10;->this$0:Landroid/widget/OplusCursorFeedbackManager;

    iput-object p2, p0, Landroid/widget/OplusCursorFeedbackManager$10;->val$editor:Landroid/widget/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 355
    :try_start_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 356
    .local v0, "currentValue":F
    iget-object v1, p0, Landroid/widget/OplusCursorFeedbackManager$10;->val$editor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 357
    const/high16 v1, 0x431b0000    # 155.0f

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v2, v0

    add-float/2addr v2, v1

    float-to-int v1, v2

    .line 358
    .local v1, "alpha":I
    const/16 v2, 0xff

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    .line 359
    .local v2, "color":I
    new-instance v3, Landroid/graphics/BlendModeColorFilter;

    sget-object v4, Landroid/graphics/BlendMode;->SRC_ATOP:Landroid/graphics/BlendMode;

    invoke-direct {v3, v2, v4}, Landroid/graphics/BlendModeColorFilter;-><init>(ILandroid/graphics/BlendMode;)V

    .line 360
    .local v3, "filter":Landroid/graphics/BlendModeColorFilter;
    iget-object v4, p0, Landroid/widget/OplusCursorFeedbackManager$10;->val$editor:Landroid/widget/Editor;

    iget-object v4, v4, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    .end local v0    # "currentValue":F
    .end local v1    # "alpha":I
    .end local v2    # "color":I
    .end local v3    # "filter":Landroid/graphics/BlendModeColorFilter;
    :cond_0
    goto :goto_0

    .line 362
    :catch_0
    move-exception v0

    .line 363
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Landroid/widget/OplusCursorFeedbackManager$10;->this$0:Landroid/widget/OplusCursorFeedbackManager;

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

    .line 364
    iget-object v1, p0, Landroid/widget/OplusCursorFeedbackManager$10;->this$0:Landroid/widget/OplusCursorFeedbackManager;

    iget-object v2, p0, Landroid/widget/OplusCursorFeedbackManager$10;->val$editor:Landroid/widget/Editor;

    invoke-virtual {v1, v2}, Landroid/widget/OplusCursorFeedbackManager;->stopCursorAnimator(Landroid/widget/Editor;)V

    .line 366
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
