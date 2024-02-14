.class public Landroid/view/DisplayInfoExtImpl;
.super Ljava/lang/Object;
.source "DisplayInfoExtImpl.java"

# interfaces
.implements Landroid/view/IDisplayInfoExt;


# static fields
.field private static final blacklist DEBUG:Z = true


# instance fields
.field blacklist feature:Lcom/oplus/screenmode/IOplusAutoResolutionFeature;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "base"    # Ljava/lang/Object;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget-object v0, Lcom/oplus/screenmode/IOplusAutoResolutionFeature;->DEFAULT:Lcom/oplus/screenmode/IOplusAutoResolutionFeature;

    invoke-static {v0}, Landroid/common/OplusFeatureCache;->get(Landroid/common/IOplusCommonFeature;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Lcom/oplus/screenmode/IOplusAutoResolutionFeature;

    iput-object v0, p0, Landroid/view/DisplayInfoExtImpl;->feature:Lcom/oplus/screenmode/IOplusAutoResolutionFeature;

    .line 32
    return-void
.end method

.method private blacklist getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;
    .locals 1

    .line 39
    iget-object v0, p0, Landroid/view/DisplayInfoExtImpl;->feature:Lcom/oplus/screenmode/IOplusAutoResolutionFeature;

    if-eqz v0, :cond_0

    .line 40
    invoke-interface {v0}, Lcom/oplus/screenmode/IOplusAutoResolutionFeature;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    return-object v0

    .line 42
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist overrideDisplayMetricsIfNeed(Landroid/util/DisplayMetrics;)V
    .locals 1
    .param p1, "outMetrics"    # Landroid/util/DisplayMetrics;

    .line 46
    invoke-virtual {p0}, Landroid/view/DisplayInfoExtImpl;->supportDisplayCompat()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-direct {p0}, Landroid/view/DisplayInfoExtImpl;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    .line 48
    .local v0, "compatInfo":Landroid/content/res/CompatibilityInfo;
    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0, p1}, Landroid/content/res/CompatibilityInfo;->applyToDisplayMetrics(Landroid/util/DisplayMetrics;)V

    .line 52
    .end local v0    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    :cond_0
    return-void
.end method

.method public blacklist supportDisplayCompat()Z
    .locals 1

    .line 35
    iget-object v0, p0, Landroid/view/DisplayInfoExtImpl;->feature:Lcom/oplus/screenmode/IOplusAutoResolutionFeature;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/oplus/screenmode/IOplusAutoResolutionFeature;->supportDisplayCompat()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
