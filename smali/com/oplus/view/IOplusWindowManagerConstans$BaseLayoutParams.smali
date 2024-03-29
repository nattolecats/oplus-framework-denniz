.class public Lcom/oplus/view/IOplusWindowManagerConstans$BaseLayoutParams;
.super Landroid/view/WindowManager$LayoutParams;
.source "IOplusWindowManagerConstans.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/view/IOplusWindowManagerConstans;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaseLayoutParams"
.end annotation


# static fields
.field public static final whitelist OPLUSOS_FIRST_SYSTEM_WINDOW:I = 0x12c

.field public static final whitelist TYPE_CAR_DOCK_BAR:I = 0x912

.field public static final whitelist TYPE_DISPLAY_FULL_SCREEN:I = 0x834

.field public static final whitelist TYPE_DRAG_SCREEN_BACKGROUND:I = 0x8fd

.field public static final whitelist TYPE_DRAG_SCREEN_FOREGROUND:I = 0x8fe

.field public static final whitelist TYPE_MIRAGE_DIM_WINDOW:I = 0x910

.field public static final whitelist TYPE_MIRAGE_WINDOW:I = 0x90f

.field public static final whitelist TYPE_OPLUS_APP_BACK_ANIMATION_WINDOW:I = 0x90c

.field public static final whitelist TYPE_POWERVIEW:I = 0x8fc

.field public static final whitelist TYPE_SYSTEM_EDGE_PANEL:I = 0x90a

.field public static final whitelist TYPE_SYSTEM_GAME_HUNG_UP_VIEW:I = 0x909

.field public static final whitelist TYPE_SYSTEM_LONGSHOT:I = 0x8ff

.field public static final whitelist TYPE_SYSTEM_LONGSHOT_EDIT:I = 0x903

.field public static final whitelist TYPE_SYSTEM_LONGSHOT_GUIDE:I = 0x902

.field public static final whitelist TYPE_SYSTEM_LONGSHOT_MASK:I = 0x904

.field public static final whitelist TYPE_SYSTEM_LONGSHOT_POPUP:I = 0x906

.field public static final whitelist TYPE_SYSTEM_LONGSHOT_SCROLL:I = 0x900

.field public static final whitelist TYPE_SYSTEM_LONGSHOT_TOAST:I = 0x901

.field public static final whitelist TYPE_SYSTEM_LONGSHOT_VIEW:I = 0x905

.field public static final whitelist TYPE_SYSTEM_ONSCREEN_FINGERPRINT:I = 0x90b

.field public static final whitelist TYPE_SYSTEM_SCREENASSISTANT_VIEW:I = 0x907

.field public static final whitelist TYPE_SYSTEM_SCREENSHOT_LONGSHOT:I = 0x90d

.field public static final whitelist TYPE_ZOOM_CONTROLLER:I = 0x90e


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    return-void
.end method

.method public static whitelist isForceFullScreen(I)Z
    .locals 3
    .param p0, "type"    # I

    .line 287
    const/4 v0, 0x1

    sparse-switch p0, :sswitch_data_0

    .line 297
    add-int/lit16 v1, p0, -0x7d0

    add-int/lit16 v1, v1, -0x12c

    .line 298
    .local v1, "offset":I
    if-ltz v1, :cond_0

    const/4 v2, 0x2

    if-gt v1, v2, :cond_0

    goto :goto_0

    .line 293
    .end local v1    # "offset":I
    :sswitch_0
    return v0

    .line 298
    .restart local v1    # "offset":I
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x906 -> :sswitch_0
        0x90e -> :sswitch_0
    .end sparse-switch
.end method

.method public static whitelist isFullscreen(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 2
    .param p0, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 273
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static whitelist isLongshotWindow(I)Z
    .locals 2
    .param p0, "type"    # I

    .line 313
    add-int/lit16 v0, p0, -0x7d0

    add-int/lit16 v0, v0, -0x12c

    .line 314
    .local v0, "offset":I
    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/16 v1, 0xa

    if-le v0, v1, :cond_1

    :cond_0
    const/16 v1, 0x11

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static whitelist isSpecialAppWindow(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 1
    .param p0, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 326
    invoke-static {p0}, Lcom/oplus/view/IOplusWindowManagerConstans$BaseLayoutParams;->isFullscreen(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-static {v0}, Lcom/oplus/view/IOplusWindowManagerConstans$BaseLayoutParams;->isLongshotWindow(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    const/4 v0, 0x1

    return v0

    .line 331
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
