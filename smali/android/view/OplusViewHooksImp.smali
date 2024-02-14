.class public Landroid/view/OplusViewHooksImp;
.super Ljava/lang/Object;
.source "OplusViewHooksImp.java"

# interfaces
.implements Landroid/view/IOplusViewHooks;


# instance fields
.field private blacklist mContextUtil:Lcom/oplus/util/OplusContextUtil;

.field private final blacklist mLongshotController:Lcom/oplus/screenshot/IOplusLongshotController;

.field private final blacklist mScrollBarEffect:Lcom/oplus/view/IOplusScrollBarEffect;

.field private final blacklist mView:Landroid/view/View;


# direct methods
.method public constructor whitelist <init>(Landroid/view/View;Landroid/content/res/Resources;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "res"    # Landroid/content/res/Resources;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/OplusViewHooksImp;->mContextUtil:Lcom/oplus/util/OplusContextUtil;

    .line 62
    iput-object p1, p0, Landroid/view/OplusViewHooksImp;->mView:Landroid/view/View;

    .line 66
    const-class v0, Landroid/view/ViewExtImpl;

    invoke-virtual {p1}, Landroid/view/View;->getViewWrapper()Landroid/view/IViewWrapper;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/IViewWrapper;->getViewExt()Landroid/view/IViewExt;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/util/OplusTypeCastingHelper;->typeCasting(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewExtImpl;

    .line 67
    .local v0, "viewExt":Landroid/view/ViewExtImpl;
    new-instance v1, Lcom/oplus/screenshot/OplusLongshotViewController;

    invoke-direct {v1, v0}, Lcom/oplus/screenshot/OplusLongshotViewController;-><init>(Lcom/oplus/screenshot/OplusLongshotViewBase;)V

    iput-object v1, p0, Landroid/view/OplusViewHooksImp;->mLongshotController:Lcom/oplus/screenshot/IOplusLongshotController;

    .line 68
    invoke-direct {p0, p2}, Landroid/view/OplusViewHooksImp;->createScrollBarEffect(Landroid/content/res/Resources;)Lcom/oplus/view/IOplusScrollBarEffect;

    move-result-object v1

    iput-object v1, p0, Landroid/view/OplusViewHooksImp;->mScrollBarEffect:Lcom/oplus/view/IOplusScrollBarEffect;

    .line 71
    sget-object v1, Landroid/widget/IOplusTextViewRTLUtilForUG;->DEFAULT:Landroid/widget/IOplusTextViewRTLUtilForUG;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v1

    check-cast v1, Landroid/widget/IOplusTextViewRTLUtilForUG;

    invoke-interface {v1, p2}, Landroid/widget/IOplusTextViewRTLUtilForUG;->initRtlParameter(Landroid/content/res/Resources;)V

    .line 73
    return-void
.end method

.method private blacklist createScrollBarEffect(Landroid/content/res/Resources;)Lcom/oplus/view/IOplusScrollBarEffect;
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 220
    if-nez p1, :cond_0

    .line 221
    sget-object v0, Lcom/oplus/view/OplusScrollBarEffect;->NO_EFFECT:Lcom/oplus/view/IOplusScrollBarEffect;

    return-object v0

    .line 223
    :cond_0
    new-instance v0, Lcom/oplus/view/OplusScrollBarEffect;

    invoke-direct {v0, p1, p0}, Lcom/oplus/view/OplusScrollBarEffect;-><init>(Landroid/content/res/Resources;Lcom/oplus/view/IOplusScrollBarEffect$ViewCallback;)V

    return-object v0
.end method


# virtual methods
.method public whitelist awakenScrollBars()Z
    .locals 1

    .line 80
    iget-object v0, p0, Landroid/view/OplusViewHooksImp;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->awakenScrollBars()Z

    move-result v0

    return v0
.end method

.method public whitelist findViewsLongshotInfo(Lcom/oplus/screenshot/OplusLongshotViewInfo;)Z
    .locals 1
    .param p1, "info"    # Lcom/oplus/screenshot/OplusLongshotViewInfo;

    .line 126
    invoke-virtual {p0}, Landroid/view/OplusViewHooksImp;->getLongshotController()Lcom/oplus/screenshot/IOplusLongshotController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/oplus/screenshot/IOplusLongshotController;->findInfo(Lcom/oplus/screenshot/OplusLongshotViewInfo;)Z

    move-result v0

    return v0
.end method

.method public whitelist getLongshotController()Lcom/oplus/screenshot/IOplusLongshotController;
    .locals 1

    .line 92
    iget-object v0, p0, Landroid/view/OplusViewHooksImp;->mLongshotController:Lcom/oplus/screenshot/IOplusLongshotController;

    return-object v0
.end method

.method public whitelist getOplusCustomDrawingCache(Landroid/graphics/Rect;II)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "clip"    # Landroid/graphics/Rect;
    .param p2, "viewTop"    # I
    .param p3, "mPrivateFlags"    # I

    .line 152
    iget-object v0, p0, Landroid/view/OplusViewHooksImp;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getDrawingCacheBackgroundColor()I

    move-result v0

    .line 153
    .local v0, "drawingCacheBackgroundColor":I
    const/4 v1, 0x1

    .line 155
    .local v1, "clear":Z
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Landroid/view/OplusViewHooksImp;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 156
    .local v3, "width":I
    iget-object v4, p0, Landroid/view/OplusViewHooksImp;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 157
    .local v4, "height":I
    if-lez v3, :cond_9

    if-gtz v4, :cond_0

    goto/16 :goto_3

    .line 160
    :cond_0
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 161
    .local v5, "quality":Landroid/graphics/Bitmap$Config;
    iget-object v6, p0, Landroid/view/OplusViewHooksImp;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-static {v6, v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 163
    .local v6, "colorCustomBitmap":Landroid/graphics/Bitmap;
    iget-object v7, p0, Landroid/view/OplusViewHooksImp;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v6, v7}, Landroid/graphics/Bitmap;->setDensity(I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    .end local v3    # "width":I
    .end local v4    # "height":I
    .end local v5    # "quality":Landroid/graphics/Bitmap$Config;
    nop

    .line 168
    if-nez v6, :cond_1

    .line 169
    return-object v2

    .line 171
    :cond_1
    if-eqz v0, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    move v1, v3

    .line 173
    iget-object v3, p0, Landroid/view/OplusViewHooksImp;->mView:Landroid/view/View;

    iget-object v3, v3, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 174
    .local v3, "attachInfo":Landroid/view/View$AttachInfo;
    if-eqz v3, :cond_4

    .line 175
    iget-object v4, v3, Landroid/view/View$AttachInfo;->mCanvas:Landroid/graphics/Canvas;

    .line 176
    .local v4, "canvas":Landroid/graphics/Canvas;
    if-nez v4, :cond_3

    .line 177
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5}, Landroid/graphics/Canvas;-><init>()V

    move-object v4, v5

    .line 179
    :cond_3
    invoke-virtual {v4, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 184
    iput-object v2, v3, Landroid/view/View$AttachInfo;->mCanvas:Landroid/graphics/Canvas;

    goto :goto_1

    .line 187
    .end local v4    # "canvas":Landroid/graphics/Canvas;
    :cond_4
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 189
    .restart local v4    # "canvas":Landroid/graphics/Canvas;
    :goto_1
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    .line 190
    iget-object v5, v4, Landroid/graphics/Canvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v5, p1}, Landroid/graphics/IBaseCanvasExt;->setClipChildRect(Landroid/graphics/Rect;)V

    .line 191
    iget v5, p1, Landroid/graphics/Rect;->top:I

    if-le v5, p2, :cond_5

    .line 192
    iget v5, p1, Landroid/graphics/Rect;->left:I

    iget v7, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, p2

    iget v8, p1, Landroid/graphics/Rect;->right:I

    iget v9, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, p2

    invoke-virtual {v4, v5, v7, v8, v9}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 195
    :cond_5
    if-eqz v1, :cond_6

    .line 196
    invoke-virtual {v6, v0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 198
    :cond_6
    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    move-result v5

    .line 200
    .local v5, "restoreCount":I
    and-int/lit16 v7, p3, 0x80

    const/16 v8, 0x80

    if-ne v7, v8, :cond_7

    .line 201
    const v7, -0x200001

    and-int/2addr p3, v7

    .line 202
    iget-object v7, p0, Landroid/view/OplusViewHooksImp;->mView:Landroid/view/View;

    invoke-virtual {v7, v4}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 203
    iget-object v7, p0, Landroid/view/OplusViewHooksImp;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Landroid/view/OplusViewHooksImp;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewOverlay;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_8

    .line 204
    iget-object v7, p0, Landroid/view/OplusViewHooksImp;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewOverlay;->getOverlayView()Landroid/view/ViewGroup;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    .line 207
    :cond_7
    iget-object v7, p0, Landroid/view/OplusViewHooksImp;->mView:Landroid/view/View;

    invoke-virtual {v7, v4}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 209
    :cond_8
    :goto_2
    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 210
    iget-object v7, v4, Landroid/graphics/Canvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v7, v2}, Landroid/graphics/IBaseCanvasExt;->setClipChildRect(Landroid/graphics/Rect;)V

    .line 211
    invoke-virtual {v4, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 212
    return-object v6

    .line 158
    .end local v5    # "restoreCount":I
    .end local v6    # "colorCustomBitmap":Landroid/graphics/Bitmap;
    .local v3, "width":I
    .local v4, "height":I
    :cond_9
    :goto_3
    return-object v2

    .line 164
    .end local v3    # "width":I
    .end local v4    # "height":I
    :catch_0
    move-exception v3

    .line 165
    .local v3, "e":Ljava/lang/OutOfMemoryError;
    const/4 v4, 0x0

    .line 166
    .local v4, "colorCustomBitmap":Landroid/graphics/Bitmap;
    return-object v2
.end method

.method public whitelist getOverScrollMode(I)I
    .locals 1
    .param p1, "overScrollMode"    # I

    .line 121
    invoke-virtual {p0}, Landroid/view/OplusViewHooksImp;->getLongshotController()Lcom/oplus/screenshot/IOplusLongshotController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/oplus/screenshot/IOplusLongshotController;->getOverScrollMode(I)I

    move-result v0

    return v0
.end method

.method public blacklist getScrollBarEffect()Lcom/oplus/view/IOplusScrollBarEffect;
    .locals 1

    .line 100
    iget-object v0, p0, Landroid/view/OplusViewHooksImp;->mScrollBarEffect:Lcom/oplus/view/IOplusScrollBarEffect;

    return-object v0
.end method

.method public whitelist isLayoutRtl()Z
    .locals 1

    .line 85
    iget-object v0, p0, Landroid/view/OplusViewHooksImp;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v0

    return v0
.end method

.method public whitelist isLongshotConnected()Z
    .locals 1

    .line 131
    invoke-virtual {p0}, Landroid/view/OplusViewHooksImp;->getLongshotController()Lcom/oplus/screenshot/IOplusLongshotController;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/screenshot/IOplusLongshotController;->isLongshotConnected()Z

    move-result v0

    return v0
.end method

.method public whitelist isOplusOSStyle()Z
    .locals 2

    .line 113
    iget-object v0, p0, Landroid/view/OplusViewHooksImp;->mContextUtil:Lcom/oplus/util/OplusContextUtil;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Lcom/oplus/util/OplusContextUtil;

    iget-object v1, p0, Landroid/view/OplusViewHooksImp;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oplus/util/OplusContextUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/view/OplusViewHooksImp;->mContextUtil:Lcom/oplus/util/OplusContextUtil;

    .line 116
    :cond_0
    iget-object v0, p0, Landroid/view/OplusViewHooksImp;->mContextUtil:Lcom/oplus/util/OplusContextUtil;

    invoke-virtual {v0}, Lcom/oplus/util/OplusContextUtil;->isOplusOSStyle()Z

    move-result v0

    return v0
.end method

.method public whitelist isOplusStyle()Z
    .locals 2

    .line 105
    iget-object v0, p0, Landroid/view/OplusViewHooksImp;->mContextUtil:Lcom/oplus/util/OplusContextUtil;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Lcom/oplus/util/OplusContextUtil;

    iget-object v1, p0, Landroid/view/OplusViewHooksImp;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oplus/util/OplusContextUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/view/OplusViewHooksImp;->mContextUtil:Lcom/oplus/util/OplusContextUtil;

    .line 108
    :cond_0
    iget-object v0, p0, Landroid/view/OplusViewHooksImp;->mContextUtil:Lcom/oplus/util/OplusContextUtil;

    invoke-virtual {v0}, Lcom/oplus/util/OplusContextUtil;->isOplusStyle()Z

    move-result v0

    return v0
.end method

.method public whitelist needHook()Z
    .locals 1

    .line 228
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist overScrollBy(IIIIIIIIZIZ)Z
    .locals 12
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I
    .param p3, "scrollX"    # I
    .param p4, "scrollY"    # I
    .param p5, "scrollRangeX"    # I
    .param p6, "scrollRangeY"    # I
    .param p7, "maxOverScrollX"    # I
    .param p8, "maxOverScrollY"    # I
    .param p9, "isTouchEvent"    # Z
    .param p10, "oldScrollY"    # I
    .param p11, "result"    # Z

    .line 136
    invoke-virtual {p0}, Landroid/view/OplusViewHooksImp;->getLongshotController()Lcom/oplus/screenshot/IOplusLongshotController;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-interface/range {v0 .. v11}, Lcom/oplus/screenshot/IOplusLongshotController;->overScrollBy(IIIIIIIIZIZ)Z

    move-result v0

    return v0
.end method

.method public whitelist performClick()V
    .locals 3

    .line 142
    sget-object v0, Lcom/oplus/favorite/IOplusFavoriteManager;->DEFAULT:Lcom/oplus/favorite/IOplusFavoriteManager;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Lcom/oplus/favorite/IOplusFavoriteManager;

    .line 143
    .local v0, "favoriteManager":Lcom/oplus/favorite/IOplusFavoriteManager;
    iget-object v1, p0, Landroid/view/OplusViewHooksImp;->mView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/oplus/favorite/IOplusFavoriteManager;->processClick(Landroid/view/View;Lcom/oplus/favorite/OplusFavoriteCallback;)V

    .line 144
    iget-object v1, p0, Landroid/view/OplusViewHooksImp;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/oplus/favorite/IOplusFavoriteManager;->logViewInfo(Landroid/view/View;)V

    .line 145
    return-void
.end method
