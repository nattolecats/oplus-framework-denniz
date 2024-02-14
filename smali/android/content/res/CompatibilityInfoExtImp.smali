.class Landroid/content/res/CompatibilityInfoExtImp;
.super Ljava/lang/Object;
.source "CompatibilityInfoExtImp.java"

# interfaces
.implements Landroid/content/res/ICompatibilityInfoExt;


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist HAS_OVERRIDE_SCALING:I = 0x20

.field private static final blacklist NEEDS_COMPAT_RES:I = 0x10

.field private static final blacklist OPLUS_NEEDS_DISPLAY_COMPAT:I = 0x40

.field private static final blacklist SCALING_REQUIRED:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "CompatibilityInfoExtImp"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method


# virtual methods
.method public blacklist applyToConfiguration(Landroid/content/res/OplusBaseConfiguration;Landroid/content/res/CompatibilityInfo;I)V
    .locals 2
    .param p1, "inoutConfig"    # Landroid/content/res/OplusBaseConfiguration;
    .param p2, "compat"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "compatFlags"    # I

    .line 82
    iget v0, p2, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 83
    .local v0, "compatDensity":I
    invoke-virtual {p0, p3}, Landroid/content/res/CompatibilityInfoExtImp;->hasOverrideScaling(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p1, Landroid/content/res/OplusBaseConfiguration;->densityDpi:I

    if-eq v1, v0, :cond_0

    .line 84
    iput v0, p1, Landroid/content/res/OplusBaseConfiguration;->densityDpi:I

    .line 86
    :cond_0
    return-void
.end method

.method public blacklist getCompatDensity(Landroid/content/pm/ApplicationInfo;I)I
    .locals 2
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "defaultDensity"    # I

    .line 42
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->mApplicationInfoExt:Landroid/content/pm/IApplicationInfoExt;

    .line 43
    .local v0, "appInfoExt":Landroid/content/pm/IApplicationInfoExt;
    :goto_0
    if-nez v0, :cond_1

    .line 44
    return p2

    .line 47
    :cond_1
    invoke-interface {v0}, Landroid/content/pm/IApplicationInfoExt;->enableLowResolution()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 48
    invoke-interface {v0}, Landroid/content/pm/IApplicationInfoExt;->getCompatDensity()I

    move-result v1

    return v1

    .line 50
    :cond_2
    return p2
.end method

.method public blacklist hasOverrideScaling(I)Z
    .locals 1
    .param p1, "compatFlags"    # I

    .line 89
    and-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist overrideDisplayMetricsIfNeed(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;I)V
    .locals 3
    .param p1, "inoutDm"    # Landroid/util/DisplayMetrics;
    .param p2, "compat"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "compatFlags"    # I

    .line 72
    iget v0, p2, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 73
    .local v0, "compatDensity":I
    invoke-virtual {p0, p3}, Landroid/content/res/CompatibilityInfoExtImp;->hasOverrideScaling(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    if-eq v1, v0, :cond_0

    .line 74
    int-to-float v1, v0

    const v2, 0x3bcccccd    # 0.00625f

    mul-float/2addr v1, v2

    iput v1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 75
    iget v1, p1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 76
    iput v0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 78
    :cond_0
    return-void
.end method

.method public blacklist updateCompatFlagsIfNeed(Landroid/content/pm/ApplicationInfo;I)I
    .locals 2
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "compatFlags"    # I

    .line 54
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->mApplicationInfoExt:Landroid/content/pm/IApplicationInfoExt;

    .line 55
    .local v0, "appInfoExt":Landroid/content/pm/IApplicationInfoExt;
    :goto_0
    if-nez v0, :cond_1

    .line 56
    return p2

    .line 59
    :cond_1
    invoke-interface {v0}, Landroid/content/pm/IApplicationInfoExt;->enableLowResolution()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 60
    or-int/lit8 p2, p2, 0x20

    .line 61
    or-int/lit8 p2, p2, 0x40

    .line 62
    and-int/lit8 p2, p2, -0x2

    .line 63
    and-int/lit8 v1, p2, 0x10

    if-eqz v1, :cond_2

    .line 64
    and-int/lit8 p2, p2, -0x11

    .line 67
    :cond_2
    return p2
.end method
