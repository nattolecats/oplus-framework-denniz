.class public Landroid/view/WindowExtImpl;
.super Ljava/lang/Object;
.source "WindowExtImpl.java"

# interfaces
.implements Landroid/view/IWindowExt;


# instance fields
.field private blacklist mColorModeMgr:Landroid/view/OplusColorModeManager;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "base"    # Ljava/lang/Object;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/WindowExtImpl;->mColorModeMgr:Landroid/view/OplusColorModeManager;

    .line 25
    invoke-static {}, Landroid/view/OplusColorModeManager;->getInstance()Landroid/view/OplusColorModeManager;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowExtImpl;->mColorModeMgr:Landroid/view/OplusColorModeManager;

    .line 26
    return-void
.end method


# virtual methods
.method public blacklist getColorMode(I)I
    .locals 1
    .param p1, "colorMode"    # I

    .line 29
    iget-object v0, p0, Landroid/view/WindowExtImpl;->mColorModeMgr:Landroid/view/OplusColorModeManager;

    invoke-virtual {v0, p1}, Landroid/view/OplusColorModeManager;->getColorMode(I)I

    move-result v0

    .line 30
    .local v0, "tempmode":I
    return v0
.end method
