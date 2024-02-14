.class public Lcom/oplus/screenmode/OplusAutoResolutionFeature;
.super Ljava/lang/Object;
.source "OplusAutoResolutionFeature.java"

# interfaces
.implements Lcom/oplus/screenmode/IOplusAutoResolutionFeature;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/screenmode/OplusAutoResolutionFeature$InstanceHolder;
    }
.end annotation


# static fields
.field public static final blacklist DEBUG:Z

.field public static final blacklist DEBUG_CALLER_DEPTH:I = 0x8

.field private static final blacklist INIT_UNKNOW:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "ScreenmodeClient"

.field private static final blacklist mOplusDebug:Z

.field private static blacklist sCompatDensity:I

.field private static blacklist sIsDisplayCompatApp:Z


# instance fields
.field private blacklist mAppInvScale:F

.field private blacklist mAppScale:F

.field private blacklist mCompatInfo:Landroid/content/res/CompatibilityInfo;

.field private blacklist mInitializeStatus:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 33
    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oplus/screenmode/OplusAutoResolutionFeature;->mOplusDebug:Z

    .line 36
    nop

    .line 37
    const-string v0, "persist.sys.compat.debug"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oplus/screenmode/OplusAutoResolutionFeature;->DEBUG:Z

    .line 43
    sput-boolean v1, Lcom/oplus/screenmode/OplusAutoResolutionFeature;->sIsDisplayCompatApp:Z

    .line 44
    const/16 v0, 0x1e0

    sput v0, Lcom/oplus/screenmode/OplusAutoResolutionFeature;->sCompatDensity:I

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/screenmode/OplusAutoResolutionFeature;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    .line 45
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/oplus/screenmode/OplusAutoResolutionFeature;->mAppScale:F

    .line 46
    iput v0, p0, Lcom/oplus/screenmode/OplusAutoResolutionFeature;->mAppInvScale:F

    .line 48
    const/4 v0, 0x1

    iput v0, p0, Lcom/oplus/screenmode/OplusAutoResolutionFeature;->mInitializeStatus:I

    .line 52
    sget-boolean v0, Lcom/oplus/screenmode/OplusAutoResolutionFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 53
    const-string v0, "ScreenmodeClient"

    const-string v1, "OplusAutoResolutionFeature create"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_0
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/oplus/screenmode/OplusAutoResolutionFeature-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/screenmode/OplusAutoResolutionFeature;-><init>()V

    return-void
.end method

.method public static blacklist getInstance()Lcom/oplus/screenmode/OplusAutoResolutionFeature;
    .locals 1

    .line 63
    sget-object v0, Lcom/oplus/screenmode/OplusAutoResolutionFeature$InstanceHolder;->INSTANCE:Lcom/oplus/screenmode/OplusAutoResolutionFeature;

    .line 64
    .local v0, "instance":Lcom/oplus/screenmode/OplusAutoResolutionFeature;
    return-object v0
.end method


# virtual methods
.method public blacklist applyCompatInfo(Landroid/content/res/CompatibilityInfo;Landroid/util/DisplayMetrics;)V
    .locals 3
    .param p1, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p2, "outMetrics"    # Landroid/util/DisplayMetrics;

    .line 94
    const-string v0, "ScreenmodeClient"

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    sget-boolean v1, Lcom/oplus/screenmode/OplusAutoResolutionFeature;->sIsDisplayCompatApp:Z

    if-eqz v1, :cond_2

    iget v1, p2, Landroid/util/DisplayMetrics;->densityDpi:I

    sget v2, Lcom/oplus/screenmode/OplusAutoResolutionFeature;->sCompatDensity:I

    if-eq v1, v2, :cond_2

    .line 99
    sget-boolean v1, Lcom/oplus/screenmode/OplusAutoResolutionFeature;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DisplayCompat: applyCompatInfo, change out="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/oplus/screenmode/OplusAutoResolutionFeature;->sCompatDensity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " caller:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x8

    .line 102
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 100
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_1
    invoke-virtual {p1, p2}, Landroid/content/res/CompatibilityInfo;->applyToDisplayMetrics(Landroid/util/DisplayMetrics;)V

    .line 106
    :cond_2
    return-void

    .line 95
    :cond_3
    :goto_0
    const-string v1, "applyCompatInfo failed for param null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-void
.end method

.method public blacklist displayCompatDensity(I)I
    .locals 2
    .param p1, "density"    # I

    .line 142
    sget-boolean v0, Lcom/oplus/screenmode/OplusAutoResolutionFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "displayCompatDensity sCompatDensity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/oplus/screenmode/OplusAutoResolutionFeature;->sCompatDensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenmodeClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_0
    sget v0, Lcom/oplus/screenmode/OplusAutoResolutionFeature;->sCompatDensity:I

    return v0
.end method

.method public blacklist getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/oplus/screenmode/OplusAutoResolutionFeature;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    return-object v0
.end method

.method public blacklist initDisplayCompat(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)V
    .locals 4
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;

    .line 151
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->mApplicationInfoExt:Landroid/content/pm/IApplicationInfoExt;

    .line 152
    .local v0, "appInfoExt":Landroid/content/pm/IApplicationInfoExt;
    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/content/pm/IApplicationInfoExt;->enableLowResolution()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 153
    invoke-interface {v0}, Landroid/content/pm/IApplicationInfoExt;->getAppScale()F

    move-result v1

    iput v1, p0, Lcom/oplus/screenmode/OplusAutoResolutionFeature;->mAppScale:F

    .line 154
    invoke-interface {v0}, Landroid/content/pm/IApplicationInfoExt;->getAppInvScale()F

    move-result v1

    iput v1, p0, Lcom/oplus/screenmode/OplusAutoResolutionFeature;->mAppInvScale:F

    .line 155
    invoke-interface {v0}, Landroid/content/pm/IApplicationInfoExt;->getCompatDensity()I

    move-result v1

    sput v1, Lcom/oplus/screenmode/OplusAutoResolutionFeature;->sCompatDensity:I

    .line 156
    iput-object p2, p0, Lcom/oplus/screenmode/OplusAutoResolutionFeature;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    .line 157
    const/4 v1, 0x1

    sput-boolean v1, Lcom/oplus/screenmode/OplusAutoResolutionFeature;->sIsDisplayCompatApp:Z

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initDisplayCompat "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oplus/screenmode/OplusAutoResolutionFeature;->mAppScale:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/oplus/screenmode/OplusAutoResolutionFeature;->mAppInvScale:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v3, Lcom/oplus/screenmode/OplusAutoResolutionFeature;->sCompatDensity:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/screenmode/OplusAutoResolutionFeature;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScreenmodeClient"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 162
    :cond_1
    const/4 v1, 0x0

    sput-boolean v1, Lcom/oplus/screenmode/OplusAutoResolutionFeature;->sIsDisplayCompatApp:Z

    .line 164
    :goto_1
    return-void
.end method

.method public blacklist isDisplayCompat(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 125
    sget-boolean v0, Lcom/oplus/screenmode/OplusAutoResolutionFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " isDisplayCompat, pkg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenmodeClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_0
    invoke-static {}, Lcom/oplus/screenmode/OplusDisplayModeManager;->getInstance()Lcom/oplus/screenmode/OplusDisplayModeManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/oplus/screenmode/OplusDisplayModeManager;->isDisplayCompat(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public blacklist overrideDisplayMetricsIfNeed(Landroid/util/DisplayMetrics;)V
    .locals 4
    .param p1, "inoutDm"    # Landroid/util/DisplayMetrics;

    .line 70
    const-string v0, "ScreenmodeClient"

    if-nez p1, :cond_0

    .line 71
    const-string v1, "overrideDisplayMetricsIfNeed failed for inoutDm null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    return-void

    .line 74
    :cond_0
    iget v1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    sget v2, Lcom/oplus/screenmode/OplusAutoResolutionFeature;->sCompatDensity:I

    if-eq v1, v2, :cond_1

    .line 75
    iget v1, p0, Lcom/oplus/screenmode/OplusAutoResolutionFeature;->mAppInvScale:F

    .line 76
    .local v1, "invertedRatio":F
    int-to-float v2, v2

    const v3, 0x3bcccccd    # 0.00625f

    mul-float/2addr v2, v3

    iput v2, p1, Landroid/util/DisplayMetrics;->density:F

    .line 77
    iget v2, p1, Landroid/util/DisplayMetrics;->density:F

    iput v2, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 78
    sget v2, Lcom/oplus/screenmode/OplusAutoResolutionFeature;->sCompatDensity:I

    iput v2, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 79
    iget v2, p1, Landroid/util/DisplayMetrics;->noncompatXdpi:F

    mul-float/2addr v2, v1

    iput v2, p1, Landroid/util/DisplayMetrics;->xdpi:F

    .line 80
    iget v2, p1, Landroid/util/DisplayMetrics;->noncompatYdpi:F

    mul-float/2addr v2, v1

    iput v2, p1, Landroid/util/DisplayMetrics;->ydpi:F

    .line 81
    iget v2, p1, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 82
    iget v2, p1, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 83
    sget-boolean v2, Lcom/oplus/screenmode/OplusAutoResolutionFeature;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DisplayCompat: applyToDisplayMetrics0, inoutDm="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " noncompatDensityDpi="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " caller:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x8

    .line 87
    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 84
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .end local v1    # "invertedRatio":F
    :cond_1
    return-void
.end method

.method public blacklist supportDisplayCompat()Z
    .locals 2

    .line 134
    sget-boolean v0, Lcom/oplus/screenmode/OplusAutoResolutionFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 135
    const-string v0, "ScreenmodeClient"

    const-string v1, "supportDisplayCompat  "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_0
    sget-boolean v0, Lcom/oplus/screenmode/OplusAutoResolutionFeature;->sIsDisplayCompatApp:Z

    return v0
.end method

.method public blacklist updateCompatDensityIfNeed(I)V
    .locals 3
    .param p1, "density"    # I

    .line 110
    sget-boolean v0, Lcom/oplus/screenmode/OplusAutoResolutionFeature;->sIsDisplayCompatApp:Z

    if-nez v0, :cond_0

    .line 111
    return-void

    .line 113
    :cond_0
    int-to-float v0, p1

    iget v1, p0, Lcom/oplus/screenmode/OplusAutoResolutionFeature;->mAppInvScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 114
    .local v0, "toDensity":I
    sget v1, Lcom/oplus/screenmode/OplusAutoResolutionFeature;->sCompatDensity:I

    if-eq v1, v0, :cond_1

    .line 115
    sput v0, Lcom/oplus/screenmode/OplusAutoResolutionFeature;->sCompatDensity:I

    .line 116
    sget-boolean v1, Lcom/oplus/screenmode/OplusAutoResolutionFeature;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DisplayCompat: updateCompatDensityIfNeed from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to density="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x8

    .line 118
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 117
    const-string v2, "ScreenmodeClient"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_1
    return-void
.end method

.method public blacklist updateCompatRealSize(Landroid/view/DisplayInfo;Landroid/graphics/Point;)V
    .locals 2
    .param p1, "displayInfo"    # Landroid/view/DisplayInfo;
    .param p2, "outSize"    # Landroid/graphics/Point;

    .line 168
    sget-boolean v0, Lcom/oplus/screenmode/OplusAutoResolutionFeature;->sIsDisplayCompatApp:Z

    if-nez v0, :cond_0

    .line 169
    return-void

    .line 171
    :cond_0
    iget v0, p1, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/oplus/screenmode/OplusAutoResolutionFeature;->mAppInvScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p2, Landroid/graphics/Point;->x:I

    .line 172
    iget v0, p1, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/oplus/screenmode/OplusAutoResolutionFeature;->mAppInvScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p2, Landroid/graphics/Point;->y:I

    .line 173
    return-void
.end method
