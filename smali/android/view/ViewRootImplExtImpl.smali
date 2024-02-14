.class public Landroid/view/ViewRootImplExtImpl;
.super Ljava/lang/Object;
.source "ViewRootImplExtImpl.java"

# interfaces
.implements Landroid/view/IViewRootImplExt;


# static fields
.field private static final blacklist DEBUG_CANCELDRAW_COUNT:I = 0x32

.field private static final blacklist IS_OSIE_NEED_NO_COMPRESS:Z

.field private static final blacklist MIRAGE_APP_SHARE_DISPALY:Ljava/lang/String; = "Mirage_appshare_display"

.field private static final blacklist MIRAGE_ID_BASE:I = 0x2710

.field private static final blacklist MIRAGE_ID_TVMODE:I = 0x7e4

.field private static final blacklist PACKAGES_NEED_SHOW_SURFACE_VIEW_BG:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "ViewRootImplExtImpl"


# instance fields
.field private blacklist mCancelDrawCount:I

.field public blacklist mManager:Lcom/oplus/darkmode/IOplusDarkModeManager;

.field private blacklist mOplusLetterBoxedTouchpadHelper:Landroid/view/OplusLetterBoxedTouchpadHelper;

.field private blacklist mOplusRefreshRateInjector:Lcom/oplus/screenmode/OplusRefreshRateInjector;

.field private blacklist mOplusScrollToTopManager:Landroid/view/IOplusScrollToTopManager;

.field private blacklist mOplusViewRootPerfInjector:Landroid/view/performance/IOplusViewRootPerfInjector;

.field private blacklist mSplitScreenImmersiveEnable:Z

.field private blacklist mSystemUINavigationGesture:Landroid/view/IOplusSystemUINavigationGesture;

.field public blacklist mViewRootHooks:Landroid/view/OplusViewRootImplHooks;

.field private blacklist mViewRootImpl:Landroid/view/ViewRootImpl;

.field private blacklist mZoomWindowHelper:Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 73
    const-string v0, "com.tencent.qqlive"

    const-string v1, "com.qiyi.video"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/view/ViewRootImplExtImpl;->PACKAGES_NEED_SHOW_SURFACE_VIEW_BG:Ljava/util/List;

    .line 77
    const-string v0, "debug.sys.osie.neednocompress"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/ViewRootImplExtImpl;->IS_OSIE_NEED_NO_COMPRESS:Z

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "base"    # Ljava/lang/Object;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewRootImplExtImpl;->mManager:Lcom/oplus/darkmode/IOplusDarkModeManager;

    .line 99
    iput-object v0, p0, Landroid/view/ViewRootImplExtImpl;->mOplusRefreshRateInjector:Lcom/oplus/screenmode/OplusRefreshRateInjector;

    .line 123
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewRootImplExtImpl;->mCancelDrawCount:I

    .line 126
    move-object v0, p1

    check-cast v0, Landroid/view/ViewRootImpl;

    iput-object v0, p0, Landroid/view/ViewRootImplExtImpl;->mViewRootImpl:Landroid/view/ViewRootImpl;

    .line 127
    return-void
.end method

.method private blacklist initScrollToTopManager()V
    .locals 2

    .line 653
    iget-object v0, p0, Landroid/view/ViewRootImplExtImpl;->mOplusScrollToTopManager:Landroid/view/IOplusScrollToTopManager;

    if-nez v0, :cond_0

    .line 654
    sget-object v0, Landroid/view/IOplusScrollToTopManager;->DEFAULT:Landroid/view/IOplusScrollToTopManager;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Landroid/view/IOplusScrollToTopManager;

    invoke-interface {v0}, Landroid/view/IOplusScrollToTopManager;->newInstance()Landroid/view/IOplusScrollToTopManager;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImplExtImpl;->mOplusScrollToTopManager:Landroid/view/IOplusScrollToTopManager;

    .line 656
    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist adjustWindowInsetsForDispatchIfNeed(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1
    .param p1, "windowInsets"    # Landroid/view/WindowInsets;

    .line 744
    iget-boolean v0, p0, Landroid/view/ViewRootImplExtImpl;->mSplitScreenImmersiveEnable:Z

    if-eqz v0, :cond_0

    .line 745
    invoke-virtual {p1}, Landroid/view/WindowInsets;->removeCutoutInsets()Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0

    .line 747
    :cond_0
    return-object p1
.end method

.method public blacklist changeSystemUiVisibility(I)I
    .locals 1
    .param p1, "mSystemUiVisibility"    # I

    .line 188
    iget-object v0, p0, Landroid/view/ViewRootImplExtImpl;->mManager:Lcom/oplus/darkmode/IOplusDarkModeManager;

    invoke-interface {v0, p1}, Lcom/oplus/darkmode/IOplusDarkModeManager;->changeSystemUiVisibility(I)I

    move-result v0

    return v0
.end method

.method public blacklist checkIsWebchatLauncherUI()V
    .locals 1

    .line 319
    iget-object v0, p0, Landroid/view/ViewRootImplExtImpl;->mOplusViewRootPerfInjector:Landroid/view/performance/IOplusViewRootPerfInjector;

    invoke-interface {v0}, Landroid/view/performance/IOplusViewRootPerfInjector;->checkIsWebchatLauncherUI()V

    .line 320
    return-void
.end method

.method public blacklist checkKeyguardAndConfig(Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .line 389
    iget-object v0, p0, Landroid/view/ViewRootImplExtImpl;->mSystemUINavigationGesture:Landroid/view/IOplusSystemUINavigationGesture;

    invoke-interface {v0, p1}, Landroid/view/IOplusSystemUINavigationGesture;->checkKeyguardAndConfig(Ljava/lang/String;)V

    .line 390
    return-void
.end method

.method public blacklist checkTraversalsImmediatelyProssible(Z)Z
    .locals 1
    .param p1, "isFirst"    # Z

    .line 341
    iget-object v0, p0, Landroid/view/ViewRootImplExtImpl;->mOplusViewRootPerfInjector:Landroid/view/performance/IOplusViewRootPerfInjector;

    invoke-interface {v0, p1}, Landroid/view/performance/IOplusViewRootPerfInjector;->checkTraversalsImmediatelyProssible(Z)Z

    move-result v0

    return v0
.end method

.method public blacklist checkTraversalsImmediatelyProssibleInTraversals(ZZ)Z
    .locals 1
    .param p1, "isFirst"    # Z
    .param p2, "mIsInTraversal"    # Z

    .line 345
    iget-object v0, p0, Landroid/view/ViewRootImplExtImpl;->mOplusViewRootPerfInjector:Landroid/view/performance/IOplusViewRootPerfInjector;

    invoke-interface {v0, p1, p2}, Landroid/view/performance/IOplusViewRootPerfInjector;->checkTraversalsImmediatelyProssibleInTraversals(ZZ)Z

    move-result v0

    return v0
.end method

.method public blacklist clearLaunchViewInfoForWindow()V
    .locals 5

    .line 572
    new-instance v0, Landroid/view/OplusWindowManager;

    invoke-direct {v0}, Landroid/view/OplusWindowManager;-><init>()V

    .line 573
    .local v0, "oplusWm":Landroid/view/OplusWindowManager;
    iget-object v1, p0, Landroid/view/ViewRootImplExtImpl;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    if-eqz v1, :cond_0

    .line 575
    :try_start_0
    iget-object v1, p0, Landroid/view/ViewRootImplExtImpl;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v0, v1}, Landroid/view/OplusWindowManager;->clearOplusLaunchViewInfoForWindow(Landroid/view/IWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 578
    goto :goto_0

    .line 576
    :catch_0
    move-exception v1

    .line 577
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    const-string v3, "ViewRootImplExtImpl"

    const-string v4, "clearOplusLaunchViewInfoForWindow, remoteException:"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 580
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist createWindowClient()Landroid/view/ViewRootImpl$W;
    .locals 2

    .line 290
    iget-object v0, p0, Landroid/view/ViewRootImplExtImpl;->mViewRootHooks:Landroid/view/OplusViewRootImplHooks;

    iget-object v1, p0, Landroid/view/ViewRootImplExtImpl;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, v1}, Landroid/view/OplusViewRootImplHooks;->createWindowClient(Landroid/view/ViewRootImpl;)Landroid/view/ViewRootImpl$W;

    move-result-object v0

    return-object v0
.end method

.method public blacklist debugCancelDraw(Ljava/lang/String;ZZ)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "cancelDraw"    # Z
    .param p3, "isViewVisible"    # Z

    .line 510
    const-string v0, ","

    const/16 v1, 0x32

    if-nez p2, :cond_1

    iget v2, p0, Landroid/view/ViewRootImplExtImpl;->mCancelDrawCount:I

    if-lez v2, :cond_1

    .line 511
    if-lt v2, v1, :cond_0

    .line 512
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " debugCancelDraw  cancelDraw="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/ViewRootImplExtImpl;->mCancelDrawCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/ViewRootImplExtImpl;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Landroid/view/ViewRootImplExtImpl;->mCancelDrawCount:I

    goto :goto_0

    .line 516
    :cond_1
    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    .line 517
    iget v2, p0, Landroid/view/ViewRootImplExtImpl;->mCancelDrawCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/view/ViewRootImplExtImpl;->mCancelDrawCount:I

    .line 520
    :cond_2
    :goto_0
    iget v2, p0, Landroid/view/ViewRootImplExtImpl;->mCancelDrawCount:I

    if-ne v2, v1, :cond_3

    .line 521
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " debugCancelDraw some OnPreDrawListener onPreDraw return false,cancelDraw="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/ViewRootImplExtImpl;->mCancelDrawCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ViewRootImplExtImpl;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    :cond_3
    return-void
.end method

.method public blacklist debugEventHandled(Ljava/lang/String;Landroid/view/InputEvent;Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "event"    # Landroid/view/InputEvent;
    .param p3, "detail"    # Ljava/lang/String;

    .line 229
    invoke-static {p1, p2, p3}, Lcom/oplus/debug/InputLog;->debugEventHandled(Ljava/lang/String;Landroid/view/InputEvent;Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method public blacklist debugInputEventEnqueue(Ljava/lang/String;Landroid/view/InputEvent;ZZ)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "event"    # Landroid/view/InputEvent;
    .param p3, "immediately"    # Z
    .param p4, "scheduled"    # Z

    .line 233
    invoke-static {p1, p2, p3, p4}, Lcom/oplus/debug/InputLog;->debugInputEventEnqueue(Ljava/lang/String;Landroid/view/InputEvent;ZZ)V

    .line 234
    return-void
.end method

.method public blacklist debugInputEventFinished(Ljava/lang/String;ILandroid/view/InputEvent;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "flag"    # I
    .param p3, "event"    # Landroid/view/InputEvent;

    .line 237
    invoke-static {p1, p2, p3}, Lcom/oplus/debug/InputLog;->debugInputEventFinished(Ljava/lang/String;ILandroid/view/InputEvent;)V

    .line 238
    return-void
.end method

.method public blacklist debugInputEventStart(Ljava/lang/String;Landroid/view/InputEvent;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "event"    # Landroid/view/InputEvent;

    .line 241
    invoke-static {p1, p2}, Lcom/oplus/debug/InputLog;->debugInputEventStart(Ljava/lang/String;Landroid/view/InputEvent;)V

    .line 242
    return-void
.end method

.method public blacklist debugInputStageDeliverd(Ljava/lang/String;ILandroid/view/InputEvent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "mTag"    # Ljava/lang/String;
    .param p2, "flag"    # I
    .param p3, "event"    # Landroid/view/InputEvent;
    .param p4, "stage"    # Ljava/lang/String;
    .param p5, "detail"    # Ljava/lang/String;

    .line 219
    invoke-static {p1, p2, p3, p4, p5}, Lcom/oplus/debug/InputLog;->debugInputStageDeliverd(Ljava/lang/String;ILandroid/view/InputEvent;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    return-void
.end method

.method public blacklist disableClickIfNeededWhenInputEventStart(Landroid/view/InputEvent;)V
    .locals 1
    .param p1, "inputEvent"    # Landroid/view/InputEvent;

    .line 357
    iget-object v0, p0, Landroid/view/ViewRootImplExtImpl;->mOplusLetterBoxedTouchpadHelper:Landroid/view/OplusLetterBoxedTouchpadHelper;

    if-eqz v0, :cond_0

    .line 358
    invoke-virtual {v0, p1}, Landroid/view/OplusLetterBoxedTouchpadHelper;->disableClickIfNeededWhenInputEventStart(Landroid/view/InputEvent;)V

    .line 360
    :cond_0
    return-void
.end method

.method public blacklist disableRelayout()Z
    .locals 1

    .line 350
    iget-object v0, p0, Landroid/view/ViewRootImplExtImpl;->mOplusViewRootPerfInjector:Landroid/view/performance/IOplusViewRootPerfInjector;

    invoke-interface {v0}, Landroid/view/performance/IOplusViewRootPerfInjector;->disableRelayout()Z

    move-result v0

    return v0
.end method

.method public blacklist dispatchDetachedFromWindow(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 272
    iget-object v0, p0, Landroid/view/ViewRootImplExtImpl;->mViewRootHooks:Landroid/view/OplusViewRootImplHooks;

    invoke-virtual {v0, p1}, Landroid/view/OplusViewRootImplHooks;->dispatchDetachedFromWindow(Landroid/view/View;)V

    .line 275
    iget-object v0, p0, Landroid/view/ViewRootImplExtImpl;->mZoomWindowHelper:Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;

    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {v0}, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->removeZoomView()V

    .line 279
    :cond_0
    return-void
.end method

.method public blacklist dispatchTouchEventForZoomWinow(Landroid/view/InputEventReceiver;Landroid/view/InputEvent;Landroid/view/View;Landroid/util/MergedConfiguration;)Z
    .locals 1
    .param p1, "receiver"    # Landroid/view/InputEventReceiver;
    .param p2, "ev"    # Landroid/view/InputEvent;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "configuration"    # Landroid/util/MergedConfiguration;

    .line 435
    iget-object v0, p0, Landroid/view/ViewRootImplExtImpl;->mZoomWindowHelper:Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->dispatchTouchEvent(Landroid/view/InputEvent;Landroid/view/View;Landroid/util/MergedConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 437
    return v0

    .line 441
    :cond_0
    invoke-static {}, Lcom/oplus/bracket/OplusBracketModeManager;->getInstance()Lcom/oplus/bracket/OplusBracketModeManager;

    move-result-object v0

    invoke-virtual {v0, p3, p2, p1}, Lcom/oplus/bracket/OplusBracketModeManager;->updateInputEventInTouchPanel(Landroid/view/View;Landroid/view/InputEvent;Landroid/view/InputEventReceiver;)Z

    .line 443
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist enableClickIfNeededWhenInputEventFinish(Landroid/view/InputEvent;)V
    .locals 1
    .param p1, "inputEvent"    # Landroid/view/InputEvent;

    .line 364
    iget-object v0, p0, Landroid/view/ViewRootImplExtImpl;->mOplusLetterBoxedTouchpadHelper:Landroid/view/OplusLetterBoxedTouchpadHelper;

    if-eqz v0, :cond_0

    .line 365
    invoke-virtual {v0, p1}, Landroid/view/OplusLetterBoxedTouchpadHelper;->enableClickIfNeededWhenInputEventFinish(Landroid/view/InputEvent;)V

    .line 367
    :cond_0
    return-void
.end method

.method public blacklist forceDarkWithoutTheme(Landroid/content/Context;Landroid/view/View;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "useAutoDark"    # Z

    .line 184
    iget-object v0, p0, Landroid/view/ViewRootImplExtImpl;->mManager:Lcom/oplus/darkmode/IOplusDarkModeManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/oplus/darkmode/IOplusDarkModeManager;->forceDarkWithoutTheme(Landroid/content/Context;Landroid/view/View;Z)V

    .line 185
    return-void
.end method

.method public blacklist getBaseSize(Landroid/view/WindowManager$LayoutParams;Landroid/util/TypedValue;Landroid/content/res/Resources;)I
    .locals 2
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "value"    # Landroid/util/TypedValue;
    .param p3, "res"    # Landroid/content/res/Resources;

    .line 483
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d5

    if-ne v0, v1, :cond_0

    .line 484
    const v0, 0xc0500bf

    const/4 v1, 0x1

    invoke-virtual {p3, v0, p2, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 486
    :cond_0
    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public blacklist getColorMode(I)I
    .locals 1
    .param p1, "colorMode"    # I

    .line 470
    invoke-static {}, Landroid/view/OplusColorModeManager;->getInstance()Landroid/view/OplusColorModeManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/OplusColorModeManager;->getColorMode(I)I

    move-result v0

    return v0
.end method

.method public blacklist getOplusViewRootPerfInjector()Landroid/view/performance/IOplusViewRootPerfInjector;
    .locals 1

    .line 172
    iget-object v0, p0, Landroid/view/ViewRootImplExtImpl;->mOplusViewRootPerfInjector:Landroid/view/performance/IOplusViewRootPerfInjector;

    return-object v0
.end method

.method public blacklist getOsieLayerName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;

    .line 476
    sget-boolean v0, Landroid/view/ViewRootImplExtImpl;->IS_OSIE_NEED_NO_COMPRESS:Z

    if-eqz v0, :cond_0

    .line 477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 479
    :cond_0
    return-object p1
.end method

.method public blacklist getZoomWindowDecorViewHelper()Lcom/android/internal/policy/IZoomWindowDecorViewHelper;
    .locals 1

    .line 168
    iget-object v0, p0, Landroid/view/ViewRootImplExtImpl;->mZoomWindowHelper:Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;

    return-object v0
.end method

.method public blacklist handleGestureConfigCheck()V
    .locals 1

    .line 397
    iget-object v0, p0, Landroid/view/ViewRootImplExtImpl;->mSystemUINavigationGesture:Landroid/view/IOplusSystemUINavigationGesture;

    invoke-interface {v0}, Landroid/view/IOplusSystemUINavigationGesture;->handleGestureConfigCheck()V

    .line 398
    return-void
.end method

.method public blacklist handleGestureMotionDown(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 393
    iget-object v0, p0, Landroid/view/ViewRootImplExtImpl;->mSystemUINavigationGesture:Landroid/view/IOplusSystemUINavigationGesture;

    invoke-interface {v0, p1}, Landroid/view/IOplusSystemUINavigationGesture;->handleGestureMotionDown(Landroid/view/View;)V

    .line 394
    return-void
.end method

.method public blacklist handleWindowFocusChanged(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hasFocus"    # Z

    .line 619
    invoke-direct {p0}, Landroid/view/ViewRootImplExtImpl;->initScrollToTopManager()V

    .line 620
    iget-object v0, p0, Landroid/view/ViewRootImplExtImpl;->mOplusScrollToTopManager:Landroid/view/IOplusScrollToTopManager;

    invoke-interface {v0, p1, p2}, Landroid/view/IOplusScrollToTopManager;->handleWindowFocusChanged(Landroid/content/Context;Z)V

    .line 621
    return-void
.end method

.method public blacklist hideSoftInputFromWindow(Ljava/lang/String;)V
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;

    .line 335
    if-eqz p1, :cond_0

    const-string v0, "com.tencent.mm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Landroid/view/ViewRootImplExtImpl;->mOplusViewRootPerfInjector:Landroid/view/performance/IOplusViewRootPerfInjector;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/performance/IOplusViewRootPerfInjector;->setIsWebchatLauncherUI(Z)V

    .line 338
    :cond_0
    return-void
.end method

.method public blacklist hookNewInstance(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 143
    sget-object v0, Lcom/oplus/darkmode/IOplusDarkModeManager;->DEFAULT:Lcom/oplus/darkmode/IOplusDarkModeManager;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Lcom/oplus/darkmode/IOplusDarkModeManager;

    invoke-interface {v0}, Lcom/oplus/darkmode/IOplusDarkModeManager;->newOplusDarkModeManager()Lcom/oplus/darkmode/IOplusDarkModeManager;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImplExtImpl;->mManager:Lcom/oplus/darkmode/IOplusDarkModeManager;

    .line 146
    invoke-static {p1}, Lcom/oplus/screenmode/OplusRefreshRateInjector;->newInstance(Landroid/content/Context;)Lcom/oplus/screenmode/OplusRefreshRateInjector;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImplExtImpl;->mOplusRefreshRateInjector:Lcom/oplus/screenmode/OplusRefreshRateInjector;

    .line 151
    new-instance v0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/view/ViewRootImplExtImpl;->mZoomWindowHelper:Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;

    .line 155
    new-instance v0, Landroid/view/OplusViewRootPerfInjector;

    iget-object v1, p0, Landroid/view/ViewRootImplExtImpl;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-direct {v0, v1}, Landroid/view/OplusViewRootPerfInjector;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImplExtImpl;->mOplusViewRootPerfInjector:Landroid/view/performance/IOplusViewRootPerfInjector;

    .line 159
    new-instance v0, Landroid/view/OplusLetterBoxedTouchpadHelper;

    iget-object v1, p0, Landroid/view/ViewRootImplExtImpl;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-direct {v0, v1}, Landroid/view/OplusLetterBoxedTouchpadHelper;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImplExtImpl;->mOplusLetterBoxedTouchpadHelper:Landroid/view/OplusLetterBoxedTouchpadHelper;

    .line 161
    return-void
.end method

.method public blacklist hookSetView(Landroid/view/View;Landroid/content/Context;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;

    .line 282
    iget-object v0, p0, Landroid/view/ViewRootImplExtImpl;->mViewRootHooks:Landroid/view/OplusViewRootImplHooks;

    invoke-virtual {v0, p1}, Landroid/view/OplusViewRootImplHooks;->setView(Landroid/view/View;)V

    .line 285
    invoke-static {}, Landroid/common/OplusFrameworkFactory;->getInstance()Landroid/common/OplusFrameworkFactory;

    move-result-object v0

    sget-object v1, Landroid/view/IOplusBurmeseZgHooks;->DEFAULT:Landroid/view/IOplusBurmeseZgHooks;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/common/OplusFrameworkFactory;->getFeature(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Landroid/view/IOplusBurmeseZgHooks;

    invoke-interface {v0, p2}, Landroid/view/IOplusBurmeseZgHooks;->initBurmeseZgFlag(Landroid/content/Context;)V

    .line 287
    return-void
.end method

.method public blacklist hookViewRootImplHooks(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 294
    new-instance v0, Landroid/view/OplusViewRootImplHooks;

    iget-object v1, p0, Landroid/view/ViewRootImplExtImpl;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-direct {v0, v1, p1}, Landroid/view/OplusViewRootImplHooks;-><init>(Landroid/view/ViewRootImpl;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/view/ViewRootImplExtImpl;->mViewRootHooks:Landroid/view/OplusViewRootImplHooks;

    .line 295
    return-void
.end method

.method public blacklist init(Landroid/view/ViewRootImpl;Landroid/content/Context;)V
    .locals 0
    .param p1, "viewRootImpl"    # Landroid/view/ViewRootImpl;
    .param p2, "context"    # Landroid/content/Context;

    .line 130
    iput-object p1, p0, Landroid/view/ViewRootImplExtImpl;->mViewRootImpl:Landroid/view/ViewRootImpl;

    .line 133
    invoke-virtual {p0, p2}, Landroid/view/ViewRootImplExtImpl;->hookViewRootImplHooks(Landroid/content/Context;)V

    .line 135
    return-void
.end method

.method public blacklist initScrollOpt(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 530
    invoke-static {}, Landroid/view/OplusSlideAnimOptHelper;->getInstance()Landroid/view/OplusSlideAnimOptHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/OplusSlideAnimOptHelper;->initScrollOpt(Landroid/content/Context;)V

    .line 531
    return-void
.end method

.method public blacklist initSystemUINavigationGesture(Landroid/view/ViewRootImpl;Landroid/content/Context;)V
    .locals 1
    .param p1, "viewRootImpl"    # Landroid/view/ViewRootImpl;
    .param p2, "context"    # Landroid/content/Context;

    .line 385
    new-instance v0, Landroid/view/OplusSystemUINavigationGesture;

    invoke-direct {v0, p1, p2}, Landroid/view/OplusSystemUINavigationGesture;-><init>(Landroid/view/ViewRootImpl;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/view/ViewRootImplExtImpl;->mSystemUINavigationGesture:Landroid/view/IOplusSystemUINavigationGesture;

    .line 386
    return-void
.end method

.method public blacklist intersectOverrideWindowBoundsIfNeed(Landroid/util/MergedConfiguration;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "mergedConfiguration"    # Landroid/util/MergedConfiguration;
    .param p2, "outRect"    # Landroid/graphics/Rect;

    .line 692
    iget-object v0, p0, Landroid/view/ViewRootImplExtImpl;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_0

    .line 693
    return-void

    .line 695
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImplExtImpl;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 696
    .local v0, "windowType":I
    const/16 v1, 0x7da

    if-eq v0, v1, :cond_1

    const/16 v1, 0x7d3

    if-ne v0, v1, :cond_4

    .line 698
    :cond_1
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_2

    .line 699
    return-void

    .line 701
    :cond_2
    invoke-virtual {p1}, Landroid/util/MergedConfiguration;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 702
    .local v1, "overrideWindowBounds":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 703
    invoke-virtual {p2, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 705
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "intersectOverrideWindowBoundsIfNeed outRect =:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ViewRootImplExtImpl"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    .end local v1    # "overrideWindowBounds":Landroid/graphics/Rect;
    :cond_4
    return-void
.end method

.method public blacklist isClickDisabled()Z
    .locals 1

    .line 371
    iget-object v0, p0, Landroid/view/ViewRootImplExtImpl;->mOplusLetterBoxedTouchpadHelper:Landroid/view/OplusLetterBoxedTouchpadHelper;

    if-eqz v0, :cond_0

    .line 372
    invoke-virtual {v0}, Landroid/view/OplusLetterBoxedTouchpadHelper;->isClickDisabled()Z

    move-result v0

    return v0

    .line 374
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isConnected()Z
    .locals 2

    .line 309
    iget-object v0, p0, Landroid/view/ViewRootImplExtImpl;->mViewRootHooks:Landroid/view/OplusViewRootImplHooks;

    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {v0}, Landroid/view/OplusViewRootImplHooks;->getLongshotViewRoot()Lcom/oplus/screenshot/OplusLongshotViewRoot;

    move-result-object v0

    .line 311
    .local v0, "longshot":Lcom/oplus/screenshot/OplusLongshotViewRoot;
    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {v0}, Lcom/oplus/screenshot/OplusLongshotViewRoot;->isConnected()Z

    move-result v1

    return v1

    .line 315
    .end local v0    # "longshot":Lcom/oplus/screenshot/OplusLongshotViewRoot;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isLevelDebug()Z
    .locals 1

    .line 215
    invoke-static {}, Lcom/oplus/debug/InputLog;->isLevelDebug()Z

    move-result v0

    return v0
.end method

.method public blacklist isWebchatLauncherUI()Z
    .locals 1

    .line 323
    iget-object v0, p0, Landroid/view/ViewRootImplExtImpl;->mOplusViewRootPerfInjector:Landroid/view/performance/IOplusViewRootPerfInjector;

    invoke-interface {v0}, Landroid/view/performance/IOplusViewRootPerfInjector;->isWebchatLauncherUI()Z

    move-result v0

    return v0
.end method

.method public blacklist logConfigurationNightError(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "useAutoDark"    # Z

    .line 176
    iget-object v0, p0, Landroid/view/ViewRootImplExtImpl;->mManager:Lcom/oplus/darkmode/IOplusDarkModeManager;

    invoke-interface {v0, p1, p2}, Lcom/oplus/darkmode/IOplusDarkModeManager;->logConfigurationNightError(Landroid/content/Context;Z)V

    .line 177
    return-void
.end method

.method public blacklist logForceDarkAllowedStatus(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "forceDarkAllowedDefault"    # Z

    .line 180
    iget-object v0, p0, Landroid/view/ViewRootImplExtImpl;->mManager:Lcom/oplus/darkmode/IOplusDarkModeManager;

    invoke-interface {v0, p1, p2}, Lcom/oplus/darkmode/IOplusDarkModeManager;->logForceDarkAllowedStatus(Landroid/content/Context;Z)V

    .line 181
    return-void
.end method

.method public blacklist needUpdateInternalDisplay(Landroid/content/Context;Landroid/view/Display;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "display"    # Landroid/view/Display;

    .line 665
    const/4 v0, 0x0

    if-eqz p1, :cond_7

    .line 666
    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    .line 667
    .local v1, "activityDisplayId":I
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v2

    .line 668
    .local v2, "displayManagerGlobal":Landroid/hardware/display/DisplayManagerGlobal;
    if-nez v2, :cond_0

    .line 669
    return v0

    .line 671
    :cond_0
    invoke-virtual {p2}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v3

    .line 672
    .local v3, "displayInfo":Landroid/view/DisplayInfo;
    if-eqz v3, :cond_1

    iget-object v4, v3, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    const-string v5, "Mirage_appshare_display"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 673
    return v0

    .line 675
    :cond_1
    const/4 v4, 0x1

    const/16 v5, 0x2710

    if-lt v1, v5, :cond_2

    .line 677
    invoke-virtual {p2}, Landroid/view/Display;->getDisplayId()I

    move-result v6

    if-eqz v6, :cond_5

    :cond_2
    if-nez v1, :cond_3

    .line 678
    invoke-virtual {p2}, Landroid/view/Display;->getDisplayId()I

    move-result v6

    if-ge v6, v5, :cond_5

    :cond_3
    const/16 v5, 0x7e4

    if-ne v1, v5, :cond_4

    .line 680
    invoke-virtual {p2}, Landroid/view/Display;->getDisplayId()I

    move-result v6

    if-eqz v6, :cond_5

    :cond_4
    if-nez v1, :cond_6

    .line 681
    invoke-virtual {p2}, Landroid/view/Display;->getDisplayId()I

    move-result v6

    if-ne v6, v5, :cond_6

    :cond_5
    move v5, v4

    goto :goto_0

    :cond_6
    move v5, v0

    .line 682
    .local v5, "movedToDifferentDisplay":Z
    :goto_0
    if-eqz v5, :cond_7

    .line 683
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "need to update dispalyId="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " Context="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "ViewRootImplExtImpl"

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    return v4

    .line 687
    .end local v1    # "activityDisplayId":I
    .end local v2    # "displayManagerGlobal":Landroid/hardware/display/DisplayManagerGlobal;
    .end local v3    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v5    # "movedToDifferentDisplay":Z
    :cond_7
    return v0
.end method

.method public blacklist onWindowDying()V
    .locals 1

    .line 637
    invoke-direct {p0}, Landroid/view/ViewRootImplExtImpl;->initScrollToTopManager()V

    .line 638
    iget-object v0, p0, Landroid/view/ViewRootImplExtImpl;->mOplusScrollToTopManager:Landroid/view/IOplusScrollToTopManager;

    invoke-interface {v0}, Landroid/view/IOplusScrollToTopManager;->onWindowDying()V

    .line 642
    iget-object v0, p0, Landroid/view/ViewRootImplExtImpl;->mSystemUINavigationGesture:Landroid/view/IOplusSystemUINavigationGesture;

    if-eqz v0, :cond_0

    .line 645
    invoke-interface {v0}, Landroid/view/IOplusSystemUINavigationGesture;->unRegisterNavGestureListener()V

    .line 650
    :cond_0
    return-void
.end method

.method public blacklist onWindowFocusChangedByRoot(ZLandroid/view/View;Landroid/util/MergedConfiguration;)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z
    .param p2, "view"    # Landroid/view/View;
    .param p3, "configuration"    # Landroid/util/MergedConfiguration;

    .line 427
    iget-object v0, p0, Landroid/view/ViewRootImplExtImpl;->mZoomWindowHelper:Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->onWindowFocusChangedByRoot(ZLandroid/view/View;Landroid/util/MergedConfiguration;)V

    .line 428
    return-void
.end method

.method public blacklist postShowGuidePopupRunnable(Landroid/view/View;)V
    .locals 1
    .param p1, "decorView"    # Landroid/view/View;

    .line 625
    invoke-direct {p0}, Landroid/view/ViewRootImplExtImpl;->initScrollToTopManager()V

    .line 626
    iget-object v0, p0, Landroid/view/ViewRootImplExtImpl;->mOplusScrollToTopManager:Landroid/view/IOplusScrollToTopManager;

    invoke-interface {v0, p1}, Landroid/view/IOplusScrollToTopManager;->postShowGuidePopupRunnable(Landroid/view/View;)V

    .line 627
    return-void
.end method

.method public blacklist processGestureEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 405
    iget-object v0, p0, Landroid/view/ViewRootImplExtImpl;->mSystemUINavigationGesture:Landroid/view/IOplusSystemUINavigationGesture;

    invoke-interface {v0, p1}, Landroid/view/IOplusSystemUINavigationGesture;->processGestureEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public blacklist processPointerEvent(Landroid/view/MotionEvent;Landroid/content/Context;)V
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;
    .param p2, "context"    # Landroid/content/Context;

    .line 631
    invoke-direct {p0}, Landroid/view/ViewRootImplExtImpl;->initScrollToTopManager()V

    .line 632
    iget-object v0, p0, Landroid/view/ViewRootImplExtImpl;->mOplusScrollToTopManager:Landroid/view/IOplusScrollToTopManager;

    invoke-interface {v0, p1, p2}, Landroid/view/IOplusScrollToTopManager;->processPointerEvent(Landroid/view/MotionEvent;Landroid/content/Context;)V

    .line 633
    return-void
.end method

.method public blacklist refreshForceDark(Landroid/view/View;Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "mOplusDarkModeData"    # Landroid/os/Parcelable;

    .line 200
    iget-object v0, p0, Landroid/view/ViewRootImplExtImpl;->mManager:Lcom/oplus/darkmode/IOplusDarkModeManager;

    const-class v1, Lcom/oplus/darkmode/OplusDarkModeData;

    invoke-static {v1, p2}, Lcom/oplus/util/OplusTypeCastingHelper;->typeCasting(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/darkmode/OplusDarkModeData;

    invoke-interface {v0, p1, v1}, Lcom/oplus/darkmode/IOplusDarkModeManager;->refreshForceDark(Landroid/view/View;Lcom/oplus/darkmode/OplusDarkModeData;)V

    .line 201
    return-void
.end method

.method public blacklist registerRemoteAnimationsForWindow(Landroid/view/RemoteAnimationDefinition;)V
    .locals 5
    .param p1, "definition"    # Landroid/view/RemoteAnimationDefinition;

    .line 536
    new-instance v0, Landroid/view/OplusWindowManager;

    invoke-direct {v0}, Landroid/view/OplusWindowManager;-><init>()V

    .line 537
    .local v0, "oplusWm":Landroid/view/OplusWindowManager;
    iget-object v1, p0, Landroid/view/ViewRootImplExtImpl;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 539
    :try_start_0
    iget-object v1, p0, Landroid/view/ViewRootImplExtImpl;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v0, v1, p1}, Landroid/view/OplusWindowManager;->registerRemoteAnimationsForWindow(Landroid/view/IWindow;Landroid/view/RemoteAnimationDefinition;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 542
    goto :goto_0

    .line 540
    :catch_0
    move-exception v1

    .line 541
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    const-string v3, "ViewRootImplExtImpl"

    const-string v4, "registerRemoteAnimationsForWin remoteException"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 544
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist resetOptState(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .line 596
    invoke-static {}, Landroid/view/OplusSlideAnimOptHelper;->isOptEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 597
    invoke-static {}, Landroid/view/OplusSlideAnimOptHelper;->getInstance()Landroid/view/OplusSlideAnimOptHelper;

    move-result-object v0

    .line 598
    .local v0, "oplusSlideAnimOptHelper":Landroid/view/OplusSlideAnimOptHelper;
    invoke-virtual {v0}, Landroid/view/OplusSlideAnimOptHelper;->resetOptState()V

    .line 600
    .end local v0    # "oplusSlideAnimOptHelper":Landroid/view/OplusSlideAnimOptHelper;
    :cond_0
    return-void
.end method

.method public blacklist setConnected(Z)V
    .locals 1
    .param p1, "isConnected"    # Z

    .line 299
    iget-object v0, p0, Landroid/view/ViewRootImplExtImpl;->mViewRootHooks:Landroid/view/OplusViewRootImplHooks;

    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {v0}, Landroid/view/OplusViewRootImplHooks;->getLongshotViewRoot()Lcom/oplus/screenshot/OplusLongshotViewRoot;

    move-result-object v0

    .line 301
    .local v0, "longshot":Lcom/oplus/screenshot/OplusLongshotViewRoot;
    if-eqz v0, :cond_0

    .line 302
    invoke-virtual {v0, p1}, Lcom/oplus/screenshot/OplusLongshotViewRoot;->setConnected(Z)V

    .line 305
    .end local v0    # "longshot":Lcom/oplus/screenshot/OplusLongshotViewRoot;
    :cond_0
    return-void
.end method

.method public blacklist setDarkModeProgress(Landroid/view/View;Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "globalConfig"    # Landroid/content/res/Configuration;

    .line 192
    iget-object v0, p0, Landroid/view/ViewRootImplExtImpl;->mManager:Lcom/oplus/darkmode/IOplusDarkModeManager;

    invoke-interface {v0, p1, p2}, Lcom/oplus/darkmode/IOplusDarkModeManager;->setDarkModeProgress(Landroid/view/View;Landroid/content/res/Configuration;)Z

    .line 195
    invoke-static {}, Lcom/oplus/bracket/OplusBracketModeManager;->getInstance()Lcom/oplus/bracket/OplusBracketModeManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/oplus/bracket/OplusBracketModeManager;->onConfigChange(Landroid/view/View;Landroid/content/res/Configuration;)V

    .line 197
    return-void
.end method

.method public blacklist setLastReportedMergedConfiguration(Landroid/view/View;Landroid/content/res/Configuration;Landroid/content/Context;)V
    .locals 3
    .param p1, "mView"    # Landroid/view/View;
    .param p2, "newConfig"    # Landroid/content/res/Configuration;
    .param p3, "context"    # Landroid/content/Context;

    .line 416
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getWrapper()Lcom/android/internal/policy/IDecorViewWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/IDecorViewWrapper;->getWindow()Lcom/android/internal/policy/PhoneWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Landroid/view/ViewRootImplExtImpl;->mZoomWindowHelper:Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;

    move-object v1, p1

    check-cast v1, Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1}, Lcom/android/internal/policy/DecorView;->getWrapper()Lcom/android/internal/policy/IDecorViewWrapper;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/IDecorViewWrapper;->getWindow()Lcom/android/internal/policy/PhoneWindow;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0, p2, p3, v1, v2}, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->setLastReportedMergedConfiguration(Landroid/content/res/Configuration;Landroid/content/Context;Lcom/android/internal/policy/PhoneWindow;Lcom/android/internal/policy/DecorView;)V

    .line 420
    :cond_0
    return-void
.end method

.method public blacklist setLaunchViewInfoForWindow(Ljava/lang/Object;)V
    .locals 5
    .param p1, "launchViewInfo"    # Ljava/lang/Object;

    .line 560
    new-instance v0, Landroid/view/OplusWindowManager;

    invoke-direct {v0}, Landroid/view/OplusWindowManager;-><init>()V

    .line 561
    .local v0, "oplusWm":Landroid/view/OplusWindowManager;
    iget-object v1, p0, Landroid/view/ViewRootImplExtImpl;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 563
    :try_start_0
    move-object v1, p1

    check-cast v1, Lcom/oplus/animation/LaunchViewInfo;

    .line 564
    .local v1, "oplusInfo":Lcom/oplus/animation/LaunchViewInfo;
    iget-object v2, p0, Landroid/view/ViewRootImplExtImpl;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v0, v2, v1}, Landroid/view/OplusWindowManager;->setOplusLaunchViewInfoForWindow(Landroid/view/IWindow;Lcom/oplus/animation/LaunchViewInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 567
    .end local v1    # "oplusInfo":Lcom/oplus/animation/LaunchViewInfo;
    goto :goto_0

    .line 565
    :catch_0
    move-exception v1

    .line 566
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    const-string v3, "ViewRootImplExtImpl"

    const-string v4, "setOplusLaunchViewInfoForWindow remoteException"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 569
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist setRefreshRateIfNeed(ZLandroid/content/Context;Landroid/view/View;Landroid/view/ViewRootImpl$W;)V
    .locals 3
    .param p1, "ifNeed"    # Z
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "window"    # Landroid/view/ViewRootImpl$W;

    .line 254
    if-eqz p1, :cond_0

    .line 255
    iget-object v0, p0, Landroid/view/ViewRootImplExtImpl;->mOplusRefreshRateInjector:Lcom/oplus/screenmode/OplusRefreshRateInjector;

    move-object v1, p3

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {p4}, Landroid/view/ViewRootImpl$W;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, p2, v1, v2}, Lcom/oplus/screenmode/OplusRefreshRateInjector;->setRefreshRateIfNeed(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/os/IBinder;)V

    .line 257
    :cond_0
    return-void
.end method

.method public blacklist setScrollToTopRootView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/WindowManager$LayoutParams;

    .line 607
    invoke-direct {p0}, Landroid/view/ViewRootImplExtImpl;->initScrollToTopManager()V

    .line 608
    iget-object v0, p0, Landroid/view/ViewRootImplExtImpl;->mOplusScrollToTopManager:Landroid/view/IOplusScrollToTopManager;

    invoke-interface {v0, p1, p2}, Landroid/view/IOplusScrollToTopManager;->setWindowRootView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 609
    return-void
.end method

.method public blacklist setScrollToTopWinFrame(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "winFrame"    # Landroid/graphics/Rect;

    .line 613
    invoke-direct {p0}, Landroid/view/ViewRootImplExtImpl;->initScrollToTopManager()V

    .line 614
    iget-object v0, p0, Landroid/view/ViewRootImplExtImpl;->mOplusScrollToTopManager:Landroid/view/IOplusScrollToTopManager;

    invoke-interface {v0, p1}, Landroid/view/IOplusScrollToTopManager;->setWindowFrame(Landroid/graphics/Rect;)V

    .line 615
    return-void
.end method

.method public blacklist setSystemGestureExclusionRegion(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 401
    .local p1, "rects":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    iget-object v0, p0, Landroid/view/ViewRootImplExtImpl;->mSystemUINavigationGesture:Landroid/view/IOplusSystemUINavigationGesture;

    invoke-interface {v0, p1}, Landroid/view/IOplusSystemUINavigationGesture;->setSystemGestureExclusionRegion(Ljava/util/List;)V

    .line 402
    return-void
.end method

.method public blacklist setTransparentRegionForZoom(Landroid/util/MergedConfiguration;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)Z
    .locals 2
    .param p1, "configuration"    # Landroid/util/MergedConfiguration;
    .param p2, "sc"    # Landroid/view/SurfaceControl;
    .param p3, "transaction"    # Landroid/view/SurfaceControl$Transaction;

    .line 457
    invoke-virtual {p1}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 458
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    invoke-virtual {p3, p2, v0}, Landroid/view/SurfaceControl$Transaction;->setTransparentRegionHint(Landroid/view/SurfaceControl;Landroid/graphics/Region;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 459
    const/4 v0, 0x1

    return v0

    .line 461
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist shouldBlockResizeReportForSplashScreen(Landroid/view/WindowManager$LayoutParams;Ljava/lang/String;)Z
    .locals 2
    .param p1, "windowAttrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 726
    if-eqz p1, :cond_0

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 727
    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Splash Screen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.android.systemui"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 728
    const-string v0, "ViewRootImplExtImpl"

    const-string v1, "Block resize report for SplashScreen of systemui."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    const/4 v0, 0x1

    return v0

    .line 731
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist showSoftInput(Ljava/lang/String;)V
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;

    .line 328
    if-eqz p1, :cond_0

    const-string v0, "com.tencent.mm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Landroid/view/ViewRootImplExtImpl;->mOplusViewRootPerfInjector:Landroid/view/performance/IOplusViewRootPerfInjector;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/performance/IOplusViewRootPerfInjector;->setIsWebchatLauncherUI(Z)V

    .line 331
    :cond_0
    return-void
.end method

.method public blacklist showSurfaceViewBackground(I)Z
    .locals 4
    .param p1, "subLayer"    # I

    .line 491
    iget-object v0, p0, Landroid/view/ViewRootImplExtImpl;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 492
    .local v0, "name":Ljava/lang/String;
    const/4 v1, -0x2

    if-eq p1, v1, :cond_0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    .line 493
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showSurfaceViewBackground subLayer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ViewRootImplExtImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    sget-object v1, Landroid/view/ViewRootImplExtImpl;->PACKAGES_NEED_SHOW_SURFACE_VIEW_BG:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 495
    .local v2, "pkgName":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 496
    const/4 v1, 0x1

    return v1

    .line 498
    .end local v2    # "pkgName":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 500
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist unregisterRemoteAnimationsForWindow()V
    .locals 5

    .line 549
    new-instance v0, Landroid/view/OplusWindowManager;

    invoke-direct {v0}, Landroid/view/OplusWindowManager;-><init>()V

    .line 550
    .local v0, "oplusWm":Landroid/view/OplusWindowManager;
    iget-object v1, p0, Landroid/view/ViewRootImplExtImpl;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    if-eqz v1, :cond_0

    .line 552
    :try_start_0
    iget-object v1, p0, Landroid/view/ViewRootImplExtImpl;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v0, v1}, Landroid/view/OplusWindowManager;->unregisterRemoteAnimationsForWindow(Landroid/view/IWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 555
    goto :goto_0

    .line 553
    :catch_0
    move-exception v1

    .line 554
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    const-string v3, "ViewRootImplExtImpl"

    const-string v4, "unregisterRemoteAnimationsForWindow remoteException"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 557
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist updateAlwaysConsumeSystemBarsIfNeeded(Z)Z
    .locals 3
    .param p1, "pendingAlwaysConsumeSystemBars"    # Z

    .line 711
    iget-object v0, p0, Landroid/view/ViewRootImplExtImpl;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mPendingAlwaysConsumeSystemBars:Z

    const/4 v1, 0x1

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImplExtImpl;->mViewRootImpl:Landroid/view/ViewRootImpl;

    .line 712
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getHostVisibility()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 713
    .local v0, "changed":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 714
    iget-object v2, p0, Landroid/view/ViewRootImplExtImpl;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean p1, v2, Landroid/view/View$AttachInfo;->mAlwaysConsumeSystemBars:Z

    .line 715
    iget-object v2, p0, Landroid/view/ViewRootImplExtImpl;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iput-boolean v1, v2, Landroid/view/ViewRootImpl;->mApplyInsetsRequested:Z

    .line 716
    const-string v1, "ViewRootImplExtImpl"

    const-string v2, "updateAlwaysConsumeSystemBarsIfNeeded: pendingAlwaysConsumeSystemBars has changed, we should apply it to make sure the layout is correct"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    :cond_1
    return v0
.end method

.method public blacklist updateBufferPendingState(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .line 584
    invoke-static {}, Landroid/view/OplusSlideAnimOptHelper;->isOptEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 585
    invoke-static {}, Landroid/view/OplusSlideAnimOptHelper;->getInstance()Landroid/view/OplusSlideAnimOptHelper;

    .line 587
    :cond_0
    return-void
.end method

.method public blacklist updateInputEventToInputMethod(Landroid/view/InputEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 447
    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_1

    .line 448
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 449
    .local v0, "action":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 450
    :cond_0
    invoke-static {}, Landroid/view/inputmethod/OplusInputMethodManagerInternal;->getInstance()Landroid/view/inputmethod/OplusInputMethodManagerInternal;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/InputEvent;->getDeviceId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/inputmethod/OplusInputMethodManagerInternal;->updateTouchDeviceId(I)V

    .line 453
    .end local v0    # "action":I
    :cond_1
    return-void
.end method

.method public blacklist updateLogLevel()V
    .locals 0

    .line 211
    invoke-static {}, Lcom/oplus/debug/InputLog;->updateLogLevel()V

    .line 212
    return-void
.end method

.method public blacklist updateScrollerState(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "me"    # Landroid/view/MotionEvent;

    .line 590
    invoke-static {}, Landroid/view/OplusSlideAnimOptHelper;->isOptEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 591
    invoke-static {}, Landroid/view/OplusSlideAnimOptHelper;->getInstance()Landroid/view/OplusSlideAnimOptHelper;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/OplusSlideAnimOptHelper;->updateScrollerState(Ljava/lang/Object;I)V

    .line 593
    :cond_0
    return-void
.end method

.method public blacklist updateSplitScreenImmersiveFlag(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 739
    const-string v0, "SplitScreenImmersiveEnable"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/ViewRootImplExtImpl;->mSplitScreenImmersiveEnable:Z

    .line 740
    return-void
.end method

.method public blacklist v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 223
    invoke-static {}, Lcom/oplus/debug/InputLog;->isLevelVerbose()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    invoke-static {p1, p2}, Lcom/oplus/debug/InputLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :cond_0
    return-void
.end method
