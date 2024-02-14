.class public Landroid/widget/OplusCursorFeedbackManager;
.super Ljava/lang/Object;
.source "OplusCursorFeedbackManager.java"

# interfaces
.implements Landroid/widget/IOplusCursorFeedbackManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/OplusCursorFeedbackManager$StopCursorRunnable;
    }
.end annotation


# static fields
.field private static final blacklist EXPAND_ANIMATION_DURATION:I = 0xc8

.field private static final blacklist EXTRA_CURSOR_LEFT_OFFSET:I = 0x6

.field private static final blacklist EXTRA_CURSOR_WIDTH_PX:I = 0xb

.field private static final blacklist KEYCODE_DEL_INTERVAL:I = 0x1f4

.field private static final blacklist SECOND_EXPAND_ANIMATION_DURATION:I = 0xb7

.field private static final blacklist SECOND_EXTRA_CURSOR_LEFT_OFFSET:I = 0x4

.field private static final blacklist SECOND_EXTRA_CURSOR_WIDTH_PX:I = 0x7

.field private static final blacklist SECOND_SHRINK_ANIMATION_DURATION:I = 0x12c

.field private static final blacklist SHRINK_ANIMATION_DURATION:I = 0xb7

.field private static final blacklist TAG:Ljava/lang/String; = "CursorFeedback"

.field private static final blacklist sAwayControlPoint1:Landroid/graphics/PointF;

.field private static final blacklist sAwayControlPoint2:Landroid/graphics/PointF;

.field private static final blacklist sDarkenControlPoint1:Landroid/graphics/PointF;

.field private static final blacklist sDarkenControlPoint2:Landroid/graphics/PointF;

.field private static final blacklist sExpandControlPoint1:Landroid/graphics/PointF;

.field private static final blacklist sExpandControlPoint2:Landroid/graphics/PointF;

.field private static final blacklist sLightenControlPoint1:Landroid/graphics/PointF;

.field private static final blacklist sLightenControlPoint2:Landroid/graphics/PointF;

.field private static final blacklist sNearControlPoint1:Landroid/graphics/PointF;

.field private static final blacklist sNearControlPoint2:Landroid/graphics/PointF;

.field private static final blacklist sSecondAwayControlPoint1:Landroid/graphics/PointF;

.field private static final blacklist sSecondAwayControlPoint2:Landroid/graphics/PointF;

.field private static final blacklist sSecondDarkenControlPoint1:Landroid/graphics/PointF;

.field private static final blacklist sSecondDarkenControlPoint2:Landroid/graphics/PointF;

.field private static final blacklist sSecondExpandControlPoint1:Landroid/graphics/PointF;

.field private static final blacklist sSecondExpandControlPoint2:Landroid/graphics/PointF;

.field private static final blacklist sSecondLightenControlPoint1:Landroid/graphics/PointF;

.field private static final blacklist sSecondLightenControlPoint2:Landroid/graphics/PointF;

.field private static final blacklist sSecondNearControlPoint1:Landroid/graphics/PointF;

.field private static final blacklist sSecondNearControlPoint2:Landroid/graphics/PointF;

.field private static final blacklist sSecondShrinkControlPoint1:Landroid/graphics/PointF;

.field private static final blacklist sSecondShrinkControlPoint2:Landroid/graphics/PointF;

.field private static final blacklist sShrinkControlPoint1:Landroid/graphics/PointF;

.field private static final blacklist sShrinkControlPoint2:Landroid/graphics/PointF;


# instance fields
.field private blacklist mCursorAnimatorSet:Landroid/animation/AnimatorSet;

.field private blacklist mCursorColorAnimatorRatio:F

.field private blacklist mCursorHorizontalOffsetAnimatorRatio:F

.field private blacklist mCursorWidthAnimatorRatio:F

.field private blacklist mEditorRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/widget/Editor;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mExtraCursorWidth:I

.field private blacklist mExtraHorizontalOffset:I

.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mKeepDeleting:Z

.field private blacklist mLastKeyCodeDelDownTime:J

.field private blacklist mStopCursorRunnable:Landroid/widget/OplusCursorFeedbackManager$StopCursorRunnable;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmEditorRef(Landroid/widget/OplusCursorFeedbackManager;)Ljava/lang/ref/SoftReference;
    .locals 0

    iget-object p0, p0, Landroid/widget/OplusCursorFeedbackManager;->mEditorRef:Ljava/lang/ref/SoftReference;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCursorHorizontalOffsetAnimatorRatio(Landroid/widget/OplusCursorFeedbackManager;F)V
    .locals 0

    iput p1, p0, Landroid/widget/OplusCursorFeedbackManager;->mCursorHorizontalOffsetAnimatorRatio:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCursorWidthAnimatorRatio(Landroid/widget/OplusCursorFeedbackManager;F)V
    .locals 0

    iput p1, p0, Landroid/widget/OplusCursorFeedbackManager;->mCursorWidthAnimatorRatio:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmExtraCursorWidth(Landroid/widget/OplusCursorFeedbackManager;I)V
    .locals 0

    iput p1, p0, Landroid/widget/OplusCursorFeedbackManager;->mExtraCursorWidth:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmExtraHorizontalOffset(Landroid/widget/OplusCursorFeedbackManager;I)V
    .locals 0

    iput p1, p0, Landroid/widget/OplusCursorFeedbackManager;->mExtraHorizontalOffset:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlog(Landroid/widget/OplusCursorFeedbackManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/OplusCursorFeedbackManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 8

    .line 60
    new-instance v0, Landroid/graphics/PointF;

    const v1, 0x3e99999a    # 0.3f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    sput-object v0, Landroid/widget/OplusCursorFeedbackManager;->sExpandControlPoint1:Landroid/graphics/PointF;

    .line 61
    new-instance v0, Landroid/graphics/PointF;

    const v3, 0x3f547ae1    # 0.83f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    sput-object v0, Landroid/widget/OplusCursorFeedbackManager;->sExpandControlPoint2:Landroid/graphics/PointF;

    .line 62
    new-instance v0, Landroid/graphics/PointF;

    const v5, 0x3e2e147b    # 0.17f

    invoke-direct {v0, v5, v2}, Landroid/graphics/PointF;-><init>(FF)V

    sput-object v0, Landroid/widget/OplusCursorFeedbackManager;->sShrinkControlPoint1:Landroid/graphics/PointF;

    .line 63
    new-instance v0, Landroid/graphics/PointF;

    const v6, 0x3f866666    # 1.05f

    invoke-direct {v0, v3, v6}, Landroid/graphics/PointF;-><init>(FF)V

    sput-object v0, Landroid/widget/OplusCursorFeedbackManager;->sShrinkControlPoint2:Landroid/graphics/PointF;

    .line 65
    new-instance v0, Landroid/graphics/PointF;

    const v7, 0x3db851ec    # 0.09f

    invoke-direct {v0, v5, v7}, Landroid/graphics/PointF;-><init>(FF)V

    sput-object v0, Landroid/widget/OplusCursorFeedbackManager;->sSecondExpandControlPoint1:Landroid/graphics/PointF;

    .line 66
    new-instance v0, Landroid/graphics/PointF;

    const v7, 0x3e8f5c29    # 0.28f

    invoke-direct {v0, v3, v7}, Landroid/graphics/PointF;-><init>(FF)V

    sput-object v0, Landroid/widget/OplusCursorFeedbackManager;->sSecondExpandControlPoint2:Landroid/graphics/PointF;

    .line 67
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    sput-object v0, Landroid/widget/OplusCursorFeedbackManager;->sSecondShrinkControlPoint1:Landroid/graphics/PointF;

    .line 68
    new-instance v0, Landroid/graphics/PointF;

    const v7, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v7, v4}, Landroid/graphics/PointF;-><init>(FF)V

    sput-object v0, Landroid/widget/OplusCursorFeedbackManager;->sSecondShrinkControlPoint2:Landroid/graphics/PointF;

    .line 71
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    sput-object v0, Landroid/widget/OplusCursorFeedbackManager;->sAwayControlPoint1:Landroid/graphics/PointF;

    .line 72
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    sput-object v0, Landroid/widget/OplusCursorFeedbackManager;->sAwayControlPoint2:Landroid/graphics/PointF;

    .line 73
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v5, v2}, Landroid/graphics/PointF;-><init>(FF)V

    sput-object v0, Landroid/widget/OplusCursorFeedbackManager;->sNearControlPoint1:Landroid/graphics/PointF;

    .line 74
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v3, v6}, Landroid/graphics/PointF;-><init>(FF)V

    sput-object v0, Landroid/widget/OplusCursorFeedbackManager;->sNearControlPoint2:Landroid/graphics/PointF;

    .line 76
    new-instance v0, Landroid/graphics/PointF;

    const v6, -0x421eb852    # -0.11f

    invoke-direct {v0, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    sput-object v0, Landroid/widget/OplusCursorFeedbackManager;->sSecondAwayControlPoint1:Landroid/graphics/PointF;

    .line 77
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    sput-object v0, Landroid/widget/OplusCursorFeedbackManager;->sSecondAwayControlPoint2:Landroid/graphics/PointF;

    .line 78
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    sput-object v0, Landroid/widget/OplusCursorFeedbackManager;->sSecondNearControlPoint1:Landroid/graphics/PointF;

    .line 79
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v7, v4}, Landroid/graphics/PointF;-><init>(FF)V

    sput-object v0, Landroid/widget/OplusCursorFeedbackManager;->sSecondNearControlPoint2:Landroid/graphics/PointF;

    .line 82
    new-instance v0, Landroid/graphics/PointF;

    const v1, 0x3ea8f5c3    # 0.33f

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    sput-object v0, Landroid/widget/OplusCursorFeedbackManager;->sLightenControlPoint1:Landroid/graphics/PointF;

    .line 83
    new-instance v0, Landroid/graphics/PointF;

    const v3, 0x3f2b851f    # 0.67f

    invoke-direct {v0, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    sput-object v0, Landroid/widget/OplusCursorFeedbackManager;->sLightenControlPoint2:Landroid/graphics/PointF;

    .line 84
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    sput-object v0, Landroid/widget/OplusCursorFeedbackManager;->sDarkenControlPoint1:Landroid/graphics/PointF;

    .line 85
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    sput-object v0, Landroid/widget/OplusCursorFeedbackManager;->sDarkenControlPoint2:Landroid/graphics/PointF;

    .line 87
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    sput-object v0, Landroid/widget/OplusCursorFeedbackManager;->sSecondLightenControlPoint1:Landroid/graphics/PointF;

    .line 88
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    sput-object v0, Landroid/widget/OplusCursorFeedbackManager;->sSecondLightenControlPoint2:Landroid/graphics/PointF;

    .line 89
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    sput-object v0, Landroid/widget/OplusCursorFeedbackManager;->sSecondDarkenControlPoint1:Landroid/graphics/PointF;

    .line 90
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    sput-object v0, Landroid/widget/OplusCursorFeedbackManager;->sSecondDarkenControlPoint2:Landroid/graphics/PointF;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist clear()V
    .locals 3

    .line 555
    const-string v0, "clear"

    invoke-direct {p0, v0}, Landroid/widget/OplusCursorFeedbackManager;->log(Ljava/lang/String;)V

    .line 556
    iget-object v0, p0, Landroid/widget/OplusCursorFeedbackManager;->mCursorAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Landroid/widget/OplusCursorFeedbackManager;->mCursorAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 560
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/OplusCursorFeedbackManager;->mCursorAnimatorSet:Landroid/animation/AnimatorSet;

    .line 562
    iget-object v1, p0, Landroid/widget/OplusCursorFeedbackManager;->mStopCursorRunnable:Landroid/widget/OplusCursorFeedbackManager$StopCursorRunnable;

    if-eqz v1, :cond_1

    iget-object v2, p0, Landroid/widget/OplusCursorFeedbackManager;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_1

    .line 563
    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 566
    :cond_1
    iput-object v0, p0, Landroid/widget/OplusCursorFeedbackManager;->mStopCursorRunnable:Landroid/widget/OplusCursorFeedbackManager$StopCursorRunnable;

    .line 567
    iput-object v0, p0, Landroid/widget/OplusCursorFeedbackManager;->mHandler:Landroid/os/Handler;

    .line 568
    return-void
.end method

.method private blacklist getExtraCursorLeftOffset()I
    .locals 2

    .line 113
    iget v0, p0, Landroid/widget/OplusCursorFeedbackManager;->mExtraHorizontalOffset:I

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/OplusCursorFeedbackManager;->mCursorHorizontalOffsetAnimatorRatio:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private blacklist getExtraCursorWidth()I
    .locals 2

    .line 109
    iget v0, p0, Landroid/widget/OplusCursorFeedbackManager;->mExtraCursorWidth:I

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/OplusCursorFeedbackManager;->mCursorWidthAnimatorRatio:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private blacklist log(Ljava/lang/String;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .line 580
    const-string v0, "CursorFeedback"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    return-void
.end method

.method private blacklist startCursorColorAnimator(Landroid/animation/AnimatorSet$Builder;Landroid/widget/Editor;)V
    .locals 13
    .param p1, "builder"    # Landroid/animation/AnimatorSet$Builder;
    .param p2, "editor"    # Landroid/widget/Editor;

    .line 319
    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 320
    .local v1, "lightenAnimator":Landroid/animation/ValueAnimator;
    new-instance v2, Landroid/view/animation/PathInterpolator;

    sget-object v3, Landroid/widget/OplusCursorFeedbackManager;->sLightenControlPoint1:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sget-object v5, Landroid/widget/OplusCursorFeedbackManager;->sLightenControlPoint2:Landroid/graphics/PointF;

    iget v6, v5, Landroid/graphics/PointF;->x:F

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-direct {v2, v4, v3, v6, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 323
    .local v2, "lightenInterpolator":Landroid/view/animation/PathInterpolator;
    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 324
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 325
    new-instance v5, Landroid/widget/OplusCursorFeedbackManager$9;

    invoke-direct {v5, p0, p2}, Landroid/widget/OplusCursorFeedbackManager$9;-><init>(Landroid/widget/OplusCursorFeedbackManager;Landroid/widget/Editor;)V

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 342
    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 344
    new-array v5, v0, [F

    fill-array-data v5, :array_1

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 345
    .local v5, "darkenAnimator":Landroid/animation/ValueAnimator;
    new-instance v6, Landroid/view/animation/PathInterpolator;

    sget-object v7, Landroid/widget/OplusCursorFeedbackManager;->sDarkenControlPoint1:Landroid/graphics/PointF;

    iget v8, v7, Landroid/graphics/PointF;->x:F

    iget v7, v7, Landroid/graphics/PointF;->y:F

    sget-object v9, Landroid/widget/OplusCursorFeedbackManager;->sDarkenControlPoint2:Landroid/graphics/PointF;

    iget v10, v9, Landroid/graphics/PointF;->x:F

    iget v9, v9, Landroid/graphics/PointF;->y:F

    invoke-direct {v6, v8, v7, v10, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 348
    .local v6, "darkenInterpolator":Landroid/view/animation/PathInterpolator;
    const-wide/16 v7, 0xb7

    invoke-virtual {v5, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 349
    invoke-virtual {v5, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 350
    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 351
    new-instance v3, Landroid/widget/OplusCursorFeedbackManager$10;

    invoke-direct {v3, p0, p2}, Landroid/widget/OplusCursorFeedbackManager$10;-><init>(Landroid/widget/OplusCursorFeedbackManager;Landroid/widget/Editor;)V

    invoke-virtual {v5, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 368
    invoke-virtual {p1, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 371
    new-array v3, v0, [F

    fill-array-data v3, :array_2

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 372
    .local v3, "secondLightenAnimator":Landroid/animation/ValueAnimator;
    new-instance v4, Landroid/view/animation/PathInterpolator;

    sget-object v9, Landroid/widget/OplusCursorFeedbackManager;->sSecondLightenControlPoint1:Landroid/graphics/PointF;

    iget v10, v9, Landroid/graphics/PointF;->x:F

    iget v9, v9, Landroid/graphics/PointF;->y:F

    sget-object v11, Landroid/widget/OplusCursorFeedbackManager;->sSecondLightenControlPoint2:Landroid/graphics/PointF;

    iget v12, v11, Landroid/graphics/PointF;->x:F

    iget v11, v11, Landroid/graphics/PointF;->y:F

    invoke-direct {v4, v10, v9, v12, v11}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 375
    .local v4, "secondLightenInterpolator":Landroid/view/animation/PathInterpolator;
    invoke-virtual {v3, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 376
    const-wide/16 v7, 0x17f

    invoke-virtual {v3, v7, v8}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 377
    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 378
    new-instance v7, Landroid/widget/OplusCursorFeedbackManager$11;

    invoke-direct {v7, p0, p2}, Landroid/widget/OplusCursorFeedbackManager$11;-><init>(Landroid/widget/OplusCursorFeedbackManager;Landroid/widget/Editor;)V

    invoke-virtual {v3, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 395
    invoke-virtual {p1, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 397
    new-array v0, v0, [F

    fill-array-data v0, :array_3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 398
    .local v0, "secondDarkenAnimator":Landroid/animation/ValueAnimator;
    new-instance v7, Landroid/view/animation/PathInterpolator;

    sget-object v8, Landroid/widget/OplusCursorFeedbackManager;->sSecondDarkenControlPoint1:Landroid/graphics/PointF;

    iget v9, v8, Landroid/graphics/PointF;->x:F

    iget v8, v8, Landroid/graphics/PointF;->y:F

    sget-object v10, Landroid/widget/OplusCursorFeedbackManager;->sSecondDarkenControlPoint2:Landroid/graphics/PointF;

    iget v11, v10, Landroid/graphics/PointF;->x:F

    iget v10, v10, Landroid/graphics/PointF;->y:F

    invoke-direct {v7, v9, v8, v11, v10}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 401
    .local v7, "secondDarkenInterpolator":Landroid/view/animation/PathInterpolator;
    const-wide/16 v8, 0x12c

    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 402
    const-wide/16 v8, 0x236

    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 403
    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 404
    new-instance v8, Landroid/widget/OplusCursorFeedbackManager$12;

    invoke-direct {v8, p0, p2}, Landroid/widget/OplusCursorFeedbackManager$12;-><init>(Landroid/widget/OplusCursorFeedbackManager;Landroid/widget/Editor;)V

    invoke-virtual {v0, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 421
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 422
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

.method private blacklist startCursorOffsetAnimator(Landroid/animation/AnimatorSet$Builder;Landroid/widget/Editor;)V
    .locals 13
    .param p1, "builder"    # Landroid/animation/AnimatorSet$Builder;
    .param p2, "editor"    # Landroid/widget/Editor;

    .line 143
    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 144
    .local v1, "awayAnimator":Landroid/animation/ValueAnimator;
    new-instance v2, Landroid/view/animation/PathInterpolator;

    sget-object v3, Landroid/widget/OplusCursorFeedbackManager;->sAwayControlPoint1:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sget-object v5, Landroid/widget/OplusCursorFeedbackManager;->sAwayControlPoint2:Landroid/graphics/PointF;

    iget v6, v5, Landroid/graphics/PointF;->x:F

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-direct {v2, v4, v3, v6, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 147
    .local v2, "awayInterpolator":Landroid/view/animation/PathInterpolator;
    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 148
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 149
    new-instance v5, Landroid/widget/OplusCursorFeedbackManager$1;

    invoke-direct {v5, p0}, Landroid/widget/OplusCursorFeedbackManager$1;-><init>(Landroid/widget/OplusCursorFeedbackManager;)V

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 157
    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 159
    new-array v5, v0, [F

    fill-array-data v5, :array_1

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 160
    .local v5, "nearAnimator":Landroid/animation/ValueAnimator;
    new-instance v6, Landroid/view/animation/PathInterpolator;

    sget-object v7, Landroid/widget/OplusCursorFeedbackManager;->sNearControlPoint1:Landroid/graphics/PointF;

    iget v8, v7, Landroid/graphics/PointF;->x:F

    iget v7, v7, Landroid/graphics/PointF;->y:F

    sget-object v9, Landroid/widget/OplusCursorFeedbackManager;->sNearControlPoint2:Landroid/graphics/PointF;

    iget v10, v9, Landroid/graphics/PointF;->x:F

    iget v9, v9, Landroid/graphics/PointF;->y:F

    invoke-direct {v6, v8, v7, v10, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 163
    .local v6, "nearInterpolator":Landroid/view/animation/PathInterpolator;
    const-wide/16 v7, 0xb7

    invoke-virtual {v5, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 164
    invoke-virtual {v5, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 165
    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 166
    new-instance v3, Landroid/widget/OplusCursorFeedbackManager$2;

    invoke-direct {v3, p0}, Landroid/widget/OplusCursorFeedbackManager$2;-><init>(Landroid/widget/OplusCursorFeedbackManager;)V

    invoke-virtual {v5, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 173
    invoke-virtual {p1, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 176
    new-array v3, v0, [F

    fill-array-data v3, :array_2

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 177
    .local v3, "secondAwayAnimator":Landroid/animation/ValueAnimator;
    new-instance v4, Landroid/view/animation/PathInterpolator;

    sget-object v9, Landroid/widget/OplusCursorFeedbackManager;->sSecondAwayControlPoint1:Landroid/graphics/PointF;

    iget v10, v9, Landroid/graphics/PointF;->x:F

    iget v9, v9, Landroid/graphics/PointF;->y:F

    sget-object v11, Landroid/widget/OplusCursorFeedbackManager;->sSecondAwayControlPoint2:Landroid/graphics/PointF;

    iget v12, v11, Landroid/graphics/PointF;->x:F

    iget v11, v11, Landroid/graphics/PointF;->y:F

    invoke-direct {v4, v10, v9, v12, v11}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 180
    .local v4, "secondAwayInterpolator":Landroid/view/animation/PathInterpolator;
    invoke-virtual {v3, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 181
    const-wide/16 v7, 0x17f

    invoke-virtual {v3, v7, v8}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 182
    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 183
    new-instance v7, Landroid/widget/OplusCursorFeedbackManager$3;

    invoke-direct {v7, p0}, Landroid/widget/OplusCursorFeedbackManager$3;-><init>(Landroid/widget/OplusCursorFeedbackManager;)V

    invoke-virtual {v3, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 191
    invoke-virtual {p1, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 193
    new-array v0, v0, [F

    fill-array-data v0, :array_3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 194
    .local v0, "secondNearAnimator":Landroid/animation/ValueAnimator;
    new-instance v7, Landroid/view/animation/PathInterpolator;

    sget-object v8, Landroid/widget/OplusCursorFeedbackManager;->sSecondNearControlPoint1:Landroid/graphics/PointF;

    iget v9, v8, Landroid/graphics/PointF;->x:F

    iget v8, v8, Landroid/graphics/PointF;->y:F

    sget-object v10, Landroid/widget/OplusCursorFeedbackManager;->sSecondNearControlPoint2:Landroid/graphics/PointF;

    iget v11, v10, Landroid/graphics/PointF;->x:F

    iget v10, v10, Landroid/graphics/PointF;->y:F

    invoke-direct {v7, v9, v8, v11, v10}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 197
    .local v7, "secondNearInterpolator":Landroid/view/animation/PathInterpolator;
    const-wide/16 v8, 0x12c

    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 198
    const-wide/16 v8, 0x236

    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 199
    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 200
    new-instance v8, Landroid/widget/OplusCursorFeedbackManager$4;

    invoke-direct {v8, p0}, Landroid/widget/OplusCursorFeedbackManager$4;-><init>(Landroid/widget/OplusCursorFeedbackManager;)V

    invoke-virtual {v0, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 207
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 208
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

.method private blacklist startCursorWidthAnimator(Landroid/animation/AnimatorSet$Builder;Landroid/widget/Editor;)V
    .locals 13
    .param p1, "builder"    # Landroid/animation/AnimatorSet$Builder;
    .param p2, "editor"    # Landroid/widget/Editor;

    .line 211
    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 212
    .local v1, "expandAnimator":Landroid/animation/ValueAnimator;
    new-instance v2, Landroid/view/animation/PathInterpolator;

    sget-object v3, Landroid/widget/OplusCursorFeedbackManager;->sExpandControlPoint1:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sget-object v5, Landroid/widget/OplusCursorFeedbackManager;->sExpandControlPoint2:Landroid/graphics/PointF;

    iget v6, v5, Landroid/graphics/PointF;->x:F

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-direct {v2, v4, v3, v6, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 215
    .local v2, "expandInterpolator":Landroid/view/animation/PathInterpolator;
    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 216
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 217
    new-instance v5, Landroid/widget/OplusCursorFeedbackManager$5;

    invoke-direct {v5, p0, p2}, Landroid/widget/OplusCursorFeedbackManager$5;-><init>(Landroid/widget/OplusCursorFeedbackManager;Landroid/widget/Editor;)V

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 235
    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 237
    new-array v5, v0, [F

    fill-array-data v5, :array_1

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 238
    .local v5, "shrinkAnimator":Landroid/animation/ValueAnimator;
    new-instance v6, Landroid/view/animation/PathInterpolator;

    sget-object v7, Landroid/widget/OplusCursorFeedbackManager;->sShrinkControlPoint1:Landroid/graphics/PointF;

    iget v8, v7, Landroid/graphics/PointF;->x:F

    iget v7, v7, Landroid/graphics/PointF;->y:F

    sget-object v9, Landroid/widget/OplusCursorFeedbackManager;->sShrinkControlPoint2:Landroid/graphics/PointF;

    iget v10, v9, Landroid/graphics/PointF;->x:F

    iget v9, v9, Landroid/graphics/PointF;->y:F

    invoke-direct {v6, v8, v7, v10, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 241
    .local v6, "shrinkInterpolator":Landroid/view/animation/PathInterpolator;
    const-wide/16 v7, 0xb7

    invoke-virtual {v5, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 242
    invoke-virtual {v5, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 243
    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 244
    new-instance v3, Landroid/widget/OplusCursorFeedbackManager$6;

    invoke-direct {v3, p0, p2}, Landroid/widget/OplusCursorFeedbackManager$6;-><init>(Landroid/widget/OplusCursorFeedbackManager;Landroid/widget/Editor;)V

    invoke-virtual {v5, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 261
    invoke-virtual {p1, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 264
    new-array v3, v0, [F

    fill-array-data v3, :array_2

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 265
    .local v3, "secondExpandAnimator":Landroid/animation/ValueAnimator;
    new-instance v4, Landroid/view/animation/PathInterpolator;

    sget-object v9, Landroid/widget/OplusCursorFeedbackManager;->sSecondExpandControlPoint1:Landroid/graphics/PointF;

    iget v10, v9, Landroid/graphics/PointF;->x:F

    iget v9, v9, Landroid/graphics/PointF;->y:F

    sget-object v11, Landroid/widget/OplusCursorFeedbackManager;->sSecondExpandControlPoint2:Landroid/graphics/PointF;

    iget v12, v11, Landroid/graphics/PointF;->x:F

    iget v11, v11, Landroid/graphics/PointF;->y:F

    invoke-direct {v4, v10, v9, v12, v11}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 268
    .local v4, "secondExpandInterpolator":Landroid/view/animation/PathInterpolator;
    invoke-virtual {v3, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 269
    const-wide/16 v7, 0x17f

    invoke-virtual {v3, v7, v8}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 270
    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 271
    new-instance v7, Landroid/widget/OplusCursorFeedbackManager$7;

    invoke-direct {v7, p0, p2}, Landroid/widget/OplusCursorFeedbackManager$7;-><init>(Landroid/widget/OplusCursorFeedbackManager;Landroid/widget/Editor;)V

    invoke-virtual {v3, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 289
    invoke-virtual {p1, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 291
    new-array v0, v0, [F

    fill-array-data v0, :array_3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 292
    .local v0, "secondShrinkAnimator":Landroid/animation/ValueAnimator;
    new-instance v7, Landroid/view/animation/PathInterpolator;

    sget-object v8, Landroid/widget/OplusCursorFeedbackManager;->sSecondShrinkControlPoint1:Landroid/graphics/PointF;

    iget v9, v8, Landroid/graphics/PointF;->x:F

    iget v8, v8, Landroid/graphics/PointF;->y:F

    sget-object v10, Landroid/widget/OplusCursorFeedbackManager;->sSecondShrinkControlPoint2:Landroid/graphics/PointF;

    iget v11, v10, Landroid/graphics/PointF;->x:F

    iget v10, v10, Landroid/graphics/PointF;->y:F

    invoke-direct {v7, v9, v8, v11, v10}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 295
    .local v7, "secondShrinkInterpolator":Landroid/view/animation/PathInterpolator;
    const-wide/16 v8, 0x12c

    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 296
    const-wide/16 v8, 0x236

    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 297
    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 298
    new-instance v8, Landroid/widget/OplusCursorFeedbackManager$8;

    invoke-direct {v8, p0, p2}, Landroid/widget/OplusCursorFeedbackManager$8;-><init>(Landroid/widget/OplusCursorFeedbackManager;Landroid/widget/Editor;)V

    invoke-virtual {v0, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 315
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 316
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
.method public blacklist editorDetachFromWindow(Landroid/widget/Editor;)V
    .locals 2
    .param p1, "editor"    # Landroid/widget/Editor;

    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "editorDetachFromWindow "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/OplusCursorFeedbackManager;->log(Ljava/lang/String;)V

    .line 536
    iget-object v0, p0, Landroid/widget/OplusCursorFeedbackManager;->mEditorRef:Ljava/lang/ref/SoftReference;

    if-nez v0, :cond_0

    .line 537
    return-void

    .line 540
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 541
    return-void

    .line 544
    :cond_1
    iget-object v0, p0, Landroid/widget/OplusCursorFeedbackManager;->mEditorRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_2

    .line 545
    return-void

    .line 548
    :cond_2
    invoke-direct {p0}, Landroid/widget/OplusCursorFeedbackManager;->clear()V

    .line 549
    return-void
.end method

.method public blacklist getExtraCursorWidth(Landroid/widget/Editor;)I
    .locals 1
    .param p1, "editor"    # Landroid/widget/Editor;

    .line 128
    const-string v0, "getExtraCursorWidth"

    invoke-direct {p0, v0}, Landroid/widget/OplusCursorFeedbackManager;->log(Ljava/lang/String;)V

    .line 129
    invoke-direct {p0}, Landroid/widget/OplusCursorFeedbackManager;->getExtraCursorWidth()I

    move-result v0

    .line 130
    .local v0, "extraWidth":I
    return v0
.end method

.method public blacklist getExtraLeftOffset(Landroid/widget/Editor;)I
    .locals 3
    .param p1, "editor"    # Landroid/widget/Editor;

    .line 135
    const-string v0, "getExtraLeftOffset"

    invoke-direct {p0, v0}, Landroid/widget/OplusCursorFeedbackManager;->log(Ljava/lang/String;)V

    .line 136
    invoke-direct {p0}, Landroid/widget/OplusCursorFeedbackManager;->getExtraCursorLeftOffset()I

    move-result v0

    .line 137
    .local v0, "extraOffset":I
    invoke-virtual {p1}, Landroid/widget/Editor;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->isLayoutRtl()Z

    move-result v1

    .line 138
    .local v1, "isRtl":Z
    if-eqz v1, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    mul-int/2addr v0, v2

    .line 139
    return v0
.end method

.method public blacklist handleKeyCodeDelDown(Landroid/widget/Editor;Landroid/view/KeyEvent;)V
    .locals 8
    .param p1, "editor"    # Landroid/widget/Editor;
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;

    .line 492
    const-string v0, "handleKeyCodeDelDown"

    invoke-direct {p0, v0}, Landroid/widget/OplusCursorFeedbackManager;->log(Ljava/lang/String;)V

    .line 493
    if-nez p1, :cond_0

    .line 494
    return-void

    .line 497
    :cond_0
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/widget/OplusCursorFeedbackManager;->mEditorRef:Ljava/lang/ref/SoftReference;

    .line 498
    invoke-virtual {p1}, Landroid/widget/Editor;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    .line 499
    .local v0, "textView":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 501
    .local v1, "text":Ljava/lang/CharSequence;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 503
    return-void

    .line 506
    :cond_1
    iget-object v2, p0, Landroid/widget/OplusCursorFeedbackManager;->mHandler:Landroid/os/Handler;

    if-nez v2, :cond_2

    .line 507
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/widget/OplusCursorFeedbackManager;->mHandler:Landroid/os/Handler;

    .line 510
    :cond_2
    iget-object v2, p0, Landroid/widget/OplusCursorFeedbackManager;->mStopCursorRunnable:Landroid/widget/OplusCursorFeedbackManager$StopCursorRunnable;

    if-nez v2, :cond_3

    .line 511
    new-instance v2, Landroid/widget/OplusCursorFeedbackManager$StopCursorRunnable;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/widget/OplusCursorFeedbackManager$StopCursorRunnable;-><init>(Landroid/widget/OplusCursorFeedbackManager;Landroid/widget/OplusCursorFeedbackManager$StopCursorRunnable-IA;)V

    iput-object v2, p0, Landroid/widget/OplusCursorFeedbackManager;->mStopCursorRunnable:Landroid/widget/OplusCursorFeedbackManager$StopCursorRunnable;

    .line 514
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 515
    .local v2, "currentTime":J
    iget-wide v4, p0, Landroid/widget/OplusCursorFeedbackManager;->mLastKeyCodeDelDownTime:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x362

    cmp-long v4, v4, v6

    if-gez v4, :cond_4

    .line 516
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/widget/OplusCursorFeedbackManager;->mKeepDeleting:Z

    goto :goto_0

    .line 518
    :cond_4
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/widget/OplusCursorFeedbackManager;->mKeepDeleting:Z

    .line 520
    :goto_0
    iput-wide v2, p0, Landroid/widget/OplusCursorFeedbackManager;->mLastKeyCodeDelDownTime:J

    .line 522
    iget-boolean v4, p0, Landroid/widget/OplusCursorFeedbackManager;->mKeepDeleting:Z

    if-nez v4, :cond_5

    .line 523
    invoke-virtual {p0, p1}, Landroid/widget/OplusCursorFeedbackManager;->startCursorAnimator(Landroid/widget/Editor;)V

    .line 524
    iget-object v4, p0, Landroid/widget/OplusCursorFeedbackManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Landroid/widget/OplusCursorFeedbackManager;->mStopCursorRunnable:Landroid/widget/OplusCursorFeedbackManager$StopCursorRunnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 525
    iget-object v4, p0, Landroid/widget/OplusCursorFeedbackManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Landroid/widget/OplusCursorFeedbackManager;->mStopCursorRunnable:Landroid/widget/OplusCursorFeedbackManager$StopCursorRunnable;

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 527
    :cond_5
    return-void
.end method

.method public blacklist handleKeyCodeDelUp(Landroid/widget/Editor;Landroid/view/KeyEvent;)V
    .locals 0
    .param p1, "editor"    # Landroid/widget/Editor;
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;

    .line 531
    return-void
.end method

.method public blacklist refreshCursorRenderTime(Landroid/widget/Editor;)Z
    .locals 3
    .param p1, "editor"    # Landroid/widget/Editor;

    .line 118
    iget v0, p0, Landroid/widget/OplusCursorFeedbackManager;->mCursorWidthAnimatorRatio:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 119
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 120
    .local v0, "currTime":J
    invoke-virtual {p1}, Landroid/widget/Editor;->getWrapper()Landroid/widget/IEditorWrapper;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Landroid/widget/IEditorWrapper;->setShowCursor(J)V

    .line 121
    const/4 v2, 0x1

    return v2

    .line 123
    .end local v0    # "currTime":J
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist startCursorAnimator(Landroid/widget/Editor;)V
    .locals 4
    .param p1, "editor"    # Landroid/widget/Editor;

    .line 426
    const-string v0, "startCursorAnimator"

    invoke-direct {p0, v0}, Landroid/widget/OplusCursorFeedbackManager;->log(Ljava/lang/String;)V

    .line 427
    iget-object v0, p0, Landroid/widget/OplusCursorFeedbackManager;->mCursorAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    return-void

    .line 431
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 432
    invoke-virtual {p1}, Landroid/widget/Editor;->getWrapper()Landroid/widget/IEditorWrapper;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/IEditorWrapper;->suspendBlink()V

    .line 433
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 435
    .local v0, "emptyAnimator":Landroid/animation/ValueAnimator;
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Landroid/widget/OplusCursorFeedbackManager;->mCursorAnimatorSet:Landroid/animation/AnimatorSet;

    .line 436
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 437
    .local v1, "builder":Landroid/animation/AnimatorSet$Builder;
    invoke-direct {p0, v1, p1}, Landroid/widget/OplusCursorFeedbackManager;->startCursorOffsetAnimator(Landroid/animation/AnimatorSet$Builder;Landroid/widget/Editor;)V

    .line 438
    invoke-direct {p0, v1, p1}, Landroid/widget/OplusCursorFeedbackManager;->startCursorColorAnimator(Landroid/animation/AnimatorSet$Builder;Landroid/widget/Editor;)V

    .line 439
    invoke-direct {p0, v1, p1}, Landroid/widget/OplusCursorFeedbackManager;->startCursorWidthAnimator(Landroid/animation/AnimatorSet$Builder;Landroid/widget/Editor;)V

    .line 441
    iget-object v2, p0, Landroid/widget/OplusCursorFeedbackManager;->mCursorAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v3, Landroid/widget/OplusCursorFeedbackManager$13;

    invoke-direct {v3, p0, p1}, Landroid/widget/OplusCursorFeedbackManager$13;-><init>(Landroid/widget/OplusCursorFeedbackManager;Landroid/widget/Editor;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 464
    iget-object v2, p0, Landroid/widget/OplusCursorFeedbackManager;->mCursorAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 466
    .end local v0    # "emptyAnimator":Landroid/animation/ValueAnimator;
    .end local v1    # "builder":Landroid/animation/AnimatorSet$Builder;
    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method public blacklist stopCursorAnimator(Landroid/widget/Editor;)V
    .locals 2
    .param p1, "editor"    # Landroid/widget/Editor;

    .line 470
    const-string v0, "stopCursorAnimator"

    invoke-direct {p0, v0}, Landroid/widget/OplusCursorFeedbackManager;->log(Ljava/lang/String;)V

    .line 471
    iget-object v0, p0, Landroid/widget/OplusCursorFeedbackManager;->mCursorAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Landroid/widget/OplusCursorFeedbackManager;->mCursorAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 474
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/OplusCursorFeedbackManager;->mCursorHorizontalOffsetAnimatorRatio:F

    .line 475
    iput v0, p0, Landroid/widget/OplusCursorFeedbackManager;->mCursorWidthAnimatorRatio:F

    .line 476
    iput v0, p0, Landroid/widget/OplusCursorFeedbackManager;->mCursorColorAnimatorRatio:F

    .line 478
    if-nez p1, :cond_1

    .line 479
    return-void

    .line 482
    :cond_1
    invoke-virtual {p1}, Landroid/widget/Editor;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    .line 483
    .local v0, "textView":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 484
    invoke-virtual {p1}, Landroid/widget/Editor;->updateCursorPosition()V

    .line 485
    invoke-virtual {v0}, Landroid/widget/TextView;->invalidateCursorPath()V

    .line 487
    :cond_2
    invoke-virtual {p1}, Landroid/widget/Editor;->getWrapper()Landroid/widget/IEditorWrapper;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/IEditorWrapper;->resumeBlink()V

    .line 488
    return-void
.end method
