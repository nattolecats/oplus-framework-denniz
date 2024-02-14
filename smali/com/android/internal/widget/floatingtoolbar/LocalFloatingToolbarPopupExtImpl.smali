.class public Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopupExtImpl;
.super Ljava/lang/Object;
.source "LocalFloatingToolbarPopupExtImpl.java"

# interfaces
.implements Lcom/android/internal/widget/floatingtoolbar/ILocalFloatingToolbarPopupExt;


# static fields
.field private static final blacklist ELEVATION_ALPHA:F = 0.8f

.field private static final blacklist ELEVATION_VALUE:I = 0x8

.field private static final blacklist MAX_OVER_SCROLL_SIZE:I = 0x4

.field private static final blacklist MIN_OVER_SCROLL_SIZE:I = 0x3

.field private static final blacklist NUM_0_5:F = 0.5f

.field private static final blacklist OVER_FLOW_BTN_MARGIN_START:I = 0xa

.field private static final blacklist OVER_FLOW_FIRST_ITEM_PADDING_TOP_DP:I = 0xc

.field private static final blacklist OVER_FLOW_NORMAL_ITEM_HEIGHT_DP:I = 0x28


# instance fields
.field private blacklist mOverflowPanelViewHelperExt:Lcom/android/internal/widget/floatingtoolbar/IOverflowPanelViewHelperExt;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "base"    # Ljava/lang/Object;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    sget-object v0, Lcom/android/internal/widget/floatingtoolbar/IOverflowPanelViewHelperExt;->DEFAULT:Lcom/android/internal/widget/floatingtoolbar/IOverflowPanelViewHelperExt;

    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopupExtImpl;->mOverflowPanelViewHelperExt:Lcom/android/internal/widget/floatingtoolbar/IOverflowPanelViewHelperExt;

    .line 51
    return-void
.end method

.method private blacklist dp2px(Landroid/content/Context;I)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dp"    # I

    .line 243
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, p2

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private blacklist setListViewBackground(Landroid/widget/ListView;)V
    .locals 2
    .param p1, "listview"    # Landroid/widget/ListView;

    .line 180
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v1, 0xffffff

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 181
    .local v0, "color":Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 182
    return-void
.end method

.method private blacklist setOverflowMenuCount(I)V
    .locals 1
    .param p1, "count"    # I

    .line 140
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopupExtImpl;->mOverflowPanelViewHelperExt:Lcom/android/internal/widget/floatingtoolbar/IOverflowPanelViewHelperExt;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/floatingtoolbar/IOverflowPanelViewHelperExt;->setOverflowMenuCount(I)V

    .line 141
    return-void
.end method

.method private blacklist setOverflowScrollBarSize(Landroid/widget/ListView;)V
    .locals 3
    .param p1, "listview"    # Landroid/widget/ListView;

    .line 185
    invoke-direct {p0, p1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopupExtImpl;->setListViewBackground(Landroid/widget/ListView;)V

    .line 186
    invoke-virtual {p1}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 187
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc050081

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 189
    .local v1, "scrollBarSize":I
    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setScrollBarSize(I)V

    .line 190
    return-void
.end method


# virtual methods
.method public blacklist hookCalOverflowTotalItemHeight(Landroid/content/Context;II)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "itemCount"    # I
    .param p3, "itemHeight"    # I

    .line 221
    const/16 v0, 0x28

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopupExtImpl;->dp2px(Landroid/content/Context;I)I

    move-result v0

    .line 222
    .local v0, "lineHeight":I
    const/16 v1, 0xc

    invoke-direct {p0, p1, v1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopupExtImpl;->dp2px(Landroid/content/Context;I)I

    move-result v1

    .line 223
    .local v1, "firstItemExtraPaddingTop":I
    mul-int v2, p2, v0

    add-int/2addr v2, v1

    return v2
.end method

.method public blacklist hookCalculateOverflowExtension(Landroid/view/ViewGroup;I)I
    .locals 2
    .param p1, "contentContainerView"    # Landroid/view/ViewGroup;
    .param p2, "lineHeight"    # I

    .line 163
    if-eqz p1, :cond_0

    .line 164
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    .line 166
    :cond_0
    int-to-float v0, p2

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public blacklist hookClearPanels(I)V
    .locals 0
    .param p1, "overflowMenuCount"    # I

    .line 155
    invoke-direct {p0, p1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopupExtImpl;->setOverflowMenuCount(I)V

    .line 157
    return-void
.end method

.method public blacklist hookCreateContentContainer(Landroid/content/Context;)Landroid/view/ViewGroup;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 290
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 293
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0xc090412

    .line 294
    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 296
    .local v0, "contentContainer":Landroid/view/ViewGroup;
    return-object v0

    .line 299
    .end local v0    # "contentContainer":Landroid/view/ViewGroup;
    :cond_0
    return-object v0
.end method

.method public blacklist hookCreateMenuItemButton(Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 248
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 251
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0xc090413

    .line 252
    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 254
    .local v0, "menuItemButton":Landroid/view/View;
    return-object v0

    .line 257
    .end local v0    # "menuItemButton":Landroid/view/View;
    :cond_0
    return-object v0
.end method

.method public blacklist hookCreateOverflowButton(Landroid/content/Context;I)Landroid/widget/ImageButton;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "defaultOverflowButtonRes"    # I

    .line 174
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0xc090411

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    return-object v0
.end method

.method public blacklist hookCreateOverflowPanelAfterOverflowPanel(Landroid/widget/ListView;)V
    .locals 0
    .param p1, "listview"    # Landroid/widget/ListView;

    .line 196
    invoke-direct {p0, p1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopupExtImpl;->setOverflowScrollBarSize(Landroid/widget/ListView;)V

    .line 198
    return-void
.end method

.method public blacklist hookCreateOverflowPanelAtAdapterGetView(IZ)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "upward"    # Z

    .line 204
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopupExtImpl;->mOverflowPanelViewHelperExt:Lcom/android/internal/widget/floatingtoolbar/IOverflowPanelViewHelperExt;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/floatingtoolbar/IOverflowPanelViewHelperExt;->setConvertViewPosition(I)V

    .line 205
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopupExtImpl;->mOverflowPanelViewHelperExt:Lcom/android/internal/widget/floatingtoolbar/IOverflowPanelViewHelperExt;

    invoke-interface {v0, p2}, Lcom/android/internal/widget/floatingtoolbar/IOverflowPanelViewHelperExt;->setOverflowDirection(Z)V

    .line 207
    return-void
.end method

.method public blacklist hookFloatingToolbarPopupAfterOverflowPanelViewHelper(Lcom/android/internal/widget/floatingtoolbar/IOverflowPanelViewHelperExt;)V
    .locals 0
    .param p1, "overflowPanelViewHelperExt"    # Lcom/android/internal/widget/floatingtoolbar/IOverflowPanelViewHelperExt;

    .line 116
    iput-object p1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopupExtImpl;->mOverflowPanelViewHelperExt:Lcom/android/internal/widget/floatingtoolbar/IOverflowPanelViewHelperExt;

    .line 117
    return-void
.end method

.method public blacklist hookFloatingToolbarPopupForArrow(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "defaultArrowDrawableId"    # I

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 82
    const v2, 0xc080056

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public blacklist hookFloatingToolbarPopupForLineHeight(Landroid/content/Context;I)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "defaultFloatingToolBarHeightRes"    # I

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc050083

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public blacklist hookFloatingToolbarPopupForOverflow(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "defaultOverflowDrawableId"    # I

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 91
    const v2, 0xc08004c

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public blacklist hookFloatingToolbarPopupForToArrow(Landroid/content/Context;I)Landroid/graphics/drawable/AnimatedVectorDrawable;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "defaultToArrowAnimId"    # I

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 100
    const v2, 0xc08004d

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    return-object v0
.end method

.method public blacklist hookFloatingToolbarPopupForToOverflow(Landroid/content/Context;I)Landroid/graphics/drawable/AnimatedVectorDrawable;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "defaultToOverflowAnimId"    # I

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 109
    const v2, 0xc080059

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    return-object v0
.end method

.method public blacklist hookGetFirstItemPaddingStart(Landroid/content/Context;I)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "paddingStart"    # I

    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc05007d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 125
    .local v0, "paddingStartExtra":I
    add-int v1, v0, p2

    return v1
.end method

.method public blacklist hookGetLastItemPaddingEnd(Landroid/content/Context;I)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "paddingEnd"    # I

    .line 133
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc05007e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 135
    .local v0, "paddingEndExtra":I
    add-int v1, v0, p2

    return v1
.end method

.method public blacklist hookGetMarginVertical(I)I
    .locals 1
    .param p1, "defaultValue"    # I

    .line 211
    const v0, 0xc0500c1

    return v0
.end method

.method public blacklist hookGetOverflowBtnExtraStartX(Landroid/view/View;)I
    .locals 2
    .param p1, "overflowButton"    # Landroid/view/View;

    .line 216
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopupExtImpl;->dp2px(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public blacklist hookLayoutOverflowPanelItems(I)V
    .locals 0
    .param p1, "overflowMenuCount"    # I

    .line 147
    invoke-direct {p0, p1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopupExtImpl;->setOverflowMenuCount(I)V

    .line 149
    return-void
.end method

.method public blacklist hookMaxOverflowSize()Ljava/lang/Integer;
    .locals 1

    .line 65
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public blacklist hookMinOverflowSize()Ljava/lang/Integer;
    .locals 1

    .line 57
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public blacklist hookSetElevation(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 228
    if-eqz p1, :cond_0

    .line 229
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc05007c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 230
    .local v0, "cornerSize":I
    new-instance v1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopupExtImpl$1;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopupExtImpl$1;-><init>(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopupExtImpl;I)V

    .line 237
    .local v1, "viewOutlineProvider":Landroid/view/ViewOutlineProvider;
    invoke-virtual {p1, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 238
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x8

    invoke-direct {p0, v2, v3}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopupExtImpl;->dp2px(Landroid/content/Context;I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setElevation(F)V

    .line 240
    .end local v0    # "cornerSize":I
    .end local v1    # "viewOutlineProvider":Landroid/view/ViewOutlineProvider;
    :cond_0
    return-void
.end method

.method public blacklist hookUpdateMenuItemButtonForIcon(Landroid/view/View;)Landroid/widget/ImageView;
    .locals 1
    .param p1, "menuItemButton"    # Landroid/view/View;

    .line 276
    if-eqz p1, :cond_0

    .line 279
    const v0, 0x10202f8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 282
    .local v0, "buttonIcon":Landroid/widget/ImageView;
    return-object v0

    .line 285
    .end local v0    # "buttonIcon":Landroid/widget/ImageView;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist hookUpdateMenuItemButtonForText(Landroid/view/View;)Landroid/widget/TextView;
    .locals 1
    .param p1, "menuItemButton"    # Landroid/view/View;

    .line 262
    if-eqz p1, :cond_0

    .line 265
    const v0, 0x10202fa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 268
    .local v0, "buttonText":Landroid/widget/TextView;
    return-object v0

    .line 271
    .end local v0    # "buttonText":Landroid/widget/TextView;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
