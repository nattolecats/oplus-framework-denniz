.class public Landroid/view/DisplayExtImpl;
.super Ljava/lang/Object;
.source "DisplayExtImpl.java"

# interfaces
.implements Landroid/view/IDisplayExt;


# static fields
.field private static final blacklist DEBUG:Z = true


# instance fields
.field blacklist feature:Lcom/oplus/screenmode/IOplusAutoResolutionFeature;

.field blacklist mCompactWindowAppManager:Landroid/app/IOplusCompactWindowAppManager;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 2
    .param p1, "base"    # Ljava/lang/Object;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    sget-object v0, Lcom/oplus/screenmode/IOplusAutoResolutionFeature;->DEFAULT:Lcom/oplus/screenmode/IOplusAutoResolutionFeature;

    invoke-static {v0}, Landroid/common/OplusFeatureCache;->get(Landroid/common/IOplusCommonFeature;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Lcom/oplus/screenmode/IOplusAutoResolutionFeature;

    iput-object v0, p0, Landroid/view/DisplayExtImpl;->feature:Lcom/oplus/screenmode/IOplusAutoResolutionFeature;

    .line 35
    sget-object v0, Landroid/app/IOplusCompactWindowAppManager;->DEFAULT:Landroid/app/IOplusCompactWindowAppManager;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Landroid/app/IOplusCompactWindowAppManager;

    iput-object v0, p0, Landroid/view/DisplayExtImpl;->mCompactWindowAppManager:Landroid/app/IOplusCompactWindowAppManager;

    .line 36
    return-void
.end method


# virtual methods
.method public blacklist getCompactWindowDisplayAdjustment(Landroid/content/res/Resources;)Landroid/view/DisplayAdjustments;
    .locals 2
    .param p1, "resources"    # Landroid/content/res/Resources;

    .line 66
    iget-object v0, p0, Landroid/view/DisplayExtImpl;->mCompactWindowAppManager:Landroid/app/IOplusCompactWindowAppManager;

    if-eqz v0, :cond_0

    .line 67
    invoke-interface {v0, p1}, Landroid/app/IOplusCompactWindowAppManager;->getCompactWindowDisplayAdjustment(Landroid/content/res/Resources;)Landroid/view/DisplayAdjustments;

    move-result-object v0

    .line 68
    .local v0, "adjustments":Landroid/view/DisplayAdjustments;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/DisplayAdjustments;->getConfiguration()Landroid/content/res/OplusBaseConfiguration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/OplusBaseConfiguration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 69
    return-object v0

    .line 72
    .end local v0    # "adjustments":Landroid/view/DisplayAdjustments;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCompactWindowRotation(Landroid/content/res/Resources;)I
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;

    .line 58
    iget-object v0, p0, Landroid/view/DisplayExtImpl;->mCompactWindowAppManager:Landroid/app/IOplusCompactWindowAppManager;

    if-eqz v0, :cond_0

    .line 59
    invoke-interface {v0, p1}, Landroid/app/IOplusCompactWindowAppManager;->getCompactWindowRotation(Landroid/content/res/Resources;)I

    move-result v0

    return v0

    .line 61
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getDisplayAdjustmentForCompactWindow(Landroid/content/res/Resources;Landroid/view/DisplayAdjustments;)Landroid/view/DisplayAdjustments;
    .locals 2
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "originAdjustments"    # Landroid/view/DisplayAdjustments;

    .line 77
    iget-object v0, p0, Landroid/view/DisplayExtImpl;->mCompactWindowAppManager:Landroid/app/IOplusCompactWindowAppManager;

    if-eqz v0, :cond_0

    .line 78
    invoke-interface {v0, p1}, Landroid/app/IOplusCompactWindowAppManager;->getCompactWindowDisplayAdjustment(Landroid/content/res/Resources;)Landroid/view/DisplayAdjustments;

    move-result-object v0

    .line 79
    .local v0, "adjustments":Landroid/view/DisplayAdjustments;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/DisplayAdjustments;->getConfiguration()Landroid/content/res/OplusBaseConfiguration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/OplusBaseConfiguration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 80
    return-object v0

    .line 83
    .end local v0    # "adjustments":Landroid/view/DisplayAdjustments;
    :cond_0
    return-object p2
.end method

.method public blacklist supportDisplayCompat()Z
    .locals 1

    .line 40
    iget-object v0, p0, Landroid/view/DisplayExtImpl;->feature:Lcom/oplus/screenmode/IOplusAutoResolutionFeature;

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

.method public blacklist updateCompatRealSize(Landroid/view/DisplayInfo;Landroid/content/res/CompatibilityInfo;Landroid/graphics/Point;)V
    .locals 3
    .param p1, "displayInfo"    # Landroid/view/DisplayInfo;
    .param p2, "compat"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "outSize"    # Landroid/graphics/Point;

    .line 45
    invoke-virtual {p0}, Landroid/view/DisplayExtImpl;->supportDisplayCompat()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p2, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 46
    iget v0, p1, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-float v0, v0

    iget v1, p2, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p3, Landroid/graphics/Point;->x:I

    .line 47
    iget v0, p1, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-float v0, v0

    iget v1, p2, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p3, Landroid/graphics/Point;->y:I

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCompatRealSize : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "DisplayExtImp"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    :cond_0
    return-void
.end method
