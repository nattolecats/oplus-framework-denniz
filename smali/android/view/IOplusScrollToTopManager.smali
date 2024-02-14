.class public interface abstract Landroid/view/IOplusScrollToTopManager;
.super Ljava/lang/Object;
.source "IOplusScrollToTopManager.java"

# interfaces
.implements Landroid/common/IOplusCommonFeature;


# static fields
.field public static final blacklist DEFAULT:Landroid/view/IOplusScrollToTopManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Landroid/view/IOplusScrollToTopManager$1;

    invoke-direct {v0}, Landroid/view/IOplusScrollToTopManager$1;-><init>()V

    sput-object v0, Landroid/view/IOplusScrollToTopManager;->DEFAULT:Landroid/view/IOplusScrollToTopManager;

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist getDefault()Landroid/common/IOplusCommonFeature;
    .locals 1

    .line 32
    invoke-interface {p0}, Landroid/view/IOplusScrollToTopManager;->getDefault()Landroid/view/IOplusScrollToTopManager;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDefault()Landroid/view/IOplusScrollToTopManager;
    .locals 1

    .line 44
    sget-object v0, Landroid/view/IOplusScrollToTopManager;->DEFAULT:Landroid/view/IOplusScrollToTopManager;

    return-object v0
.end method

.method public blacklist handleWindowFocusChanged(Landroid/content/Context;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hasFocus"    # Z

    .line 62
    return-void
.end method

.method public whitelist index()Landroid/common/OplusFeatureList$OplusIndex;
    .locals 1

    .line 39
    sget-object v0, Landroid/common/OplusFeatureList$OplusIndex;->IOplusScrollToTopManager:Landroid/common/OplusFeatureList$OplusIndex;

    return-object v0
.end method

.method public blacklist init(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 50
    return-void
.end method

.method public blacklist newInstance()Landroid/view/IOplusScrollToTopManager;
    .locals 1

    .line 47
    sget-object v0, Landroid/view/IOplusScrollToTopManager;->DEFAULT:Landroid/view/IOplusScrollToTopManager;

    return-object v0
.end method

.method public blacklist onWindowDying()V
    .locals 0

    .line 68
    return-void
.end method

.method public blacklist postShowGuidePopupRunnable(Landroid/view/View;)V
    .locals 0
    .param p1, "decorView"    # Landroid/view/View;

    .line 64
    return-void
.end method

.method public blacklist processPointerEvent(Landroid/view/MotionEvent;Landroid/content/Context;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;
    .param p2, "context"    # Landroid/content/Context;

    .line 66
    return-void
.end method

.method public blacklist setWindowFrame(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "winFrame"    # Landroid/graphics/Rect;

    .line 58
    return-void
.end method

.method public blacklist setWindowRootView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/WindowManager$LayoutParams;

    .line 54
    return-void
.end method
