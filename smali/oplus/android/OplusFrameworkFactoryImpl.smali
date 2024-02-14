.class public Loplus/android/OplusFrameworkFactoryImpl;
.super Landroid/common/OplusFrameworkFactory;
.source "OplusFrameworkFactoryImpl.java"


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "oplus.android.OplusFrameworkFactoryImpl"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 177
    invoke-direct {p0}, Landroid/common/OplusFrameworkFactory;-><init>()V

    return-void
.end method

.method private blacklist getDragTextShadowHelper()Landroid/widget/IOplusDragTextShadowHelper;
    .locals 1

    .line 563
    invoke-static {}, Landroid/widget/OplusDragTextShadowHelper;->getInstance()Landroid/widget/OplusDragTextShadowHelper;

    move-result-object v0

    return-object v0
.end method

.method private varargs blacklist getOAppNetControlManager([Ljava/lang/Object;)Landroid/nwpower/IOAppNetControlManager;
    .locals 1
    .param p1, "vars"    # [Ljava/lang/Object;

    .line 635
    invoke-static {}, Landroid/nwpower/OAppNetControlManager;->getInstance()Landroid/nwpower/OAppNetControlManager;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getOplusAccidentallyTouchHelper()Landroid/view/IOplusAccidentallyTouchHelper;
    .locals 1

    .line 513
    invoke-static {}, Landroid/view/OplusAccidentallyTouchHelper;->getInstance()Landroid/view/OplusAccidentallyTouchHelper;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getOplusAppDynamicFeatureManager()Lcom/oplus/app/IOplusAppDynamicFeatureManager;
    .locals 1

    .line 543
    invoke-static {}, Lcom/oplus/app/OplusAppDynamicFeatureManager;->getInstance()Lcom/oplus/app/OplusAppDynamicFeatureManager;

    move-result-object v0

    return-object v0
.end method

.method private varargs blacklist getOplusAutoLayoutManager([Ljava/lang/Object;)Landroid/view/autolayout/IOplusAutoLayoutManager;
    .locals 1
    .param p1, "vars"    # [Ljava/lang/Object;

    .line 709
    new-instance v0, Landroid/view/autolayout/OplusAutoLayoutManager;

    invoke-direct {v0}, Landroid/view/autolayout/OplusAutoLayoutManager;-><init>()V

    return-object v0
.end method

.method private varargs blacklist getOplusAutoResolutionFeature([Ljava/lang/Object;)Lcom/oplus/screenmode/IOplusAutoResolutionFeature;
    .locals 2
    .param p1, "vars"    # [Ljava/lang/Object;

    .line 613
    const-string v0, "oplus.android.OplusFrameworkFactoryImpl"

    const-string v1, "getOplusAutoResolutionFeature"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    invoke-static {}, Lcom/oplus/screenmode/OplusAutoResolutionFeature;->getInstance()Lcom/oplus/screenmode/OplusAutoResolutionFeature;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getOplusBurmeseZgFlagHooks()Landroid/view/IOplusBurmeseZgHooks;
    .locals 1

    .line 526
    new-instance v0, Landroid/view/OplusBurmeseZgFlagHooksImpl;

    invoke-direct {v0}, Landroid/view/OplusBurmeseZgFlagHooksImpl;-><init>()V

    return-object v0
.end method

.method private varargs blacklist getOplusCamera2StatisticsManager([Ljava/lang/Object;)Landroid/hardware/camera2/IOplusCamera2StatisticsManager;
    .locals 2
    .param p1, "vars"    # [Ljava/lang/Object;

    .line 578
    const-string v0, "oplus.android.OplusFrameworkFactoryImpl"

    const-string v1, "getOplusCamera2StatisticsManager"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    invoke-static {}, Landroid/hardware/camera2/OplusCamera2StatisticsManager;->getInstance()Landroid/hardware/camera2/OplusCamera2StatisticsManager;

    move-result-object v0

    return-object v0
.end method

.method private varargs blacklist getOplusCameraManager([Ljava/lang/Object;)Landroid/hardware/camera2/IOplusCameraManager;
    .locals 2
    .param p1, "vars"    # [Ljava/lang/Object;

    .line 588
    const-string v0, "oplus.android.OplusFrameworkFactoryImpl"

    const-string v1, "getOplusCameraManager"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    invoke-static {}, Landroid/hardware/camera2/OplusCameraManager;->getInstance()Landroid/hardware/camera2/OplusCameraManager;

    move-result-object v0

    return-object v0
.end method

.method private varargs blacklist getOplusCameraStatisticsManager([Ljava/lang/Object;)Landroid/hardware/IOplusCameraStatisticsManager;
    .locals 2
    .param p1, "vars"    # [Ljava/lang/Object;

    .line 573
    const-string v0, "oplus.android.OplusFrameworkFactoryImpl"

    const-string v1, "getOplusCameraStatisticsManager"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    invoke-static {}, Landroid/hardware/OplusCameraStatisticsManager;->getInstance()Landroid/hardware/OplusCameraStatisticsManager;

    move-result-object v0

    return-object v0
.end method

.method private varargs blacklist getOplusCameraUtils([Ljava/lang/Object;)Landroid/hardware/IOplusCameraUtils;
    .locals 2
    .param p1, "vars"    # [Ljava/lang/Object;

    .line 568
    const-string v0, "oplus.android.OplusFrameworkFactoryImpl"

    const-string v1, "getOplusCameraUtils"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    invoke-static {}, Landroid/hardware/OplusCameraUtils;->getInstance()Landroid/hardware/OplusCameraUtils;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getOplusCommonInjector()Landroid/app/IOplusCommonInjector;
    .locals 1

    .line 467
    invoke-static {}, Loplus/android/OplusCommonInjector;->getInstance()Loplus/android/OplusCommonInjector;

    move-result-object v0

    return-object v0
.end method

.method private varargs blacklist getOplusCursorFeedbackManager([Ljava/lang/Object;)Landroid/widget/IOplusCursorFeedbackManager;
    .locals 1
    .param p1, "vars"    # [Ljava/lang/Object;

    .line 695
    new-instance v0, Landroid/widget/OplusCursorFeedbackManager;

    invoke-direct {v0}, Landroid/widget/OplusCursorFeedbackManager;-><init>()V

    return-object v0
.end method

.method private varargs blacklist getOplusCustomizeTextViewFeature([Ljava/lang/Object;)Landroid/widget/IOplusCustomizeTextViewFeature;
    .locals 1
    .param p1, "vars"    # [Ljava/lang/Object;

    .line 672
    invoke-static {}, Landroid/widget/OplusCustomizeTextViewFeature;->getInstance()Landroid/widget/OplusCustomizeTextViewFeature;

    move-result-object v0

    return-object v0
.end method

.method private varargs blacklist getOplusDailyBattProtoManager([Ljava/lang/Object;)Landroid/os/IOplusDailyBattProtoManager;
    .locals 2
    .param p1, "vars"    # [Ljava/lang/Object;

    .line 641
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Landroid/os/BatteryStats;

    .line 642
    .local v0, "batteryStats":Landroid/os/BatteryStats;
    invoke-static {v0}, Landroid/os/OplusDailyBattProtoManager;->getInstance(Landroid/os/BatteryStats;)Landroid/os/OplusDailyBattProtoManager;

    move-result-object v1

    return-object v1
.end method

.method private blacklist getOplusDarkModeManager()Lcom/oplus/darkmode/IOplusDarkModeManager;
    .locals 1

    .line 463
    invoke-static {}, Lcom/oplus/darkmode/OplusDarkModeManager;->getInstance()Lcom/oplus/darkmode/OplusDarkModeManager;

    move-result-object v0

    return-object v0
.end method

.method private varargs blacklist getOplusDeepThinkerManager([Ljava/lang/Object;)Lcom/oplus/deepthinker/IOplusDeepThinkerManager;
    .locals 2
    .param p1, "vars"    # [Ljava/lang/Object;

    .line 448
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Landroid/content/Context;

    .line 449
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;->getInstance(Landroid/content/Context;)Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;

    move-result-object v1

    return-object v1
.end method

.method private varargs blacklist getOplusDirectViewHelper([Ljava/lang/Object;)Landroid/view/IOplusDirectViewHelper;
    .locals 2
    .param p1, "vars"    # [Ljava/lang/Object;

    .line 425
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 426
    .local v0, "svri":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/ViewRootImpl;>;"
    new-instance v1, Landroid/view/OplusDirectViewHelper;

    invoke-direct {v1, v0}, Landroid/view/OplusDirectViewHelper;-><init>(Ljava/lang/ref/WeakReference;)V

    return-object v1
.end method

.method private blacklist getOplusDynamicVsyncFeature()Lcom/oplus/dynamicvsync/IOplusDynamicVsyncFeature;
    .locals 1

    .line 618
    invoke-static {}, Lcom/oplus/dynamicvsync/OplusDynamicVsyncFeature;->getInstance()Lcom/oplus/dynamicvsync/OplusDynamicVsyncFeature;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getOplusEnterpriseAndOperatorFeature()Landroid/app/IOplusEnterpriseAndOperatorFeature;
    .locals 1

    .line 660
    new-instance v0, Landroid/app/OplusEnterpriseAndOperatorFeature;

    invoke-direct {v0}, Landroid/app/OplusEnterpriseAndOperatorFeature;-><init>()V

    return-object v0
.end method

.method private blacklist getOplusFavoriteManager()Lcom/oplus/favorite/IOplusFavoriteManager;
    .locals 1

    .line 456
    invoke-static {}, Lcom/oplus/favorite/OplusFavoriteManager;->getInstance()Lcom/oplus/favorite/OplusFavoriteManager;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getOplusFloatingToolbarUtil()Landroid/widget/IOplusFloatingToolbarUtil;
    .locals 1

    .line 550
    new-instance v0, Landroid/widget/OplusFloatingToolbarUtil;

    invoke-direct {v0}, Landroid/widget/OplusFloatingToolbarUtil;-><init>()V

    return-object v0
.end method

.method private varargs blacklist getOplusFontManager([Ljava/lang/Object;)Lcom/oplus/font/IOplusFontManager;
    .locals 1
    .param p1, "vars"    # [Ljava/lang/Object;

    .line 421
    invoke-static {}, Lcom/oplus/font/OplusFontManager;->getInstance()Lcom/oplus/font/OplusFontManager;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getOplusGradientHooks()Landroid/drawable/IOplusGradientHooks;
    .locals 1

    .line 521
    new-instance v0, Landroid/drawable/OplusGradientHooksImpl;

    invoke-direct {v0}, Landroid/drawable/OplusGradientHooksImpl;-><init>()V

    return-object v0
.end method

.method private varargs blacklist getOplusHiddenApiManager([Ljava/lang/Object;)Lcom/oplus/hiddenapi/IOplusHiddenApiManager;
    .locals 3
    .param p1, "vars"    # [Ljava/lang/Object;

    .line 731
    const-string v0, "OplusHiddenApiManager"

    const-string v1, "get IOplusHiddenApiManagerExt feature:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    const-string v2, "getOplusHiddenApiManager"

    invoke-virtual {p0, v2, p1, v0, v1}, Loplus/android/OplusFrameworkFactoryImpl;->verityParamsType(Ljava/lang/String;[Ljava/lang/Object;I[Ljava/lang/Class;)V

    .line 733
    invoke-static {}, Lcom/oplus/hiddenapi/OplusHiddenApiManager;->getInstance()Lcom/oplus/hiddenapi/OplusHiddenApiManager;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getOplusInputMethodServiceUtils()Landroid/inputmethodservice/IOplusInputMethodServiceUtils;
    .locals 1

    .line 475
    invoke-static {}, Landroid/inputmethodservice/OplusInputMethodServiceUtils;->getInstance()Landroid/inputmethodservice/OplusInputMethodServiceUtils;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getOplusMultiUserStatisticsManager()Lcom/oplus/multiuser/IOplusMultiUserStatisticsManager;
    .locals 1

    .line 667
    invoke-static {}, Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;->getInstance()Lcom/oplus/multiuser/OplusMultiUserStatisticsManager;

    move-result-object v0

    return-object v0
.end method

.method private varargs blacklist getOplusNecManagerImpl([Ljava/lang/Object;)Lcom/oplus/nec/IOplusNecManager;
    .locals 2
    .param p1, "vars"    # [Ljava/lang/Object;

    .line 723
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Landroid/content/Context;

    .line 724
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/oplus/nec/OplusNecManager;->getInstance(Landroid/content/Context;)Lcom/oplus/nec/OplusNecManager;

    move-result-object v1

    return-object v1
.end method

.method private varargs blacklist getOplusOverScrollerHelper([Ljava/lang/Object;)Landroid/widget/IOplusOverScrollerHelper;
    .locals 4
    .param p1, "vars"    # [Ljava/lang/Object;

    .line 438
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Landroid/widget/OverScroller;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "getOplusOverScrollerHelper"

    invoke-virtual {p0, v2, p1, v0, v1}, Loplus/android/OplusFrameworkFactoryImpl;->verityParamsType(Ljava/lang/String;[Ljava/lang/Object;I[Ljava/lang/Class;)V

    .line 439
    aget-object v0, p1, v3

    check-cast v0, Landroid/widget/OverScroller;

    .line 440
    .local v0, "overScroller":Landroid/widget/OverScroller;
    new-instance v1, Landroid/widget/OplusOverScrollerHelper;

    invoke-direct {v1, v0}, Landroid/widget/OplusOverScrollerHelper;-><init>(Landroid/widget/OverScroller;)V

    return-object v1
.end method

.method private varargs blacklist getOplusOwmMonitorCenter([Ljava/lang/Object;)Landroid/net/wifi/owm/IOplusOwmMonitorCenter;
    .locals 2
    .param p1, "vars"    # [Ljava/lang/Object;

    .line 595
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Landroid/content/Context;

    .line 596
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OplusOwmMonitorCenter;

    move-result-object v1

    return-object v1
.end method

.method private varargs blacklist getOplusOwmMonitorKit([Ljava/lang/Object;)Landroid/net/wifi/owm/IOplusOwmMonitorKit;
    .locals 2
    .param p1, "vars"    # [Ljava/lang/Object;

    .line 600
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Landroid/content/Context;

    .line 601
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OplusOwmMonitorKit;

    move-result-object v1

    return-object v1
.end method

.method private varargs blacklist getOplusPerformanceManager([Ljava/lang/Object;)Lcom/oplus/performance/IOplusPerformanceManager;
    .locals 1
    .param p1, "vars"    # [Ljava/lang/Object;

    .line 654
    invoke-static {}, Lcom/oplus/performance/OplusPerformanceManager;->getInstance()Lcom/oplus/performance/OplusPerformanceManager;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getOplusPermissionCheckInjector()Lcom/oplus/permission/IOplusPermissionCheckInjector;
    .locals 1

    .line 649
    invoke-static {}, Lcom/oplus/permission/OplusPermissionCheckInjector;->getInstance()Lcom/oplus/permission/OplusPermissionCheckInjector;

    move-result-object v0

    return-object v0
.end method

.method private varargs blacklist getOplusPreLoadSplashManager([Ljava/lang/Object;)Lcom/oplus/preloadsplash/IOplusPreLoadSplashManager;
    .locals 1
    .param p1, "vars"    # [Ljava/lang/Object;

    .line 558
    invoke-static {}, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->getInstance()Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;

    move-result-object v0

    return-object v0
.end method

.method private varargs blacklist getOplusRGBNormalizeManager([Ljava/lang/Object;)Landroid/view/rgbnormalize/IOplusRGBNormalizeManager;
    .locals 1
    .param p1, "vars"    # [Ljava/lang/Object;

    .line 716
    new-instance v0, Landroid/view/rgbnormalize/OplusRGBNormalizeManager;

    invoke-direct {v0}, Landroid/view/rgbnormalize/OplusRGBNormalizeManager;-><init>()V

    return-object v0
.end method

.method private varargs blacklist getOplusReorderActionMenuManager([Ljava/lang/Object;)Landroid/widget/IOplusReorderActionMenuManager;
    .locals 1
    .param p1, "vars"    # [Ljava/lang/Object;

    .line 702
    new-instance v0, Landroid/widget/OplusReorderActionMenuManager;

    invoke-direct {v0}, Landroid/widget/OplusReorderActionMenuManager;-><init>()V

    return-object v0
.end method

.method private blacklist getOplusResolverManager()Lcom/android/internal/app/IOplusResolverManager;
    .locals 2

    .line 488
    invoke-static {}, Lcom/oplus/content/OplusFeatureConfigManager;->getInstance()Lcom/oplus/content/OplusFeatureConfigManager;

    move-result-object v0

    const-string v1, "oplus.software.op_share_sheet"

    invoke-virtual {v0, v1}, Lcom/oplus/content/OplusFeatureConfigManager;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 489
    new-instance v0, Lcom/android/internal/app/OpResolverManager;

    invoke-direct {v0}, Lcom/android/internal/app/OpResolverManager;-><init>()V

    goto :goto_0

    .line 490
    :cond_0
    new-instance v0, Lcom/android/internal/app/OplusResolverManager;

    invoke-direct {v0}, Lcom/android/internal/app/OplusResolverManager;-><init>()V

    .line 488
    :goto_0
    return-object v0
.end method

.method private blacklist getOplusResolverStyle()Lcom/android/internal/app/IOplusResolverStyle;
    .locals 1

    .line 498
    new-instance v0, Lcom/android/internal/app/OplusResolverStyle;

    invoke-direct {v0}, Lcom/android/internal/app/OplusResolverStyle;-><init>()V

    return-object v0
.end method

.method private varargs blacklist getOplusResourceManager([Ljava/lang/Object;)Lcom/oplus/orms/IOplusResourceManager;
    .locals 2
    .param p1, "vars"    # [Ljava/lang/Object;

    .line 630
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Class;

    .line 631
    .local v0, "clazz":Ljava/lang/Class;
    invoke-static {v0}, Lcom/oplus/orms/OplusResourceManager;->getInstance(Ljava/lang/Class;)Lcom/oplus/orms/OplusResourceManager;

    move-result-object v1

    return-object v1
.end method

.method private blacklist getOplusScreenShotEuclidManager()Lcom/oplus/screenshot/IOplusScreenShotEuclidManager;
    .locals 1

    .line 471
    invoke-static {}, Lcom/oplus/screenshot/OplusScreenShotEuclidManager;->getInstance()Lcom/oplus/screenshot/OplusScreenShotEuclidManager;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getOplusScrollOptimizationHelper()Landroid/widget/IOplusScrollOptimizationHelper;
    .locals 1

    .line 444
    new-instance v0, Landroid/widget/OplusScrollOptimizationHelper;

    invoke-direct {v0}, Landroid/widget/OplusScrollOptimizationHelper;-><init>()V

    return-object v0
.end method

.method private varargs blacklist getOplusScrollToTopManager([Ljava/lang/Object;)Landroid/view/IOplusScrollToTopManager;
    .locals 1
    .param p1, "vars"    # [Ljava/lang/Object;

    .line 688
    new-instance v0, Landroid/view/OplusScrollToTopManager;

    invoke-direct {v0}, Landroid/view/OplusScrollToTopManager;-><init>()V

    return-object v0
.end method

.method private blacklist getOplusThemeManager()Landroid/content/res/IOplusThemeManager;
    .locals 1

    .line 509
    invoke-static {}, Landroid/content/res/OplusThemeManager;->getInstance()Landroid/content/res/OplusThemeManager;

    move-result-object v0

    return-object v0
.end method

.method private varargs blacklist getOplusThemeStyle([Ljava/lang/Object;)Lcom/oplus/theme/IOplusThemeStyle;
    .locals 1
    .param p1, "vars"    # [Ljava/lang/Object;

    .line 537
    new-instance v0, Lcom/oplus/theme/OplusThemeStyle;

    invoke-direct {v0}, Lcom/oplus/theme/OplusThemeStyle;-><init>()V

    return-object v0
.end method

.method private varargs blacklist getOplusUIFirstManager([Ljava/lang/Object;)Lcom/oplus/uifirst/IOplusUIFirstManager;
    .locals 1
    .param p1, "vars"    # [Ljava/lang/Object;

    .line 626
    invoke-static {}, Lcom/oplus/uifirst/OplusUIFirstManager;->getInstance()Lcom/oplus/uifirst/OplusUIFirstManager;

    move-result-object v0

    return-object v0
.end method

.method private varargs blacklist getOplusViewHooks([Ljava/lang/Object;)Landroid/view/IOplusViewHooks;
    .locals 5
    .param p1, "vars"    # [Ljava/lang/Object;

    .line 431
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Landroid/view/View;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Landroid/content/res/Resources;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "getOplusViewHooks"

    invoke-virtual {p0, v2, p1, v0, v1}, Loplus/android/OplusFrameworkFactoryImpl;->verityParamsType(Ljava/lang/String;[Ljava/lang/Object;I[Ljava/lang/Class;)V

    .line 432
    aget-object v0, p1, v3

    check-cast v0, Landroid/view/View;

    .line 433
    .local v0, "view":Landroid/view/View;
    aget-object v1, p1, v4

    check-cast v1, Landroid/content/res/Resources;

    .line 434
    .local v1, "res":Landroid/content/res/Resources;
    new-instance v2, Landroid/view/OplusViewHooksImp;

    invoke-direct {v2, v0, v1}, Landroid/view/OplusViewHooksImp;-><init>(Landroid/view/View;Landroid/content/res/Resources;)V

    return-object v2
.end method

.method private varargs blacklist getOplusViewRootUtil([Ljava/lang/Object;)Landroid/view/IOplusViewRootUtil;
    .locals 1
    .param p1, "vars"    # [Ljava/lang/Object;

    .line 417
    invoke-static {}, Landroid/view/OplusViewRootUtil;->getInstance()Landroid/view/OplusViewRootUtil;

    move-result-object v0

    return-object v0
.end method

.method private varargs blacklist getOplusZenModeFeature([Ljava/lang/Object;)Lcom/oplus/media/IOplusZenModeFeature;
    .locals 1
    .param p1, "vars"    # [Ljava/lang/Object;

    .line 622
    new-instance v0, Lcom/oplus/media/OplusZenModeFeature;

    invoke-direct {v0}, Lcom/oplus/media/OplusZenModeFeature;-><init>()V

    return-object v0
.end method

.method private blacklist getTextJustificationHooks()Landroid/text/ITextJustificationHooks;
    .locals 1

    .line 517
    new-instance v0, Landroid/text/TextJustificationHooksImpl;

    invoke-direct {v0}, Landroid/text/TextJustificationHooksImpl;-><init>()V

    return-object v0
.end method

.method private varargs blacklist getUxIconPackageManagerExt([Ljava/lang/Object;)Landroid/content/res/IUxIconPackageManagerExt;
    .locals 3
    .param p1, "vars"    # [Ljava/lang/Object;

    .line 679
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Landroid/app/ApplicationPackageManager;

    .line 680
    .local v0, "packageManager":Landroid/app/ApplicationPackageManager;
    const/4 v1, 0x1

    aget-object v1, p1, v1

    check-cast v1, Landroid/content/Context;

    .line 681
    .local v1, "context":Landroid/content/Context;
    new-instance v2, Landroid/app/UxIconPackageManagerExt;

    invoke-direct {v2, v0, v1}, Landroid/app/UxIconPackageManagerExt;-><init>(Landroid/content/pm/PackageManager;Landroid/content/Context;)V

    return-object v2
.end method

.method private varargs blacklist getWifiRomUpdateHelper([Ljava/lang/Object;)Landroid/net/wifi/IWifiRomUpdateHelper;
    .locals 2
    .param p1, "vars"    # [Ljava/lang/Object;

    .line 606
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Landroid/content/Context;

    .line 607
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/net/wifi/OplusWifiRomUpdateHelper;->getInstance(Landroid/content/Context;)Landroid/net/wifi/OplusWifiRomUpdateHelper;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public blacklist getCompactWindowAppManager()Landroid/app/IOplusCompactWindowAppManager;
    .locals 1

    .line 740
    invoke-static {}, Landroid/app/OplusCompactWindowAppManager;->getInstance()Landroid/app/OplusCompactWindowAppManager;

    move-result-object v0

    return-object v0
.end method

.method public varargs whitelist getFeature(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;
    .locals 3
    .param p2, "vars"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/common/IOplusCommonFeature;",
            ">(TT;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 184
    .local p1, "def":Landroid/common/IOplusCommonFeature;, "TT;"
    invoke-virtual {p0, p1}, Loplus/android/OplusFrameworkFactoryImpl;->verityParams(Landroid/common/IOplusCommonFeature;)V

    .line 186
    invoke-static {p1}, Landroid/common/OplusFeatureManager;->isSupport(Landroid/common/IOplusCommonFeature;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    return-object p1

    .line 190
    :cond_0
    sget-object v0, Loplus/android/OplusFrameworkFactoryImpl$1;->$SwitchMap$android$common$OplusFeatureList$OplusIndex:[I

    invoke-interface {p1}, Landroid/common/IOplusCommonFeature;->index()Landroid/common/OplusFeatureList$OplusIndex;

    move-result-object v1

    invoke-virtual {v1}, Landroid/common/OplusFeatureList$OplusIndex;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "get feature:"

    const-string v2, "oplus.android.OplusFrameworkFactoryImpl"

    packed-switch v0, :pswitch_data_0

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknow feature:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Landroid/common/IOplusCommonFeature;->index()Landroid/common/OplusFeatureList$OplusIndex;

    move-result-object v1

    invoke-virtual {v1}, Landroid/common/OplusFeatureList$OplusIndex;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    return-object p1

    .line 403
    :pswitch_0
    invoke-virtual {p0}, Loplus/android/OplusFrameworkFactoryImpl;->getCompactWindowAppManager()Landroid/app/IOplusCompactWindowAppManager;

    move-result-object v0

    invoke-static {v0}, Landroid/common/OplusFeatureManager;->getTraceMonitor(Landroid/common/IOplusCommonFeature;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    return-object v0

    .line 395
    :pswitch_1
    invoke-direct {p0, p2}, Loplus/android/OplusFrameworkFactoryImpl;->getOplusNecManagerImpl([Ljava/lang/Object;)Lcom/oplus/nec/IOplusNecManager;

    move-result-object v0

    invoke-static {v0}, Landroid/common/OplusFeatureManager;->getTraceMonitor(Landroid/common/IOplusCommonFeature;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    return-object v0

    .line 388
    :pswitch_2
    invoke-direct {p0, p2}, Loplus/android/OplusFrameworkFactoryImpl;->getOplusRGBNormalizeManager([Ljava/lang/Object;)Landroid/view/rgbnormalize/IOplusRGBNormalizeManager;

    move-result-object v0

    invoke-static {v0}, Landroid/common/OplusFeatureManager;->getTraceMonitor(Landroid/common/IOplusCommonFeature;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    return-object v0

    .line 381
    :pswitch_3
    invoke-direct {p0, p2}, Loplus/android/OplusFrameworkFactoryImpl;->getOplusAutoLayoutManager([Ljava/lang/Object;)Landroid/view/autolayout/IOplusAutoLayoutManager;

    move-result-object v0

    invoke-static {v0}, Landroid/common/OplusFeatureManager;->getTraceMonitor(Landroid/common/IOplusCommonFeature;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    return-object v0

    .line 374
    :pswitch_4
    invoke-direct {p0, p2}, Loplus/android/OplusFrameworkFactoryImpl;->getOplusReorderActionMenuManager([Ljava/lang/Object;)Landroid/widget/IOplusReorderActionMenuManager;

    move-result-object v0

    invoke-static {v0}, Landroid/common/OplusFeatureManager;->getTraceMonitor(Landroid/common/IOplusCommonFeature;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    return-object v0

    .line 367
    :pswitch_5
    invoke-direct {p0, p2}, Loplus/android/OplusFrameworkFactoryImpl;->getOplusCursorFeedbackManager([Ljava/lang/Object;)Landroid/widget/IOplusCursorFeedbackManager;

    move-result-object v0

    invoke-static {v0}, Landroid/common/OplusFeatureManager;->getTraceMonitor(Landroid/common/IOplusCommonFeature;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    return-object v0

    .line 360
    :pswitch_6
    invoke-direct {p0, p2}, Loplus/android/OplusFrameworkFactoryImpl;->getOplusScrollToTopManager([Ljava/lang/Object;)Landroid/view/IOplusScrollToTopManager;

    move-result-object v0

    invoke-static {v0}, Landroid/common/OplusFeatureManager;->getTraceMonitor(Landroid/common/IOplusCommonFeature;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    return-object v0

    .line 355
    :pswitch_7
    invoke-direct {p0, p2}, Loplus/android/OplusFrameworkFactoryImpl;->getUxIconPackageManagerExt([Ljava/lang/Object;)Landroid/content/res/IUxIconPackageManagerExt;

    move-result-object v0

    invoke-static {v0}, Landroid/common/OplusFeatureManager;->getTraceMonitor(Landroid/common/IOplusCommonFeature;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    return-object v0

    .line 350
    :pswitch_8
    invoke-direct {p0, p2}, Loplus/android/OplusFrameworkFactoryImpl;->getOplusCustomizeTextViewFeature([Ljava/lang/Object;)Landroid/widget/IOplusCustomizeTextViewFeature;

    move-result-object v0

    invoke-static {v0}, Landroid/common/OplusFeatureManager;->getTraceMonitor(Landroid/common/IOplusCommonFeature;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    return-object v0

    .line 346
    :pswitch_9
    invoke-direct {p0}, Loplus/android/OplusFrameworkFactoryImpl;->getOplusEnterpriseAndOperatorFeature()Landroid/app/IOplusEnterpriseAndOperatorFeature;

    move-result-object v0

    invoke-static {v0}, Landroid/common/OplusFeatureManager;->getTraceMonitor(Landroid/common/IOplusCommonFeature;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    return-object v0

    .line 342
    :pswitch_a
    invoke-direct {p0, p2}, Loplus/android/OplusFrameworkFactoryImpl;->getOplusPerformanceManager([Ljava/lang/Object;)Lcom/oplus/performance/IOplusPerformanceManager;

    move-result-object v0

    invoke-static {v0}, Landroid/common/OplusFeatureManager;->getTraceMonitor(Landroid/common/IOplusCommonFeature;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    return-object v0

    .line 338
    :pswitch_b
    invoke-direct {p0}, Loplus/android/OplusFrameworkFactoryImpl;->getOplusMultiUserStatisticsManager()Lcom/oplus/multiuser/IOplusMultiUserStatisticsManager;

    move-result-object v0

    invoke-static {v0}, Landroid/common/OplusFeatureManager;->getTraceMonitor(Landroid/common/IOplusCommonFeature;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    return-object v0

    .line 332
    :pswitch_c
    invoke-direct {p0}, Loplus/android/OplusFrameworkFactoryImpl;->getOplusPermissionCheckInjector()Lcom/oplus/permission/IOplusPermissionCheckInjector;

    move-result-object v0

    invoke-static {v0}, Landroid/common/OplusFeatureManager;->getTraceMonitor(Landroid/common/IOplusCommonFeature;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    return-object v0

    .line 325
    :pswitch_d
    invoke-direct {p0, p2}, Loplus/android/OplusFrameworkFactoryImpl;->getOplusDailyBattProtoManager([Ljava/lang/Object;)Landroid/os/IOplusDailyBattProtoManager;

    move-result-object v0

    invoke-static {v0}, Landroid/common/OplusFeatureManager;->getTraceMonitor(Landroid/common/IOplusCommonFeature;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    return-object v0

    .line 318
    :pswitch_e
    invoke-direct {p0, p2}, Loplus/android/OplusFrameworkFactoryImpl;->getOAppNetControlManager([Ljava/lang/Object;)Landroid/nwpower/IOAppNetControlManager;

    move-result-object v0

    invoke-static {v0}, Landroid/common/OplusFeatureManager;->getTraceMonitor(Landroid/common/IOplusCommonFeature;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    return-object v0

    .line 315
    :pswitch_f
    invoke-direct {p0, p2}, Loplus/android/OplusFrameworkFactoryImpl;->getOplusResourceManager([Ljava/lang/Object;)Lcom/oplus/orms/IOplusResourceManager;

    move-result-object v0

    invoke-static {v0}, Landroid/common/OplusFeatureManager;->getTraceMonitor(Landroid/common/IOplusCommonFeature;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    return-object v0

    .line 312
    :pswitch_10
    invoke-direct {p0, p2}, Loplus/android/OplusFrameworkFactoryImpl;->getOplusUIFirstManager([Ljava/lang/Object;)Lcom/oplus/uifirst/IOplusUIFirstManager;

    move-result-object v0

    invoke-static {v0}, Landroid/common/OplusFeatureManager;->getTraceMonitor(Landroid/common/IOplusCommonFeature;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    return-object v0

    .line 309
    :pswitch_11
    invoke-direct {p0, p2}, Loplus/android/OplusFrameworkFactoryImpl;->getOplusPreLoadSplashManager([Ljava/lang/Object;)Lcom/oplus/preloadsplash/IOplusPreLoadSplashManager;

    move-result-object v0

    invoke-static {v0}, Landroid/common/OplusFeatureManager;->getTraceMonitor(Landroid/common/IOplusCommonFeature;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    return-object v0

    .line 305
    :pswitch_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Landroid/common/IOplusCommonFeature;->index()Landroid/common/OplusFeatureList$OplusIndex;

    move-result-object v1

    invoke-virtual {v1}, Landroid/common/OplusFeatureList$OplusIndex;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-direct {p0, p2}, Loplus/android/OplusFrameworkFactoryImpl;->getOplusZenModeFeature([Ljava/lang/Object;)Lcom/oplus/media/IOplusZenModeFeature;

    move-result-object v0

    invoke-static {v0}, Landroid/common/OplusFeatureManager;->getTraceMonitor(Landroid/common/IOplusCommonFeature;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    return-object v0

    .line 301
    :pswitch_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Landroid/common/IOplusCommonFeature;->index()Landroid/common/OplusFeatureList$OplusIndex;

    move-result-object v1

    invoke-virtual {v1}, Landroid/common/OplusFeatureList$OplusIndex;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-direct {p0}, Loplus/android/OplusFrameworkFactoryImpl;->getOplusDynamicVsyncFeature()Lcom/oplus/dynamicvsync/IOplusDynamicVsyncFeature;

    move-result-object v0

    invoke-static {v0}, Landroid/common/OplusFeatureManager;->getTraceMonitor(Landroid/common/IOplusCommonFeature;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    return-object v0

    .line 297
    :pswitch_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Landroid/common/IOplusCommonFeature;->index()Landroid/common/OplusFeatureList$OplusIndex;

    move-result-object v1

    invoke-virtual {v1}, Landroid/common/OplusFeatureList$OplusIndex;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-direct {p0, p2}, Loplus/android/OplusFrameworkFactoryImpl;->getOplusAutoResolutionFeature([Ljava/lang/Object;)Lcom/oplus/screenmode/IOplusAutoResolutionFeature;

    move-result-object v0

    invoke-static {v0}, Landroid/common/OplusFeatureManager;->getTraceMonitor(Landroid/common/IOplusCommonFeature;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    return-object v0

    .line 293
    :pswitch_15
    invoke-direct {p0, p2}, Loplus/android/OplusFrameworkFactoryImpl;->getOplusOwmMonitorKit([Ljava/lang/Object;)Landroid/net/wifi/owm/IOplusOwmMonitorKit;

    move-result-object v0

    invoke-static {v0}, Landroid/common/OplusFeatureManager;->getTraceMonitor(Landroid/common/IOplusCommonFeature;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    return-object v0

    .line 290
    :pswitch_16
    invoke-direct {p0, p2}, Loplus/android/OplusFrameworkFactoryImpl;->getOplusOwmMonitorCenter([Ljava/lang/Object;)Landroid/net/wifi/owm/IOplusOwmMonitorCenter;

    move-result-object v0

    invoke-static {v0}, Landroid/common/OplusFeatureManager;->getTraceMonitor(Landroid/common/IOplusCommonFeature;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    return-object v0

    .line 285
    :pswitch_17
    invoke-direct {p0, p2}, Loplus/android/OplusFrameworkFactoryImpl;->getWifiRomUpdateHelper([Ljava/lang/Object;)Landroid/net/wifi/IWifiRomUpdateHelper;

    move-result-object v0

    invoke-static {v0}, Landroid/common/OplusFeatureManager;->getTraceMonitor(Landroid/common/IOplusCommonFeature;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    return-object v0

    .line 282
    :pswitch_18
    invoke-direct {p0}, Loplus/android/OplusFrameworkFactoryImpl;->getOplusResolverStyle()Lcom/android/internal/app/IOplusResolverStyle;

    move-result-object v0

    invoke-static {v0}, Landroid/common/OplusFeatureManager;->getTraceMonitor(Landroid/common/IOplusCommonFeature;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    return-object v0

    .line 279
    :pswitch_19
    invoke-direct {p0}, Loplus/android/OplusFrameworkFactoryImpl;->getDragTextShadowHelper()Landroid/widget/IOplusDragTextShadowHelper;

    move-result-object v0

    invoke-static {v0}, Landroid/common/OplusFeatureManager;->getTraceMonitor(Landroid/common/IOplusCommonFeature;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    return-object v0

    .line 276
    :pswitch_1a
    invoke-direct {p0}, Loplus/android/OplusFrameworkFactoryImpl;->getOplusAppDynamicFeatureManager()Lcom/oplus/app/IOplusAppDynamicFeatureManager;

    move-result-object v0

    invoke-static {v0}, Landroid/common/OplusFeatureManager;->getTraceMonitor(Landroid/common/IOplusCommonFeature;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    return-object v0

    .line 273
    :pswitch_1b
    invoke-direct {p0, p2}, Loplus/android/OplusFrameworkFactoryImpl;->getOplusThemeStyle([Ljava/lang/Object;)Lcom/oplus/theme/IOplusThemeStyle;

    move-result-object v0

    invoke-static {v0}, Landroid/common/OplusFeatureManager;->getTraceMonitor(Landroid/common/IOplusCommonFeature;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    return-object v0

    .line 270
    :pswitch_1c
    invoke-direct {p0}, Loplus/android/OplusFrameworkFactoryImpl;->getOplusBurmeseZgFlagHooks()Landroid/view/IOplusBurmeseZgHooks;

    move-result-object v0

    invoke-static {v0}, Landroid/common/OplusFeatureManager;->getTraceMonitor(Landroid/common/IOplusCommonFeature;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    return-object v0

    .line 267
    :pswitch_1d
    invoke-direct {p0, p2}, Loplus/android/OplusFrameworkFactoryImpl;->getOplusDeepThinkerManager([Ljava/lang/Object;)Lcom/oplus/deepthinker/IOplusDeepThinkerManager;

    move-result-object v0

    invoke-static {v0}, Landroid/common/OplusFeatureManager;->getTraceMonitor(Landroid/common/IOplusCommonFeature;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    return-object v0

    .line 264
    :pswitch_1e
    invoke-direct {p0}, Loplus/android/OplusFrameworkFactoryImpl;->getOplusFloatingToolbarUtil()Landroid/widget/IOplusFloatingToolbarUtil;

    move-result-object v0

    invoke-static {v0}, Landroid/common/OplusFeatureManager;->getTraceMonitor(Landroid/common/IOplusCommonFeature;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    return-object v0

    .line 261
    :pswitch_1f
    invoke-direct {p0}, Loplus/android/OplusFrameworkFactoryImpl;->getOplusGradientHooks()Landroid/drawable/IOplusGradientHooks;

    move-result-object v0

    invoke-static {v0}, Landroid/common/OplusFeatureManager;->getTraceMonitor(Landroid/common/IOplusCommonFeature;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    return-object v0

    .line 258
    :pswitch_20
    invoke-direct {p0}, Loplus/android/OplusFrameworkFactoryImpl;->getTextJustificationHooks()Landroid/text/ITextJustificationHooks;

    move-result-object v0

    invoke-static {v0}, Landroid/common/OplusFeatureManager;->getTraceMonitor(Landroid/common/IOplusCommonFeature;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    return-object v0

    .line 255
    :pswitch_21
    invoke-direct {p0}, Loplus/android/OplusFrameworkFactoryImpl;->getOplusResolverManager()Lcom/android/internal/app/IOplusResolverManager;

    move-result-object v0

    invoke-static {v0}, Landroid/common/OplusFeatureManager;->getTraceMonitor(Landroid/common/IOplusCommonFeature;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    return-object v0

    .line 252
    :pswitch_22
    invoke-direct {p0}, Loplus/android/OplusFrameworkFactoryImpl;->getOplusInputMethodServiceUtils()Landroid/inputmethodservice/IOplusInputMethodServiceUtils;

    move-result-object v0

    invoke-static {v0}, Landroid/common/OplusFeatureManager;->getTraceMonitor(Landroid/common/IOplusCommonFeature;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    return-object v0

    .line 249
    :pswitch_23
    invoke-direct {p0}, Loplus/android/OplusFrameworkFactoryImpl;->getOplusDarkModeManager()Lcom/oplus/darkmode/IOplusDarkModeManager;

    move-result-object v0

    invoke-static {v0}, Landroid/common/OplusFeatureManager;->getTraceMonitor(Landroid/common/IOplusCommonFeature;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    return-object v0

    .line 246
    :pswitch_24
    invoke-direct {p0}, Loplus/android/OplusFrameworkFactoryImpl;->getOplusScreenShotEuclidManager()Lcom/oplus/screenshot/IOplusScreenShotEuclidManager;

    move-result-object v0

    invoke-static {v0}, Landroid/common/OplusFeatureManager;->getTraceMonitor(Landroid/common/IOplusCommonFeature;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    return-object v0

    .line 243
    :pswitch_25
    invoke-direct {p0}, Loplus/android/OplusFrameworkFactoryImpl;->getOplusFavoriteManager()Lcom/oplus/favorite/IOplusFavoriteManager;

    move-result-object v0

    invoke-static {v0}, Landroid/common/OplusFeatureManager;->getTraceMonitor(Landroid/common/IOplusCommonFeature;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    return-object v0

    .line 240
    :pswitch_26
    invoke-direct {p0}, Loplus/android/OplusFrameworkFactoryImpl;->getOplusScrollOptimizationHelper()Landroid/widget/IOplusScrollOptimizationHelper;

    move-result-object v0

    invoke-static {v0}, Landroid/common/OplusFeatureManager;->getTraceMonitor(Landroid/common/IOplusCommonFeature;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    return-object v0

    .line 237
    :pswitch_27
    invoke-direct {p0, p2}, Loplus/android/OplusFrameworkFactoryImpl;->getOplusOverScrollerHelper([Ljava/lang/Object;)Landroid/widget/IOplusOverScrollerHelper;

    move-result-object v0

    invoke-static {v0}, Landroid/common/OplusFeatureManager;->getTraceMonitor(Landroid/common/IOplusCommonFeature;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    return-object v0

    .line 234
    :pswitch_28
    invoke-direct {p0, p2}, Loplus/android/OplusFrameworkFactoryImpl;->getOplusFontManager([Ljava/lang/Object;)Lcom/oplus/font/IOplusFontManager;

    move-result-object v0

    invoke-static {v0}, Landroid/common/OplusFeatureManager;->getTraceMonitor(Landroid/common/IOplusCommonFeature;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    return-object v0

    .line 231
    :pswitch_29
    invoke-direct {p0, p2}, Loplus/android/OplusFrameworkFactoryImpl;->getOplusViewRootUtil([Ljava/lang/Object;)Landroid/view/IOplusViewRootUtil;

    move-result-object v0

    invoke-static {v0}, Landroid/common/OplusFeatureManager;->getTraceMonitor(Landroid/common/IOplusCommonFeature;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    return-object v0

    .line 228
    :pswitch_2a
    invoke-direct {p0, p2}, Loplus/android/OplusFrameworkFactoryImpl;->getOplusCameraManager([Ljava/lang/Object;)Landroid/hardware/camera2/IOplusCameraManager;

    move-result-object v0

    invoke-static {v0}, Landroid/common/OplusFeatureManager;->getTraceMonitor(Landroid/common/IOplusCommonFeature;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    return-object v0

    .line 222
    :pswitch_2b
    invoke-direct {p0, p2}, Loplus/android/OplusFrameworkFactoryImpl;->getOplusCamera2StatisticsManager([Ljava/lang/Object;)Landroid/hardware/camera2/IOplusCamera2StatisticsManager;

    move-result-object v0

    invoke-static {v0}, Landroid/common/OplusFeatureManager;->getTraceMonitor(Landroid/common/IOplusCommonFeature;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    return-object v0

    .line 219
    :pswitch_2c
    invoke-direct {p0, p2}, Loplus/android/OplusFrameworkFactoryImpl;->getOplusCameraStatisticsManager([Ljava/lang/Object;)Landroid/hardware/IOplusCameraStatisticsManager;

    move-result-object v0

    invoke-static {v0}, Landroid/common/OplusFeatureManager;->getTraceMonitor(Landroid/common/IOplusCommonFeature;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    return-object v0

    .line 216
    :pswitch_2d
    invoke-direct {p0, p2}, Loplus/android/OplusFrameworkFactoryImpl;->getOplusCameraUtils([Ljava/lang/Object;)Landroid/hardware/IOplusCameraUtils;

    move-result-object v0

    invoke-static {v0}, Landroid/common/OplusFeatureManager;->getTraceMonitor(Landroid/common/IOplusCommonFeature;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    return-object v0

    .line 213
    :pswitch_2e
    invoke-direct {p0}, Loplus/android/OplusFrameworkFactoryImpl;->getOplusCommonInjector()Landroid/app/IOplusCommonInjector;

    move-result-object v0

    invoke-static {v0}, Landroid/common/OplusFeatureManager;->getTraceMonitor(Landroid/common/IOplusCommonFeature;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    return-object v0

    .line 210
    :pswitch_2f
    invoke-direct {p0, p2}, Loplus/android/OplusFrameworkFactoryImpl;->getOplusViewHooks([Ljava/lang/Object;)Landroid/view/IOplusViewHooks;

    move-result-object v0

    invoke-static {v0}, Landroid/common/OplusFeatureManager;->getTraceMonitor(Landroid/common/IOplusCommonFeature;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    return-object v0

    .line 207
    :pswitch_30
    invoke-direct {p0, p2}, Loplus/android/OplusFrameworkFactoryImpl;->getOplusDirectViewHelper([Ljava/lang/Object;)Landroid/view/IOplusDirectViewHelper;

    move-result-object v0

    invoke-static {v0}, Landroid/common/OplusFeatureManager;->getTraceMonitor(Landroid/common/IOplusCommonFeature;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    return-object v0

    .line 204
    :pswitch_31
    invoke-direct {p0}, Loplus/android/OplusFrameworkFactoryImpl;->getOplusAccidentallyTouchHelper()Landroid/view/IOplusAccidentallyTouchHelper;

    move-result-object v0

    invoke-static {v0}, Landroid/common/OplusFeatureManager;->getTraceMonitor(Landroid/common/IOplusCommonFeature;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    return-object v0

    .line 201
    :pswitch_32
    invoke-direct {p0}, Loplus/android/OplusFrameworkFactoryImpl;->getOplusThemeManager()Landroid/content/res/IOplusThemeManager;

    move-result-object v0

    invoke-static {v0}, Landroid/common/OplusFeatureManager;->getTraceMonitor(Landroid/common/IOplusCommonFeature;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    return-object v0

    .line 198
    :pswitch_33
    invoke-virtual {p0}, Loplus/android/OplusFrameworkFactoryImpl;->getOplusMultiApp()Lcom/oplus/multiapp/IOplusMultiApp;

    move-result-object v0

    invoke-static {v0}, Landroid/common/OplusFeatureManager;->getTraceMonitor(Landroid/common/IOplusCommonFeature;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    return-object v0

    .line 194
    :pswitch_34
    invoke-direct {p0, p2}, Loplus/android/OplusFrameworkFactoryImpl;->getOplusHiddenApiManager([Ljava/lang/Object;)Lcom/oplus/hiddenapi/IOplusHiddenApiManager;

    move-result-object v0

    invoke-static {v0}, Landroid/common/OplusFeatureManager;->getTraceMonitor(Landroid/common/IOplusCommonFeature;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist getOplusMultiApp()Lcom/oplus/multiapp/IOplusMultiApp;
    .locals 1

    .line 533
    new-instance v0, Lcom/oplus/multiapp/OplusMultiAppImpl;

    invoke-direct {v0}, Lcom/oplus/multiapp/OplusMultiAppImpl;-><init>()V

    return-object v0
.end method
