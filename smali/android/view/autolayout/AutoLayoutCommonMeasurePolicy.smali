.class public Landroid/view/autolayout/AutoLayoutCommonMeasurePolicy;
.super Ljava/lang/Object;
.source "AutoLayoutCommonMeasurePolicy.java"

# interfaces
.implements Landroid/view/autolayout/IAutoLayoutMeasurePolicy;


# static fields
.field private static final blacklist DISPLAY_WIDTH:I = 0x780

.field private static final blacklist FULL_SIZE_RATIO:F = 0.9f

.field private static final blacklist LARGE_SIZE_RATIO:F = 0.3f


# instance fields
.field private blacklist mOriginalDisplayMetrics:Landroid/util/DisplayMetrics;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist fillViewInfoAfterMeasure(Landroid/view/View;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;

    .line 103
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    return-void

    .line 107
    :cond_0
    invoke-static {p1}, Landroid/view/autolayout/AutoLayoutUtils;->getViewInfo(Landroid/view/View;)Landroid/view/autolayout/AutoLayoutViewInfo;

    move-result-object v0

    .line 108
    .local v0, "viewInfo":Landroid/view/autolayout/AutoLayoutViewInfo;
    invoke-direct {p0, p1}, Landroid/view/autolayout/AutoLayoutCommonMeasurePolicy;->isImageType(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 109
    invoke-virtual {v0, v2}, Landroid/view/autolayout/AutoLayoutViewInfo;->setIsImageType(Z)V

    .line 112
    :cond_1
    iget-object v1, p0, Landroid/view/autolayout/AutoLayoutCommonMeasurePolicy;->mOriginalDisplayMetrics:Landroid/util/DisplayMetrics;

    if-nez v1, :cond_2

    .line 113
    const-string v1, " mOriginalDisplayMetrics not set "

    invoke-static {v1}, Landroid/view/autolayout/AutoLayoutDebug;->log(Ljava/lang/String;)V

    .line 114
    return-void

    .line 117
    :cond_2
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 118
    .local v1, "totalHeight":I
    iget-object v3, p0, Landroid/view/autolayout/AutoLayoutCommonMeasurePolicy;->mOriginalDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 119
    .local v3, "totalWidth":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 120
    .local v4, "viewHeight":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 122
    .local v5, "viewWidth":I
    if-eqz v4, :cond_b

    if-nez v5, :cond_3

    goto :goto_2

    .line 127
    :cond_3
    int-to-float v6, v4

    int-to-float v7, v1

    const v8, 0x3e99999a    # 0.3f

    mul-float/2addr v7, v8

    cmpg-float v6, v6, v7

    const/4 v7, 0x2

    const/4 v9, 0x3

    const v10, 0x3f666666    # 0.9f

    if-gez v6, :cond_4

    .line 128
    invoke-virtual {v0, v2}, Landroid/view/autolayout/AutoLayoutViewInfo;->setHeightType(I)V

    goto :goto_0

    .line 129
    :cond_4
    int-to-float v6, v4

    int-to-float v11, v1

    mul-float/2addr v11, v8

    cmpl-float v6, v6, v11

    if-ltz v6, :cond_5

    int-to-float v6, v4

    int-to-float v11, v1

    mul-float/2addr v11, v10

    cmpg-float v6, v6, v11

    if-gez v6, :cond_5

    .line 131
    invoke-virtual {v0, v7}, Landroid/view/autolayout/AutoLayoutViewInfo;->setHeightType(I)V

    goto :goto_0

    .line 132
    :cond_5
    int-to-float v6, v4

    int-to-float v11, v1

    mul-float/2addr v11, v10

    cmpl-float v6, v6, v11

    if-ltz v6, :cond_6

    .line 133
    invoke-virtual {v0, v9}, Landroid/view/autolayout/AutoLayoutViewInfo;->setHeightType(I)V

    .line 137
    :cond_6
    :goto_0
    int-to-float v6, v5

    int-to-float v11, v3

    mul-float/2addr v11, v8

    cmpg-float v6, v6, v11

    if-gez v6, :cond_7

    .line 138
    invoke-virtual {v0, v2}, Landroid/view/autolayout/AutoLayoutViewInfo;->setWidthType(I)V

    goto :goto_1

    .line 139
    :cond_7
    int-to-float v6, v5

    int-to-float v11, v3

    mul-float/2addr v11, v8

    cmpl-float v6, v6, v11

    if-ltz v6, :cond_8

    int-to-float v6, v5

    int-to-float v8, v3

    mul-float/2addr v8, v10

    cmpg-float v6, v6, v8

    if-gez v6, :cond_8

    .line 141
    invoke-virtual {v0, v7}, Landroid/view/autolayout/AutoLayoutViewInfo;->setWidthType(I)V

    goto :goto_1

    .line 142
    :cond_8
    int-to-float v6, v5

    int-to-float v7, v3

    mul-float/2addr v7, v10

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_9

    .line 143
    invoke-virtual {v0, v9}, Landroid/view/autolayout/AutoLayoutViewInfo;->setWidthType(I)V

    .line 146
    :cond_9
    :goto_1
    const/4 v6, 0x3

    .line 147
    .local v6, "flatRatio":I
    mul-int v7, v4, v6

    if-le v5, v7, :cond_a

    .line 148
    invoke-virtual {v0, v2}, Landroid/view/autolayout/AutoLayoutViewInfo;->setIsFlatView(Z)V

    .line 150
    :cond_a
    return-void

    .line 123
    .end local v6    # "flatRatio":I
    :cond_b
    :goto_2
    return-void
.end method

.method private blacklist handleImageViewAfterMeasure(Landroid/widget/ImageView;)V
    .locals 2
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .line 81
    invoke-static {p1}, Landroid/view/autolayout/AutoLayoutUtils;->getViewInfo(Landroid/view/View;)Landroid/view/autolayout/AutoLayoutViewInfo;

    move-result-object v0

    .line 83
    .local v0, "viewInfo":Landroid/view/autolayout/AutoLayoutViewInfo;
    invoke-virtual {v0}, Landroid/view/autolayout/AutoLayoutViewInfo;->getIsFlatView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 86
    :cond_0
    return-void
.end method

.method private blacklist handleImageViewBeforeMeasure(Landroid/widget/ImageView;)V
    .locals 2
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .line 76
    invoke-static {p1}, Landroid/view/autolayout/AutoLayoutUtils;->getViewInfo(Landroid/view/View;)Landroid/view/autolayout/AutoLayoutViewInfo;

    move-result-object v0

    .line 77
    .local v0, "viewInfo":Landroid/view/autolayout/AutoLayoutViewInfo;
    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/autolayout/AutoLayoutViewInfo;->setOriginScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 78
    return-void
.end method

.method private blacklist isAppTryToSetScreenWidth(I)Z
    .locals 2
    .param p1, "width"    # I

    .line 89
    const/4 v0, 0x3

    .line 90
    .local v0, "elasticity":I
    add-int/lit16 v1, p1, -0x434

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-gt v1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private blacklist isImageType(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 94
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 95
    const/4 v0, 0x1

    return v0

    .line 99
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public blacklist afterMeasure(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 62
    invoke-direct {p0, p1}, Landroid/view/autolayout/AutoLayoutCommonMeasurePolicy;->fillViewInfoAfterMeasure(Landroid/view/View;)V

    .line 64
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 65
    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Landroid/view/autolayout/AutoLayoutCommonMeasurePolicy;->handleImageViewAfterMeasure(Landroid/widget/ImageView;)V

    .line 67
    :cond_0
    return-void
.end method

.method public blacklist beforeMeasure(Landroid/view/View;II)[I
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "widthMeasureSpec"    # I
    .param p3, "heightMeasureSpec"    # I

    .line 42
    invoke-static {p1}, Landroid/view/autolayout/AutoLayoutUtils;->getViewInfo(Landroid/view/View;)Landroid/view/autolayout/AutoLayoutViewInfo;

    move-result-object v0

    .line 43
    .local v0, "viewInfo":Landroid/view/autolayout/AutoLayoutViewInfo;
    invoke-virtual {v0}, Landroid/view/autolayout/AutoLayoutViewInfo;->reset()V

    .line 45
    instance-of v1, p1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 46
    move-object v1, p1

    check-cast v1, Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Landroid/view/autolayout/AutoLayoutCommonMeasurePolicy;->handleImageViewBeforeMeasure(Landroid/widget/ImageView;)V

    .line 50
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 51
    .local v1, "originWidth":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 52
    .local v2, "originMode":I
    move v3, v1

    .line 53
    .local v3, "modifiedWidth":I
    invoke-direct {p0, v3}, Landroid/view/autolayout/AutoLayoutCommonMeasurePolicy;->isAppTryToSetScreenWidth(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 54
    const/16 v3, 0x780

    .line 57
    :cond_1
    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    aput v6, v4, v5

    const/4 v5, 0x1

    aput p3, v4, v5

    return-object v4
.end method

.method public blacklist setOriginalDisplayMetrics(Landroid/util/DisplayMetrics;)V
    .locals 0
    .param p1, "originalDisplayMetrics"    # Landroid/util/DisplayMetrics;

    .line 71
    iput-object p1, p0, Landroid/view/autolayout/AutoLayoutCommonMeasurePolicy;->mOriginalDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 72
    return-void
.end method
