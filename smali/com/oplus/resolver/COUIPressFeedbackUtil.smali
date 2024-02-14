.class public Lcom/oplus/resolver/COUIPressFeedbackUtil;
.super Ljava/lang/Object;
.source "COUIPressFeedbackUtil.java"


# static fields
.field private static final blacklist BIG_CARD_GUARANTEE_VALUE_THRESHOLD_PERCENTAGE:F = 0.07f

.field private static final blacklist DEFAULT_FLOATING_BUTTON_HEIGHT:I = 0x9c

.field private static final blacklist DEFAULT_GUARANTEE_VALUE_THRESHOLD_PERCENTAGE:F = 0.1f

.field private static final blacklist DEFAULT_PRESS_FEEDBACK_ANIMATION_DURATION:I = 0xc8

.field private static final blacklist DEFAULT_PRESS_FEEDBACK_BRIGHTNESS_MAX_VALUE:F = 1.0f

.field private static final blacklist DEFAULT_PRESS_FEEDBACK_BRIGHTNESS_MIN_VALUE:F = 0.8f

.field private static final blacklist DEFAULT_PRESS_FEEDBACK_SCALE_MAX_VALUE:F = 1.0f

.field private static final blacklist DEFAULT_PRESS_FEEDBACK_SCALE_MIN_VALUE:F = 0.9f

.field private static final blacklist DEFAULT_RELEASE_ANIMATION_DURATION:I = 0x154

.field private static final blacklist DEFAULT_TARGET_GUARANTEED_VALUE_THRESHOLD_HEIGHT:I = 0x258

.field private static final blacklist PRESS_FEEDBACK_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final blacklist PROPERTY_BRIGHTNESS:Ljava/lang/String; = "brightness"

.field private static final blacklist PROPERTY_SCALE_X:Ljava/lang/String; = "scaleX"

.field private static final blacklist PROPERTY_SCALE_Y:Ljava/lang/String; = "scaleY"

.field private static final blacklist SMALL_CARD_GUARANTEE_VALUE_THRESHOLD_PERCENTAGE:F = 0.35f


# direct methods
.method static bridge synthetic blacklist -$$Nest$smgetBrightnessColor(IF)I
    .locals 0

    invoke-static {p0, p1}, Lcom/oplus/resolver/COUIPressFeedbackUtil;->getBrightnessColor(IF)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 5

    .line 50
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    const v3, 0x3e4ccccd    # 0.2f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/oplus/resolver/COUIPressFeedbackUtil;->PRESS_FEEDBACK_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist cancelAnim(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p0, "animator"    # Landroid/animation/ValueAnimator;

    .line 191
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->end()V

    .line 194
    :cond_0
    return-void
.end method

.method private static blacklist createAnim(Landroid/view/View;FFFFFFJLandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ValueAnimator;
    .locals 10
    .param p0, "target"    # Landroid/view/View;
    .param p1, "brightnessStartValue"    # F
    .param p2, "brightnessEndValue"    # F
    .param p3, "scaleXStartValue"    # F
    .param p4, "scaleXEndValue"    # F
    .param p5, "scaleYStartValue"    # F
    .param p6, "scaleYEndValue"    # F
    .param p7, "duration"    # J
    .param p9, "interpolator"    # Landroid/animation/TimeInterpolator;
    .param p10, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .line 98
    move-object v0, p0

    move-object/from16 v1, p10

    if-eqz v0, :cond_1

    .line 103
    const/4 v2, 0x2

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput p1, v3, v4

    const/4 v5, 0x1

    aput p2, v3, v5

    const-string v6, "brightness"

    invoke-static {v6, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 105
    .local v3, "brightnessProperty":Landroid/animation/PropertyValuesHolder;
    new-array v6, v2, [F

    aput p3, v6, v4

    aput p4, v6, v5

    const-string v7, "scaleX"

    invoke-static {v7, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 107
    .local v6, "scaleXProperty":Landroid/animation/PropertyValuesHolder;
    new-array v7, v2, [F

    aput p5, v7, v4

    aput p6, v7, v5

    const-string v8, "scaleY"

    invoke-static {v8, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 109
    .local v7, "scaleYProperty":Landroid/animation/PropertyValuesHolder;
    const/4 v8, 0x3

    new-array v8, v8, [Landroid/animation/PropertyValuesHolder;

    aput-object v3, v8, v4

    aput-object v6, v8, v5

    aput-object v7, v8, v2

    invoke-static {v8}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 113
    .local v2, "anim":Landroid/animation/ValueAnimator;
    move-wide/from16 v4, p7

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 114
    move-object/from16 v8, p9

    invoke-virtual {v2, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 115
    new-instance v9, Lcom/oplus/resolver/COUIPressFeedbackUtil$1;

    invoke-direct {v9, p0}, Lcom/oplus/resolver/COUIPressFeedbackUtil$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v2, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 131
    if-eqz v1, :cond_0

    .line 132
    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 134
    :cond_0
    return-object v2

    .line 99
    .end local v2    # "anim":Landroid/animation/ValueAnimator;
    .end local v3    # "brightnessProperty":Landroid/animation/PropertyValuesHolder;
    .end local v6    # "scaleXProperty":Landroid/animation/PropertyValuesHolder;
    .end local v7    # "scaleYProperty":Landroid/animation/PropertyValuesHolder;
    :cond_1
    move-wide/from16 v4, p7

    move-object/from16 v8, p9

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The given view is empty. Please provide a valid view."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static blacklist generatePressAnimation(Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ValueAnimator;
    .locals 11
    .param p0, "target"    # Landroid/view/View;
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .line 60
    sget-object v9, Lcom/oplus/resolver/COUIPressFeedbackUtil;->PRESS_FEEDBACK_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f4ccccd    # 0.8f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f666666    # 0.9f

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3f666666    # 0.9f

    const-wide/16 v7, 0xc8

    move-object v0, p0

    move-object v10, p1

    invoke-static/range {v0 .. v10}, Lcom/oplus/resolver/COUIPressFeedbackUtil;->createAnim(Landroid/view/View;FFFFFFJLandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist generatePressAnimationRecord()Landroid/animation/ValueAnimator;
    .locals 3

    .line 155
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 156
    .local v0, "pressAnimationRecord":Landroid/animation/ValueAnimator;
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 157
    sget-object v1, Lcom/oplus/resolver/COUIPressFeedbackUtil;->PRESS_FEEDBACK_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 158
    return-object v0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
    .end array-data
.end method

.method public static blacklist generateResumeAnimation(Landroid/view/View;FLandroid/animation/Animator$AnimatorListener;)Landroid/animation/ValueAnimator;
    .locals 13
    .param p0, "target"    # Landroid/view/View;
    .param p1, "animationStartValue"    # F
    .param p2, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .line 79
    const v0, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, p1

    const v1, 0x3f666666    # 0.9f

    div-float v3, v0, v1

    sget-object v11, Lcom/oplus/resolver/COUIPressFeedbackUtil;->PRESS_FEEDBACK_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const-wide/16 v9, 0x154

    move-object v2, p0

    move v5, p1

    move v7, p1

    move-object v12, p2

    invoke-static/range {v2 .. v12}, Lcom/oplus/resolver/COUIPressFeedbackUtil;->createAnim(Landroid/view/View;FFFFFFJLandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getBrightnessColor(IF)I
    .locals 7
    .param p0, "color"    # I
    .param p1, "brightness"    # F

    .line 138
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 139
    .local v0, "mColorHsl":[F
    invoke-static {p0, v0}, Lcom/android/internal/graphics/ColorUtils;->colorToHSL(I[F)V

    .line 140
    const/4 v1, 0x2

    aget v2, v0, v1

    mul-float/2addr v2, p1

    aput v2, v0, v1

    .line 141
    invoke-static {v0}, Lcom/android/internal/graphics/ColorUtils;->HSLToColor([F)I

    move-result v1

    .line 142
    .local v1, "newColor":I
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    const/16 v3, 0xff

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 143
    .local v2, "r":I
    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 144
    .local v4, "g":I
    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 145
    .local v3, "b":I
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    .line 146
    .local v5, "a":I
    invoke-static {v5, v2, v4, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    return v6
.end method

.method public static blacklist getGuaranteedAnimationValue(Landroid/view/View;)F
    .locals 2
    .param p0, "target"    # Landroid/view/View;

    .line 170
    if-eqz p0, :cond_2

    .line 176
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    const/16 v1, 0x258

    if-lt v0, v1, :cond_0

    .line 177
    const v0, 0x3f7e353f    # 0.993f

    .local v0, "pressAnimationGuaranteedValue":F
    goto :goto_0

    .line 179
    .end local v0    # "pressAnimationGuaranteedValue":F
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    const/16 v1, 0x9c

    if-lt v0, v1, :cond_1

    .line 180
    const v0, 0x3f770a3d    # 0.965f

    .restart local v0    # "pressAnimationGuaranteedValue":F
    goto :goto_0

    .line 183
    .end local v0    # "pressAnimationGuaranteedValue":F
    :cond_1
    const v0, 0x3f7d70a4    # 0.99f

    .line 187
    .restart local v0    # "pressAnimationGuaranteedValue":F
    :goto_0
    return v0

    .line 171
    .end local v0    # "pressAnimationGuaranteedValue":F
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The given view is empty. Please provide a valid view."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
