.class public interface abstract Landroid/inputmethodservice/IOplusInputMethodServiceUtils;
.super Ljava/lang/Object;
.source "IOplusInputMethodServiceUtils.java"

# interfaces
.implements Landroid/common/IOplusCommonFeature;


# static fields
.field public static final whitelist DEFAULT:Landroid/inputmethodservice/IOplusInputMethodServiceUtils;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Landroid/inputmethodservice/IOplusInputMethodServiceUtils$1;

    invoke-direct {v0}, Landroid/inputmethodservice/IOplusInputMethodServiceUtils$1;-><init>()V

    sput-object v0, Landroid/inputmethodservice/IOplusInputMethodServiceUtils;->DEFAULT:Landroid/inputmethodservice/IOplusInputMethodServiceUtils;

    return-void
.end method


# virtual methods
.method public whitelist changeFlag(I)I
    .locals 0
    .param p1, "flag"    # I

    .line 93
    return p1
.end method

.method public whitelist forceDarkWithoutTheme(Landroid/content/Context;Landroid/view/View;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "useAutoDark"    # Z

    .line 125
    return-void
.end method

.method public bridge synthetic whitelist getDefault()Landroid/common/IOplusCommonFeature;
    .locals 1

    .line 31
    invoke-interface {p0}, Landroid/inputmethodservice/IOplusInputMethodServiceUtils;->getDefault()Landroid/inputmethodservice/IOplusInputMethodServiceUtils;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDefault()Landroid/inputmethodservice/IOplusInputMethodServiceUtils;
    .locals 1

    .line 38
    sget-object v0, Landroid/inputmethodservice/IOplusInputMethodServiceUtils;->DEFAULT:Landroid/inputmethodservice/IOplusInputMethodServiceUtils;

    return-object v0
.end method

.method public whitelist getDockSide()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist hideImmediately(ILandroid/app/Dialog;)Z
    .locals 1
    .param p1, "flag"    # I
    .param p2, "window"    # Landroid/app/Dialog;

    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist index()Landroid/common/OplusFeatureList$OplusIndex;
    .locals 1

    .line 43
    sget-object v0, Landroid/common/OplusFeatureList$OplusIndex;->IOplusInputMethodServiceUtils:Landroid/common/OplusFeatureList$OplusIndex;

    return-object v0
.end method

.method public whitelist init(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 48
    return-void
.end method

.method public whitelist isFoldDisplayOpen()Z
    .locals 1

    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onChange(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .line 57
    return-void
.end method

.method public whitelist onComputeRaise(Landroid/inputmethodservice/InputMethodService$Insets;Landroid/app/Dialog;)V
    .locals 0
    .param p1, "mTmpInsets"    # Landroid/inputmethodservice/InputMethodService$Insets;
    .param p2, "window"    # Landroid/app/Dialog;

    .line 69
    return-void
.end method

.method public whitelist onCreateAndRegister(Landroid/database/ContentObserver;)V
    .locals 0
    .param p1, "contentObserver"    # Landroid/database/ContentObserver;

    .line 78
    return-void
.end method

.method public whitelist onDestroy()V
    .locals 0

    .line 86
    return-void
.end method

.method public whitelist replaceIMEDurationMs(ZI)I
    .locals 0
    .param p1, "show"    # Z
    .param p2, "time"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 116
    return p2
.end method

.method public whitelist replaceIMEInterpolator(Landroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;
    .locals 0
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 111
    return-object p1
.end method

.method public whitelist setInsetAnimationTid(I)Z
    .locals 1
    .param p1, "type"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist shouldPreventTouch()Z
    .locals 1

    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist showRaiseKeyboard(Landroid/view/WindowInsets;)Z
    .locals 1
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist skipInsetChange(I)Z
    .locals 1
    .param p1, "flag"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 98
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist updateNavigationGuardColor(Landroid/app/Dialog;)V
    .locals 0
    .param p1, "window"    # Landroid/app/Dialog;

    .line 61
    return-void
.end method

.method public whitelist updateNavigationGuardColorDelay(Landroid/app/Dialog;)V
    .locals 0
    .param p1, "window"    # Landroid/app/Dialog;

    .line 65
    return-void
.end method

.method public whitelist uploadData(J)V
    .locals 0
    .param p1, "time"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 74
    return-void
.end method
