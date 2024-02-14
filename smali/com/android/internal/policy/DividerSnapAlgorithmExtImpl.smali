.class public Lcom/android/internal/policy/DividerSnapAlgorithmExtImpl;
.super Ljava/lang/Object;
.source "DividerSnapAlgorithmExtImpl.java"

# interfaces
.implements Lcom/android/internal/policy/IDividerSnapAlgorithmExt;


# static fields
.field private static final blacklist MINIMAL_TARGET_SIZE_DP:I = 0x50

.field private static final blacklist MINIMAL_TASK_SIZE_DP:I = 0x12c

.field private static final blacklist RATIO_PERCENT_40:I = 0x28

.field private static final blacklist RATIO_PERCENT_60:I = 0x3c

.field private static final blacklist SNAP_MODE_MINIMIZED:I = 0x3

.field private static final blacklist TAG:Ljava/lang/String; = "DividerSnapAlgorithmExtImpl"


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "base"    # Ljava/lang/Object;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method private blacklist addDefaultRatioTargetsForLargeScreen(Landroid/content/res/Resources;Ljava/util/ArrayList;IIZLandroid/graphics/Rect;)V
    .locals 6
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p3, "dividerMax"    # I
    .param p4, "dividerSize"    # I
    .param p5, "isHorizontalDivision"    # Z
    .param p6, "insets"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;",
            ">;IIZ",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    .line 114
    .local p2, "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;>;"
    mul-int/lit8 v0, p3, 0x28

    div-int/lit8 v0, v0, 0x64

    .line 115
    .local v0, "positionTop":I
    mul-int/lit8 v1, p3, 0x3c

    div-int/lit8 v1, v1, 0x64

    .line 116
    .local v1, "positionBottom":I
    sub-int v2, p3, p4

    div-int/lit8 v2, v2, 0x2

    .line 117
    .local v2, "positionMiddle":I
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x43960000    # 300.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 118
    .local v3, "minimalTaskSize":I
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 120
    sub-int v4, p3, v0

    sub-int/2addr v4, p4

    .line 123
    .end local v1    # "positionBottom":I
    .local v4, "positionBottom":I
    new-instance v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    const/4 v5, 0x0

    invoke-direct {v1, v0, v0, v5}, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;-><init>(III)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    new-instance v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    invoke-direct {v1, v2, v2, v5}, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;-><init>(III)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    new-instance v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    invoke-direct {v1, v4, v4, v5}, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;-><init>(III)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    return-void
.end method

.method private blacklist isLargeScreen(Landroid/content/res/Resources;)Z
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 48
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v1, 0x24e

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public blacklist addMiddleTarget(Ljava/util/ArrayList;ZIII)Z
    .locals 4
    .param p2, "isHorizontalDivision"    # Z
    .param p3, "displayWidth"    # I
    .param p4, "displayHeight"    # I
    .param p5, "dividerSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;",
            ">;ZIII)Z"
        }
    .end annotation

    .line 178
    .local p1, "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;>;"
    invoke-static {}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getInstance()Lcom/oplus/splitscreen/OplusSplitScreenManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->hasColorSplitFeature()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 179
    return v1

    .line 181
    :cond_0
    if-eqz p2, :cond_1

    move v0, p4

    goto :goto_0

    :cond_1
    move v0, p3

    .line 182
    .local v0, "dividerMax":I
    :goto_0
    sub-int v2, v0, p5

    div-int/lit8 v2, v2, 0x2

    .line 183
    .local v2, "position":I
    new-instance v3, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    invoke-direct {v3, v2, v2, v1}, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;-><init>(III)V

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    const/4 v1, 0x1

    return v1
.end method

.method public blacklist addMinimizedTarget(Ljava/util/ArrayList;IIILandroid/graphics/Rect;II)Z
    .locals 5
    .param p2, "dockedSide"    # I
    .param p3, "dividerSize"    # I
    .param p4, "taskHeightInMinimized"    # I
    .param p5, "insets"    # Landroid/graphics/Rect;
    .param p6, "displayWidth"    # I
    .param p7, "displayHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;",
            ">;III",
            "Landroid/graphics/Rect;",
            "II)Z"
        }
    .end annotation

    .line 134
    .local p1, "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;>;"
    invoke-virtual {p0}, Lcom/android/internal/policy/DividerSnapAlgorithmExtImpl;->hasLargeScreenFeature()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 135
    invoke-static {}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getInstance()Lcom/oplus/splitscreen/OplusSplitScreenManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getMinimizedBounds(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 136
    .local v0, "minimizedBounds":Landroid/graphics/Rect;
    const/4 v3, 0x0

    .line 137
    .local v3, "position":I
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 148
    :pswitch_0
    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int v3, v4, p3

    goto :goto_0

    .line 142
    :pswitch_1
    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int v3, v4, p3

    .line 143
    goto :goto_0

    .line 145
    :pswitch_2
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 146
    goto :goto_0

    .line 139
    :pswitch_3
    iget v3, v0, Landroid/graphics/Rect;->right:I

    .line 140
    nop

    .line 151
    :goto_0
    new-instance v4, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    invoke-direct {v4, v3, v3, v2}, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;-><init>(III)V

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    return v1

    .line 153
    .end local v0    # "minimizedBounds":Landroid/graphics/Rect;
    .end local v3    # "position":I
    :cond_0
    invoke-static {}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getInstance()Lcom/oplus/splitscreen/OplusSplitScreenManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->hasColorSplitFeature()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    const/4 v0, 0x0

    .line 155
    .local v0, "position":I
    packed-switch p2, :pswitch_data_1

    goto :goto_1

    .line 166
    :pswitch_4
    iget v3, p5, Landroid/graphics/Rect;->bottom:I

    sub-int v3, p7, v3

    sub-int/2addr v3, p4

    sub-int v0, v3, p3

    goto :goto_1

    .line 160
    :pswitch_5
    iget v3, p5, Landroid/graphics/Rect;->right:I

    sub-int v3, p6, v3

    sub-int/2addr v3, p4

    sub-int v0, v3, p3

    .line 161
    goto :goto_1

    .line 163
    :pswitch_6
    iget v3, p5, Landroid/graphics/Rect;->top:I

    add-int v0, p4, v3

    .line 164
    goto :goto_1

    .line 157
    :pswitch_7
    iget v3, p5, Landroid/graphics/Rect;->left:I

    add-int v0, p4, v3

    .line 158
    nop

    .line 169
    :goto_1
    new-instance v3, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    invoke-direct {v3, v0, v0, v2}, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;-><init>(III)V

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    return v1

    .line 172
    .end local v0    # "position":I
    :cond_1
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public blacklist addRatioTargets(Landroid/content/res/Resources;Ljava/util/ArrayList;IIZLandroid/graphics/Rect;)Z
    .locals 10
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p3, "dividerMax"    # I
    .param p4, "dividerSize"    # I
    .param p5, "isHorizontalDivision"    # Z
    .param p6, "insets"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;",
            ">;IIZ",
            "Landroid/graphics/Rect;",
            ")Z"
        }
    .end annotation

    .line 78
    .local p2, "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;>;"
    move-object v7, p2

    move-object/from16 v8, p6

    invoke-static {}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getInstance()Lcom/oplus/splitscreen/OplusSplitScreenManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->hasColorSplitFeature()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 79
    return v1

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/DividerSnapAlgorithmExtImpl;->hasLargeScreenFeature()Z

    move-result v0

    if-nez v0, :cond_1

    .line 82
    return v1

    .line 85
    :cond_1
    invoke-static {}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getInstance()Lcom/oplus/splitscreen/OplusSplitScreenManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->isFoldDevice()Z

    move-result v0

    const/4 v9, 0x1

    if-eqz v0, :cond_6

    .line 87
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DividerSnapAlgorithmExtImpl;->isLargeScreen(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 88
    if-eqz p5, :cond_2

    .line 89
    div-int/lit8 v0, p3, 0x2

    div-int/lit8 v2, p4, 0x2

    sub-int/2addr v0, v2

    .line 90
    .local v0, "positionMiddle":I
    new-instance v2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    invoke-direct {v2, v0, v0, v1}, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;-><init>(III)V

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    .end local v0    # "positionMiddle":I
    goto :goto_2

    .line 92
    :cond_2
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/DividerSnapAlgorithmExtImpl;->addDefaultRatioTargetsForLargeScreen(Landroid/content/res/Resources;Ljava/util/ArrayList;IIZLandroid/graphics/Rect;)V

    goto :goto_2

    .line 95
    :cond_3
    const/high16 v0, 0x42a00000    # 80.0f

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v0

    float-to-int v0, v2

    .line 96
    .local v0, "minimalSize":I
    if-eqz p5, :cond_4

    iget v2, v8, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_4
    iget v2, v8, Landroid/graphics/Rect;->left:I

    :goto_0
    add-int/2addr v2, v0

    .line 97
    .local v2, "positionMinimalTop":I
    sub-int v3, p3, v0

    sub-int/2addr v3, p4

    if-eqz p5, :cond_5

    iget v4, v8, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_5
    iget v4, v8, Landroid/graphics/Rect;->right:I

    :goto_1
    sub-int/2addr v3, v4

    .line 98
    .local v3, "positionMinimalBottom":I
    new-instance v4, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    invoke-direct {v4, v2, v2, v1}, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;-><init>(III)V

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-direct/range {p0 .. p6}, Lcom/android/internal/policy/DividerSnapAlgorithmExtImpl;->addDefaultRatioTargetsForLargeScreen(Landroid/content/res/Resources;Ljava/util/ArrayList;IIZLandroid/graphics/Rect;)V

    .line 100
    new-instance v4, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    invoke-direct {v4, v3, v3, v1}, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;-><init>(III)V

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    .end local v0    # "minimalSize":I
    .end local v2    # "positionMinimalTop":I
    .end local v3    # "positionMinimalBottom":I
    :goto_2
    return v9

    .line 105
    :cond_6
    invoke-static {}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getInstance()Lcom/oplus/splitscreen/OplusSplitScreenManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->isTabletDevice()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 106
    invoke-direct/range {p0 .. p6}, Lcom/android/internal/policy/DividerSnapAlgorithmExtImpl;->addDefaultRatioTargetsForLargeScreen(Landroid/content/res/Resources;Ljava/util/ArrayList;IIZLandroid/graphics/Rect;)V

    .line 107
    return v9

    .line 109
    :cond_7
    return v1
.end method

.method public blacklist getFreeSnapMode(Landroid/content/res/Resources;)Z
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 69
    invoke-virtual {p0}, Lcom/android/internal/policy/DividerSnapAlgorithmExtImpl;->hasLargeScreenFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/policy/DividerSnapAlgorithmExtImpl;->isLargeScreen(Landroid/content/res/Resources;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    const/4 v0, 0x0

    return v0

    .line 72
    :cond_0
    invoke-static {}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getInstance()Lcom/oplus/splitscreen/OplusSplitScreenManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->hasColorSplitFeature()Z

    move-result v0

    return v0
.end method

.method public blacklist getSnapMode(Landroid/content/res/Resources;Z)I
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "isMinimizedMode"    # Z

    .line 58
    invoke-virtual {p0}, Lcom/android/internal/policy/DividerSnapAlgorithmExtImpl;->hasLargeScreenFeature()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getInstance()Lcom/oplus/splitscreen/OplusSplitScreenManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->hasColorSplitFeature()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 61
    :cond_1
    if-eqz p2, :cond_2

    goto :goto_1

    .line 62
    :cond_2
    const v0, 0x10e0063

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 61
    :goto_1
    return v1
.end method

.method public blacklist hasLargeScreenFeature()Z
    .locals 1

    .line 53
    invoke-static {}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getInstance()Lcom/oplus/splitscreen/OplusSplitScreenManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->hasLargeScreenFeature()Z

    move-result v0

    return v0
.end method
