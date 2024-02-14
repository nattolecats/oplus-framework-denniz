.class public Lcom/oplus/util/UxScreenUtil;
.super Ljava/lang/Object;
.source "UxScreenUtil.java"


# static fields
.field private static final blacklist FEATURE_FOLD:Ljava/lang/String; = "oplus.hardware.type.fold"

.field private static final blacklist FEATURE_TABLET:Ljava/lang/String; = "oplus.hardware.type.tablet"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getDefaultIconSize(Landroid/content/res/Resources;)I
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;

    .line 38
    invoke-static {}, Lcom/oplus/util/UxScreenUtil;->isFoldDisplay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    const v0, 0xc0500db

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0

    .line 40
    :cond_0
    invoke-static {}, Lcom/oplus/util/UxScreenUtil;->isTabletDevices()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    const v0, 0xc0500dc

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0

    .line 43
    :cond_1
    const v0, 0xc05008e

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public static blacklist isFoldDisplay()Z
    .locals 2

    .line 30
    invoke-static {}, Lcom/oplus/content/OplusFeatureConfigManager;->getInstance()Lcom/oplus/content/OplusFeatureConfigManager;

    move-result-object v0

    const-string v1, "oplus.hardware.type.fold"

    invoke-virtual {v0, v1}, Lcom/oplus/content/OplusFeatureConfigManager;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isTabletDevices()Z
    .locals 2

    .line 34
    invoke-static {}, Lcom/oplus/content/OplusFeatureConfigManager;->getInstance()Lcom/oplus/content/OplusFeatureConfigManager;

    move-result-object v0

    const-string v1, "oplus.hardware.type.tablet"

    invoke-virtual {v0, v1}, Lcom/oplus/content/OplusFeatureConfigManager;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
