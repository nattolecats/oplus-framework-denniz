.class public Landroid/widget/OplusScrollOptimizationHelper;
.super Ljava/lang/Object;
.source "OplusScrollOptimizationHelper.java"

# interfaces
.implements Landroid/widget/IOplusScrollOptimizationHelper;


# static fields
.field private static final blacklist OPT_CONFIG_FILE:Ljava/lang/String; = "my_product/etc/scroll_opt.xml"

.field private static final blacklist TAG:Ljava/lang/String; = "ScrollOptimizationHelper"

.field private static blacklist sAccuCountThresh:I = 0x0

.field private static blacklist sDebugOpt:Z = false

.field private static blacklist sDistanceMaxCoef:F = 0.0f

.field private static blacklist sDistanceMinCoef:F = 0.0f

.field private static blacklist sDurationMaxCoef:F = 0.0f

.field private static blacklist sDurationMinCoef:F = 0.0f

.field private static blacklist sFlingAbortIntervalMax:I = 0x0

.field private static final blacklist sInterLength:I = 0x4

.field private static blacklist sInterpolator:[F

.field private static blacklist sInterpolatorStr:Ljava/lang/String;

.field private static blacklist sMaxAccuCoef:F

.field private static blacklist sMaxContinuousInterval:I

.field private static blacklist sMaxVelocityForDistance:I

.field private static blacklist sMaxVelocityForDuration:I

.field private static blacklist sMinVelocityForDistance:I

.field private static blacklist sMinVelocityForDuration:I

.field private static blacklist sOptEnable:Z

.field private static blacklist sPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private static blacklist sVelocityAccu:Z

.field private static blacklist sVelocityAccuCoef:F


# instance fields
.field private blacklist mLastAbortTime:J

.field private blacklist mLastFlingTime:J

.field private blacklist mSavedVeloAccuCount:I

.field private blacklist mVeloAccuCount:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 10

    .line 32
    const/4 v0, 0x0

    sput-object v0, Landroid/widget/OplusScrollOptimizationHelper;->sInterpolator:[F

    .line 33
    sput-object v0, Landroid/widget/OplusScrollOptimizationHelper;->sPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 36
    const-string v1, ""

    sput-object v1, Landroid/widget/OplusScrollOptimizationHelper;->sInterpolatorStr:Ljava/lang/String;

    .line 39
    const/4 v2, 0x1

    sput-boolean v2, Landroid/widget/OplusScrollOptimizationHelper;->sVelocityAccu:Z

    .line 40
    const/4 v3, 0x0

    sput-boolean v3, Landroid/widget/OplusScrollOptimizationHelper;->sOptEnable:Z

    .line 41
    sput-boolean v3, Landroid/widget/OplusScrollOptimizationHelper;->sDebugOpt:Z

    .line 43
    const/high16 v4, 0x40000000    # 2.0f

    sput v4, Landroid/widget/OplusScrollOptimizationHelper;->sVelocityAccuCoef:F

    .line 44
    const/4 v4, 0x3

    sput v4, Landroid/widget/OplusScrollOptimizationHelper;->sAccuCountThresh:I

    .line 45
    const/high16 v5, 0x40c00000    # 6.0f

    sput v5, Landroid/widget/OplusScrollOptimizationHelper;->sMaxAccuCoef:F

    .line 46
    const/16 v5, 0x96

    sput v5, Landroid/widget/OplusScrollOptimizationHelper;->sFlingAbortIntervalMax:I

    .line 47
    const/16 v5, 0x1f4

    sput v5, Landroid/widget/OplusScrollOptimizationHelper;->sMaxContinuousInterval:I

    .line 49
    const/high16 v5, 0x3f800000    # 1.0f

    sput v5, Landroid/widget/OplusScrollOptimizationHelper;->sDurationMaxCoef:F

    .line 50
    sput v5, Landroid/widget/OplusScrollOptimizationHelper;->sDurationMinCoef:F

    .line 51
    sput v5, Landroid/widget/OplusScrollOptimizationHelper;->sDistanceMaxCoef:F

    .line 52
    sput v5, Landroid/widget/OplusScrollOptimizationHelper;->sDistanceMinCoef:F

    .line 53
    const/16 v5, 0x2ee0

    sput v5, Landroid/widget/OplusScrollOptimizationHelper;->sMaxVelocityForDuration:I

    .line 54
    const/16 v6, 0x1388

    sput v6, Landroid/widget/OplusScrollOptimizationHelper;->sMinVelocityForDuration:I

    .line 55
    sput v5, Landroid/widget/OplusScrollOptimizationHelper;->sMaxVelocityForDistance:I

    .line 56
    sput v6, Landroid/widget/OplusScrollOptimizationHelper;->sMinVelocityForDistance:I

    .line 156
    invoke-static {}, Landroid/widget/OplusScrollOptimizationHelper;->parseConfigFile()V

    .line 158
    sget-object v5, Landroid/widget/OplusScrollOptimizationHelper;->sInterpolatorStr:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v5, "ScrollOptimizationHelper"

    const/4 v6, 0x4

    if-nez v1, :cond_0

    .line 159
    sget-object v1, Landroid/widget/OplusScrollOptimizationHelper;->sInterpolatorStr:Ljava/lang/String;

    const-string v7, ","

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, "values":[Ljava/lang/String;
    array-length v7, v1

    if-lt v7, v6, :cond_0

    .line 161
    new-array v7, v6, [F

    sput-object v7, Landroid/widget/OplusScrollOptimizationHelper;->sInterpolator:[F

    .line 163
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v6, :cond_0

    .line 164
    :try_start_0
    sget-object v8, Landroid/widget/OplusScrollOptimizationHelper;->sInterpolator:[F

    aget-object v9, v1, v7

    invoke-static {v9}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    aput v9, v8, v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 166
    .end local v7    # "i":I
    :catch_0
    move-exception v7

    .line 167
    .local v7, "e":Ljava/lang/Exception;
    const-string v8, "something wrong while parsing the interpolator!"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    sput-object v0, Landroid/widget/OplusScrollOptimizationHelper;->sInterpolator:[F

    nop

    .line 172
    .end local v1    # "values":[Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_0
    sget-object v0, Landroid/widget/OplusScrollOptimizationHelper;->sInterpolator:[F

    if-eqz v0, :cond_1

    .line 173
    new-instance v0, Landroid/view/animation/PathInterpolator;

    sget-object v1, Landroid/widget/OplusScrollOptimizationHelper;->sInterpolator:[F

    aget v7, v1, v3

    aget v2, v1, v2

    const/4 v8, 0x2

    aget v8, v1, v8

    aget v1, v1, v4

    invoke-direct {v0, v7, v2, v8, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/widget/OplusScrollOptimizationHelper;->sPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 175
    :cond_1
    const-string v0, "persist.op.overscroller.opt.debug"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/widget/OplusScrollOptimizationHelper;->sDebugOpt:Z

    .line 176
    if-eqz v0, :cond_4

    .line 177
    sget-boolean v0, Landroid/widget/OplusScrollOptimizationHelper;->sOptEnable:Z

    if-eqz v0, :cond_3

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "interpolator is: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 179
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v6, :cond_2

    .line 180
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/widget/OplusScrollOptimizationHelper;->sInterpolator:[F

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 182
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-static {}, Landroid/widget/OplusScrollOptimizationHelper;->debugScrollOpt()V

    .line 184
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    goto :goto_2

    .line 185
    :cond_3
    const-string v0, "will not debug for enable is false"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 188
    :cond_4
    const-string v0, "will not debug for debug is false"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :goto_2
    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist debugScrollOpt()V
    .locals 3

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Landroid/widget/OplusScrollOptimizationHelper;->sOptEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\ninterpolator"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/widget/OplusScrollOptimizationHelper;->sInterpolatorStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nvelocityAccuCoef: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/widget/OplusScrollOptimizationHelper;->sVelocityAccuCoef:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nmaxAccuCoef: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/widget/OplusScrollOptimizationHelper;->sMaxAccuCoef:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\naccuCountThreash: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/widget/OplusScrollOptimizationHelper;->sAccuCountThresh:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nflingabortIntervalMax: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/widget/OplusScrollOptimizationHelper;->sFlingAbortIntervalMax:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nmaxContinuousInterval: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/widget/OplusScrollOptimizationHelper;->sMaxContinuousInterval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\ndistanceCoefMax: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/widget/OplusScrollOptimizationHelper;->sDistanceMaxCoef:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\ndistanceCoefMin\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/widget/OplusScrollOptimizationHelper;->sDistanceMinCoef:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nmaxVelocityFordis\uff1a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/widget/OplusScrollOptimizationHelper;->sMaxVelocityForDistance:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nminVelocityForDis: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/widget/OplusScrollOptimizationHelper;->sMinVelocityForDistance:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\ndurationCoefMax: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/widget/OplusScrollOptimizationHelper;->sDurationMaxCoef:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\ndurationCoefMin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/widget/OplusScrollOptimizationHelper;->sDurationMinCoef:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nmaxVelocityForDur: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/widget/OplusScrollOptimizationHelper;->sMaxVelocityForDuration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nminVelocityForDur: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/widget/OplusScrollOptimizationHelper;->sMinVelocityForDuration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScrollOptimizationHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return-void
.end method

.method private static blacklist parseConfigFile()V
    .locals 16

    .line 65
    new-instance v0, Ljava/io/File;

    const-string v1, "my_product/etc/scroll_opt.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    .line 66
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v2, "ScrollOptimizationHelper"

    if-nez v0, :cond_0

    .line 67
    const-string v0, "can\'t find the config file for optimizaiton"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-void

    .line 70
    :cond_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    .line 71
    .local v3, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v4, 0x0

    .line 72
    .local v4, "builder":Ljavax/xml/parsers/DocumentBuilder;
    const/4 v5, 0x0

    .line 74
    .local v5, "doc":Lorg/w3c/dom/Document;
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    move-object v4, v0

    .line 75
    invoke-virtual {v4, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v0

    move-object v5, v0

    .line 76
    const-string v0, "param"

    invoke-interface {v5, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 77
    .local v0, "nodeList":Lorg/w3c/dom/NodeList;
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-nez v7, :cond_1

    .line 78
    const-string v7, "no param find, now will return!"

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_1
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-ge v7, v8, :cond_11

    .line 81
    invoke-interface {v0, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/Element;

    .line 82
    .local v8, "element":Lorg/w3c/dom/Element;
    invoke-interface {v8}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    .line 83
    .local v9, "parentNodeName":Ljava/lang/String;
    const-string v10, "name"

    invoke-interface {v8, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 84
    .local v10, "name":Ljava/lang/String;
    const-string v11, "value"

    invoke-interface {v8, v11}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 85
    .local v11, "value":Ljava/lang/String;
    const-string v12, "ScrollOptParameters"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 86
    const-string v12, "enable"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-nez v12, :cond_2

    .line 88
    sput-boolean v6, Landroid/widget/OplusScrollOptimizationHelper;->sOptEnable:Z

    .line 89
    const-string v12, "will not parse the config file for enable is false"

    invoke-static {v2, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return-void

    .line 92
    :cond_2
    const/4 v12, 0x1

    sput-boolean v12, Landroid/widget/OplusScrollOptimizationHelper;->sOptEnable:Z

    .line 93
    const-string v12, "interpolatorStr"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 94
    sput-object v11, Landroid/widget/OplusScrollOptimizationHelper;->sInterpolatorStr:Ljava/lang/String;

    goto/16 :goto_1

    .line 95
    :cond_3
    const-string v12, "veloAccuCoef"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 96
    invoke-static {v11}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    sput v12, Landroid/widget/OplusScrollOptimizationHelper;->sVelocityAccuCoef:F

    goto/16 :goto_1

    .line 97
    :cond_4
    const-string v12, "maxAccuCoef"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 98
    invoke-static {v11}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    sput v12, Landroid/widget/OplusScrollOptimizationHelper;->sMaxAccuCoef:F

    goto/16 :goto_1

    .line 99
    :cond_5
    const-string v12, "accuCountThresh"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 100
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    sput v12, Landroid/widget/OplusScrollOptimizationHelper;->sAccuCountThresh:I

    goto/16 :goto_1

    .line 101
    :cond_6
    const-string v12, "flingAbortIntervalMax"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 102
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    sput v12, Landroid/widget/OplusScrollOptimizationHelper;->sFlingAbortIntervalMax:I

    goto/16 :goto_1

    .line 103
    :cond_7
    const-string v12, "maxContinuousInterval"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 104
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    sput v12, Landroid/widget/OplusScrollOptimizationHelper;->sMaxContinuousInterval:I

    goto/16 :goto_1

    .line 106
    :cond_8
    const-string v12, "DistanceOpt"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v13, "minCoef"

    const-string v14, "veloMin"

    const-string v15, "veloMax"

    const-string v6, "maxCoef"

    if-eqz v12, :cond_c

    .line 107
    :try_start_1
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 108
    invoke-static {v11}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    sput v6, Landroid/widget/OplusScrollOptimizationHelper;->sDistanceMaxCoef:F

    goto/16 :goto_1

    .line 109
    :cond_9
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 110
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sput v6, Landroid/widget/OplusScrollOptimizationHelper;->sMaxVelocityForDistance:I

    goto/16 :goto_1

    .line 111
    :cond_a
    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 112
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sput v6, Landroid/widget/OplusScrollOptimizationHelper;->sMinVelocityForDistance:I

    goto :goto_1

    .line 113
    :cond_b
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 114
    invoke-static {v11}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    sput v6, Landroid/widget/OplusScrollOptimizationHelper;->sDistanceMinCoef:F

    goto :goto_1

    .line 116
    :cond_c
    const-string v12, "DurationOpt"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 117
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 118
    invoke-static {v11}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    sput v6, Landroid/widget/OplusScrollOptimizationHelper;->sDurationMaxCoef:F

    goto :goto_1

    .line 119
    :cond_d
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 120
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sput v6, Landroid/widget/OplusScrollOptimizationHelper;->sMaxVelocityForDuration:I

    goto :goto_1

    .line 121
    :cond_e
    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 122
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sput v6, Landroid/widget/OplusScrollOptimizationHelper;->sMinVelocityForDuration:I

    goto :goto_1

    .line 123
    :cond_f
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 124
    invoke-static {v11}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    sput v6, Landroid/widget/OplusScrollOptimizationHelper;->sDurationMinCoef:F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 80
    .end local v8    # "element":Lorg/w3c/dom/Element;
    .end local v9    # "parentNodeName":Ljava/lang/String;
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "value":Ljava/lang/String;
    :cond_10
    :goto_1
    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x0

    goto/16 :goto_0

    .line 131
    .end local v0    # "nodeList":Lorg/w3c/dom/NodeList;
    .end local v7    # "i":I
    :cond_11
    goto :goto_2

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/Exception;
    const/4 v6, 0x0

    sput-boolean v6, Landroid/widget/OplusScrollOptimizationHelper;->sOptEnable:Z

    .line 130
    const-string v6, "someting error while parsing config, will disable the optimization"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method


# virtual methods
.method public blacklist enable()Z
    .locals 1

    .line 193
    sget-boolean v0, Landroid/widget/OplusScrollOptimizationHelper;->sOptEnable:Z

    return v0
.end method

.method public blacklist getCustomizedDistanceCoef(I)D
    .locals 7
    .param p1, "velocity"    # I

    .line 229
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 230
    sget-boolean v0, Landroid/widget/OplusScrollOptimizationHelper;->sVelocityAccu:Z

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/widget/OplusScrollOptimizationHelper;->mVeloAccuCount:I

    sget v1, Landroid/widget/OplusScrollOptimizationHelper;->sAccuCountThresh:I

    if-lt v0, v1, :cond_2

    .line 231
    sget v2, Landroid/widget/OplusScrollOptimizationHelper;->sVelocityAccuCoef:F

    float-to-double v2, v2

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    int-to-double v0, v0

    mul-double/2addr v2, v0

    .line 232
    .local v2, "accuCoef":D
    invoke-virtual {p0, p1}, Landroid/widget/OplusScrollOptimizationHelper;->getCustomizedDurationCoef(I)D

    move-result-wide v0

    cmpg-double v0, v2, v0

    if-gez v0, :cond_0

    .line 233
    invoke-virtual {p0, p1}, Landroid/widget/OplusScrollOptimizationHelper;->getCustomizedDurationCoef(I)D

    move-result-wide v2

    .line 235
    :cond_0
    sget v0, Landroid/widget/OplusScrollOptimizationHelper;->sMaxAccuCoef:F

    float-to-double v4, v0

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_1

    .line 236
    float-to-double v2, v0

    .line 238
    :cond_1
    return-wide v2

    .line 240
    .end local v2    # "accuCoef":D
    :cond_2
    sget v0, Landroid/widget/OplusScrollOptimizationHelper;->sMinVelocityForDistance:I

    if-ge p1, v0, :cond_3

    .line 241
    sget v0, Landroid/widget/OplusScrollOptimizationHelper;->sDistanceMaxCoef:F

    float-to-double v0, v0

    return-wide v0

    .line 242
    :cond_3
    sget v1, Landroid/widget/OplusScrollOptimizationHelper;->sMaxVelocityForDistance:I

    if-gt p1, v1, :cond_4

    .line 243
    sget v2, Landroid/widget/OplusScrollOptimizationHelper;->sDistanceMaxCoef:F

    sget v3, Landroid/widget/OplusScrollOptimizationHelper;->sDistanceMinCoef:F

    sub-float v3, v2, v3

    sub-int/2addr v1, v0

    int-to-float v1, v1

    div-float/2addr v3, v1

    float-to-double v3, v3

    .line 244
    .local v3, "coef":D
    float-to-double v1, v2

    sub-int v0, p1, v0

    int-to-double v5, v0

    mul-double/2addr v5, v3

    sub-double/2addr v1, v5

    return-wide v1

    .line 246
    .end local v3    # "coef":D
    :cond_4
    sget v0, Landroid/widget/OplusScrollOptimizationHelper;->sDistanceMinCoef:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public blacklist getCustomizedDurationCoef(I)D
    .locals 7
    .param p1, "velocity"    # I

    .line 252
    sget-boolean v0, Landroid/widget/OplusScrollOptimizationHelper;->sOptEnable:Z

    if-nez v0, :cond_0

    .line 253
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    return-wide v0

    .line 255
    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 256
    sget v0, Landroid/widget/OplusScrollOptimizationHelper;->sMinVelocityForDuration:I

    if-ge p1, v0, :cond_1

    .line 257
    sget v0, Landroid/widget/OplusScrollOptimizationHelper;->sDurationMaxCoef:F

    float-to-double v0, v0

    return-wide v0

    .line 258
    :cond_1
    sget v1, Landroid/widget/OplusScrollOptimizationHelper;->sMaxVelocityForDuration:I

    if-ge p1, v1, :cond_2

    .line 259
    sget v2, Landroid/widget/OplusScrollOptimizationHelper;->sDurationMaxCoef:F

    sget v3, Landroid/widget/OplusScrollOptimizationHelper;->sDurationMinCoef:F

    sub-float v3, v2, v3

    sub-int/2addr v1, v0

    int-to-float v1, v1

    div-float/2addr v3, v1

    float-to-double v3, v3

    .line 260
    .local v3, "coef":D
    float-to-double v1, v2

    sub-int v0, p1, v0

    int-to-double v5, v0

    mul-double/2addr v5, v3

    sub-double/2addr v1, v5

    return-wide v1

    .line 262
    .end local v3    # "coef":D
    :cond_2
    sget v0, Landroid/widget/OplusScrollOptimizationHelper;->sDurationMinCoef:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public blacklist getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .line 203
    sget-object v0, Landroid/widget/OplusScrollOptimizationHelper;->sPathInterpolator:Landroid/view/animation/PathInterpolator;

    return-object v0
.end method

.method public blacklist getInterpolatorValues()[F
    .locals 1

    .line 283
    sget-object v0, Landroid/widget/OplusScrollOptimizationHelper;->sInterpolator:[F

    return-object v0
.end method

.method public blacklist interpolatorValid()Z
    .locals 1

    .line 198
    sget-object v0, Landroid/widget/OplusScrollOptimizationHelper;->sInterpolator:[F

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist resetVeloAccuCount()V
    .locals 1

    .line 268
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/OplusScrollOptimizationHelper;->mVeloAccuCount:I

    .line 269
    return-void
.end method

.method public blacklist saveCurrVeloAccuCount()V
    .locals 1

    .line 273
    iget v0, p0, Landroid/widget/OplusScrollOptimizationHelper;->mVeloAccuCount:I

    iput v0, p0, Landroid/widget/OplusScrollOptimizationHelper;->mSavedVeloAccuCount:I

    .line 274
    return-void
.end method

.method public blacklist setAbortTime(J)V
    .locals 0
    .param p1, "time"    # J

    .line 278
    iput-wide p1, p0, Landroid/widget/OplusScrollOptimizationHelper;->mLastAbortTime:J

    .line 279
    return-void
.end method

.method public blacklist setFlingParam(JFIZ)V
    .locals 6
    .param p1, "now"    # J
    .param p3, "currVelo"    # F
    .param p4, "velo"    # I
    .param p5, "finished"    # Z

    .line 208
    int-to-float v0, p4

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    invoke-static {p3}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 209
    if-nez p5, :cond_0

    .line 210
    iget v0, p0, Landroid/widget/OplusScrollOptimizationHelper;->mVeloAccuCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/OplusScrollOptimizationHelper;->mVeloAccuCount:I

    goto :goto_0

    .line 212
    :cond_0
    iget-wide v2, p0, Landroid/widget/OplusScrollOptimizationHelper;->mLastAbortTime:J

    sub-long v2, p1, v2

    sget v0, Landroid/widget/OplusScrollOptimizationHelper;->sFlingAbortIntervalMax:I

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1

    iget-wide v2, p0, Landroid/widget/OplusScrollOptimizationHelper;->mLastFlingTime:J

    sub-long v2, p1, v2

    sget v0, Landroid/widget/OplusScrollOptimizationHelper;->sMaxContinuousInterval:I

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1

    .line 213
    iget v0, p0, Landroid/widget/OplusScrollOptimizationHelper;->mSavedVeloAccuCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/OplusScrollOptimizationHelper;->mVeloAccuCount:I

    .line 214
    sget-boolean v0, Landroid/widget/OplusScrollOptimizationHelper;->sDebugOpt:Z

    if-eqz v0, :cond_3

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setting mVeloAccuCount to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/OplusScrollOptimizationHelper;->mVeloAccuCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScrollOptimizationHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 218
    :cond_1
    iput v1, p0, Landroid/widget/OplusScrollOptimizationHelper;->mVeloAccuCount:I

    goto :goto_0

    .line 222
    :cond_2
    iput v1, p0, Landroid/widget/OplusScrollOptimizationHelper;->mVeloAccuCount:I

    .line 224
    :cond_3
    :goto_0
    iput-wide p1, p0, Landroid/widget/OplusScrollOptimizationHelper;->mLastFlingTime:J

    .line 225
    return-void
.end method
