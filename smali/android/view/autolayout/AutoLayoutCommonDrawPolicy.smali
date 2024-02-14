.class public Landroid/view/autolayout/AutoLayoutCommonDrawPolicy;
.super Ljava/lang/Object;
.source "AutoLayoutCommonDrawPolicy.java"

# interfaces
.implements Landroid/view/autolayout/IAutoLayoutDrawPolicy;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist afterAnalyze(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 117
    invoke-static {p1}, Landroid/view/autolayout/AutoLayoutUtils;->getViewInfo(Landroid/view/View;)Landroid/view/autolayout/AutoLayoutViewInfo;

    move-result-object v0

    .line 118
    .local v0, "viewInfo":Landroid/view/autolayout/AutoLayoutViewInfo;
    return-void
.end method

.method private blacklist analyze(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    return-void

    .line 100
    :cond_0
    invoke-direct {p0, p1}, Landroid/view/autolayout/AutoLayoutCommonDrawPolicy;->beforeAnalyze(Landroid/view/View;)V

    .line 101
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 102
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 103
    .local v0, "group":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 104
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 105
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 106
    .local v3, "child":Landroid/view/View;
    invoke-direct {p0, v3}, Landroid/view/autolayout/AutoLayoutCommonDrawPolicy;->analyze(Landroid/view/View;)V

    .line 104
    .end local v3    # "child":Landroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 109
    .end local v0    # "group":Landroid/view/ViewGroup;
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    :cond_1
    invoke-direct {p0, p1}, Landroid/view/autolayout/AutoLayoutCommonDrawPolicy;->afterAnalyze(Landroid/view/View;)V

    .line 110
    return-void
.end method

.method private blacklist beforeAnalyze(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 113
    invoke-static {p1}, Landroid/view/autolayout/AutoLayoutUtils;->getViewInfo(Landroid/view/View;)Landroid/view/autolayout/AutoLayoutViewInfo;

    move-result-object v0

    .line 114
    .local v0, "viewInfo":Landroid/view/autolayout/AutoLayoutViewInfo;
    return-void
.end method


# virtual methods
.method public blacklist afterDraw(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .line 59
    return-void
.end method

.method public blacklist beforeDraw(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .line 53
    invoke-static {p2}, Landroid/view/autolayout/AutoLayoutCanvas;->getInstance(Landroid/graphics/Canvas;)Landroid/view/autolayout/AutoLayoutCanvas;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/autolayout/AutoLayoutCanvas;->setView(Landroid/view/View;)V

    .line 54
    return-void
.end method

.method public blacklist beforeUpdateDisplayListIfDirty(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 42
    if-nez p1, :cond_0

    .line 43
    return-void

    .line 46
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_1

    .line 47
    invoke-direct {p0, p1}, Landroid/view/autolayout/AutoLayoutCommonDrawPolicy;->analyze(Landroid/view/View;)V

    .line 49
    :cond_1
    return-void
.end method

.method public blacklist drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 64
    invoke-static {}, Landroid/view/autolayout/AutoLayoutCanvas;->getInstance()Landroid/view/autolayout/AutoLayoutCanvas;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/autolayout/AutoLayoutCanvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 65
    return-void
.end method

.method public blacklist drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "matrix"    # Landroid/graphics/Matrix;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .line 70
    invoke-static {}, Landroid/view/autolayout/AutoLayoutCanvas;->getInstance()Landroid/view/autolayout/AutoLayoutCanvas;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/autolayout/AutoLayoutCanvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 71
    return-void
.end method

.method public blacklist drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "src"    # Landroid/graphics/Rect;
    .param p3, "dst"    # Landroid/graphics/Rect;
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 76
    invoke-static {}, Landroid/view/autolayout/AutoLayoutCanvas;->getInstance()Landroid/view/autolayout/AutoLayoutCanvas;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/autolayout/AutoLayoutCanvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 77
    return-void
.end method

.method public blacklist drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "src"    # Landroid/graphics/Rect;
    .param p3, "dst"    # Landroid/graphics/RectF;
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 82
    invoke-static {}, Landroid/view/autolayout/AutoLayoutCanvas;->getInstance()Landroid/view/autolayout/AutoLayoutCanvas;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/autolayout/AutoLayoutCanvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 83
    return-void
.end method

.method public blacklist end()V
    .locals 1

    .line 92
    invoke-static {}, Landroid/view/autolayout/AutoLayoutCanvas;->getInstance()Landroid/view/autolayout/AutoLayoutCanvas;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/autolayout/AutoLayoutCanvas;->end()V

    .line 93
    return-void
.end method

.method public blacklist start()V
    .locals 1

    .line 87
    invoke-static {}, Landroid/view/autolayout/AutoLayoutCanvas;->getInstance()Landroid/view/autolayout/AutoLayoutCanvas;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/autolayout/AutoLayoutCanvas;->start()V

    .line 88
    return-void
.end method
