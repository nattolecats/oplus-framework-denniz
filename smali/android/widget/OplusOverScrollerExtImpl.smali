.class public Landroid/widget/OplusOverScrollerExtImpl;
.super Ljava/lang/Object;
.source "OplusOverScrollerExtImpl.java"

# interfaces
.implements Landroid/widget/IOplusOverScrollerExt;


# static fields
.field private static final blacklist VSYNC_DURATION:I = 0x1388

.field private static blacklist sCustomizationFling:Z

.field private static blacklist sFlingOpt:Z

.field private static blacklist sOptHelperEnable:Z


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mDynamicVsyncFeature:Lcom/oplus/dynamicvsync/IOplusDynamicVsyncFeature;

.field private blacklist mForceUsingSpring:Z

.field private blacklist mScrollOptHelper:Landroid/widget/IOplusScrollOptimizationHelper;

.field private blacklist mSpringOverScroller:Landroid/widget/OplusSpringOverScroller;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 162
    const/4 v0, 0x0

    sput-boolean v0, Landroid/widget/OplusOverScrollerExtImpl;->sOptHelperEnable:Z

    .line 210
    sput-boolean v0, Landroid/widget/OplusOverScrollerExtImpl;->sFlingOpt:Z

    .line 211
    sput-boolean v0, Landroid/widget/OplusOverScrollerExtImpl;->sCustomizationFling:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/OplusOverScrollerExtImpl;-><init>(Ljava/lang/Object;)V

    .line 27
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 4
    .param p1, "os"    # Ljava/lang/Object;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/OplusOverScrollerExtImpl;->mForceUsingSpring:Z

    .line 30
    invoke-direct {p0}, Landroid/widget/OplusOverScrollerExtImpl;->getFactory()Landroid/common/OplusFrameworkFactory;

    move-result-object v1

    sget-object v2, Lcom/oplus/dynamicvsync/IOplusDynamicVsyncFeature;->DEFAULT:Lcom/oplus/dynamicvsync/IOplusDynamicVsyncFeature;

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/common/OplusFrameworkFactory;->getFeature(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v1

    check-cast v1, Lcom/oplus/dynamicvsync/IOplusDynamicVsyncFeature;

    iput-object v1, p0, Landroid/widget/OplusOverScrollerExtImpl;->mDynamicVsyncFeature:Lcom/oplus/dynamicvsync/IOplusDynamicVsyncFeature;

    .line 31
    invoke-direct {p0}, Landroid/widget/OplusOverScrollerExtImpl;->getFactory()Landroid/common/OplusFrameworkFactory;

    move-result-object v1

    sget-object v2, Landroid/widget/IOplusScrollOptimizationHelper;->DEFAULT:Landroid/widget/IOplusScrollOptimizationHelper;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Landroid/common/OplusFrameworkFactory;->getFeature(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Landroid/widget/IOplusScrollOptimizationHelper;

    iput-object v0, p0, Landroid/widget/OplusOverScrollerExtImpl;->mScrollOptHelper:Landroid/widget/IOplusScrollOptimizationHelper;

    .line 32
    return-void
.end method

.method private blacklist getFactory()Landroid/common/OplusFrameworkFactory;
    .locals 1

    .line 155
    invoke-static {}, Landroid/common/OplusFrameworkFactory;->getInstance()Landroid/common/OplusFrameworkFactory;

    move-result-object v0

    return-object v0
.end method

.method private blacklist hookFling(IIII)V
    .locals 3
    .param p1, "minX"    # I
    .param p2, "maxX"    # I
    .param p3, "minY"    # I
    .param p4, "maxY"    # I

    .line 229
    const/4 v0, 0x0

    const/high16 v1, -0x80000000

    if-eq p1, v1, :cond_0

    if-nez p1, :cond_3

    :cond_0
    if-eq p3, v1, :cond_1

    if-nez p3, :cond_3

    :cond_1
    const v1, 0x7fffffff

    if-eq p2, v1, :cond_2

    if-nez p2, :cond_3

    :cond_2
    if-eq p4, v1, :cond_4

    if-eqz p4, :cond_4

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    move v1, v0

    :goto_0
    sput-boolean v1, Landroid/widget/OplusOverScrollerExtImpl;->sCustomizationFling:Z

    .line 233
    invoke-static {}, Lcom/oplus/content/OplusFeatureConfigManager;->getInstance()Lcom/oplus/content/OplusFeatureConfigManager;

    move-result-object v1

    const-string v2, "oplus.software.list_optimize"

    invoke-virtual {v1, v2}, Lcom/oplus/content/OplusFeatureConfigManager;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 234
    const-string v1, "persist.sys.flingopts.enable"

    invoke-static {v1, v0}, Landroid/os/OplusSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/widget/OplusOverScrollerExtImpl;->sFlingOpt:Z

    .line 236
    :cond_5
    return-void
.end method


# virtual methods
.method public blacklist abortAnimation()V
    .locals 1

    .line 89
    iget-object v0, p0, Landroid/widget/OplusOverScrollerExtImpl;->mSpringOverScroller:Landroid/widget/OplusSpringOverScroller;

    invoke-virtual {v0}, Landroid/widget/OplusSpringOverScroller;->abortAnimation()V

    .line 90
    return-void
.end method

.method public blacklist computeScrollOffset()Z
    .locals 1

    .line 143
    iget-object v0, p0, Landroid/widget/OplusOverScrollerExtImpl;->mSpringOverScroller:Landroid/widget/OplusSpringOverScroller;

    invoke-virtual {v0}, Landroid/widget/OplusSpringOverScroller;->computeScrollOffset()Z

    move-result v0

    return v0
.end method

.method public blacklist extendDuration(I)V
    .locals 0
    .param p1, "extend"    # I

    .line 48
    return-void
.end method

.method public blacklist fling(IIIIIIII)V
    .locals 13
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I
    .param p5, "minX"    # I
    .param p6, "maxX"    # I
    .param p7, "minY"    # I
    .param p8, "maxY"    # I

    .line 68
    move-object v0, p0

    iget-object v1, v0, Landroid/widget/OplusOverScrollerExtImpl;->mDynamicVsyncFeature:Lcom/oplus/dynamicvsync/IOplusDynamicVsyncFeature;

    iget-object v2, v0, Landroid/widget/OplusOverScrollerExtImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1388

    invoke-interface {v1, v2, v3}, Lcom/oplus/dynamicvsync/IOplusDynamicVsyncFeature;->flingEvent(Ljava/lang/String;I)V

    .line 69
    iget-object v4, v0, Landroid/widget/OplusOverScrollerExtImpl;->mSpringOverScroller:Landroid/widget/OplusSpringOverScroller;

    move v5, p1

    move v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    invoke-virtual/range {v4 .. v12}, Landroid/widget/OplusSpringOverScroller;->fling(IIIIIIII)V

    .line 70
    return-void
.end method

.method public blacklist fling(IIIIIIIIII)V
    .locals 15
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I
    .param p5, "minX"    # I
    .param p6, "maxX"    # I
    .param p7, "minY"    # I
    .param p8, "maxY"    # I
    .param p9, "overX"    # I
    .param p10, "overY"    # I

    .line 74
    move-object v0, p0

    iget-object v1, v0, Landroid/widget/OplusOverScrollerExtImpl;->mDynamicVsyncFeature:Lcom/oplus/dynamicvsync/IOplusDynamicVsyncFeature;

    iget-object v2, v0, Landroid/widget/OplusOverScrollerExtImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1388

    invoke-interface {v1, v2, v3}, Lcom/oplus/dynamicvsync/IOplusDynamicVsyncFeature;->flingEvent(Ljava/lang/String;I)V

    .line 75
    iget-object v4, v0, Landroid/widget/OplusOverScrollerExtImpl;->mSpringOverScroller:Landroid/widget/OplusSpringOverScroller;

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    move/from16 v14, p10

    invoke-virtual/range {v4 .. v14}, Landroid/widget/OplusSpringOverScroller;->fling(IIIIIIIIII)V

    .line 77
    move/from16 v1, p5

    move/from16 v2, p6

    move/from16 v3, p7

    move/from16 v4, p8

    invoke-direct {p0, v1, v2, v3, v4}, Landroid/widget/OplusOverScrollerExtImpl;->hookFling(IIII)V

    .line 78
    return-void
.end method

.method public blacklist forceFinished(Z)V
    .locals 1
    .param p1, "finished"    # Z

    .line 43
    iget-object v0, p0, Landroid/widget/OplusOverScrollerExtImpl;->mSpringOverScroller:Landroid/widget/OplusSpringOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OplusSpringOverScroller;->forceFinished(Z)V

    .line 44
    return-void
.end method

.method public blacklist getCurrVelocity()F
    .locals 1

    .line 125
    iget-object v0, p0, Landroid/widget/OplusOverScrollerExtImpl;->mSpringOverScroller:Landroid/widget/OplusSpringOverScroller;

    invoke-virtual {v0}, Landroid/widget/OplusSpringOverScroller;->getCurrVelocity()F

    move-result v0

    return v0
.end method

.method public blacklist getCurrX()I
    .locals 1

    .line 105
    iget-object v0, p0, Landroid/widget/OplusOverScrollerExtImpl;->mSpringOverScroller:Landroid/widget/OplusSpringOverScroller;

    invoke-virtual {v0}, Landroid/widget/OplusSpringOverScroller;->getCurrX()I

    move-result v0

    return v0
.end method

.method public blacklist getCurrY()I
    .locals 1

    .line 109
    iget-object v0, p0, Landroid/widget/OplusOverScrollerExtImpl;->mSpringOverScroller:Landroid/widget/OplusSpringOverScroller;

    invoke-virtual {v0}, Landroid/widget/OplusSpringOverScroller;->getCurrY()I

    move-result v0

    return v0
.end method

.method public blacklist getCustomizationFling()Z
    .locals 1

    .line 214
    sget-boolean v0, Landroid/widget/OplusOverScrollerExtImpl;->sCustomizationFling:Z

    return v0
.end method

.method public blacklist getDuration()I
    .locals 1

    .line 101
    iget-object v0, p0, Landroid/widget/OplusOverScrollerExtImpl;->mSpringOverScroller:Landroid/widget/OplusSpringOverScroller;

    invoke-virtual {v0}, Landroid/widget/OplusSpringOverScroller;->getDuration()I

    move-result v0

    return v0
.end method

.method public blacklist getFinalX()I
    .locals 1

    .line 113
    iget-object v0, p0, Landroid/widget/OplusOverScrollerExtImpl;->mSpringOverScroller:Landroid/widget/OplusSpringOverScroller;

    invoke-virtual {v0}, Landroid/widget/OplusSpringOverScroller;->getFinalX()I

    move-result v0

    return v0
.end method

.method public blacklist getFinalY()I
    .locals 1

    .line 117
    iget-object v0, p0, Landroid/widget/OplusOverScrollerExtImpl;->mSpringOverScroller:Landroid/widget/OplusSpringOverScroller;

    invoke-virtual {v0}, Landroid/widget/OplusSpringOverScroller;->getFinalY()I

    move-result v0

    return v0
.end method

.method public blacklist getFlingOpt()Z
    .locals 1

    .line 218
    sget-boolean v0, Landroid/widget/OplusOverScrollerExtImpl;->sFlingOpt:Z

    return v0
.end method

.method public blacklist getForceUsingSpring()Z
    .locals 1

    .line 147
    iget-boolean v0, p0, Landroid/widget/OplusOverScrollerExtImpl;->mForceUsingSpring:Z

    return v0
.end method

.method public blacklist getInterpolator(Landroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 181
    invoke-virtual {p0}, Landroid/widget/OplusOverScrollerExtImpl;->getOptHelperEnable()Z

    move-result v0

    sput-boolean v0, Landroid/widget/OplusOverScrollerExtImpl;->sOptHelperEnable:Z

    .line 182
    if-nez p1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/OplusOverScrollerExtImpl;->interpolatorValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Landroid/widget/OplusOverScrollerExtImpl;->mScrollOptHelper:Landroid/widget/IOplusScrollOptimizationHelper;

    invoke-interface {v0}, Landroid/widget/IOplusScrollOptimizationHelper;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    return-object v0

    .line 185
    :cond_0
    return-object p1
.end method

.method public blacklist getOptHelperEnable()Z
    .locals 1

    .line 190
    iget-object v0, p0, Landroid/widget/OplusOverScrollerExtImpl;->mScrollOptHelper:Landroid/widget/IOplusScrollOptimizationHelper;

    invoke-interface {v0}, Landroid/widget/IOplusScrollOptimizationHelper;->enable()Z

    move-result v0

    return v0
.end method

.method public blacklist getStartX()I
    .locals 1

    .line 93
    iget-object v0, p0, Landroid/widget/OplusOverScrollerExtImpl;->mSpringOverScroller:Landroid/widget/OplusSpringOverScroller;

    invoke-virtual {v0}, Landroid/widget/OplusSpringOverScroller;->getOplusStartX()I

    move-result v0

    return v0
.end method

.method public blacklist getStartY()I
    .locals 1

    .line 97
    iget-object v0, p0, Landroid/widget/OplusOverScrollerExtImpl;->mSpringOverScroller:Landroid/widget/OplusSpringOverScroller;

    invoke-virtual {v0}, Landroid/widget/OplusSpringOverScroller;->getOplusStartY()I

    move-result v0

    return v0
.end method

.method public blacklist hookAbortAnimation(Landroid/widget/ISplineOverScrollerExt;Landroid/widget/ISplineOverScrollerExt;)Z
    .locals 3
    .param p1, "mSplineOverScrollerExtX"    # Landroid/widget/ISplineOverScrollerExt;
    .param p2, "mSplineOverScrollerExtY"    # Landroid/widget/ISplineOverScrollerExt;

    .line 165
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/util/BoostFramework$ScrollOptimizer;->setFlingFlag(I)V

    .line 166
    invoke-interface {p1}, Landroid/widget/ISplineOverScrollerExt;->hookSaveCurrVeloAccuCount()V

    .line 167
    invoke-interface {p2}, Landroid/widget/ISplineOverScrollerExt;->hookSaveCurrVeloAccuCount()V

    .line 168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 169
    .local v1, "current":J
    invoke-interface {p1, v1, v2}, Landroid/widget/ISplineOverScrollerExt;->hookSetAbortTime(J)V

    .line 170
    invoke-interface {p2, v1, v2}, Landroid/widget/ISplineOverScrollerExt;->hookSetAbortTime(J)V

    .line 171
    return v0
.end method

.method public blacklist hookCheckFlingFlag()Z
    .locals 1

    .line 222
    sget-boolean v0, Landroid/widget/OplusOverScrollerExtImpl;->sFlingOpt:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/widget/OplusOverScrollerExtImpl;->sCustomizationFling:Z

    if-nez v0, :cond_0

    sget-boolean v0, Landroid/widget/OplusOverScrollerExtImpl;->sOptHelperEnable:Z

    if-nez v0, :cond_0

    .line 223
    const/4 v0, 0x1

    return v0

    .line 225
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hookOverScroller(Landroid/content/Context;Landroid/view/animation/Interpolator;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 175
    iput-object p1, p0, Landroid/widget/OplusOverScrollerExtImpl;->mContext:Landroid/content/Context;

    .line 176
    new-instance v0, Landroid/widget/OplusSpringOverScroller;

    invoke-direct {v0, p1, p2}, Landroid/widget/OplusSpringOverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Landroid/widget/OplusOverScrollerExtImpl;->mSpringOverScroller:Landroid/widget/OplusSpringOverScroller;

    .line 177
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist interpolatorValid()Z
    .locals 1

    .line 194
    iget-object v0, p0, Landroid/widget/OplusOverScrollerExtImpl;->mScrollOptHelper:Landroid/widget/IOplusScrollOptimizationHelper;

    invoke-interface {v0}, Landroid/widget/IOplusScrollOptimizationHelper;->interpolatorValid()Z

    move-result v0

    return v0
.end method

.method public blacklist isFinished()Z
    .locals 1

    .line 151
    iget-object v0, p0, Landroid/widget/OplusOverScrollerExtImpl;->mSpringOverScroller:Landroid/widget/OplusSpringOverScroller;

    invoke-virtual {v0}, Landroid/widget/OplusSpringOverScroller;->isFinished()Z

    move-result v0

    return v0
.end method

.method public blacklist isOverScrolled()Z
    .locals 1

    .line 129
    iget-object v0, p0, Landroid/widget/OplusOverScrollerExtImpl;->mSpringOverScroller:Landroid/widget/OplusSpringOverScroller;

    invoke-virtual {v0}, Landroid/widget/OplusSpringOverScroller;->isOverScrolled()Z

    move-result v0

    return v0
.end method

.method public blacklist isScrollingInDirection(FF)Z
    .locals 1
    .param p1, "xvel"    # F
    .param p2, "yvel"    # F

    .line 133
    iget-object v0, p0, Landroid/widget/OplusOverScrollerExtImpl;->mSpringOverScroller:Landroid/widget/OplusSpringOverScroller;

    invoke-virtual {v0, p1, p2}, Landroid/widget/OplusSpringOverScroller;->isScrollingInDirection(FF)Z

    move-result v0

    return v0
.end method

.method public blacklist notifyHorizontalEdgeReached(III)V
    .locals 1
    .param p1, "startX"    # I
    .param p2, "finalX"    # I
    .param p3, "overX"    # I

    .line 81
    iget-object v0, p0, Landroid/widget/OplusOverScrollerExtImpl;->mSpringOverScroller:Landroid/widget/OplusSpringOverScroller;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/OplusSpringOverScroller;->notifyHorizontalEdgeReached(III)V

    .line 82
    return-void
.end method

.method public blacklist notifyVerticalEdgeReached(III)V
    .locals 1
    .param p1, "startY"    # I
    .param p2, "finalY"    # I
    .param p3, "overY"    # I

    .line 85
    iget-object v0, p0, Landroid/widget/OplusOverScrollerExtImpl;->mSpringOverScroller:Landroid/widget/OplusSpringOverScroller;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/OplusSpringOverScroller;->notifyVerticalEdgeReached(III)V

    .line 86
    return-void
.end method

.method public blacklist prepareScrollOpt(Landroid/widget/ISplineOverScrollerExt;)V
    .locals 1
    .param p1, "splineOverScrollerExtY"    # Landroid/widget/ISplineOverScrollerExt;

    .line 201
    invoke-static {}, Landroid/view/OplusSlideAnimOptHelper;->isCurrentSceneEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/view/OplusSlideAnimOptHelper;->isInMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    invoke-interface {p1}, Landroid/widget/ISplineOverScrollerExt;->prepareScrollOpt()V

    .line 204
    :cond_0
    return-void
.end method

.method public blacklist setFinalX(I)V
    .locals 1
    .param p1, "newX"    # I

    .line 51
    iget-object v0, p0, Landroid/widget/OplusOverScrollerExtImpl;->mSpringOverScroller:Landroid/widget/OplusSpringOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OplusSpringOverScroller;->setFinalX(I)V

    .line 52
    return-void
.end method

.method public blacklist setFinalY(I)V
    .locals 1
    .param p1, "newY"    # I

    .line 55
    iget-object v0, p0, Landroid/widget/OplusOverScrollerExtImpl;->mSpringOverScroller:Landroid/widget/OplusSpringOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OplusSpringOverScroller;->setFinalY(I)V

    .line 56
    return-void
.end method

.method public blacklist setFriction(F)V
    .locals 1
    .param p1, "friction"    # F

    .line 35
    iget-object v0, p0, Landroid/widget/OplusOverScrollerExtImpl;->mSpringOverScroller:Landroid/widget/OplusSpringOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OplusSpringOverScroller;->setFriction(F)V

    .line 36
    return-void
.end method

.method public blacklist setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 39
    iget-object v0, p0, Landroid/widget/OplusOverScrollerExtImpl;->mSpringOverScroller:Landroid/widget/OplusSpringOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OplusSpringOverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 40
    return-void
.end method

.method public blacklist springBack(IIIIII)Z
    .locals 11
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "minX"    # I
    .param p4, "maxX"    # I
    .param p5, "minY"    # I
    .param p6, "maxY"    # I

    .line 138
    move-object v0, p0

    iget-object v1, v0, Landroid/widget/OplusOverScrollerExtImpl;->mDynamicVsyncFeature:Lcom/oplus/dynamicvsync/IOplusDynamicVsyncFeature;

    iget-object v2, v0, Landroid/widget/OplusOverScrollerExtImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1388

    invoke-interface {v1, v2, v3}, Lcom/oplus/dynamicvsync/IOplusDynamicVsyncFeature;->flingEvent(Ljava/lang/String;I)V

    .line 139
    iget-object v4, v0, Landroid/widget/OplusOverScrollerExtImpl;->mSpringOverScroller:Landroid/widget/OplusSpringOverScroller;

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-virtual/range {v4 .. v10}, Landroid/widget/OplusSpringOverScroller;->springBack(IIIIII)Z

    move-result v1

    return v1
.end method

.method public blacklist startScroll(IIII)V
    .locals 1
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I

    .line 59
    iget-object v0, p0, Landroid/widget/OplusOverScrollerExtImpl;->mSpringOverScroller:Landroid/widget/OplusSpringOverScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/OplusSpringOverScroller;->startScroll(IIII)V

    .line 60
    return-void
.end method

.method public blacklist startScroll(IIIII)V
    .locals 6
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I
    .param p5, "duration"    # I

    .line 63
    iget-object v0, p0, Landroid/widget/OplusOverScrollerExtImpl;->mSpringOverScroller:Landroid/widget/OplusSpringOverScroller;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OplusSpringOverScroller;->startScroll(IIIII)V

    .line 64
    return-void
.end method

.method public blacklist timePassed()I
    .locals 1

    .line 121
    iget-object v0, p0, Landroid/widget/OplusOverScrollerExtImpl;->mSpringOverScroller:Landroid/widget/OplusSpringOverScroller;

    invoke-virtual {v0}, Landroid/widget/OplusSpringOverScroller;->timePassed()I

    move-result v0

    return v0
.end method
