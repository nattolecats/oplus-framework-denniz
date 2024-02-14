.class public Landroid/app/OplusBaseStatusBar;
.super Landroid/app/IOplusStatusBar$Stub;
.source "OplusBaseStatusBar.java"


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Landroid/app/IOplusStatusBar$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist controlOneHandedMode(ILjava/lang/String;)V
    .locals 0
    .param p1, "cmd"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 91
    return-void
.end method

.method public whitelist notifyInputMethodKeyboardPosition(Z)V
    .locals 0
    .param p1, "raise"    # Z

    .line 80
    return-void
.end method

.method public whitelist notifyMultiWindowFocusChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .line 28
    return-void
.end method

.method public whitelist setStatusBarFunction(ILjava/lang/String;)V
    .locals 0
    .param p1, "functionCode"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 49
    return-void
.end method

.method public whitelist toggleSplitScreen(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 38
    return-void
.end method

.method public whitelist topIsFullscreen(Z)V
    .locals 0
    .param p1, "fullscreen"    # Z

    .line 18
    return-void
.end method

.method public whitelist updateNavBarVisibility(I)V
    .locals 0
    .param p1, "navBarVis"    # I

    .line 59
    return-void
.end method

.method public whitelist updateNavBarVisibilityWithPkg(ILjava/lang/String;)V
    .locals 0
    .param p1, "navBarVis"    # I
    .param p2, "title"    # Ljava/lang/String;

    .line 70
    return-void
.end method
