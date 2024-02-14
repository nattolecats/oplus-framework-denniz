.class public Lcom/oplus/widget/OplusFadeBackButton;
.super Landroid/widget/Button;
.source "OplusFadeBackButton.java"


# static fields
.field private static final blacklist TOUCH_END_DURATION:I = 0x12c

.field private static final blacklist TOUCH_START_DURATION:I = 0xc8


# instance fields
.field private blacklist mAnimator:Landroid/animation/ValueAnimator;

.field private blacklist mCurrentScale:F

.field private blacklist mTouchEndInterpolator:Landroid/view/animation/OplusBezierInterpolator;

.field private blacklist mTouchStartInterpolator:Landroid/view/animation/OplusBezierInterpolator;


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oplus/widget/OplusFadeBackButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/widget/OplusFadeBackButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 48
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    new-instance v11, Landroid/view/animation/OplusBezierInterpolator;

    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    const-wide v4, 0x3fb999999999999aL    # 0.1

    const-wide v6, 0x3fb999999999999aL    # 0.1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const/4 v10, 0x1

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Landroid/view/animation/OplusBezierInterpolator;-><init>(DDDDZ)V

    iput-object v11, v0, Lcom/oplus/widget/OplusFadeBackButton;->mTouchStartInterpolator:Landroid/view/animation/OplusBezierInterpolator;

    .line 34
    new-instance v1, Landroid/view/animation/OplusBezierInterpolator;

    const-wide/high16 v13, 0x3fd0000000000000L    # 0.25

    const-wide v15, 0x3fb999999999999aL    # 0.1

    const-wide/high16 v17, 0x3fd0000000000000L    # 0.25

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    const/16 v21, 0x1

    move-object v12, v1

    invoke-direct/range {v12 .. v21}, Landroid/view/animation/OplusBezierInterpolator;-><init>(DDDDZ)V

    iput-object v1, v0, Lcom/oplus/widget/OplusFadeBackButton;->mTouchEndInterpolator:Landroid/view/animation/OplusBezierInterpolator;

    .line 35
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lcom/oplus/widget/OplusFadeBackButton;->mCurrentScale:F

    .line 49
    return-void
.end method

.method private blacklist performTouchEndAnim()V
    .locals 4

    .line 83
    iget-object v0, p0, Lcom/oplus/widget/OplusFadeBackButton;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/oplus/widget/OplusFadeBackButton;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 86
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v1, p0, Lcom/oplus/widget/OplusFadeBackButton;->mCurrentScale:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    aput v1, v0, v3

    const-string v1, "scaleHolder"

    invoke-static {v1, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 87
    .local v0, "widthHolder":Landroid/animation/PropertyValuesHolder;
    new-array v1, v3, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/widget/OplusFadeBackButton;->mAnimator:Landroid/animation/ValueAnimator;

    .line 88
    iget-object v2, p0, Lcom/oplus/widget/OplusFadeBackButton;->mTouchEndInterpolator:Landroid/view/animation/OplusBezierInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 89
    iget-object v1, p0, Lcom/oplus/widget/OplusFadeBackButton;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 90
    iget-object v1, p0, Lcom/oplus/widget/OplusFadeBackButton;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/oplus/widget/OplusFadeBackButton$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/oplus/widget/OplusFadeBackButton$$ExternalSyntheticLambda0;-><init>(Lcom/oplus/widget/OplusFadeBackButton;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 95
    iget-object v1, p0, Lcom/oplus/widget/OplusFadeBackButton;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 96
    return-void
.end method

.method private blacklist performTouchStartAnim()V
    .locals 4

    .line 67
    iget-object v0, p0, Lcom/oplus/widget/OplusFadeBackButton;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/oplus/widget/OplusFadeBackButton;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 70
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v1, p0, Lcom/oplus/widget/OplusFadeBackButton;->mCurrentScale:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const v1, 0x3f666666    # 0.9f

    const/4 v3, 0x1

    aput v1, v0, v3

    const-string v1, "scaleHolder"

    invoke-static {v1, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 71
    .local v0, "widthHolder":Landroid/animation/PropertyValuesHolder;
    new-array v1, v3, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/widget/OplusFadeBackButton;->mAnimator:Landroid/animation/ValueAnimator;

    .line 72
    iget-object v2, p0, Lcom/oplus/widget/OplusFadeBackButton;->mTouchStartInterpolator:Landroid/view/animation/OplusBezierInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 73
    iget-object v1, p0, Lcom/oplus/widget/OplusFadeBackButton;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 74
    iget-object v1, p0, Lcom/oplus/widget/OplusFadeBackButton;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/oplus/widget/OplusFadeBackButton$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/oplus/widget/OplusFadeBackButton$$ExternalSyntheticLambda1;-><init>(Lcom/oplus/widget/OplusFadeBackButton;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 79
    iget-object v1, p0, Lcom/oplus/widget/OplusFadeBackButton;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 80
    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$performTouchEndAnim$1$com-oplus-widget-OplusFadeBackButton(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 91
    const-string v0, "scaleHolder"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/oplus/widget/OplusFadeBackButton;->mCurrentScale:F

    .line 92
    invoke-virtual {p0, v0}, Lcom/oplus/widget/OplusFadeBackButton;->setScaleX(F)V

    .line 93
    iget v0, p0, Lcom/oplus/widget/OplusFadeBackButton;->mCurrentScale:F

    invoke-virtual {p0, v0}, Lcom/oplus/widget/OplusFadeBackButton;->setScaleY(F)V

    .line 94
    return-void
.end method

.method synthetic blacklist lambda$performTouchStartAnim$0$com-oplus-widget-OplusFadeBackButton(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 75
    const-string v0, "scaleHolder"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/oplus/widget/OplusFadeBackButton;->mCurrentScale:F

    .line 76
    invoke-virtual {p0, v0}, Lcom/oplus/widget/OplusFadeBackButton;->setScaleX(F)V

    .line 77
    iget v0, p0, Lcom/oplus/widget/OplusFadeBackButton;->mCurrentScale:F

    invoke-virtual {p0, v0}, Lcom/oplus/widget/OplusFadeBackButton;->setScaleY(F)V

    .line 78
    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .locals 1

    .line 100
    invoke-super {p0}, Landroid/widget/Button;->onDetachedFromWindow()V

    .line 101
    iget-object v0, p0, Lcom/oplus/widget/OplusFadeBackButton;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/oplus/widget/OplusFadeBackButton;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 104
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/oplus/widget/OplusFadeBackButton;->setScaleX(F)V

    .line 105
    invoke-virtual {p0, v0}, Lcom/oplus/widget/OplusFadeBackButton;->setScaleY(F)V

    .line 107
    :cond_0
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 53
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 59
    :pswitch_1
    invoke-direct {p0}, Lcom/oplus/widget/OplusFadeBackButton;->performTouchEndAnim()V

    goto :goto_0

    .line 55
    :pswitch_2
    invoke-direct {p0}, Lcom/oplus/widget/OplusFadeBackButton;->performTouchStartAnim()V

    .line 56
    nop

    .line 62
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/Button;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
