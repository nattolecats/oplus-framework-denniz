.class public interface abstract Landroid/view/autolayout/IOplusAutoLayoutManager;
.super Ljava/lang/Object;
.source "IOplusAutoLayoutManager.java"

# interfaces
.implements Landroid/common/IOplusCommonFeature;


# static fields
.field public static final blacklist mDefault:Landroid/view/autolayout/IOplusAutoLayoutManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Landroid/view/autolayout/IOplusAutoLayoutManager$1;

    invoke-direct {v0}, Landroid/view/autolayout/IOplusAutoLayoutManager$1;-><init>()V

    sput-object v0, Landroid/view/autolayout/IOplusAutoLayoutManager;->mDefault:Landroid/view/autolayout/IOplusAutoLayoutManager;

    return-void
.end method


# virtual methods
.method public blacklist afterDraw(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .line 95
    return-void
.end method

.method public blacklist afterLayout(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 130
    return-void
.end method

.method public blacklist afterMeasure(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 114
    return-void
.end method

.method public blacklist beforeDraw(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .line 86
    return-void
.end method

.method public blacklist beforeLayout(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 122
    return-void
.end method

.method public blacklist beforeMeasure(Landroid/view/View;II)[I
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "widthMeasureSpec"    # I
    .param p3, "heightMeasureSpec"    # I

    .line 105
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 v1, 0x1

    aput p3, v0, v1

    return-object v0
.end method

.method public blacklist beforeUpdateDisplayListIfDirty(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 77
    return-void
.end method

.method public blacklist drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 167
    return-void
.end method

.method public blacklist drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "matrix"    # Landroid/graphics/Matrix;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .line 172
    return-void
.end method

.method public blacklist drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "src"    # Landroid/graphics/Rect;
    .param p3, "dst"    # Landroid/graphics/Rect;
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 177
    return-void
.end method

.method public blacklist drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "src"    # Landroid/graphics/Rect;
    .param p3, "dst"    # Landroid/graphics/RectF;
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 182
    return-void
.end method

.method public blacklist end()V
    .locals 0

    .line 190
    return-void
.end method

.method public blacklist getAutoLayoutDisplayMetrics(Landroid/util/DisplayMetrics;)Landroid/util/DisplayMetrics;
    .locals 0
    .param p1, "originalMetrics"    # Landroid/util/DisplayMetrics;

    .line 68
    return-object p1
.end method

.method public bridge synthetic whitelist getDefault()Landroid/common/IOplusCommonFeature;
    .locals 1

    .line 36
    invoke-interface {p0}, Landroid/view/autolayout/IOplusAutoLayoutManager;->getDefault()Landroid/view/autolayout/IOplusAutoLayoutManager;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDefault()Landroid/view/autolayout/IOplusAutoLayoutManager;
    .locals 1

    .line 49
    sget-object v0, Landroid/view/autolayout/IOplusAutoLayoutManager;->mDefault:Landroid/view/autolayout/IOplusAutoLayoutManager;

    return-object v0
.end method

.method public blacklist hookSetLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0
    .param p1, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 154
    return-object p1
.end method

.method public whitelist index()Landroid/common/OplusFeatureList$OplusIndex;
    .locals 1

    .line 44
    sget-object v0, Landroid/common/OplusFeatureList$OplusIndex;->IOplusAutoLayoutManager:Landroid/common/OplusFeatureList$OplusIndex;

    return-object v0
.end method

.method public blacklist newInstance()Landroid/view/autolayout/IOplusAutoLayoutManager;
    .locals 1

    .line 52
    sget-object v0, Landroid/view/autolayout/IOplusAutoLayoutManager;->mDefault:Landroid/view/autolayout/IOplusAutoLayoutManager;

    return-object v0
.end method

.method public blacklist setAutoLayoutPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 60
    return-void
.end method

.method public blacklist setTo(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "configuration"    # Landroid/content/res/Configuration;

    .line 138
    return-void
.end method

.method public blacklist start()V
    .locals 0

    .line 186
    return-void
.end method

.method public blacklist updateFrom(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "configuration"    # Landroid/content/res/Configuration;

    .line 146
    return-void
.end method
