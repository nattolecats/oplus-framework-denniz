.class public Lcom/oplus/resolver/OplusResolverFadeBackImageView;
.super Landroid/widget/ImageView;
.source "OplusResolverFadeBackImageView.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "OplusFadeBackImageView"

.field private static final blacklist TOUCH_END_DURATION:I = 0x64

.field private static final blacklist TOUCH_START_DURATION:I = 0x64


# instance fields
.field private blacklist mAnimator:Landroid/animation/ValueAnimator;

.field private blacklist mCurrentScale:F

.field private blacklist mInterpolator:Landroid/view/animation/PathInterpolator;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oplus/resolver/OplusResolverFadeBackImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/resolver/OplusResolverFadeBackImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v3, 0x3f2b851f    # 0.67f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/oplus/resolver/OplusResolverFadeBackImageView;->mInterpolator:Landroid/view/animation/PathInterpolator;

    .line 38
    iput v4, p0, Lcom/oplus/resolver/OplusResolverFadeBackImageView;->mCurrentScale:F

    .line 52
    return-void
.end method

.method private blacklist performTouchEndAnim()V
    .locals 4

    .line 84
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverFadeBackImageView;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverFadeBackImageView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 87
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v1, p0, Lcom/oplus/resolver/OplusResolverFadeBackImageView;->mCurrentScale:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    aput v1, v0, v3

    const-string v1, "scaleHolder"

    invoke-static {v1, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 88
    .local v0, "widthHolder":Landroid/animation/PropertyValuesHolder;
    new-array v1, v3, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/resolver/OplusResolverFadeBackImageView;->mAnimator:Landroid/animation/ValueAnimator;

    .line 89
    iget-object v2, p0, Lcom/oplus/resolver/OplusResolverFadeBackImageView;->mInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 90
    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverFadeBackImageView;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 91
    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverFadeBackImageView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/oplus/resolver/OplusResolverFadeBackImageView$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/oplus/resolver/OplusResolverFadeBackImageView$$ExternalSyntheticLambda0;-><init>(Lcom/oplus/resolver/OplusResolverFadeBackImageView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 96
    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverFadeBackImageView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 97
    return-void
.end method

.method private blacklist performTouchStartAnim()V
    .locals 4

    .line 68
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverFadeBackImageView;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverFadeBackImageView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 71
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v1, p0, Lcom/oplus/resolver/OplusResolverFadeBackImageView;->mCurrentScale:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const v1, 0x3f8a3d71    # 1.08f

    const/4 v3, 0x1

    aput v1, v0, v3

    const-string v1, "scaleHolder"

    invoke-static {v1, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 72
    .local v0, "widthHolder":Landroid/animation/PropertyValuesHolder;
    new-array v1, v3, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/resolver/OplusResolverFadeBackImageView;->mAnimator:Landroid/animation/ValueAnimator;

    .line 73
    iget-object v2, p0, Lcom/oplus/resolver/OplusResolverFadeBackImageView;->mInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 74
    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverFadeBackImageView;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 75
    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverFadeBackImageView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/oplus/resolver/OplusResolverFadeBackImageView$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/oplus/resolver/OplusResolverFadeBackImageView$$ExternalSyntheticLambda1;-><init>(Lcom/oplus/resolver/OplusResolverFadeBackImageView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 80
    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverFadeBackImageView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 81
    return-void
.end method


# virtual methods
.method public whitelist dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 56
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 57
    invoke-direct {p0}, Lcom/oplus/resolver/OplusResolverFadeBackImageView;->performTouchStartAnim()V

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    .line 59
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 60
    :cond_1
    invoke-direct {p0}, Lcom/oplus/resolver/OplusResolverFadeBackImageView;->performTouchEndAnim()V

    .line 62
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 63
    return v1
.end method

.method synthetic blacklist lambda$performTouchEndAnim$1$com-oplus-resolver-OplusResolverFadeBackImageView(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 92
    const-string v0, "scaleHolder"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/oplus/resolver/OplusResolverFadeBackImageView;->mCurrentScale:F

    .line 93
    invoke-virtual {p0, v0}, Lcom/oplus/resolver/OplusResolverFadeBackImageView;->setScaleX(F)V

    .line 94
    iget v0, p0, Lcom/oplus/resolver/OplusResolverFadeBackImageView;->mCurrentScale:F

    invoke-virtual {p0, v0}, Lcom/oplus/resolver/OplusResolverFadeBackImageView;->setScaleY(F)V

    .line 95
    return-void
.end method

.method synthetic blacklist lambda$performTouchStartAnim$0$com-oplus-resolver-OplusResolverFadeBackImageView(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 76
    const-string v0, "scaleHolder"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/oplus/resolver/OplusResolverFadeBackImageView;->mCurrentScale:F

    .line 77
    invoke-virtual {p0, v0}, Lcom/oplus/resolver/OplusResolverFadeBackImageView;->setScaleX(F)V

    .line 78
    iget v0, p0, Lcom/oplus/resolver/OplusResolverFadeBackImageView;->mCurrentScale:F

    invoke-virtual {p0, v0}, Lcom/oplus/resolver/OplusResolverFadeBackImageView;->setScaleY(F)V

    .line 79
    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .locals 1

    .line 101
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 102
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverFadeBackImageView;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverFadeBackImageView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 105
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/oplus/resolver/OplusResolverFadeBackImageView;->setScaleX(F)V

    .line 106
    invoke-virtual {p0, v0}, Lcom/oplus/resolver/OplusResolverFadeBackImageView;->setScaleY(F)V

    .line 108
    :cond_0
    return-void
.end method
