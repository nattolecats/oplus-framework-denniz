.class public Landroid/view/WindowLayoutExtImpl;
.super Ljava/lang/Object;
.source "WindowLayoutExtImpl.java"

# interfaces
.implements Landroid/view/IWindowLayoutExt;


# static fields
.field private static final blacklist SUPPORT_REVISE_SQUARE_DISPLAY_ORIENTATION:Z

.field public static final blacklist SYSTEM_FOLDING_ANGLE_KEYS:Ljava/lang/String; = "system_folding_angle_for_oplus"

.field public static final blacklist SYSTEM_LARGEST_BRACKET_ANGLE:I = 0x96

.field public static final blacklist SYSTEM_SMALLEST_BRACKET_ANGLE:I = 0x1e

.field private static final blacklist ZOOM_IME_SPACE:I = 0x18


# instance fields
.field private blacklist mBase:Landroid/view/WindowLayout;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mDensity:F

.field private blacklist mIMEHeight:I

.field private blacklist mImeCropY:I

.field private blacklist mInputTargetWindowMode:I

.field private blacklist mNavBarHeight:I

.field private blacklist mRotation:I

.field private blacklist mScale:F

.field private blacklist mScreenHeight:I

.field private blacklist mStatusBarHeight:I

.field private blacklist mZoomRect:Landroid/graphics/Rect;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 40
    invoke-static {}, Lcom/oplus/content/OplusFeatureConfigManager;->getInstance()Lcom/oplus/content/OplusFeatureConfigManager;

    move-result-object v0

    .line 41
    const-string v1, "oplus.software.revise_square_display_orientation"

    invoke-virtual {v0, v1}, Lcom/oplus/content/OplusFeatureConfigManager;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroid/view/WindowLayoutExtImpl;->SUPPORT_REVISE_SQUARE_DISPLAY_ORIENTATION:Z

    .line 40
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "base"    # Ljava/lang/Object;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    move-object v0, p1

    check-cast v0, Landroid/view/WindowLayout;

    iput-object v0, p0, Landroid/view/WindowLayoutExtImpl;->mBase:Landroid/view/WindowLayout;

    .line 59
    return-void
.end method


# virtual methods
.method public blacklist adjustDisplayCutoutSafeExceptMaybeBars(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "displayFrame"    # Landroid/graphics/Rect;
    .param p3, "displayCutoutSafeExceptMaybeBars"    # Landroid/graphics/Rect;

    .line 133
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    if-nez p3, :cond_0

    goto :goto_1

    .line 137
    :cond_0
    sget-boolean v0, Landroid/view/WindowLayoutExtImpl;->SUPPORT_REVISE_SQUARE_DISPLAY_ORIENTATION:Z

    if-eqz v0, :cond_2

    .line 141
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 142
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    const v2, 0x7fffffff

    const/high16 v3, -0x80000000

    if-ge v0, v1, :cond_1

    .line 143
    iput v3, p3, Landroid/graphics/Rect;->left:I

    .line 144
    iput v2, p3, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 146
    :cond_1
    iput v3, p3, Landroid/graphics/Rect;->top:I

    .line 147
    iput v2, p3, Landroid/graphics/Rect;->bottom:I

    .line 151
    :cond_2
    :goto_0
    return-void

    .line 134
    :cond_3
    :goto_1
    return-void
.end method

.method public blacklist adjustWindowFrame(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 8
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "windowBounds"    # Landroid/graphics/Rect;
    .param p3, "windowingMode"    # I
    .param p4, "outDisplayFrame"    # Landroid/graphics/Rect;
    .param p5, "outParentFrame"    # Landroid/graphics/Rect;

    .line 69
    const/16 v0, 0x64

    if-ne p3, v0, :cond_8

    .line 70
    iget v1, p5, Landroid/graphics/Rect;->top:I

    .line 71
    .local v1, "parentTop":I
    iget v2, p4, Landroid/graphics/Rect;->top:I

    .line 72
    .local v2, "displayTop":I
    invoke-virtual {p5, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 73
    invoke-virtual {p4, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 74
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v4, -0x2

    if-ne v3, v4, :cond_0

    .line 75
    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result v3

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v4

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    .line 76
    iput v1, p5, Landroid/graphics/Rect;->top:I

    .line 77
    iput v2, p4, Landroid/graphics/Rect;->top:I

    .line 79
    :cond_0
    iget v3, p0, Landroid/view/WindowLayoutExtImpl;->mRotation:I

    const/4 v4, 0x2

    if-eqz v3, :cond_1

    if-eq v3, v4, :cond_1

    .line 80
    invoke-static {}, Lcom/oplus/content/OplusFeatureConfigManager;->getInstance()Lcom/oplus/content/OplusFeatureConfigManager;

    move-result-object v3

    const-string v5, "oplus.hardware.type.fold"

    invoke-virtual {v3, v5}, Lcom/oplus/content/OplusFeatureConfigManager;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_1
    iget v3, p0, Landroid/view/WindowLayoutExtImpl;->mInputTargetWindowMode:I

    if-ne v3, v0, :cond_8

    .line 83
    iget-object v0, p0, Landroid/view/WindowLayoutExtImpl;->mZoomRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 84
    :cond_2
    invoke-static {}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->getInstance()Lcom/oplus/zoomwindow/OplusZoomWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->getCurrentZoomWindowState()Lcom/oplus/zoomwindow/OplusZoomWindowInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->zoomRect:Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/view/WindowLayoutExtImpl;->mZoomRect:Landroid/graphics/Rect;

    .line 86
    :cond_3
    iget-object v0, p0, Landroid/view/WindowLayoutExtImpl;->mZoomRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v3, p0, Landroid/view/WindowLayoutExtImpl;->mScreenHeight:I

    iget v5, p0, Landroid/view/WindowLayoutExtImpl;->mIMEHeight:I

    sub-int/2addr v3, v5

    iget v6, p0, Landroid/view/WindowLayoutExtImpl;->mNavBarHeight:I

    sub-int/2addr v3, v6

    iget v6, p0, Landroid/view/WindowLayoutExtImpl;->mStatusBarHeight:I

    sub-int/2addr v3, v6

    const/high16 v6, 0x41c00000    # 24.0f

    iget v7, p0, Landroid/view/WindowLayoutExtImpl;->mDensity:F

    mul-float/2addr v7, v6

    float-to-int v6, v7

    sub-int/2addr v3, v6

    sub-int/2addr v0, v3

    int-to-float v0, v0

    iget v3, p0, Landroid/view/WindowLayoutExtImpl;->mScale:F

    div-float/2addr v0, v3

    float-to-int v0, v0

    .line 88
    .local v0, "cropY":I
    const-string v3, "use the value: "

    const/4 v6, 0x0

    if-lez v5, :cond_6

    if-lez v0, :cond_6

    .line 90
    iget-object v5, p0, Landroid/view/WindowLayoutExtImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "system_folding_angle_for_oplus"

    invoke-static {v5, v7, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 91
    .local v5, "systemFoldingAngle":I
    const/16 v6, 0x1e

    if-lt v5, v6, :cond_5

    const/16 v6, 0x96

    if-gt v5, v6, :cond_5

    iget v6, p0, Landroid/view/WindowLayoutExtImpl;->mRotation:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_4

    const/4 v7, 0x3

    if-ne v6, v7, :cond_5

    .line 93
    :cond_4
    iget-object v6, p0, Landroid/view/WindowLayoutExtImpl;->mZoomRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget v7, p0, Landroid/view/WindowLayoutExtImpl;->mScreenHeight:I

    div-int/2addr v7, v4

    add-int/2addr v7, v0

    int-to-float v4, v7

    iget v7, p0, Landroid/view/WindowLayoutExtImpl;->mScale:F

    mul-float/2addr v4, v7

    float-to-int v4, v4

    sub-int/2addr v6, v4

    .line 94
    .local v6, "inBracketModeCrop":I
    if-lez v6, :cond_5

    .line 95
    add-int/2addr v0, v6

    .line 98
    .end local v6    # "inBracketModeCrop":I
    :cond_5
    iput v0, p0, Landroid/view/WindowLayoutExtImpl;->mImeCropY:I

    .line 99
    invoke-static {}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->getInstance()Lcom/oplus/zoomwindow/OplusZoomWindowManager;

    move-result-object v4

    iget v6, p0, Landroid/view/WindowLayoutExtImpl;->mImeCropY:I

    invoke-virtual {v4, v6}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->setIMECrop(I)V

    .line 100
    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    iget v6, p0, Landroid/view/WindowLayoutExtImpl;->mImeCropY:I

    sub-int/2addr v4, v6

    iput v4, p4, Landroid/graphics/Rect;->bottom:I

    .line 101
    const-class v4, Lcom/oplus/zoomwindow/OplusZoomWindowManager;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, p0, Landroid/view/WindowLayoutExtImpl;->mImeCropY:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " to resize zoom window frame, mDisplayFrame = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .end local v5    # "systemFoldingAngle":I
    goto :goto_0

    :cond_6
    iget v4, p0, Landroid/view/WindowLayoutExtImpl;->mImeCropY:I

    if-lez v4, :cond_7

    if-nez v0, :cond_7

    .line 104
    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Landroid/view/WindowLayoutExtImpl;->mImeCropY:I

    sub-int/2addr v4, v5

    iput v4, p4, Landroid/graphics/Rect;->bottom:I

    .line 105
    const-class v4, Lcom/oplus/zoomwindow/OplusZoomWindowManager;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Landroid/view/WindowLayoutExtImpl;->mImeCropY:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " to resize zoom window frame, update when typing"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 107
    :cond_7
    if-lez v5, :cond_8

    if-gez v0, :cond_8

    .line 108
    iput v6, p0, Landroid/view/WindowLayoutExtImpl;->mImeCropY:I

    .line 109
    invoke-static {}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->getInstance()Lcom/oplus/zoomwindow/OplusZoomWindowManager;

    move-result-object v3

    iget v4, p0, Landroid/view/WindowLayoutExtImpl;->mImeCropY:I

    invoke-virtual {v3, v4}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->setIMECrop(I)V

    .line 113
    .end local v0    # "cropY":I
    .end local v1    # "parentTop":I
    .end local v2    # "displayTop":I
    :cond_8
    :goto_0
    return-void
.end method

.method public blacklist isCutoutModeShow(I)Z
    .locals 1
    .param p1, "cutoutMode"    # I

    .line 63
    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist setInsetsHeightForCropping(IIIII)V
    .locals 0
    .param p1, "screenHeight"    # I
    .param p2, "imeHeight"    # I
    .param p3, "navBarHeight"    # I
    .param p4, "statusBarHeight"    # I
    .param p5, "mode"    # I

    .line 116
    iput p1, p0, Landroid/view/WindowLayoutExtImpl;->mScreenHeight:I

    .line 117
    iput p2, p0, Landroid/view/WindowLayoutExtImpl;->mIMEHeight:I

    .line 118
    iput p3, p0, Landroid/view/WindowLayoutExtImpl;->mNavBarHeight:I

    .line 119
    iput p4, p0, Landroid/view/WindowLayoutExtImpl;->mStatusBarHeight:I

    .line 120
    iput p5, p0, Landroid/view/WindowLayoutExtImpl;->mInputTargetWindowMode:I

    .line 121
    return-void
.end method

.method public blacklist setOtherParametersForCropping(FFILandroid/graphics/Rect;Landroid/content/Context;)V
    .locals 0
    .param p1, "density"    # F
    .param p2, "scale"    # F
    .param p3, "rotation"    # I
    .param p4, "zoomRect"    # Landroid/graphics/Rect;
    .param p5, "context"    # Landroid/content/Context;

    .line 124
    iput p1, p0, Landroid/view/WindowLayoutExtImpl;->mDensity:F

    .line 125
    iput p2, p0, Landroid/view/WindowLayoutExtImpl;->mScale:F

    .line 126
    iput p3, p0, Landroid/view/WindowLayoutExtImpl;->mRotation:I

    .line 127
    iput-object p4, p0, Landroid/view/WindowLayoutExtImpl;->mZoomRect:Landroid/graphics/Rect;

    .line 128
    iput-object p5, p0, Landroid/view/WindowLayoutExtImpl;->mContext:Landroid/content/Context;

    .line 129
    return-void
.end method
