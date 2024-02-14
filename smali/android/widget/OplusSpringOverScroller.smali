.class public Landroid/widget/OplusSpringOverScroller;
.super Ljava/lang/Object;
.source "OplusSpringOverScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = true

.field private static final blacklist DEFAULT_REFRESH_RATE:I = 0x3c

.field private static final blacklist FLING_MODE:I = 0x1

.field public static final blacklist OPLUS_FLING_FRICTION_FAST:F = 0.76f

.field public static final blacklist OPLUS_FLING_FRICTION_LIST_OPTIMIZE:F = 0.008f

.field public static final blacklist OPLUS_FLING_FRICTION_NORMAL:F = 0.32f

.field public static final blacklist OPLUS_FLING_MODE_FAST:I = 0x0

.field public static final blacklist OPLUS_FLING_MODE_NORMAL:I = 0x1

.field private static final blacklist REST_MODE:I = 0x2

.field private static final blacklist SCROLL_DEFAULT_DURATION:I = 0xfa

.field private static final blacklist SCROLL_MODE:I = 0x0

.field private static final blacklist SOLVER_TIMESTEP_SEC:F = 0.016f

.field private static final blacklist TAG:Ljava/lang/String;

.field private static blacklist mRefreshRate:I

.field private static blacklist mRefreshTime:F


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mInterpolator:Landroid/view/animation/Interpolator;

.field private blacklist mMode:I

.field private blacklist mScrollerX:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;

.field private blacklist mScrollerY:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetmRefreshTime()F
    .locals 1

    sget v0, Landroid/widget/OplusSpringOverScroller;->mRefreshTime:F

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfputmRefreshTime(F)V
    .locals 0

    sput p0, Landroid/widget/OplusSpringOverScroller;->mRefreshTime:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smlog(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Landroid/widget/OplusSpringOverScroller;->log(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 19
    const-class v0, Landroid/widget/OplusSpringOverScroller;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/widget/OplusSpringOverScroller;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/OplusSpringOverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 101
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/OplusSpringOverScroller;->mMode:I

    .line 83
    new-instance v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;-><init>(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller-IA;)V

    iput-object v0, p0, Landroid/widget/OplusSpringOverScroller;->mScrollerX:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;

    .line 84
    new-instance v0, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;

    invoke-direct {v0, v1}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;-><init>(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller-IA;)V

    iput-object v0, p0, Landroid/widget/OplusSpringOverScroller;->mScrollerY:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;

    .line 86
    iget-object v0, p0, Landroid/widget/OplusSpringOverScroller;->mScrollerX:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;

    const-string v1, "ScrollerX - "

    invoke-static {v0, v1}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->-$$Nest$msetScrollerName(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Landroid/widget/OplusSpringOverScroller;->mScrollerY:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;

    const-string v1, "ScrollerY - "

    invoke-static {v0, v1}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->-$$Nest$msetScrollerName(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;Ljava/lang/String;)V

    .line 89
    if-nez p2, :cond_0

    .line 90
    new-instance v0, Landroid/widget/Scroller$ViscousFluidInterpolator;

    invoke-direct {v0}, Landroid/widget/Scroller$ViscousFluidInterpolator;-><init>()V

    iput-object v0, p0, Landroid/widget/OplusSpringOverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0

    .line 92
    :cond_0
    iput-object p2, p0, Landroid/widget/OplusSpringOverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 94
    :goto_0
    iput-object p1, p0, Landroid/widget/OplusSpringOverScroller;->mContext:Landroid/content/Context;

    .line 95
    invoke-direct {p0, p1}, Landroid/widget/OplusSpringOverScroller;->getRefreshTime(Landroid/content/Context;)F

    move-result v0

    sput v0, Landroid/widget/OplusSpringOverScroller;->mRefreshTime:F

    .line 96
    invoke-direct {p0, p1}, Landroid/widget/OplusSpringOverScroller;->getRefreshRate(Landroid/content/Context;)I

    move-result v0

    sput v0, Landroid/widget/OplusSpringOverScroller;->mRefreshRate:I

    .line 97
    return-void
.end method

.method private blacklist getRefreshRate(Landroid/content/Context;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 73
    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 74
    .local v0, "displayManager":Landroid/hardware/display/DisplayManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    .line 75
    .local v1, "display":Landroid/view/Display;
    if-nez v1, :cond_0

    .line 76
    const/16 v2, 0x3c

    return v2

    .line 78
    :cond_0
    invoke-virtual {v1}, Landroid/view/Display;->getRefreshRate()F

    move-result v2

    float-to-int v2, v2

    return v2
.end method

.method private blacklist getRefreshTime(Landroid/content/Context;)F
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 60
    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 61
    .local v0, "displayManager":Landroid/hardware/display/DisplayManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    .line 64
    .local v1, "display":Landroid/view/Display;
    if-nez v1, :cond_0

    .line 65
    const v2, 0x3c83126f    # 0.016f

    .local v2, "refreshTime":F
    goto :goto_0

    .line 67
    .end local v2    # "refreshTime":F
    :cond_0
    invoke-virtual {v1}, Landroid/view/Display;->getRefreshRate()F

    move-result v2

    const v3, 0x461c4000    # 10000.0f

    div-float v2, v3, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    .line 69
    .restart local v2    # "refreshTime":F
    :goto_0
    return v2
.end method

.method private static blacklist log(Ljava/lang/String;)V
    .locals 1
    .param p0, "content"    # Ljava/lang/String;

    .line 978
    sget-object v0, Landroid/widget/OplusSpringOverScroller;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    return-void
.end method

.method private blacklist prepareScrollOpt(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;)V
    .locals 1
    .param p1, "reboundOverScroller"    # Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;

    .line 339
    invoke-static {}, Landroid/view/OplusSlideAnimOptHelper;->isCurrentSceneEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/view/OplusSlideAnimOptHelper;->isInMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    invoke-virtual {p1}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->prepareScrollOpt()V

    .line 342
    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist abortAnimation()V
    .locals 1

    .line 285
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/OplusSpringOverScroller;->mMode:I

    .line 286
    iget-object v0, p0, Landroid/widget/OplusSpringOverScroller;->mScrollerX:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;

    invoke-static {v0}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->-$$Nest$mfinish(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;)V

    .line 287
    iget-object v0, p0, Landroid/widget/OplusSpringOverScroller;->mScrollerY:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;

    invoke-static {v0}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->-$$Nest$mfinish(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;)V

    .line 288
    return-void
.end method

.method public blacklist computeScrollOffset()Z
    .locals 8

    .line 112
    invoke-virtual {p0}, Landroid/widget/OplusSpringOverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    const/4 v0, 0x0

    return v0

    .line 116
    :cond_0
    iget v0, p0, Landroid/widget/OplusSpringOverScroller;->mMode:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 133
    :pswitch_0
    iget-object v0, p0, Landroid/widget/OplusSpringOverScroller;->mScrollerX:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;

    invoke-static {v0}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->-$$Nest$misFinished(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 134
    iget-object v0, p0, Landroid/widget/OplusSpringOverScroller;->mScrollerX:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;

    invoke-static {v0}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->-$$Nest$mupdate(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 135
    iget-object v0, p0, Landroid/widget/OplusSpringOverScroller;->mScrollerX:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;

    invoke-static {v0}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->-$$Nest$mcontinueWhenFinished(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 136
    iget-object v0, p0, Landroid/widget/OplusSpringOverScroller;->mScrollerX:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;

    invoke-static {v0}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->-$$Nest$mfinish(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;)V

    .line 141
    :cond_1
    iget-object v0, p0, Landroid/widget/OplusSpringOverScroller;->mScrollerY:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;

    invoke-static {v0}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->-$$Nest$misFinished(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 142
    iget-object v0, p0, Landroid/widget/OplusSpringOverScroller;->mScrollerY:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;

    invoke-static {v0}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->-$$Nest$mupdate(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 143
    iget-object v0, p0, Landroid/widget/OplusSpringOverScroller;->mScrollerY:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;

    invoke-static {v0}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->-$$Nest$mcontinueWhenFinished(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 144
    iget-object v0, p0, Landroid/widget/OplusSpringOverScroller;->mScrollerY:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;

    invoke-static {v0}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->-$$Nest$mfinish(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;)V

    .line 149
    :cond_2
    iget-object v0, p0, Landroid/widget/OplusSpringOverScroller;->mScrollerX:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;

    invoke-static {v0}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->-$$Nest$misFinished(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/OplusSpringOverScroller;->mScrollerY:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;

    invoke-static {v0}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->-$$Nest$misFinished(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 150
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/OplusSpringOverScroller;->mMode:I

    goto :goto_0

    .line 118
    :pswitch_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 119
    .local v0, "time":J
    iget-object v2, p0, Landroid/widget/OplusSpringOverScroller;->mScrollerX:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;

    invoke-static {v2}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->-$$Nest$fgetmStartTime(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;)J

    move-result-wide v2

    sub-long v2, v0, v2

    .line 120
    .local v2, "elapsedTime":J
    iget-object v4, p0, Landroid/widget/OplusSpringOverScroller;->mScrollerX:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;

    invoke-static {v4}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->-$$Nest$fgetmDuration(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;)I

    move-result v4

    .line 122
    .local v4, "duration":I
    int-to-long v5, v4

    cmp-long v5, v2, v5

    if-gez v5, :cond_3

    .line 123
    iget-object v5, p0, Landroid/widget/OplusSpringOverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    long-to-float v6, v2

    int-to-float v7, v4

    div-float/2addr v6, v7

    invoke-interface {v5, v6}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v5

    .line 124
    .local v5, "q":F
    iget-object v6, p0, Landroid/widget/OplusSpringOverScroller;->mScrollerX:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;

    invoke-static {v6, v5}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->-$$Nest$mupdateScroll(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;F)V

    .line 125
    iget-object v6, p0, Landroid/widget/OplusSpringOverScroller;->mScrollerY:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;

    invoke-static {v6, v5}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->-$$Nest$mupdateScroll(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;F)V

    .line 126
    .end local v5    # "q":F
    goto :goto_0

    .line 127
    :cond_3
    iget-object v5, p0, Landroid/widget/OplusSpringOverScroller;->mScrollerX:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v5, v6}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->-$$Nest$mupdateScroll(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;F)V

    .line 128
    iget-object v5, p0, Landroid/widget/OplusSpringOverScroller;->mScrollerY:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;

    invoke-static {v5, v6}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->-$$Nest$mupdateScroll(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;F)V

    .line 129
    invoke-virtual {p0}, Landroid/widget/OplusSpringOverScroller;->abortAnimation()V

    .line 131
    nop

    .line 154
    .end local v0    # "time":J
    .end local v2    # "elapsedTime":J
    .end local v4    # "duration":I
    :cond_4
    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist extendDuration(I)V
    .locals 1
    .param p1, "extend"    # I

    .line 222
    iget-object v0, p0, Landroid/widget/OplusSpringOverScroller;->mScrollerX:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;

    invoke-static {v0, p1}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->-$$Nest$mextendDuration(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;I)V

    .line 223
    iget-object v0, p0, Landroid/widget/OplusSpringOverScroller;->mScrollerY:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;

    invoke-static {v0, p1}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->-$$Nest$mextendDuration(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;I)V

    .line 224
    return-void
.end method

.method public blacklist fling(IIIIIIII)V
    .locals 11
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I
    .param p5, "minX"    # I
    .param p6, "maxX"    # I
    .param p7, "minY"    # I
    .param p8, "maxY"    # I

    .line 260
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OplusSpringOverScroller;->fling(IIIIIIIIII)V

    .line 261
    return-void
.end method

.method public blacklist fling(IIIIIIIIII)V
    .locals 16
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

    .line 236
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/OplusSpringOverScroller;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/OplusSpringOverScroller;->getRefreshTime(Landroid/content/Context;)F

    move-result v1

    sput v1, Landroid/widget/OplusSpringOverScroller;->mRefreshTime:F

    .line 237
    iget-object v1, v0, Landroid/widget/OplusSpringOverScroller;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/OplusSpringOverScroller;->getRefreshRate(Landroid/content/Context;)I

    move-result v1

    sput v1, Landroid/widget/OplusSpringOverScroller;->mRefreshRate:I

    .line 238
    const/4 v1, 0x1

    iput v1, v0, Landroid/widget/OplusSpringOverScroller;->mMode:I

    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OverScroller fling startX "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v8, p1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " startY "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v9, p2

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " velocityX "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v10, p3

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " velocityY "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v11, p4

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " minX "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v12, p5

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " maxX "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v13, p6

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " minY "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v14, p7

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " maxY "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v15, p8

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " overX "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v7, p9

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " overY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v6, p10

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/widget/OplusSpringOverScroller;->log(Ljava/lang/String;)V

    .line 249
    iget-object v2, v0, Landroid/widget/OplusSpringOverScroller;->mScrollerX:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;

    move/from16 v3, p1

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p3

    invoke-static/range {v2 .. v7}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->-$$Nest$mfling(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;IIIII)V

    .line 250
    iget-object v2, v0, Landroid/widget/OplusSpringOverScroller;->mScrollerY:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;

    move/from16 v3, p2

    move/from16 v4, p7

    move/from16 v5, p8

    move/from16 v6, p4

    move/from16 v7, p10

    invoke-static/range {v2 .. v7}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->-$$Nest$mfling(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;IIIII)V

    .line 254
    iget-object v1, v0, Landroid/widget/OplusSpringOverScroller;->mScrollerY:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;

    invoke-direct {v0, v1}, Landroid/widget/OplusSpringOverScroller;->prepareScrollOpt(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;)V

    .line 256
    return-void
.end method

.method public final blacklist forceFinished(Z)V
    .locals 1
    .param p1, "finished"    # Z

    .line 214
    iget-object v0, p0, Landroid/widget/OplusSpringOverScroller;->mScrollerY:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;

    invoke-static {v0, p1}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->-$$Nest$fputmFinished(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;Z)V

    invoke-static {v0, p1}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->-$$Nest$fputmFinished(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;Z)V

    .line 216
    if-eqz p1, :cond_0

    .line 217
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/OplusSpringOverScroller;->mMode:I

    .line 219
    :cond_0
    return-void
.end method

.method public blacklist getCurrVelocity()F
    .locals 8

    .line 313
    iget-object v0, p0, Landroid/widget/OplusSpringOverScroller;->mScrollerX:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;

    invoke-static {v0}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->-$$Nest$mgetVelocity(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;)D

    move-result-wide v0

    .line 314
    .local v0, "velX":D
    iget-object v2, p0, Landroid/widget/OplusSpringOverScroller;->mScrollerY:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;

    invoke-static {v2}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->-$$Nest$mgetVelocity(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;)D

    move-result-wide v2

    .line 315
    .local v2, "velY":D
    mul-double v4, v0, v0

    mul-double v6, v2, v2

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v4, v4

    int-to-float v4, v4

    return v4
.end method

.method public blacklist getCurrX()I
    .locals 2

    .line 166
    iget-object v0, p0, Landroid/widget/OplusSpringOverScroller;->mScrollerX:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;

    invoke-static {v0}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->-$$Nest$mgetCurrentValue(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public blacklist getCurrY()I
    .locals 2

    .line 174
    iget-object v0, p0, Landroid/widget/OplusSpringOverScroller;->mScrollerY:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;

    invoke-static {v0}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->-$$Nest$mgetCurrentValue(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public final blacklist getDuration()I
    .locals 2

    .line 333
    iget-object v0, p0, Landroid/widget/OplusSpringOverScroller;->mScrollerX:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;

    invoke-static {v0}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->-$$Nest$fgetmDuration(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/OplusSpringOverScroller;->mScrollerY:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;

    invoke-static {v1}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->-$$Nest$fgetmDuration(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public blacklist getFinalX()I
    .locals 2

    .line 182
    iget-object v0, p0, Landroid/widget/OplusSpringOverScroller;->mScrollerX:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;

    invoke-static {v0}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->-$$Nest$mgetEndValue(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public blacklist getFinalY()I
    .locals 2

    .line 190
    iget-object v0, p0, Landroid/widget/OplusSpringOverScroller;->mScrollerY:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;

    invoke-static {v0}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->-$$Nest$mgetEndValue(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public final blacklist getOplusCurrX()I
    .locals 2

    .line 170
    iget-object v0, p0, Landroid/widget/OplusSpringOverScroller;->mScrollerX:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;

    invoke-static {v0}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->-$$Nest$mgetCurrentValue(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public final blacklist getOplusCurrY()I
    .locals 2

    .line 178
    iget-object v0, p0, Landroid/widget/OplusSpringOverScroller;->mScrollerY:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;

    invoke-static {v0}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->-$$Nest$mgetCurrentValue(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public final blacklist getOplusFinalX()I
    .locals 2

    .line 186
    iget-object v0, p0, Landroid/widget/OplusSpringOverScroller;->mScrollerX:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;

    invoke-static {v0}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->-$$Nest$mgetEndValue(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public final blacklist getOplusFinalY()I
    .locals 2

    .line 194
    iget-object v0, p0, Landroid/widget/OplusSpringOverScroller;->mScrollerY:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;

    invoke-static {v0}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->-$$Nest$mgetEndValue(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public final blacklist getOplusStartX()I
    .locals 1

    .line 198
    iget-object v0, p0, Landroid/widget/OplusSpringOverScroller;->mScrollerX:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;

    invoke-static {v0}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->-$$Nest$fgetmStart(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;)I

    move-result v0

    return v0
.end method

.method public final blacklist getOplusStartY()I
    .locals 1

    .line 202
    iget-object v0, p0, Landroid/widget/OplusSpringOverScroller;->mScrollerY:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;

    invoke-static {v0}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->-$$Nest$fgetmStart(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;)I

    move-result v0

    return v0
.end method

.method public blacklist isFinished()Z
    .locals 2

    .line 158
    iget-object v0, p0, Landroid/widget/OplusSpringOverScroller;->mScrollerX:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;

    invoke-static {v0}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->-$$Nest$misFinished(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/OplusSpringOverScroller;->mScrollerY:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;

    invoke-static {v0}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->-$$Nest$misFinished(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/OplusSpringOverScroller;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final blacklist isOplusFinished()Z
    .locals 2

    .line 162
    iget-object v0, p0, Landroid/widget/OplusSpringOverScroller;->mScrollerX:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;

    invoke-static {v0}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->-$$Nest$misFinished(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/OplusSpringOverScroller;->mScrollerY:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;

    invoke-static {v0}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->-$$Nest$misFinished(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/OplusSpringOverScroller;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isOverScrolled()Z
    .locals 4

    .line 227
    iget-object v0, p0, Landroid/widget/OplusSpringOverScroller;->mScrollerX:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;

    invoke-static {v0}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->-$$Nest$fgetmFinished(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/OplusSpringOverScroller;->mScrollerX:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;

    invoke-static {v0}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->-$$Nest$fgetmState(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 229
    .local v0, "scrollerXOverScrolled":Z
    :goto_0
    iget-object v3, p0, Landroid/widget/OplusSpringOverScroller;->mScrollerY:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;

    invoke-static {v3}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->-$$Nest$fgetmFinished(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Landroid/widget/OplusSpringOverScroller;->mScrollerY:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;

    invoke-static {v3}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->-$$Nest$fgetmState(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;)I

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 231
    .local v3, "scrollerYOverScrolled":Z
    :goto_1
    if-nez v0, :cond_3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :cond_3
    :goto_2
    return v1
.end method

.method public blacklist isScrollingInDirection(FF)Z
    .locals 5
    .param p1, "xvel"    # F
    .param p2, "yvel"    # F

    .line 295
    iget-object v0, p0, Landroid/widget/OplusSpringOverScroller;->mScrollerX:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;

    invoke-static {v0}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->-$$Nest$fgetmFinal(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;)D

    move-result-wide v0

    iget-object v2, p0, Landroid/widget/OplusSpringOverScroller;->mScrollerX:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;

    invoke-static {v2}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->-$$Nest$fgetmStart(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;)I

    move-result v2

    int-to-double v2, v2

    sub-double/2addr v0, v2

    double-to-int v0, v0

    .line 296
    .local v0, "dx":I
    iget-object v1, p0, Landroid/widget/OplusSpringOverScroller;->mScrollerY:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;

    invoke-static {v1}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->-$$Nest$fgetmFinal(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;)D

    move-result-wide v1

    iget-object v3, p0, Landroid/widget/OplusSpringOverScroller;->mScrollerY:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;

    invoke-static {v3}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->-$$Nest$fgetmStart(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;)I

    move-result v3

    int-to-double v3, v3

    sub-double/2addr v1, v3

    double-to-int v1, v1

    .line 297
    .local v1, "dy":I
    invoke-virtual {p0}, Landroid/widget/OplusSpringOverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    .line 298
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v2

    int-to-float v3, v0

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 299
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    int-to-float v3, v1

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 297
    :goto_0
    return v2
.end method

.method public blacklist notifyHorizontalEdgeReached(III)V
    .locals 8
    .param p1, "startX"    # I
    .param p2, "finalX"    # I
    .param p3, "overX"    # I

    .line 308
    iget-object v0, p0, Landroid/widget/OplusSpringOverScroller;->mScrollerX:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;

    invoke-static {v0, p1, p2, p3}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->-$$Nest$mnotifyEdgeReached(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;III)V

    .line 309
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    invoke-virtual/range {v1 .. v7}, Landroid/widget/OplusSpringOverScroller;->springBack(IIIIII)Z

    .line 310
    return-void
.end method

.method public blacklist notifyVerticalEdgeReached(III)V
    .locals 8
    .param p1, "startY"    # I
    .param p2, "finalY"    # I
    .param p3, "overY"    # I

    .line 303
    iget-object v0, p0, Landroid/widget/OplusSpringOverScroller;->mScrollerY:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;

    invoke-static {v0, p1, p2, p3}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->-$$Nest$mnotifyEdgeReached(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;III)V

    .line 304
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move v3, p1

    invoke-virtual/range {v1 .. v7}, Landroid/widget/OplusSpringOverScroller;->springBack(IIIIII)Z

    .line 305
    return-void
.end method

.method public blacklist setFinalX(I)V
    .locals 3
    .param p1, "newX"    # I

    .line 206
    iget-object v0, p0, Landroid/widget/OplusSpringOverScroller;->mScrollerX:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;

    int-to-double v1, p1

    invoke-static {v0, v1, v2}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->-$$Nest$msetEndValue(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;D)V

    .line 207
    return-void
.end method

.method public blacklist setFinalY(I)V
    .locals 3
    .param p1, "newY"    # I

    .line 210
    iget-object v0, p0, Landroid/widget/OplusSpringOverScroller;->mScrollerY:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;

    int-to-double v1, p1

    invoke-static {v0, v1, v2}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->-$$Nest$msetEndValue(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;D)V

    .line 211
    return-void
.end method

.method public blacklist setFlingFriction(F)V
    .locals 1
    .param p1, "friction"    # F

    .line 328
    iget-object v0, p0, Landroid/widget/OplusSpringOverScroller;->mScrollerX:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;

    invoke-static {v0, p1}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->-$$Nest$fputmFlingFriction(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;F)V

    .line 329
    iget-object v0, p0, Landroid/widget/OplusSpringOverScroller;->mScrollerY:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;

    invoke-static {v0, p1}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->-$$Nest$fputmFlingFriction(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;F)V

    .line 330
    return-void
.end method

.method public blacklist setFriction(F)V
    .locals 1
    .param p1, "friction"    # F

    .line 323
    iget-object v0, p0, Landroid/widget/OplusSpringOverScroller;->mScrollerX:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;

    invoke-static {v0, p1}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->-$$Nest$msetFriction(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;F)V

    .line 324
    iget-object v0, p0, Landroid/widget/OplusSpringOverScroller;->mScrollerY:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;

    invoke-static {v0, p1}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->-$$Nest$msetFriction(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;F)V

    .line 325
    return-void
.end method

.method public blacklist setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 104
    if-nez p1, :cond_0

    .line 105
    new-instance v0, Landroid/widget/Scroller$ViscousFluidInterpolator;

    invoke-direct {v0}, Landroid/widget/Scroller$ViscousFluidInterpolator;-><init>()V

    iput-object v0, p0, Landroid/widget/OplusSpringOverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0

    .line 107
    :cond_0
    iput-object p1, p0, Landroid/widget/OplusSpringOverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 109
    :goto_0
    return-void
.end method

.method public blacklist setOplusFriction(F)V
    .locals 0
    .param p1, "friction"    # F

    .line 320
    return-void
.end method

.method public blacklist setScrollXIsScrollView(Z)V
    .locals 0
    .param p1, "isScrollView"    # Z

    .line 52
    return-void
.end method

.method public blacklist setScrollYIsScrollView(Z)V
    .locals 0
    .param p1, "isScrollView"    # Z

    .line 57
    return-void
.end method

.method public blacklist springBack(IIIIII)Z
    .locals 3
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "minX"    # I
    .param p4, "maxX"    # I
    .param p5, "minY"    # I
    .param p6, "maxY"    # I

    .line 264
    iget-object v0, p0, Landroid/widget/OplusSpringOverScroller;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/widget/OplusSpringOverScroller;->getRefreshTime(Landroid/content/Context;)F

    move-result v0

    sput v0, Landroid/widget/OplusSpringOverScroller;->mRefreshTime:F

    .line 265
    iget-object v0, p0, Landroid/widget/OplusSpringOverScroller;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/widget/OplusSpringOverScroller;->getRefreshRate(Landroid/content/Context;)I

    move-result v0

    sput v0, Landroid/widget/OplusSpringOverScroller;->mRefreshRate:I

    .line 266
    iget-object v0, p0, Landroid/widget/OplusSpringOverScroller;->mScrollerX:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;

    invoke-static {v0, p1, p3, p4}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->-$$Nest$mspringBack(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;III)Z

    move-result v0

    .line 267
    .local v0, "springBackX":Z
    iget-object v1, p0, Landroid/widget/OplusSpringOverScroller;->mScrollerY:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;

    invoke-static {v1, p2, p5, p6}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->-$$Nest$mspringBack(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;III)Z

    move-result v1

    .line 268
    .local v1, "springBackY":Z
    const/4 v2, 0x1

    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    .line 269
    :cond_0
    iput v2, p0, Landroid/widget/OplusSpringOverScroller;->mMode:I

    .line 271
    :cond_1
    if-nez v0, :cond_3

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :cond_3
    :goto_0
    return v2
.end method

.method public blacklist startScroll(IIII)V
    .locals 6
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I

    .line 275
    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OplusSpringOverScroller;->startScroll(IIIII)V

    .line 276
    return-void
.end method

.method public blacklist startScroll(IIIII)V
    .locals 1
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I
    .param p5, "duration"    # I

    .line 279
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/OplusSpringOverScroller;->mMode:I

    .line 280
    iget-object v0, p0, Landroid/widget/OplusSpringOverScroller;->mScrollerX:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;

    invoke-static {v0, p1, p3, p5}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->-$$Nest$mstartScroll(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;III)V

    .line 281
    iget-object v0, p0, Landroid/widget/OplusSpringOverScroller;->mScrollerY:Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;

    invoke-static {v0, p2, p4, p5}, Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;->-$$Nest$mstartScroll(Landroid/widget/OplusSpringOverScroller$ReboundOverScroller;III)V

    .line 282
    return-void
.end method

.method public blacklist timePassed()I
    .locals 1

    .line 291
    const/4 v0, -0x1

    return v0
.end method
