.class public Landroid/widget/FlingOptimizerOverScroller;
.super Ljava/lang/Object;
.source "FlingOptimizerOverScroller.java"


# static fields
.field private static final blacklist DECELERATION_TIME_SLOPE_GETTIME:F = 0.56f

.field private static final blacklist DENSITY_MEDIUM:F = 160.0f

.field private static final blacklist INCH_METER:F = 39.37f

.field private static final blacklist INFLEXION:F = 0.35f

.field private static final blacklist NUM_ONE:F = 1.0f

.field private static final blacklist SLOP_EPARAME_TERGET_DISTANCE:F = 1.5f

.field private static final blacklist SLOW_DOWN_TUNNING_DISTANCE:F = 5.4f

.field private static final blacklist SLOW_DOWN_TUNNING_VELOCITY:F = 4.0f

.field private static final blacklist SPLINE_DISTANCE_COMPLETE:F = 0.9f

.field private static final blacklist TAG:Ljava/lang/String; = "FlingOptimizerOverScroller"


# instance fields
.field private blacklist DEBUG:Z

.field private blacklist mDecelerationRate:F

.field private final blacklist mPhysicalCoeff:F

.field private final blacklist mPpi:F


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-wide v0, 0x3fe8f5c28f5c28f6L    # 0.78

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Landroid/widget/FlingOptimizerOverScroller;->mDecelerationRate:F

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/FlingOptimizerOverScroller;->DEBUG:Z

    .line 50
    nop

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x43200000    # 160.0f

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/widget/FlingOptimizerOverScroller;->mPpi:F

    .line 55
    const v1, 0x43c10b3d

    mul-float/2addr v0, v1

    const v1, 0x3f0f5c29    # 0.56f

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/widget/FlingOptimizerOverScroller;->mPhysicalCoeff:F

    .line 59
    return-void
.end method


# virtual methods
.method public blacklist fling(I)I
    .locals 0
    .param p1, "velocityY"    # I

    .line 65
    return p1
.end method

.method public blacklist getSplineFlingDistanceTuning(IF)D
    .locals 9
    .param p1, "velocity"    # I
    .param p2, "flingFriction"    # F

    .line 72
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3eb33333    # 0.35f

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/widget/FlingOptimizerOverScroller;->mPhysicalCoeff:F

    mul-float/2addr v1, p2

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    .line 73
    .local v0, "deceleration":D
    iget v2, p0, Landroid/widget/FlingOptimizerOverScroller;->mDecelerationRate:F

    float-to-double v3, v2

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v3, v5

    .line 74
    .local v3, "decelMinusOne":D
    iget v5, p0, Landroid/widget/FlingOptimizerOverScroller;->mPhysicalCoeff:F

    mul-float/2addr v5, p2

    float-to-double v5, v5

    float-to-double v7, v2

    div-double/2addr v7, v3

    mul-double/2addr v7, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->exp(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    .line 76
    .local v5, "distance":D
    iget-boolean v2, p0, Landroid/widget/FlingOptimizerOverScroller;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSplineFlingDistanceTuning  distance = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "\u3000velocity = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " deceleration = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " flingFriction = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " mPhysicalCoeff = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v7, p0, Landroid/widget/FlingOptimizerOverScroller;->mPhysicalCoeff:F

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v7, "FlingOptimizerOverScroller"

    invoke-static {v7, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    const-wide/high16 v7, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v7, v5

    return-wide v7
.end method

.method public blacklist getSplineFlingDurationTuning(IF)I
    .locals 8
    .param p1, "velocity"    # I
    .param p2, "flingFriction"    # F

    .line 91
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3eb33333    # 0.35f

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/widget/FlingOptimizerOverScroller;->mPhysicalCoeff:F

    mul-float/2addr v1, p2

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    .line 92
    .local v0, "deceleration":D
    iget v2, p0, Landroid/widget/FlingOptimizerOverScroller;->mDecelerationRate:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    .line 93
    .local v2, "decelMinusOne":D
    div-double v4, v0, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double/2addr v4, v6

    double-to-int v4, v4

    .line 95
    .local v4, "finalDuration":I
    iget-boolean v5, p0, Landroid/widget/FlingOptimizerOverScroller;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 96
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSplineFlingDurationTuning  deceleration = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " decelMinusOne = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " finalDuration = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "FlingOptimizerOverScroller"

    invoke-static {v6, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_0
    int-to-float v5, v4

    const/high16 v6, 0x3fc00000    # 1.5f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    return v5
.end method

.method public blacklist getUpdateDistance(JII)D
    .locals 10
    .param p1, "currentTime"    # J
    .param p3, "splineDuration"    # I
    .param p4, "splineDistance"    # I

    .line 106
    const-wide v0, -0x3feac28f60000000L    # -5.309999942779541

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    .line 107
    .local v0, "distanceCoef1":F
    long-to-float v2, p1

    int-to-float v3, p3

    div-float/2addr v2, v3

    const v3, -0x3f533333    # -5.4f

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 108
    .local v2, "distanceCoef2":F
    sub-float v3, v0, v2

    .line 109
    .local v3, "distanceCoef":F
    int-to-float v4, p4

    mul-float/2addr v4, v3

    float-to-double v4, v4

    .line 111
    .local v4, "distance":D
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-float v8, v8

    const v9, 0x3f666666    # 0.9f

    mul-float/2addr v8, v9

    float-to-double v8, v8

    cmpg-double v6, v6, v8

    if-gez v6, :cond_0

    .line 112
    return-wide v4

    .line 115
    :cond_0
    cmpl-float v1, v3, v1

    if-ltz v1, :cond_1

    .line 116
    const/high16 v3, 0x3f800000    # 1.0f

    .line 119
    :cond_1
    iget-boolean v1, p0, Landroid/widget/FlingOptimizerOverScroller;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getUpdateDistance distanceCoef = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " distance ="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " splineDistance = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " currentTime = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " splineDuration = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " distanceCoef1 = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " distanceCoef2 = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v6, "FlingOptimizerOverScroller"

    invoke-static {v6, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_2
    int-to-float v1, p4

    mul-float/2addr v1, v3

    float-to-double v6, v1

    return-wide v6
.end method

.method public blacklist getUpdateVelocity(JII)F
    .locals 3
    .param p1, "currentTime"    # J
    .param p3, "splineDuration"    # I
    .param p4, "velocity"    # I

    .line 132
    long-to-float v0, p1

    int-to-float v1, p3

    div-float/2addr v0, v1

    const/high16 v1, -0x3f800000    # -4.0f

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 134
    .local v0, "velocityCoef":F
    iget-boolean v1, p0, Landroid/widget/FlingOptimizerOverScroller;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUpdateVelocity  currentTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " splineDuration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " velocity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " updateVelocity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-float v2, p4

    mul-float/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FlingOptimizerOverScroller"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_0
    int-to-float v1, p4

    mul-float/2addr v1, v0

    return v1
.end method
