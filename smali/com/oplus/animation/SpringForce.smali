.class public final Lcom/oplus/animation/SpringForce;
.super Ljava/lang/Object;
.source "SpringForce.java"

# interfaces
.implements Lcom/oplus/animation/Force;


# static fields
.field public static final whitelist DAMPING_RATIO_HIGH_BOUNCY:F = 0.2f

.field public static final whitelist DAMPING_RATIO_LOW_BOUNCY:F = 0.75f

.field public static final whitelist DAMPING_RATIO_MEDIUM_BOUNCY:F = 0.5f

.field public static final whitelist DAMPING_RATIO_NO_BOUNCY:F = 1.0f

.field public static final whitelist STIFFNESS_HIGH:F = 10000.0f

.field public static final whitelist STIFFNESS_LOW:F = 200.0f

.field public static final whitelist STIFFNESS_MEDIUM:F = 1500.0f

.field public static final whitelist STIFFNESS_VERY_LOW:F = 50.0f

.field private static final blacklist UNSET:D = 1.7976931348623157E308

.field private static final blacklist VELOCITY_THRESHOLD_MULTIPLIER:D = 62.5


# instance fields
.field private blacklist mDampedFreq:D

.field blacklist mDampingRatio:D

.field private blacklist mFinalPosition:D

.field private blacklist mGammaMinus:D

.field private blacklist mGammaPlus:D

.field private blacklist mInitialized:Z

.field private final blacklist mMassState:Lcom/oplus/animation/DynamicAnimation$MassState;

.field blacklist mNaturalFreq:D

.field private blacklist mValueThreshold:D

.field private blacklist mVelocityThreshold:D


# direct methods
.method public constructor whitelist <init>()V
    .locals 2

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const-wide v0, 0x4097700000000000L    # 1500.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/animation/SpringForce;->mNaturalFreq:D

    .line 87
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, p0, Lcom/oplus/animation/SpringForce;->mDampingRatio:D

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/animation/SpringForce;->mInitialized:Z

    .line 106
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v0, p0, Lcom/oplus/animation/SpringForce;->mFinalPosition:D

    .line 109
    new-instance v0, Lcom/oplus/animation/DynamicAnimation$MassState;

    invoke-direct {v0}, Lcom/oplus/animation/DynamicAnimation$MassState;-><init>()V

    iput-object v0, p0, Lcom/oplus/animation/SpringForce;->mMassState:Lcom/oplus/animation/DynamicAnimation$MassState;

    .line 117
    return-void
.end method

.method public constructor whitelist <init>(F)V
    .locals 2
    .param p1, "finalPosition"    # F

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const-wide v0, 0x4097700000000000L    # 1500.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/animation/SpringForce;->mNaturalFreq:D

    .line 87
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, p0, Lcom/oplus/animation/SpringForce;->mDampingRatio:D

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/animation/SpringForce;->mInitialized:Z

    .line 106
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v0, p0, Lcom/oplus/animation/SpringForce;->mFinalPosition:D

    .line 109
    new-instance v0, Lcom/oplus/animation/DynamicAnimation$MassState;

    invoke-direct {v0}, Lcom/oplus/animation/DynamicAnimation$MassState;-><init>()V

    iput-object v0, p0, Lcom/oplus/animation/SpringForce;->mMassState:Lcom/oplus/animation/DynamicAnimation$MassState;

    .line 125
    float-to-double v0, p1

    iput-wide v0, p0, Lcom/oplus/animation/SpringForce;->mFinalPosition:D

    .line 126
    return-void
.end method

.method private blacklist init()V
    .locals 8

    .line 247
    iget-boolean v0, p0, Lcom/oplus/animation/SpringForce;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 248
    return-void

    .line 251
    :cond_0
    iget-wide v0, p0, Lcom/oplus/animation/SpringForce;->mFinalPosition:D

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_3

    .line 256
    iget-wide v0, p0, Lcom/oplus/animation/SpringForce;->mDampingRatio:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_1

    .line 258
    neg-double v4, v0

    iget-wide v6, p0, Lcom/oplus/animation/SpringForce;->mNaturalFreq:D

    mul-double/2addr v4, v6

    mul-double/2addr v0, v0

    sub-double/2addr v0, v2

    .line 259
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    mul-double/2addr v6, v0

    add-double/2addr v4, v6

    iput-wide v4, p0, Lcom/oplus/animation/SpringForce;->mGammaPlus:D

    .line 260
    iget-wide v0, p0, Lcom/oplus/animation/SpringForce;->mDampingRatio:D

    neg-double v4, v0

    iget-wide v6, p0, Lcom/oplus/animation/SpringForce;->mNaturalFreq:D

    mul-double/2addr v4, v6

    mul-double/2addr v0, v0

    sub-double/2addr v0, v2

    .line 261
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    mul-double/2addr v6, v0

    sub-double/2addr v4, v6

    iput-wide v4, p0, Lcom/oplus/animation/SpringForce;->mGammaMinus:D

    goto :goto_0

    .line 262
    :cond_1
    const-wide/16 v4, 0x0

    cmpl-double v4, v0, v4

    if-ltz v4, :cond_2

    cmpg-double v4, v0, v2

    if-gez v4, :cond_2

    .line 264
    iget-wide v4, p0, Lcom/oplus/animation/SpringForce;->mNaturalFreq:D

    mul-double/2addr v0, v0

    sub-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    mul-double/2addr v4, v0

    iput-wide v4, p0, Lcom/oplus/animation/SpringForce;->mDampedFreq:D

    .line 267
    :cond_2
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/animation/SpringForce;->mInitialized:Z

    .line 268
    return-void

    .line 252
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error: Final position of the spring must be set before the animation starts"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist getAcceleration(FF)F
    .locals 8
    .param p1, "lastDisplacement"    # F
    .param p2, "lastVelocity"    # F

    .line 219
    invoke-virtual {p0}, Lcom/oplus/animation/SpringForce;->getFinalPosition()F

    move-result v0

    sub-float/2addr p1, v0

    .line 221
    iget-wide v0, p0, Lcom/oplus/animation/SpringForce;->mNaturalFreq:D

    mul-double v2, v0, v0

    .line 222
    .local v2, "k":D
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v4

    iget-wide v4, p0, Lcom/oplus/animation/SpringForce;->mDampingRatio:D

    mul-double/2addr v0, v4

    .line 224
    .local v0, "c":D
    neg-double v4, v2

    float-to-double v6, p1

    mul-double/2addr v4, v6

    float-to-double v6, p2

    mul-double/2addr v6, v0

    sub-double/2addr v4, v6

    double-to-float v4, v4

    return v4
.end method

.method public whitelist getDampingRatio()F
    .locals 2

    .line 188
    iget-wide v0, p0, Lcom/oplus/animation/SpringForce;->mDampingRatio:D

    double-to-float v0, v0

    return v0
.end method

.method public whitelist getFinalPosition()F
    .locals 2

    .line 208
    iget-wide v0, p0, Lcom/oplus/animation/SpringForce;->mFinalPosition:D

    double-to-float v0, v0

    return v0
.end method

.method public whitelist getStiffness()F
    .locals 2

    .line 154
    iget-wide v0, p0, Lcom/oplus/animation/SpringForce;->mNaturalFreq:D

    mul-double/2addr v0, v0

    double-to-float v0, v0

    return v0
.end method

.method public blacklist isAtEquilibrium(FF)Z
    .locals 4
    .param p1, "value"    # F
    .param p2, "velocity"    # F

    .line 232
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    iget-wide v2, p0, Lcom/oplus/animation/SpringForce;->mVelocityThreshold:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 233
    invoke-virtual {p0}, Lcom/oplus/animation/SpringForce;->getFinalPosition()F

    move-result v0

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    iget-wide v2, p0, Lcom/oplus/animation/SpringForce;->mValueThreshold:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 234
    const/4 v0, 0x1

    return v0

    .line 236
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setDampingRatio(F)Lcom/oplus/animation/SpringForce;
    .locals 2
    .param p1, "dampingRatio"    # F

    .line 173
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 176
    float-to-double v0, p1

    iput-wide v0, p0, Lcom/oplus/animation/SpringForce;->mDampingRatio:D

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/animation/SpringForce;->mInitialized:Z

    .line 179
    return-object p0

    .line 174
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Damping ratio must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setFinalPosition(F)Lcom/oplus/animation/SpringForce;
    .locals 2
    .param p1, "finalPosition"    # F

    .line 198
    float-to-double v0, p1

    iput-wide v0, p0, Lcom/oplus/animation/SpringForce;->mFinalPosition:D

    .line 199
    return-object p0
.end method

.method public whitelist setStiffness(F)Lcom/oplus/animation/SpringForce;
    .locals 2
    .param p1, "stiffness"    # F

    .line 139
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    .line 142
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/animation/SpringForce;->mNaturalFreq:D

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/animation/SpringForce;->mInitialized:Z

    .line 145
    return-object p0

    .line 140
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Spring stiffness constant must be positive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist setValueThreshold(D)V
    .locals 4
    .param p1, "threshold"    # D

    .line 329
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/animation/SpringForce;->mValueThreshold:D

    .line 330
    const-wide v2, 0x404f400000000000L    # 62.5

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lcom/oplus/animation/SpringForce;->mVelocityThreshold:D

    .line 331
    return-void
.end method

.method blacklist updateValues(DDJ)Lcom/oplus/animation/DynamicAnimation$MassState;
    .locals 22
    .param p1, "lastDisplacement"    # D
    .param p3, "lastVelocity"    # D
    .param p5, "timeElapsed"    # J

    .line 276
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/oplus/animation/SpringForce;->init()V

    .line 278
    move-wide/from16 v1, p5

    long-to-double v3, v1

    const-wide v5, 0x408f400000000000L    # 1000.0

    div-double/2addr v3, v5

    .line 279
    .local v3, "deltaT":D
    iget-wide v5, v0, Lcom/oplus/animation/SpringForce;->mFinalPosition:D

    sub-double v5, p1, v5

    .line 282
    .end local p1    # "lastDisplacement":D
    .local v5, "lastDisplacement":D
    iget-wide v7, v0, Lcom/oplus/animation/SpringForce;->mDampingRatio:D

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpl-double v11, v7, v9

    const-wide v12, 0x4005bf0a8b145769L    # Math.E

    if-lez v11, :cond_0

    .line 284
    iget-wide v7, v0, Lcom/oplus/animation/SpringForce;->mGammaMinus:D

    mul-double v9, v7, v5

    sub-double v9, v9, p3

    iget-wide v14, v0, Lcom/oplus/animation/SpringForce;->mGammaPlus:D

    sub-double v16, v7, v14

    div-double v9, v9, v16

    sub-double v9, v5, v9

    .line 286
    .local v9, "coeffA":D
    mul-double v16, v7, v5

    sub-double v16, v16, p3

    sub-double v14, v7, v14

    div-double v16, v16, v14

    .line 288
    .local v16, "coeffB":D
    mul-double/2addr v7, v3

    invoke-static {v12, v13, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    mul-double/2addr v7, v9

    iget-wide v14, v0, Lcom/oplus/animation/SpringForce;->mGammaPlus:D

    mul-double/2addr v14, v3

    .line 289
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double v14, v14, v16

    add-double/2addr v7, v14

    .line 290
    .local v7, "displacement":D
    iget-wide v14, v0, Lcom/oplus/animation/SpringForce;->mGammaMinus:D

    mul-double v18, v9, v14

    mul-double/2addr v14, v3

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double v18, v18, v14

    iget-wide v14, v0, Lcom/oplus/animation/SpringForce;->mGammaPlus:D

    mul-double v20, v16, v14

    mul-double/2addr v14, v3

    .line 291
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    mul-double v20, v20, v11

    add-double v18, v18, v20

    .line 292
    .end local v9    # "coeffA":D
    .end local v16    # "coeffB":D
    .local v18, "currentVelocity":D
    move-wide v15, v5

    move-wide/from16 v1, v18

    goto/16 :goto_0

    .end local v7    # "displacement":D
    .end local v18    # "currentVelocity":D
    :cond_0
    cmpl-double v11, v7, v9

    if-nez v11, :cond_1

    .line 294
    move-wide v7, v5

    .line 295
    .local v7, "coeffA":D
    iget-wide v9, v0, Lcom/oplus/animation/SpringForce;->mNaturalFreq:D

    mul-double v14, v9, v5

    add-double v14, p3, v14

    .line 296
    .local v14, "coeffB":D
    mul-double v16, v14, v3

    add-double v16, v7, v16

    neg-double v9, v9

    mul-double/2addr v9, v3

    invoke-static {v12, v13, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    mul-double v9, v9, v16

    .line 297
    .local v9, "displacement":D
    mul-double v16, v14, v3

    add-double v16, v7, v16

    iget-wide v12, v0, Lcom/oplus/animation/SpringForce;->mNaturalFreq:D

    neg-double v11, v12

    mul-double/2addr v11, v3

    const-wide v1, 0x4005bf0a8b145769L    # Math.E

    invoke-static {v1, v2, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    mul-double v16, v16, v11

    iget-wide v11, v0, Lcom/oplus/animation/SpringForce;->mNaturalFreq:D

    neg-double v1, v11

    mul-double v16, v16, v1

    neg-double v1, v11

    mul-double/2addr v1, v3

    .line 298
    const-wide v11, 0x4005bf0a8b145769L    # Math.E

    invoke-static {v11, v12, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    mul-double/2addr v1, v14

    add-double v18, v16, v1

    .line 299
    .end local v7    # "coeffA":D
    .end local v14    # "coeffB":D
    .restart local v18    # "currentVelocity":D
    move-wide v15, v5

    move-wide v7, v9

    move-wide/from16 v1, v18

    goto :goto_0

    .line 301
    .end local v9    # "displacement":D
    .end local v18    # "currentVelocity":D
    :cond_1
    move-wide v1, v5

    .line 302
    .local v1, "cosCoeff":D
    iget-wide v11, v0, Lcom/oplus/animation/SpringForce;->mDampedFreq:D

    div-double/2addr v9, v11

    iget-wide v11, v0, Lcom/oplus/animation/SpringForce;->mNaturalFreq:D

    mul-double v13, v7, v11

    mul-double/2addr v13, v5

    add-double v13, v13, p3

    mul-double/2addr v9, v13

    .line 304
    .local v9, "sinCoeff":D
    neg-double v7, v7

    mul-double/2addr v7, v11

    mul-double/2addr v7, v3

    const-wide v11, 0x4005bf0a8b145769L    # Math.E

    invoke-static {v11, v12, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    iget-wide v11, v0, Lcom/oplus/animation/SpringForce;->mDampedFreq:D

    mul-double/2addr v11, v3

    .line 305
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double/2addr v11, v1

    iget-wide v13, v0, Lcom/oplus/animation/SpringForce;->mDampedFreq:D

    mul-double/2addr v13, v3

    .line 306
    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    mul-double/2addr v13, v9

    add-double/2addr v11, v13

    mul-double/2addr v7, v11

    .line 307
    .local v7, "displacement":D
    iget-wide v11, v0, Lcom/oplus/animation/SpringForce;->mNaturalFreq:D

    neg-double v13, v11

    mul-double/2addr v13, v7

    move-wide v15, v5

    .end local v5    # "lastDisplacement":D
    .local v15, "lastDisplacement":D
    iget-wide v5, v0, Lcom/oplus/animation/SpringForce;->mDampingRatio:D

    mul-double/2addr v13, v5

    neg-double v5, v5

    mul-double/2addr v5, v11

    mul-double/2addr v5, v3

    .line 308
    const-wide v11, 0x4005bf0a8b145769L    # Math.E

    invoke-static {v11, v12, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    iget-wide v11, v0, Lcom/oplus/animation/SpringForce;->mDampedFreq:D

    move-wide/from16 p1, v7

    .end local v7    # "displacement":D
    .local p1, "displacement":D
    neg-double v7, v11

    mul-double/2addr v7, v1

    mul-double/2addr v11, v3

    .line 309
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    mul-double/2addr v7, v11

    iget-wide v11, v0, Lcom/oplus/animation/SpringForce;->mDampedFreq:D

    mul-double v17, v11, v9

    mul-double/2addr v11, v3

    .line 310
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double v17, v17, v11

    add-double v7, v7, v17

    mul-double/2addr v5, v7

    add-double v18, v13, v5

    move-wide/from16 v7, p1

    move-wide/from16 v1, v18

    .line 313
    .end local v9    # "sinCoeff":D
    .end local p1    # "displacement":D
    .local v1, "currentVelocity":D
    .restart local v7    # "displacement":D
    :goto_0
    iget-object v5, v0, Lcom/oplus/animation/SpringForce;->mMassState:Lcom/oplus/animation/DynamicAnimation$MassState;

    iget-wide v9, v0, Lcom/oplus/animation/SpringForce;->mFinalPosition:D

    add-double/2addr v9, v7

    double-to-float v6, v9

    iput v6, v5, Lcom/oplus/animation/DynamicAnimation$MassState;->mValue:F

    .line 314
    iget-object v5, v0, Lcom/oplus/animation/SpringForce;->mMassState:Lcom/oplus/animation/DynamicAnimation$MassState;

    double-to-float v6, v1

    iput v6, v5, Lcom/oplus/animation/DynamicAnimation$MassState;->mVelocity:F

    .line 315
    iget-object v5, v0, Lcom/oplus/animation/SpringForce;->mMassState:Lcom/oplus/animation/DynamicAnimation$MassState;

    return-object v5
.end method
