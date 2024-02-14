.class public Landroid/view/OplusColorModeManager;
.super Ljava/lang/Object;
.source "OplusColorModeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/OplusColorModeManager$LazyHolder;
    }
.end annotation


# instance fields
.field private blacklist TAG:Ljava/lang/String;

.field private blacklist mColorMode:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/OplusColorModeManager;->mColorMode:I

    .line 27
    const-string v0, "OplusColorModeManager"

    iput-object v0, p0, Landroid/view/OplusColorModeManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static blacklist getInstance()Landroid/view/OplusColorModeManager;
    .locals 1

    .line 29
    invoke-static {}, Landroid/view/OplusColorModeManager$LazyHolder;->-$$Nest$sfgetINSTANCE()Landroid/view/OplusColorModeManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist getColorMode(I)I
    .locals 2
    .param p1, "colorMode"    # I

    .line 45
    iget v0, p0, Landroid/view/OplusColorModeManager;->mColorMode:I

    if-ltz v0, :cond_0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 47
    return v0

    .line 49
    :cond_0
    return p1
.end method

.method public blacklist setColorMode(I)V
    .locals 0
    .param p1, "colorMode"    # I

    .line 36
    iput p1, p0, Landroid/view/OplusColorModeManager;->mColorMode:I

    .line 38
    return-void
.end method
