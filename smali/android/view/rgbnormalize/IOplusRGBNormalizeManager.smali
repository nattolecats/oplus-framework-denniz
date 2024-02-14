.class public interface abstract Landroid/view/rgbnormalize/IOplusRGBNormalizeManager;
.super Ljava/lang/Object;
.source "IOplusRGBNormalizeManager.java"

# interfaces
.implements Landroid/common/IOplusCommonFeature;


# static fields
.field public static final blacklist ACTIVITY_NAME:Ljava/lang/String; = "activity_name"

.field public static final blacklist BODY:Ljava/lang/String; = "body"

.field public static final blacklist DEFAULT:Landroid/view/rgbnormalize/IOplusRGBNormalizeManager;

.field public static final blacklist MATRIX:Ljava/lang/String; = "matrix"

.field public static final blacklist POLICY:Ljava/lang/String; = "policy"

.field public static final blacklist TAG:Ljava/lang/String; = "RGBNormalize"

.field public static final blacklist VIEW_NAME:Ljava/lang/String; = "view_name"

.field public static final blacklist VIEW_PARAMS:Ljava/lang/String; = "view_params"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Landroid/view/rgbnormalize/IOplusRGBNormalizeManager$1;

    invoke-direct {v0}, Landroid/view/rgbnormalize/IOplusRGBNormalizeManager$1;-><init>()V

    sput-object v0, Landroid/view/rgbnormalize/IOplusRGBNormalizeManager;->DEFAULT:Landroid/view/rgbnormalize/IOplusRGBNormalizeManager;

    return-void
.end method


# virtual methods
.method public blacklist beforeDraw(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 73
    return-void
.end method

.method public blacklist clear()V
    .locals 0

    .line 93
    return-void
.end method

.method public bridge synthetic whitelist getDefault()Landroid/common/IOplusCommonFeature;
    .locals 1

    .line 31
    invoke-interface {p0}, Landroid/view/rgbnormalize/IOplusRGBNormalizeManager;->getDefault()Landroid/view/rgbnormalize/IOplusRGBNormalizeManager;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDefault()Landroid/view/rgbnormalize/IOplusRGBNormalizeManager;
    .locals 1

    .line 52
    sget-object v0, Landroid/view/rgbnormalize/IOplusRGBNormalizeManager;->DEFAULT:Landroid/view/rgbnormalize/IOplusRGBNormalizeManager;

    return-object v0
.end method

.method public blacklist getGrayScaleColorFilter()Landroid/graphics/ColorMatrixColorFilter;
    .locals 1

    .line 80
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist hookHandleBindApplication(Landroid/content/pm/ApplicationInfo;)V
    .locals 0
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 69
    return-void
.end method

.method public blacklist hookPaintBitmap(Landroid/graphics/Paint;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .line 89
    return-void
.end method

.method public blacklist hookPaintColor(Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "paint"    # Landroid/graphics/Paint;

    .line 85
    return-void
.end method

.method public blacklist hookPerformLaunchActivity(Landroid/content/pm/ActivityInfo;)V
    .locals 0
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;

    .line 61
    return-void
.end method

.method public blacklist hookPerformResumeActivity(Landroid/content/pm/ActivityInfo;)V
    .locals 0
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;

    .line 65
    return-void
.end method

.method public whitelist index()Landroid/common/OplusFeatureList$OplusIndex;
    .locals 1

    .line 47
    sget-object v0, Landroid/common/OplusFeatureList$OplusIndex;->IOplusRGBNormalizeManager:Landroid/common/OplusFeatureList$OplusIndex;

    return-object v0
.end method

.method public blacklist needSetColorFilterForCurrentRenderingView()Z
    .locals 1

    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist newInstance()Landroid/view/rgbnormalize/IOplusRGBNormalizeManager;
    .locals 1

    .line 56
    sget-object v0, Landroid/view/rgbnormalize/IOplusRGBNormalizeManager;->DEFAULT:Landroid/view/rgbnormalize/IOplusRGBNormalizeManager;

    return-object v0
.end method
