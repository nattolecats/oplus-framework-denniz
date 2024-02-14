.class public Landroid/view/OplusScrollToTopManager;
.super Ljava/lang/Object;
.source "OplusScrollToTopManager.java"

# interfaces
.implements Landroid/view/IOplusScrollToTopManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/OplusScrollToTopManager$Idler;,
        Landroid/view/OplusScrollToTopManager$DelayRegisterReceiverRunnable;,
        Landroid/view/OplusScrollToTopManager$Holder;
    }
.end annotation


# static fields
.field private static final blacklist ACTION_CLICK_ON_STATUS_BAR:Ljava/lang/String; = "com.oplus.click_status_bar"

.field private static final blacklist ACTION_USER_DISMISS_GUIDE_POPUP:Ljava/lang/String; = "com.oplus.guide_popup_dismiss_by_user"

.field private static final blacklist FOCUS_RUNNABLE_DELAY:I = 0x3e8

.field private static final blacklist GUIDE_DISMISS_INTENT_EXTRA_KEY:Ljava/lang/String; = "user_handle"

.field private static final blacklist GUIDE_POPUP_DISMISS_BY_USER_KEY:Ljava/lang/String; = "guide_popup_dismiss_by_user_key"

.field private static final blacklist GUIDE_POPUP_DISMISS_BY_USER_VALUE:Ljava/lang/String; = "guide_popup_dismiss_by_user_value"

.field private static final blacklist SHOW_POPUP_DELAY:I = 0xc8

.field private static final blacklist SYSTEM_UI_PACKAGE_NAME:Ljava/lang/String; = "com.android.systemui"

.field private static final blacklist TAG:Ljava/lang/String;

.field private static final blacklist TOUCH_MOVE_THRESHOLD:I = 0x19

.field private static final blacklist WHITE_LIST_DEFAULT:Ljava/lang/String; = "oplus_scroll_to_top_white_list_default_empty"

.field private static final blacklist WHITE_LIST_KEY:Ljava/lang/String; = "oplus_scroll_to_top_white_list_key"

.field private static blacklist sWhiteList:Ljava/lang/String;


# instance fields
.field private blacklist mDismissPopupBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mFocusChangeRunnable:Landroid/view/OplusScrollToTopManager$DelayRegisterReceiverRunnable;

.field private blacklist mGuidePopup:Landroid/widget/PopupWindow;

.field private blacklist mH:Landroid/os/Handler;

.field private blacklist mHasShownGuildPopup:Z

.field private blacklist mIdler:Landroid/view/OplusScrollToTopManager$Idler;

.field private blacklist mIsDying:Z

.field private blacklist mLastDownPoint:Landroid/graphics/PointF;

.field private blacklist mScrollableViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mShowPopupTask:Ljava/lang/Runnable;

.field private blacklist mSystemUIBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mView:Landroid/view/View;

.field private blacklist mWinFrame:Landroid/graphics/Rect;

.field private blacklist mWindowAttributes:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmIsDying(Landroid/view/OplusScrollToTopManager;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/view/OplusScrollToTopManager;->mIsDying:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmScrollableViews(Landroid/view/OplusScrollToTopManager;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroid/view/OplusScrollToTopManager;->mScrollableViews:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmView(Landroid/view/OplusScrollToTopManager;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroid/view/OplusScrollToTopManager;->mView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mdismissPopup(Landroid/view/OplusScrollToTopManager;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/OplusScrollToTopManager;->dismissPopup(Landroid/content/Context;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetTopScrollableChild(Landroid/view/OplusScrollToTopManager;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/OplusScrollToTopManager;->getTopScrollableChild()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mguidePopupHasDismissed(Landroid/view/OplusScrollToTopManager;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/OplusScrollToTopManager;->guidePopupHasDismissed(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$misInWhiteList(Landroid/view/OplusScrollToTopManager;Landroid/content/Context;)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/OplusScrollToTopManager;->isInWhiteList(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mlog(Landroid/view/OplusScrollToTopManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/OplusScrollToTopManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mneedShowPopup(Landroid/view/OplusScrollToTopManager;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/OplusScrollToTopManager;->needShowPopup(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mreflectSmoothScrollForScrollableView(Landroid/view/OplusScrollToTopManager;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/OplusScrollToTopManager;->reflectSmoothScrollForScrollableView(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mrefreshGuidePopup(Landroid/view/OplusScrollToTopManager;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/OplusScrollToTopManager;->refreshGuidePopup(Landroid/content/Context;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mregisterGuidePopupDismissReceiverInSystemUI(Landroid/view/OplusScrollToTopManager;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/OplusScrollToTopManager;->registerGuidePopupDismissReceiverInSystemUI(Landroid/content/Context;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mregisterSystemUIBroadcastReceiver(Landroid/view/OplusScrollToTopManager;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/OplusScrollToTopManager;->registerSystemUIBroadcastReceiver(Landroid/content/Context;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mshowGuidePopup(Landroid/view/OplusScrollToTopManager;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/OplusScrollToTopManager;->showGuidePopup(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$munregisterSystemUIBroadcastReceiver(Landroid/view/OplusScrollToTopManager;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/OplusScrollToTopManager;->unregisterSystemUIBroadcastReceiver(Landroid/content/Context;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 52
    const-class v0, Landroid/view/OplusScrollToTopManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/OplusScrollToTopManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/OplusScrollToTopManager;->mScrollableViews:Ljava/util/List;

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/OplusScrollToTopManager;->mIsDying:Z

    .line 99
    new-instance v0, Landroid/view/OplusScrollToTopManager$1;

    invoke-direct {v0, p0}, Landroid/view/OplusScrollToTopManager$1;-><init>(Landroid/view/OplusScrollToTopManager;)V

    iput-object v0, p0, Landroid/view/OplusScrollToTopManager;->mDismissPopupBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 109
    new-instance v0, Landroid/view/OplusScrollToTopManager$2;

    invoke-direct {v0, p0}, Landroid/view/OplusScrollToTopManager$2;-><init>(Landroid/view/OplusScrollToTopManager;)V

    iput-object v0, p0, Landroid/view/OplusScrollToTopManager;->mSystemUIBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 127
    new-instance v0, Landroid/view/OplusScrollToTopManager$DelayRegisterReceiverRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/OplusScrollToTopManager$DelayRegisterReceiverRunnable;-><init>(Landroid/view/OplusScrollToTopManager;Landroid/view/OplusScrollToTopManager$DelayRegisterReceiverRunnable-IA;)V

    iput-object v0, p0, Landroid/view/OplusScrollToTopManager;->mFocusChangeRunnable:Landroid/view/OplusScrollToTopManager$DelayRegisterReceiverRunnable;

    .line 90
    invoke-direct {p0}, Landroid/view/OplusScrollToTopManager;->init()V

    .line 91
    return-void
.end method

.method private blacklist callScrollMethods(Ljava/util/List;Landroid/view/View;)Z
    .locals 11
    .param p2, "scrollTarget"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Method;",
            ">;",
            "Landroid/view/View;",
            ")Z"
        }
    .end annotation

    .line 277
    .local p1, "scrollMethods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    const/4 v0, 0x0

    .line 278
    .local v0, "hasCalledMethod":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 280
    :try_start_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    .line 281
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 282
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    .line 283
    .local v4, "methodName":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterCount()I

    move-result v5

    .line 284
    .local v5, "paramsCount":I
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    .line 286
    .local v6, "paramsTypes":[Ljava/lang/Class;
    const/4 v7, 0x0

    if-ne v5, v3, :cond_0

    .line 287
    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v7

    invoke-virtual {v2, p2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "invoke 1 param method "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Landroid/view/OplusScrollToTopManager;->log(Ljava/lang/String;)V

    .line 289
    return v3

    .line 292
    :cond_0
    const/4 v8, 0x2

    if-ne v5, v8, :cond_1

    aget-object v9, v6, v7

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v9, v10, :cond_1

    aget-object v9, v6, v3

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v9, v10, :cond_1

    .line 293
    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v8, v3

    invoke-virtual {v2, p2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "invoke (int, int) method "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Landroid/view/OplusScrollToTopManager;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    return v3

    .line 299
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v4    # "methodName":Ljava/lang/String;
    .end local v5    # "paramsCount":I
    .end local v6    # "paramsTypes":[Ljava/lang/Class;
    :cond_1
    goto :goto_1

    .line 297
    :catch_0
    move-exception v2

    .line 298
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Landroid/view/OplusScrollToTopManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 278
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 301
    .end local v1    # "i":I
    :cond_2
    return v0
.end method

.method private blacklist clickOnStatusBar(Landroid/content/Context;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .line 406
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 407
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 408
    .local v1, "action":I
    const-string v2, "com.android.systemui"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/view/OplusScrollToTopManager;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7d0

    if-ne v2, v4, :cond_5

    .line 410
    if-eqz v1, :cond_4

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    goto :goto_2

    .line 412
    :cond_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/16 v4, 0xa

    if-ne v1, v4, :cond_5

    .line 413
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget-object v5, p0, Landroid/view/OplusScrollToTopManager;->mLastDownPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x41c80000    # 25.0f

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_3

    .line 414
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget-object v6, p0, Landroid/view/OplusScrollToTopManager;->mLastDownPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    goto :goto_0

    :cond_2
    move v4, v3

    goto :goto_1

    :cond_3
    :goto_0
    move v4, v2

    .line 415
    .local v4, "moved":Z
    :goto_1
    if-nez v4, :cond_5

    .line 416
    return v2

    .line 411
    .end local v4    # "moved":Z
    :cond_4
    :goto_2
    iget-object v2, p0, Landroid/view/OplusScrollToTopManager;->mLastDownPoint:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/PointF;->set(FF)V

    .line 420
    :cond_5
    return v3
.end method

.method private blacklist createContentView(Landroid/view/View;)Landroid/view/View;
    .locals 5
    .param p1, "decorView"    # Landroid/view/View;

    .line 486
    const v0, 0xc090439

    .line 487
    .local v0, "layoutId":I
    const v1, 0xc0200a2

    .line 489
    .local v1, "deleteIconId":I
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 490
    .local v2, "contentView":Landroid/view/View;
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 491
    .local v3, "deleteIcon":Landroid/widget/ImageView;
    new-instance v4, Landroid/view/OplusScrollToTopManager$4;

    invoke-direct {v4, p0}, Landroid/view/OplusScrollToTopManager$4;-><init>(Landroid/view/OplusScrollToTopManager;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 498
    return-object v2
.end method

.method private blacklist dismissPopup(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 396
    iget-object v0, p0, Landroid/view/OplusScrollToTopManager;->mGuidePopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Landroid/view/OplusScrollToTopManager;->mGuidePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 398
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 399
    .local v0, "userHandle":I
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.oplus.guide_popup_dismiss_by_user"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 400
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "user_handle"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 401
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 403
    .end local v0    # "userHandle":I
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static blacklist getInstance()Landroid/view/OplusScrollToTopManager;
    .locals 1

    .line 609
    invoke-static {}, Landroid/view/OplusScrollToTopManager$Holder;->-$$Nest$sfgetINSTANCE()Landroid/view/OplusScrollToTopManager;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getTopScrollableChild()V
    .locals 1

    .line 305
    iget-object v0, p0, Landroid/view/OplusScrollToTopManager;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 306
    return-void

    .line 309
    :cond_0
    instance-of v0, v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 310
    return-void

    .line 312
    :cond_1
    iget-object v0, p0, Landroid/view/OplusScrollToTopManager;->mScrollableViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 313
    iget-object v0, p0, Landroid/view/OplusScrollToTopManager;->mView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Landroid/view/OplusScrollToTopManager;->scanScrollTarget(Landroid/view/ViewGroup;)V

    .line 314
    return-void
.end method

.method private blacklist guidePopupHasDismissed(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 156
    :try_start_0
    const-string v0, "received guidePopupHasDismissed intent, write to Settings"

    invoke-direct {p0, v0}, Landroid/view/OplusScrollToTopManager;->log(Ljava/lang/String;)V

    .line 157
    const-string v0, "user_handle"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 158
    .local v0, "userHandle":I
    if-ne v0, v1, :cond_0

    .line 159
    const-string v1, "error on getting userHandle in guidePopupDismiss intent"

    invoke-direct {p0, v1}, Landroid/view/OplusScrollToTopManager;->log(Ljava/lang/String;)V

    .line 160
    return-void

    .line 163
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "guide_popup_dismiss_by_user_key"

    const-string v3, "guide_popup_dismiss_by_user_value"

    invoke-static {v1, v2, v3, v0}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writed guide popup dismiss in settings for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/view/OplusScrollToTopManager;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .end local v0    # "userHandle":I
    goto :goto_0

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/view/OplusScrollToTopManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 171
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private blacklist handleWindowDying()V
    .locals 3

    .line 502
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/OplusScrollToTopManager;->mIsDying:Z

    .line 503
    iget-object v0, p0, Landroid/view/OplusScrollToTopManager;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 504
    return-void

    .line 507
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 508
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_1

    .line 509
    return-void

    .line 512
    :cond_1
    iget-object v1, p0, Landroid/view/OplusScrollToTopManager;->mFocusChangeRunnable:Landroid/view/OplusScrollToTopManager$DelayRegisterReceiverRunnable;

    if-eqz v1, :cond_2

    iget-object v2, p0, Landroid/view/OplusScrollToTopManager;->mIdler:Landroid/view/OplusScrollToTopManager$Idler;

    if-eqz v2, :cond_2

    .line 513
    iget-object v2, p0, Landroid/view/OplusScrollToTopManager;->mH:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 516
    :cond_2
    invoke-direct {p0, v0}, Landroid/view/OplusScrollToTopManager;->unregisterGuidePopupDismissReceiverInSystemUI(Landroid/content/Context;)V

    .line 517
    invoke-direct {p0, v0}, Landroid/view/OplusScrollToTopManager;->unregisterSystemUIBroadcastReceiver(Landroid/content/Context;)V

    .line 518
    return-void
.end method

.method private blacklist hasDismissedPopupBefore(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 446
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "guide_popup_dismiss_by_user_key"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 449
    .local v1, "value":Ljava/lang/String;
    const-string v2, "guide_popup_dismiss_by_user_value"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 450
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "postShowGuidePopupRunnable value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/view/OplusScrollToTopManager;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    return v0

    .line 456
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    nop

    .line 458
    const/4 v0, 0x0

    return v0

    .line 453
    :catch_0
    move-exception v1

    .line 454
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/view/OplusScrollToTopManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 455
    return v0
.end method

.method private blacklist init()V
    .locals 0

    .line 130
    invoke-direct {p0}, Landroid/view/OplusScrollToTopManager;->initHandlerAndRunnable()V

    .line 131
    return-void
.end method

.method private blacklist initHandlerAndRunnable()V
    .locals 2

    .line 134
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/view/OplusScrollToTopManager;->mH:Landroid/os/Handler;

    .line 135
    new-instance v0, Landroid/view/OplusScrollToTopManager$3;

    invoke-direct {v0, p0}, Landroid/view/OplusScrollToTopManager$3;-><init>(Landroid/view/OplusScrollToTopManager;)V

    iput-object v0, p0, Landroid/view/OplusScrollToTopManager;->mShowPopupTask:Ljava/lang/Runnable;

    .line 150
    new-instance v0, Landroid/view/OplusScrollToTopManager$Idler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/OplusScrollToTopManager$Idler;-><init>(Landroid/view/OplusScrollToTopManager$Idler-IA;)V

    iput-object v0, p0, Landroid/view/OplusScrollToTopManager;->mIdler:Landroid/view/OplusScrollToTopManager$Idler;

    .line 151
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Landroid/view/OplusScrollToTopManager;->mLastDownPoint:Landroid/graphics/PointF;

    .line 152
    return-void
.end method

.method private blacklist isInWhiteList(Landroid/content/Context;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 216
    sget-object v0, Landroid/view/OplusScrollToTopManager;->sWhiteList:Ljava/lang/String;

    const-string v1, "oplus_scroll_to_top_white_list_default_empty"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 217
    return v2

    .line 220
    :cond_0
    sget-object v0, Landroid/view/OplusScrollToTopManager;->sWhiteList:Ljava/lang/String;

    const-string v3, ""

    if-eqz v0, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 221
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "oplus_scroll_to_top_white_list_key"

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/OplusScrollToTopManager;->sWhiteList:Ljava/lang/String;

    .line 224
    :cond_2
    sget-object v0, Landroid/view/OplusScrollToTopManager;->sWhiteList:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 228
    :cond_3
    sget-object v0, Landroid/view/OplusScrollToTopManager;->sWhiteList:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "subString":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 230
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 232
    .local v4, "packageName":Ljava/lang/String;
    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 233
    return v3

    .line 235
    :cond_4
    return v2

    .line 225
    .end local v0    # "subString":Ljava/lang/String;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_5
    :goto_0
    sput-object v1, Landroid/view/OplusScrollToTopManager;->sWhiteList:Ljava/lang/String;

    .line 226
    return v2
.end method

.method private blacklist log(Ljava/lang/String;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .line 618
    sget-object v0, Landroid/view/OplusScrollToTopManager;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    return-void
.end method

.method private blacklist needShowPopup(Landroid/view/View;)Z
    .locals 2
    .param p1, "decorView"    # Landroid/view/View;

    .line 425
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/OplusScrollToTopManager;->isInWhiteList(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 426
    return v1

    .line 429
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 430
    return v1

    .line 433
    :cond_1
    iget-boolean v0, p0, Landroid/view/OplusScrollToTopManager;->mHasShownGuildPopup:Z

    if-eqz v0, :cond_2

    .line 434
    return v1

    .line 437
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/OplusScrollToTopManager;->hasDismissedPopupBefore(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 438
    return v1

    .line 441
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist queryScrollMethods(Ljava/util/List;[Ljava/lang/String;Ljava/lang/Class;)V
    .locals 7
    .param p2, "keyNames"    # [Ljava/lang/String;
    .param p3, "clz"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Method;",
            ">;[",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    .line 262
    .local p1, "candidates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    invoke-virtual {p3}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 263
    .local v0, "methods":[Ljava/lang/reflect/Method;
    array-length v1, v0

    .line 265
    .local v1, "methodLength":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_2

    .line 266
    aget-object v3, p2, v2

    .line 267
    .local v3, "keyName":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_1
    if-ge v4, v1, :cond_1

    .line 268
    aget-object v5, v0, v4

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    .line 269
    .local v5, "superMethodName":Ljava/lang/String;
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 270
    aget-object v6, v0, v4

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    .end local v5    # "superMethodName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 265
    .end local v3    # "keyName":Ljava/lang/String;
    .end local v4    # "k":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 274
    .end local v2    # "j":I
    :cond_2
    return-void
.end method

.method private blacklist reflectSmoothScrollForScrollableView(Landroid/view/View;)Z
    .locals 5
    .param p1, "scrollTarget"    # Landroid/view/View;

    .line 241
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 242
    .local v0, "cls":Ljava/lang/Class;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 243
    .local v1, "candidateScrollMethods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    const-string v2, "smoothScrollToPosition"

    const-string v3, "smoothScrollTo"

    const-string v4, "scrollToPosition"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    .line 248
    .local v2, "keyNames":[Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    .line 249
    invoke-direct {p0, v1, v2, v0}, Landroid/view/OplusScrollToTopManager;->queryScrollMethods(Ljava/util/List;[Ljava/lang/String;Ljava/lang/Class;)V

    .line 250
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 253
    :cond_0
    invoke-direct {p0, v1, p1}, Landroid/view/OplusScrollToTopManager;->callScrollMethods(Ljava/util/List;Landroid/view/View;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    .local v3, "reflectSucceed":Z
    return v3

    .line 255
    .end local v0    # "cls":Ljava/lang/Class;
    .end local v1    # "candidateScrollMethods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    .end local v2    # "keyNames":[Ljava/lang/String;
    .end local v3    # "reflectSucceed":Z
    :catch_0
    move-exception v0

    .line 256
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/view/OplusScrollToTopManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 258
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist refreshGuidePopup(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 478
    iget-object v0, p0, Landroid/view/OplusScrollToTopManager;->mGuidePopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 479
    invoke-direct {p0, p1}, Landroid/view/OplusScrollToTopManager;->hasDismissedPopupBefore(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Landroid/view/OplusScrollToTopManager;->mGuidePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 483
    :cond_0
    return-void
.end method

.method private blacklist registerGuidePopupDismissReceiverInSystemUI(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 174
    const-string v0, "registerGuidePopupDismissReceiverInSystemUI"

    invoke-direct {p0, v0}, Landroid/view/OplusScrollToTopManager;->log(Ljava/lang/String;)V

    .line 175
    if-nez p1, :cond_0

    .line 176
    const-string v0, "registerGuidePopupDismissReceiverInSystemUI context = null"

    invoke-direct {p0, v0}, Landroid/view/OplusScrollToTopManager;->log(Ljava/lang/String;)V

    .line 177
    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Landroid/view/OplusScrollToTopManager;->mView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 181
    const-string v0, "registerGuidePopupDismissReceiverInSystemUI mView = null"

    invoke-direct {p0, v0}, Landroid/view/OplusScrollToTopManager;->log(Ljava/lang/String;)V

    .line 182
    return-void

    .line 185
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 186
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.oplus.guide_popup_dismiss_by_user"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 188
    :try_start_0
    iget-object v2, p0, Landroid/view/OplusScrollToTopManager;->mDismissPopupBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 190
    const-string v1, "after registerGuidePopupDismissReceiverInSystemUI"

    invoke-direct {p0, v1}, Landroid/view/OplusScrollToTopManager;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    goto :goto_0

    .line 191
    :catch_0
    move-exception v1

    .line 192
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "register receiver failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/view/OplusScrollToTopManager;->log(Ljava/lang/String;)V

    .line 194
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private blacklist registerSystemUIBroadcastReceiver(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 357
    const-string v0, "registerSystemUIBroadcastReceiver "

    invoke-direct {p0, v0}, Landroid/view/OplusScrollToTopManager;->log(Ljava/lang/String;)V

    .line 358
    if-nez p1, :cond_0

    .line 359
    const-string v0, "mContext == null"

    invoke-direct {p0, v0}, Landroid/view/OplusScrollToTopManager;->log(Ljava/lang/String;)V

    .line 360
    return-void

    .line 363
    :cond_0
    iget-object v0, p0, Landroid/view/OplusScrollToTopManager;->mView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 364
    const-string v0, "mView == null"

    invoke-direct {p0, v0}, Landroid/view/OplusScrollToTopManager;->log(Ljava/lang/String;)V

    .line 365
    return-void

    .line 368
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 369
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.oplus.click_status_bar"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 371
    :try_start_0
    iget-object v1, p0, Landroid/view/OplusScrollToTopManager;->mSystemUIBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    goto :goto_0

    .line 372
    :catch_0
    move-exception v1

    .line 373
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "register receiver failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/view/OplusScrollToTopManager;->log(Ljava/lang/String;)V

    .line 375
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private blacklist scanScrollTarget(Landroid/view/ViewGroup;)V
    .locals 5
    .param p1, "parentView"    # Landroid/view/ViewGroup;

    .line 317
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 318
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 319
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 320
    .local v2, "childView":Landroid/view/View;
    invoke-direct {p0, v2}, Landroid/view/OplusScrollToTopManager;->viewCanScrollUp(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 321
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "find scrollTarget : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", vertical scrollRange = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 322
    invoke-virtual {v2}, Landroid/view/View;->computeVerticalScrollRange()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 321
    invoke-direct {p0, v3}, Landroid/view/OplusScrollToTopManager;->log(Ljava/lang/String;)V

    .line 323
    iget-object v3, p0, Landroid/view/OplusScrollToTopManager;->mScrollableViews:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    .end local v2    # "childView":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 327
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 328
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 329
    .restart local v2    # "childView":Landroid/view/View;
    if-eqz v2, :cond_2

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    .line 331
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    .line 332
    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    invoke-direct {p0, v3}, Landroid/view/OplusScrollToTopManager;->scanScrollTarget(Landroid/view/ViewGroup;)V

    .line 327
    .end local v2    # "childView":Landroid/view/View;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 335
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method private blacklist showGuidePopup(Landroid/view/View;)V
    .locals 4
    .param p1, "decorView"    # Landroid/view/View;

    .line 462
    iget-object v0, p0, Landroid/view/OplusScrollToTopManager;->mGuidePopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 463
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3, v1, v2, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Landroid/view/OplusScrollToTopManager;->mGuidePopup:Landroid/widget/PopupWindow;

    .line 467
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/view/OplusScrollToTopManager;->mGuidePopup:Landroid/widget/PopupWindow;

    invoke-direct {p0, p1}, Landroid/view/OplusScrollToTopManager;->createContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 468
    iget-object v0, p0, Landroid/view/OplusScrollToTopManager;->mGuidePopup:Landroid/widget/PopupWindow;

    const/16 v3, 0x31

    invoke-virtual {v0, p1, v3, v2, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 469
    iget-object v0, p0, Landroid/view/OplusScrollToTopManager;->mGuidePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    goto :goto_0

    .line 470
    :catch_0
    move-exception v0

    .line 471
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to show guidePopup "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/view/OplusScrollToTopManager;->log(Ljava/lang/String;)V

    .line 474
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/OplusScrollToTopManager;->mHasShownGuildPopup:Z

    .line 475
    return-void
.end method

.method private blacklist unregisterGuidePopupDismissReceiverInSystemUI(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 197
    const-string v0, "unregisterGuidePopupDismissReceiverInSystemUI"

    invoke-direct {p0, v0}, Landroid/view/OplusScrollToTopManager;->log(Ljava/lang/String;)V

    .line 198
    if-nez p1, :cond_0

    .line 199
    const-string v0, "unregisterGuidePopupDismissReceiverInSystemUI context = null"

    invoke-direct {p0, v0}, Landroid/view/OplusScrollToTopManager;->log(Ljava/lang/String;)V

    .line 200
    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Landroid/view/OplusScrollToTopManager;->mView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 204
    const-string v0, "unregisterGuidePopupDismissReceiverInSystemUI mView = null"

    invoke-direct {p0, v0}, Landroid/view/OplusScrollToTopManager;->log(Ljava/lang/String;)V

    .line 205
    return-void

    .line 209
    :cond_1
    :try_start_0
    iget-object v0, p0, Landroid/view/OplusScrollToTopManager;->mDismissPopupBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    goto :goto_0

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/view/OplusScrollToTopManager;->log(Ljava/lang/String;)V

    .line 213
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private blacklist unregisterSystemUIBroadcastReceiver(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 378
    const-string v0, "unregisterSystemUIBroadcastReceiver "

    invoke-direct {p0, v0}, Landroid/view/OplusScrollToTopManager;->log(Ljava/lang/String;)V

    .line 379
    if-nez p1, :cond_0

    .line 380
    const-string v0, "mContext == null"

    invoke-direct {p0, v0}, Landroid/view/OplusScrollToTopManager;->log(Ljava/lang/String;)V

    .line 381
    return-void

    .line 385
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/view/OplusScrollToTopManager;->mSystemUIBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    goto :goto_0

    .line 386
    :catch_0
    move-exception v0

    .line 387
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/view/OplusScrollToTopManager;->log(Ljava/lang/String;)V

    .line 389
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private blacklist viewCanScrollUp(Landroid/view/View;)Z
    .locals 4
    .param p1, "childView"    # Landroid/view/View;

    .line 338
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 340
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, -0x1

    .line 341
    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 343
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 344
    .local v1, "locationOnScreen":[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 345
    aget v2, v1, v0

    iget-object v3, p0, Landroid/view/OplusScrollToTopManager;->mWinFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-ge v2, v3, :cond_0

    aget v2, v1, v0

    .line 346
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Landroid/view/OplusScrollToTopManager;->mWinFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-le v2, v3, :cond_0

    .line 347
    invoke-virtual {p1}, Landroid/view/View;->computeVerticalScrollRange()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 348
    const/4 v0, 0x1

    return v0

    .line 352
    .end local v1    # "locationOnScreen":[I
    :cond_0
    return v0
.end method


# virtual methods
.method public blacklist handleWindowFocusChanged(Landroid/content/Context;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hasFocus"    # Z

    .line 547
    iget-object v0, p0, Landroid/view/OplusScrollToTopManager;->mFocusChangeRunnable:Landroid/view/OplusScrollToTopManager$DelayRegisterReceiverRunnable;

    if-nez v0, :cond_0

    .line 548
    return-void

    .line 554
    :cond_0
    iget-object v0, p0, Landroid/view/OplusScrollToTopManager;->mIdler:Landroid/view/OplusScrollToTopManager$Idler;

    if-nez v0, :cond_1

    .line 555
    new-instance v0, Landroid/view/OplusScrollToTopManager$Idler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/OplusScrollToTopManager$Idler;-><init>(Landroid/view/OplusScrollToTopManager$Idler-IA;)V

    iput-object v0, p0, Landroid/view/OplusScrollToTopManager;->mIdler:Landroid/view/OplusScrollToTopManager$Idler;

    .line 557
    :cond_1
    iget-object v0, p0, Landroid/view/OplusScrollToTopManager;->mFocusChangeRunnable:Landroid/view/OplusScrollToTopManager$DelayRegisterReceiverRunnable;

    invoke-virtual {v0, p1, p2}, Landroid/view/OplusScrollToTopManager$DelayRegisterReceiverRunnable;->setParams(Landroid/content/Context;Z)V

    .line 559
    iget-object v0, p0, Landroid/view/OplusScrollToTopManager;->mH:Landroid/os/Handler;

    iget-object v1, p0, Landroid/view/OplusScrollToTopManager;->mFocusChangeRunnable:Landroid/view/OplusScrollToTopManager$DelayRegisterReceiverRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 560
    iget-object v0, p0, Landroid/view/OplusScrollToTopManager;->mH:Landroid/os/Handler;

    iget-object v1, p0, Landroid/view/OplusScrollToTopManager;->mFocusChangeRunnable:Landroid/view/OplusScrollToTopManager$DelayRegisterReceiverRunnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 561
    return-void
.end method

.method public blacklist newInstance()Landroid/view/IOplusScrollToTopManager;
    .locals 1

    .line 614
    new-instance v0, Landroid/view/OplusScrollToTopManager;

    invoke-direct {v0}, Landroid/view/OplusScrollToTopManager;-><init>()V

    return-object v0
.end method

.method public blacklist onWindowDying()V
    .locals 1

    .line 601
    iget-boolean v0, p0, Landroid/view/OplusScrollToTopManager;->mIsDying:Z

    if-eqz v0, :cond_0

    .line 602
    return-void

    .line 605
    :cond_0
    invoke-direct {p0}, Landroid/view/OplusScrollToTopManager;->handleWindowDying()V

    .line 606
    return-void
.end method

.method public blacklist postShowGuidePopupRunnable(Landroid/view/View;)V
    .locals 4
    .param p1, "decorView"    # Landroid/view/View;

    .line 569
    iget-boolean v0, p0, Landroid/view/OplusScrollToTopManager;->mIsDying:Z

    if-eqz v0, :cond_0

    .line 570
    return-void

    .line 573
    :cond_0
    iget-object v0, p0, Landroid/view/OplusScrollToTopManager;->mH:Landroid/os/Handler;

    iget-object v1, p0, Landroid/view/OplusScrollToTopManager;->mShowPopupTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 574
    iget-object v0, p0, Landroid/view/OplusScrollToTopManager;->mH:Landroid/os/Handler;

    iget-object v1, p0, Landroid/view/OplusScrollToTopManager;->mShowPopupTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 575
    return-void
.end method

.method public blacklist processPointerEvent(Landroid/view/MotionEvent;Landroid/content/Context;)V
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;
    .param p2, "context"    # Landroid/content/Context;

    .line 584
    iget-boolean v0, p0, Landroid/view/OplusScrollToTopManager;->mIsDying:Z

    if-eqz v0, :cond_0

    .line 585
    return-void

    .line 588
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 589
    .local v0, "action":I
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 590
    .local v1, "packageName":Ljava/lang/String;
    invoke-direct {p0, p2, p1}, Landroid/view/OplusScrollToTopManager;->clickOnStatusBar(Landroid/content/Context;Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 591
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.oplus.click_status_bar"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 592
    .local v2, "clickIntent":Landroid/content/Intent;
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p2, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 594
    .end local v2    # "clickIntent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public blacklist setWindowFrame(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "winFrame"    # Landroid/graphics/Rect;

    .line 537
    iput-object p1, p0, Landroid/view/OplusScrollToTopManager;->mWinFrame:Landroid/graphics/Rect;

    .line 538
    return-void
.end method

.method public blacklist setWindowRootView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/WindowManager$LayoutParams;

    .line 527
    iput-object p1, p0, Landroid/view/OplusScrollToTopManager;->mView:Landroid/view/View;

    .line 528
    iput-object p2, p0, Landroid/view/OplusScrollToTopManager;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 529
    return-void
.end method
