.class public Lcom/android/internal/policy/DecorViewExtImpl;
.super Ljava/lang/Object;
.source "DecorViewExtImpl.java"

# interfaces
.implements Lcom/android/internal/policy/IDecorViewExt;


# static fields
.field private static final blacklist ACTION_MODE_FADE_ALPHA_DURATION:I = 0x64

.field private static final blacklist TAG:Ljava/lang/String; = "DecorViewExtImpl"

.field private static blacklist mDebugSystemBar:Z


# instance fields
.field private final blacklist DEBUG:Z

.field private blacklist mDarkModeBgColor:I

.field private blacklist mDecorView:Lcom/android/internal/policy/DecorView;

.field private final blacklist mOplusPm:Landroid/content/pm/OplusPackageManager;

.field private blacklist mViewHooks:Landroid/view/IOplusViewHooks;

.field private blacklist mViewRootImplExt:Landroid/view/IViewRootImplExt;

.field private blacklist mWindow:Lcom/android/internal/policy/PhoneWindow;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 62
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/DecorViewExtImpl;->mDebugSystemBar:Z

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 6
    .param p1, "decorView"    # Ljava/lang/Object;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/DecorViewExtImpl;->DEBUG:Z

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/DecorViewExtImpl;->mViewRootImplExt:Landroid/view/IViewRootImplExt;

    .line 86
    move-object v0, p1

    check-cast v0, Lcom/android/internal/policy/DecorView;

    iput-object v0, p0, Lcom/android/internal/policy/DecorViewExtImpl;->mDecorView:Lcom/android/internal/policy/DecorView;

    .line 87
    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 88
    .local v0, "resources":Landroid/content/res/Resources;
    invoke-static {}, Landroid/common/OplusFrameworkFactory;->getInstance()Landroid/common/OplusFrameworkFactory;

    move-result-object v2

    sget-object v3, Landroid/view/IOplusViewHooks;->DEFAULT:Landroid/view/IOplusViewHooks;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/internal/policy/DecorViewExtImpl;->mDecorView:Lcom/android/internal/policy/DecorView;

    aput-object v5, v4, v1

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/common/OplusFrameworkFactory;->getFeature(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v2

    check-cast v2, Landroid/view/IOplusViewHooks;

    iput-object v2, p0, Lcom/android/internal/policy/DecorViewExtImpl;->mViewHooks:Landroid/view/IOplusViewHooks;

    .line 92
    new-instance v2, Landroid/content/pm/OplusPackageManager;

    iget-object v3, p0, Lcom/android/internal/policy/DecorViewExtImpl;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v3}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/OplusPackageManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/DecorViewExtImpl;->mOplusPm:Landroid/content/pm/OplusPackageManager;

    .line 94
    const-string v2, "debug.log.systembar"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/internal/policy/DecorViewExtImpl;->mDebugSystemBar:Z

    .line 96
    return-void
.end method

.method private blacklist isOplusStyle()Z
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/DecorViewExtImpl;->mViewHooks:Landroid/view/IOplusViewHooks;

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


# virtual methods
.method public blacklist draw(Landroid/graphics/Canvas;II)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 199
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorViewExtImpl;->getViewrootExtImpl()Landroid/view/ViewRootImplExtImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorViewExtImpl;->getViewrootExtImpl()Landroid/view/ViewRootImplExtImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImplExtImpl;->getZoomWindowDecorViewHelper()Lcom/android/internal/policy/IZoomWindowDecorViewHelper;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/policy/IZoomWindowDecorViewHelper;->draw(Landroid/graphics/Canvas;II)V

    .line 203
    :cond_0
    return-void
.end method

.method public blacklist getBottomInset(ZILandroid/view/WindowInsets;)I
    .locals 1
    .param p1, "isImeWindow"    # Z
    .param p2, "normalBottomInset"    # I
    .param p3, "insets"    # Landroid/view/WindowInsets;

    .line 144
    invoke-static {}, Lcom/oplus/statusbar/OplusStatusBarController;->getInstance()Lcom/oplus/statusbar/OplusStatusBarController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/oplus/statusbar/OplusStatusBarController;->getBottomInset(ZILandroid/view/WindowInsets;)I

    move-result v0

    return v0
.end method

.method public blacklist getLegacyNavBarBackgroundColor()I
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/android/internal/policy/DecorViewExtImpl;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/util/OplusDarkModeUtil;->isNightMode(Landroid/content/Context;)Z

    move-result v0

    const/high16 v1, -0x1000000

    if-eqz v0, :cond_0

    .line 180
    return v1

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorViewExtImpl;->mOplusPm:Landroid/content/pm/OplusPackageManager;

    invoke-virtual {v0}, Landroid/content/pm/OplusPackageManager;->isClosedSuperFirewall()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method blacklist getViewrootExtImpl()Landroid/view/ViewRootImplExtImpl;
    .locals 2

    .line 237
    iget-object v0, p0, Lcom/android/internal/policy/DecorViewExtImpl;->mViewRootImplExt:Landroid/view/IViewRootImplExt;

    if-eqz v0, :cond_0

    .line 238
    const-class v1, Landroid/view/ViewRootImplExtImpl;

    invoke-static {v1, v0}, Lcom/oplus/util/OplusTypeCastingHelper;->typeCasting(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImplExtImpl;

    return-object v0

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorViewExtImpl;->mDecorView:Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/android/internal/policy/DecorViewExtImpl;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getWrapper()Landroid/view/IViewRootImplWrapper;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IViewRootImplWrapper;->getExtImpl()Landroid/view/IViewRootImplExt;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/DecorViewExtImpl;->mViewRootImplExt:Landroid/view/IViewRootImplExt;

    .line 243
    :cond_1
    const-class v0, Landroid/view/ViewRootImplExtImpl;

    iget-object v1, p0, Lcom/android/internal/policy/DecorViewExtImpl;->mViewRootImplExt:Landroid/view/IViewRootImplExt;

    invoke-static {v0, v1}, Lcom/oplus/util/OplusTypeCastingHelper;->typeCasting(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImplExtImpl;

    return-object v0
.end method

.method public blacklist hookDecorView(Landroid/content/Context;Z)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "defaultForceWindowDrawsBarBackgrounds"    # Z

    .line 110
    new-instance v0, Landroid/content/pm/OplusPackageManager;

    invoke-direct {v0}, Landroid/content/pm/OplusPackageManager;-><init>()V

    .line 111
    .local v0, "pm":Landroid/content/pm/OplusPackageManager;
    nop

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 111
    const/16 v2, 0x1f

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/OplusPackageManager;->inCptWhiteList(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move v1, p2

    .line 114
    .local v1, "forceWindowDrawsBarBackgrounds":Z
    :goto_0
    return v1
.end method

.method public blacklist hookOnDestroyActionMode(Landroid/animation/ObjectAnimator;)V
    .locals 2
    .param p1, "fadeAnim"    # Landroid/animation/ObjectAnimator;

    .line 131
    invoke-direct {p0}, Lcom/android/internal/policy/DecorViewExtImpl;->isOplusStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 132
    const-wide/16 v0, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 135
    :cond_0
    return-void
.end method

.method public blacklist hookSetHandledPrimaryActionMode(Landroid/animation/ObjectAnimator;)V
    .locals 2
    .param p1, "fadeAnim"    # Landroid/animation/ObjectAnimator;

    .line 121
    invoke-direct {p0}, Lcom/android/internal/policy/DecorViewExtImpl;->isOplusStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 122
    const-wide/16 v0, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 125
    :cond_0
    return-void
.end method

.method public blacklist initDarkModeBackgroundColor()V
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/android/internal/policy/DecorViewExtImpl;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/statusbar/OplusStatusBarController;->getDarkModeBackgroundColor(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/DecorViewExtImpl;->mDarkModeBgColor:I

    .line 251
    return-void
.end method

.method public blacklist inputLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "level"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "event"    # Landroid/view/MotionEvent;

    .line 154
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "v1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_1
    const-string v0, "d1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_2
    const-string v0, "v"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_3
    const-string v0, "d"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 169
    :pswitch_0
    invoke-static {}, Lcom/oplus/debug/InputLog;->isLevelVerbose()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    invoke-static {p2, p3}, Lcom/oplus/debug/InputLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 164
    :pswitch_1
    if-eqz p4, :cond_1

    invoke-static {}, Lcom/oplus/debug/InputLog;->isLevelDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-static {v0}, Lcom/oplus/debug/InputLog;->isVerboseAction(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    invoke-static {p2, p3}, Lcom/oplus/debug/InputLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 161
    :pswitch_2
    invoke-static {p2, p3}, Lcom/oplus/debug/InputLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    goto :goto_2

    .line 156
    :pswitch_3
    invoke-static {}, Lcom/oplus/debug/InputLog;->isLevelDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    invoke-static {p2, p3}, Lcom/oplus/debug/InputLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :cond_1
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_3
        0x76 -> :sswitch_2
        0xc4d -> :sswitch_1
        0xe7b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist isClosedSuperFirewall()Z
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/android/internal/policy/DecorViewExtImpl;->mOplusPm:Landroid/content/pm/OplusPackageManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/OplusPackageManager;->isClosedSuperFirewall()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isDebugSystemBar()Z
    .locals 1

    .line 139
    sget-boolean v0, Lcom/android/internal/policy/DecorViewExtImpl;->mDebugSystemBar:Z

    return v0
.end method

.method public blacklist onConfigurationChanged(Landroid/content/res/OplusBaseConfiguration;Landroid/content/Context;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/OplusBaseConfiguration;
    .param p2, "context"    # Landroid/content/Context;

    .line 218
    iget-object v0, p0, Lcom/android/internal/policy/DecorViewExtImpl;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getWrapper()Lcom/android/internal/policy/IPhoneWindowWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/IPhoneWindowWrapper;->getExtImpl()Lcom/android/internal/policy/IPhoneWindowExt;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/IPhoneWindowExt;->isUseDefaultNavigationBarColor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/android/internal/policy/DecorViewExtImpl;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v1, p0, Lcom/android/internal/policy/DecorViewExtImpl;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/statusbar/OplusStatusBarController;->getDefaultNavigationBarColor(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorViewExtImpl;->mDecorView:Lcom/android/internal/policy/DecorView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    .line 222
    return-void
.end method

.method public blacklist relayoutZoomView()V
    .locals 2

    .line 189
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorViewExtImpl;->getViewrootExtImpl()Landroid/view/ViewRootImplExtImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorViewExtImpl;->getViewrootExtImpl()Landroid/view/ViewRootImplExtImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImplExtImpl;->getZoomWindowDecorViewHelper()Lcom/android/internal/policy/IZoomWindowDecorViewHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/DecorViewExtImpl;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-interface {v0, v1}, Lcom/android/internal/policy/IZoomWindowDecorViewHelper;->relayoutZoomView(Lcom/android/internal/policy/PhoneWindow;)V

    .line 193
    :cond_0
    return-void
.end method

.method public blacklist remeasureZoomView(II)Z
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 228
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorViewExtImpl;->getViewrootExtImpl()Landroid/view/ViewRootImplExtImpl;

    move-result-object v0

    .line 229
    .local v0, "viewRootext":Landroid/view/ViewRootImplExtImpl;
    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {v0}, Landroid/view/ViewRootImplExtImpl;->getZoomWindowDecorViewHelper()Lcom/android/internal/policy/IZoomWindowDecorViewHelper;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/policy/IZoomWindowDecorViewHelper;->remeasureZoomView(II)Z

    .line 233
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public blacklist requestLayoutForDarkModeBackgroundView()V
    .locals 2

    .line 255
    iget-object v0, p0, Lcom/android/internal/policy/DecorViewExtImpl;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/statusbar/OplusStatusBarController;->getDarkModeBackgroundColor(Landroid/content/Context;)I

    move-result v0

    .line 256
    .local v0, "newDarkModeBgColor":I
    iget v1, p0, Lcom/android/internal/policy/DecorViewExtImpl;->mDarkModeBgColor:I

    if-eq v1, v0, :cond_1

    .line 257
    iget-object v1, p0, Lcom/android/internal/policy/DecorViewExtImpl;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1}, Lcom/android/internal/policy/DecorView;->getNavigationBarBackgroundView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 258
    iget-object v1, p0, Lcom/android/internal/policy/DecorViewExtImpl;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1}, Lcom/android/internal/policy/DecorView;->getNavigationBarBackgroundView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 260
    :cond_0
    iput v0, p0, Lcom/android/internal/policy/DecorViewExtImpl;->mDarkModeBgColor:I

    .line 262
    :cond_1
    return-void
.end method

.method public blacklist setWindow(Landroid/view/IWindow;)V
    .locals 1
    .param p1, "window"    # Landroid/view/IWindow;

    .line 209
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorViewExtImpl;->getViewrootExtImpl()Landroid/view/ViewRootImplExtImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorViewExtImpl;->getViewrootExtImpl()Landroid/view/ViewRootImplExtImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImplExtImpl;->getZoomWindowDecorViewHelper()Lcom/android/internal/policy/IZoomWindowDecorViewHelper;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/policy/IZoomWindowDecorViewHelper;->setWindow(Landroid/view/IWindow;)V

    .line 213
    :cond_0
    return-void
.end method

.method public blacklist updatePhoneWindow(Lcom/android/internal/policy/PhoneWindow;)V
    .locals 0
    .param p1, "window"    # Lcom/android/internal/policy/PhoneWindow;

    .line 149
    iput-object p1, p0, Lcom/android/internal/policy/DecorViewExtImpl;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 150
    return-void
.end method
