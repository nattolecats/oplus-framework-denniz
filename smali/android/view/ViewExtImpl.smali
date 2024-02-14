.class public Landroid/view/ViewExtImpl;
.super Ljava/lang/Object;
.source "ViewExtImpl.java"

# interfaces
.implements Landroid/view/IViewExt;
.implements Lcom/oplus/screenshot/OplusLongshotViewInt;


# static fields
.field public static final blacklist CRUDE_STATE_BACKGROUND:I = 0x1

.field private static final blacklist DEPTH:I = 0x8

.field private static blacklist mDebugVersion:I

.field private static final blacklist mDebugWebView:Z


# instance fields
.field private blacklist mAssignNullStack:Ljava/lang/String;

.field private blacklist mCrudeState:I

.field private blacklist mFieldText:Ljava/lang/reflect/Field;

.field private blacklist mHasInit:Z

.field private blacklist mIsPreScrollConsumed:Z

.field protected blacklist mLayout:Landroid/text/Layout;

.field private blacklist mOplusViewPerfInjector:Landroid/view/performance/IOplusViewPerfInjector;

.field private blacklist mOriginWebSettingForceDark:I

.field public blacklist mTextJustificationHooksImpl:Landroid/text/ITextJustificationHooks;

.field private blacklist mView:Landroid/view/View;

.field protected blacklist mViewHooks:Landroid/view/IOplusViewHooks;

.field private blacklist mViewInfo:Landroid/view/autolayout/AutoLayoutViewInfo;

.field private blacklist mViewType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 61
    const-string v0, "persist.sys.view.debug_webview"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/ViewExtImpl;->mDebugWebView:Z

    .line 442
    const/4 v0, -0x1

    sput v0, Landroid/view/ViewExtImpl;->mDebugVersion:I

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 2
    .param p1, "view"    # Ljava/lang/Object;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewExtImpl;->mCrudeState:I

    .line 341
    const/4 v1, -0x1

    iput v1, p0, Landroid/view/ViewExtImpl;->mOriginWebSettingForceDark:I

    .line 342
    iput v0, p0, Landroid/view/ViewExtImpl;->mViewType:I

    .line 437
    iput-boolean v0, p0, Landroid/view/ViewExtImpl;->mIsPreScrollConsumed:Z

    .line 608
    iput-boolean v0, p0, Landroid/view/ViewExtImpl;->mHasInit:Z

    .line 74
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Landroid/view/ViewExtImpl;->mView:Landroid/view/View;

    .line 75
    new-instance v0, Landroid/view/performance/OplusViewPerfInjector;

    iget-object v1, p0, Landroid/view/ViewExtImpl;->mView:Landroid/view/View;

    invoke-direct {v0, v1}, Landroid/view/performance/OplusViewPerfInjector;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/view/ViewExtImpl;->mOplusViewPerfInjector:Landroid/view/performance/IOplusViewPerfInjector;

    .line 76
    return-void
.end method

.method private blacklist getAutoLayoutManager()Landroid/view/autolayout/IOplusAutoLayoutManager;
    .locals 2

    .line 795
    sget-object v0, Landroid/view/autolayout/IOplusAutoLayoutManager;->mDefault:Landroid/view/autolayout/IOplusAutoLayoutManager;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Landroid/view/autolayout/IOplusAutoLayoutManager;

    return-object v0
.end method

.method private blacklist getRgbNormalizeManager()Landroid/view/rgbnormalize/IOplusRGBNormalizeManager;
    .locals 2

    .line 802
    sget-object v0, Landroid/view/rgbnormalize/IOplusRGBNormalizeManager;->DEFAULT:Landroid/view/rgbnormalize/IOplusRGBNormalizeManager;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Landroid/view/rgbnormalize/IOplusRGBNormalizeManager;

    return-object v0
.end method


# virtual methods
.method public blacklist adjustImageViewLayerType(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 675
    iget-object v0, p0, Landroid/view/ViewExtImpl;->mOplusViewPerfInjector:Landroid/view/performance/IOplusViewPerfInjector;

    invoke-interface {v0}, Landroid/view/performance/IOplusViewPerfInjector;->getOplusAdjustlayerTypeInstance()Landroid/view/performance/IOplusAdjustlayerType;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/performance/IOplusAdjustlayerType;->adjustImageViewLayerType(II)V

    .line 676
    return-void
.end method

.method public blacklist adjustPendingLayertype(I)V
    .locals 1
    .param p1, "layerType"    # I

    .line 681
    iget-object v0, p0, Landroid/view/ViewExtImpl;->mOplusViewPerfInjector:Landroid/view/performance/IOplusViewPerfInjector;

    invoke-interface {v0}, Landroid/view/performance/IOplusViewPerfInjector;->getOplusAdjustlayerTypeInstance()Landroid/view/performance/IOplusAdjustlayerType;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/performance/IOplusAdjustlayerType;->adjustPendingLayertype(I)V

    .line 682
    return-void
.end method

.method public blacklist afterDraw(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .line 757
    invoke-direct {p0}, Landroid/view/ViewExtImpl;->getAutoLayoutManager()Landroid/view/autolayout/IOplusAutoLayoutManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/autolayout/IOplusAutoLayoutManager;->afterDraw(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 758
    return-void
.end method

.method public blacklist afterLayout(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 777
    invoke-direct {p0}, Landroid/view/ViewExtImpl;->getAutoLayoutManager()Landroid/view/autolayout/IOplusAutoLayoutManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/autolayout/IOplusAutoLayoutManager;->afterLayout(Landroid/view/View;)V

    .line 778
    return-void
.end method

.method public blacklist afterMeasure(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 767
    invoke-direct {p0}, Landroid/view/ViewExtImpl;->getAutoLayoutManager()Landroid/view/autolayout/IOplusAutoLayoutManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/autolayout/IOplusAutoLayoutManager;->afterMeasure(Landroid/view/View;)V

    .line 768
    return-void
.end method

.method protected blacklist awakenScrollBars()Z
    .locals 1

    .line 105
    iget-object v0, p0, Landroid/view/ViewExtImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->awakenScrollBars()Z

    move-result v0

    return v0
.end method

.method public blacklist beforeDraw(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .line 748
    invoke-direct {p0}, Landroid/view/ViewExtImpl;->getAutoLayoutManager()Landroid/view/autolayout/IOplusAutoLayoutManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/autolayout/IOplusAutoLayoutManager;->beforeDraw(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 751
    invoke-direct {p0}, Landroid/view/ViewExtImpl;->getRgbNormalizeManager()Landroid/view/rgbnormalize/IOplusRGBNormalizeManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/rgbnormalize/IOplusRGBNormalizeManager;->beforeDraw(Landroid/view/View;)V

    .line 753
    return-void
.end method

.method public blacklist beforeLayout(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 772
    invoke-direct {p0}, Landroid/view/ViewExtImpl;->getAutoLayoutManager()Landroid/view/autolayout/IOplusAutoLayoutManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/autolayout/IOplusAutoLayoutManager;->beforeLayout(Landroid/view/View;)V

    .line 773
    return-void
.end method

.method public blacklist beforeMeasure(Landroid/view/View;II)[I
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "widthMeasureSpec"    # I
    .param p3, "heightMeasureSpec"    # I

    .line 762
    invoke-direct {p0}, Landroid/view/ViewExtImpl;->getAutoLayoutManager()Landroid/view/autolayout/IOplusAutoLayoutManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/view/autolayout/IOplusAutoLayoutManager;->beforeMeasure(Landroid/view/View;II)[I

    move-result-object v0

    return-object v0
.end method

.method public blacklist beforeUpdateDisplayListIfDirty(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 743
    invoke-direct {p0}, Landroid/view/ViewExtImpl;->getAutoLayoutManager()Landroid/view/autolayout/IOplusAutoLayoutManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/autolayout/IOplusAutoLayoutManager;->beforeUpdateDisplayListIfDirty(Landroid/view/View;)V

    .line 744
    return-void
.end method

.method public whitelist canLongScroll()Z
    .locals 1

    .line 258
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewExtImpl;->canScrollVertically(I)Z

    move-result v0

    return v0
.end method

.method protected blacklist canScrollVertically(I)Z
    .locals 1
    .param p1, "i"    # I

    .line 262
    iget-object v0, p0, Landroid/view/ViewExtImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    return v0
.end method

.method public blacklist checkBoostAnimation(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 659
    iget-object v0, p0, Landroid/view/ViewExtImpl;->mOplusViewPerfInjector:Landroid/view/performance/IOplusViewPerfInjector;

    invoke-interface {v0, p1}, Landroid/view/performance/IOplusViewPerfInjector;->checkBoostAnimation(Landroid/view/animation/Animation;)V

    .line 660
    return-void
.end method

.method public blacklist checkBoostBuildDrawingCache()V
    .locals 1

    .line 662
    iget-object v0, p0, Landroid/view/ViewExtImpl;->mOplusViewPerfInjector:Landroid/view/performance/IOplusViewPerfInjector;

    invoke-interface {v0}, Landroid/view/performance/IOplusViewPerfInjector;->checkBoostBuildDrawingCache()V

    .line 663
    return-void
.end method

.method public blacklist checkBoostOnPerformClick(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .line 668
    iget-object v0, p0, Landroid/view/ViewExtImpl;->mOplusViewPerfInjector:Landroid/view/performance/IOplusViewPerfInjector;

    invoke-interface {v0, p1}, Landroid/view/performance/IOplusViewPerfInjector;->checkBoostOnPerformClick(Landroid/view/View$OnClickListener;)V

    .line 669
    return-void
.end method

.method public blacklist checkBoostTouchEvent(I)V
    .locals 1
    .param p1, "action"    # I

    .line 665
    iget-object v0, p0, Landroid/view/ViewExtImpl;->mOplusViewPerfInjector:Landroid/view/performance/IOplusViewPerfInjector;

    invoke-interface {v0, p1}, Landroid/view/performance/IOplusViewPerfInjector;->checkBoostTouchEvent(I)V

    .line 666
    return-void
.end method

.method public blacklist checkMutiTouchView()Z
    .locals 1

    .line 678
    iget-object v0, p0, Landroid/view/ViewExtImpl;->mOplusViewPerfInjector:Landroid/view/performance/IOplusViewPerfInjector;

    invoke-interface {v0}, Landroid/view/performance/IOplusViewPerfInjector;->getOplusAdjustlayerTypeInstance()Landroid/view/performance/IOplusAdjustlayerType;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/performance/IOplusAdjustlayerType;->checkMutiTouchView()Z

    move-result v0

    return v0
.end method

.method public blacklist checkNeedBoostedPropertyAnimator(Landroid/view/ViewPropertyAnimator;)V
    .locals 1
    .param p1, "animator"    # Landroid/view/ViewPropertyAnimator;

    .line 671
    iget-object v0, p0, Landroid/view/ViewExtImpl;->mOplusViewPerfInjector:Landroid/view/performance/IOplusViewPerfInjector;

    invoke-interface {v0, p1}, Landroid/view/performance/IOplusViewPerfInjector;->checkNeedBoostedPropertyAnimator(Landroid/view/ViewPropertyAnimator;)V

    .line 672
    return-void
.end method

.method public whitelist computeLongScrollExtent()I
    .locals 1

    .line 241
    invoke-virtual {p0}, Landroid/view/ViewExtImpl;->computeVerticalScrollExtent()I

    move-result v0

    return v0
.end method

.method public whitelist computeLongScrollOffset()I
    .locals 1

    .line 228
    invoke-virtual {p0}, Landroid/view/ViewExtImpl;->computeVerticalScrollOffset()I

    move-result v0

    return v0
.end method

.method public whitelist computeLongScrollRange()I
    .locals 1

    .line 215
    invoke-virtual {p0}, Landroid/view/ViewExtImpl;->computeVerticalScrollRange()I

    move-result v0

    return v0
.end method

.method protected blacklist computeVerticalScrollExtent()I
    .locals 1

    .line 245
    iget-object v0, p0, Landroid/view/ViewExtImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->computeVerticalScrollExtent()I

    move-result v0

    return v0
.end method

.method protected blacklist computeVerticalScrollOffset()I
    .locals 1

    .line 232
    iget-object v0, p0, Landroid/view/ViewExtImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewWrapper()Landroid/view/IViewWrapper;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IViewWrapper;->getScrollY()I

    move-result v0

    return v0
.end method

.method protected blacklist computeVerticalScrollRange()I
    .locals 1

    .line 219
    iget-object v0, p0, Landroid/view/ViewExtImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->computeVerticalScrollRange()I

    move-result v0

    return v0
.end method

.method public final blacklist debugWebViewDraw()Z
    .locals 1

    .line 412
    iget-object v0, p0, Landroid/view/ViewExtImpl;->mView:Landroid/view/View;

    instance-of v0, v0, Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 413
    sget-boolean v0, Landroid/view/ViewExtImpl;->mDebugWebView:Z

    return v0

    .line 415
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist disableOnClick(Landroid/view/View;Landroid/view/InputEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/InputEvent;

    .line 696
    invoke-static {}, Lcom/oplus/bracket/OplusBracketModeManager;->getInstance()Lcom/oplus/bracket/OplusBracketModeManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/oplus/bracket/OplusBracketModeManager;->disableOnClick(Landroid/view/View;Landroid/view/InputEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist findViewsLongshotInfo(Lcom/oplus/screenshot/OplusLongshotViewInfo;)Z
    .locals 1
    .param p1, "info"    # Lcom/oplus/screenshot/OplusLongshotViewInfo;

    .line 295
    iget-object v0, p0, Landroid/view/ViewExtImpl;->mViewHooks:Landroid/view/IOplusViewHooks;

    invoke-interface {v0, p1}, Landroid/view/IOplusViewHooks;->findViewsLongshotInfo(Lcom/oplus/screenshot/OplusLongshotViewInfo;)Z

    move-result v0

    return v0
.end method

.method public blacklist getColorCustomDrawingCache(Landroid/graphics/Rect;I)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "clip"    # Landroid/graphics/Rect;
    .param p2, "viewTop"    # I

    .line 431
    iget-object v0, p0, Landroid/view/ViewExtImpl;->mViewHooks:Landroid/view/IOplusViewHooks;

    iget-object v1, p0, Landroid/view/ViewExtImpl;->mView:Landroid/view/View;

    iget v1, v1, Landroid/view/View;->mPrivateFlags:I

    invoke-interface {v0, p1, p2, v1}, Landroid/view/IOplusViewHooks;->getOplusCustomDrawingCache(Landroid/graphics/Rect;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getContext()Landroid/content/Context;
    .locals 1

    .line 250
    iget-object v0, p0, Landroid/view/ViewExtImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCrudeState()I
    .locals 1

    .line 371
    iget v0, p0, Landroid/view/ViewExtImpl;->mCrudeState:I

    return v0
.end method

.method public blacklist getDrawableRenderNode(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .line 500
    sget-object v0, Lcom/oplus/darkmode/IOplusDarkModeManager;->DEFAULT:Lcom/oplus/darkmode/IOplusDarkModeManager;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Lcom/oplus/darkmode/IOplusDarkModeManager;

    invoke-interface {v0, p1, p2}, Lcom/oplus/darkmode/IOplusDarkModeManager;->markBackground(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 502
    return-void
.end method

.method public blacklist getOplusViewPerfInjector()Landroid/view/performance/IOplusViewPerfInjector;
    .locals 1

    .line 83
    iget-object v0, p0, Landroid/view/ViewExtImpl;->mOplusViewPerfInjector:Landroid/view/performance/IOplusViewPerfInjector;

    return-object v0
.end method

.method public blacklist getOplusViewType()I
    .locals 1

    .line 346
    iget v0, p0, Landroid/view/ViewExtImpl;->mViewType:I

    return v0
.end method

.method public blacklist getOriginWebSettingForceDark()I
    .locals 1

    .line 361
    iget v0, p0, Landroid/view/ViewExtImpl;->mOriginWebSettingForceDark:I

    return v0
.end method

.method public blacklist getParaSpacing()F
    .locals 1

    .line 420
    iget-object v0, p0, Landroid/view/ViewExtImpl;->mTextJustificationHooksImpl:Landroid/text/ITextJustificationHooks;

    if-eqz v0, :cond_0

    .line 421
    invoke-interface {v0, p0}, Landroid/text/ITextJustificationHooks;->getTextViewParaSpacing(Ljava/lang/Object;)F

    move-result v0

    return v0

    .line 423
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected blacklist getRenderNode()Landroid/graphics/OplusBaseRenderNode;
    .locals 1

    .line 389
    iget-object v0, p0, Landroid/view/ViewExtImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewWrapper()Landroid/view/IViewWrapper;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IViewWrapper;->getRenderNode()Landroid/graphics/RenderNode;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getScrollX()I
    .locals 1

    .line 87
    iget-object v0, p0, Landroid/view/ViewExtImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewWrapper()Landroid/view/IViewWrapper;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IViewWrapper;->getScrollX()I

    move-result v0

    return v0
.end method

.method public blacklist getScrollY()I
    .locals 1

    .line 92
    iget-object v0, p0, Landroid/view/ViewExtImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewWrapper()Landroid/view/IViewWrapper;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IViewWrapper;->getScrollY()I

    move-result v0

    return v0
.end method

.method public blacklist getTextViewDefaultLineMulti(Ljava/lang/Object;FF)F
    .locals 1
    .param p1, "textview"    # Ljava/lang/Object;
    .param p2, "pxSize"    # F
    .param p3, "oriValue"    # F

    .line 568
    iget-object v0, p0, Landroid/view/ViewExtImpl;->mTextJustificationHooksImpl:Landroid/text/ITextJustificationHooks;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/ITextJustificationHooks;->getTextViewDefaultLineMulti(Ljava/lang/Object;FF)F

    move-result v0

    return v0
.end method

.method public blacklist getTextViewParaSpacing(Ljava/lang/Object;)F
    .locals 1
    .param p1, "textview"    # Ljava/lang/Object;

    .line 573
    iget-object v0, p0, Landroid/view/ViewExtImpl;->mTextJustificationHooksImpl:Landroid/text/ITextJustificationHooks;

    invoke-interface {v0, p1}, Landroid/text/ITextJustificationHooks;->getTextViewParaSpacing(Ljava/lang/Object;)F

    move-result v0

    return v0
.end method

.method public blacklist getView()Landroid/view/View;
    .locals 1

    .line 652
    iget-object v0, p0, Landroid/view/ViewExtImpl;->mView:Landroid/view/View;

    return-object v0
.end method

.method public blacklist getViewInfo()Ljava/lang/Object;
    .locals 1

    .line 782
    iget-object v0, p0, Landroid/view/ViewExtImpl;->mViewInfo:Landroid/view/autolayout/AutoLayoutViewInfo;

    if-nez v0, :cond_0

    .line 783
    new-instance v0, Landroid/view/autolayout/AutoLayoutViewInfo;

    invoke-direct {v0}, Landroid/view/autolayout/AutoLayoutViewInfo;-><init>()V

    iput-object v0, p0, Landroid/view/ViewExtImpl;->mViewInfo:Landroid/view/autolayout/AutoLayoutViewInfo;

    .line 786
    :cond_0
    iget-object v0, p0, Landroid/view/ViewExtImpl;->mViewInfo:Landroid/view/autolayout/AutoLayoutViewInfo;

    return-object v0
.end method

.method public blacklist getViewRootImpl()Landroid/view/IViewRootImplExt;
    .locals 1

    .line 583
    iget-object v0, p0, Landroid/view/ViewExtImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Landroid/view/ViewExtImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getWrapper()Landroid/view/IViewRootImplWrapper;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IViewRootImplWrapper;->getExtImpl()Landroid/view/IViewRootImplExt;

    move-result-object v0

    return-object v0

    .line 586
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected blacklist getVisibility()I
    .locals 1

    .line 279
    iget-object v0, p0, Landroid/view/ViewExtImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    return v0
.end method

.method public blacklist hookAfterDispatchDraw(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .line 476
    sget-object v0, Lcom/oplus/darkmode/IOplusDarkModeManager;->DEFAULT:Lcom/oplus/darkmode/IOplusDarkModeManager;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Lcom/oplus/darkmode/IOplusDarkModeManager;

    invoke-interface {v0, p1, p2}, Lcom/oplus/darkmode/IOplusDarkModeManager;->markDrawFadingEdge(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 478
    return-void
.end method

.method public blacklist hookAfterDrawCanvas(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .line 484
    sget-object v0, Lcom/oplus/darkmode/IOplusDarkModeManager;->DEFAULT:Lcom/oplus/darkmode/IOplusDarkModeManager;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Lcom/oplus/darkmode/IOplusDarkModeManager;

    invoke-interface {v0, p1, p2}, Lcom/oplus/darkmode/IOplusDarkModeManager;->markForeground(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 486
    return-void
.end method

.method public blacklist hookAssignParent(Landroid/view/ViewParent;)V
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewParent;

    .line 459
    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewExtImpl;->isDebugVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mParent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ViewExtImpl;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewWrapper()Landroid/view/IViewWrapper;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/IViewWrapper;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " parent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewExtImpl;->mAssignNullStack:Ljava/lang/String;

    .line 462
    :cond_0
    return-void
.end method

.method public blacklist hookDispatchNestedScroll()Z
    .locals 1

    .line 549
    invoke-virtual {p0}, Landroid/view/ViewExtImpl;->isOplusOSStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 550
    iget-boolean v0, p0, Landroid/view/ViewExtImpl;->mIsPreScrollConsumed:Z

    return v0

    .line 552
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist hookDrawBackground(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .line 492
    sget-object v0, Lcom/oplus/darkmode/IOplusDarkModeManager;->DEFAULT:Lcom/oplus/darkmode/IOplusDarkModeManager;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Lcom/oplus/darkmode/IOplusDarkModeManager;

    invoke-interface {v0, p1, p2}, Lcom/oplus/darkmode/IOplusDarkModeManager;->markBackground(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 494
    return-void
.end method

.method public blacklist hookIsTouchPressed()Z
    .locals 1

    .line 602
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hookOverScrollBy(IIII)V
    .locals 1
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "scrollRangeX"    # I
    .param p4, "scrollRangeY"    # I

    .line 533
    iget-object v0, p0, Landroid/view/ViewExtImpl;->mViewHooks:Landroid/view/IOplusViewHooks;

    invoke-interface {v0}, Landroid/view/IOplusViewHooks;->getScrollBarEffect()Lcom/oplus/view/IOplusScrollBarEffect;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/oplus/view/IOplusScrollBarEffect;->onOverScrolled(IIII)V

    .line 535
    return-void
.end method

.method protected blacklist hookOverScrollBy(IIIIIIIIZ)Z
    .locals 25
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I
    .param p3, "scrollX"    # I
    .param p4, "scrollY"    # I
    .param p5, "scrollRangeX"    # I
    .param p6, "scrollRangeY"    # I
    .param p7, "maxOverScrollX"    # I
    .param p8, "maxOverScrollY"    # I
    .param p9, "isTouchEvent"    # Z

    .line 314
    move-object/from16 v10, p0

    iget-object v0, v10, Landroid/view/ViewExtImpl;->mViewHooks:Landroid/view/IOplusViewHooks;

    invoke-interface {v0}, Landroid/view/IOplusViewHooks;->isLongshotConnected()Z

    move-result v11

    .line 315
    .local v11, "isLongshotConnected":Z
    if-eqz v11, :cond_0

    .line 316
    const/4 v0, 0x0

    move/from16 v24, v0

    .end local p8    # "maxOverScrollY":I
    .local v0, "maxOverScrollY":I
    goto :goto_0

    .line 315
    .end local v0    # "maxOverScrollY":I
    .restart local p8    # "maxOverScrollY":I
    :cond_0
    move/from16 v24, p8

    .line 318
    .end local p8    # "maxOverScrollY":I
    .local v24, "maxOverScrollY":I
    :goto_0
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, v24

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Landroid/view/ViewExtImpl;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    .line 321
    .local v0, "result":Z
    if-eqz v11, :cond_1

    .line 322
    iget-object v12, v10, Landroid/view/ViewExtImpl;->mViewHooks:Landroid/view/IOplusViewHooks;

    .line 324
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewExtImpl;->getScrollY()I

    move-result v22

    .line 322
    move/from16 v13, p1

    move/from16 v14, p2

    move/from16 v15, p3

    move/from16 v16, p4

    move/from16 v17, p5

    move/from16 v18, p6

    move/from16 v19, p7

    move/from16 v20, v24

    move/from16 v21, p9

    move/from16 v23, v0

    invoke-interface/range {v12 .. v23}, Landroid/view/IOplusViewHooks;->overScrollBy(IIIIIIIIZIZ)Z

    move-result v0

    .line 326
    :cond_1
    return v0
.end method

.method public blacklist hookPerformClick()V
    .locals 1

    .line 200
    iget-object v0, p0, Landroid/view/ViewExtImpl;->mViewHooks:Landroid/view/IOplusViewHooks;

    if-eqz v0, :cond_0

    .line 201
    invoke-interface {v0}, Landroid/view/IOplusViewHooks;->performClick()V

    .line 203
    :cond_0
    return-void
.end method

.method public blacklist hookRequestLayout()V
    .locals 3

    .line 517
    :try_start_0
    iget-object v0, p0, Landroid/view/ViewExtImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewWrapper()Landroid/view/IViewWrapper;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IViewWrapper;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->requestLayout()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    nop

    .line 527
    return-void

    .line 518
    :catch_0
    move-exception v0

    .line 519
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {p0}, Landroid/view/ViewExtImpl;->isDebugVersion()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 520
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAssignNullStack:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/ViewExtImpl;->mAssignNullStack:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "View"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    :cond_0
    throw v0
.end method

.method public blacklist hookScrollBar()Lcom/oplus/view/IOplusScrollBarEffect;
    .locals 1

    .line 591
    iget-object v0, p0, Landroid/view/ViewExtImpl;->mViewHooks:Landroid/view/IOplusViewHooks;

    invoke-interface {v0}, Landroid/view/IOplusViewHooks;->getScrollBarEffect()Lcom/oplus/view/IOplusScrollBarEffect;

    move-result-object v0

    return-object v0
.end method

.method public blacklist hookSetLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 791
    invoke-direct {p0}, Landroid/view/ViewExtImpl;->getAutoLayoutManager()Landroid/view/autolayout/IOplusAutoLayoutManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/autolayout/IOplusAutoLayoutManager;->hookSetLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public blacklist hookSizeChange(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 508
    sget-object v0, Lcom/oplus/darkmode/IOplusDarkModeManager;->DEFAULT:Lcom/oplus/darkmode/IOplusDarkModeManager;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Lcom/oplus/darkmode/IOplusDarkModeManager;

    invoke-interface {v0, p1}, Lcom/oplus/darkmode/IOplusDarkModeManager;->markViewTypeBySize(Landroid/view/View;)V

    .line 510
    return-void
.end method

.method public blacklist hookStartDraw(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .line 468
    sget-object v0, Lcom/oplus/darkmode/IOplusDarkModeManager;->DEFAULT:Lcom/oplus/darkmode/IOplusDarkModeManager;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Lcom/oplus/darkmode/IOplusDarkModeManager;

    invoke-interface {v0, p1, p2}, Lcom/oplus/darkmode/IOplusDarkModeManager;->markOnDraw(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 470
    return-void
.end method

.method public blacklist hookTextView(Landroid/text/Layout;)V
    .locals 3
    .param p1, "mlayout"    # Landroid/text/Layout;

    .line 561
    invoke-static {}, Landroid/common/OplusFrameworkFactory;->getInstance()Landroid/common/OplusFrameworkFactory;

    move-result-object v0

    sget-object v1, Landroid/text/ITextJustificationHooks;->DEFAULT:Landroid/text/ITextJustificationHooks;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/common/OplusFrameworkFactory;->getFeature(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Landroid/text/ITextJustificationHooks;

    iput-object v0, p0, Landroid/view/ViewExtImpl;->mTextJustificationHooksImpl:Landroid/text/ITextJustificationHooks;

    .line 562
    iput-object p1, p0, Landroid/view/ViewExtImpl;->mLayout:Landroid/text/Layout;

    .line 564
    return-void
.end method

.method public blacklist ignoreSpecailViewDescendantInvalidated(Landroid/view/ViewParent;)V
    .locals 1
    .param p1, "p"    # Landroid/view/ViewParent;

    .line 686
    iget-object v0, p0, Landroid/view/ViewExtImpl;->mOplusViewPerfInjector:Landroid/view/performance/IOplusViewPerfInjector;

    invoke-interface {v0, p1}, Landroid/view/performance/IOplusViewPerfInjector;->ignoreSpecailViewDescendantInvalidated(Landroid/view/ViewParent;)V

    .line 687
    return-void
.end method

.method public blacklist initView()V
    .locals 1

    .line 655
    iget-object v0, p0, Landroid/view/ViewExtImpl;->mOplusViewPerfInjector:Landroid/view/performance/IOplusViewPerfInjector;

    invoke-interface {v0}, Landroid/view/performance/IOplusViewPerfInjector;->initView()V

    .line 656
    return-void
.end method

.method public blacklist initViewHooks(Landroid/content/res/Resources;)V
    .locals 5
    .param p1, "r"    # Landroid/content/res/Resources;

    .line 80
    invoke-static {}, Landroid/common/OplusFrameworkFactory;->getInstance()Landroid/common/OplusFrameworkFactory;

    move-result-object v0

    sget-object v1, Landroid/view/IOplusViewHooks;->DEFAULT:Landroid/view/IOplusViewHooks;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Landroid/view/ViewExtImpl;->mView:Landroid/view/View;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/common/OplusFrameworkFactory;->getFeature(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Landroid/view/IOplusViewHooks;

    iput-object v0, p0, Landroid/view/ViewExtImpl;->mViewHooks:Landroid/view/IOplusViewHooks;

    .line 81
    return-void
.end method

.method public blacklist initialAwakenScrollBars()Z
    .locals 1

    .line 596
    iget-object v0, p0, Landroid/view/ViewExtImpl;->mViewHooks:Landroid/view/IOplusViewHooks;

    invoke-interface {v0}, Landroid/view/IOplusViewHooks;->needHook()Z

    move-result v0

    return v0
.end method

.method protected blacklist invalidate()V
    .locals 1

    .line 393
    iget-object v0, p0, Landroid/view/ViewExtImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 394
    return-void
.end method

.method protected greylist invalidateParentCaches()V
    .locals 1

    .line 101
    iget-object v0, p0, Landroid/view/ViewExtImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidateParentCaches()V

    .line 102
    return-void
.end method

.method public blacklist isClickDisabled()Z
    .locals 1

    .line 703
    iget-object v0, p0, Landroid/view/ViewExtImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 704
    iget-object v0, p0, Landroid/view/ViewExtImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getWrapper()Landroid/view/IViewRootImplWrapper;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IViewRootImplWrapper;->getExtImpl()Landroid/view/IViewRootImplExt;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IViewRootImplExt;->isClickDisabled()Z

    move-result v0

    return v0

    .line 706
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method blacklist isDebugVersion()Z
    .locals 2

    .line 449
    sget v0, Landroid/view/ViewExtImpl;->mDebugVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 450
    const-string v0, "persist.sys.agingtest"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput v0, Landroid/view/ViewExtImpl;->mDebugVersion:I

    .line 452
    :cond_0
    sget v0, Landroid/view/ViewExtImpl;->mDebugVersion:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public blacklist isIgnoreSpecailViewDescendantInvalidated()Z
    .locals 1

    .line 691
    iget-object v0, p0, Landroid/view/ViewExtImpl;->mOplusViewPerfInjector:Landroid/view/performance/IOplusViewPerfInjector;

    invoke-interface {v0}, Landroid/view/performance/IOplusViewPerfInjector;->isIgnoreSpecailViewDescendantInvalidated()Z

    move-result v0

    return v0
.end method

.method public whitelist isLongshotVisibleToUser()Z
    .locals 1

    .line 271
    invoke-virtual {p0}, Landroid/view/ViewExtImpl;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    const/4 v0, 0x0

    return v0

    .line 274
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewExtImpl;->isVisibleToUser()Z

    move-result v0

    return v0
.end method

.method public blacklist isOplusOSStyle()Z
    .locals 1

    .line 192
    iget-object v0, p0, Landroid/view/ViewExtImpl;->mViewHooks:Landroid/view/IOplusViewHooks;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/IOplusViewHooks;->isOplusOSStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isOplusStyle()Z
    .locals 1

    .line 184
    iget-object v0, p0, Landroid/view/ViewExtImpl;->mViewHooks:Landroid/view/IOplusViewHooks;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/IOplusViewHooks;->isOplusStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected blacklist isVisibleToUser()Z
    .locals 1

    .line 287
    iget-object v0, p0, Landroid/view/ViewExtImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isVisibleToUser()Z

    move-result v0

    return v0
.end method

.method public blacklist logEvent(ILjava/lang/String;Landroid/view/InputEvent;Ljava/lang/String;)V
    .locals 2
    .param p1, "level"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "event"    # Landroid/view/InputEvent;
    .param p4, "info"    # Ljava/lang/String;

    .line 630
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 631
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/oplus/debug/InputLog;->isLevelDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/ViewExtImpl;->mView:Landroid/view/View;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/view/ViewExtImpl;->mView:Landroid/view/View;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lcom/oplus/debug/InputLog;->debugEventHandled(Ljava/lang/String;Landroid/view/InputEvent;Ljava/lang/String;)V

    goto :goto_1

    .line 632
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 633
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/oplus/debug/InputLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 634
    :cond_2
    const/16 v0, 0x15

    if-ne p1, v0, :cond_4

    .line 635
    instance-of v0, p3, Landroid/view/KeyEvent;

    if-eqz v0, :cond_3

    .line 636
    move-object v0, p3

    check-cast v0, Landroid/view/KeyEvent;

    .line 637
    .local v0, "kev":Landroid/view/KeyEvent;
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    invoke-static {v1}, Lcom/oplus/debug/InputLog;->isVerboseAction(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 638
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/oplus/debug/InputLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 640
    .end local v0    # "kev":Landroid/view/KeyEvent;
    :cond_3
    instance-of v0, p3, Landroid/view/MotionEvent;

    if-eqz v0, :cond_4

    .line 641
    move-object v0, p3

    check-cast v0, Landroid/view/MotionEvent;

    .line 642
    .local v0, "mev":Landroid/view/MotionEvent;
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-static {v1}, Lcom/oplus/debug/InputLog;->isVerboseAction(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 643
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/oplus/debug/InputLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    nop

    .line 647
    .end local v0    # "mev":Landroid/view/MotionEvent;
    :cond_4
    :goto_1
    return-void
.end method

.method public whitelist onLongshotOverScrolled(IIZZ)V
    .locals 0
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .line 303
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/ViewExtImpl;->onOverScrolled(IIZZ)V

    .line 304
    return-void
.end method

.method protected blacklist onOverScrolled(IIZZ)V
    .locals 0
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .line 308
    return-void
.end method

.method protected blacklist onScrollChanged(IIII)V
    .locals 1
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .line 109
    iget-object v0, p0, Landroid/view/ViewExtImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 110
    return-void
.end method

.method public blacklist onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 540
    return-void
.end method

.method protected blacklist overScrollBy(IIIIIIIIZ)Z
    .locals 11
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I
    .param p3, "scrollX"    # I
    .param p4, "scrollY"    # I
    .param p5, "scrollRangeX"    # I
    .param p6, "scrollRangeY"    # I
    .param p7, "maxOverScrollX"    # I
    .param p8, "maxOverScrollY"    # I
    .param p9, "isTouchEvent"    # Z

    .line 330
    move-object v0, p0

    iget-object v1, v0, Landroid/view/ViewExtImpl;->mView:Landroid/view/View;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Landroid/view/View;->overScrollBy(IIIIIIIIZ)Z

    move-result v1

    return v1
.end method

.method public blacklist postInvalidateOnAnimation()V
    .locals 1

    .line 113
    iget-object v0, p0, Landroid/view/ViewExtImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 114
    return-void
.end method

.method public blacklist setContentDescriptionForFieldAndSetRealClassName(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 610
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 612
    :try_start_0
    iget-boolean v0, p0, Landroid/view/ViewExtImpl;->mHasInit:Z

    if-nez v0, :cond_0

    .line 613
    invoke-static {}, Lcom/oplus/util/OplusReflectDataUtils;->getInstance()Lcom/oplus/util/OplusReflectDataUtils;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/ViewExtImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/view/ViewExtImpl;->mView:Landroid/view/View;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oplus/util/OplusReflectDataUtils;->getTextField(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewExtImpl;->mFieldText:Ljava/lang/reflect/Field;

    .line 614
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewExtImpl;->mHasInit:Z

    .line 616
    :cond_0
    iget-object v0, p0, Landroid/view/ViewExtImpl;->mFieldText:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    .line 617
    iget-object v1, p0, Landroid/view/ViewExtImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 621
    :cond_1
    goto :goto_0

    .line 619
    :catch_0
    move-exception v0

    .line 620
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 623
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    return-void
.end method

.method public blacklist setCrudeState(I)V
    .locals 0
    .param p1, "state"    # I

    .line 366
    iput p1, p0, Landroid/view/ViewExtImpl;->mCrudeState:I

    .line 367
    return-void
.end method

.method public blacklist setLayout(Landroid/text/Layout;)V
    .locals 0
    .param p1, "layout"    # Landroid/text/Layout;

    .line 578
    iput-object p1, p0, Landroid/view/ViewExtImpl;->mLayout:Landroid/text/Layout;

    .line 579
    return-void
.end method

.method public blacklist setOplusResampleTouch(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 715
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOplusResampleTouch, enabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "View"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    const/4 v0, 0x0

    .line 717
    .local v0, "windowInputEventReceiver":Landroid/view/ViewRootImpl$WindowInputEventReceiver;
    iget-object v2, p0, Landroid/view/ViewExtImpl;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 718
    iget-object v2, p0, Landroid/view/ViewExtImpl;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getWrapper()Landroid/view/IViewRootImplWrapper;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/IViewRootImplWrapper;->getInputEventReceiver()Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    move-result-object v0

    .line 720
    :cond_0
    if-eqz v0, :cond_1

    .line 721
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->setOplusResampleTouch(Z)V

    goto :goto_0

    .line 723
    :cond_1
    const-string v2, "setOplusResampleTouch failed, windowInputEventReceiver is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    :goto_0
    return-void
.end method

.method public blacklist setOplusViewTypeLocked(I)V
    .locals 0
    .param p1, "viewType"    # I

    .line 351
    iput p1, p0, Landroid/view/ViewExtImpl;->mViewType:I

    .line 352
    return-void
.end method

.method public blacklist setOriginWebSettingForceDark(I)V
    .locals 0
    .param p1, "forceDark"    # I

    .line 356
    iput p1, p0, Landroid/view/ViewExtImpl;->mOriginWebSettingForceDark:I

    .line 357
    return-void
.end method

.method public blacklist setParaSpacing(F)V
    .locals 2
    .param p1, "add"    # F

    .line 403
    iget-object v0, p0, Landroid/view/ViewExtImpl;->mTextJustificationHooksImpl:Landroid/text/ITextJustificationHooks;

    if-eqz v0, :cond_0

    .line 404
    iget-object v1, p0, Landroid/view/ViewExtImpl;->mLayout:Landroid/text/Layout;

    invoke-interface {v0, p0, p1, v1}, Landroid/text/ITextJustificationHooks;->setTextViewParaSpacing(Ljava/lang/Object;FLandroid/text/Layout;)V

    .line 406
    :cond_0
    return-void
.end method

.method public blacklist setScrollXForColor(I)V
    .locals 4
    .param p1, "x"    # I

    .line 142
    invoke-virtual {p0}, Landroid/view/ViewExtImpl;->getScrollX()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 143
    invoke-virtual {p0}, Landroid/view/ViewExtImpl;->getScrollX()I

    move-result v0

    .line 144
    .local v0, "oldX":I
    invoke-virtual {p0, p1}, Landroid/view/ViewExtImpl;->setValueScrollX(I)V

    .line 146
    invoke-virtual {p0}, Landroid/view/ViewExtImpl;->invalidateParentCaches()V

    .line 147
    invoke-virtual {p0}, Landroid/view/ViewExtImpl;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewExtImpl;->getScrollY()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewExtImpl;->getScrollY()I

    move-result v3

    invoke-virtual {p0, v1, v2, v0, v3}, Landroid/view/ViewExtImpl;->onScrollChanged(IIII)V

    .line 148
    invoke-virtual {p0}, Landroid/view/ViewExtImpl;->awakenScrollBars()Z

    move-result v1

    if-nez v1, :cond_0

    .line 149
    invoke-virtual {p0}, Landroid/view/ViewExtImpl;->postInvalidateOnAnimation()V

    .line 152
    .end local v0    # "oldX":I
    :cond_0
    return-void
.end method

.method public blacklist setScrollYForColor(I)V
    .locals 4
    .param p1, "y"    # I

    .line 165
    invoke-virtual {p0}, Landroid/view/ViewExtImpl;->getScrollY()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 166
    invoke-virtual {p0}, Landroid/view/ViewExtImpl;->getScrollY()I

    move-result v0

    .line 167
    .local v0, "oldY":I
    invoke-virtual {p0, p1}, Landroid/view/ViewExtImpl;->setValueScrollY(I)V

    .line 169
    invoke-virtual {p0}, Landroid/view/ViewExtImpl;->invalidateParentCaches()V

    .line 170
    invoke-virtual {p0}, Landroid/view/ViewExtImpl;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewExtImpl;->getScrollY()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewExtImpl;->getScrollX()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/view/ViewExtImpl;->onScrollChanged(IIII)V

    .line 171
    invoke-virtual {p0}, Landroid/view/ViewExtImpl;->awakenScrollBars()Z

    move-result v1

    if-nez v1, :cond_0

    .line 172
    invoke-virtual {p0}, Landroid/view/ViewExtImpl;->postInvalidateOnAnimation()V

    .line 175
    .end local v0    # "oldY":I
    :cond_0
    return-void
.end method

.method public blacklist setUsageForceDarkAlgorithmType(I)V
    .locals 1
    .param p1, "type"    # I

    .line 378
    invoke-virtual {p0}, Landroid/view/ViewExtImpl;->getRenderNode()Landroid/graphics/OplusBaseRenderNode;

    move-result-object v0

    .line 379
    .local v0, "mRenderNode":Landroid/graphics/OplusBaseRenderNode;
    if-eqz v0, :cond_0

    .line 380
    invoke-virtual {v0, p1}, Landroid/graphics/OplusBaseRenderNode;->setUsageForceDarkAlgorithmType(I)V

    .line 381
    invoke-virtual {p0}, Landroid/view/ViewExtImpl;->invalidate()V

    .line 383
    :cond_0
    return-void
.end method

.method protected blacklist setValueScrollX(I)V
    .locals 1
    .param p1, "value"    # I

    .line 127
    iget-object v0, p0, Landroid/view/ViewExtImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewWrapper()Landroid/view/IViewWrapper;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/IViewWrapper;->setScrollX(I)V

    .line 128
    return-void
.end method

.method protected blacklist setValueScrollY(I)V
    .locals 1
    .param p1, "value"    # I

    .line 120
    iget-object v0, p0, Landroid/view/ViewExtImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewWrapper()Landroid/view/IViewWrapper;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/IViewWrapper;->setScrollY(I)V

    .line 121
    return-void
.end method

.method public blacklist shouldFilterByMultiSearch(Landroid/content/res/Resources;)Z
    .locals 2
    .param p1, "resources"    # Landroid/content/res/Resources;

    .line 732
    if-eqz p1, :cond_0

    .line 733
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    if-eqz v0, :cond_0

    .line 734
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 732
    :goto_0
    return v0
.end method
