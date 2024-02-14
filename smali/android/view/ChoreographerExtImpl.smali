.class public Landroid/view/ChoreographerExtImpl;
.super Ljava/lang/Object;
.source "ChoreographerExtImpl.java"

# interfaces
.implements Landroid/view/IChoreographerExt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ChoreographerExtImpl$GfxFrameInfo;
    }
.end annotation


# static fields
.field private static blacklist DEBUG_LOG:Z = false

.field private static final blacklist DEFAULT_UNITS:I = 0x3e8

.field private static final blacklist DELAY_TIME_LIMIT:I = 0x14

.field private static final blacklist FIRST_FRAME:I = 0x2

.field private static final blacklist FLAG_CAN_FORCE_DRAW:J = 0x100L

.field private static final blacklist FRAME_STAGE_TIMEOUT:J = 0x4c4b40L

.field private static final blacklist HIGH_RATE_INTERVAL_NANO:J = 0xa98ac7L

.field private static final blacklist INVALID_POINTER:I = -0x1

.field private static final blacklist MSG_DO_ANIM_CALLBACK:I = 0x67

.field private static final blacklist MSG_DO_INITIATIVE_FRAME:I = 0x68

.field private static final blacklist NUM_10:I = 0xa

.field private static final blacklist NUM_5:I = 0x5

.field private static final blacklist SCREEN_ON:Ljava/lang/String; = "sys.oplus.healthinfo.screen"

.field private static final blacklist SCROLL_STATE_FAKE_FLING:J = 0x2L

.field private static final blacklist SCROLL_STATE_FLING:J = 0x1L

.field private static final blacklist SCROLL_STATE_IDLE:J = 0x0L

.field private static final blacklist SCROLL_STATE_OVER_UP:J = 0x3L

.field private static final blacklist SENCOND_IN_NANO:J = 0x3b9aca00L

.field private static final blacklist SKIPPED_FRAME_ANIM_TRACK_THRESHOLD:I

.field private static final blacklist SKIPPED_FRAME_THRESHOLD:I

.field private static final blacklist SKIPPED_FRAME_TRACK_THRESHOLD:I

.field private static final blacklist SKIP_STATSD_LOG_THRESHOLD:I = 0x32

.field private static final blacklist TRACK_FRAME_SKIP:Z

.field private static final blacklist floatFaultTolarance:F = 1.0E-6f

.field private static final blacklist mDropFirstFrameStatistics:Z


# instance fields
.field private blacklist mActivePointerId:I

.field private blacklist mActivityLaunchTime:J

.field private blacklist mActivityPauseEndTime:J

.field private blacklist mActivityPauseStartTime:J

.field private blacklist mActivityResumeTime:J

.field private blacklist mAnimEndTime:J

.field private blacklist mAnimStartTime:J

.field private blacklist mChoreographer:Landroid/view/Choreographer;

.field private blacklist mCompensateThreshold:I

.field private blacklist mDoFrameIndex:I

.field private blacklist mDrawCount:I

.field private blacklist mFrameData:Landroid/view/Choreographer$FrameData;

.field private blacklist mFrameIntervalNanos:J

.field private blacklist mFrameStartNanos:J

.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mHasAdjusted:Z

.field private blacklist mInputEventTime:J

.field private blacklist mInputProcessTime:J

.field private blacklist mIsFlinging:Z

.field private blacklist mIsInPreAnimOpt:Z

.field private blacklist mIsInitiativeFrame:Z

.field private blacklist mIsPreAnimOptScheduled:Z

.field private blacklist mIsPreDraw:Z

.field private blacklist mIsSFChoregrapher:I

.field private blacklist mIsScrollOptEnable:Z

.field private blacklist mIsScrollOptSceneEnable:Z

.field private blacklist mJankTrackerEnable:Z

.field private blacklist mLastFrameAnimOptTimeNano:J

.field private blacklist mLayoutTimeConsume:J

.field private blacklist mLock:Ljava/lang/Object;

.field private blacklist mMeasureTimeConsume:J

.field private blacklist mNeedForceDraw:Z

.field private blacklist mNewFrameIntervalNanos:J

.field private blacklist mOpFlags:J

.field private blacklist mOplusSlideAnimOptHelper:Landroid/view/OplusSlideAnimOptHelper;

.field private blacklist mOriginalFrameTimeNanos:J

.field private blacklist mPauseLifecycleEndTime:J

.field private blacklist mRelayoutCount:I

.field private blacklist mScrollState:J

.field private blacklist mTraceMoreFrames:J

.field private final blacklist mUIFirstMgr:Lcom/oplus/uifirst/IOplusUIFirstManager;

.field private blacklist mVelocityTracker:Landroid/view/VelocityTracker;

.field private blacklist mViewCount:I

.field private blacklist mVsyncEventDataId:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 52
    const-string v0, "debug.skip_frame_threshold"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/view/ChoreographerExtImpl;->SKIPPED_FRAME_THRESHOLD:I

    .line 53
    const-string v0, "persist.sys.oplus.drop_first_frame"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/ChoreographerExtImpl;->mDropFirstFrameStatistics:Z

    .line 55
    const-string v0, "debug.track_frame_skip"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/ChoreographerExtImpl;->TRACK_FRAME_SKIP:Z

    .line 56
    const-string v0, "debug.track_frame_skip.threshold_anim"

    const/4 v2, 0x4

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/view/ChoreographerExtImpl;->SKIPPED_FRAME_ANIM_TRACK_THRESHOLD:I

    .line 57
    const-string v0, "debug.track_frame_skip.threshold"

    const/16 v2, 0xf

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/view/ChoreographerExtImpl;->SKIPPED_FRAME_TRACK_THRESHOLD:I

    .line 67
    const-string v0, "persist.sys.assert.panic"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/ChoreographerExtImpl;->DEBUG_LOG:Z

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 5
    .param p1, "base"    # Ljava/lang/Object;

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ChoreographerExtImpl;->mHasAdjusted:Z

    .line 101
    iput-boolean v0, p0, Landroid/view/ChoreographerExtImpl;->mIsFlinging:Z

    .line 105
    iput-boolean v0, p0, Landroid/view/ChoreographerExtImpl;->mIsPreAnimOptScheduled:Z

    .line 107
    iput-boolean v0, p0, Landroid/view/ChoreographerExtImpl;->mIsInPreAnimOpt:Z

    .line 109
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/view/ChoreographerExtImpl;->mLastFrameAnimOptTimeNano:J

    .line 111
    iput-boolean v0, p0, Landroid/view/ChoreographerExtImpl;->mIsScrollOptEnable:Z

    .line 113
    iput-boolean v0, p0, Landroid/view/ChoreographerExtImpl;->mIsInitiativeFrame:Z

    .line 115
    iput-boolean v0, p0, Landroid/view/ChoreographerExtImpl;->mNeedForceDraw:Z

    .line 117
    iput-boolean v0, p0, Landroid/view/ChoreographerExtImpl;->mIsPreDraw:Z

    .line 119
    iput-wide v1, p0, Landroid/view/ChoreographerExtImpl;->mNewFrameIntervalNanos:J

    .line 121
    const/4 v3, 0x1

    iput v3, p0, Landroid/view/ChoreographerExtImpl;->mCompensateThreshold:I

    .line 123
    iput-boolean v0, p0, Landroid/view/ChoreographerExtImpl;->mIsScrollOptSceneEnable:Z

    .line 126
    iput v0, p0, Landroid/view/ChoreographerExtImpl;->mIsSFChoregrapher:I

    .line 127
    iput-wide v1, p0, Landroid/view/ChoreographerExtImpl;->mTraceMoreFrames:J

    .line 128
    iput v0, p0, Landroid/view/ChoreographerExtImpl;->mDoFrameIndex:I

    .line 133
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Landroid/view/ChoreographerExtImpl;->mVsyncEventDataId:J

    .line 137
    iput-boolean v0, p0, Landroid/view/ChoreographerExtImpl;->mJankTrackerEnable:Z

    .line 154
    const/4 v3, -0x1

    iput v3, p0, Landroid/view/ChoreographerExtImpl;->mActivePointerId:I

    .line 156
    iput-wide v1, p0, Landroid/view/ChoreographerExtImpl;->mScrollState:J

    .line 160
    move-object v1, p1

    check-cast v1, Landroid/view/Choreographer;

    iput-object v1, p0, Landroid/view/ChoreographerExtImpl;->mChoreographer:Landroid/view/Choreographer;

    .line 161
    const-string v1, "persist.sys.janktracker.enable"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Landroid/view/ChoreographerExtImpl;->mJankTrackerEnable:Z

    .line 163
    sget-object v1, Lcom/oplus/uifirst/IOplusUIFirstManager;->DEFAULT:Lcom/oplus/uifirst/IOplusUIFirstManager;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Lcom/oplus/uifirst/IOplusUIFirstManager;

    iput-object v0, p0, Landroid/view/ChoreographerExtImpl;->mUIFirstMgr:Lcom/oplus/uifirst/IOplusUIFirstManager;

    .line 164
    return-void
.end method

.method private blacklist adjustFrameTimeNanos(JJJ)J
    .locals 19
    .param p1, "frameTimeNanos"    # J
    .param p3, "now"    # J
    .param p5, "lastFrameTimeNanos"    # J

    .line 541
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move-wide/from16 v3, p5

    iget-object v5, v0, Landroid/view/ChoreographerExtImpl;->mOplusSlideAnimOptHelper:Landroid/view/OplusSlideAnimOptHelper;

    invoke-virtual {v5}, Landroid/view/OplusSlideAnimOptHelper;->getFrameIntervalNanos()J

    move-result-wide v5

    .line 542
    .local v5, "frameIntervalNanos":J
    add-long v7, v3, v5

    .line 543
    .local v7, "intendedNextFrameTimeNanos":J
    sub-long v9, v7, v1

    .line 544
    .local v9, "gap":J
    const-wide/16 v11, 0x0

    .line 545
    .local v11, "ret":J
    const-wide/16 v13, 0x0

    cmp-long v13, v9, v13

    if-gez v13, :cond_2

    .line 546
    neg-long v13, v9

    div-long/2addr v13, v5

    long-to-int v13, v13

    .line 547
    .local v13, "gapFrameCount":I
    if-lez v13, :cond_1

    .line 549
    iget v14, v0, Landroid/view/ChoreographerExtImpl;->mCompensateThreshold:I

    if-gt v13, v14, :cond_0

    .line 551
    int-to-long v14, v13

    mul-long/2addr v14, v5

    add-long v11, v3, v14

    goto :goto_0

    .line 554
    :cond_0
    sub-int v14, v13, v14

    int-to-long v14, v14

    mul-long/2addr v14, v5

    add-long v11, v3, v14

    goto :goto_0

    .line 558
    :cond_1
    move-wide v11, v7

    .line 560
    .end local v13    # "gapFrameCount":I
    :goto_0
    goto :goto_1

    .line 563
    :cond_2
    neg-long v13, v9

    div-long/2addr v13, v5

    long-to-int v13, v13

    .line 564
    .restart local v13    # "gapFrameCount":I
    int-to-long v14, v13

    mul-long/2addr v14, v5

    add-long v11, v7, v14

    .line 565
    const/4 v14, 0x1

    iput-boolean v14, v0, Landroid/view/ChoreographerExtImpl;->mNeedForceDraw:Z

    .line 567
    .end local v13    # "gapFrameCount":I
    :goto_1
    invoke-static {}, Landroid/view/OplusSlideAnimOptHelper;->isOptDebugEnable()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 568
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "adjustFrameTimeNanos-mLastFrameTimeNanos "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "-now "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "-ret "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-wide/16 v14, 0x8

    invoke-static {v14, v15, v13}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 571
    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    .line 574
    :cond_3
    sub-long v13, p1, v3

    rem-long/2addr v13, v5

    .line 576
    .local v13, "offset":J
    const-wide/16 v15, 0x5

    mul-long/2addr v15, v5

    const-wide/16 v17, 0xa

    div-long v15, v15, v17

    cmp-long v15, v13, v15

    if-lez v15, :cond_4

    .line 577
    sub-long v15, v5, v13

    sub-long/2addr v11, v15

    goto :goto_2

    .line 579
    :cond_4
    add-long/2addr v11, v13

    .line 581
    :goto_2
    return-wide v11
.end method

.method private blacklist getFlingState()J
    .locals 2

    .line 875
    invoke-static {}, Landroid/view/OplusSlideAnimOptHelper;->getInstance()Landroid/view/OplusSlideAnimOptHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/OplusSlideAnimOptHelper;->isFlinging()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Landroid/view/ChoreographerExtImpl;->mScrollState:J

    :goto_0
    return-wide v0
.end method

.method private blacklist isScreenOn()Z
    .locals 2

    .line 235
    const-string v0, "debug.tracing.screen_state"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 236
    .local v0, "state":I
    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private blacklist markOpAnimationEnd()V
    .locals 2

    .line 760
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/ChoreographerExtImpl;->mAnimEndTime:J

    .line 761
    return-void
.end method

.method private blacklist markOpAnimationStart()V
    .locals 2

    .line 756
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/ChoreographerExtImpl;->mAnimStartTime:J

    .line 757
    return-void
.end method

.method private blacklist resetLaunchCount()V
    .locals 3

    .line 816
    iget v0, p0, Landroid/view/ChoreographerExtImpl;->mDrawCount:I

    if-lez v0, :cond_0

    .line 817
    const-wide/16 v0, 0x8

    const-string v2, "resetLaunchCount"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 818
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 819
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/ChoreographerExtImpl;->mActivityLaunchTime:J

    .line 820
    iput-wide v0, p0, Landroid/view/ChoreographerExtImpl;->mActivityResumeTime:J

    .line 821
    iput-wide v0, p0, Landroid/view/ChoreographerExtImpl;->mActivityPauseStartTime:J

    .line 822
    iput-wide v0, p0, Landroid/view/ChoreographerExtImpl;->mActivityPauseEndTime:J

    .line 823
    iput-wide v0, p0, Landroid/view/ChoreographerExtImpl;->mPauseLifecycleEndTime:J

    .line 825
    :cond_0
    return-void
.end method

.method private blacklist syncWithVsync(JJ)J
    .locals 9
    .param p1, "timeNanos"    # J
    .param p3, "referVsyncTimeNanos"    # J

    .line 586
    iget-object v0, p0, Landroid/view/ChoreographerExtImpl;->mOplusSlideAnimOptHelper:Landroid/view/OplusSlideAnimOptHelper;

    invoke-virtual {v0}, Landroid/view/OplusSlideAnimOptHelper;->getFrameIntervalNanos()J

    move-result-wide v0

    .line 587
    .local v0, "frameIntervalNanos":J
    sub-long v2, p1, p3

    rem-long/2addr v2, v0

    .line 588
    .local v2, "offset":J
    move-wide v4, p1

    .line 590
    .local v4, "ret":J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    const/4 v7, 0x1

    if-ltz v6, :cond_1

    .line 591
    shr-long v6, v0, v7

    cmp-long v6, v2, v6

    if-lez v6, :cond_0

    .line 592
    sub-long v6, v0, v2

    add-long/2addr v4, v6

    goto :goto_0

    .line 594
    :cond_0
    sub-long/2addr v4, v2

    goto :goto_0

    .line 597
    :cond_1
    neg-long v2, v2

    .line 598
    shr-long v6, v0, v7

    cmp-long v6, v2, v6

    if-lez v6, :cond_2

    .line 599
    sub-long v6, v0, v2

    sub-long/2addr v4, v6

    goto :goto_0

    .line 601
    :cond_2
    add-long/2addr v4, v2

    .line 604
    :goto_0
    invoke-static {}, Landroid/view/OplusSlideAnimOptHelper;->isOptDebugEnable()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 605
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "syncWithVsync-timeNanos "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-ret "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-referVsyncTimeNanos "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-wide/16 v7, 0x8

    invoke-static {v7, v8, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 608
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 610
    :cond_3
    return-wide v4
.end method

.method private blacklist writeStatsdLog(ZJFLjava/lang/String;)V
    .locals 15
    .param p1, "animationWithoutTraversal"    # Z
    .param p2, "skippedFrames"    # J
    .param p4, "cost"    # F
    .param p5, "processName"    # Ljava/lang/String;

    .line 671
    nop

    .line 672
    invoke-static {}, Landroid/app/OplusActivityThreadExtImpl;->getUid()I

    move-result v1

    invoke-static {}, Landroid/app/OplusActivityThreadExtImpl;->getPid()I

    move-result v2

    move-object v14, p0

    iget-wide v7, v14, Landroid/view/ChoreographerExtImpl;->mFrameIntervalNanos:J

    .line 674
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v10

    .line 675
    invoke-static {}, Landroid/app/OplusActivityThreadExtImpl;->getPackageVersionCode()J

    move-result-wide v11

    invoke-static {}, Landroid/app/OplusActivityThreadExtImpl;->is64Bit()Z

    move-result v13

    .line 671
    const v0, 0x186a0

    move/from16 v3, p1

    move-wide/from16 v4, p2

    move/from16 v6, p4

    move-object/from16 v9, p5

    invoke-static/range {v0 .. v13}, Lcom/oplus/android/internal/util/OplusFrameworkStatsLog;->write(IIIZJFJLjava/lang/String;Ljava/lang/String;JZ)V

    .line 676
    return-void
.end method


# virtual methods
.method public blacklist adjustFrameTimeNanos(JJ)J
    .locals 17
    .param p1, "frameTimeNanos"    # J
    .param p3, "lastFrameTimeNanos"    # J

    .line 305
    move-object/from16 v7, p0

    move-wide/from16 v8, p1

    iput-wide v8, v7, Landroid/view/ChoreographerExtImpl;->mOriginalFrameTimeNanos:J

    .line 306
    const/4 v10, 0x0

    iput-boolean v10, v7, Landroid/view/ChoreographerExtImpl;->mHasAdjusted:Z

    .line 307
    iput-boolean v10, v7, Landroid/view/ChoreographerExtImpl;->mIsFlinging:Z

    .line 308
    iget-boolean v0, v7, Landroid/view/ChoreographerExtImpl;->mIsScrollOptSceneEnable:Z

    if-eqz v0, :cond_2

    .line 309
    iget-object v0, v7, Landroid/view/ChoreographerExtImpl;->mOplusSlideAnimOptHelper:Landroid/view/OplusSlideAnimOptHelper;

    invoke-virtual {v0}, Landroid/view/OplusSlideAnimOptHelper;->isFlinging()Z

    move-result v0

    iput-boolean v0, v7, Landroid/view/ChoreographerExtImpl;->mIsFlinging:Z

    .line 310
    iget-boolean v1, v7, Landroid/view/ChoreographerExtImpl;->mIsInPreAnimOpt:Z

    const-string v11, " to "

    const/4 v12, 0x1

    const-wide/32 v13, 0xf4240

    const-wide/16 v5, 0x8

    if-eqz v1, :cond_1

    .line 311
    iget-wide v0, v7, Landroid/view/ChoreographerExtImpl;->mLastFrameAnimOptTimeNano:J

    .line 312
    .local v0, "tmp":J
    iput-boolean v12, v7, Landroid/view/ChoreographerExtImpl;->mHasAdjusted:Z

    .line 313
    iget-wide v2, v7, Landroid/view/ChoreographerExtImpl;->mLastFrameAnimOptTimeNano:J

    invoke-direct {v7, v2, v3, v8, v9}, Landroid/view/ChoreographerExtImpl;->syncWithVsync(JJ)J

    move-result-wide v2

    iput-wide v2, v7, Landroid/view/ChoreographerExtImpl;->mLastFrameAnimOptTimeNano:J

    .line 314
    invoke-static {}, Landroid/view/OplusSlideAnimOptHelper;->isOptDebugEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 315
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjustFrameTimeNanos use pre anim time-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    div-long v3, v0, v13

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v7, Landroid/view/ChoreographerExtImpl;->mLastFrameAnimOptTimeNano:J

    div-long/2addr v3, v13

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v6, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 317
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 319
    :cond_0
    iget-wide v2, v7, Landroid/view/ChoreographerExtImpl;->mLastFrameAnimOptTimeNano:J

    return-wide v2

    .line 321
    .end local v0    # "tmp":J
    :cond_1
    if-eqz v0, :cond_2

    iget-boolean v0, v7, Landroid/view/ChoreographerExtImpl;->mIsInitiativeFrame:Z

    if-nez v0, :cond_2

    .line 322
    move-wide/from16 v15, p1

    .line 323
    .local v15, "tmp":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v5, p3

    invoke-direct/range {v0 .. v6}, Landroid/view/ChoreographerExtImpl;->adjustFrameTimeNanos(JJJ)J

    move-result-wide v0

    .line 324
    .end local p1    # "frameTimeNanos":J
    .local v0, "frameTimeNanos":J
    iput-boolean v12, v7, Landroid/view/ChoreographerExtImpl;->mHasAdjusted:Z

    .line 325
    invoke-static {}, Landroid/view/OplusSlideAnimOptHelper;->isOptDebugEnable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 326
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjustFrameTimeNanos frameTimeMills-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    div-long v3, v15, v13

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    div-long v3, v0, v13

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x8

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 328
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    .line 332
    .end local v0    # "frameTimeNanos":J
    .end local v15    # "tmp":J
    .restart local p1    # "frameTimeNanos":J
    :cond_2
    move-wide v0, v8

    .end local p1    # "frameTimeNanos":J
    .restart local v0    # "frameTimeNanos":J
    :cond_3
    :goto_0
    iput-boolean v10, v7, Landroid/view/ChoreographerExtImpl;->mIsPreDraw:Z

    .line 333
    return-wide v0
.end method

.method public blacklist checkJankTrackerEnable()Z
    .locals 1

    .line 680
    iget-boolean v0, p0, Landroid/view/ChoreographerExtImpl;->mJankTrackerEnable:Z

    return v0
.end method

.method public blacklist checkPreAnimOpt(JJJ)V
    .locals 20
    .param p1, "frameTimeNanos"    # J
    .param p3, "frameIntervalNanos"    # J
    .param p5, "lastFrameTimeNanos"    # J

    .line 442
    move-object/from16 v8, p0

    move-wide/from16 v9, p5

    iget-boolean v0, v8, Landroid/view/ChoreographerExtImpl;->mIsScrollOptSceneEnable:Z

    if-eqz v0, :cond_4

    .line 443
    iget-boolean v0, v8, Landroid/view/ChoreographerExtImpl;->mIsInPreAnimOpt:Z

    if-eqz v0, :cond_0

    iget-object v0, v8, Landroid/view/ChoreographerExtImpl;->mOplusSlideAnimOptHelper:Landroid/view/OplusSlideAnimOptHelper;

    invoke-virtual {v0}, Landroid/view/OplusSlideAnimOptHelper;->isFling()Z

    move-result v0

    if-nez v0, :cond_0

    .line 446
    iget-object v1, v8, Landroid/view/ChoreographerExtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 447
    :try_start_0
    iget-object v0, v8, Landroid/view/ChoreographerExtImpl;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v0}, Landroid/view/Choreographer;->getWrapper()Landroid/view/IChoreographerWrapper;

    move-result-object v0

    invoke-interface {v0, v9, v10}, Landroid/view/IChoreographerWrapper;->scheduleFrameLocked(J)V

    .line 448
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 450
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, v8, Landroid/view/ChoreographerExtImpl;->mIsInPreAnimOpt:Z

    .line 452
    iget-object v0, v8, Landroid/view/ChoreographerExtImpl;->mOplusSlideAnimOptHelper:Landroid/view/OplusSlideAnimOptHelper;

    invoke-virtual {v0}, Landroid/view/OplusSlideAnimOptHelper;->isFlinging()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 454
    iget-object v0, v8, Landroid/view/ChoreographerExtImpl;->mOplusSlideAnimOptHelper:Landroid/view/OplusSlideAnimOptHelper;

    invoke-virtual {v0}, Landroid/view/OplusSlideAnimOptHelper;->getFrameIntervalNanos()J

    move-result-wide v11

    .line 455
    .local v11, "fIntervalNanos":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    .line 456
    .local v13, "now":J
    add-long v15, v9, v11

    .line 457
    .local v15, "intendedNextFrameTimeNanos":J
    add-long v0, v13, v11

    sub-long/2addr v0, v9

    rem-long/2addr v0, v11

    sub-long v0, v13, v0

    add-long v17, v0, v11

    .line 458
    .local v17, "nextVsyncTimeNanos":J
    const/16 v19, 0x0

    .line 461
    .local v19, "hasScheduleNextFrame":Z
    iget-boolean v0, v8, Landroid/view/ChoreographerExtImpl;->mIsInitiativeFrame:Z

    const/4 v6, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, v8, Landroid/view/ChoreographerExtImpl;->mIsPreDraw:Z

    if-nez v0, :cond_1

    .line 462
    move-object/from16 v1, p0

    move-wide v2, v15

    move-wide v4, v13

    move v0, v6

    move-wide/from16 v6, p5

    invoke-direct/range {v1 .. v7}, Landroid/view/ChoreographerExtImpl;->adjustFrameTimeNanos(JJJ)J

    move-result-wide v1

    .line 463
    .end local v15    # "intendedNextFrameTimeNanos":J
    .local v1, "intendedNextFrameTimeNanos":J
    iput-boolean v0, v8, Landroid/view/ChoreographerExtImpl;->mNeedForceDraw:Z

    .line 464
    iget-object v3, v8, Landroid/view/ChoreographerExtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 465
    :try_start_1
    iget-object v4, v8, Landroid/view/ChoreographerExtImpl;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x68

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 466
    .local v4, "msg":Landroid/os/Message;
    iget-object v5, v8, Landroid/view/ChoreographerExtImpl;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v5}, Landroid/view/Choreographer;->getWrapper()Landroid/view/IChoreographerWrapper;

    move-result-object v5

    invoke-interface {v5, v0}, Landroid/view/IChoreographerWrapper;->setFrameScheduled(Z)V

    .line 467
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 468
    iget-object v5, v8, Landroid/view/ChoreographerExtImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 469
    nop

    .end local v4    # "msg":Landroid/os/Message;
    monitor-exit v3

    .line 470
    const/16 v19, 0x1

    goto :goto_1

    .line 469
    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 461
    .end local v1    # "intendedNextFrameTimeNanos":J
    .restart local v15    # "intendedNextFrameTimeNanos":J
    :cond_1
    move v0, v6

    .line 475
    move-wide v1, v15

    .end local v15    # "intendedNextFrameTimeNanos":J
    .restart local v1    # "intendedNextFrameTimeNanos":J
    :goto_1
    iget-object v3, v8, Landroid/view/ChoreographerExtImpl;->mOplusSlideAnimOptHelper:Landroid/view/OplusSlideAnimOptHelper;

    invoke-virtual {v3}, Landroid/view/OplusSlideAnimOptHelper;->isFlingEnd()Z

    move-result v3

    if-nez v3, :cond_3

    if-nez v19, :cond_3

    .line 476
    const-wide/32 v3, 0x1e8480

    add-long/2addr v3, v13

    cmp-long v3, v3, v1

    if-gtz v3, :cond_2

    .line 477
    iput-boolean v0, v8, Landroid/view/ChoreographerExtImpl;->mIsPreAnimOptScheduled:Z

    .line 478
    iget-object v0, v8, Landroid/view/ChoreographerExtImpl;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x67

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 479
    .local v0, "msg":Landroid/os/Message;
    iget-object v3, v8, Landroid/view/ChoreographerExtImpl;->mFrameData:Landroid/view/Choreographer$FrameData;

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 480
    iput-wide v1, v8, Landroid/view/ChoreographerExtImpl;->mLastFrameAnimOptTimeNano:J

    .line 481
    iget-object v3, v8, Landroid/view/ChoreographerExtImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 482
    .end local v0    # "msg":Landroid/os/Message;
    goto :goto_2

    .line 484
    :cond_2
    iget-object v3, v8, Landroid/view/ChoreographerExtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 485
    :try_start_2
    iget-object v0, v8, Landroid/view/ChoreographerExtImpl;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v0}, Landroid/view/Choreographer;->getWrapper()Landroid/view/IChoreographerWrapper;

    move-result-object v0

    invoke-interface {v0, v9, v10}, Landroid/view/IChoreographerWrapper;->scheduleFrameLocked(J)V

    .line 486
    monitor-exit v3

    goto :goto_2

    :catchall_2
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    .line 490
    .end local v1    # "intendedNextFrameTimeNanos":J
    .end local v11    # "fIntervalNanos":J
    .end local v13    # "now":J
    .end local v17    # "nextVsyncTimeNanos":J
    .end local v19    # "hasScheduleNextFrame":Z
    :cond_3
    :goto_2
    const/4 v0, 0x0

    iput-object v0, v8, Landroid/view/ChoreographerExtImpl;->mFrameData:Landroid/view/Choreographer$FrameData;

    .line 492
    :cond_4
    return-void
.end method

.method public blacklist checkScrollOptCase()Z
    .locals 1

    .line 345
    iget-boolean v0, p0, Landroid/view/ChoreographerExtImpl;->mIsScrollOptSceneEnable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/view/ChoreographerExtImpl;->mIsInitiativeFrame:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/view/ChoreographerExtImpl;->mIsInPreAnimOpt:Z

    if-eqz v0, :cond_0

    .line 346
    const/4 v0, 0x1

    return v0

    .line 348
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist checkScrollOptEnable(JJJJJJJ)Z
    .locals 18
    .param p1, "startNanos"    # J
    .param p3, "jitterNanos"    # J
    .param p5, "intendedFrameTimeNanos"    # J
    .param p7, "frameTimeNanos"    # J
    .param p9, "id"    # J
    .param p11, "frameDeadline"    # J
    .param p13, "frameInterval"    # J

    .line 354
    move-object/from16 v0, p0

    move-wide/from16 v14, p9

    iput-wide v14, v0, Landroid/view/ChoreographerExtImpl;->mVsyncEventDataId:J

    .line 355
    iget-boolean v1, v0, Landroid/view/ChoreographerExtImpl;->mIsScrollOptEnable:Z

    if-eqz v1, :cond_3

    .line 356
    iget-boolean v1, v0, Landroid/view/ChoreographerExtImpl;->mHasAdjusted:Z

    if-nez v1, :cond_1

    iget-boolean v1, v0, Landroid/view/ChoreographerExtImpl;->mIsInitiativeFrame:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 363
    :cond_0
    iget-object v1, v0, Landroid/view/ChoreographerExtImpl;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, v1, Landroid/view/Choreographer;->mFrameInfo:Landroid/graphics/FrameInfo;

    move-wide/from16 v2, p5

    move-wide/from16 v4, p7

    move-wide/from16 v6, p9

    move-wide/from16 v8, p11

    move-wide/from16 v10, p1

    move-wide/from16 v12, p13

    invoke-virtual/range {v1 .. v13}, Landroid/graphics/FrameInfo;->setVsync(JJJJJJ)V

    goto :goto_2

    .line 357
    :cond_1
    :goto_0
    iget-object v1, v0, Landroid/view/ChoreographerExtImpl;->mOplusSlideAnimOptHelper:Landroid/view/OplusSlideAnimOptHelper;

    invoke-virtual {v1}, Landroid/view/OplusSlideAnimOptHelper;->getFrameIntervalNanos()J

    move-result-wide v1

    rem-long v1, p3, v1

    sub-long v1, p1, v1

    .line 358
    .local v1, "fakeVsyncTimeNanos":J
    cmp-long v3, v1, p1

    if-lez v3, :cond_2

    .line 359
    iget-object v3, v0, Landroid/view/ChoreographerExtImpl;->mOplusSlideAnimOptHelper:Landroid/view/OplusSlideAnimOptHelper;

    invoke-virtual {v3}, Landroid/view/OplusSlideAnimOptHelper;->getFrameIntervalNanos()J

    move-result-wide v3

    sub-long/2addr v1, v3

    move-wide/from16 v16, v1

    goto :goto_1

    .line 358
    :cond_2
    move-wide/from16 v16, v1

    .line 361
    .end local v1    # "fakeVsyncTimeNanos":J
    .local v16, "fakeVsyncTimeNanos":J
    :goto_1
    iget-object v1, v0, Landroid/view/ChoreographerExtImpl;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, v1, Landroid/view/Choreographer;->mFrameInfo:Landroid/graphics/FrameInfo;

    move-wide/from16 v2, v16

    move-wide/from16 v4, v16

    move-wide/from16 v6, p9

    move-wide/from16 v8, p11

    move-wide/from16 v10, p1

    move-wide/from16 v12, p13

    invoke-virtual/range {v1 .. v13}, Landroid/graphics/FrameInfo;->setVsync(JJJJJJ)V

    .line 362
    .end local v16    # "fakeVsyncTimeNanos":J
    nop

    .line 366
    :goto_2
    iget-boolean v1, v0, Landroid/view/ChoreographerExtImpl;->mNeedForceDraw:Z

    if-eqz v1, :cond_3

    .line 367
    iget-object v1, v0, Landroid/view/ChoreographerExtImpl;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, v1, Landroid/view/Choreographer;->mFrameInfo:Landroid/graphics/FrameInfo;

    const-wide/16 v2, 0x100

    invoke-virtual {v1, v2, v3}, Landroid/graphics/FrameInfo;->addFlags(J)V

    .line 368
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/view/ChoreographerExtImpl;->mNeedForceDraw:Z

    .line 371
    :cond_3
    iget-boolean v1, v0, Landroid/view/ChoreographerExtImpl;->mIsScrollOptEnable:Z

    return v1
.end method

.method public blacklist checkScrollOptSceneEnable(JJLandroid/view/Choreographer$FrameData;)Z
    .locals 6
    .param p1, "frameTimeNanos"    # J
    .param p3, "frameIntervalNanos"    # J
    .param p5, "frameData"    # Landroid/view/Choreographer$FrameData;

    .line 390
    iget-boolean v0, p0, Landroid/view/ChoreographerExtImpl;->mIsScrollOptSceneEnable:Z

    if-eqz v0, :cond_2

    .line 391
    move-wide v0, p1

    .line 392
    .local v0, "vsyncTimeNano":J
    invoke-virtual {p5}, Landroid/view/Choreographer$FrameData;->getFrameTimeNanos()J

    move-result-wide v2

    .line 393
    .local v2, "tmpFrameTimeNanos":J
    iput-object p5, p0, Landroid/view/ChoreographerExtImpl;->mFrameData:Landroid/view/Choreographer$FrameData;

    .line 394
    iget-boolean v4, p0, Landroid/view/ChoreographerExtImpl;->mIsInPreAnimOpt:Z

    if-eqz v4, :cond_0

    .line 396
    iget-wide v0, p0, Landroid/view/ChoreographerExtImpl;->mLastFrameAnimOptTimeNano:J

    .line 397
    iget-object v4, p0, Landroid/view/ChoreographerExtImpl;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v4}, Landroid/view/Choreographer;->getWrapper()Landroid/view/IChoreographerWrapper;

    move-result-object v4

    invoke-interface {v4, p5, v0, v1}, Landroid/view/IChoreographerWrapper;->setFrameTimeNanosForFrameData(Landroid/view/Choreographer$FrameData;J)V

    .line 400
    :cond_0
    const-wide/32 v4, 0xf4240

    div-long v4, v0, v4

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->lockAnimationClock(J)V

    .line 402
    iget-object v4, p0, Landroid/view/ChoreographerExtImpl;->mChoreographer:Landroid/view/Choreographer;

    iget-object v4, v4, Landroid/view/Choreographer;->mFrameInfo:Landroid/graphics/FrameInfo;

    invoke-virtual {v4}, Landroid/graphics/FrameInfo;->markInputHandlingStart()V

    .line 403
    iget-object v4, p0, Landroid/view/ChoreographerExtImpl;->mChoreographer:Landroid/view/Choreographer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, p5, p3, p4}, Landroid/view/Choreographer;->doCallbacks(ILandroid/view/Choreographer$FrameData;J)V

    .line 407
    invoke-virtual {p0}, Landroid/view/ChoreographerExtImpl;->doFrameHook()V

    .line 409
    iget-object v4, p0, Landroid/view/ChoreographerExtImpl;->mChoreographer:Landroid/view/Choreographer;

    iget-object v4, v4, Landroid/view/Choreographer;->mFrameInfo:Landroid/graphics/FrameInfo;

    invoke-virtual {v4}, Landroid/graphics/FrameInfo;->markAnimationsStart()V

    .line 410
    iget-boolean v4, p0, Landroid/view/ChoreographerExtImpl;->mIsInPreAnimOpt:Z

    if-nez v4, :cond_1

    .line 411
    iget-object v4, p0, Landroid/view/ChoreographerExtImpl;->mChoreographer:Landroid/view/Choreographer;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, p5, p3, p4}, Landroid/view/Choreographer;->doCallbacks(ILandroid/view/Choreographer$FrameData;J)V

    .line 413
    :cond_1
    iget-object v4, p0, Landroid/view/ChoreographerExtImpl;->mChoreographer:Landroid/view/Choreographer;

    const/4 v5, 0x2

    invoke-virtual {v4, v5, p5, p3, p4}, Landroid/view/Choreographer;->doCallbacks(ILandroid/view/Choreographer$FrameData;J)V

    .line 417
    invoke-virtual {p0}, Landroid/view/ChoreographerExtImpl;->doFrameHook()V

    .line 419
    iget-object v4, p0, Landroid/view/ChoreographerExtImpl;->mChoreographer:Landroid/view/Choreographer;

    iget-object v4, v4, Landroid/view/Choreographer;->mFrameInfo:Landroid/graphics/FrameInfo;

    invoke-virtual {v4}, Landroid/graphics/FrameInfo;->markPerformTraversalsStart()V

    .line 420
    iget-object v4, p0, Landroid/view/ChoreographerExtImpl;->mChoreographer:Landroid/view/Choreographer;

    const/4 v5, 0x3

    invoke-virtual {v4, v5, p5, p3, p4}, Landroid/view/Choreographer;->doCallbacks(ILandroid/view/Choreographer$FrameData;J)V

    .line 424
    invoke-virtual {p0}, Landroid/view/ChoreographerExtImpl;->doFrameHook()V

    .line 426
    iget-object v4, p0, Landroid/view/ChoreographerExtImpl;->mChoreographer:Landroid/view/Choreographer;

    const/4 v5, 0x4

    invoke-virtual {v4, v5, p5, p3, p4}, Landroid/view/Choreographer;->doCallbacks(ILandroid/view/Choreographer$FrameData;J)V

    .line 428
    iget-object v4, p0, Landroid/view/ChoreographerExtImpl;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v4}, Landroid/view/Choreographer;->getWrapper()Landroid/view/IChoreographerWrapper;

    move-result-object v4

    invoke-interface {v4, p5, v2, v3}, Landroid/view/IChoreographerWrapper;->setFrameTimeNanosForFrameData(Landroid/view/Choreographer$FrameData;J)V

    .line 430
    .end local v0    # "vsyncTimeNano":J
    .end local v2    # "tmpFrameTimeNanos":J
    :cond_2
    iget-boolean v0, p0, Landroid/view/ChoreographerExtImpl;->mIsScrollOptSceneEnable:Z

    return v0
.end method

.method blacklist doAnimCallback(JJLandroid/view/Choreographer$FrameData;)V
    .locals 4
    .param p1, "intendedFrameTimeNanos"    # J
    .param p3, "frameIntervalNanos"    # J
    .param p5, "frameData"    # Landroid/view/Choreographer$FrameData;

    .line 495
    invoke-virtual {p5}, Landroid/view/Choreographer$FrameData;->getFrameTimeNanos()J

    move-result-wide v0

    .line 496
    .local v0, "tmp":J
    iget-object v2, p0, Landroid/view/ChoreographerExtImpl;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v2}, Landroid/view/Choreographer;->getWrapper()Landroid/view/IChoreographerWrapper;

    move-result-object v2

    invoke-interface {v2, p5, p1, p2}, Landroid/view/IChoreographerWrapper;->setFrameTimeNanosForFrameData(Landroid/view/Choreographer$FrameData;J)V

    .line 499
    const-wide/32 v2, 0xf4240

    :try_start_0
    div-long v2, p1, v2

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->lockAnimationClock(J)V

    .line 500
    iget-object v2, p0, Landroid/view/ChoreographerExtImpl;->mChoreographer:Landroid/view/Choreographer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p5, p3, p4}, Landroid/view/Choreographer;->doCallbacks(ILandroid/view/Choreographer$FrameData;J)V

    .line 502
    iput-wide p1, p0, Landroid/view/ChoreographerExtImpl;->mLastFrameAnimOptTimeNano:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 504
    invoke-static {}, Landroid/view/animation/AnimationUtils;->unlockAnimationClock()V

    .line 505
    iget-object v2, p0, Landroid/view/ChoreographerExtImpl;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v2}, Landroid/view/Choreographer;->getWrapper()Landroid/view/IChoreographerWrapper;

    move-result-object v2

    invoke-interface {v2, p5, v0, v1}, Landroid/view/IChoreographerWrapper;->setFrameTimeNanosForFrameData(Landroid/view/Choreographer$FrameData;J)V

    .line 506
    nop

    .line 507
    return-void

    .line 504
    :catchall_0
    move-exception v2

    invoke-static {}, Landroid/view/animation/AnimationUtils;->unlockAnimationClock()V

    .line 505
    iget-object v3, p0, Landroid/view/ChoreographerExtImpl;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v3}, Landroid/view/Choreographer;->getWrapper()Landroid/view/IChoreographerWrapper;

    move-result-object v3

    invoke-interface {v3, p5, v0, v1}, Landroid/view/IChoreographerWrapper;->setFrameTimeNanosForFrameData(Landroid/view/Choreographer$FrameData;J)V

    .line 506
    throw v2
.end method

.method public blacklist doAnimCallback(Landroid/view/Choreographer$FrameData;)V
    .locals 12
    .param p1, "frameData"    # Landroid/view/Choreographer$FrameData;

    .line 635
    invoke-direct {p0}, Landroid/view/ChoreographerExtImpl;->markOpAnimationStart()V

    .line 636
    invoke-static {}, Landroid/view/OplusSlideAnimOptHelper;->isOptDebugEnable()Z

    move-result v0

    const-wide/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 637
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scrollOpt-preanimation "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v3, p0, Landroid/view/ChoreographerExtImpl;->mLastFrameAnimOptTimeNano:J

    const-wide/32 v5, 0xf4240

    div-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 639
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ChoreographerExtImpl;->mIsInPreAnimOpt:Z

    .line 640
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ChoreographerExtImpl;->mIsPreAnimOptScheduled:Z

    .line 642
    iget-object v0, p0, Landroid/view/ChoreographerExtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 643
    :try_start_0
    iget-object v3, p0, Landroid/view/ChoreographerExtImpl;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v3}, Landroid/view/Choreographer;->getWrapper()Landroid/view/IChoreographerWrapper;

    move-result-object v3

    iget-wide v4, p0, Landroid/view/ChoreographerExtImpl;->mLastFrameAnimOptTimeNano:J

    invoke-interface {v3, v4, v5}, Landroid/view/IChoreographerWrapper;->scheduleFrameLocked(J)V

    .line 644
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 645
    iget-wide v7, p0, Landroid/view/ChoreographerExtImpl;->mLastFrameAnimOptTimeNano:J

    iget-object v0, p0, Landroid/view/ChoreographerExtImpl;->mOplusSlideAnimOptHelper:Landroid/view/OplusSlideAnimOptHelper;

    invoke-virtual {v0}, Landroid/view/OplusSlideAnimOptHelper;->getFrameIntervalNanos()J

    move-result-wide v9

    move-object v6, p0

    move-object v11, p1

    invoke-virtual/range {v6 .. v11}, Landroid/view/ChoreographerExtImpl;->doAnimCallback(JJLandroid/view/Choreographer$FrameData;)V

    .line 646
    invoke-static {}, Landroid/view/OplusSlideAnimOptHelper;->isOptDebugEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 647
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 649
    :cond_1
    invoke-direct {p0}, Landroid/view/ChoreographerExtImpl;->markOpAnimationEnd()V

    .line 650
    return-void

    .line 644
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public blacklist doFrameHook()V
    .locals 14

    .line 295
    iget-wide v0, p0, Landroid/view/ChoreographerExtImpl;->mFrameStartNanos:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/view/ChoreographerExtImpl;->mFrameStartNanos:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x4c4b40

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 296
    iget-object v1, p0, Landroid/view/ChoreographerExtImpl;->mUIFirstMgr:Lcom/oplus/uifirst/IOplusUIFirstManager;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xd4

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    invoke-interface/range {v1 .. v13}, Lcom/oplus/uifirst/IOplusUIFirstManager;->ofbBoostHint(IIIIIIJJJ)V

    .line 297
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/view/ChoreographerExtImpl;->mFrameStartNanos:J

    .line 299
    :cond_0
    return-void
.end method

.method public blacklist doFrameStartHook(J)V
    .locals 16
    .param p1, "frameStartNanos"    # J

    .line 280
    move-object/from16 v0, p0

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Landroid/view/ChoreographerExtImpl;->mFrameStartNanos:J

    .line 285
    iget-object v3, v0, Landroid/view/ChoreographerExtImpl;->mUIFirstMgr:Lcom/oplus/uifirst/IOplusUIFirstManager;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xc8

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    invoke-interface/range {v3 .. v15}, Lcom/oplus/uifirst/IOplusUIFirstManager;->ofbBoostHint(IIIIIIJJJ)V

    .line 286
    iget-wide v1, v0, Landroid/view/ChoreographerExtImpl;->mFrameIntervalNanos:J

    const-wide/32 v3, 0xa98ac7

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    .line 288
    move-wide/from16 v1, p1

    iput-wide v1, v0, Landroid/view/ChoreographerExtImpl;->mFrameStartNanos:J

    goto :goto_0

    .line 286
    :cond_0
    move-wide/from16 v1, p1

    .line 291
    :goto_0
    return-void
.end method

.method public blacklist doInitiativeFrame(JI)V
    .locals 7
    .param p1, "obj"    # J
    .param p3, "arg1"    # I

    .line 616
    invoke-static {}, Landroid/view/OplusSlideAnimOptHelper;->isOptDebugEnable()Z

    move-result v0

    const-wide/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 617
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_DO_INITIATIVE_FRAME: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/32 v3, 0xf4240

    div-long v3, p1, v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 619
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ChoreographerExtImpl;->mIsInitiativeFrame:Z

    .line 620
    new-instance v0, Landroid/view/DisplayEventReceiver$VsyncEventData;

    sget-object v3, Landroid/view/DisplayEventReceiver$VsyncEventData;->INVALID_FRAME_TIMELINES:[Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    iget-object v4, p0, Landroid/view/ChoreographerExtImpl;->mOplusSlideAnimOptHelper:Landroid/view/OplusSlideAnimOptHelper;

    .line 624
    invoke-virtual {v4}, Landroid/view/OplusSlideAnimOptHelper;->getFrameIntervalNanos()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-direct {v0, v3, v6, v4, v5}, Landroid/view/DisplayEventReceiver$VsyncEventData;-><init>([Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;IJ)V

    .line 626
    .local v0, "vsyncEventData":Landroid/view/DisplayEventReceiver$VsyncEventData;
    iget-object v3, p0, Landroid/view/ChoreographerExtImpl;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v3, p1, p2, p3, v0}, Landroid/view/Choreographer;->doFrame(JILandroid/view/DisplayEventReceiver$VsyncEventData;)V

    .line 627
    iput-boolean v6, p0, Landroid/view/ChoreographerExtImpl;->mIsInitiativeFrame:Z

    .line 628
    invoke-static {}, Landroid/view/OplusSlideAnimOptHelper;->isOptDebugEnable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 629
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 631
    :cond_1
    return-void
.end method

.method public blacklist dumpAnimationDropInfo(J)V
    .locals 5
    .param p1, "startNanos"    # J

    .line 260
    iget v0, p0, Landroid/view/ChoreographerExtImpl;->mIsSFChoregrapher:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 261
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 262
    .local v0, "endNanos":J
    sub-long v2, v0, p1

    long-to-float v2, v2

    const v3, 0x358637bd    # 1.0E-6f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 263
    .local v2, "delayms":I
    const/16 v3, 0x14

    if-le v2, v3, :cond_0

    .line 264
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "01 10 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Quality"

    invoke-static {v4, v3}, Landroid/util/Log;->p(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    .end local v0    # "endNanos":J
    .end local v2    # "delayms":I
    :cond_0
    return-void
.end method

.method public blacklist getVsyncEventDataId()J
    .locals 2

    .line 654
    iget-wide v0, p0, Landroid/view/ChoreographerExtImpl;->mVsyncEventDataId:J

    return-wide v0
.end method

.method public blacklist handleInputEvent(Landroid/view/InputEvent;II)V
    .locals 12
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "maximumVelocity"    # I
    .param p3, "minimumVelocity"    # I

    .line 685
    iget-boolean v0, p0, Landroid/view/ChoreographerExtImpl;->mJankTrackerEnable:Z

    if-nez v0, :cond_0

    .line 686
    return-void

    .line 688
    :cond_0
    const-wide/16 v0, 0x0

    .line 689
    .local v0, "flag":J
    instance-of v2, p1, Landroid/view/MotionEvent;

    const/4 v3, 0x1

    if-eqz v2, :cond_d

    .line 690
    move-object v2, p1

    check-cast v2, Landroid/view/MotionEvent;

    .line 691
    .local v2, "motionEvent":Landroid/view/MotionEvent;
    const/16 v4, 0x1002

    invoke-virtual {v2, v4}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 692
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    .line 693
    .local v4, "action":I
    const/4 v5, 0x2

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    if-nez v4, :cond_2

    .line 694
    const-wide/16 v0, 0x4

    .line 695
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEventTimeNano()J

    move-result-wide v9

    iput-wide v9, p0, Landroid/view/ChoreographerExtImpl;->mInputEventTime:J

    .line 696
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    iput-wide v9, p0, Landroid/view/ChoreographerExtImpl;->mInputProcessTime:J

    .line 697
    iget-object v3, p0, Landroid/view/ChoreographerExtImpl;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v3, :cond_1

    .line 698
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Landroid/view/ChoreographerExtImpl;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 700
    :cond_1
    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 702
    :goto_0
    iget-object v3, p0, Landroid/view/ChoreographerExtImpl;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, v2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 703
    invoke-virtual {v2, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Landroid/view/ChoreographerExtImpl;->mActivePointerId:I

    .line 704
    iput-wide v7, p0, Landroid/view/ChoreographerExtImpl;->mScrollState:J

    goto/16 :goto_5

    .line 705
    :cond_2
    if-ne v4, v5, :cond_4

    .line 706
    const-wide/16 v0, 0x8

    .line 707
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEventTimeNano()J

    move-result-wide v9

    iput-wide v9, p0, Landroid/view/ChoreographerExtImpl;->mInputEventTime:J

    .line 708
    iget v3, p0, Landroid/view/ChoreographerExtImpl;->mActivePointerId:I

    if-ltz v3, :cond_3

    .line 709
    invoke-virtual {v2, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    if-ltz v3, :cond_3

    .line 710
    iget-object v3, p0, Landroid/view/ChoreographerExtImpl;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, v2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 713
    :cond_3
    iput-wide v7, p0, Landroid/view/ChoreographerExtImpl;->mScrollState:J

    goto/16 :goto_5

    .line 714
    :cond_4
    const/4 v9, -0x1

    if-ne v4, v3, :cond_a

    .line 715
    const-wide/16 v0, 0x10

    .line 716
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEventTimeNano()J

    move-result-wide v7

    iput-wide v7, p0, Landroid/view/ChoreographerExtImpl;->mInputEventTime:J

    .line 717
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    iput-wide v7, p0, Landroid/view/ChoreographerExtImpl;->mInputProcessTime:J

    .line 718
    iget v7, p0, Landroid/view/ChoreographerExtImpl;->mActivePointerId:I

    if-ltz v7, :cond_9

    .line 719
    invoke-virtual {v2, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v7

    if-ltz v7, :cond_9

    .line 720
    iget-object v7, p0, Landroid/view/ChoreographerExtImpl;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, v2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 721
    iget-object v7, p0, Landroid/view/ChoreographerExtImpl;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v8, 0x3e8

    int-to-float v10, p2

    invoke-virtual {v7, v8, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 722
    iget-object v7, p0, Landroid/view/ChoreographerExtImpl;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v8, p0, Landroid/view/ChoreographerExtImpl;->mActivePointerId:I

    invoke-virtual {v7, v8}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    int-to-float v8, p3

    cmpl-float v7, v7, v8

    if-lez v7, :cond_5

    move v7, v3

    goto :goto_1

    :cond_5
    move v7, v6

    .line 723
    .local v7, "isYv":Z
    :goto_1
    iget-object v8, p0, Landroid/view/ChoreographerExtImpl;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v10, p0, Landroid/view/ChoreographerExtImpl;->mActivePointerId:I

    invoke-virtual {v8, v10}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    int-to-float v10, p3

    cmpl-float v8, v8, v10

    if-lez v8, :cond_6

    goto :goto_2

    :cond_6
    move v3, v6

    .line 724
    .local v3, "isXv":Z
    :goto_2
    if-nez v7, :cond_8

    if-eqz v3, :cond_7

    goto :goto_3

    .line 727
    :cond_7
    const-wide/16 v10, 0x3

    iput-wide v10, p0, Landroid/view/ChoreographerExtImpl;->mScrollState:J

    goto :goto_4

    .line 725
    :cond_8
    :goto_3
    const-wide/16 v10, 0x2

    iput-wide v10, p0, Landroid/view/ChoreographerExtImpl;->mScrollState:J

    .line 731
    .end local v3    # "isXv":Z
    .end local v7    # "isYv":Z
    :cond_9
    :goto_4
    iput v9, p0, Landroid/view/ChoreographerExtImpl;->mActivePointerId:I

    goto :goto_5

    .line 732
    :cond_a
    const/4 v3, 0x3

    if-ne v4, v3, :cond_b

    .line 733
    iput-wide v7, p0, Landroid/view/ChoreographerExtImpl;->mScrollState:J

    .line 734
    iput v9, p0, Landroid/view/ChoreographerExtImpl;->mActivePointerId:I

    .line 736
    :cond_b
    :goto_5
    if-eq v4, v5, :cond_c

    .line 737
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ID:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/InputEvent;->getId()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " time:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 738
    invoke-virtual {p1}, Landroid/view/InputEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " action:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " scrollStage:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v5, p0, Landroid/view/ChoreographerExtImpl;->mScrollState:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 737
    const-wide/16 v5, 0x8

    invoke-static {v5, v6, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 741
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 744
    .end local v2    # "motionEvent":Landroid/view/MotionEvent;
    .end local v4    # "action":I
    :cond_c
    goto :goto_6

    :cond_d
    instance-of v2, p1, Landroid/view/KeyEvent;

    if-eqz v2, :cond_c

    .line 745
    move-object v2, p1

    check-cast v2, Landroid/view/KeyEvent;

    .line 746
    .local v2, "keyEvent":Landroid/view/KeyEvent;
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v3, :cond_e

    .line 747
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_e

    .line 748
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getEventTimeNano()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/view/ChoreographerExtImpl;->mInputEventTime:J

    .line 749
    const-wide/16 v0, 0x100

    .line 752
    .end local v2    # "keyEvent":Landroid/view/KeyEvent;
    :cond_e
    :goto_6
    iget-wide v2, p0, Landroid/view/ChoreographerExtImpl;->mOpFlags:J

    or-long/2addr v2, v0

    iput-wide v2, p0, Landroid/view/ChoreographerExtImpl;->mOpFlags:J

    .line 753
    return-void
.end method

.method blacklist isFocusApp(Landroid/app/ActivityThread;)Z
    .locals 2
    .param p1, "activityThread"    # Landroid/app/ActivityThread;

    .line 231
    invoke-direct {p0}, Landroid/view/ChoreographerExtImpl;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/app/ActivityThread;->mOplusActivityThreadExt:Landroid/app/IActivityThreadExt;

    invoke-interface {v0}, Landroid/app/IActivityThreadExt;->isTopApp()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist makePauseActivityEnd()V
    .locals 2

    .line 907
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/ChoreographerExtImpl;->mPauseLifecycleEndTime:J

    .line 908
    return-void
.end method

.method public blacklist markDrawStart()V
    .locals 1

    .line 790
    iget v0, p0, Landroid/view/ChoreographerExtImpl;->mDrawCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/view/ChoreographerExtImpl;->mDrawCount:I

    .line 791
    return-void
.end method

.method public blacklist markDrawingCacheFlag()V
    .locals 4

    .line 775
    iget-wide v0, p0, Landroid/view/ChoreographerExtImpl;->mOpFlags:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/ChoreographerExtImpl;->mOpFlags:J

    .line 776
    return-void
.end method

.method public blacklist markPerformClickFlag()V
    .locals 4

    .line 780
    iget-wide v0, p0, Landroid/view/ChoreographerExtImpl;->mOpFlags:J

    const-wide/16 v2, 0x1000

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/ChoreographerExtImpl;->mOpFlags:J

    .line 781
    return-void
.end method

.method public blacklist markRelayout()V
    .locals 1

    .line 785
    iget v0, p0, Landroid/view/ChoreographerExtImpl;->mRelayoutCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/view/ChoreographerExtImpl;->mRelayoutCount:I

    .line 786
    return-void
.end method

.method public blacklist populateAndResetFrameInfo([JZ)V
    .locals 13
    .param p1, "frameInfoArray"    # [J
    .param p2, "appVisible"    # Z

    .line 829
    iget-boolean v0, p0, Landroid/view/ChoreographerExtImpl;->mJankTrackerEnable:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 830
    iget-wide v0, p0, Landroid/view/ChoreographerExtImpl;->mOpFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/ChoreographerExtImpl;->mOpFlags:J

    .line 832
    :cond_0
    iget-wide v0, p0, Landroid/view/ChoreographerExtImpl;->mPauseLifecycleEndTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const-wide/16 v5, 0x800

    if-eqz v4, :cond_1

    .line 833
    iget-wide v7, p0, Landroid/view/ChoreographerExtImpl;->mOpFlags:J

    or-long/2addr v7, v5

    iput-wide v7, p0, Landroid/view/ChoreographerExtImpl;->mOpFlags:J

    .line 835
    :cond_1
    iget-wide v7, p0, Landroid/view/ChoreographerExtImpl;->mActivityLaunchTime:J

    cmp-long v4, v7, v2

    if-eqz v4, :cond_2

    .line 836
    iget-wide v9, p0, Landroid/view/ChoreographerExtImpl;->mOpFlags:J

    const-wide/16 v11, 0x200

    or-long/2addr v9, v11

    iput-wide v9, p0, Landroid/view/ChoreographerExtImpl;->mOpFlags:J

    .line 838
    :cond_2
    iget-wide v9, p0, Landroid/view/ChoreographerExtImpl;->mActivityResumeTime:J

    cmp-long v2, v9, v2

    const-wide/16 v3, 0x400

    if-eqz v2, :cond_3

    .line 839
    iget-wide v11, p0, Landroid/view/ChoreographerExtImpl;->mOpFlags:J

    or-long/2addr v11, v3

    iput-wide v11, p0, Landroid/view/ChoreographerExtImpl;->mOpFlags:J

    .line 841
    :cond_3
    const/4 v2, 0x0

    iget-wide v11, p0, Landroid/view/ChoreographerExtImpl;->mOpFlags:J

    aput-wide v11, p1, v2

    .line 842
    const/4 v2, 0x1

    iget-wide v11, p0, Landroid/view/ChoreographerExtImpl;->mAnimStartTime:J

    aput-wide v11, p1, v2

    .line 843
    const/4 v2, 0x2

    iget-wide v11, p0, Landroid/view/ChoreographerExtImpl;->mAnimEndTime:J

    aput-wide v11, p1, v2

    .line 844
    const/4 v2, 0x3

    iget-wide v11, p0, Landroid/view/ChoreographerExtImpl;->mInputEventTime:J

    aput-wide v11, p1, v2

    .line 845
    const/4 v2, 0x4

    iget-wide v11, p0, Landroid/view/ChoreographerExtImpl;->mInputProcessTime:J

    aput-wide v11, p1, v2

    .line 846
    const/4 v2, 0x5

    iget-wide v11, p0, Landroid/view/ChoreographerExtImpl;->mScrollState:J

    aput-wide v11, p1, v2

    .line 847
    const/4 v2, 0x6

    iget-wide v11, p0, Landroid/view/ChoreographerExtImpl;->mMeasureTimeConsume:J

    aput-wide v11, p1, v2

    .line 848
    const/4 v2, 0x7

    iget-wide v11, p0, Landroid/view/ChoreographerExtImpl;->mLayoutTimeConsume:J

    aput-wide v11, p1, v2

    .line 849
    const/16 v2, 0x8

    iget v11, p0, Landroid/view/ChoreographerExtImpl;->mRelayoutCount:I

    int-to-long v11, v11

    aput-wide v11, p1, v2

    .line 850
    const/16 v2, 0x9

    iget v11, p0, Landroid/view/ChoreographerExtImpl;->mViewCount:I

    int-to-long v11, v11

    aput-wide v11, p1, v2

    .line 851
    const/16 v2, 0xa

    iget v11, p0, Landroid/view/ChoreographerExtImpl;->mDrawCount:I

    int-to-long v11, v11

    aput-wide v11, p1, v2

    .line 852
    const/16 v2, 0xb

    aput-wide v7, p1, v2

    .line 853
    const/16 v2, 0xc

    aput-wide v9, p1, v2

    .line 854
    const/16 v2, 0xd

    iget-wide v7, p0, Landroid/view/ChoreographerExtImpl;->mActivityPauseStartTime:J

    aput-wide v7, p1, v2

    .line 855
    const/16 v2, 0xe

    iget-wide v7, p0, Landroid/view/ChoreographerExtImpl;->mActivityPauseEndTime:J

    aput-wide v7, p1, v2

    .line 856
    const/16 v2, 0xf

    aput-wide v0, p1, v2

    .line 857
    sget-boolean v0, Landroid/view/ChoreographerExtImpl;->DEBUG_LOG:Z

    if-eqz v0, :cond_4

    .line 858
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "as:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/view/ChoreographerExtImpl;->mAnimStartTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " an:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/view/ChoreographerExtImpl;->mAnimStartTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mea:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/view/ChoreographerExtImpl;->mMeasureTimeConsume:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " lay:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/view/ChoreographerExtImpl;->mLayoutTimeConsume:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " input:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/view/ChoreographerExtImpl;->mInputEventTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " inputProcess:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/view/ChoreographerExtImpl;->mInputProcessTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " re:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/ChoreographerExtImpl;->mRelayoutCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Scroll:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 861
    invoke-static {}, Landroid/view/OplusSlideAnimOptHelper;->getInstance()Landroid/view/OplusSlideAnimOptHelper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/OplusSlideAnimOptHelper;->isFlinging()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " flingState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 862
    invoke-direct {p0}, Landroid/view/ChoreographerExtImpl;->getFlingState()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " drawCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/ChoreographerExtImpl;->mDrawCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " viewCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/ChoreographerExtImpl;->mViewCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " launch:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/view/ChoreographerExtImpl;->mActivityLaunchTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ru:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/view/ChoreographerExtImpl;->mActivityResumeTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " p1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/view/ChoreographerExtImpl;->mActivityPauseStartTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " p2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/view/ChoreographerExtImpl;->mActivityPauseEndTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " p3:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/view/ChoreographerExtImpl;->mPauseLifecycleEndTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " vs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isLa:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/view/ChoreographerExtImpl;->mOpFlags:J

    and-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isPa:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/view/ChoreographerExtImpl;->mOpFlags:J

    and-long/2addr v1, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Enable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/ChoreographerExtImpl;->mJankTrackerEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Flag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/view/ChoreographerExtImpl;->mOpFlags:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 858
    const-wide/16 v1, 0x8

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 869
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 872
    :cond_4
    return-void
.end method

.method public blacklist populateLayoutCost(J)V
    .locals 2
    .param p1, "cost"    # J

    .line 770
    iget-wide v0, p0, Landroid/view/ChoreographerExtImpl;->mLayoutTimeConsume:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/view/ChoreographerExtImpl;->mLayoutTimeConsume:J

    .line 771
    return-void
.end method

.method public blacklist populateMeasureCost(J)V
    .locals 2
    .param p1, "cost"    # J

    .line 765
    iget-wide v0, p0, Landroid/view/ChoreographerExtImpl;->mMeasureTimeConsume:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/view/ChoreographerExtImpl;->mMeasureTimeConsume:J

    .line 766
    return-void
.end method

.method public blacklist recordSkippedFrames(JZZJJ)V
    .locals 20
    .param p1, "skippedFrames"    # J
    .param p3, "animation"    # Z
    .param p4, "traversal"    # Z
    .param p5, "startNanos"    # J
    .param p7, "jitterNanos"    # J

    .line 168
    move-object/from16 v6, p0

    move-wide/from16 v7, p1

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v9

    .line 169
    .local v9, "activityThread":Landroid/app/ActivityThread;
    sget v0, Landroid/view/ChoreographerExtImpl;->SKIPPED_FRAME_THRESHOLD:I

    int-to-long v0, v0

    cmp-long v0, v7, v0

    if-ltz v0, :cond_a

    invoke-virtual {v6, v9}, Landroid/view/ChoreographerExtImpl;->isFocusApp(Landroid/app/ActivityThread;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 170
    move-wide/from16 v0, p7

    .line 171
    .local v0, "fixJitterNanos":J
    move-wide/from16 v2, p1

    .line 172
    .local v2, "fixSkippedFrames":J
    const-wide/16 v4, 0x0

    iget-wide v10, v6, Landroid/view/ChoreographerExtImpl;->mActivityResumeTime:J

    cmp-long v4, v4, v10

    if-eqz v4, :cond_0

    .line 173
    sub-long v4, p5, v10

    move-wide/from16 v10, p7

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 174
    iget-wide v4, v6, Landroid/view/ChoreographerExtImpl;->mFrameIntervalNanos:J

    div-long v2, v0, v4

    move-wide v12, v0

    move-wide v14, v2

    goto :goto_0

    .line 172
    :cond_0
    move-wide/from16 v10, p7

    move-wide v12, v0

    move-wide v14, v2

    .line 176
    .end local v0    # "fixJitterNanos":J
    .end local v2    # "fixSkippedFrames":J
    .local v12, "fixJitterNanos":J
    .local v14, "fixSkippedFrames":J
    :goto_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    if-nez p4, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    move v5, v2

    .line 177
    .local v5, "animationWithoutTraversal":Z
    iget-object v2, v9, Landroid/app/ActivityThread;->mOplusActivityThreadExt:Landroid/app/IActivityThreadExt;

    invoke-interface {v2}, Landroid/app/IActivityThreadExt;->hasImportMessage()Z

    move-result v16

    .line 178
    .local v16, "hasImportMessage":Z
    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v4

    .line 179
    .local v4, "processName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 180
    .local v2, "reportLog":Z
    sget-boolean v3, Landroid/view/ChoreographerExtImpl;->mDropFirstFrameStatistics:Z

    if-eqz v3, :cond_5

    .line 181
    if-eqz v16, :cond_2

    .line 182
    iget v3, v6, Landroid/view/ChoreographerExtImpl;->mDoFrameIndex:I

    add-int/2addr v3, v0

    iput v3, v6, Landroid/view/ChoreographerExtImpl;->mDoFrameIndex:I

    .line 184
    :cond_2
    iget v0, v6, Landroid/view/ChoreographerExtImpl;->mDoFrameIndex:I

    const/4 v3, 0x2

    if-gt v0, v3, :cond_4

    if-nez v16, :cond_3

    goto :goto_2

    :cond_3
    move/from16 v17, v2

    goto :goto_3

    .line 186
    :cond_4
    :goto_2
    const/4 v2, 0x1

    .line 187
    iput v1, v6, Landroid/view/ChoreographerExtImpl;->mDoFrameIndex:I

    .line 188
    iget-object v0, v9, Landroid/app/ActivityThread;->mOplusActivityThreadExt:Landroid/app/IActivityThreadExt;

    invoke-interface {v0, v1}, Landroid/app/IActivityThreadExt;->setImportMessage(Z)V

    move/from16 v17, v2

    goto :goto_3

    .line 191
    :cond_5
    const/4 v2, 0x1

    move/from16 v17, v2

    .line 193
    .end local v2    # "reportLog":Z
    .local v17, "reportLog":Z
    :goto_3
    const v0, 0x358637bd    # 1.0E-6f

    if-eqz v17, :cond_6

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    .local v1, "builder":Ljava/lang/StringBuilder;
    const-string v2, "Skipped: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 196
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 197
    const-string v2, " cost "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    long-to-float v3, v12

    mul-float/2addr v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 198
    const-string v2, " refreshRate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v18, v1

    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .local v18, "builder":Ljava/lang/StringBuilder;
    iget-wide v0, v6, Landroid/view/ChoreographerExtImpl;->mFrameIntervalNanos:J

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 199
    const-string v0, " bit "

    move-object/from16 v1, v18

    .end local v18    # "builder":Ljava/lang/StringBuilder;
    .restart local v1    # "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/app/OplusActivityThreadExtImpl;->is64Bit()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 200
    const-string v0, " processName "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Quality"

    invoke-static {v2, v0}, Landroid/util/Log;->p(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    :cond_6
    const-wide/16 v0, 0x32

    cmp-long v0, v14, v0

    if-lez v0, :cond_7

    .line 204
    long-to-float v0, v12

    const v1, 0x358637bd    # 1.0E-6f

    mul-float v18, v0, v1

    move-object/from16 v0, p0

    move v1, v5

    move-wide v2, v14

    move-object/from16 v19, v4

    .end local v4    # "processName":Ljava/lang/String;
    .local v19, "processName":Ljava/lang/String;
    move/from16 v4, v18

    move v10, v5

    .end local v5    # "animationWithoutTraversal":Z
    .local v10, "animationWithoutTraversal":Z
    move-object/from16 v5, v19

    invoke-direct/range {v0 .. v5}, Landroid/view/ChoreographerExtImpl;->writeStatsdLog(ZJFLjava/lang/String;)V

    goto :goto_4

    .line 203
    .end local v10    # "animationWithoutTraversal":Z
    .end local v19    # "processName":Ljava/lang/String;
    .restart local v4    # "processName":Ljava/lang/String;
    .restart local v5    # "animationWithoutTraversal":Z
    :cond_7
    move-object/from16 v19, v4

    move v10, v5

    .line 206
    .end local v4    # "processName":Ljava/lang/String;
    .end local v5    # "animationWithoutTraversal":Z
    .restart local v10    # "animationWithoutTraversal":Z
    .restart local v19    # "processName":Ljava/lang/String;
    :goto_4
    const-wide/16 v0, 0x8

    long-to-int v2, v14

    const-string v3, "skippedFrames"

    invoke-static {v0, v1, v3, v2}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 209
    iput-wide v14, v6, Landroid/view/ChoreographerExtImpl;->mTraceMoreFrames:J

    .line 211
    sget-boolean v0, Landroid/view/ChoreographerExtImpl;->TRACK_FRAME_SKIP:Z

    if-eqz v0, :cond_9

    .line 212
    const/4 v0, 0x0

    .line 213
    .local v0, "threshold":I
    if-eqz v10, :cond_8

    .line 214
    sget v0, Landroid/view/ChoreographerExtImpl;->SKIPPED_FRAME_ANIM_TRACK_THRESHOLD:I

    goto :goto_5

    .line 216
    :cond_8
    sget v0, Landroid/view/ChoreographerExtImpl;->SKIPPED_FRAME_TRACK_THRESHOLD:I

    .line 218
    :goto_5
    int-to-long v1, v0

    cmp-long v1, v14, v1

    if-ltz v1, :cond_9

    invoke-static/range {p5 .. p8}, Landroid/view/FrameSkipReporter;->checkDuplicate(JJ)Z

    move-result v1

    if-nez v1, :cond_9

    if-eqz v9, :cond_9

    .line 219
    iget-object v1, v9, Landroid/app/ActivityThread;->mOplusActivityThreadExt:Landroid/app/IActivityThreadExt;

    invoke-interface {v1}, Landroid/app/IActivityThreadExt;->isTopApp()Z

    move-result v1

    invoke-static {v1}, Landroid/view/FrameSkipReporter;->setForebackStatus(Z)V

    .line 220
    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v14, v15, v1}, Landroid/view/FrameSkipReporter;->report(ZJLjava/lang/String;)V

    .line 225
    .end local v0    # "threshold":I
    :cond_9
    iget-object v0, v9, Landroid/app/ActivityThread;->mOplusActivityThreadExt:Landroid/app/IActivityThreadExt;

    invoke-interface {v0, v7, v8}, Landroid/app/IActivityThreadExt;->asyncReportFrames(J)V

    .line 228
    .end local v10    # "animationWithoutTraversal":Z
    .end local v12    # "fixJitterNanos":J
    .end local v14    # "fixSkippedFrames":J
    .end local v16    # "hasImportMessage":Z
    .end local v17    # "reportLog":Z
    .end local v19    # "processName":Ljava/lang/String;
    :cond_a
    return-void
.end method

.method public blacklist resetFrameCount()V
    .locals 2

    .line 801
    invoke-direct {p0}, Landroid/view/ChoreographerExtImpl;->resetLaunchCount()V

    .line 802
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/ChoreographerExtImpl;->mOpFlags:J

    .line 803
    iput-wide v0, p0, Landroid/view/ChoreographerExtImpl;->mAnimStartTime:J

    .line 804
    iput-wide v0, p0, Landroid/view/ChoreographerExtImpl;->mAnimEndTime:J

    .line 805
    iput-wide v0, p0, Landroid/view/ChoreographerExtImpl;->mInputEventTime:J

    .line 806
    iput-wide v0, p0, Landroid/view/ChoreographerExtImpl;->mInputProcessTime:J

    .line 808
    iput-wide v0, p0, Landroid/view/ChoreographerExtImpl;->mMeasureTimeConsume:J

    .line 809
    iput-wide v0, p0, Landroid/view/ChoreographerExtImpl;->mLayoutTimeConsume:J

    .line 810
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ChoreographerExtImpl;->mRelayoutCount:I

    .line 811
    iput v0, p0, Landroid/view/ChoreographerExtImpl;->mViewCount:I

    .line 812
    iput v0, p0, Landroid/view/ChoreographerExtImpl;->mDrawCount:I

    .line 813
    return-void
.end method

.method public blacklist resetOptState(Z)V
    .locals 5
    .param p1, "isActivityEnable"    # Z

    .line 511
    iget-boolean v0, p0, Landroid/view/ChoreographerExtImpl;->mIsPreDraw:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 513
    iput-boolean v1, p0, Landroid/view/ChoreographerExtImpl;->mIsPreDraw:Z

    .line 515
    :cond_0
    iput-boolean p1, p0, Landroid/view/ChoreographerExtImpl;->mIsScrollOptSceneEnable:Z

    .line 516
    iget-boolean v0, p0, Landroid/view/ChoreographerExtImpl;->mIsPreAnimOptScheduled:Z

    if-eqz v0, :cond_1

    .line 518
    iget-object v0, p0, Landroid/view/ChoreographerExtImpl;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x67

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 519
    iput-boolean v1, p0, Landroid/view/ChoreographerExtImpl;->mIsPreAnimOptScheduled:Z

    .line 521
    :cond_1
    iget-boolean v0, p0, Landroid/view/ChoreographerExtImpl;->mIsInPreAnimOpt:Z

    if-eqz v0, :cond_2

    .line 522
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ChoreographerExtImpl;->mNeedForceDraw:Z

    .line 523
    iget-object v1, p0, Landroid/view/ChoreographerExtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 524
    :try_start_0
    iget-object v2, p0, Landroid/view/ChoreographerExtImpl;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x68

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 525
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Landroid/view/ChoreographerExtImpl;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v3}, Landroid/view/Choreographer;->getWrapper()Landroid/view/IChoreographerWrapper;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/IChoreographerWrapper;->setFrameScheduled(Z)V

    .line 526
    iget-wide v3, p0, Landroid/view/ChoreographerExtImpl;->mLastFrameAnimOptTimeNano:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 527
    iget-object v0, p0, Landroid/view/ChoreographerExtImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 528
    nop

    .end local v2    # "msg":Landroid/os/Message;
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 530
    :cond_2
    :goto_0
    return-void
.end method

.method public blacklist setIsPreDraw(Z)V
    .locals 1
    .param p1, "isPreDraw"    # Z

    .line 338
    iget-boolean v0, p0, Landroid/view/ChoreographerExtImpl;->mIsScrollOptSceneEnable:Z

    if-eqz v0, :cond_0

    .line 339
    iput-boolean p1, p0, Landroid/view/ChoreographerExtImpl;->mIsPreDraw:Z

    .line 341
    :cond_0
    return-void
.end method

.method public blacklist setIsSFChoregrapher(Z)V
    .locals 0
    .param p1, "isSFChoregrapher"    # Z

    .line 274
    iput p1, p0, Landroid/view/ChoreographerExtImpl;->mIsSFChoregrapher:I

    .line 276
    return-void
.end method

.method public blacklist setLifecycleState(IZJJJ)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "haveOnCreate"    # Z
    .param p3, "activityLaunchTime"    # J
    .param p5, "activityResumeTime"    # J
    .param p7, "activityPauseTime"    # J

    .line 881
    sget-boolean v0, Landroid/view/ChoreographerExtImpl;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    .line 882
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "newLifecycleState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " create:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " la:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ru:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pau:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x8

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 884
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 886
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 896
    :pswitch_0
    iput-wide p7, p0, Landroid/view/ChoreographerExtImpl;->mActivityPauseStartTime:J

    .line 897
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/ChoreographerExtImpl;->mActivityPauseEndTime:J

    .line 898
    iget-wide v0, p0, Landroid/view/ChoreographerExtImpl;->mOpFlags:J

    const-wide/16 v2, 0x800

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/ChoreographerExtImpl;->mOpFlags:J

    .line 899
    goto :goto_0

    .line 888
    :pswitch_1
    iput-wide p3, p0, Landroid/view/ChoreographerExtImpl;->mActivityLaunchTime:J

    .line 889
    iput-wide p5, p0, Landroid/view/ChoreographerExtImpl;->mActivityResumeTime:J

    .line 890
    iget-wide v0, p0, Landroid/view/ChoreographerExtImpl;->mOpFlags:J

    const-wide/16 v2, 0x400

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/ChoreographerExtImpl;->mOpFlags:J

    .line 891
    if-eqz p2, :cond_1

    .line 892
    const-wide/16 v2, 0x200

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/ChoreographerExtImpl;->mOpFlags:J

    .line 903
    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist setSlideAnimOptHelper(Landroid/view/Choreographer;)V
    .locals 1
    .param p1, "choreographer"    # Landroid/view/Choreographer;

    .line 534
    iget-object v0, p0, Landroid/view/ChoreographerExtImpl;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v0}, Landroid/view/Choreographer;->getWrapper()Landroid/view/IChoreographerWrapper;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IChoreographerWrapper;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ChoreographerExtImpl;->mHandler:Landroid/os/Handler;

    .line 535
    iget-object v0, p0, Landroid/view/ChoreographerExtImpl;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v0}, Landroid/view/Choreographer;->getWrapper()Landroid/view/IChoreographerWrapper;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IChoreographerWrapper;->getLock()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ChoreographerExtImpl;->mLock:Ljava/lang/Object;

    .line 536
    invoke-static {}, Landroid/view/OplusSlideAnimOptHelper;->getInstance()Landroid/view/OplusSlideAnimOptHelper;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ChoreographerExtImpl;->mOplusSlideAnimOptHelper:Landroid/view/OplusSlideAnimOptHelper;

    .line 537
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ChoreographerExtImpl;->mIsScrollOptEnable:Z

    .line 538
    return-void
.end method

.method public blacklist syncViewCount(I)V
    .locals 0
    .param p1, "viewCount"    # I

    .line 795
    iput p1, p0, Landroid/view/ChoreographerExtImpl;->mViewCount:I

    .line 796
    return-void
.end method

.method public blacklist traceBeginForOptimizeSlidingEffect(JJ)V
    .locals 7
    .param p1, "startNanos"    # J
    .param p3, "frameTimeNanos"    # J

    .line 376
    invoke-static {}, Landroid/view/OplusSlideAnimOptHelper;->isOptDebugEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    const-wide/16 v0, 0x8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Choreographer#doFrame_extra-start "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/32 v3, 0xf4240

    div-long v5, p1, v3

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "-original "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v5, p0, Landroid/view/ChoreographerExtImpl;->mOriginalFrameTimeNanos:J

    div-long/2addr v5, v3

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "-real "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    div-long v3, p3, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-isPreDraw "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/view/ChoreographerExtImpl;->mIsPreDraw:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-enable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/view/ChoreographerExtImpl;->mIsScrollOptEnable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-scene enable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 383
    invoke-static {}, Landroid/view/OplusSlideAnimOptHelper;->isCurrentSceneEnable()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-isFlinging "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/view/ChoreographerExtImpl;->mIsFlinging:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 377
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 386
    :cond_0
    return-void
.end method

.method public blacklist traceBeginForSkippedFrames()V
    .locals 7

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Choreographer#skippedFrames"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/view/ChoreographerExtImpl;->mTraceMoreFrames:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v5, p0, Landroid/view/ChoreographerExtImpl;->mTraceMoreFrames:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x8

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 244
    iput-wide v3, p0, Landroid/view/ChoreographerExtImpl;->mTraceMoreFrames:J

    .line 246
    return-void
.end method

.method public blacklist traceEndForOptimizeSlidingEffect()V
    .locals 2

    .line 435
    invoke-static {}, Landroid/view/OplusSlideAnimOptHelper;->isOptDebugEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 438
    :cond_0
    return-void
.end method

.method public blacklist traceEndForSkippedFrames()V
    .locals 2

    .line 252
    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 254
    return-void
.end method

.method public blacklist updateFrameIntervalNanos(J)V
    .locals 2
    .param p1, "frameIntervalNanos"    # J

    .line 659
    iget-wide v0, p0, Landroid/view/ChoreographerExtImpl;->mFrameIntervalNanos:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    .line 660
    iput-wide p1, p0, Landroid/view/ChoreographerExtImpl;->mFrameIntervalNanos:J

    .line 662
    :cond_0
    iget-object v0, p0, Landroid/view/ChoreographerExtImpl;->mOplusSlideAnimOptHelper:Landroid/view/OplusSlideAnimOptHelper;

    if-eqz v0, :cond_1

    .line 663
    invoke-virtual {v0, p1, p2}, Landroid/view/OplusSlideAnimOptHelper;->updateFrameInterval(J)V

    .line 665
    :cond_1
    return-void
.end method
