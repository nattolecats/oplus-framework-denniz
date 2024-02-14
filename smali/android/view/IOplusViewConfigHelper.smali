.class public interface abstract Landroid/view/IOplusViewConfigHelper;
.super Ljava/lang/Object;
.source "IOplusViewConfigHelper.java"

# interfaces
.implements Landroid/common/IOplusCommonFeature;


# static fields
.field public static final whitelist DEFAULT:Landroid/view/IOplusViewConfigHelper;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Landroid/view/IOplusViewConfigHelper$1;

    invoke-direct {v0}, Landroid/view/IOplusViewConfigHelper$1;-><init>()V

    sput-object v0, Landroid/view/IOplusViewConfigHelper;->DEFAULT:Landroid/view/IOplusViewConfigHelper;

    return-void
.end method


# virtual methods
.method public whitelist calcRealOverScrollDist(II)I
    .locals 0
    .param p1, "dist"    # I
    .param p2, "scrollY"    # I

    .line 46
    return p1
.end method

.method public whitelist calcRealOverScrollDist(III)I
    .locals 0
    .param p1, "dist"    # I
    .param p2, "scrollY"    # I
    .param p3, "range"    # I

    .line 50
    return p1
.end method

.method public bridge synthetic whitelist getDefault()Landroid/common/IOplusCommonFeature;
    .locals 1

    .line 23
    invoke-interface {p0}, Landroid/view/IOplusViewConfigHelper;->getDefault()Landroid/view/IOplusViewConfigHelper;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDefault()Landroid/view/IOplusViewConfigHelper;
    .locals 1

    .line 29
    sget-object v0, Landroid/view/IOplusViewConfigHelper;->DEFAULT:Landroid/view/IOplusViewConfigHelper;

    return-object v0
.end method

.method public whitelist getScaledOverflingDistance(I)I
    .locals 0
    .param p1, "dist"    # I

    .line 42
    return p1
.end method

.method public whitelist getScaledOverscrollDistance(I)I
    .locals 0
    .param p1, "dist"    # I

    .line 38
    return p1
.end method

.method public whitelist index()Landroid/common/OplusFeatureList$OplusIndex;
    .locals 1

    .line 34
    sget-object v0, Landroid/common/OplusFeatureList$OplusIndex;->IOplusViewConfigHelper:Landroid/common/OplusFeatureList$OplusIndex;

    return-object v0
.end method

.method public whitelist setForceUsingSpring(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 57
    return-void
.end method

.method public whitelist setOptEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 54
    return-void
.end method
