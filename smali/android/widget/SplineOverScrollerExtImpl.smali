.class public Landroid/widget/SplineOverScrollerExtImpl;
.super Ljava/lang/Object;
.source "SplineOverScrollerExtImpl.java"

# interfaces
.implements Landroid/widget/ISplineOverScrollerExt;


# static fields
.field private static final blacklist NUM_5:I = 0x5

.field private static blacklist sFlingOptimizerOverScroller:Landroid/widget/FlingOptimizerOverScroller;


# instance fields
.field private blacklist mFrameInterval:J

.field private blacklist mOplusOverScrollerExtImpl:Landroid/widget/OplusOverScrollerExtImpl;

.field private blacklist mOplusSlideAnimOptHelper:Landroid/view/OplusSlideAnimOptHelper;

.field private blacklist mOptHelper:Landroid/widget/IOplusScrollOptimizationHelper;

.field private blacklist mSplineOverScroller:Landroid/widget/OverScroller$SplineOverScroller;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 37
    const/4 v0, 0x0

    sput-object v0, Landroid/widget/SplineOverScrollerExtImpl;->sFlingOptimizerOverScroller:Landroid/widget/FlingOptimizerOverScroller;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 3
    .param p1, "splineOverScroller"    # Ljava/lang/Object;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const-wide/16 v0, 0x10

    iput-wide v0, p0, Landroid/widget/SplineOverScrollerExtImpl;->mFrameInterval:J

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/SplineOverScrollerExtImpl;->mOplusSlideAnimOptHelper:Landroid/view/OplusSlideAnimOptHelper;

    .line 49
    instance-of v0, p1, Landroid/widget/OverScroller$SplineOverScroller;

    if-eqz v0, :cond_0

    .line 50
    move-object v0, p1

    check-cast v0, Landroid/widget/OverScroller$SplineOverScroller;

    iput-object v0, p0, Landroid/widget/SplineOverScrollerExtImpl;->mSplineOverScroller:Landroid/widget/OverScroller$SplineOverScroller;

    .line 52
    :cond_0
    invoke-static {}, Landroid/common/OplusFrameworkFactory;->getInstance()Landroid/common/OplusFrameworkFactory;

    move-result-object v0

    sget-object v1, Landroid/widget/IOplusScrollOptimizationHelper;->DEFAULT:Landroid/widget/IOplusScrollOptimizationHelper;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/common/OplusFrameworkFactory;->getFeature(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Landroid/widget/IOplusScrollOptimizationHelper;

    iput-object v0, p0, Landroid/widget/SplineOverScrollerExtImpl;->mOptHelper:Landroid/widget/IOplusScrollOptimizationHelper;

    .line 53
    new-instance v0, Landroid/widget/OplusOverScrollerExtImpl;

    invoke-direct {v0}, Landroid/widget/OplusOverScrollerExtImpl;-><init>()V

    iput-object v0, p0, Landroid/widget/SplineOverScrollerExtImpl;->mOplusOverScrollerExtImpl:Landroid/widget/OplusOverScrollerExtImpl;

    .line 54
    return-void
.end method


# virtual methods
.method public blacklist hookEndFling(Landroid/content/Context;IF)Landroid/util/Pair;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "velocity"    # I
    .param p3, "flingFriction"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IF)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 73
    const/4 v0, 0x0

    .line 74
    .local v0, "mDuration":I
    const-wide/16 v1, 0x0

    .line 76
    .local v1, "totalDistance":D
    iget-object v3, p0, Landroid/widget/SplineOverScrollerExtImpl;->mOplusOverScrollerExtImpl:Landroid/widget/OplusOverScrollerExtImpl;

    invoke-virtual {v3}, Landroid/widget/OplusOverScrollerExtImpl;->getFlingOpt()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/widget/SplineOverScrollerExtImpl;->mOplusOverScrollerExtImpl:Landroid/widget/OplusOverScrollerExtImpl;

    invoke-virtual {v3}, Landroid/widget/OplusOverScrollerExtImpl;->getCustomizationFling()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Landroid/widget/SplineOverScrollerExtImpl;->mOplusOverScrollerExtImpl:Landroid/widget/OplusOverScrollerExtImpl;

    invoke-virtual {v3}, Landroid/widget/OplusOverScrollerExtImpl;->getOptHelperEnable()Z

    move-result v3

    if-nez v3, :cond_1

    .line 77
    sget-object v3, Landroid/widget/SplineOverScrollerExtImpl;->sFlingOptimizerOverScroller:Landroid/widget/FlingOptimizerOverScroller;

    if-nez v3, :cond_0

    .line 78
    new-instance v3, Landroid/widget/FlingOptimizerOverScroller;

    invoke-direct {v3, p1}, Landroid/widget/FlingOptimizerOverScroller;-><init>(Landroid/content/Context;)V

    sput-object v3, Landroid/widget/SplineOverScrollerExtImpl;->sFlingOptimizerOverScroller:Landroid/widget/FlingOptimizerOverScroller;

    .line 80
    :cond_0
    sget-object v3, Landroid/widget/SplineOverScrollerExtImpl;->sFlingOptimizerOverScroller:Landroid/widget/FlingOptimizerOverScroller;

    invoke-virtual {v3, p2, p3}, Landroid/widget/FlingOptimizerOverScroller;->getSplineFlingDurationTuning(IF)I

    move-result v0

    .line 81
    sget-object v3, Landroid/widget/SplineOverScrollerExtImpl;->sFlingOptimizerOverScroller:Landroid/widget/FlingOptimizerOverScroller;

    invoke-virtual {v3, p2, p3}, Landroid/widget/FlingOptimizerOverScroller;->getSplineFlingDistanceTuning(IF)D

    move-result-wide v1

    goto :goto_0

    .line 83
    :cond_1
    iget-object v3, p0, Landroid/widget/SplineOverScrollerExtImpl;->mSplineOverScroller:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller$SplineOverScroller;->getWrapper()Landroid/widget/ISplineOverScrollerWrapper;

    move-result-object v3

    invoke-interface {v3, p2}, Landroid/widget/ISplineOverScrollerWrapper;->getSplineFlingDuration(I)I

    move-result v0

    .line 84
    iget-object v3, p0, Landroid/widget/SplineOverScrollerExtImpl;->mSplineOverScroller:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller$SplineOverScroller;->getWrapper()Landroid/widget/ISplineOverScrollerWrapper;

    move-result-object v3

    invoke-interface {v3, p2}, Landroid/widget/ISplineOverScrollerWrapper;->getSplineFlingDistance(I)D

    move-result-wide v1

    .line 87
    iget-object v3, p0, Landroid/widget/SplineOverScrollerExtImpl;->mOplusOverScrollerExtImpl:Landroid/widget/OplusOverScrollerExtImpl;

    invoke-virtual {v3}, Landroid/widget/OplusOverScrollerExtImpl;->getOptHelperEnable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 88
    int-to-double v3, v0

    iget-object v5, p0, Landroid/widget/SplineOverScrollerExtImpl;->mOptHelper:Landroid/widget/IOplusScrollOptimizationHelper;

    invoke-interface {v5, p2}, Landroid/widget/IOplusScrollOptimizationHelper;->getCustomizedDurationCoef(I)D

    move-result-wide v5

    mul-double/2addr v3, v5

    double-to-int v0, v3

    .line 89
    iget-object v3, p0, Landroid/widget/SplineOverScrollerExtImpl;->mOptHelper:Landroid/widget/IOplusScrollOptimizationHelper;

    invoke-interface {v3, p2}, Landroid/widget/IOplusScrollOptimizationHelper;->getCustomizedDistanceCoef(I)D

    move-result-wide v3

    mul-double/2addr v3, v1

    double-to-int v3, v3

    int-to-double v1, v3

    .line 94
    :cond_2
    :goto_0
    new-instance v3, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3
.end method

.method public blacklist hookResetVeloAccuCount()V
    .locals 1

    .line 65
    iget-object v0, p0, Landroid/widget/SplineOverScrollerExtImpl;->mOptHelper:Landroid/widget/IOplusScrollOptimizationHelper;

    invoke-interface {v0}, Landroid/widget/IOplusScrollOptimizationHelper;->resetVeloAccuCount()V

    .line 66
    return-void
.end method

.method public blacklist hookSaveCurrVeloAccuCount()V
    .locals 1

    .line 57
    iget-object v0, p0, Landroid/widget/SplineOverScrollerExtImpl;->mOptHelper:Landroid/widget/IOplusScrollOptimizationHelper;

    invoke-interface {v0}, Landroid/widget/IOplusScrollOptimizationHelper;->saveCurrVeloAccuCount()V

    .line 58
    return-void
.end method

.method public blacklist hookSetAbortTime(J)V
    .locals 1
    .param p1, "time"    # J

    .line 61
    iget-object v0, p0, Landroid/widget/SplineOverScrollerExtImpl;->mOptHelper:Landroid/widget/IOplusScrollOptimizationHelper;

    invoke-interface {v0, p1, p2}, Landroid/widget/IOplusScrollOptimizationHelper;->setAbortTime(J)V

    .line 62
    return-void
.end method

.method public blacklist hookStartFling(JFIZ)V
    .locals 6
    .param p1, "now"    # J
    .param p3, "currVelo"    # F
    .param p4, "velo"    # I
    .param p5, "finished"    # Z

    .line 69
    iget-object v0, p0, Landroid/widget/SplineOverScrollerExtImpl;->mOptHelper:Landroid/widget/IOplusScrollOptimizationHelper;

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/widget/IOplusScrollOptimizationHelper;->setFlingParam(JFIZ)V

    .line 70
    return-void
.end method

.method public blacklist prepareScrollOpt()V
    .locals 2

    .line 103
    iget-object v0, p0, Landroid/widget/SplineOverScrollerExtImpl;->mOplusSlideAnimOptHelper:Landroid/view/OplusSlideAnimOptHelper;

    if-nez v0, :cond_0

    .line 104
    invoke-static {}, Landroid/view/OplusSlideAnimOptHelper;->getInstance()Landroid/view/OplusSlideAnimOptHelper;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SplineOverScrollerExtImpl;->mOplusSlideAnimOptHelper:Landroid/view/OplusSlideAnimOptHelper;

    .line 106
    :cond_0
    iget-object v0, p0, Landroid/widget/SplineOverScrollerExtImpl;->mOplusSlideAnimOptHelper:Landroid/view/OplusSlideAnimOptHelper;

    invoke-virtual {v0}, Landroid/view/OplusSlideAnimOptHelper;->getFrameInterval()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/SplineOverScrollerExtImpl;->mFrameInterval:J

    .line 107
    return-void
.end method

.method public blacklist updateScrollerStateToEnd(Ljava/lang/Object;I)V
    .locals 2
    .param p1, "splineOverScroller"    # Ljava/lang/Object;
    .param p2, "displacement"    # I

    .line 123
    iget-object v0, p0, Landroid/widget/SplineOverScrollerExtImpl;->mOplusSlideAnimOptHelper:Landroid/view/OplusSlideAnimOptHelper;

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    if-ge p2, v1, :cond_0

    .line 124
    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/view/OplusSlideAnimOptHelper;->updateScrollerState(Ljava/lang/Object;I)V

    .line 126
    :cond_0
    return-void
.end method

.method public blacklist updateScrollerStateToFling(Ljava/lang/Object;J)V
    .locals 2
    .param p1, "splineOverScroller"    # Ljava/lang/Object;
    .param p2, "currentTime"    # J

    .line 117
    iget-object v0, p0, Landroid/widget/SplineOverScrollerExtImpl;->mOplusSlideAnimOptHelper:Landroid/view/OplusSlideAnimOptHelper;

    if-eqz v0, :cond_0

    .line 118
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/view/OplusSlideAnimOptHelper;->updateScrollerState(Ljava/lang/Object;I)V

    .line 120
    :cond_0
    return-void
.end method

.method public blacklist updateScrollerStateToIdle(Ljava/lang/Object;)V
    .locals 2
    .param p1, "splineOverScroller"    # Ljava/lang/Object;

    .line 110
    iget-object v0, p0, Landroid/widget/SplineOverScrollerExtImpl;->mOplusSlideAnimOptHelper:Landroid/view/OplusSlideAnimOptHelper;

    if-eqz v0, :cond_0

    .line 111
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/OplusSlideAnimOptHelper;->updateScrollerState(Ljava/lang/Object;I)V

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/SplineOverScrollerExtImpl;->mOplusSlideAnimOptHelper:Landroid/view/OplusSlideAnimOptHelper;

    .line 114
    :cond_0
    return-void
.end method
