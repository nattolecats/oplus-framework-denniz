.class public Landroid/view/autolayout/AutoLayoutCommonLayoutPolicy;
.super Ljava/lang/Object;
.source "AutoLayoutCommonLayoutPolicy.java"

# interfaces
.implements Landroid/view/autolayout/IAutoLayoutLayoutPolicy;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist centerAlignChildren(Landroid/view/ViewGroup;Ljava/util/List;IIII)V
    .locals 7
    .param p1, "group"    # Landroid/view/ViewGroup;
    .param p3, "childLeftMostPosition"    # I
    .param p4, "childRightMostPosition"    # I
    .param p5, "groupLeftMostPosition"    # I
    .param p6, "groupRightMostPosition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;IIII)V"
        }
    .end annotation

    .line 199
    .local p2, "directVisibleChildren":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    sub-int v0, p3, p5

    .line 200
    .local v0, "leftSpace":I
    sub-int v1, p6, p4

    .line 201
    .local v1, "rightSpace":I
    sub-int v2, v1, v0

    div-int/lit8 v2, v2, 0x2

    .line 204
    .local v2, "translateOffset":I
    invoke-static {p1}, Landroid/view/autolayout/AutoLayoutUtils;->getViewInfo(Landroid/view/View;)Landroid/view/autolayout/AutoLayoutViewInfo;

    move-result-object v3

    .line 205
    .local v3, "viewInfo":Landroid/view/autolayout/AutoLayoutViewInfo;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[This group "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " centerAlign children by childLeft "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " childRight "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " groupLeft "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " groupRight "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " translateOffset "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 211
    .local v4, "extraInfoStr":Ljava/lang/String;
    invoke-virtual {v3, v4}, Landroid/view/autolayout/AutoLayoutViewInfo;->setExtraInfo(Ljava/lang/String;)V

    .line 213
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 214
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 215
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 213
    .end local v6    # "child":Landroid/view/View;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 217
    .end local v5    # "i":I
    :cond_0
    return-void
.end method

.method private blacklist handleTopBannerImageView(Landroid/widget/ImageView;)V
    .locals 5
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .line 67
    invoke-virtual {p1}, Landroid/widget/ImageView;->getTop()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 69
    .local v0, "topOffset":I
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getRight()I

    move-result v2

    invoke-virtual {p1}, Landroid/widget/ImageView;->getBottom()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/widget/ImageView;->setLeftTopRightBottom(IIII)V

    .line 70
    invoke-virtual {p1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 71
    .local v1, "newMeasureSpecHeight":I
    invoke-virtual {p1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 72
    .local v2, "newMeasureSpecWidth":I
    invoke-virtual {p1, v2, v1}, Landroid/widget/ImageView;->measure(II)V

    .line 73
    return-void
.end method

.method private blacklist isClassTypeNeedStretch(Landroid/view/ViewGroup;)Z
    .locals 3
    .param p1, "group"    # Landroid/view/ViewGroup;

    .line 168
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 169
    .local v0, "groupClass":Ljava/lang/Class;
    const-string v1, ""

    .line 170
    .local v1, "groupClassName":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_1

    .line 171
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 172
    const-string v2, "RecyclerView"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 173
    const/4 v2, 0x0

    return v2

    .line 175
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 178
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist isMultiSameItemChildren(Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)Z"
        }
    .end annotation

    .line 138
    .local p1, "directVisibleChildren":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v0, 0x0

    .line 139
    .local v0, "lastVisibleChildWidth":I
    const/4 v1, 0x0

    .line 140
    .local v1, "lastVisibleChildHeight":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 141
    .local v2, "directVisibleChildrenCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_4

    .line 142
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 145
    .local v4, "visibleChild":Landroid/view/View;
    if-nez v0, :cond_0

    .line 146
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 149
    :cond_0
    if-nez v1, :cond_1

    .line 150
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 154
    :cond_1
    const/16 v5, 0x14

    .line 155
    .local v5, "compareThreshold":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    sub-int v6, v0, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-gt v6, v5, :cond_3

    .line 156
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    sub-int v6, v1, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-le v6, v5, :cond_2

    goto :goto_1

    .line 160
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 161
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 141
    .end local v4    # "visibleChild":Landroid/view/View;
    .end local v5    # "compareThreshold":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 157
    .restart local v4    # "visibleChild":Landroid/view/View;
    .restart local v5    # "compareThreshold":I
    :cond_3
    :goto_1
    const/4 v6, 0x0

    return v6

    .line 164
    .end local v3    # "i":I
    .end local v4    # "visibleChild":Landroid/view/View;
    .end local v5    # "compareThreshold":I
    :cond_4
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist stretchChildren(Landroid/view/ViewGroup;Ljava/util/List;)V
    .locals 10
    .param p1, "group"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 182
    .local p2, "directVisibleChildren":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 183
    .local v0, "childWidth":I
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    .line 184
    .local v1, "groupWidth":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    .line 185
    .local v2, "directVisibleChildrenCount":I
    mul-int v3, v0, v2

    sub-int v3, v1, v3

    add-int/lit8 v4, v2, 0x1

    div-int/2addr v3, v4

    .line 187
    .local v3, "spaceBetweenChildren":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 188
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 189
    .local v5, "child":Landroid/view/View;
    mul-int v6, v4, v0

    add-int/2addr v6, v3

    mul-int v7, v4, v3

    add-int/2addr v6, v7

    .line 190
    .local v6, "left":I
    add-int v7, v6, v0

    .line 191
    .local v7, "right":I
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v8

    .line 192
    .local v8, "top":I
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v9

    .line 193
    .local v9, "bottom":I
    invoke-virtual {v5, v6, v8, v7, v9}, Landroid/view/View;->layout(IIII)V

    .line 187
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "left":I
    .end local v7    # "right":I
    .end local v8    # "top":I
    .end local v9    # "bottom":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 195
    .end local v4    # "i":I
    :cond_0
    return-void
.end method

.method private blacklist stretchChildrenIfNeeded(Landroid/view/ViewGroup;)V
    .locals 22
    .param p1, "group"    # Landroid/view/ViewGroup;

    .line 76
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    invoke-direct/range {p0 .. p1}, Landroid/view/autolayout/AutoLayoutCommonLayoutPolicy;->isClassTypeNeedStretch(Landroid/view/ViewGroup;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    return-void

    .line 80
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    .line 81
    .local v9, "childCount":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getLocationOnScreen()[I

    move-result-object v10

    .line 82
    .local v10, "groupLocation":[I
    const/16 v0, 0x780

    const/4 v1, 0x0

    aget v2, v10, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 84
    .local v11, "groupLeftMostPosition":I
    aget v0, v10, v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 85
    .local v12, "groupRightMostPosition":I
    const/16 v0, 0x780

    .line 86
    .local v0, "childLeftMostPosition":I
    const/4 v2, 0x0

    .line 88
    .local v2, "childRightMostPosition":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v3

    .line 89
    .local v13, "directVisibleChildren":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v3, 0x0

    move v14, v0

    move v15, v2

    .end local v0    # "childLeftMostPosition":I
    .end local v2    # "childRightMostPosition":I
    .local v3, "i":I
    .local v14, "childLeftMostPosition":I
    .local v15, "childRightMostPosition":I
    :goto_0
    if-ge v3, v9, :cond_3

    .line 90
    invoke-virtual {v8, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 92
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 93
    .local v2, "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_1

    instance-of v4, v2, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v4, :cond_1

    .line 94
    move-object v4, v2

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 95
    .local v4, "linearLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget v5, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_1

    .line 96
    return-void

    .line 100
    .end local v4    # "linearLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    .line 101
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    if-ltz v4, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v5

    if-gt v4, v5, :cond_2

    .line 102
    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    invoke-virtual {v0}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v4

    .line 105
    .local v4, "childLocation":[I
    aget v5, v4, v1

    invoke-static {v14, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 106
    .end local v14    # "childLeftMostPosition":I
    .local v5, "childLeftMostPosition":I
    aget v6, v4, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v6, v14

    invoke-static {v15, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    move v14, v5

    move v15, v6

    .line 89
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v4    # "childLocation":[I
    .end local v5    # "childLeftMostPosition":I
    .restart local v14    # "childLeftMostPosition":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 110
    .end local v3    # "i":I
    :cond_3
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v16

    .line 111
    .local v16, "directVisibleChildrenCount":I
    if-nez v16, :cond_4

    .line 112
    return-void

    .line 115
    :cond_4
    invoke-direct {v7, v13}, Landroid/view/autolayout/AutoLayoutCommonLayoutPolicy;->isMultiSameItemChildren(Ljava/util/List;)Z

    move-result v17

    .line 117
    .local v17, "isMultiSameItemChildren":Z
    const/4 v0, 0x0

    .line 118
    .local v0, "isItemsNeedStretch":Z
    const/16 v6, 0x1f4

    .line 119
    .local v6, "spaceThreshold":I
    sub-int v2, v14, v11

    sub-int v3, v12, v15

    add-int v5, v2, v3

    .line 120
    .local v5, "extraSpace":I
    if-le v5, v6, :cond_5

    .line 121
    const/4 v0, 0x1

    move/from16 v18, v0

    goto :goto_1

    .line 120
    :cond_5
    move/from16 v18, v0

    .line 124
    .end local v0    # "isItemsNeedStretch":Z
    .local v18, "isItemsNeedStretch":Z
    :goto_1
    const/4 v0, 0x0

    .line 125
    .local v0, "isGroupSameHeightWithChild":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-ne v2, v1, :cond_6

    .line 126
    const/4 v0, 0x1

    move/from16 v19, v0

    goto :goto_2

    .line 125
    :cond_6
    move/from16 v19, v0

    .line 129
    .end local v0    # "isGroupSameHeightWithChild":Z
    .local v19, "isGroupSameHeightWithChild":Z
    :goto_2
    if-eqz v17, :cond_7

    if-eqz v18, :cond_7

    if-eqz v19, :cond_7

    .line 130
    invoke-direct {v7, v8, v13}, Landroid/view/autolayout/AutoLayoutCommonLayoutPolicy;->stretchChildren(Landroid/view/ViewGroup;Ljava/util/List;)V

    move/from16 v20, v5

    move/from16 v21, v6

    goto :goto_3

    .line 131
    :cond_7
    if-nez v17, :cond_8

    if-eqz v18, :cond_8

    if-eqz v19, :cond_8

    .line 132
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v13

    move v3, v14

    move v4, v15

    move/from16 v20, v5

    .end local v5    # "extraSpace":I
    .local v20, "extraSpace":I
    move v5, v11

    move/from16 v21, v6

    .end local v6    # "spaceThreshold":I
    .local v21, "spaceThreshold":I
    move v6, v12

    invoke-direct/range {v0 .. v6}, Landroid/view/autolayout/AutoLayoutCommonLayoutPolicy;->centerAlignChildren(Landroid/view/ViewGroup;Ljava/util/List;IIII)V

    goto :goto_3

    .line 131
    .end local v20    # "extraSpace":I
    .end local v21    # "spaceThreshold":I
    .restart local v5    # "extraSpace":I
    .restart local v6    # "spaceThreshold":I
    :cond_8
    move/from16 v20, v5

    move/from16 v21, v6

    .line 135
    .end local v5    # "extraSpace":I
    .end local v6    # "spaceThreshold":I
    .restart local v20    # "extraSpace":I
    .restart local v21    # "spaceThreshold":I
    :goto_3
    return-void
.end method


# virtual methods
.method public blacklist afterLayout(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 39
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 40
    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    .line 41
    .local v0, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    if-gez v1, :cond_0

    .line 42
    invoke-direct {p0, v0}, Landroid/view/autolayout/AutoLayoutCommonLayoutPolicy;->handleTopBannerImageView(Landroid/widget/ImageView;)V

    .line 46
    .end local v0    # "imageView":Landroid/widget/ImageView;
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 47
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Landroid/view/autolayout/AutoLayoutCommonLayoutPolicy;->stretchChildrenIfNeeded(Landroid/view/ViewGroup;)V

    .line 49
    :cond_1
    return-void
.end method

.method public blacklist beforeLayout(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 35
    return-void
.end method

.method public blacklist setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 3
    .param p1, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 53
    if-nez p1, :cond_0

    .line 54
    const/4 v0, 0x0

    return-object v0

    .line 57
    :cond_0
    const/16 v0, 0xf

    .line 58
    .local v0, "elasticity":I
    const/16 v1, 0x780

    .line 59
    .local v1, "displayWidth":I
    iget v2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/lit16 v2, v2, -0x434

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v2, v0, :cond_1

    .line 60
    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 63
    :cond_1
    return-object p1
.end method
