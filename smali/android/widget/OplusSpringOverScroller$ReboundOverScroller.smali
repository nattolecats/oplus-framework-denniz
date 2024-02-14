.class Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;
.super Ljava/lang/Object;
.source "OplusSpringOverScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/OplusSpringOverScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReboundOverScroller"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;,
        Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;
    }
.end annotation


# static fields
.field private static final blacklist BALLISTIC:I = 0x2

.field private static final blacklist CUBIC:I = 0x1

.field private static final blacklist FLING_CHANGE_INCREASE_STEP:F = 1.2f

.field private static final blacklist FLING_CHANGE_REDUCE_STEP:F = 0.6f

.field private static final blacklist FLING_DXDT_RATIO:F = 0.167f

.field private static final blacklist FLING_FRICTION_DIVISOR:D = 10000.0

.field private static final blacklist FLOAT_1:F = 1.0f

.field private static final blacklist FLOAT_2:F = 2.0f

.field private static final blacklist GRAVITY:F = 2000.0f

.field private static final blacklist INCREASE_FRICTION_COEF:D = 0.00125

.field private static final blacklist MAX_VELOCITY_ADJUST_FRICTION:D = 10000.0

.field private static final blacklist MID_FLING_BASE_FRICTION:D = 2.6

.field private static final blacklist MID_VELOCITY_ADJUST_FRICTION:D = 4000.0

.field private static final blacklist MIN_FLING_FRICTION_REDUCE:D = 2.0

.field private static final blacklist MIN_VELOCITY_ADJUST_FRICTION:D = 1000.0

.field private static final blacklist NUM_5:I = 0x5

.field private static final blacklist NUM_60:I = 0x3c

.field private static final blacklist REDUCE_FRICTION_COEF:D = 0.00125

.field private static final blacklist SLOW_FLING_BASE_FRICTION:D = 4.5

.field private static final blacklist SPLINE:I = 0x0

.field private static final blacklist SPRING_BACK_ADJUST_TENSION_VALUE:I = 0x64

.field private static final blacklist SPRING_BACK_ADJUST_THRESHOLD:I = 0xb4

.field private static final blacklist SPRING_BACK_FRICTION:F = 12.19f

.field private static final blacklist SPRING_BACK_STOP_THRESHOLD:I = 0x2

.field private static final blacklist SPRING_BACK_TENSION:F = 16.0f

.field private static final blacklist TIME_ADJUST_FRICTION:J = 0x1e0L

.field private static final blacklist VELOCITY_REDUCE_FRICTION:D = 2000.0

.field private static final blacklist sTimeIncrease:F = 1.0f


# instance fields
.field private blacklist mConfig:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;

.field private blacklist mCurrentState:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

.field private blacklist mDeceleration:F

.field private blacklist mDisplacementFromRestThreshold:D

.field private blacklist mDuration:I

.field private blacklist mFinal:D

.field private blacklist mFinished:Z

.field private blacklist mFlingConfig:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;

.field private blacklist mFlingFriction:F

.field private blacklist mIsSpringBack:Z

.field private blacklist mMax:I

.field private blacklist mMin:I

.field private blacklist mOplusCount:I

.field private blacklist mOplusSlideAnimOptHelper:Landroid/view/OplusSlideAnimOptHelper;

.field private blacklist mOver:I

.field private blacklist mPreviousState:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

.field private blacklist mRestSpeedThreshold:D

.field private blacklist mScrollerName:Ljava/lang/String;

.field private blacklist mSplineDistance:I

.field private blacklist mSplineDuration:I

.field private blacklist mSpringBackConfig:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;

.field private blacklist mSpringBackTensionMultiple:F

.field private blacklist mStart:I

.field private blacklist mStartTime:J

.field private blacklist mState:I

.field private blacklist mTempState:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

.field private blacklist mTensionAdjusted:Z

.field private blacklist mVelocity:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDuration(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;)I
    .locals 0

    iget p0, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mDuration:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFinal(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;)D
    .locals 2

    iget-wide v0, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mFinal:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFinished(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mFinished:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStart(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;)I
    .locals 0

    iget p0, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mStart:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStartTime(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;)J
    .locals 2

    iget-wide v0, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mStartTime:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmState(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;)I
    .locals 0

    iget p0, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mState:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFinished(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mFinished:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFlingFriction(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;F)V
    .locals 0

    iput p1, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mFlingFriction:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcontinueWhenFinished(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;)Z
    .locals 0

    invoke-direct {p0}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->continueWhenFinished()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mextendDuration(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->extendDuration(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mfinish(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->finish()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mfling(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;IIIII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->fling(IIIII)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetCurrentValue(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;)D
    .locals 2

    invoke-direct {p0}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->getCurrentValue()D

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetEndValue(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;)D
    .locals 2

    invoke-direct {p0}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->getEndValue()D

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetVelocity(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;)D
    .locals 2

    invoke-direct {p0}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->getVelocity()D

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$misFinished(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;)Z
    .locals 0

    invoke-direct {p0}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->isFinished()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyEdgeReached(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->notifyEdgeReached(III)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetEndValue(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;D)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->setEndValue(D)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetFriction(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;F)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->setFriction(F)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetScrollerName(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->setScrollerName(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mspringBack(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;III)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->springBack(III)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mstartScroll(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->startScroll(III)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdate(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;)Z
    .locals 0

    invoke-direct {p0}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->update()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateScroll(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;F)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->updateScroll(F)V

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 15

    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 379
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mState:I

    .line 382
    const v0, 0x3ea3d70a    # 0.32f

    iput v0, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mFlingFriction:F

    .line 383
    const-wide/high16 v1, 0x4014000000000000L    # 5.0

    iput-wide v1, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mRestSpeedThreshold:D

    .line 384
    const-wide v1, 0x3fa999999999999aL    # 0.05

    iput-wide v1, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mDisplacementFromRestThreshold:D

    .line 394
    const/4 v1, 0x1

    iput v1, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mOplusCount:I

    .line 399
    const v2, 0x3f547ae1    # 0.83f

    iput v2, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mSpringBackTensionMultiple:F

    .line 404
    new-instance v2, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;

    float-to-double v4, v0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;-><init>(DDLandroid/widget/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig-IA;)V

    iput-object v2, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mFlingConfig:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;

    .line 405
    new-instance v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;

    const-wide v10, 0x40286147a0000000L    # 12.1899995803833

    const-wide/high16 v12, 0x4030000000000000L    # 16.0

    const/4 v14, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v14}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;-><init>(DDLandroid/widget/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig-IA;)V

    iput-object v0, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mSpringBackConfig:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;

    .line 407
    new-instance v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;-><init>(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState-IA;)V

    iput-object v0, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mCurrentState:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    .line 408
    new-instance v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    invoke-direct {v0, v2}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;-><init>(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState-IA;)V

    iput-object v0, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mPreviousState:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    .line 409
    new-instance v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    invoke-direct {v0, v2}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;-><init>(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState-IA;)V

    iput-object v0, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mTempState:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    .line 414
    iput-object v2, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mOplusSlideAnimOptHelper:Landroid/view/OplusSlideAnimOptHelper;

    .line 418
    iget-object v0, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mFlingConfig:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;

    invoke-direct {p0, v0}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->setConfig(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;)V

    .line 419
    iput-boolean v1, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mFinished:Z

    .line 420
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;-><init>()V

    return-void
.end method

.method private blacklist adjustDuration()V
    .locals 4

    .line 485
    iget-wide v0, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mFinal:D

    double-to-int v0, v0

    invoke-direct {p0, v0}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->calculateFinalPosition(I)[I

    move-result-object v0

    .line 486
    .local v0, "simulateResult":[I
    const/4 v1, 0x1

    aget v1, v0, v1

    int-to-float v1, v1

    .line 487
    .local v1, "duration":F
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " adjustDuration old duration "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mDuration:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " new duration = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " splineDuration = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mSplineDuration:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/widget/OplusSpringOverScroller;->-$$Nest$smlog(Ljava/lang/String;)V

    .line 490
    float-to-int v2, v1

    iput v2, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mDuration:I

    .line 491
    return-void
.end method

.method private blacklist adjustFrictionByStartVelocity()V
    .locals 6

    .line 899
    iget-boolean v0, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mIsSpringBack:Z

    if-nez v0, :cond_1

    .line 900
    iget v0, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mOplusCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 901
    iget-object v0, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mCurrentState:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v0, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mVelocity:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x40af400000000000L    # 4000.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mCurrentState:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v0, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mVelocity:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v4, 0x40c3880000000000L    # 10000.0

    cmpg-double v0, v0, v4

    if-gez v0, :cond_0

    .line 902
    iget-object v0, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mConfig:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;

    const-wide v1, 0x4004cccccccccccdL    # 2.6

    iput-wide v1, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;->mFriction:D

    goto :goto_0

    .line 903
    :cond_0
    iget-object v0, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mCurrentState:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v0, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mVelocity:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_1

    .line 904
    iget-object v0, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mConfig:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;

    const-wide/high16 v1, 0x4012000000000000L    # 4.5

    iput-wide v1, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;->mFriction:D

    .line 908
    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist calculateFinalPosition(I)[I
    .locals 19
    .param p1, "finalValue"    # I

    .line 730
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mCurrentState:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v2, v2, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    double-to-int v2, v2

    .line 731
    .local v2, "savedPosition":I
    iget-object v3, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mCurrentState:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v3, v3, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mVelocity:D

    double-to-int v3, v3

    .line 732
    .local v3, "savedVelocity":I
    iget v4, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mOplusCount:I

    .line 733
    .local v4, "savedFrameCount":I
    invoke-direct/range {p0 .. p0}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->isFinished()Z

    move-result v5

    .line 734
    .local v5, "savedFinished":Z
    iget-object v6, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mTempState:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    const-wide/16 v7, 0x0

    iput-wide v7, v6, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    .line 735
    iget-object v6, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mTempState:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    iput-wide v7, v6, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mVelocity:D

    .line 736
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " calculateFinalPosition finalValue "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " savedPosition "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " savedVelocity "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/widget/OplusSpringOverScroller;->-$$Nest$smlog(Ljava/lang/String;)V

    .line 739
    const v6, 0x3c03126f    # 0.008f

    invoke-static {v6}, Landroid/widget/OplusSpringOverScroller;->-$$Nest$sfputmRefreshTime(F)V

    .line 741
    const/4 v9, 0x1

    iput v9, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mOplusCount:I

    .line 742
    :goto_0
    invoke-direct/range {p0 .. p0}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->isFinished()Z

    move-result v10

    if-nez v10, :cond_4

    .line 743
    iget-object v10, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mCurrentState:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v10, v10, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    .line 744
    .local v10, "originPosition":D
    invoke-direct {v0, v9}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->calculateOnceWithRebound(Z)V

    .line 745
    iget-object v12, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mCurrentState:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v12, v12, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    .line 746
    .local v12, "newPosition":D
    sub-double v14, v12, v10

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    .line 747
    .local v14, "deltaPosition":D
    invoke-direct/range {p0 .. p0}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->lostVelocity()Z

    move-result v16

    if-eqz v16, :cond_0

    .line 748
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " calculateFinalPosition lostVelocity"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/widget/OplusSpringOverScroller;->-$$Nest$smlog(Ljava/lang/String;)V

    .line 749
    iput-boolean v9, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mFinished:Z

    .line 752
    :cond_0
    const-wide v6, 0x3fb999999999999aL    # 0.1

    cmpg-double v6, v14, v6

    if-gez v6, :cond_1

    .line 753
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " calculateFinalPosition deltaPosition < 0.1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/widget/OplusSpringOverScroller;->-$$Nest$smlog(Ljava/lang/String;)V

    .line 754
    iput-boolean v9, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mFinished:Z

    .line 757
    :cond_1
    const/4 v6, -0x1

    if-eq v1, v6, :cond_2

    .line 758
    int-to-double v6, v1

    sub-double v6, v10, v6

    move-wide/from16 v17, v10

    .end local v10    # "originPosition":D
    .local v17, "originPosition":D
    int-to-double v9, v1

    sub-double v9, v12, v9

    mul-double/2addr v6, v9

    const-wide/16 v9, 0x0

    cmpg-double v6, v6, v9

    if-gtz v6, :cond_3

    .line 759
    iget-object v6, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mCurrentState:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v9, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mFinal:D

    iput-wide v9, v6, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    .line 760
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " calculateFinalPosition reaching edge "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v9, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mFinal:D

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/widget/OplusSpringOverScroller;->-$$Nest$smlog(Ljava/lang/String;)V

    .line 761
    const/4 v6, 0x1

    iput-boolean v6, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mFinished:Z

    goto :goto_1

    .line 757
    .end local v17    # "originPosition":D
    .restart local v10    # "originPosition":D
    :cond_2
    move-wide/from16 v17, v10

    .line 764
    .end local v10    # "originPosition":D
    .end local v12    # "newPosition":D
    .end local v14    # "deltaPosition":D
    :cond_3
    :goto_1
    const v6, 0x3c03126f    # 0.008f

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    goto/16 :goto_0

    .line 766
    :cond_4
    iget-object v6, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mCurrentState:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v6, v6, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    double-to-int v6, v6

    .line 767
    .local v6, "resultPosition":I
    iget v7, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mOplusCount:I

    int-to-float v7, v7

    invoke-static {}, Landroid/widget/OplusSpringOverScroller;->-$$Nest$sfgetmRefreshTime()F

    move-result v9

    mul-float/2addr v7, v9

    const/high16 v9, 0x447a0000    # 1000.0f

    mul-float/2addr v7, v9

    float-to-int v7, v7

    .line 768
    .local v7, "resultDuration":I
    iget-object v9, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mCurrentState:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    int-to-double v10, v2

    iput-wide v10, v9, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    .line 769
    iget-object v9, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mCurrentState:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    int-to-double v10, v3

    iput-wide v10, v9, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mVelocity:D

    .line 770
    iput v4, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mOplusCount:I

    .line 771
    const v9, 0x3c03126f    # 0.008f

    invoke-static {v9}, Landroid/widget/OplusSpringOverScroller;->-$$Nest$sfputmRefreshTime(F)V

    .line 772
    iget-object v9, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mTempState:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    const-wide/16 v10, 0x0

    iput-wide v10, v9, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    .line 773
    iget-object v9, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mTempState:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    iput-wide v10, v9, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mVelocity:D

    .line 774
    iput-boolean v5, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mFinished:Z

    .line 775
    const/4 v9, 0x2

    new-array v9, v9, [I

    const/4 v10, 0x0

    aput v6, v9, v10

    const/4 v8, 0x1

    aput v7, v9, v8

    return-object v9
.end method

.method private blacklist calculateOnceWithRebound(Z)V
    .locals 35
    .param p1, "simulate"    # Z

    .line 830
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mCurrentState:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v1, v1, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    .line 831
    .local v1, "position":D
    iget-object v3, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mCurrentState:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v3, v3, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mVelocity:D

    .line 832
    .local v3, "velocity":D
    iget-object v5, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mTempState:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v5, v5, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    .line 833
    .local v5, "tempPosition":D
    iget-object v7, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mTempState:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v7, v7, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mVelocity:D

    .line 834
    .local v7, "tempVelocity":D
    const-wide/16 v9, 0x0

    .line 835
    .local v9, "aVelocity":D
    const-wide/16 v11, 0x0

    .line 836
    .local v11, "aAcceleration":D
    const-wide/16 v13, 0x0

    .line 837
    .local v13, "bVelocity":D
    const-wide/16 v15, 0x0

    .line 838
    .local v15, "bAcceleration":D
    const-wide/16 v17, 0x0

    .line 839
    .local v17, "cVelocity":D
    const-wide/16 v19, 0x0

    .line 840
    .local v19, "cAcceleration":D
    const-wide/16 v21, 0x0

    .line 841
    .local v21, "dVelocity":D
    const-wide/16 v23, 0x0

    .line 842
    .local v23, "dAcceleration":D
    const-wide/16 v25, 0x0

    .line 843
    .local v25, "dxdt":D
    const-wide/16 v27, 0x0

    .line 845
    .local v27, "dvdt":D
    invoke-direct/range {p0 .. p0}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->adjustFrictionByStartVelocity()V

    .line 847
    if-nez p1, :cond_0

    .line 848
    move-wide/from16 v29, v7

    .end local v7    # "tempVelocity":D
    .local v29, "tempVelocity":D
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "<<<< calculateOnceWithRebound start mFinal "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v31, v9

    .end local v9    # "aVelocity":D
    .local v31, "aVelocity":D
    iget-wide v8, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mFinal:D

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " tempPosition "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mConfig.mTension "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mConfig:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;

    iget-wide v8, v8, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;->mTension:D

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mConfig.mFriction "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mConfig:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;

    iget-wide v8, v8, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;->mFriction:D

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mRefreshTime "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/widget/OplusSpringOverScroller;->-$$Nest$sfgetmRefreshTime()F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " velocity = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " position = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mFinal = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mFinal:D

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/widget/OplusSpringOverScroller;->-$$Nest$smlog(Ljava/lang/String;)V

    goto :goto_0

    .line 847
    .end local v29    # "tempVelocity":D
    .end local v31    # "aVelocity":D
    .restart local v7    # "tempVelocity":D
    .restart local v9    # "aVelocity":D
    :cond_0
    move-wide/from16 v29, v7

    move-wide/from16 v31, v9

    .line 858
    .end local v7    # "tempVelocity":D
    .end local v9    # "aVelocity":D
    .restart local v29    # "tempVelocity":D
    .restart local v31    # "aVelocity":D
    :goto_0
    move-wide v7, v3

    .line 859
    .end local v31    # "aVelocity":D
    .local v7, "aVelocity":D
    iget-object v9, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mConfig:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;

    iget-wide v9, v9, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;->mTension:D

    move-wide/from16 v31, v11

    .end local v11    # "aAcceleration":D
    .local v31, "aAcceleration":D
    iget-wide v11, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mFinal:D

    sub-double/2addr v11, v5

    mul-double/2addr v9, v11

    .line 861
    .end local v31    # "aAcceleration":D
    .local v9, "aAcceleration":D
    invoke-static {}, Landroid/widget/OplusSpringOverScroller;->-$$Nest$sfgetmRefreshTime()F

    move-result v11

    float-to-double v11, v11

    mul-double/2addr v11, v7

    const-wide/high16 v31, 0x4000000000000000L    # 2.0

    div-double v11, v11, v31

    add-double/2addr v11, v1

    .line 862
    .end local v5    # "tempPosition":D
    .local v11, "tempPosition":D
    invoke-static {}, Landroid/widget/OplusSpringOverScroller;->-$$Nest$sfgetmRefreshTime()F

    move-result v5

    float-to-double v5, v5

    mul-double/2addr v5, v9

    div-double v5, v5, v31

    add-double/2addr v5, v3

    .line 863
    .end local v29    # "tempVelocity":D
    .local v5, "tempVelocity":D
    move-wide v13, v5

    .line 864
    move-wide/from16 v29, v15

    .end local v15    # "bAcceleration":D
    .local v29, "bAcceleration":D
    iget-object v15, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mConfig:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;

    move-wide/from16 v33, v9

    .end local v9    # "aAcceleration":D
    .local v33, "aAcceleration":D
    iget-wide v9, v15, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;->mTension:D

    move-wide v15, v7

    .end local v7    # "aVelocity":D
    .local v15, "aVelocity":D
    iget-wide v7, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mFinal:D

    sub-double/2addr v7, v11

    mul-double/2addr v9, v7

    iget-object v7, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mConfig:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;

    iget-wide v7, v7, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;->mFriction:D

    mul-double/2addr v7, v5

    sub-double/2addr v9, v7

    .line 866
    .end local v29    # "bAcceleration":D
    .local v9, "bAcceleration":D
    invoke-static {}, Landroid/widget/OplusSpringOverScroller;->-$$Nest$sfgetmRefreshTime()F

    move-result v7

    float-to-double v7, v7

    mul-double/2addr v7, v13

    div-double v7, v7, v31

    add-double/2addr v7, v1

    .line 867
    .end local v11    # "tempPosition":D
    .local v7, "tempPosition":D
    invoke-static {}, Landroid/widget/OplusSpringOverScroller;->-$$Nest$sfgetmRefreshTime()F

    move-result v11

    float-to-double v11, v11

    mul-double/2addr v11, v9

    div-double v11, v11, v31

    add-double/2addr v11, v3

    .line 868
    .end local v5    # "tempVelocity":D
    .local v11, "tempVelocity":D
    move-wide v5, v11

    .line 869
    .end local v17    # "cVelocity":D
    .local v5, "cVelocity":D
    move-wide/from16 v17, v9

    .end local v9    # "bAcceleration":D
    .local v17, "bAcceleration":D
    iget-object v9, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mConfig:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;

    iget-wide v9, v9, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;->mTension:D

    move-wide/from16 v29, v13

    .end local v13    # "bVelocity":D
    .local v29, "bVelocity":D
    iget-wide v13, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mFinal:D

    sub-double/2addr v13, v7

    mul-double/2addr v9, v13

    iget-object v13, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mConfig:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;

    iget-wide v13, v13, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;->mFriction:D

    mul-double/2addr v13, v11

    sub-double/2addr v9, v13

    .line 871
    .end local v19    # "cAcceleration":D
    .local v9, "cAcceleration":D
    invoke-static {}, Landroid/widget/OplusSpringOverScroller;->-$$Nest$sfgetmRefreshTime()F

    move-result v13

    float-to-double v13, v13

    mul-double/2addr v13, v5

    add-double/2addr v13, v1

    .line 872
    .end local v7    # "tempPosition":D
    .local v13, "tempPosition":D
    invoke-static {}, Landroid/widget/OplusSpringOverScroller;->-$$Nest$sfgetmRefreshTime()F

    move-result v7

    float-to-double v7, v7

    mul-double/2addr v7, v9

    add-double/2addr v7, v3

    .line 873
    .end local v11    # "tempVelocity":D
    .local v7, "tempVelocity":D
    move-wide v11, v7

    .line 874
    .end local v21    # "dVelocity":D
    .local v11, "dVelocity":D
    move-wide/from16 v19, v3

    .end local v3    # "velocity":D
    .local v19, "velocity":D
    iget-object v3, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mConfig:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;

    iget-wide v3, v3, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;->mTension:D

    move-wide/from16 v21, v1

    .end local v1    # "position":D
    .local v21, "position":D
    iget-wide v1, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mFinal:D

    sub-double/2addr v1, v13

    mul-double/2addr v3, v1

    iget-object v1, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mConfig:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;

    iget-wide v1, v1, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;->mFriction:D

    mul-double/2addr v1, v7

    sub-double/2addr v3, v1

    .line 876
    .end local v23    # "dAcceleration":D
    .local v3, "dAcceleration":D
    add-double v1, v29, v5

    mul-double v1, v1, v31

    add-double/2addr v1, v15

    add-double/2addr v1, v11

    const-wide v23, 0x3fc5604180000000L    # 0.16699999570846558

    mul-double v1, v1, v23

    .line 877
    .end local v25    # "dxdt":D
    .local v1, "dxdt":D
    add-double v25, v17, v9

    mul-double v25, v25, v31

    add-double v25, v33, v25

    add-double v25, v25, v3

    mul-double v25, v25, v23

    .line 879
    .end local v27    # "dvdt":D
    .local v25, "dvdt":D
    move-wide/from16 v23, v3

    .end local v3    # "dAcceleration":D
    .restart local v23    # "dAcceleration":D
    invoke-static {}, Landroid/widget/OplusSpringOverScroller;->-$$Nest$sfgetmRefreshTime()F

    move-result v3

    float-to-double v3, v3

    mul-double/2addr v3, v1

    add-double v3, v21, v3

    .line 880
    .end local v21    # "position":D
    .local v3, "position":D
    move-wide/from16 v21, v1

    .end local v1    # "dxdt":D
    .local v21, "dxdt":D
    invoke-static {}, Landroid/widget/OplusSpringOverScroller;->-$$Nest$sfgetmRefreshTime()F

    move-result v1

    float-to-double v1, v1

    mul-double v1, v1, v25

    add-double v1, v19, v1

    .line 882
    .end local v19    # "velocity":D
    .local v1, "velocity":D
    move-wide/from16 v19, v5

    .end local v5    # "cVelocity":D
    .local v19, "cVelocity":D
    iget-object v5, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mTempState:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    iput-wide v7, v5, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mVelocity:D

    .line 883
    iget-object v5, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mTempState:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    iput-wide v13, v5, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    .line 886
    iget-object v5, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mCurrentState:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    iput-wide v1, v5, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mVelocity:D

    .line 887
    iget-object v5, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mCurrentState:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    iput-wide v3, v5, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    .line 889
    iget v5, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mOplusCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mOplusCount:I

    .line 891
    if-nez p1, :cond_1

    .line 892
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "calculateOnceWithRebound end velocity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " position "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " OplusCount "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mOplusCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " >>>>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/widget/OplusSpringOverScroller;->-$$Nest$smlog(Ljava/lang/String;)V

    .line 896
    :cond_1
    return-void
.end method

.method private blacklist continueWhenFinished()Z
    .locals 6

    .line 576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "continueWhenFinished"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/widget/OplusSpringOverScroller;->-$$Nest$smlog(Ljava/lang/String;)V

    .line 577
    iget v0, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mState:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 593
    :pswitch_0
    iget-wide v2, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mStartTime:J

    iget v0, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mDuration:I

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mStartTime:J

    .line 594
    iget-wide v2, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mFinal:D

    double-to-int v0, v2

    iget v2, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mStart:I

    invoke-direct {p0, v0, v2, v1}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->startSpringBack(III)V

    .line 595
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "BALLISTIC continue"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/widget/OplusSpringOverScroller;->-$$Nest$smlog(Ljava/lang/String;)V

    .line 596
    goto :goto_0

    .line 598
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "CUBIC stop"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/widget/OplusSpringOverScroller;->-$$Nest$smlog(Ljava/lang/String;)V

    .line 599
    return v1

    .line 579
    :pswitch_2
    iget v0, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mDuration:I

    iget v2, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mSplineDuration:I

    if-ge v0, v2, :cond_0

    .line 580
    iget-wide v1, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mStartTime:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mStartTime:J

    .line 581
    iget-object v0, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mCurrentState:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v1, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mFinal:D

    iput-wide v1, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    .line 582
    iget-wide v0, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mFinal:D

    double-to-int v0, v0

    iput v0, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mStart:I

    .line 583
    iget-object v0, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mCurrentState:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v0, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mVelocity:D

    double-to-int v0, v0

    iput v0, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mVelocity:I

    .line 584
    invoke-static {v0}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->getDeceleration(I)F

    move-result v0

    iput v0, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mDeceleration:F

    .line 585
    invoke-direct {p0}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->onEdgeReached()V

    .line 586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SPLINE continue"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/widget/OplusSpringOverScroller;->-$$Nest$smlog(Ljava/lang/String;)V

    goto :goto_0

    .line 588
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "SPLINE stop"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/widget/OplusSpringOverScroller;->-$$Nest$smlog(Ljava/lang/String;)V

    .line 589
    return v1

    .line 602
    :goto_0
    invoke-direct {p0}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->update()Z

    .line 603
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist extendDuration(I)V
    .locals 4
    .param p1, "extend"    # I

    .line 531
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 532
    .local v0, "time":J
    iget-wide v2, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mStartTime:J

    sub-long v2, v0, v2

    long-to-int v2, v2

    .line 533
    .local v2, "elapsedTime":I
    add-int v3, v2, p1

    iput v3, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mSplineDuration:I

    iput v3, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mDuration:I

    .line 534
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mFinished:Z

    .line 535
    return-void
.end method

.method private blacklist finish()V
    .locals 3

    .line 696
    iget-object v0, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mCurrentState:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v1, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mFinal:D

    iput-wide v1, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    .line 697
    iget-object v0, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mTempState:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-object v1, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mCurrentState:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v1, v1, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    iput-wide v1, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    .line 698
    iget-object v0, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mCurrentState:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mVelocity:D

    .line 699
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mIsSpringBack:Z

    .line 700
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mFinished:Z

    .line 704
    invoke-direct {p0, p0}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->updateScrollerStateToIdle(Ljava/lang/Object;)V

    .line 706
    return-void
.end method

.method private blacklist fitOnBounceCurve(III)V
    .locals 9
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "velocity"    # I

    .line 539
    neg-int v0, p3

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mDeceleration:F

    div-float/2addr v0, v1

    .line 541
    .local v0, "durationToApex":F
    int-to-float v2, p3

    int-to-float v3, p3

    mul-float/2addr v2, v3

    .line 542
    .local v2, "velocitySquared":F
    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v2, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v3, v1

    .line 543
    .local v3, "distanceToApex":F
    sub-int v1, p2, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    .line 544
    .local v1, "distanceToEdge":F
    add-float v4, v3, v1

    float-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v6

    iget v6, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mDeceleration:F

    .line 545
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-double v6, v6

    div-double/2addr v4, v6

    .line 544
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 546
    .local v4, "totalDuration":F
    iget-wide v5, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mStartTime:J

    sub-float v7, v4, v0

    const/high16 v8, 0x447a0000    # 1000.0f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    int-to-long v7, v7

    sub-long/2addr v5, v7

    iput-wide v5, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mStartTime:J

    .line 547
    iget-object v5, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mCurrentState:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    iput p2, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mStart:I

    int-to-double v6, p2

    iput-wide v6, v5, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    .line 548
    iget-object v5, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mCurrentState:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    iget v6, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mDeceleration:F

    neg-float v6, v6

    mul-float/2addr v6, v4

    float-to-int v6, v6

    int-to-double v6, v6

    iput-wide v6, v5, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mVelocity:D

    .line 549
    return-void
.end method

.method private blacklist fling(IIIII)V
    .locals 15
    .param p1, "start"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I
    .param p4, "velocity"    # I
    .param p5, "over"    # I

    .line 423
    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " fling start "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " min "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " max "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " velocity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " over "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/widget/OplusSpringOverScroller;->-$$Nest$smlog(Ljava/lang/String;)V

    .line 428
    iput v2, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mMin:I

    .line 429
    iput v3, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mMax:I

    .line 430
    iput v5, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mOver:I

    .line 431
    const/4 v6, 0x0

    iput-boolean v6, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mFinished:Z

    .line 432
    invoke-direct {p0, v1, v4}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->initFling(II)V

    .line 433
    iput v6, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mSplineDuration:I

    iput v6, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mDuration:I

    .line 434
    if-lt v1, v2, :cond_3

    if-le v1, v3, :cond_0

    goto/16 :goto_0

    .line 439
    :cond_0
    iput v6, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mState:I

    .line 441
    const/4 v7, -0x1

    invoke-direct {p0, v7}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->calculateFinalPosition(I)[I

    move-result-object v7

    .line 442
    .local v7, "simulateResult":[I
    aget v6, v7, v6

    int-to-double v8, v6

    .line 443
    .local v8, "finalPosition":D
    const/4 v6, 0x1

    aget v6, v7, v6

    int-to-float v6, v6

    .line 445
    .local v6, "duration":F
    int-to-double v10, v1

    sub-double v10, v8, v10

    double-to-int v10, v10

    iput v10, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mSplineDistance:I

    .line 446
    float-to-int v10, v6

    iput v10, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mSplineDuration:I

    iput v10, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mDuration:I

    .line 448
    iput-wide v8, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mFinal:D

    .line 449
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " fling splineDistance "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mSplineDistance:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " mDuration "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v12, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mDuration:I

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " mFinal "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v13, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mFinal:D

    invoke-virtual {v10, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v13, " finalDistance "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/widget/OplusSpringOverScroller;->-$$Nest$smlog(Ljava/lang/String;)V

    .line 453
    invoke-direct {p0, v1, v4}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->initFling(II)V

    .line 455
    iget-wide v13, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mFinal:D

    move v10, v6

    .end local v6    # "duration":F
    .local v10, "duration":F
    int-to-double v5, v2

    cmpg-double v5, v13, v5

    if-gez v5, :cond_1

    .line 456
    int-to-double v5, v2

    iput-wide v5, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mFinal:D

    .line 457
    invoke-direct {p0}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->adjustDuration()V

    .line 458
    invoke-direct {p0, v1, v4}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->initFling(II)V

    .line 461
    :cond_1
    iget-wide v5, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mFinal:D

    int-to-double v13, v3

    cmpl-double v5, v5, v13

    if-lez v5, :cond_2

    .line 462
    int-to-double v5, v3

    iput-wide v5, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mFinal:D

    .line 463
    invoke-direct {p0}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->adjustDuration()V

    .line 464
    invoke-direct {p0, v1, v4}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->initFling(II)V

    .line 467
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " fling after adjust splineDistance "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mSplineDistance:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mDuration:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v11, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mFinal:D

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/widget/OplusSpringOverScroller;->-$$Nest$smlog(Ljava/lang/String;)V

    .line 470
    return-void

    .line 435
    .end local v7    # "simulateResult":[I
    .end local v8    # "finalPosition":D
    .end local v10    # "duration":F
    :cond_3
    :goto_0
    invoke-direct/range {p0 .. p4}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->startAfterEdge(IIII)V

    .line 436
    return-void
.end method

.method private blacklist getCurrentValue()D
    .locals 2

    .line 674
    iget-object v0, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mCurrentState:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v0, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    return-wide v0
.end method

.method private static blacklist getDeceleration(I)F
    .locals 1
    .param p0, "velocity"    # I

    .line 527
    if-lez p0, :cond_0

    const/high16 v0, -0x3b060000    # -2000.0f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x44fa0000    # 2000.0f

    :goto_0
    return v0
.end method

.method private blacklist getDisplacementDistanceForState(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;)D
    .locals 4
    .param p1, "state"    # Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    .line 725
    iget-wide v0, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mFinal:D

    iget-wide v2, p1, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private blacklist getEndValue()D
    .locals 2

    .line 686
    iget-wide v0, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mFinal:D

    return-wide v0
.end method

.method private blacklist getVelocity()D
    .locals 2

    .line 678
    iget-object v0, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mCurrentState:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v0, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mVelocity:D

    return-wide v0
.end method

.method private blacklist initFling(II)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "velocity"    # I

    .line 473
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mOplusCount:I

    .line 474
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mFinished:Z

    .line 475
    iget-object v0, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mFlingConfig:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;

    iget v1, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mFlingFriction:F

    float-to-double v1, v1

    invoke-static {v0, v1, v2}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;->-$$Nest$msetFriction(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;D)V

    .line 476
    iget-object v0, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mFlingConfig:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;->-$$Nest$msetTension(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;D)V

    .line 477
    iget-object v0, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mFlingConfig:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;

    invoke-direct {p0, v0}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->setConfig(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;)V

    .line 478
    invoke-direct {p0, p1}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->setCurrentValue(I)V

    .line 479
    int-to-double v0, p2

    invoke-direct {p0, v0, v1}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->setVelocity(D)V

    .line 480
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mStartTime:J

    .line 481
    return-void
.end method

.method private blacklist isFinished()Z
    .locals 1

    .line 709
    iget-boolean v0, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mFinished:Z

    return v0
.end method

.method private blacklist lostVelocity()Z
    .locals 4

    .line 821
    iget-object v0, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mCurrentState:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v0, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mVelocity:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget-wide v2, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mRestSpeedThreshold:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 822
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " lostVelocity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/widget/OplusSpringOverScroller;->-$$Nest$smlog(Ljava/lang/String;)V

    .line 823
    const/4 v0, 0x1

    return v0

    .line 825
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist notifyEdgeReached(III)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "over"    # I

    .line 717
    iget-object v0, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mCurrentState:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    int-to-double v1, p1

    iput-wide v1, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    .line 718
    iget-object v0, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mPreviousState:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    .line 719
    iget-object v0, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mPreviousState:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    iput-wide v1, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mVelocity:D

    .line 720
    iget-object v0, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mTempState:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    iput-wide v1, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    .line 721
    iget-object v0, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mTempState:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    iput-wide v1, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mVelocity:D

    .line 722
    return-void
.end method

.method private blacklist onEdgeReached()V
    .locals 6

    .line 552
    iget-object v0, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mSpringBackConfig:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;

    invoke-direct {p0, v0}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->setConfig(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;)V

    .line 553
    iget v0, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mSplineDistance:I

    int-to-double v0, v0

    iget-wide v2, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mFinal:D

    sub-double/2addr v0, v2

    double-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 555
    .local v0, "distance":F
    iget v1, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mOver:I

    int-to-float v2, v1

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    .line 556
    int-to-float v0, v1

    .line 559
    :cond_0
    float-to-int v1, v0

    iput v1, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mOver:I

    .line 560
    const/4 v1, 0x2

    iput v1, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mState:I

    .line 561
    iget v1, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mStart:I

    iget-object v2, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mCurrentState:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v2, v2, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mVelocity:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    neg-float v2, v0

    :goto_0
    float-to-int v2, v2

    add-int/2addr v1, v2

    int-to-double v1, v1

    iput-wide v1, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mFinal:D

    .line 562
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->calculateFinalPosition(I)[I

    move-result-object v1

    .line 563
    .local v1, "simulateResult":[I
    const/4 v2, 0x1

    aget v2, v1, v2

    .line 564
    .local v2, "ballisticDuration":I
    iput v2, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mDuration:I

    .line 565
    return-void
.end method

.method private blacklist setConfig(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;)V
    .locals 0
    .param p1, "config"    # Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;

    .line 661
    iput-object p1, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mConfig:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;

    .line 662
    return-void
.end method

.method private blacklist setCurrentValue(I)V
    .locals 3
    .param p1, "currentValue"    # I

    .line 665
    iget-object v0, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mCurrentState:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    iput p1, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mStart:I

    int-to-double v1, p1

    iput-wide v1, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    .line 666
    return-void
.end method

.method private blacklist setEndValue(D)V
    .locals 2
    .param p1, "endValue"    # D

    .line 690
    iput-wide p1, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mFinal:D

    .line 691
    iget v0, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mStart:I

    int-to-double v0, v0

    sub-double v0, p1, v0

    double-to-int v0, v0

    iput v0, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mSplineDistance:I

    .line 692
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mFinished:Z

    .line 693
    return-void
.end method

.method private blacklist setFriction(F)V
    .locals 0
    .param p1, "friction"    # F

    .line 669
    iput p1, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mFlingFriction:F

    .line 670
    iput p1, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mFlingFriction:F

    .line 671
    return-void
.end method

.method private blacklist setScrollerName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 494
    iput-object p1, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mScrollerName:Ljava/lang/String;

    .line 495
    return-void
.end method

.method private blacklist setVelocity(D)V
    .locals 1
    .param p1, "velocity"    # D

    .line 682
    iget-object v0, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mCurrentState:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    iput-wide p1, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mVelocity:D

    .line 683
    return-void
.end method

.method private blacklist springBack(III)Z
    .locals 4
    .param p1, "start"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I

    .line 607
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mFinished:Z

    .line 608
    iget-object v1, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mCurrentState:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    iput p1, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mStart:I

    int-to-double v2, p1

    iput-wide v2, v1, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    .line 609
    int-to-double v1, p1

    iput-wide v1, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mFinal:D

    .line 610
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mVelocity:I

    .line 611
    iput v1, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mDuration:I

    .line 612
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mStartTime:J

    .line 613
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " spring start "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " min "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " max "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/widget/OplusSpringOverScroller;->-$$Nest$smlog(Ljava/lang/String;)V

    .line 616
    if-ge p1, p2, :cond_0

    .line 617
    invoke-direct {p0, p1, p2, v1}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->startSpringBack(III)V

    .line 620
    :cond_0
    if-le p1, p3, :cond_1

    .line 621
    invoke-direct {p0, p1, p3, v1}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->startSpringBack(III)V

    .line 624
    :cond_1
    iget-boolean v1, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mFinished:Z

    xor-int/2addr v0, v1

    return v0
.end method

.method private blacklist startAfterEdge(IIII)V
    .locals 19
    .param p1, "start"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I
    .param p4, "velocity"    # I

    .line 498
    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " startAfterEdge start "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " min "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " max "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " velocity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/widget/OplusSpringOverScroller;->-$$Nest$smlog(Ljava/lang/String;)V

    .line 502
    const/4 v0, 0x1

    if-le v7, v8, :cond_0

    if-ge v7, v9, :cond_0

    .line 503
    iput-boolean v0, v6, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mFinished:Z

    .line 504
    return-void

    .line 507
    :cond_0
    const/4 v1, 0x0

    if-le v7, v9, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    move v11, v2

    .line 508
    .local v11, "positive":Z
    if-eqz v11, :cond_2

    move v2, v9

    goto :goto_1

    :cond_2
    move v2, v8

    :goto_1
    move v12, v2

    .line 509
    .local v12, "edge":I
    sub-int v13, v7, v12

    .line 510
    .local v13, "overDistance":I
    mul-int v2, v13, v10

    if-ltz v2, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    move v14, v0

    .line 511
    .local v14, "keepIncreasing":Z
    if-eqz v14, :cond_4

    .line 513
    invoke-direct {v6, v7, v12, v10}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->startBounceAfterEdge(III)V

    goto :goto_5

    .line 516
    :cond_4
    const/4 v0, -0x1

    invoke-direct {v6, v0}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->calculateFinalPosition(I)[I

    move-result-object v15

    .line 517
    .local v15, "simulateResult":[I
    aget v0, v15, v1

    sub-int v0, v7, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-double v4, v0

    .line 518
    .local v4, "totalDistance":D
    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-double v0, v0

    cmpl-double v0, v4, v0

    if-lez v0, :cond_7

    .line 519
    if-eqz v11, :cond_5

    move v2, v8

    goto :goto_3

    :cond_5
    move v2, v7

    :goto_3
    if-eqz v11, :cond_6

    move v3, v7

    goto :goto_4

    :cond_6
    move v3, v9

    :goto_4
    iget v1, v6, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mOver:I

    move-object/from16 v0, p0

    move/from16 v16, v1

    move/from16 v1, p1

    move-wide/from16 v17, v4

    .end local v4    # "totalDistance":D
    .local v17, "totalDistance":D
    move/from16 v4, p4

    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->fling(IIIII)V

    goto :goto_5

    .line 521
    .end local v17    # "totalDistance":D
    .restart local v4    # "totalDistance":D
    :cond_7
    move-wide/from16 v17, v4

    .end local v4    # "totalDistance":D
    .restart local v17    # "totalDistance":D
    invoke-direct/range {p0 .. p3}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->springBack(III)Z

    .line 524
    .end local v15    # "simulateResult":[I
    .end local v17    # "totalDistance":D
    :goto_5
    return-void
.end method

.method private blacklist startBounceAfterEdge(III)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "velocity"    # I

    .line 569
    if-nez p3, :cond_0

    sub-int v0, p1, p2

    goto :goto_0

    :cond_0
    move v0, p3

    :goto_0
    invoke-static {v0}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->getDeceleration(I)F

    move-result v0

    iput v0, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mDeceleration:F

    .line 570
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "startBounceAfterEdge"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/widget/OplusSpringOverScroller;->-$$Nest$smlog(Ljava/lang/String;)V

    .line 571
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->fitOnBounceCurve(III)V

    .line 572
    invoke-direct {p0}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->onEdgeReached()V

    .line 573
    return-void
.end method

.method private blacklist startScroll(III)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "distance"    # I
    .param p3, "duration"    # I

    .line 652
    iput p1, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mStart:I

    .line 653
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mStartTime:J

    .line 654
    add-int v0, p1, p2

    int-to-double v0, v0

    iput-wide v0, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mFinal:D

    .line 655
    iput p3, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mDuration:I

    .line 656
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mFinished:Z

    .line 657
    iget-object v0, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mFlingConfig:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;

    invoke-direct {p0, v0}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->setConfig(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;)V

    .line 658
    return-void
.end method

.method private blacklist startSpringBack(III)V
    .locals 6
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "velocity"    # I

    .line 628
    iget-object v0, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mSpringBackConfig:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;

    invoke-direct {p0, v0}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->setConfig(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$ReboundConfig;)V

    .line 629
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mState:I

    .line 630
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mFinished:Z

    .line 631
    iget-object v2, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mCurrentState:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    iput p1, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mStart:I

    int-to-double v3, p1

    iput-wide v3, v2, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    .line 632
    iget-object v2, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mCurrentState:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v3, v2, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mVelocity:D

    neg-double v3, v3

    iput-wide v3, v2, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mVelocity:D

    .line 633
    int-to-double v2, p2

    iput-wide v2, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mFinal:D

    .line 635
    sub-int v2, p2, p1

    .line 636
    .local v2, "delta":I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iput v3, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mOver:I

    .line 639
    iget-object v3, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mTempState:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    .line 640
    iget-object v3, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mTempState:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    iput-wide v4, v3, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mVelocity:D

    .line 642
    const/4 v3, -0x1

    invoke-direct {p0, v3}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->calculateFinalPosition(I)[I

    move-result-object v3

    .line 643
    .local v3, "simulateResult":[I
    aget v0, v3, v0

    iput v0, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mDuration:I

    .line 644
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " startSpringBack end mDuration "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mDuration:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " mCurrentState.mPosition = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mCurrentState:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v4, v4, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " mCurrentState.mVelocity = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mCurrentState:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v4, v4, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mVelocity:D

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/widget/OplusSpringOverScroller;->-$$Nest$smlog(Ljava/lang/String;)V

    .line 646
    iput-boolean v1, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mFinished:Z

    .line 647
    iget-object v0, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mTempState:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-object v1, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mCurrentState:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v4, v1, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    iput-wide v4, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    .line 648
    iget-object v0, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mTempState:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-object v1, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mCurrentState:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v4, v1, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mVelocity:D

    iput-wide v4, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mVelocity:D

    .line 649
    return-void
.end method

.method private blacklist update()Z
    .locals 19

    .line 781
    move-object/from16 v0, p0

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    .line 782
    .local v1, "time":J
    iget-wide v3, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mStartTime:J

    sub-long v3, v1, v3

    .line 783
    .local v3, "currentTime":J
    invoke-direct {v0, v0, v3, v4}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->updateScrollerStateToFling(Ljava/lang/Object;J)V

    .line 786
    invoke-direct/range {p0 .. p0}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->isFinished()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    .line 787
    return v6

    .line 790
    :cond_0
    iget-object v5, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mCurrentState:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v7, v5, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    .line 791
    .local v7, "positionBeforeUpdate":D
    invoke-direct {v0, v6}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->calculateOnceWithRebound(Z)V

    .line 792
    iget-object v5, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mCurrentState:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v9, v5, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    .line 793
    .local v9, "positionAfterUpdate":D
    sub-double v11, v9, v7

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    .line 795
    .local v11, "deltaPosition":D
    const-wide v13, 0x3fb99999a0000000L    # 0.10000000149011612

    cmpg-double v5, v11, v13

    if-gez v5, :cond_1

    .line 797
    return v6

    .line 801
    :cond_1
    iget v5, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mState:I

    const/4 v13, 0x2

    if-ne v5, v13, :cond_2

    invoke-direct/range {p0 .. p0}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->lostVelocity()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 803
    return v6

    .line 806
    :cond_2
    iget-wide v13, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mFinal:D

    sub-double v13, v7, v13

    iget-object v5, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mCurrentState:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    move-wide v15, v7

    .end local v7    # "positionBeforeUpdate":D
    .local v15, "positionBeforeUpdate":D
    iget-wide v6, v5, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    move-wide/from16 v17, v1

    .end local v1    # "time":J
    .local v17, "time":J
    iget-wide v1, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mFinal:D

    sub-double/2addr v6, v1

    mul-double/2addr v13, v6

    const-wide/16 v5, 0x0

    cmpg-double v5, v13, v5

    if-gtz v5, :cond_3

    .line 807
    iget-object v5, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mCurrentState:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    iput-wide v1, v5, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    .line 809
    const/4 v1, 0x0

    return v1

    .line 814
    :cond_3
    invoke-static {v11, v12}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-direct {v0, v0, v1}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->updateScrollerStateToEnd(Ljava/lang/Object;I)V

    .line 817
    const/4 v1, 0x1

    return v1
.end method

.method private blacklist updateScroll(F)V
    .locals 10
    .param p1, "q"    # F

    .line 713
    iget-object v0, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mCurrentState:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;

    iget v1, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mStart:I

    int-to-long v2, v1

    float-to-double v4, p1

    iget-wide v6, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mFinal:D

    int-to-double v8, v1

    sub-double/2addr v6, v8

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    add-long/2addr v2, v4

    long-to-double v1, v2

    iput-wide v1, v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    .line 714
    return-void
.end method

.method private blacklist updateScrollerStateToEnd(Ljava/lang/Object;I)V
    .locals 2
    .param p1, "splineOverScroller"    # Ljava/lang/Object;
    .param p2, "displacement"    # I

    .line 970
    iget-object v0, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mOplusSlideAnimOptHelper:Landroid/view/OplusSlideAnimOptHelper;

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    if-ge p2, v1, :cond_0

    .line 971
    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/view/OplusSlideAnimOptHelper;->updateScrollerState(Ljava/lang/Object;I)V

    .line 973
    :cond_0
    return-void
.end method

.method private blacklist updateScrollerStateToFling(Ljava/lang/Object;J)V
    .locals 2
    .param p1, "splineOverScroller"    # Ljava/lang/Object;
    .param p2, "currentTime"    # J

    .line 964
    iget-object v0, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mOplusSlideAnimOptHelper:Landroid/view/OplusSlideAnimOptHelper;

    if-eqz v0, :cond_0

    .line 965
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/view/OplusSlideAnimOptHelper;->updateScrollerState(Ljava/lang/Object;I)V

    .line 967
    :cond_0
    return-void
.end method

.method private blacklist updateScrollerStateToIdle(Ljava/lang/Object;)V
    .locals 2
    .param p1, "splineOverScroller"    # Ljava/lang/Object;

    .line 957
    iget-object v0, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mOplusSlideAnimOptHelper:Landroid/view/OplusSlideAnimOptHelper;

    if-eqz v0, :cond_0

    .line 958
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/OplusSlideAnimOptHelper;->updateScrollerState(Ljava/lang/Object;I)V

    .line 959
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mOplusSlideAnimOptHelper:Landroid/view/OplusSlideAnimOptHelper;

    .line 961
    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist prepareScrollOpt()V
    .locals 1

    .line 949
    invoke-static {}, Landroid/view/OplusSlideAnimOptHelper;->isCurrentSceneEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/view/OplusSlideAnimOptHelper;->isInMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 950
    iget-object v0, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mOplusSlideAnimOptHelper:Landroid/view/OplusSlideAnimOptHelper;

    if-nez v0, :cond_0

    .line 951
    invoke-static {}, Landroid/view/OplusSlideAnimOptHelper;->getInstance()Landroid/view/OplusSlideAnimOptHelper;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mOplusSlideAnimOptHelper:Landroid/view/OplusSlideAnimOptHelper;

    .line 954
    :cond_0
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    .line 943
    iget-object v0, p0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->mScrollerName:Ljava/lang/String;

    return-object v0
.end method
