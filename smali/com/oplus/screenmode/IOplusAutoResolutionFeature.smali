.class public interface abstract Lcom/oplus/screenmode/IOplusAutoResolutionFeature;
.super Ljava/lang/Object;
.source "IOplusAutoResolutionFeature.java"

# interfaces
.implements Landroid/common/IOplusCommonFeature;


# static fields
.field public static final blacklist DEFAULT:Lcom/oplus/screenmode/IOplusAutoResolutionFeature;

.field public static final blacklist NAME:Ljava/lang/String; = "IOplusAutoResolutionFeature"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lcom/oplus/screenmode/IOplusAutoResolutionFeature$1;

    invoke-direct {v0}, Lcom/oplus/screenmode/IOplusAutoResolutionFeature$1;-><init>()V

    sput-object v0, Lcom/oplus/screenmode/IOplusAutoResolutionFeature;->DEFAULT:Lcom/oplus/screenmode/IOplusAutoResolutionFeature;

    return-void
.end method


# virtual methods
.method public blacklist applyCompatInfo(Landroid/content/res/CompatibilityInfo;Landroid/util/DisplayMetrics;)V
    .locals 0
    .param p1, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p2, "outMetrics"    # Landroid/util/DisplayMetrics;

    .line 64
    return-void
.end method

.method public blacklist displayCompatDensity(I)I
    .locals 0
    .param p1, "density"    # I

    .line 96
    return p1
.end method

.method public blacklist getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;
    .locals 1

    .line 118
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getDefault()Landroid/common/IOplusCommonFeature;
    .locals 1

    .line 47
    sget-object v0, Lcom/oplus/screenmode/IOplusAutoResolutionFeature;->DEFAULT:Lcom/oplus/screenmode/IOplusAutoResolutionFeature;

    return-object v0
.end method

.method public whitelist index()Landroid/common/OplusFeatureList$OplusIndex;
    .locals 1

    .line 43
    sget-object v0, Landroid/common/OplusFeatureList$OplusIndex;->IOplusAutoResolutionFeature:Landroid/common/OplusFeatureList$OplusIndex;

    return-object v0
.end method

.method public blacklist initDisplayCompat(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)V
    .locals 0
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;

    .line 104
    return-void
.end method

.method public blacklist isDisplayCompat(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist overrideDisplayMetricsIfNeed(Landroid/util/DisplayMetrics;)V
    .locals 0
    .param p1, "inoutDm"    # Landroid/util/DisplayMetrics;

    .line 56
    return-void
.end method

.method public blacklist supportDisplayCompat()Z
    .locals 1

    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist updateCompatDensityIfNeed(I)V
    .locals 0
    .param p1, "density"    # I

    .line 72
    return-void
.end method

.method public blacklist updateCompatRealSize(Landroid/view/DisplayInfo;Landroid/graphics/Point;)V
    .locals 0
    .param p1, "displayInfo"    # Landroid/view/DisplayInfo;
    .param p2, "outSize"    # Landroid/graphics/Point;

    .line 111
    return-void
.end method
