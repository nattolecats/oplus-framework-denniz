.class public Lcom/oplus/resolver/OplusResolverUtils;
.super Ljava/lang/Object;
.source "OplusResolverUtils.java"


# static fields
.field private static final blacklist COLUMN_COUNT_LANDSCAPE:I = 0xc

.field private static final blacklist COLUMN_COUNT_PORTRAIT:I = 0x8

.field private static final blacklist FEATURE_TABLET:Ljava/lang/String; = "oplus.hardware.type.tablet"

.field private static final blacklist OWNER_COLUMN_COUNT:I = 0x6

.field private static final blacklist TAG:Ljava/lang/String; = "OplusResolverUtils"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist calculateResponsiveUIWidth(Landroid/content/Context;Landroid/content/res/Configuration;)I
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cfg"    # Landroid/content/res/Configuration;

    .line 25
    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    .line 26
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 27
    .local v1, "orientation":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 28
    .local v2, "isLandscape":Z
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0xc0500d9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 29
    .local v3, "margin":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0xc0500da

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 30
    .local v4, "gutter":I
    if-eqz v2, :cond_2

    move-object v5, p0

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v5

    if-nez v5, :cond_2

    .line 31
    const/16 v5, 0xc

    goto :goto_1

    .line 32
    :cond_2
    const/16 v5, 0x8

    :goto_1
    nop

    .line 33
    .local v5, "columnSize":I
    mul-int/lit8 v6, v3, 0x2

    add-int/lit8 v7, v5, -0x1

    mul-int/2addr v7, v4

    add-int/2addr v6, v7

    .line 34
    .local v6, "space":I
    new-instance v7, Landroid/util/DisplayMetrics;

    invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V

    .line 35
    .local v7, "outMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 36
    iget v8, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v8, v8

    iget v9, v7, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v8, v9

    .line 37
    .local v8, "screenWidth":F
    int-to-float v9, v6

    sub-float v9, v8, v9

    int-to-float v10, v5

    div-float/2addr v9, v10

    .line 38
    .local v9, "columnWidth":F
    const/high16 v10, 0x40c00000    # 6.0f

    mul-float/2addr v10, v9

    float-to-int v10, v10

    mul-int/lit8 v11, v4, 0x5

    add-int/2addr v10, v11

    .line 39
    .local v10, "width":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "screenWidthDp="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",space="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",screenWidth="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",columnWidth="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",outMetrics.density="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v7, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",width="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "OplusResolverUtils"

    invoke-static {v12, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    return v10
.end method

.method public static blacklist isTablet()Z
    .locals 2

    .line 21
    invoke-static {}, Lcom/oplus/content/OplusFeatureConfigManager;->getInstacne()Lcom/oplus/content/OplusFeatureConfigManager;

    move-result-object v0

    const-string v1, "oplus.hardware.type.tablet"

    invoke-virtual {v0, v1}, Lcom/oplus/content/OplusFeatureConfigManager;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
