.class public Landroid/app/dialog/AlertControllerExt;
.super Ljava/lang/Object;
.source "AlertControllerExt.java"

# interfaces
.implements Landroid/app/dialog/IAlertControllerExt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/dialog/AlertControllerExt$BottomSpaceHandler;
    }
.end annotation


# static fields
.field private static final blacklist DEFAULT_DISPALY_ID:I = 0x0

.field private static final blacklist FULL_SCREEN_FLAG:I = -0x7ffffa00

.field private static final blacklist TAG:Ljava/lang/String; = "AlertControllerExt"

.field private static final blacklist TYPE_CENTER:I


# instance fields
.field private blacklist mAlertController:Lcom/android/internal/app/AlertController;

.field private blacklist mButtonNegative:Landroid/widget/Button;

.field private blacklist mButtonNegativeText:Ljava/lang/CharSequence;

.field private blacklist mButtonNeutral:Landroid/widget/Button;

.field private blacklist mButtonNeutralText:Ljava/lang/CharSequence;

.field private blacklist mButtonPaint:Landroid/text/TextPaint;

.field private blacklist mButtonPanelStub:Landroid/view/ViewStub;

.field private blacklist mButtonPositive:Landroid/widget/Button;

.field private blacklist mButtonPositiveText:Ljava/lang/CharSequence;

.field private blacklist mComponentCallbacks:Landroid/content/ComponentCallbacks;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mDialogType:I

.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mIsValidateNavigationBar:Z

.field private blacklist mMessage:Ljava/lang/CharSequence;

.field blacklist mMessageNeedScroll:Z

.field private blacklist mMessageView:Landroid/widget/TextView;

.field private blacklist mObserver:Landroid/database/ContentObserver;

.field private blacklist mScrollView:Landroid/widget/ScrollView;

.field private blacklist mTitle:Ljava/lang/CharSequence;

.field private blacklist mWindow:Landroid/view/Window;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmComponentCallbacks(Landroid/app/dialog/AlertControllerExt;)Landroid/content/ComponentCallbacks;
    .locals 0

    iget-object p0, p0, Landroid/app/dialog/AlertControllerExt;->mComponentCallbacks:Landroid/content/ComponentCallbacks;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/app/dialog/AlertControllerExt;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/app/dialog/AlertControllerExt;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/app/dialog/AlertControllerExt;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/app/dialog/AlertControllerExt;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMessageView(Landroid/app/dialog/AlertControllerExt;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Landroid/app/dialog/AlertControllerExt;->mMessageView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmObserver(Landroid/app/dialog/AlertControllerExt;)Landroid/database/ContentObserver;
    .locals 0

    iget-object p0, p0, Landroid/app/dialog/AlertControllerExt;->mObserver:Landroid/database/ContentObserver;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmComponentCallbacks(Landroid/app/dialog/AlertControllerExt;Landroid/content/ComponentCallbacks;)V
    .locals 0

    iput-object p1, p0, Landroid/app/dialog/AlertControllerExt;->mComponentCallbacks:Landroid/content/ComponentCallbacks;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monConfigurationChanged(Landroid/app/dialog/AlertControllerExt;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/dialog/AlertControllerExt;->onConfigurationChanged()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateSpaceHeight(Landroid/app/dialog/AlertControllerExt;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/dialog/AlertControllerExt;->updateSpaceHeight()V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 2
    .param p1, "base"    # Ljava/lang/Object;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/dialog/AlertControllerExt;->mAlertController:Lcom/android/internal/app/AlertController;

    .line 81
    iput-object v0, p0, Landroid/app/dialog/AlertControllerExt;->mWindow:Landroid/view/Window;

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/dialog/AlertControllerExt;->mMessageNeedScroll:Z

    .line 85
    iput v0, p0, Landroid/app/dialog/AlertControllerExt;->mDialogType:I

    .line 88
    new-instance v0, Landroid/app/dialog/AlertControllerExt$1;

    iget-object v1, p0, Landroid/app/dialog/AlertControllerExt;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Landroid/app/dialog/AlertControllerExt$1;-><init>(Landroid/app/dialog/AlertControllerExt;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/app/dialog/AlertControllerExt;->mObserver:Landroid/database/ContentObserver;

    .line 95
    new-instance v0, Landroid/app/dialog/AlertControllerExt$2;

    invoke-direct {v0, p0}, Landroid/app/dialog/AlertControllerExt$2;-><init>(Landroid/app/dialog/AlertControllerExt;)V

    iput-object v0, p0, Landroid/app/dialog/AlertControllerExt;->mComponentCallbacks:Landroid/content/ComponentCallbacks;

    .line 119
    move-object v0, p1

    check-cast v0, Lcom/android/internal/app/AlertController;

    iput-object v0, p0, Landroid/app/dialog/AlertControllerExt;->mAlertController:Lcom/android/internal/app/AlertController;

    .line 120
    return-void
.end method

.method private blacklist addBottomSpace()V
    .locals 3

    .line 306
    invoke-virtual {p0}, Landroid/app/dialog/AlertControllerExt;->isCenterDialog()Z

    move-result v0

    if-nez v0, :cond_0

    .line 307
    invoke-direct {p0}, Landroid/app/dialog/AlertControllerExt;->observeHideNavigationBar()V

    .line 308
    iget-object v0, p0, Landroid/app/dialog/AlertControllerExt;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/app/dialog/AlertControllerExt;->mComponentCallbacks:Landroid/content/ComponentCallbacks;

    invoke-virtual {v0, v1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 310
    :cond_0
    invoke-direct {p0}, Landroid/app/dialog/AlertControllerExt;->needAddBottomView()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 311
    invoke-direct {p0}, Landroid/app/dialog/AlertControllerExt;->updateSpaceHeight()V

    .line 312
    invoke-direct {p0}, Landroid/app/dialog/AlertControllerExt;->updateWindowFlag()V

    .line 313
    iget-object v0, p0, Landroid/app/dialog/AlertControllerExt;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 314
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0, v0}, Landroid/app/dialog/AlertControllerExt;->addPrivateFlag(Landroid/view/WindowManager$LayoutParams;)V

    .line 315
    invoke-direct {p0, v0}, Landroid/app/dialog/AlertControllerExt;->isSystemDialog(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 316
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-direct {p0}, Landroid/app/dialog/AlertControllerExt;->spaceHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 318
    :cond_1
    iget-object v1, p0, Landroid/app/dialog/AlertControllerExt;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 320
    .end local v0    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_2
    return-void
.end method

.method private blacklist addPrivateFlag(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .line 417
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 418
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 419
    return-void
.end method

.method private blacklist buttonCount()I
    .locals 2

    .line 524
    const/4 v0, 0x0

    .line 525
    .local v0, "count":I
    invoke-direct {p0}, Landroid/app/dialog/AlertControllerExt;->hasPositiveText()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 526
    add-int/lit8 v0, v0, 0x1

    .line 529
    :cond_0
    invoke-direct {p0}, Landroid/app/dialog/AlertControllerExt;->hasNegativeText()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 530
    add-int/lit8 v0, v0, 0x1

    .line 533
    :cond_1
    invoke-direct {p0}, Landroid/app/dialog/AlertControllerExt;->hasNeutralText()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 534
    add-int/lit8 v0, v0, 0x1

    .line 536
    :cond_2
    return v0
.end method

.method private blacklist getScreenSize()Landroid/graphics/Point;
    .locals 3

    .line 399
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 400
    .local v0, "point":Landroid/graphics/Point;
    iget-object v1, p0, Landroid/app/dialog/AlertControllerExt;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 401
    .local v1, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 402
    return-object v0
.end method

.method private blacklist hasCustomView()Z
    .locals 2

    .line 493
    iget-object v0, p0, Landroid/app/dialog/AlertControllerExt;->mWindow:Landroid/view/Window;

    const v1, 0x102002b

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 494
    .local v0, "customLayout":Landroid/widget/FrameLayout;
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private blacklist hasMessage()Z
    .locals 1

    .line 552
    iget-object v0, p0, Landroid/app/dialog/AlertControllerExt;->mMessage:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private blacklist hasNegativeText()Z
    .locals 1

    .line 544
    iget-object v0, p0, Landroid/app/dialog/AlertControllerExt;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private blacklist hasNeutralText()Z
    .locals 1

    .line 548
    iget-object v0, p0, Landroid/app/dialog/AlertControllerExt;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private blacklist hasPositiveText()Z
    .locals 1

    .line 540
    iget-object v0, p0, Landroid/app/dialog/AlertControllerExt;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private blacklist hasTitle()Z
    .locals 1

    .line 556
    iget-object v0, p0, Landroid/app/dialog/AlertControllerExt;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private blacklist initButtonPaint()V
    .locals 3

    .line 136
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/app/dialog/AlertControllerExt;->mButtonPaint:Landroid/text/TextPaint;

    .line 137
    iget-object v1, p0, Landroid/app/dialog/AlertControllerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc050022

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 138
    return-void
.end method

.method private blacklist isDoubleButtons()Z
    .locals 2

    .line 502
    invoke-direct {p0}, Landroid/app/dialog/AlertControllerExt;->buttonCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist isFullScreen()Z
    .locals 4

    .line 384
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/IWindowManager;->getDockedStackSide()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    .local v1, "dockedSide":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 386
    .end local v1    # "dockedSide":I
    :catch_0
    move-exception v1

    .line 387
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isFullScreen operation failed.Return false.Failed msg is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AlertControllerExt"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    return v0
.end method

.method private blacklist isGravityCenter()Z
    .locals 2

    .line 374
    iget-object v0, p0, Landroid/app/dialog/AlertControllerExt;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist isNavigationBarShow()Z
    .locals 5

    .line 353
    invoke-direct {p0}, Landroid/app/dialog/AlertControllerExt;->supportNavigationBar()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 354
    return v1

    .line 356
    :cond_0
    iget-object v0, p0, Landroid/app/dialog/AlertControllerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "hide_navigationbar_enable"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 358
    .local v0, "navigationBarStatus":I
    iget-object v2, p0, Landroid/app/dialog/AlertControllerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "manual_hide_navigationbar"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 360
    .local v2, "navigationBarHideStatus":I
    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq v0, v3, :cond_1

    if-eq v2, v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    iput-boolean v3, p0, Landroid/app/dialog/AlertControllerExt;->mIsValidateNavigationBar:Z

    .line 361
    if-eqz v0, :cond_2

    if-ne v0, v4, :cond_3

    if-nez v2, :cond_3

    :cond_2
    move v1, v4

    :cond_3
    return v1
.end method

.method private blacklist isPortrait()Z
    .locals 3

    .line 393
    invoke-direct {p0}, Landroid/app/dialog/AlertControllerExt;->getScreenSize()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 394
    .local v0, "realScreenWidth":I
    invoke-direct {p0}, Landroid/app/dialog/AlertControllerExt;->getScreenSize()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 395
    .local v1, "realScreenHeight":I
    if-ge v0, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private blacklist isSingleButton()Z
    .locals 2

    .line 498
    invoke-direct {p0}, Landroid/app/dialog/AlertControllerExt;->buttonCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private blacklist isSystemDialog(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 2
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .line 638
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d3

    if-eq v0, v1, :cond_1

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7f6

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private blacklist isTripleButtons()Z
    .locals 2

    .line 506
    invoke-direct {p0}, Landroid/app/dialog/AlertControllerExt;->buttonCount()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist navigationBarHeight()I
    .locals 4

    .line 347
    iget-object v0, p0, Landroid/app/dialog/AlertControllerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 348
    .local v0, "resources":Landroid/content/res/Resources;
    const-string v1, "navigation_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 349
    .local v1, "resourceId":I
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    return v2
.end method

.method private blacklist needAddBottomView()Z
    .locals 1

    .line 378
    invoke-virtual {p0}, Landroid/app/dialog/AlertControllerExt;->isCenterDialog()Z

    move-result v0

    if-nez v0, :cond_0

    .line 379
    invoke-direct {p0}, Landroid/app/dialog/AlertControllerExt;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 378
    :goto_0
    return v0
.end method

.method private blacklist needClipListView()Z
    .locals 1

    .line 439
    invoke-direct {p0}, Landroid/app/dialog/AlertControllerExt;->hasMessage()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/app/dialog/AlertControllerExt;->hasTitle()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/dialog/AlertControllerExt;->isCenterDialog()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist needSetButtonsVertical()Z
    .locals 7

    .line 510
    invoke-direct {p0}, Landroid/app/dialog/AlertControllerExt;->buttonCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 511
    return v1

    .line 513
    :cond_0
    iget-object v0, p0, Landroid/app/dialog/AlertControllerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0xc050025

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 514
    .local v0, "buttonPadding":I
    invoke-direct {p0}, Landroid/app/dialog/AlertControllerExt;->parentWidth()I

    move-result v2

    invoke-direct {p0}, Landroid/app/dialog/AlertControllerExt;->buttonCount()I

    move-result v3

    div-int/2addr v2, v3

    mul-int/lit8 v3, v0, 0x2

    sub-int/2addr v2, v3

    .line 515
    .local v2, "buttonWidth":I
    invoke-direct {p0}, Landroid/app/dialog/AlertControllerExt;->hasPositiveText()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/app/dialog/AlertControllerExt;->mButtonPaint:Landroid/text/TextPaint;

    iget-object v4, p0, Landroid/app/dialog/AlertControllerExt;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    goto :goto_0

    :cond_1
    move v3, v1

    .line 516
    .local v3, "positiveTextWidth":I
    :goto_0
    invoke-direct {p0}, Landroid/app/dialog/AlertControllerExt;->hasNegativeText()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/app/dialog/AlertControllerExt;->mButtonPaint:Landroid/text/TextPaint;

    iget-object v5, p0, Landroid/app/dialog/AlertControllerExt;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    goto :goto_1

    :cond_2
    move v4, v1

    .line 517
    .local v4, "negativeTextWidth":I
    :goto_1
    invoke-direct {p0}, Landroid/app/dialog/AlertControllerExt;->hasNeutralText()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroid/app/dialog/AlertControllerExt;->mButtonPaint:Landroid/text/TextPaint;

    iget-object v6, p0, Landroid/app/dialog/AlertControllerExt;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-int v5, v5

    goto :goto_2

    :cond_3
    move v5, v1

    .line 518
    .local v5, "neutralTextWidth":I
    :goto_2
    if-gt v3, v2, :cond_4

    if-gt v4, v2, :cond_4

    if-le v5, v2, :cond_5

    :cond_4
    const/4 v1, 0x1

    :cond_5
    return v1
.end method

.method private blacklist observeHideNavigationBar()V
    .locals 4

    .line 323
    iget-object v0, p0, Landroid/app/dialog/AlertControllerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 324
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "manual_hide_navigationbar"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Landroid/app/dialog/AlertControllerExt;->mObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 326
    return-void
.end method

.method private blacklist onConfigurationChanged()V
    .locals 1

    .line 110
    iget-object v0, p0, Landroid/app/dialog/AlertControllerExt;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oplus/util/OplusContextUtil;->isOplusAlertDialogBuilderStyle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    return-void

    .line 113
    :cond_0
    invoke-direct {p0}, Landroid/app/dialog/AlertControllerExt;->updateWindowAttributes()V

    .line 114
    invoke-direct {p0}, Landroid/app/dialog/AlertControllerExt;->updateSpaceHeight()V

    .line 115
    invoke-direct {p0}, Landroid/app/dialog/AlertControllerExt;->updateBg()V

    .line 116
    return-void
.end method

.method private blacklist parentWidth()I
    .locals 4

    .line 560
    iget-object v0, p0, Landroid/app/dialog/AlertControllerExt;->mWindow:Landroid/view/Window;

    const v1, 0x1020419

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 561
    .local v0, "parentPanel":Landroid/view/View;
    const/4 v1, 0x0

    .line 562
    .local v1, "parentPadding":I
    if-eqz v0, :cond_0

    .line 563
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 565
    :cond_0
    iget-object v2, p0, Landroid/app/dialog/AlertControllerExt;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    mul-int/lit8 v3, v1, 0x2

    sub-int/2addr v2, v3

    return v2
.end method

.method private blacklist relayoutListAndMessage(Landroid/view/ViewGroup;)V
    .locals 4
    .param p1, "listPanel"    # Landroid/view/ViewGroup;

    .line 241
    invoke-virtual {p0}, Landroid/app/dialog/AlertControllerExt;->isMessageNeedScroll()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Landroid/app/dialog/AlertControllerExt;->mScrollView:Landroid/widget/ScrollView;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 244
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 245
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 246
    iget-object v3, p0, Landroid/app/dialog/AlertControllerExt;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v3, v0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 248
    .end local v0    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    if-eqz p1, :cond_1

    .line 249
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 250
    .restart local v0    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 251
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 252
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 255
    .end local v0    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    return-void
.end method

.method private blacklist relayoutMessageView(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "contentPanel"    # Landroid/view/ViewGroup;

    .line 258
    iget-object v0, p0, Landroid/app/dialog/AlertControllerExt;->mMessageView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 259
    const v0, 0x102000b

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/app/dialog/AlertControllerExt;->mMessageView:Landroid/widget/TextView;

    .line 261
    :cond_0
    iget-object v0, p0, Landroid/app/dialog/AlertControllerExt;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Landroid/app/dialog/AlertControllerExt$4;

    invoke-direct {v1, p0}, Landroid/app/dialog/AlertControllerExt$4;-><init>(Landroid/app/dialog/AlertControllerExt;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 274
    return-void
.end method

.method private blacklist resetButtonsPadding()V
    .locals 10

    .line 443
    iget-object v0, p0, Landroid/app/dialog/AlertControllerExt;->mButtonNeutral:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/app/dialog/AlertControllerExt;->mButtonPositive:Landroid/widget/Button;

    if-eqz v1, :cond_1

    .line 444
    invoke-virtual {v0}, Landroid/widget/Button;->getPaddingLeft()I

    move-result v0

    .line 445
    .local v0, "paddingLeft":I
    iget-object v1, p0, Landroid/app/dialog/AlertControllerExt;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getPaddingTop()I

    move-result v1

    .line 446
    .local v1, "paddingTop":I
    iget-object v2, p0, Landroid/app/dialog/AlertControllerExt;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getPaddingRight()I

    move-result v2

    .line 447
    .local v2, "paddingRight":I
    iget-object v3, p0, Landroid/app/dialog/AlertControllerExt;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getPaddingBottom()I

    move-result v3

    .line 448
    .local v3, "paddingBottom":I
    iget-object v4, p0, Landroid/app/dialog/AlertControllerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0xc050024

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 449
    .local v4, "paddingOffset":I
    invoke-virtual {p0}, Landroid/app/dialog/AlertControllerExt;->isCenterDialog()Z

    move-result v5

    if-nez v5, :cond_0

    .line 450
    iget-object v5, p0, Landroid/app/dialog/AlertControllerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0xc060021

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 451
    .local v5, "buttonColor":I
    iget-object v6, p0, Landroid/app/dialog/AlertControllerExt;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v6, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 452
    iget-object v6, p0, Landroid/app/dialog/AlertControllerExt;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v6, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 453
    iget-object v6, p0, Landroid/app/dialog/AlertControllerExt;->mMessage:Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    .line 454
    .local v6, "hasMessage":Z
    iget-object v7, p0, Landroid/app/dialog/AlertControllerExt;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    .line 455
    .local v7, "hasTitle":Z
    iget-object v8, p0, Landroid/app/dialog/AlertControllerExt;->mButtonNeutral:Landroid/widget/Button;

    add-int v9, v3, v4

    invoke-virtual {v8, v0, v1, v2, v9}, Landroid/widget/Button;->setPadding(IIII)V

    .line 456
    iget-object v8, p0, Landroid/app/dialog/AlertControllerExt;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v8}, Landroid/widget/Button;->getMinHeight()I

    move-result v9

    add-int/2addr v9, v4

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setMinHeight(I)V

    .line 457
    if-nez v6, :cond_0

    if-nez v7, :cond_0

    .line 458
    invoke-direct {p0}, Landroid/app/dialog/AlertControllerExt;->hasNeutralText()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-direct {p0}, Landroid/app/dialog/AlertControllerExt;->hasPositiveText()Z

    move-result v8

    if-nez v8, :cond_0

    .line 459
    iget-object v8, p0, Landroid/app/dialog/AlertControllerExt;->mButtonNeutral:Landroid/widget/Button;

    add-int v9, v1, v4

    invoke-virtual {v8, v0, v9, v2, v3}, Landroid/widget/Button;->setPadding(IIII)V

    .line 460
    iget-object v8, p0, Landroid/app/dialog/AlertControllerExt;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v8}, Landroid/widget/Button;->getMinHeight()I

    move-result v9

    add-int/2addr v9, v4

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setMinHeight(I)V

    .line 464
    .end local v5    # "buttonColor":I
    .end local v6    # "hasMessage":Z
    .end local v7    # "hasTitle":Z
    :cond_0
    invoke-direct {p0}, Landroid/app/dialog/AlertControllerExt;->needSetButtonsVertical()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 465
    iget-object v5, p0, Landroid/app/dialog/AlertControllerExt;->mButtonPositive:Landroid/widget/Button;

    add-int v6, v1, v4

    invoke-virtual {v5, v0, v6, v2, v3}, Landroid/widget/Button;->setPadding(IIII)V

    .line 466
    iget-object v5, p0, Landroid/app/dialog/AlertControllerExt;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/widget/Button;->getMinHeight()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setMinHeight(I)V

    .line 467
    iget-object v5, p0, Landroid/app/dialog/AlertControllerExt;->mButtonNegative:Landroid/widget/Button;

    add-int v6, v3, v4

    invoke-virtual {v5, v0, v1, v2, v6}, Landroid/widget/Button;->setPadding(IIII)V

    .line 468
    iget-object v5, p0, Landroid/app/dialog/AlertControllerExt;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/widget/Button;->getMinHeight()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setMinHeight(I)V

    .line 471
    .end local v0    # "paddingLeft":I
    .end local v1    # "paddingTop":I
    .end local v2    # "paddingRight":I
    .end local v3    # "paddingBottom":I
    .end local v4    # "paddingOffset":I
    :cond_1
    return-void
.end method

.method private blacklist setButtonsBackground()V
    .locals 2

    .line 474
    invoke-virtual {p0}, Landroid/app/dialog/AlertControllerExt;->isCenterDialog()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-direct {p0}, Landroid/app/dialog/AlertControllerExt;->hasTitle()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-direct {p0}, Landroid/app/dialog/AlertControllerExt;->hasMessage()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Landroid/app/dialog/AlertControllerExt;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-nez v0, :cond_6

    invoke-direct {p0}, Landroid/app/dialog/AlertControllerExt;->hasCustomView()Z

    move-result v0

    if-nez v0, :cond_6

    .line 475
    invoke-direct {p0}, Landroid/app/dialog/AlertControllerExt;->isSingleButton()Z

    move-result v0

    const v1, 0xc08003c

    if-eqz v0, :cond_3

    .line 476
    invoke-direct {p0}, Landroid/app/dialog/AlertControllerExt;->hasPositiveText()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/dialog/AlertControllerExt;->mButtonPositive:Landroid/widget/Button;

    goto :goto_0

    .line 477
    :cond_0
    invoke-direct {p0}, Landroid/app/dialog/AlertControllerExt;->hasNeutralText()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/dialog/AlertControllerExt;->mButtonNeutral:Landroid/widget/Button;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/app/dialog/AlertControllerExt;->mButtonNegative:Landroid/widget/Button;

    :goto_0
    nop

    .line 478
    .local v0, "target":Landroid/widget/Button;
    if-eqz v0, :cond_2

    .line 479
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 480
    .end local v0    # "target":Landroid/widget/Button;
    :cond_2
    goto :goto_2

    :cond_3
    invoke-direct {p0}, Landroid/app/dialog/AlertControllerExt;->isDoubleButtons()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 481
    invoke-direct {p0}, Landroid/app/dialog/AlertControllerExt;->hasPositiveText()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/app/dialog/AlertControllerExt;->mButtonPositive:Landroid/widget/Button;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Landroid/app/dialog/AlertControllerExt;->mButtonNeutral:Landroid/widget/Button;

    .line 482
    .restart local v0    # "target":Landroid/widget/Button;
    :goto_1
    if-eqz v0, :cond_6

    .line 483
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_2

    .line 484
    .end local v0    # "target":Landroid/widget/Button;
    :cond_5
    invoke-direct {p0}, Landroid/app/dialog/AlertControllerExt;->isTripleButtons()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 485
    iget-object v0, p0, Landroid/app/dialog/AlertControllerExt;->mButtonPositive:Landroid/widget/Button;

    .line 486
    .restart local v0    # "target":Landroid/widget/Button;
    if-eqz v0, :cond_6

    .line 487
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    nop

    .line 490
    .end local v0    # "target":Landroid/widget/Button;
    :cond_6
    :goto_2
    return-void
.end method

.method private blacklist setButtonsHorizontal()V
    .locals 2

    .line 586
    iget-object v0, p0, Landroid/app/dialog/AlertControllerExt;->mButtonPanelStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    .line 587
    const-string v0, "AlertControllerExt"

    const-string v1, "mButtonPanelStub is null when setButtonsHorizontal"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    return-void

    .line 590
    :cond_0
    const v1, 0xc090408

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 591
    iget-object v0, p0, Landroid/app/dialog/AlertControllerExt;->mButtonPanelStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 592
    invoke-direct {p0}, Landroid/app/dialog/AlertControllerExt;->showHorizontalDivider()V

    .line 593
    return-void
.end method

.method private blacklist setButtonsVertical()V
    .locals 4

    .line 569
    iget-object v0, p0, Landroid/app/dialog/AlertControllerExt;->mButtonPanelStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    .line 570
    const-string v0, "AlertControllerExt"

    const-string v1, "mButtonPanelStub is null when setButtonsVertical"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    return-void

    .line 573
    :cond_0
    const v1, 0xc090407

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 574
    iget-object v0, p0, Landroid/app/dialog/AlertControllerExt;->mButtonPanelStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 576
    iget-object v0, p0, Landroid/app/dialog/AlertControllerExt;->mWindow:Landroid/view/Window;

    const v1, 0xc020041

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 577
    .local v0, "divider1":Landroid/view/View;
    iget-object v1, p0, Landroid/app/dialog/AlertControllerExt;->mWindow:Landroid/view/Window;

    const v2, 0xc020042

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 578
    .local v1, "divider2":Landroid/view/View;
    invoke-virtual {p0}, Landroid/app/dialog/AlertControllerExt;->isCenterDialog()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/app/dialog/AlertControllerExt;->mMessage:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 579
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 581
    :cond_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 583
    :goto_0
    return-void
.end method

.method private blacklist setupAnimationAndGravity()V
    .locals 2

    .line 295
    iget-object v0, p0, Landroid/app/dialog/AlertControllerExt;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 296
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Landroid/app/dialog/AlertControllerExt;->isCenterDialog()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 297
    const v1, 0xc030018

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 298
    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_0

    .line 300
    :cond_0
    const v1, 0xc030016

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 302
    :goto_0
    iget-object v1, p0, Landroid/app/dialog/AlertControllerExt;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 303
    return-void
.end method

.method private blacklist showHorizontalDivider()V
    .locals 5

    .line 596
    iget-object v0, p0, Landroid/app/dialog/AlertControllerExt;->mWindow:Landroid/view/Window;

    const v1, 0xc020044

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 597
    .local v0, "dividerOne":Landroid/widget/ImageView;
    iget-object v1, p0, Landroid/app/dialog/AlertControllerExt;->mWindow:Landroid/view/Window;

    const v2, 0xc020045

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 599
    .local v1, "dividerTwo":Landroid/widget/ImageView;
    invoke-direct {p0}, Landroid/app/dialog/AlertControllerExt;->buttonCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    .line 600
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 602
    :cond_0
    invoke-direct {p0}, Landroid/app/dialog/AlertControllerExt;->buttonCount()I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_1

    .line 603
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 604
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 606
    :cond_1
    return-void
.end method

.method private blacklist spaceHeight()I
    .locals 3

    .line 329
    const/4 v0, 0x0

    .line 330
    .local v0, "result":I
    invoke-direct {p0}, Landroid/app/dialog/AlertControllerExt;->isFullScreen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 331
    const/4 v1, 0x0

    return v1

    .line 333
    :cond_0
    invoke-direct {p0}, Landroid/app/dialog/AlertControllerExt;->isGravityCenter()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 334
    const/4 v0, 0x0

    goto :goto_0

    .line 335
    :cond_1
    invoke-direct {p0}, Landroid/app/dialog/AlertControllerExt;->isNavigationBarShow()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 336
    invoke-direct {p0}, Landroid/app/dialog/AlertControllerExt;->navigationBarHeight()I

    move-result v0

    goto :goto_0

    .line 338
    :cond_2
    iget-object v1, p0, Landroid/app/dialog/AlertControllerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc050023

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 340
    :goto_0
    iget-boolean v1, p0, Landroid/app/dialog/AlertControllerExt;->mIsValidateNavigationBar:Z

    if-nez v1, :cond_3

    .line 341
    const/4 v0, 0x0

    .line 343
    :cond_3
    return v0
.end method

.method private blacklist supportNavigationBar()Z
    .locals 4

    .line 366
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/IWindowManager;->hasNavigationBar(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 367
    :catch_0
    move-exception v1

    .line 368
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "AlertControllerExt"

    const-string v3, "fail to get navigationBar\'s status, return false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    return v0
.end method

.method private blacklist updateBg()V
    .locals 4

    .line 422
    iget-object v0, p0, Landroid/app/dialog/AlertControllerExt;->mWindow:Landroid/view/Window;

    const v1, 0x1020419

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 423
    .local v0, "parentPanel":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 424
    instance-of v1, v0, Lcom/oplus/widget/OplusAlertLinearLayout;

    if-eqz v1, :cond_1

    .line 425
    move-object v1, v0

    check-cast v1, Lcom/oplus/widget/OplusAlertLinearLayout;

    .line 426
    .local v1, "oplusAlertLinearLayout":Lcom/oplus/widget/OplusAlertLinearLayout;
    iget-object v2, p0, Landroid/app/dialog/AlertControllerExt;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 427
    .local v2, "gravity":I
    const/16 v3, 0x11

    if-ne v2, v3, :cond_0

    .line 428
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/oplus/widget/OplusAlertLinearLayout;->setNeedClip(Z)V

    .line 429
    invoke-virtual {v1, v3}, Lcom/oplus/widget/OplusAlertLinearLayout;->setHasShadow(Z)V

    goto :goto_0

    .line 431
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/oplus/widget/OplusAlertLinearLayout;->setNeedClip(Z)V

    .line 432
    invoke-virtual {v1, v3}, Lcom/oplus/widget/OplusAlertLinearLayout;->setHasShadow(Z)V

    .line 436
    .end local v1    # "oplusAlertLinearLayout":Lcom/oplus/widget/OplusAlertLinearLayout;
    .end local v2    # "gravity":I
    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist updateSpaceHeight()V
    .locals 4

    .line 609
    iget-object v0, p0, Landroid/app/dialog/AlertControllerExt;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oplus/util/OplusContextUtil;->isOplusAlertDialogBuilderStyle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 610
    return-void

    .line 612
    :cond_0
    iget-object v0, p0, Landroid/app/dialog/AlertControllerExt;->mWindow:Landroid/view/Window;

    const v1, 0x1020419

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 613
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_1

    .line 614
    const v1, 0xc020043

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 615
    .local v1, "space":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 616
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 617
    .local v2, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {p0}, Landroid/app/dialog/AlertControllerExt;->spaceHeight()I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 618
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 621
    .end local v1    # "space":Landroid/view/View;
    .end local v2    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    invoke-direct {p0}, Landroid/app/dialog/AlertControllerExt;->updateWindowFlag()V

    .line 622
    iget-object v1, p0, Landroid/app/dialog/AlertControllerExt;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 623
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0, v1}, Landroid/app/dialog/AlertControllerExt;->isSystemDialog(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 624
    invoke-direct {p0}, Landroid/app/dialog/AlertControllerExt;->isNavigationBarShow()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 625
    invoke-direct {p0}, Landroid/app/dialog/AlertControllerExt;->isGravityCenter()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 626
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0

    .line 631
    :cond_2
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 634
    :cond_3
    :goto_0
    iget-object v2, p0, Landroid/app/dialog/AlertControllerExt;->mWindow:Landroid/view/Window;

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 635
    return-void
.end method

.method private blacklist updateWindowAttributes()V
    .locals 7

    .line 277
    invoke-direct {p0}, Landroid/app/dialog/AlertControllerExt;->getScreenSize()Landroid/graphics/Point;

    move-result-object v0

    .line 278
    .local v0, "realSize":Landroid/graphics/Point;
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 279
    .local v1, "port":Z
    :goto_0
    iget-object v2, p0, Landroid/app/dialog/AlertControllerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 280
    .local v2, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v3, p0, Landroid/app/dialog/AlertControllerExt;->mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 281
    .local v3, "params":Landroid/view/WindowManager$LayoutParams;
    const v4, -0x7ffffa00

    if-eqz v1, :cond_1

    .line 282
    iget-object v5, p0, Landroid/app/dialog/AlertControllerExt;->mWindow:Landroid/view/Window;

    const/16 v6, 0x51

    invoke-virtual {v5, v6}, Landroid/view/Window;->setGravity(I)V

    .line 283
    iget-object v5, p0, Landroid/app/dialog/AlertControllerExt;->mWindow:Landroid/view/Window;

    invoke-virtual {v5, v4}, Landroid/view/Window;->clearFlags(I)V

    .line 284
    iget v4, v0, Landroid/graphics/Point;->x:I

    iget v5, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 285
    const/4 v4, -0x2

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_1

    .line 287
    :cond_1
    iget-object v5, p0, Landroid/app/dialog/AlertControllerExt;->mWindow:Landroid/view/Window;

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/view/Window;->setGravity(I)V

    .line 288
    iget-object v5, p0, Landroid/app/dialog/AlertControllerExt;->mWindow:Landroid/view/Window;

    invoke-virtual {v5, v4}, Landroid/view/Window;->addFlags(I)V

    .line 289
    iget v4, v0, Landroid/graphics/Point;->y:I

    iget v5, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 290
    iget-object v4, p0, Landroid/app/dialog/AlertControllerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0xc05002a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 292
    :goto_1
    return-void
.end method

.method private blacklist updateWindowFlag()V
    .locals 3

    .line 406
    invoke-direct {p0}, Landroid/app/dialog/AlertControllerExt;->isGravityCenter()Z

    move-result v0

    const v1, -0x7ffffa00

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Landroid/app/dialog/AlertControllerExt;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 408
    :cond_0
    invoke-direct {p0}, Landroid/app/dialog/AlertControllerExt;->isNavigationBarShow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 409
    iget-object v0, p0, Landroid/app/dialog/AlertControllerExt;->mWindow:Landroid/view/Window;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 410
    iget-object v0, p0, Landroid/app/dialog/AlertControllerExt;->mWindow:Landroid/view/Window;

    const/high16 v2, 0x8000000

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 411
    iget-object v0, p0, Landroid/app/dialog/AlertControllerExt;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 412
    iget-object v0, p0, Landroid/app/dialog/AlertControllerExt;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 414
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public blacklist getDialogType()I
    .locals 1

    .line 690
    iget v0, p0, Landroid/app/dialog/AlertControllerExt;->mDialogType:I

    return v0
.end method

.method blacklist getListView()Landroid/widget/ListView;
    .locals 1

    .line 694
    iget-object v0, p0, Landroid/app/dialog/AlertControllerExt;->mAlertController:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0}, Lcom/android/internal/app/AlertController;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public blacklist init(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "di"    # Landroid/content/DialogInterface;
    .param p3, "window"    # Landroid/view/Window;

    .line 127
    iput-object p1, p0, Landroid/app/dialog/AlertControllerExt;->mContext:Landroid/content/Context;

    .line 128
    iput-object p3, p0, Landroid/app/dialog/AlertControllerExt;->mWindow:Landroid/view/Window;

    .line 131
    new-instance v0, Landroid/app/dialog/AlertControllerExt$BottomSpaceHandler;

    invoke-direct {v0, p0}, Landroid/app/dialog/AlertControllerExt$BottomSpaceHandler;-><init>(Landroid/app/dialog/AlertControllerExt;)V

    iput-object v0, p0, Landroid/app/dialog/AlertControllerExt;->mHandler:Landroid/os/Handler;

    .line 132
    invoke-direct {p0}, Landroid/app/dialog/AlertControllerExt;->initButtonPaint()V

    .line 133
    return-void
.end method

.method public blacklist isCenterDialog()Z
    .locals 1

    .line 156
    invoke-virtual {p0}, Landroid/app/dialog/AlertControllerExt;->getDialogType()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isMessageNeedScroll()Z
    .locals 1

    .line 676
    iget-boolean v0, p0, Landroid/app/dialog/AlertControllerExt;->mMessageNeedScroll:Z

    return v0
.end method

.method public blacklist isOplusStyle(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 237
    invoke-static {p1}, Lcom/oplus/util/OplusContextUtil;->isOplusStyle(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method blacklist loadRefObject()V
    .locals 4

    .line 714
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 715
    .local v0, "timeStart":J
    iget-object v2, p0, Landroid/app/dialog/AlertControllerExt;->mMessage:Ljava/lang/CharSequence;

    if-nez v2, :cond_0

    sget-object v2, Landroid/app/dialog/OplusMirrorAlertController;->mMessage:Lcom/oplus/reflect/RefObject;

    if-eqz v2, :cond_0

    .line 716
    sget-object v2, Landroid/app/dialog/OplusMirrorAlertController;->mMessage:Lcom/oplus/reflect/RefObject;

    iget-object v3, p0, Landroid/app/dialog/AlertControllerExt;->mAlertController:Lcom/android/internal/app/AlertController;

    invoke-virtual {v2, v3}, Lcom/oplus/reflect/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    iput-object v2, p0, Landroid/app/dialog/AlertControllerExt;->mMessage:Ljava/lang/CharSequence;

    .line 718
    :cond_0
    iget-object v2, p0, Landroid/app/dialog/AlertControllerExt;->mTitle:Ljava/lang/CharSequence;

    if-nez v2, :cond_1

    sget-object v2, Landroid/app/dialog/OplusMirrorAlertController;->mTitle:Lcom/oplus/reflect/RefObject;

    if-eqz v2, :cond_1

    .line 719
    sget-object v2, Landroid/app/dialog/OplusMirrorAlertController;->mTitle:Lcom/oplus/reflect/RefObject;

    iget-object v3, p0, Landroid/app/dialog/AlertControllerExt;->mAlertController:Lcom/android/internal/app/AlertController;

    invoke-virtual {v2, v3}, Lcom/oplus/reflect/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    iput-object v2, p0, Landroid/app/dialog/AlertControllerExt;->mTitle:Ljava/lang/CharSequence;

    .line 721
    :cond_1
    iget-object v2, p0, Landroid/app/dialog/AlertControllerExt;->mMessageView:Landroid/widget/TextView;

    if-nez v2, :cond_2

    sget-object v2, Landroid/app/dialog/OplusMirrorAlertController;->mMessageView:Lcom/oplus/reflect/RefObject;

    if-eqz v2, :cond_2

    .line 722
    sget-object v2, Landroid/app/dialog/OplusMirrorAlertController;->mMessageView:Lcom/oplus/reflect/RefObject;

    iget-object v3, p0, Landroid/app/dialog/AlertControllerExt;->mAlertController:Lcom/android/internal/app/AlertController;

    invoke-virtual {v2, v3}, Lcom/oplus/reflect/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/app/dialog/AlertControllerExt;->mMessageView:Landroid/widget/TextView;

    .line 724
    :cond_2
    iget-object v2, p0, Landroid/app/dialog/AlertControllerExt;->mButtonPositive:Landroid/widget/Button;

    if-nez v2, :cond_3

    sget-object v2, Landroid/app/dialog/OplusMirrorAlertController;->mButtonPositive:Lcom/oplus/reflect/RefObject;

    if-eqz v2, :cond_3

    .line 725
    sget-object v2, Landroid/app/dialog/OplusMirrorAlertController;->mButtonPositive:Lcom/oplus/reflect/RefObject;

    iget-object v3, p0, Landroid/app/dialog/AlertControllerExt;->mAlertController:Lcom/android/internal/app/AlertController;

    invoke-virtual {v2, v3}, Lcom/oplus/reflect/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Landroid/app/dialog/AlertControllerExt;->mButtonPositive:Landroid/widget/Button;

    .line 727
    :cond_3
    iget-object v2, p0, Landroid/app/dialog/AlertControllerExt;->mButtonPositiveText:Ljava/lang/CharSequence;

    if-nez v2, :cond_4

    sget-object v2, Landroid/app/dialog/OplusMirrorAlertController;->mButtonPositiveText:Lcom/oplus/reflect/RefObject;

    if-eqz v2, :cond_4

    .line 728
    sget-object v2, Landroid/app/dialog/OplusMirrorAlertController;->mButtonPositiveText:Lcom/oplus/reflect/RefObject;

    iget-object v3, p0, Landroid/app/dialog/AlertControllerExt;->mAlertController:Lcom/android/internal/app/AlertController;

    invoke-virtual {v2, v3}, Lcom/oplus/reflect/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    iput-object v2, p0, Landroid/app/dialog/AlertControllerExt;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 730
    :cond_4
    iget-object v2, p0, Landroid/app/dialog/AlertControllerExt;->mButtonNegative:Landroid/widget/Button;

    if-nez v2, :cond_5

    sget-object v2, Landroid/app/dialog/OplusMirrorAlertController;->mButtonNegative:Lcom/oplus/reflect/RefObject;

    if-eqz v2, :cond_5

    .line 731
    sget-object v2, Landroid/app/dialog/OplusMirrorAlertController;->mButtonNegative:Lcom/oplus/reflect/RefObject;

    iget-object v3, p0, Landroid/app/dialog/AlertControllerExt;->mAlertController:Lcom/android/internal/app/AlertController;

    invoke-virtual {v2, v3}, Lcom/oplus/reflect/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Landroid/app/dialog/AlertControllerExt;->mButtonNegative:Landroid/widget/Button;

    .line 733
    :cond_5
    iget-object v2, p0, Landroid/app/dialog/AlertControllerExt;->mButtonNegativeText:Ljava/lang/CharSequence;

    if-nez v2, :cond_6

    sget-object v2, Landroid/app/dialog/OplusMirrorAlertController;->mButtonNegativeText:Lcom/oplus/reflect/RefObject;

    if-eqz v2, :cond_6

    .line 734
    sget-object v2, Landroid/app/dialog/OplusMirrorAlertController;->mButtonNegativeText:Lcom/oplus/reflect/RefObject;

    iget-object v3, p0, Landroid/app/dialog/AlertControllerExt;->mAlertController:Lcom/android/internal/app/AlertController;

    invoke-virtual {v2, v3}, Lcom/oplus/reflect/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    iput-object v2, p0, Landroid/app/dialog/AlertControllerExt;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 736
    :cond_6
    iget-object v2, p0, Landroid/app/dialog/AlertControllerExt;->mButtonNeutral:Landroid/widget/Button;

    if-nez v2, :cond_7

    sget-object v2, Landroid/app/dialog/OplusMirrorAlertController;->mButtonNeutral:Lcom/oplus/reflect/RefObject;

    if-eqz v2, :cond_7

    .line 737
    sget-object v2, Landroid/app/dialog/OplusMirrorAlertController;->mButtonNeutral:Lcom/oplus/reflect/RefObject;

    iget-object v3, p0, Landroid/app/dialog/AlertControllerExt;->mAlertController:Lcom/android/internal/app/AlertController;

    invoke-virtual {v2, v3}, Lcom/oplus/reflect/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Landroid/app/dialog/AlertControllerExt;->mButtonNeutral:Landroid/widget/Button;

    .line 739
    :cond_7
    iget-object v2, p0, Landroid/app/dialog/AlertControllerExt;->mButtonNeutralText:Ljava/lang/CharSequence;

    if-nez v2, :cond_8

    sget-object v2, Landroid/app/dialog/OplusMirrorAlertController;->mButtonNeutralText:Lcom/oplus/reflect/RefObject;

    if-eqz v2, :cond_8

    .line 740
    sget-object v2, Landroid/app/dialog/OplusMirrorAlertController;->mButtonNeutralText:Lcom/oplus/reflect/RefObject;

    iget-object v3, p0, Landroid/app/dialog/AlertControllerExt;->mAlertController:Lcom/android/internal/app/AlertController;

    invoke-virtual {v2, v3}, Lcom/oplus/reflect/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    iput-object v2, p0, Landroid/app/dialog/AlertControllerExt;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 742
    :cond_8
    iget-object v2, p0, Landroid/app/dialog/AlertControllerExt;->mScrollView:Landroid/widget/ScrollView;

    if-nez v2, :cond_9

    sget-object v2, Landroid/app/dialog/OplusMirrorAlertController;->mScrollView:Lcom/oplus/reflect/RefObject;

    if-eqz v2, :cond_9

    .line 743
    sget-object v2, Landroid/app/dialog/OplusMirrorAlertController;->mScrollView:Lcom/oplus/reflect/RefObject;

    iget-object v3, p0, Landroid/app/dialog/AlertControllerExt;->mAlertController:Lcom/android/internal/app/AlertController;

    invoke-virtual {v2, v3}, Lcom/oplus/reflect/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    iput-object v2, p0, Landroid/app/dialog/AlertControllerExt;->mScrollView:Landroid/widget/ScrollView;

    .line 747
    :cond_9
    return-void
.end method

.method public blacklist setDialogType(I)V
    .locals 0
    .param p1, "dialogType"    # I

    .line 685
    iput p1, p0, Landroid/app/dialog/AlertControllerExt;->mDialogType:I

    .line 686
    return-void
.end method

.method public blacklist setMessageNeedScroll(Z)V
    .locals 0
    .param p1, "messageNeedScroll"    # Z

    .line 680
    iput-boolean p1, p0, Landroid/app/dialog/AlertControllerExt;->mMessageNeedScroll:Z

    .line 681
    return-void
.end method

.method public blacklist setupButtons(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "buttonPanel"    # Landroid/view/ViewGroup;

    .line 226
    iget-object v0, p0, Landroid/app/dialog/AlertControllerExt;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oplus/util/OplusContextUtil;->isOplusAlertDialogBuilderStyle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    return-void

    .line 230
    :cond_0
    invoke-virtual {p0}, Landroid/app/dialog/AlertControllerExt;->loadRefObject()V

    .line 231
    invoke-direct {p0}, Landroid/app/dialog/AlertControllerExt;->resetButtonsPadding()V

    .line 232
    invoke-direct {p0}, Landroid/app/dialog/AlertControllerExt;->setButtonsBackground()V

    .line 233
    return-void
.end method

.method public blacklist setupContent(Landroid/view/ViewGroup;)V
    .locals 4
    .param p1, "contentPanel"    # Landroid/view/ViewGroup;

    .line 187
    iget-object v0, p0, Landroid/app/dialog/AlertControllerExt;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oplus/util/OplusContextUtil;->isOplusAlertDialogBuilderStyle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    return-void

    .line 191
    :cond_0
    invoke-virtual {p0}, Landroid/app/dialog/AlertControllerExt;->loadRefObject()V

    .line 194
    const v0, 0xc020046

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 195
    .local v0, "listPanel":Landroid/view/ViewGroup;
    iget-object v1, p0, Landroid/app/dialog/AlertControllerExt;->mMessage:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/dialog/AlertControllerExt;->getListView()Landroid/widget/ListView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 196
    invoke-virtual {p0}, Landroid/app/dialog/AlertControllerExt;->getListView()Landroid/widget/ListView;

    move-result-object v1

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    :cond_1
    invoke-virtual {p0}, Landroid/app/dialog/AlertControllerExt;->isCenterDialog()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 200
    iget-object v1, p0, Landroid/app/dialog/AlertControllerExt;->mMessage:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    .line 201
    invoke-direct {p0, p1}, Landroid/app/dialog/AlertControllerExt;->relayoutMessageView(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 204
    :cond_2
    invoke-direct {p0, v0}, Landroid/app/dialog/AlertControllerExt;->relayoutListAndMessage(Landroid/view/ViewGroup;)V

    .line 206
    :cond_3
    :goto_0
    new-instance v1, Landroid/app/dialog/AlertControllerExt$3;

    invoke-direct {v1, p0, p1}, Landroid/app/dialog/AlertControllerExt$3;-><init>(Landroid/app/dialog/AlertControllerExt;Landroid/view/ViewGroup;)V

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 222
    return-void
.end method

.method public blacklist setupView()V
    .locals 3

    .line 161
    iget-object v0, p0, Landroid/app/dialog/AlertControllerExt;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oplus/util/OplusContextUtil;->isOplusAlertDialogBuilderStyle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    return-void

    .line 164
    :cond_0
    invoke-direct {p0}, Landroid/app/dialog/AlertControllerExt;->updateWindowAttributes()V

    .line 165
    invoke-direct {p0}, Landroid/app/dialog/AlertControllerExt;->setupAnimationAndGravity()V

    .line 166
    invoke-direct {p0}, Landroid/app/dialog/AlertControllerExt;->addBottomSpace()V

    .line 167
    invoke-direct {p0}, Landroid/app/dialog/AlertControllerExt;->updateBg()V

    .line 168
    invoke-virtual {p0}, Landroid/app/dialog/AlertControllerExt;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 169
    .local v0, "listView":Landroid/widget/ListView;
    instance-of v1, v0, Lcom/oplus/widget/OplusRecyclerListView;

    if-eqz v1, :cond_1

    .line 170
    move-object v1, v0

    check-cast v1, Lcom/oplus/widget/OplusRecyclerListView;

    .line 171
    .local v1, "colorRecyclerListView":Lcom/oplus/widget/OplusRecyclerListView;
    invoke-direct {p0}, Landroid/app/dialog/AlertControllerExt;->needClipListView()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oplus/widget/OplusRecyclerListView;->setNeedClip(Z)V

    .line 173
    .end local v1    # "colorRecyclerListView":Lcom/oplus/widget/OplusRecyclerListView;
    :cond_1
    iget-object v1, p0, Landroid/app/dialog/AlertControllerExt;->mWindow:Landroid/view/Window;

    const v2, 0xc020040

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iput-object v1, p0, Landroid/app/dialog/AlertControllerExt;->mButtonPanelStub:Landroid/view/ViewStub;

    .line 174
    invoke-virtual {p0}, Landroid/app/dialog/AlertControllerExt;->isCenterDialog()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 175
    invoke-direct {p0}, Landroid/app/dialog/AlertControllerExt;->needSetButtonsVertical()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 176
    invoke-direct {p0}, Landroid/app/dialog/AlertControllerExt;->setButtonsVertical()V

    goto :goto_0

    .line 178
    :cond_2
    invoke-direct {p0}, Landroid/app/dialog/AlertControllerExt;->setButtonsHorizontal()V

    goto :goto_0

    .line 181
    :cond_3
    invoke-direct {p0}, Landroid/app/dialog/AlertControllerExt;->setButtonsVertical()V

    .line 183
    :goto_0
    return-void
.end method
