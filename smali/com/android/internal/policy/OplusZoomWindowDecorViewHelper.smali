.class public Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;
.super Ljava/lang/Object;
.source "OplusZoomWindowDecorViewHelper.java"

# interfaces
.implements Lcom/android/internal/policy/IZoomWindowDecorViewHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper$OplusZoomAppObserver;
    }
.end annotation


# static fields
.field public static final blacklist HANDLE_CHANGE_BULE:I = 0x9

.field public static final blacklist HANDLE_CHANGE_DEFAULT:I = 0xa

.field public static final blacklist HIDE_BUTTONS:I = 0x6

.field public static final blacklist HIDE_HANDLE_BUTTON_BG:I = 0xd

.field public static final blacklist HIDE_HANDLE_BUTTON_BG_WITHOUT_ANIM:I = 0xe

.field public static final blacklist HIDE_ZOOM_TIP:I = 0x10

.field public static final blacklist MINI_TO_ZOOM:I = 0x3

.field private static final blacklist PAINT_FOCUS_ALPHA:I = 0x26

.field private static final blacklist PAINT_NO_FOCUS_ALPHA:I = 0xd

.field public static final blacklist RESET_DECORATION:I = 0x8

.field public static final blacklist RESTORE_NORMAL_MODE:I = 0xc

.field private static final blacklist SAFECENTER_PACKAGE:Ljava/lang/String; = "com.oplus.safecenter"

.field public static final blacklist SCALE_BOUND_HIDE:I = 0x2

.field public static final blacklist SCALE_BOUND_NONE:I = 0x0

.field public static final blacklist SCALE_BOUND_SHOW:I = 0x1

.field public static final blacklist SHOW_ALL_DECORATION:I = 0x5

.field public static final blacklist SHOW_BUTTONS:I = 0x7

.field public static final blacklist SHOW_ZOOM_TIP:I = 0xf

.field public static final blacklist SWITCH_MINI_TIP:I = 0x12

.field public static final blacklist SWITCH_SIMPLE_MODE:I = 0xb

.field public static final blacklist SWITCH_ZOOM_TIP:I = 0x11

.field private static final blacklist TAG:Ljava/lang/String; = "ZoomWindowDecorView"

.field private static final blacklist ZOOM_BOUND_STROKE_WIDTH:F = 3.0f

.field private static final blacklist ZOOM_NO_FOCUS_STROKE_WIDTH:F = 3.5f

.field private static final blacklist ZOOM_STROKE_WIDTH:F = 3.5f

.field public static final blacklist ZOOM_TO_MINI:I = 0x4


# instance fields
.field private blacklist mAppObserver:Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper$OplusZoomAppObserver;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mHasFocus:Z

.field private blacklist mHasMeasure:Z

.field private blacklist mHeightMeasureSpec:I

.field private blacklist mIgnoreInputEvent:Z

.field private blacklist mImeManager:Landroid/view/inputmethod/InputMethodManager;

.field private blacklist mMainHandler:Landroid/os/Handler;

.field private blacklist mNeedConsiderSplitScreen:Ljava/lang/Boolean;

.field private blacklist mPaint:Landroid/graphics/Paint;

.field private blacklist mPkgName:Ljava/lang/String;

.field private blacklist mRadisPixel:F

.field private blacklist mRadius:F

.field private blacklist mRectF:Landroid/graphics/RectF;

.field public blacklist mShowScaleBoundState:I

.field public blacklist mWho:Landroid/view/IWindow;

.field private blacklist mWidthMeasureSpec:I

.field private blacklist mWindow:Lcom/android/internal/policy/PhoneWindow;

.field private blacklist mZoomDisplayHeight:I

.field private blacklist mZoomStrokeWidthBound:F

.field private blacklist mZoomStrokeWidthNofocus:F

.field private blacklist mZoomStrokeWidthfocus:F

.field private blacklist mZoomWindowDecorView:Lcom/android/internal/widget/ZoomWindowDecorView;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmMainHandler(Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWindow(Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;)Lcom/android/internal/policy/PhoneWindow;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mprocessZoomDecorationChange(Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->processZoomDecorationChange(I)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mShowScaleBoundState:I

    .line 94
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mMainHandler:Landroid/os/Handler;

    .line 97
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mPaint:Landroid/graphics/Paint;

    .line 98
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mRectF:Landroid/graphics/RectF;

    .line 100
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mRadisPixel:F

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mNeedConsiderSplitScreen:Ljava/lang/Boolean;

    .line 119
    iput-object p2, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mPkgName:Ljava/lang/String;

    .line 120
    iget-object v0, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mPaint:Landroid/graphics/Paint;

    const-string v1, "#999999"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 121
    iget-object v0, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 122
    iget-object v0, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 123
    const/high16 v0, 0x40600000    # 3.5f

    invoke-static {p1, v0}, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->dipToPixel(Landroid/content/Context;F)F

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mZoomStrokeWidthfocus:F

    .line 124
    invoke-static {p1, v0}, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->dipToPixel(Landroid/content/Context;F)F

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mZoomStrokeWidthNofocus:F

    .line 125
    const/high16 v0, 0x40400000    # 3.0f

    invoke-static {p1, v0}, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->dipToPixel(Landroid/content/Context;F)F

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mZoomStrokeWidthBound:F

    .line 126
    iget-object v0, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mZoomStrokeWidthfocus:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 127
    iget-object v0, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 128
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/OplusBaseConfiguration;

    move-result-object v0

    .line 129
    .local v0, "configuration":Landroid/content/res/OplusBaseConfiguration;
    invoke-direct {p0, v0, p1}, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->setRectRadius(Landroid/content/res/OplusBaseConfiguration;Landroid/content/Context;)V

    .line 130
    iput-object p1, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mContext:Landroid/content/Context;

    .line 131
    const-string v1, "input_method"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mImeManager:Landroid/view/inputmethod/InputMethodManager;

    .line 135
    return-void
.end method

.method private static blacklist dipToPixel(Landroid/content/Context;F)F
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dpValue"    # F

    .line 331
    if-eqz p0, :cond_0

    .line 332
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 333
    .local v0, "scale":F
    mul-float v1, p1, v0

    return v1

    .line 335
    .end local v0    # "scale":F
    :cond_0
    const-string v0, "ZoomWindowDecorView"

    const-string v1, "Failed to dipToPixel: context is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist inflateZoomWindowDecorView(Landroid/view/LayoutInflater;Landroid/content/Context;)Lcom/android/internal/widget/ZoomWindowDecorView;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "context"    # Landroid/content/Context;

    .line 183
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 184
    nop

    .line 185
    const v0, 0xc090427

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ZoomWindowDecorView;

    .line 186
    .local v0, "view":Lcom/android/internal/widget/ZoomWindowDecorView;
    if-eqz v0, :cond_0

    .line 187
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ZoomWindowDecorView;->setForceDarkAllowed(Z)V

    .line 189
    :cond_0
    return-object v0
.end method

.method private blacklist processZoomDecorationChange(I)V
    .locals 3
    .param p1, "type"    # I

    .line 387
    iget-object v0, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mZoomWindowDecorView:Lcom/android/internal/widget/ZoomWindowDecorView;

    .line 388
    .local v0, "zoomDecorView":Lcom/android/internal/widget/ZoomWindowDecorView;
    if-nez v0, :cond_0

    .line 389
    const-string v1, "ZoomWindowDecorView"

    const-string v2, "mZoomWindowDecorView null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    return-void

    .line 392
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 435
    :pswitch_1
    iget-object v1, v0, Lcom/android/internal/widget/ZoomWindowDecorView;->mAnimHelper:Lcom/android/internal/policy/OplusZoomDecorAnimHelper;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->switchTipText(Z)V

    .line 436
    goto :goto_0

    .line 432
    :pswitch_2
    iget-object v2, v0, Lcom/android/internal/widget/ZoomWindowDecorView;->mAnimHelper:Lcom/android/internal/policy/OplusZoomDecorAnimHelper;

    invoke-virtual {v2, v1}, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->switchTipText(Z)V

    .line 433
    goto :goto_0

    .line 429
    :pswitch_3
    iget-object v2, v0, Lcom/android/internal/widget/ZoomWindowDecorView;->mAnimHelper:Lcom/android/internal/policy/OplusZoomDecorAnimHelper;

    invoke-virtual {v2, v1}, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->showOrHideTip(Z)V

    .line 430
    goto :goto_0

    .line 426
    :pswitch_4
    iget-object v1, v0, Lcom/android/internal/widget/ZoomWindowDecorView;->mAnimHelper:Lcom/android/internal/policy/OplusZoomDecorAnimHelper;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->updateHandleViewBackground(Z)V

    .line 427
    goto :goto_0

    .line 423
    :pswitch_5
    iget-object v1, v0, Lcom/android/internal/widget/ZoomWindowDecorView;->mAnimHelper:Lcom/android/internal/policy/OplusZoomDecorAnimHelper;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->updateHandleViewBackgroundWithAnim(Z)V

    .line 424
    goto :goto_0

    .line 420
    :pswitch_6
    invoke-virtual {v0}, Lcom/android/internal/widget/ZoomWindowDecorView;->restoreNormalMode()V

    .line 421
    goto :goto_0

    .line 417
    :pswitch_7
    invoke-virtual {v0}, Lcom/android/internal/widget/ZoomWindowDecorView;->switchSimpleMode()V

    .line 418
    goto :goto_0

    .line 414
    :pswitch_8
    iget-object v1, v0, Lcom/android/internal/widget/ZoomWindowDecorView;->mAnimHelper:Lcom/android/internal/policy/OplusZoomDecorAnimHelper;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->updateHandleColor(Z)V

    .line 415
    goto :goto_0

    .line 411
    :pswitch_9
    iget-object v2, v0, Lcom/android/internal/widget/ZoomWindowDecorView;->mAnimHelper:Lcom/android/internal/policy/OplusZoomDecorAnimHelper;

    invoke-virtual {v2, v1}, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->updateHandleColor(Z)V

    .line 412
    goto :goto_0

    .line 404
    :pswitch_a
    iget-object v1, v0, Lcom/android/internal/widget/ZoomWindowDecorView;->mAnimHelper:Lcom/android/internal/policy/OplusZoomDecorAnimHelper;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->updateThreeButtonWithAnim(Z)V

    .line 405
    goto :goto_0

    .line 408
    :pswitch_b
    iget-object v2, v0, Lcom/android/internal/widget/ZoomWindowDecorView;->mAnimHelper:Lcom/android/internal/policy/OplusZoomDecorAnimHelper;

    invoke-virtual {v2, v1}, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->updateThreeButtonWithAnim(Z)V

    .line 409
    goto :goto_0

    .line 400
    :pswitch_c
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->setIfShowScaleBounds(I)V

    .line 401
    goto :goto_0

    .line 396
    :pswitch_d
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->setIfShowScaleBounds(I)V

    .line 397
    nop

    .line 440
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private blacklist setRectRadius(Landroid/content/res/OplusBaseConfiguration;Landroid/content/Context;)V
    .locals 1
    .param p1, "configuration"    # Landroid/content/res/OplusBaseConfiguration;
    .param p2, "context"    # Landroid/content/Context;

    .line 341
    if-nez p1, :cond_0

    .line 342
    return-void

    .line 345
    :cond_0
    const/high16 v0, 0x41b00000    # 22.0f

    iput v0, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mRadius:F

    .line 346
    if-eqz p2, :cond_1

    .line 347
    invoke-static {p2, v0}, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->dipToPixel(Landroid/content/Context;F)F

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mRadisPixel:F

    .line 349
    :cond_1
    return-void
.end method


# virtual methods
.method protected blacklist createZoomWindowDecorView(Landroid/view/LayoutInflater;Landroid/content/res/OplusBaseConfiguration;Landroid/content/Context;)Lcom/android/internal/widget/ZoomWindowDecorView;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "newConfig"    # Landroid/content/res/OplusBaseConfiguration;
    .param p3, "context"    # Landroid/content/Context;

    .line 142
    iget-object v0, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mPkgName:Ljava/lang/String;

    const-string v1, "com.oplus.safecenter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ZoomWindowDecorView"

    if-eqz v0, :cond_0

    .line 143
    const-string v0, "Failed to createZoomWindowDecorView: unsupport pkg"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return-object v1

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    if-nez v0, :cond_1

    .line 148
    const-string v0, "window is null"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    return-object v1

    .line 152
    :cond_1
    const/4 v0, 0x0

    .line 153
    .local v0, "zoomWindowDecorView":Lcom/android/internal/widget/ZoomWindowDecorView;
    iget-object v1, p2, Landroid/content/res/OplusBaseConfiguration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 154
    .local v1, "winConfig":Landroid/app/WindowConfiguration;
    iget-object v2, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 155
    .local v2, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v3, v5, :cond_3

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v6, 0x2

    if-eq v3, v6, :cond_3

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v6, 0x4

    if-ne v3, v6, :cond_2

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_1

    :cond_3
    :goto_0
    move v3, v5

    .line 157
    .local v3, "isApplication":Z
    :goto_1
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v6

    .line 158
    .local v6, "windowingMode":I
    const/16 v7, 0x64

    if-ne v6, v7, :cond_4

    move v4, v5

    .line 159
    .local v4, "isZoomWindow":Z
    :cond_4
    if-eqz v3, :cond_6

    if-eqz v4, :cond_6

    .line 161
    if-nez v0, :cond_5

    .line 162
    :try_start_0
    invoke-direct {p0, p1, p3}, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->inflateZoomWindowDecorView(Landroid/view/LayoutInflater;Landroid/content/Context;)Lcom/android/internal/widget/ZoomWindowDecorView;

    move-result-object v7

    move-object v0, v7

    goto :goto_2

    .line 168
    :catch_0
    move-exception v5

    goto :goto_3

    .line 164
    :cond_5
    :goto_2
    if-eqz v0, :cond_6

    .line 165
    iget-object v7, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0, v7, v5, p0}, Lcom/android/internal/widget/ZoomWindowDecorView;->setPhoneWindow(Lcom/android/internal/policy/PhoneWindow;ZLcom/android/internal/policy/OplusZoomWindowDecorViewHelper;)V

    .line 166
    iget-boolean v5, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mHasFocus:Z

    invoke-virtual {v0, v5}, Lcom/android/internal/widget/ZoomWindowDecorView;->onWindowFocusChangedByRoot(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 169
    .local v5, "e":Ljava/lang/Exception;
    :goto_3
    const/4 v0, 0x0

    .line 170
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    nop

    .line 174
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_6
    :goto_4
    return-object v0
.end method

.method public blacklist decorViewDetached(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 229
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/OplusBaseConfiguration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/OplusBaseConfiguration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 230
    invoke-virtual {p0}, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->unregisterAppObserver()V

    .line 232
    :cond_0
    return-void
.end method

.method public blacklist dispatchTouchEvent(Landroid/view/InputEvent;Landroid/view/View;Landroid/util/MergedConfiguration;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/InputEvent;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "configuration"    # Landroid/util/MergedConfiguration;

    .line 292
    invoke-virtual {p3}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/OplusBaseConfiguration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/OplusBaseConfiguration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    .line 293
    .local v0, "windowingMode":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x64

    if-ne v0, v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 294
    .local v3, "zoomWindowMode":Z
    :goto_0
    if-eqz v3, :cond_4

    if-eqz p2, :cond_4

    instance-of v4, p2, Lcom/android/internal/policy/DecorView;

    if-eqz v4, :cond_4

    instance-of v4, p1, Landroid/view/MotionEvent;

    if-eqz v4, :cond_4

    .line 295
    if-eqz p1, :cond_1

    move-object v4, p1

    check-cast v4, Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v4

    if-nez v4, :cond_1

    .line 296
    return v2

    .line 298
    :cond_1
    iget-boolean v4, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mIgnoreInputEvent:Z

    if-eqz v4, :cond_2

    .line 299
    return v2

    .line 301
    :cond_2
    iget-object v4, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mZoomWindowDecorView:Lcom/android/internal/widget/ZoomWindowDecorView;

    if-eqz v4, :cond_3

    .line 302
    invoke-virtual {v4}, Lcom/android/internal/widget/ZoomWindowDecorView;->getZoomDecor()Landroid/view/View;

    move-result-object v4

    .line 303
    .local v4, "zoomDecor":Landroid/view/View;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_3

    .line 304
    iget-object v5, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mZoomWindowDecorView:Lcom/android/internal/widget/ZoomWindowDecorView;

    move-object v6, p1

    check-cast v6, Landroid/view/MotionEvent;

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/ZoomWindowDecorView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 305
    return v1

    .line 309
    .end local v4    # "zoomDecor":Landroid/view/View;
    :cond_3
    return v2

    .line 311
    :cond_4
    return v2
.end method

.method public blacklist draw(Landroid/graphics/Canvas;II)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 266
    iget-object v0, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mZoomWindowDecorView:Lcom/android/internal/widget/ZoomWindowDecorView;

    if-eqz v0, :cond_2

    .line 267
    invoke-virtual {v0}, Lcom/android/internal/widget/ZoomWindowDecorView;->getZoomDecor()Landroid/view/View;

    move-result-object v0

    .line 268
    .local v0, "zoomDecor":Landroid/view/View;
    const-string v1, "ignoreInputEvent"

    const-string v2, "ZoomWindowDecorView"

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    iget-object v4, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow;->isFloating()Z

    move-result v4

    if-nez v4, :cond_1

    .line 269
    iget-object v4, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mZoomWindowDecorView:Lcom/android/internal/widget/ZoomWindowDecorView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/ZoomWindowDecorView;->setCanMove(Z)V

    .line 270
    iget-object v4, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mRectF:Landroid/graphics/RectF;

    int-to-float v6, p2

    int-to-float v7, p3

    const/4 v8, 0x0

    invoke-virtual {v4, v8, v8, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 271
    iget-object v4, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    float-to-int v4, v4

    .line 272
    .local v4, "zoomHeight":I
    iget v6, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mZoomDisplayHeight:I

    if-ge v4, v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mImeManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodWindowVisibleHeight()I

    move-result v6

    if-gtz v6, :cond_0

    .line 273
    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iput-boolean v3, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mIgnoreInputEvent:Z

    .line 275
    return-void

    .line 277
    :cond_0
    iput-boolean v5, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mIgnoreInputEvent:Z

    .line 278
    iget-object v1, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mZoomWindowDecorView:Lcom/android/internal/widget/ZoomWindowDecorView;

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/ZoomWindowDecorView;->setCanMove(Z)V

    .line 279
    iget-object v1, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mZoomWindowDecorView:Lcom/android/internal/widget/ZoomWindowDecorView;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/ZoomWindowDecorView;->draw(Landroid/graphics/Canvas;)V

    .line 280
    .end local v4    # "zoomHeight":I
    goto :goto_0

    .line 281
    :cond_1
    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iput-boolean v3, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mIgnoreInputEvent:Z

    .line 285
    .end local v0    # "zoomDecor":Landroid/view/View;
    :cond_2
    :goto_0
    return-void
.end method

.method blacklist onResourcesLoaded(Landroid/view/LayoutInflater;)V
    .locals 0
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .line 179
    return-void
.end method

.method protected blacklist onResourcesLoaded(Landroid/view/LayoutInflater;I)V
    .locals 0
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "layoutResource"    # I

    .line 289
    return-void
.end method

.method public blacklist onWindowFocusChangedByRoot(ZLandroid/view/View;Landroid/util/MergedConfiguration;)V
    .locals 3
    .param p1, "hasWindowFocus"    # Z
    .param p2, "view"    # Landroid/view/View;
    .param p3, "configuration"    # Landroid/util/MergedConfiguration;

    .line 316
    if-eqz p2, :cond_1

    instance-of v0, p2, Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_1

    .line 317
    iget-boolean v0, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mHasFocus:Z

    if-eq v0, p1, :cond_0

    .line 318
    iput-boolean p1, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mHasFocus:Z

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mZoomWindowDecorView:Lcom/android/internal/widget/ZoomWindowDecorView;

    if-eqz v0, :cond_1

    .line 321
    invoke-virtual {v0}, Lcom/android/internal/widget/ZoomWindowDecorView;->getZoomDecor()Landroid/view/View;

    move-result-object v0

    .line 322
    .local v0, "zoomDecor":Landroid/view/View;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    .line 323
    iget-object v1, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mZoomWindowDecorView:Lcom/android/internal/widget/ZoomWindowDecorView;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/ZoomWindowDecorView;->onWindowFocusChangedByRoot(Z)V

    .line 328
    .end local v0    # "zoomDecor":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public blacklist registerAppObserver()V
    .locals 2

    .line 352
    iget-object v0, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mAppObserver:Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper$OplusZoomAppObserver;

    if-nez v0, :cond_0

    .line 353
    new-instance v0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper$OplusZoomAppObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper$OplusZoomAppObserver;-><init>(Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper$OplusZoomAppObserver-IA;)V

    iput-object v0, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mAppObserver:Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper$OplusZoomAppObserver;

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerAppObserver, phoneWindow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZoomWindowDecorView"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    invoke-static {}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->getInstance()Lcom/oplus/zoomwindow/OplusZoomWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mAppObserver:Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper$OplusZoomAppObserver;

    invoke-virtual {v0, v1}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->registerZoomAppObserver(Lcom/oplus/zoomwindow/IOplusZoomAppObserver;)Z

    .line 357
    :cond_0
    return-void
.end method

.method public blacklist relayoutZoomView(Lcom/android/internal/policy/PhoneWindow;)V
    .locals 5
    .param p1, "w"    # Lcom/android/internal/policy/PhoneWindow;

    .line 253
    iget-object v0, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mZoomWindowDecorView:Lcom/android/internal/widget/ZoomWindowDecorView;

    if-eqz v0, :cond_1

    .line 255
    iget-boolean v0, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mHasMeasure:Z

    if-nez v0, :cond_0

    .line 256
    iget v0, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mWidthMeasureSpec:I

    iget v1, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mHeightMeasureSpec:I

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->remeasureZoomView(II)Z

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mZoomWindowDecorView:Lcom/android/internal/widget/ZoomWindowDecorView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ZoomWindowDecorView;->getZoomDecor()Landroid/view/View;

    move-result-object v0

    .line 259
    .local v0, "zoomDecor":Landroid/view/View;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    .line 260
    iget-object v1, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mZoomWindowDecorView:Lcom/android/internal/widget/ZoomWindowDecorView;

    invoke-virtual {v1}, Lcom/android/internal/widget/ZoomWindowDecorView;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mZoomWindowDecorView:Lcom/android/internal/widget/ZoomWindowDecorView;

    invoke-virtual {v3}, Lcom/android/internal/widget/ZoomWindowDecorView;->getMeasuredHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Lcom/android/internal/widget/ZoomWindowDecorView;->layout(IIII)V

    .line 263
    .end local v0    # "zoomDecor":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public blacklist remeasureZoomView(II)Z
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 239
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mHasMeasure:Z

    .line 240
    iput p1, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mWidthMeasureSpec:I

    .line 241
    iput p2, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mHeightMeasureSpec:I

    .line 242
    iget-object v0, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mZoomWindowDecorView:Lcom/android/internal/widget/ZoomWindowDecorView;

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {v0}, Lcom/android/internal/widget/ZoomWindowDecorView;->getZoomDecor()Landroid/view/View;

    move-result-object v0

    .line 244
    .local v0, "zoomDecor":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 245
    iget-object v1, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mZoomWindowDecorView:Lcom/android/internal/widget/ZoomWindowDecorView;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/ZoomWindowDecorView;->measure(II)V

    .line 246
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mHasMeasure:Z

    .line 249
    .end local v0    # "zoomDecor":Landroid/view/View;
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mHasMeasure:Z

    return v0
.end method

.method public blacklist removeZoomView()V
    .locals 2

    .line 222
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mZoomWindowDecorView:Lcom/android/internal/widget/ZoomWindowDecorView;

    .line 223
    iput-object v0, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 224
    invoke-virtual {p0}, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->unregisterAppObserver()V

    .line 225
    const-string v0, "ZoomWindowDecorView"

    const-string v1, "removeZoomView"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    return-void
.end method

.method public blacklist setIfShowScaleBounds(I)V
    .locals 3
    .param p1, "show"    # I

    .line 443
    iput p1, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mShowScaleBoundState:I

    .line 444
    iget-object v0, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mZoomWindowDecorView:Lcom/android/internal/widget/ZoomWindowDecorView;

    if-eqz v0, :cond_0

    .line 445
    invoke-virtual {v0}, Lcom/android/internal/widget/ZoomWindowDecorView;->getZoomDecor()Landroid/view/View;

    move-result-object v0

    .line 446
    .local v0, "zoomDecor":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 447
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIfShowScaleBounds:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ZoomWindowDecorView"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget-object v1, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mZoomWindowDecorView:Lcom/android/internal/widget/ZoomWindowDecorView;

    invoke-virtual {v1}, Lcom/android/internal/widget/ZoomWindowDecorView;->updateLayout()V

    .line 450
    iget v1, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mShowScaleBoundState:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 455
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mZoomWindowDecorView:Lcom/android/internal/widget/ZoomWindowDecorView;

    iget-object v1, v1, Lcom/android/internal/widget/ZoomWindowDecorView;->mAnimHelper:Lcom/android/internal/policy/OplusZoomDecorAnimHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->updateScaleBoundWithAnim(Z)V

    .line 456
    iput v2, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mShowScaleBoundState:I

    .line 457
    goto :goto_0

    .line 452
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mZoomWindowDecorView:Lcom/android/internal/widget/ZoomWindowDecorView;

    iget-object v1, v1, Lcom/android/internal/widget/ZoomWindowDecorView;->mAnimHelper:Lcom/android/internal/policy/OplusZoomDecorAnimHelper;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->updateScaleBoundWithAnim(Z)V

    .line 464
    .end local v0    # "zoomDecor":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist setLastReportedMergedConfiguration(Landroid/content/res/OplusBaseConfiguration;Landroid/content/Context;Lcom/android/internal/policy/PhoneWindow;Lcom/android/internal/policy/DecorView;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/OplusBaseConfiguration;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "window"    # Lcom/android/internal/policy/PhoneWindow;
    .param p4, "decorView"    # Lcom/android/internal/policy/DecorView;

    .line 194
    iget-object v0, p1, Landroid/content/res/OplusBaseConfiguration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x64

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 195
    .local v0, "zoomWindow":Z
    :goto_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 196
    iget-object v2, p1, Landroid/content/res/OplusBaseConfiguration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mZoomDisplayHeight:I

    .line 197
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLastReportedMergedConfiguration mZoomDisplayHeight: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mZoomDisplayHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " getDecorView."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ZoomWindowDecorView"

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mZoomWindowDecorView:Lcom/android/internal/widget/ZoomWindowDecorView;

    if-nez v2, :cond_2

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    .line 200
    invoke-virtual {p3}, Lcom/android/internal/policy/PhoneWindow;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 201
    .local v2, "inflater":Landroid/view/LayoutInflater;
    iput-object p3, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 202
    invoke-virtual {p0, v2, p1, p2}, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->createZoomWindowDecorView(Landroid/view/LayoutInflater;Landroid/content/res/OplusBaseConfiguration;Landroid/content/Context;)Lcom/android/internal/widget/ZoomWindowDecorView;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mZoomWindowDecorView:Lcom/android/internal/widget/ZoomWindowDecorView;

    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    goto :goto_1

    .line 203
    :cond_2
    if-eqz v2, :cond_3

    .line 204
    invoke-virtual {v2, v0}, Lcom/android/internal/widget/ZoomWindowDecorView;->onConfigurationChanged(Z)V

    .line 205
    if-nez v0, :cond_4

    .line 206
    invoke-virtual {p0}, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->removeZoomView()V

    goto :goto_2

    .line 203
    :cond_3
    :goto_1
    nop

    .line 210
    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mZoomWindowDecorView:Lcom/android/internal/widget/ZoomWindowDecorView;

    if-eqz v2, :cond_5

    .line 211
    invoke-virtual {v2, v1}, Lcom/android/internal/widget/ZoomWindowDecorView;->setForceDarkAllowed(Z)V

    .line 214
    :cond_5
    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mZoomWindowDecorView:Lcom/android/internal/widget/ZoomWindowDecorView;

    if-eqz v1, :cond_6

    .line 215
    invoke-virtual {p0}, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->registerAppObserver()V

    goto :goto_3

    .line 217
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->unregisterAppObserver()V

    .line 219
    :goto_3
    return-void
.end method

.method public blacklist setWindow(Landroid/view/IWindow;)V
    .locals 0
    .param p1, "window"    # Landroid/view/IWindow;

    .line 138
    iput-object p1, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mWho:Landroid/view/IWindow;

    .line 139
    return-void
.end method

.method public blacklist unregisterAppObserver()V
    .locals 2

    .line 360
    iget-object v0, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mAppObserver:Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper$OplusZoomAppObserver;

    if-eqz v0, :cond_0

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterAppObserver, phoneWindow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZoomWindowDecorView"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-static {}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->getInstance()Lcom/oplus/zoomwindow/OplusZoomWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mAppObserver:Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper$OplusZoomAppObserver;

    invoke-virtual {v0, v1}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->unregisterZoomAppObserver(Lcom/oplus/zoomwindow/IOplusZoomAppObserver;)Z

    .line 363
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mAppObserver:Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper$OplusZoomAppObserver;

    .line 365
    :cond_0
    return-void
.end method

.method protected blacklist updateZoomWindowDecorStatus(Landroid/content/res/OplusBaseConfiguration;)V
    .locals 2
    .param p1, "config"    # Landroid/content/res/OplusBaseConfiguration;

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateZoomWindowDecorStatus config:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZoomWindowDecorView"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    return-void
.end method
