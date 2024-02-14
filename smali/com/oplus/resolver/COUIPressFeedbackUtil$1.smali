.class Lcom/oplus/resolver/COUIPressFeedbackUtil$1;
.super Ljava/lang/Object;
.source "COUIPressFeedbackUtil.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/resolver/COUIPressFeedbackUtil;->createAnim(Landroid/view/View;FFFFFFJLandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$target:Landroid/view/View;


# direct methods
.method constructor blacklist <init>(Landroid/view/View;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/oplus/resolver/COUIPressFeedbackUtil$1;->val$target:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 118
    const-string v0, "brightness"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 119
    .local v0, "brightnessValue":F
    const-string v1, "scaleX"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 120
    .local v1, "scaleXValue":F
    const-string v2, "scaleY"

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 122
    .local v2, "scaleYValue":F
    iget-object v3, p0, Lcom/oplus/resolver/COUIPressFeedbackUtil$1;->val$target:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setScaleX(F)V

    .line 123
    iget-object v3, p0, Lcom/oplus/resolver/COUIPressFeedbackUtil$1;->val$target:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setScaleY(F)V

    .line 124
    iget-object v3, p0, Lcom/oplus/resolver/COUIPressFeedbackUtil$1;->val$target:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 125
    .local v3, "tintList":Landroid/content/res/ColorStateList;
    if-eqz v3, :cond_0

    .line 126
    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    .line 127
    .local v4, "color":I
    iget-object v5, p0, Lcom/oplus/resolver/COUIPressFeedbackUtil$1;->val$target:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v4, v0}, Lcom/oplus/resolver/COUIPressFeedbackUtil;->-$$Nest$smgetBrightnessColor(IF)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 129
    .end local v4    # "color":I
    :cond_0
    return-void
.end method
