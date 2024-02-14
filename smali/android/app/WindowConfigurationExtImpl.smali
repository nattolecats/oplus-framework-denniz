.class public Landroid/app/WindowConfigurationExtImpl;
.super Ljava/lang/Object;
.source "WindowConfigurationExtImpl.java"

# interfaces
.implements Landroid/app/IWindowConfigurationExt;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "base"    # Ljava/lang/Object;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method


# virtual methods
.method public blacklist getWindowingComactMode()I
    .locals 1

    .line 43
    const/16 v0, 0x78

    return v0
.end method

.method public blacklist isWindowingBracketMode(I)Z
    .locals 1
    .param p1, "windowMode"    # I

    .line 48
    const/16 v0, 0x73

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isWindowingComactMode(I)Z
    .locals 1
    .param p1, "windowMode"    # I

    .line 38
    const/16 v0, 0x78

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isWindowingZoomMode(I)Z
    .locals 1
    .param p1, "windowMode"    # I

    .line 32
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
