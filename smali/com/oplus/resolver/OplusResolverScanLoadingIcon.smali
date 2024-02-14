.class public Lcom/oplus/resolver/OplusResolverScanLoadingIcon;
.super Landroid/widget/FrameLayout;
.source "OplusResolverScanLoadingIcon.java"


# static fields
.field private static final blacklist CIRCLE_APPEAR_DURATION:I = 0x2ee

.field private static final blacklist CIRCLE_DISAPPEAR_DURATION:I = 0xfa

.field private static final blacklist DEBUG:Z = true

.field private static final blacklist DEFAULT_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final blacklist INNER_CIRCLE_DISAPPEAR_DELAY:I = 0x7d0

.field private static final blacklist OUTER_CIRCLE_APPEAR_DELAY:I = 0xa7

.field private static final blacklist OUTER_CIRCLE_DISAPPEAR_DELAY:I = 0x877

.field private static final blacklist TAG:Ljava/lang/String; = "OplusResolverScanLoadingIcon"


# instance fields
.field private final blacklist mAnimatorSet:Landroid/animation/AnimatorSet;

.field private blacklist mCanStartAnimator:Z

.field private blacklist mContext:Landroid/content/Context;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAnimatorSet(Lcom/oplus/resolver/OplusResolverScanLoadingIcon;)Landroid/animation/AnimatorSet;
    .locals 0

    iget-object p0, p0, Lcom/oplus/resolver/OplusResolverScanLoadingIcon;->mAnimatorSet:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCanStartAnimator(Lcom/oplus/resolver/OplusResolverScanLoadingIcon;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oplus/resolver/OplusResolverScanLoadingIcon;->mCanStartAnimator:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/oplus/resolver/OplusResolverScanLoadingIcon;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/oplus/resolver/OplusResolverScanLoadingIcon;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 5

    .line 44
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v3, 0x3f2b851f    # 0.67f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/oplus/resolver/OplusResolverScanLoadingIcon;->DEFAULT_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oplus/resolver/OplusResolverScanLoadingIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/resolver/OplusResolverScanLoadingIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    iput-object p1, p0, Lcom/oplus/resolver/OplusResolverScanLoadingIcon;->mContext:Landroid/content/Context;

    .line 60
    const v0, 0xc090430

    invoke-static {p1, v0, p0}, Lcom/oplus/resolver/OplusResolverScanLoadingIcon;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 61
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverScanLoadingIcon;->mContext:Landroid/content/Context;

    const v1, 0xc080044

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/resolver/OplusResolverScanLoadingIcon;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 62
    const v0, 0xc02003e

    invoke-virtual {p0, v0}, Lcom/oplus/resolver/OplusResolverScanLoadingIcon;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 63
    .local v0, "outerCircle":Landroid/widget/ImageView;
    const v1, 0xc02003f

    invoke-virtual {p0, v1}, Lcom/oplus/resolver/OplusResolverScanLoadingIcon;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 64
    .local v1, "innerCircle":Landroid/widget/ImageView;
    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    const-string v4, "alpha"

    invoke-static {v1, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 65
    .local v3, "innerCircleAppearAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v5, 0x2ee

    invoke-virtual {v3, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 66
    new-array v7, v2, [F

    fill-array-data v7, :array_1

    invoke-static {v1, v4, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 67
    .local v7, "innerCircleDisappearAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v8, 0xfa

    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 68
    const-wide/16 v10, 0x7d0

    invoke-virtual {v7, v10, v11}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 69
    new-array v10, v2, [F

    fill-array-data v10, :array_2

    invoke-static {v0, v4, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 70
    .local v10, "outerCircleAppearAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v10, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 71
    const-wide/16 v5, 0xa7

    invoke-virtual {v10, v5, v6}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 72
    new-array v5, v2, [F

    fill-array-data v5, :array_3

    invoke-static {v0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 73
    .local v4, "outerCircleDisappearAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v4, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 74
    const-wide/16 v5, 0x877

    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 75
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lcom/oplus/resolver/OplusResolverScanLoadingIcon;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 76
    sget-object v6, Lcom/oplus/resolver/OplusResolverScanLoadingIcon;->DEFAULT_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 77
    const/4 v6, 0x4

    new-array v6, v6, [Landroid/animation/Animator;

    const/4 v8, 0x0

    aput-object v3, v6, v8

    const/4 v8, 0x1

    aput-object v3, v6, v8

    aput-object v10, v6, v2

    const/4 v2, 0x3

    aput-object v4, v6, v2

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 81
    new-instance v2, Lcom/oplus/resolver/OplusResolverScanLoadingIcon$1;

    invoke-direct {v2, p0}, Lcom/oplus/resolver/OplusResolverScanLoadingIcon$1;-><init>(Lcom/oplus/resolver/OplusResolverScanLoadingIcon;)V

    invoke-virtual {v5, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 95
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method protected whitelist onDetachedFromWindow()V
    .locals 2

    .line 118
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 120
    const-string v0, "OplusResolverScanLoadingIcon"

    const-string v1, "scan icon detach"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oplus/resolver/OplusResolverScanLoadingIcon;->mCanStartAnimator:Z

    .line 123
    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverScanLoadingIcon;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    const-string v1, "scan icon cancel animatorSet"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverScanLoadingIcon;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 129
    :cond_0
    return-void
.end method

.method public blacklist startAnimator()V
    .locals 2

    .line 98
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/resolver/OplusResolverScanLoadingIcon;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/resolver/OplusResolverScanLoadingIcon;->mCanStartAnimator:Z

    .line 101
    const-string v0, "OplusResolverScanLoadingIcon"

    const-string v1, "scan icon start animatorSet"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverScanLoadingIcon;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverScanLoadingIcon;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 107
    return-void
.end method

.method public blacklist stopAnimator()V
    .locals 2

    .line 111
    const-string v0, "OplusResolverScanLoadingIcon"

    const-string v1, "scan icon stop animatorSet"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/resolver/OplusResolverScanLoadingIcon;->mCanStartAnimator:Z

    .line 114
    return-void
.end method
