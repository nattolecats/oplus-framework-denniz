.class public Lcom/oplus/resolver/OplusResolverOshare;
.super Ljava/lang/Object;
.source "OplusResolverOshare.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;,
        Lcom/oplus/resolver/OplusResolverOshare$MyViewHolder;,
        Lcom/oplus/resolver/OplusResolverOshare$EmptyViewHolder;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = true

.field private static final blacklist DEFAULT_SCALE_PERCENT:F = 0.4f

.field private static final blacklist DEFAUT_PATHINTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final blacklist DIVIDER_LINE_APPEAR_DURATION:I = 0x10b

.field private static final blacklist KEY_FIRST_ADD_DEVICE_LIST:I = 0x68

.field private static final blacklist KEY_NOTIFY_DEVICE_LIST_ADD:I = 0x67

.field private static final blacklist KEY_RESET_UPDATE_DEVICE_LIST_STATUS:I = 0x66

.field private static final blacklist KEY_UPDATE_PENDING_DEVICE_LIST:I = 0x65

.field private static final blacklist LIST_ITEM_ADD_DELAY:I = 0x12c

.field private static final blacklist LIST_ITEM_ADD_DURATION:I = 0xfa

.field private static final blacklist LIST_ITEM_ADD_FACTOR:I = 0xaa

.field private static final blacklist LIST_ITEM_MOVE_DELAY:I = 0x15e

.field private static final blacklist LIST_ITEM_MOVE_DURATION:I = 0x14d

.field private static final blacklist LIST_ITEM_REMOVE_DELAY:I = 0xc8

.field private static final blacklist LIST_ITEM_REMOVE_DURATION:I = 0xa7

.field private static final blacklist PANEL_VIEW_APPEAR_AND_DISAPPEAR_DURATION:I = 0x85

.field private static final blacklist PANEL_VIEW_APPEAR_AND_DISAPPEAR_PATHINTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final blacklist PANEL_VIEW_TEXT_CHANGE_DURATION:I = 0xc8

.field private static final blacklist SEND_UPDATE_PENDING_DEVICE_LIST_DELAY:I = 0x64

.field private static final blacklist TAG:Ljava/lang/String; = "OplusResolverOshare"

.field private static final blacklist TOUCH_END_DURATION:I = 0x12c

.field private static final blacklist TRANSFER_STATUS_VIEW_BEHIND_ANIMATOR_PATHINTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final blacklist TRANSFER_STATUS_VIEW_DURATION_AND_DELAY:I = 0x29b

.field private static final blacklist TRANSFER_STATUS_VIEW_FRONT_ANIMATOR_PATHINTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final blacklist TRANSFER_STATUS_VIEW_SCALE:F = 0.18f


# instance fields
.field private blacklist isPause:Z

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mHasInitView:Z

.field private blacklist mIsNeedToDelayCancelScaleAnim:Z

.field private blacklist mIsOshareApplicationEnable:Z

.field private blacklist mIsSplitScreenMode:Z

.field private blacklist mIsUpdateDeviceList:Z

.field private blacklist mLastOshareLayoutHeight:I

.field private blacklist mOShareCallback:Lcom/oplus/oshare/IOplusOshareCallback;

.field private blacklist mOShareInitListener:Lcom/oplus/oshare/IOplusOshareInitListener;

.field private blacklist mOShareServiceInited:Z

.field private blacklist mOShareServiceUtil:Lcom/oplus/oshare/OplusOshareServiceUtil;

.field private blacklist mOriginIntent:Landroid/content/Intent;

.field private blacklist mOshareClosedTitle:Landroid/widget/TextView;

.field private blacklist mOshareDividerLine:Landroid/view/View;

.field private blacklist mOshareLayout:Lcom/oplus/resolver/OplusResolverOshareLayout;

.field private blacklist mOshareOpenedTextLayout:Landroid/widget/RelativeLayout;

.field private blacklist mOsharePanelView:Landroid/view/View;

.field private blacklist mOsharePanelViewAppearAnimator:Landroid/animation/ObjectAnimator;

.field private blacklist mOsharePanelViewDisappearAnimator:Landroid/animation/ObjectAnimator;

.field private blacklist mOsharePanelViewTextChangeAnimator:Landroid/animation/AnimatorSet;

.field private blacklist mOshareSharingView:Landroid/view/View;

.field private blacklist mPendingDeviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/oshare/OplusOshareDevice;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPressAnimationRecorder:Landroid/animation/ValueAnimator;

.field private blacklist mPressValue:F

.field blacklist mRecyclerView:Lcom/android/internal/widget/RecyclerView;

.field private blacklist mResolverOshareingAdapter:Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;

.field private blacklist mScanLoadingIcon:Lcom/oplus/resolver/OplusResolverScanLoadingIcon;

.field private blacklist mTouchAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/oplus/resolver/OplusResolverOshare;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Lcom/oplus/resolver/OplusResolverOshare;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsNeedToDelayCancelScaleAnim(Lcom/oplus/resolver/OplusResolverOshare;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mIsNeedToDelayCancelScaleAnim:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsOshareApplicationEnable(Lcom/oplus/resolver/OplusResolverOshare;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mIsOshareApplicationEnable:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOShareCallback(Lcom/oplus/resolver/OplusResolverOshare;)Lcom/oplus/oshare/IOplusOshareCallback;
    .locals 0

    iget-object p0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOShareCallback:Lcom/oplus/oshare/IOplusOshareCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOShareServiceInited(Lcom/oplus/resolver/OplusResolverOshare;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOShareServiceInited:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOShareServiceUtil(Lcom/oplus/resolver/OplusResolverOshare;)Lcom/oplus/oshare/OplusOshareServiceUtil;
    .locals 0

    iget-object p0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOShareServiceUtil:Lcom/oplus/oshare/OplusOshareServiceUtil;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOriginIntent(Lcom/oplus/resolver/OplusResolverOshare;)Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOriginIntent:Landroid/content/Intent;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOshareClosedTitle(Lcom/oplus/resolver/OplusResolverOshare;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOshareClosedTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOshareDividerLine(Lcom/oplus/resolver/OplusResolverOshare;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOshareDividerLine:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOshareLayout(Lcom/oplus/resolver/OplusResolverOshare;)Lcom/oplus/resolver/OplusResolverOshareLayout;
    .locals 0

    iget-object p0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOshareLayout:Lcom/oplus/resolver/OplusResolverOshareLayout;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOshareOpenedTextLayout(Lcom/oplus/resolver/OplusResolverOshare;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOshareOpenedTextLayout:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOsharePanelView(Lcom/oplus/resolver/OplusResolverOshare;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOsharePanelView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPendingDeviceList(Lcom/oplus/resolver/OplusResolverOshare;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mPendingDeviceList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPressAnimationRecorder(Lcom/oplus/resolver/OplusResolverOshare;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mPressAnimationRecorder:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmResolverOshareingAdapter(Lcom/oplus/resolver/OplusResolverOshare;)Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;
    .locals 0

    iget-object p0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mResolverOshareingAdapter:Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmScanLoadingIcon(Lcom/oplus/resolver/OplusResolverOshare;)Lcom/oplus/resolver/OplusResolverScanLoadingIcon;
    .locals 0

    iget-object p0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mScanLoadingIcon:Lcom/oplus/resolver/OplusResolverScanLoadingIcon;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsNeedToDelayCancelScaleAnim(Lcom/oplus/resolver/OplusResolverOshare;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oplus/resolver/OplusResolverOshare;->mIsNeedToDelayCancelScaleAnim:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsOshareApplicationEnable(Lcom/oplus/resolver/OplusResolverOshare;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oplus/resolver/OplusResolverOshare;->mIsOshareApplicationEnable:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsUpdateDeviceList(Lcom/oplus/resolver/OplusResolverOshare;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oplus/resolver/OplusResolverOshare;->mIsUpdateDeviceList:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmOShareServiceInited(Lcom/oplus/resolver/OplusResolverOshare;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOShareServiceInited:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPendingDeviceList(Lcom/oplus/resolver/OplusResolverOshare;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/resolver/OplusResolverOshare;->mPendingDeviceList:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPressAnimationRecorder(Lcom/oplus/resolver/OplusResolverOshare;Landroid/animation/ValueAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/resolver/OplusResolverOshare;->mPressAnimationRecorder:Landroid/animation/ValueAnimator;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPressValue(Lcom/oplus/resolver/OplusResolverOshare;F)V
    .locals 0

    iput p1, p0, Lcom/oplus/resolver/OplusResolverOshare;->mPressValue:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$manimateNormal(Lcom/oplus/resolver/OplusResolverOshare;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/resolver/OplusResolverOshare;->animateNormal()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$manimatePress(Lcom/oplus/resolver/OplusResolverOshare;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/resolver/OplusResolverOshare;->animatePress()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcheckCanUpdateDeviceList(Lcom/oplus/resolver/OplusResolverOshare;)Z
    .locals 0

    invoke-direct {p0}, Lcom/oplus/resolver/OplusResolverOshare;->checkCanUpdateDeviceList()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetBackgroundDrawable(Lcom/oplus/resolver/OplusResolverOshare;II)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oplus/resolver/OplusResolverOshare;->getBackgroundDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$minitOsharingView(Lcom/oplus/resolver/OplusResolverOshare;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/resolver/OplusResolverOshare;->initOsharingView()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlogIfNeeded(Lcom/oplus/resolver/OplusResolverOshare;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/resolver/OplusResolverOshare;->logIfNeeded(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateOShareUI(Lcom/oplus/resolver/OplusResolverOshare;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/resolver/OplusResolverOshare;->updateOShareUI(Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetDEFAUT_PATHINTERPOLATOR()Landroid/view/animation/PathInterpolator;
    .locals 1

    sget-object v0, Lcom/oplus/resolver/OplusResolverOshare;->DEFAUT_PATHINTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTRANSFER_STATUS_VIEW_BEHIND_ANIMATOR_PATHINTERPOLATOR()Landroid/view/animation/PathInterpolator;
    .locals 1

    sget-object v0, Lcom/oplus/resolver/OplusResolverOshare;->TRANSFER_STATUS_VIEW_BEHIND_ANIMATOR_PATHINTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTRANSFER_STATUS_VIEW_FRONT_ANIMATOR_PATHINTERPOLATOR()Landroid/view/animation/PathInterpolator;
    .locals 1

    sget-object v0, Lcom/oplus/resolver/OplusResolverOshare;->TRANSFER_STATUS_VIEW_FRONT_ANIMATOR_PATHINTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 6

    .line 102
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v3, 0x3f2b851f    # 0.67f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/oplus/resolver/OplusResolverOshare;->PANEL_VIEW_APPEAR_AND_DISAPPEAR_PATHINTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 103
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a    # 0.3f

    const v5, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v1, v2, v5, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/oplus/resolver/OplusResolverOshare;->DEFAUT_PATHINTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 104
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e2e147b    # 0.17f

    const v5, 0x3f547ae1    # 0.83f

    invoke-direct {v0, v1, v2, v5, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/oplus/resolver/OplusResolverOshare;->TRANSFER_STATUS_VIEW_FRONT_ANIMATOR_PATHINTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 106
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/oplus/resolver/OplusResolverOshare;->TRANSFER_STATUS_VIEW_BEHIND_ANIMATOR_PATHINTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOShareServiceInited:Z

    .line 130
    iput-boolean v0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mIsOshareApplicationEnable:Z

    .line 131
    iput-boolean v0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mHasInitView:Z

    .line 133
    iput-boolean v0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mIsUpdateDeviceList:Z

    .line 139
    iput-boolean v0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mIsSplitScreenMode:Z

    .line 195
    new-instance v0, Lcom/oplus/resolver/OplusResolverOshare$2;

    invoke-direct {v0, p0}, Lcom/oplus/resolver/OplusResolverOshare$2;-><init>(Lcom/oplus/resolver/OplusResolverOshare;)V

    iput-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOShareInitListener:Lcom/oplus/oshare/IOplusOshareInitListener;

    .line 221
    new-instance v0, Lcom/oplus/resolver/OplusResolverOshare$3;

    invoke-direct {v0, p0}, Lcom/oplus/resolver/OplusResolverOshare$3;-><init>(Lcom/oplus/resolver/OplusResolverOshare;)V

    iput-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOShareCallback:Lcom/oplus/oshare/IOplusOshareCallback;

    .line 142
    iput-object p1, p0, Lcom/oplus/resolver/OplusResolverOshare;->mContext:Landroid/content/Context;

    .line 143
    iput-object p2, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOriginIntent:Landroid/content/Intent;

    .line 144
    new-instance v0, Lcom/oplus/resolver/OplusResolverOshare$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oplus/resolver/OplusResolverOshare$1;-><init>(Lcom/oplus/resolver/OplusResolverOshare;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mHandler:Landroid/os/Handler;

    .line 193
    return-void
.end method

.method private blacklist animateNormal()V
    .locals 3

    .line 413
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oplus/resolver/OplusResolverOshare;->cancelAnimation(Z)V

    .line 414
    iget-boolean v0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mIsNeedToDelayCancelScaleAnim:Z

    if-eqz v0, :cond_0

    .line 415
    return-void

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOsharePanelView:Landroid/view/View;

    iget v1, p0, Lcom/oplus/resolver/OplusResolverOshare;->mPressValue:F

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/oplus/resolver/COUIPressFeedbackUtil;->generateResumeAnimation(Landroid/view/View;FLandroid/animation/Animator$AnimatorListener;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mTouchAnimator:Landroid/animation/ValueAnimator;

    .line 418
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 419
    return-void
.end method

.method private blacklist animatePress()V
    .locals 2

    .line 391
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oplus/resolver/OplusResolverOshare;->cancelAnimation(Z)V

    .line 392
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOsharePanelView:Landroid/view/View;

    new-instance v1, Lcom/oplus/resolver/OplusResolverOshare$7;

    invoke-direct {v1, p0}, Lcom/oplus/resolver/OplusResolverOshare$7;-><init>(Lcom/oplus/resolver/OplusResolverOshare;)V

    invoke-static {v0, v1}, Lcom/oplus/resolver/COUIPressFeedbackUtil;->generatePressAnimation(Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mTouchAnimator:Landroid/animation/ValueAnimator;

    .line 409
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 410
    return-void
.end method

.method private blacklist cancelAnimation(Z)V
    .locals 4
    .param p1, "isPressed"    # Z

    .line 422
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mIsNeedToDelayCancelScaleAnim:Z

    .line 423
    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverOshare;->mPressAnimationRecorder:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 424
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverOshare;->mPressAnimationRecorder:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v1

    long-to-float v1, v1

    iget-object v2, p0, Lcom/oplus/resolver/OplusResolverOshare;->mPressAnimationRecorder:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v2

    long-to-float v2, v2

    const v3, 0x3ecccccd    # 0.4f

    mul-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mIsNeedToDelayCancelScaleAnim:Z

    .line 425
    if-nez v0, :cond_1

    .line 426
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mPressAnimationRecorder:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 429
    :cond_1
    iget-boolean v0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mIsNeedToDelayCancelScaleAnim:Z

    if-nez v0, :cond_2

    .line 430
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mTouchAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lcom/oplus/resolver/COUIPressFeedbackUtil;->cancelAnim(Landroid/animation/ValueAnimator;)V

    .line 432
    :cond_2
    return-void
.end method

.method private blacklist checkCanUpdateDeviceList()Z
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mResolverOshareingAdapter:Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-eqz v0, :cond_1

    .line 267
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 268
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mResolverOshareingAdapter:Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;

    .line 269
    invoke-virtual {v0}, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->isDefaultAction()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mResolverOshareingAdapter:Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;

    .line 270
    invoke-virtual {v0}, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->isUpOrCancelAction()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mIsUpdateDeviceList:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 265
    :goto_0
    return v0
.end method

.method private blacklist disappearOshareSharingView()V
    .locals 2

    .line 630
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOshareSharingView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 631
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mResolverOshareingAdapter:Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;

    .line 632
    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverOshare;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-eqz v1, :cond_0

    .line 633
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/RecyclerView;->setAdapter(Lcom/android/internal/widget/RecyclerView$Adapter;)V

    .line 635
    :cond_0
    return-void
.end method

.method private blacklist formatTextViewSize(Landroid/widget/TextView;I)V
    .locals 4
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "id"    # I

    .line 435
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/OplusBaseConfiguration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/OplusBaseConfiguration;->fontScale:F

    .line 436
    .local v0, "fontScale":F
    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverOshare;->mContext:Landroid/content/Context;

    .line 437
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 436
    const/4 v2, 0x4

    invoke-static {v1, v0, v2}, Lcom/oplus/util/OplusChangeTextUtil;->getSuitableFontSize(FFI)F

    move-result v1

    float-to-int v1, v1

    .line 438
    .local v1, "textSize":I
    int-to-float v2, v1

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 439
    return-void
.end method

.method private blacklist getBackgroundDrawable(II)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 512
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc050099

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 513
    .local v0, "radius":I
    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverOshare;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc060038

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 514
    .local v1, "backgroundColor":I
    iget-object v2, p0, Lcom/oplus/resolver/OplusResolverOshare;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0xc06003f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 515
    .local v8, "foregroundColor":I
    invoke-static {}, Lcom/oplus/util/OplusRoundRectUtil;->getInstance()Lcom/oplus/util/OplusRoundRectUtil;

    move-result-object v2

    move v3, p1

    move v4, p2

    move v5, v0

    move v6, v1

    move v7, v8

    invoke-virtual/range {v2 .. v7}, Lcom/oplus/util/OplusRoundRectUtil;->getRoundRectDrawable(IIIII)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    return-object v2
.end method

.method private blacklist initOsharePanelViewAnimator()V
    .locals 10

    .line 442
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOsharePanelView:Landroid/view/View;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const-string v3, "alpha"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOsharePanelViewDisappearAnimator:Landroid/animation/ObjectAnimator;

    .line 443
    const-wide/16 v4, 0x85

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 444
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOsharePanelViewDisappearAnimator:Landroid/animation/ObjectAnimator;

    sget-object v2, Lcom/oplus/resolver/OplusResolverOshare;->PANEL_VIEW_APPEAR_AND_DISAPPEAR_PATHINTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 445
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOsharePanelViewDisappearAnimator:Landroid/animation/ObjectAnimator;

    new-instance v6, Lcom/oplus/resolver/OplusResolverOshare$8;

    invoke-direct {v6, p0}, Lcom/oplus/resolver/OplusResolverOshare$8;-><init>(Lcom/oplus/resolver/OplusResolverOshare;)V

    invoke-virtual {v0, v6}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 468
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOshareClosedTitle:Landroid/widget/TextView;

    new-array v6, v1, [F

    fill-array-data v6, :array_1

    invoke-static {v0, v3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 469
    .local v0, "oshareClosedTitleDisappearAnimator":Landroid/animation/ObjectAnimator;
    iget-object v6, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOshareOpenedTextLayout:Landroid/widget/RelativeLayout;

    new-array v7, v1, [F

    fill-array-data v7, :array_2

    invoke-static {v6, v3, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 470
    .local v6, "oshareOpenedTextLayoutAppearAnimator":Landroid/animation/ObjectAnimator;
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v7, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOsharePanelViewTextChangeAnimator:Landroid/animation/AnimatorSet;

    .line 471
    new-array v8, v1, [Landroid/animation/Animator;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    const/4 v9, 0x1

    aput-object v6, v8, v9

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 472
    iget-object v7, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOsharePanelViewTextChangeAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v8, 0xc8

    invoke-virtual {v7, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 473
    iget-object v7, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOsharePanelViewTextChangeAnimator:Landroid/animation/AnimatorSet;

    sget-object v8, Lcom/oplus/resolver/OplusResolverOshare;->DEFAUT_PATHINTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 474
    iget-object v7, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOsharePanelViewTextChangeAnimator:Landroid/animation/AnimatorSet;

    new-instance v8, Lcom/oplus/resolver/OplusResolverOshare$9;

    invoke-direct {v8, p0}, Lcom/oplus/resolver/OplusResolverOshare$9;-><init>(Lcom/oplus/resolver/OplusResolverOshare;)V

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 492
    iget-object v7, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOsharePanelView:Landroid/view/View;

    new-array v1, v1, [F

    fill-array-data v1, :array_3

    invoke-static {v7, v3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOsharePanelViewAppearAnimator:Landroid/animation/ObjectAnimator;

    .line 493
    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 494
    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOsharePanelViewAppearAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 495
    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOsharePanelViewAppearAnimator:Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/oplus/resolver/OplusResolverOshare$10;

    invoke-direct {v2, p0}, Lcom/oplus/resolver/OplusResolverOshare$10;-><init>(Lcom/oplus/resolver/OplusResolverOshare;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 509
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private blacklist initOsharingView()V
    .locals 6

    .line 648
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOshareLayout:Lcom/oplus/resolver/OplusResolverOshareLayout;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/oplus/resolver/OplusResolverOshareLayout;->setShareOpenStatus(I)V

    .line 649
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOshareSharingView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 650
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOsharePanelView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 651
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOshareDividerLine:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 653
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mResolverOshareingAdapter:Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;

    const/16 v2, 0x65

    if-eqz v0, :cond_0

    .line 654
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 655
    return-void

    .line 658
    :cond_0
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOshareSharingView:Landroid/view/View;

    const v3, 0xc020062

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RecyclerView;

    iput-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 659
    new-instance v0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;

    iget-object v3, p0, Lcom/oplus/resolver/OplusResolverOshare;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v3}, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;-><init>(Lcom/oplus/resolver/OplusResolverOshare;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mResolverOshareingAdapter:Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;

    .line 660
    new-instance v0, Lcom/android/internal/widget/LinearLayoutManager;

    iget-object v3, p0, Lcom/oplus/resolver/OplusResolverOshare;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3, v1, v1}, Lcom/android/internal/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 661
    .local v0, "layoutManager":Lcom/android/internal/widget/LinearLayoutManager;
    iget-object v3, p0, Lcom/oplus/resolver/OplusResolverOshare;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v4, p0, Lcom/oplus/resolver/OplusResolverOshare;->mResolverOshareingAdapter:Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/RecyclerView;->setAdapter(Lcom/android/internal/widget/RecyclerView$Adapter;)V

    .line 662
    new-instance v3, Lcom/oplus/resolver/OplusResolverItemAnimator;

    invoke-direct {v3}, Lcom/oplus/resolver/OplusResolverItemAnimator;-><init>()V

    .line 663
    .local v3, "itemAnimator":Lcom/oplus/resolver/OplusResolverItemAnimator;
    const-wide/16 v4, 0xfa

    invoke-virtual {v3, v4, v5}, Lcom/oplus/resolver/OplusResolverItemAnimator;->setAddDuration(J)V

    .line 664
    const-wide/16 v4, 0xa7

    invoke-virtual {v3, v4, v5}, Lcom/oplus/resolver/OplusResolverItemAnimator;->setRemoveDuration(J)V

    .line 665
    const-wide/16 v4, 0x14d

    invoke-virtual {v3, v4, v5}, Lcom/oplus/resolver/OplusResolverItemAnimator;->setMoveDuration(J)V

    .line 666
    invoke-virtual {v3, v1}, Lcom/oplus/resolver/OplusResolverItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 667
    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverOshare;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/RecyclerView;->setItemAnimator(Lcom/android/internal/widget/RecyclerView$ItemAnimator;)V

    .line 668
    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverOshare;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/RecyclerView;->setLayoutManager(Lcom/android/internal/widget/RecyclerView$LayoutManager;)V

    .line 669
    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverOshare;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 670
    return-void
.end method

.method private blacklist isOshareDisabledByCustomize()Z
    .locals 4

    .line 1105
    invoke-static {}, Landroid/os/oplusdevicepolicy/OplusDevicepolicyManager;->getInstance()Landroid/os/oplusdevicepolicy/OplusDevicepolicyManager;

    move-result-object v0

    const-string v1, "customize_set_oshare_disabled"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/oplusdevicepolicy/OplusDevicepolicyManager;->getBoolean(Ljava/lang/String;IZ)Z

    move-result v0

    return v0
.end method

.method private blacklist isOshareExist()Z
    .locals 3

    .line 1095
    :try_start_0
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverOshare;->mContext:Landroid/content/Context;

    const v2, 0xc0400e7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x200

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1097
    const/4 v0, 0x1

    return v0

    .line 1098
    :catch_0
    move-exception v0

    .line 1099
    .local v0, "ignore":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initOShareView has not exist:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusResolverOshare"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist logIfNeeded(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 253
    const-string v0, "OplusResolverOshare"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    return-void
.end method

.method private blacklist startPanelAppearAnimator()V
    .locals 1

    .line 638
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOsharePanelViewAppearAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 639
    const-string v0, "start panel view animator"

    invoke-direct {p0, v0}, Lcom/oplus/resolver/OplusResolverOshare;->logIfNeeded(Ljava/lang/String;)V

    .line 640
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOsharePanelViewAppearAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 642
    :cond_0
    const-string v0, "panel view animator keep running"

    invoke-direct {p0, v0}, Lcom/oplus/resolver/OplusResolverOshare;->logIfNeeded(Ljava/lang/String;)V

    .line 644
    :goto_0
    return-void
.end method

.method private blacklist updateOShareUI(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/oshare/OplusOshareDevice;",
            ">;)V"
        }
    .end annotation

    .line 560
    .local p1, "deviceList":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/oshare/OplusOshareDevice;>;"
    iget-boolean v0, p0, Lcom/oplus/resolver/OplusResolverOshare;->isPause:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mHasInitView:Z

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 564
    :cond_0
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOShareServiceUtil:Lcom/oplus/oshare/OplusOshareServiceUtil;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/oplus/oshare/OplusOshareServiceUtil;->isSendOn()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 565
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x1

    if-ge v0, v3, :cond_1

    goto :goto_0

    .line 585
    :cond_1
    const-string v0, "show sharing view"

    invoke-direct {p0, v0}, Lcom/oplus/resolver/OplusResolverOshare;->logIfNeeded(Ljava/lang/String;)V

    .line 586
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOshareSharingView:Landroid/view/View;

    instance-of v2, v0, Landroid/view/ViewStub;

    if-eqz v2, :cond_2

    .line 587
    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOshareSharingView:Landroid/view/View;

    .line 589
    :cond_2
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOshareSharingView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 590
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOsharePanelView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 591
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOsharePanelViewDisappearAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_b

    .line 592
    const-string v0, "start panel disappear animator"

    invoke-direct {p0, v0}, Lcom/oplus/resolver/OplusResolverOshare;->logIfNeeded(Ljava/lang/String;)V

    .line 593
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOsharePanelViewTextChangeAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 594
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOsharePanelViewTextChangeAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 596
    :cond_3
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOsharePanelViewDisappearAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_1

    .line 599
    :cond_4
    const-string v0, "sharing view keep showing"

    invoke-direct {p0, v0}, Lcom/oplus/resolver/OplusResolverOshare;->logIfNeeded(Ljava/lang/String;)V

    .line 600
    invoke-direct {p0}, Lcom/oplus/resolver/OplusResolverOshare;->initOsharingView()V

    goto/16 :goto_1

    .line 566
    :cond_5
    :goto_0
    const-string v0, "show opened panel"

    invoke-direct {p0, v0}, Lcom/oplus/resolver/OplusResolverOshare;->logIfNeeded(Ljava/lang/String;)V

    .line 567
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOshareDividerLine:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 568
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOshareClosedTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_7

    .line 569
    invoke-direct {p0}, Lcom/oplus/resolver/OplusResolverOshare;->disappearOshareSharingView()V

    .line 570
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOsharePanelViewTextChangeAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_6

    .line 571
    const-string v0, "start text change animator"

    invoke-direct {p0, v0}, Lcom/oplus/resolver/OplusResolverOshare;->logIfNeeded(Ljava/lang/String;)V

    .line 572
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOsharePanelViewTextChangeAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    .line 574
    :cond_6
    const-string v0, "text change animator keep running"

    invoke-direct {p0, v0}, Lcom/oplus/resolver/OplusResolverOshare;->logIfNeeded(Ljava/lang/String;)V

    goto :goto_1

    .line 576
    :cond_7
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOshareSharingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    .line 577
    invoke-direct {p0}, Lcom/oplus/resolver/OplusResolverOshare;->disappearOshareSharingView()V

    .line 578
    invoke-direct {p0}, Lcom/oplus/resolver/OplusResolverOshare;->startPanelAppearAnimator()V

    .line 579
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mScanLoadingIcon:Lcom/oplus/resolver/OplusResolverScanLoadingIcon;

    invoke-virtual {v0}, Lcom/oplus/resolver/OplusResolverScanLoadingIcon;->startAnimator()V

    goto :goto_1

    .line 581
    :cond_8
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOsharePanelView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 582
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mScanLoadingIcon:Lcom/oplus/resolver/OplusResolverScanLoadingIcon;

    invoke-virtual {v0}, Lcom/oplus/resolver/OplusResolverScanLoadingIcon;->startAnimator()V

    goto :goto_1

    .line 604
    :cond_9
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOshareSharingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a

    .line 605
    invoke-direct {p0}, Lcom/oplus/resolver/OplusResolverOshare;->startPanelAppearAnimator()V

    .line 607
    :cond_a
    invoke-direct {p0}, Lcom/oplus/resolver/OplusResolverOshare;->disappearOshareSharingView()V

    .line 608
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOshareLayout:Lcom/oplus/resolver/OplusResolverOshareLayout;

    invoke-virtual {v0, v2}, Lcom/oplus/resolver/OplusResolverOshareLayout;->setShareOpenStatus(I)V

    .line 609
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOsharePanelView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 610
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOshareOpenedTextLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 611
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOshareDividerLine:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 612
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOshareClosedTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 613
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mScanLoadingIcon:Lcom/oplus/resolver/OplusResolverScanLoadingIcon;

    invoke-virtual {v0}, Lcom/oplus/resolver/OplusResolverScanLoadingIcon;->stopAnimator()V

    .line 614
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOsharePanelView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 615
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    new-instance v1, Lcom/oplus/resolver/OplusResolverOshare$11;

    invoke-direct {v1, p0}, Lcom/oplus/resolver/OplusResolverOshare$11;-><init>(Lcom/oplus/resolver/OplusResolverOshare;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 627
    .end local v0    # "observer":Landroid/view/ViewTreeObserver;
    :cond_b
    :goto_1
    return-void

    .line 561
    :cond_c
    :goto_2
    const-string v0, "the view is pause or has not init view"

    invoke-direct {p0, v0}, Lcom/oplus/resolver/OplusResolverOshare;->logIfNeeded(Ljava/lang/String;)V

    .line 562
    return-void
.end method


# virtual methods
.method blacklist dismissOShareView()V
    .locals 2

    .line 519
    const-string v0, "dismissOShareView"

    invoke-direct {p0, v0}, Lcom/oplus/resolver/OplusResolverOshare;->logIfNeeded(Ljava/lang/String;)V

    .line 520
    iget-boolean v0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mHasInitView:Z

    if-nez v0, :cond_0

    .line 521
    const-string v0, "OplusResolverOshare"

    const-string v1, "the view has not init"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    return-void

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOsharePanelView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 525
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOshareSharingView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 526
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOshareDividerLine:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 527
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOshareLayout:Lcom/oplus/resolver/OplusResolverOshareLayout;

    invoke-virtual {v0, v1}, Lcom/oplus/resolver/OplusResolverOshareLayout;->setVisibility(I)V

    .line 528
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/resolver/OplusResolverOshare;->isPause:Z

    .line 529
    return-void
.end method

.method blacklist initOShareService()V
    .locals 4

    .line 275
    invoke-direct {p0}, Lcom/oplus/resolver/OplusResolverOshare;->isOshareExist()Z

    move-result v0

    .line 276
    .local v0, "oshareExist":Z
    if-nez v0, :cond_0

    .line 277
    return-void

    .line 279
    :cond_0
    invoke-direct {p0}, Lcom/oplus/resolver/OplusResolverOshare;->isOshareDisabledByCustomize()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 280
    const-string v1, "OplusResolverOshare"

    const-string v2, "Oshare is disabled by customize."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    return-void

    .line 283
    :cond_1
    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOShareServiceUtil:Lcom/oplus/oshare/OplusOshareServiceUtil;

    if-nez v1, :cond_2

    .line 284
    new-instance v1, Lcom/oplus/oshare/OplusOshareServiceUtil;

    iget-object v2, p0, Lcom/oplus/resolver/OplusResolverOshare;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOShareInitListener:Lcom/oplus/oshare/IOplusOshareInitListener;

    invoke-direct {v1, v2, v3}, Lcom/oplus/oshare/OplusOshareServiceUtil;-><init>(Landroid/content/Context;Lcom/oplus/oshare/IOplusOshareInitListener;)V

    iput-object v1, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOShareServiceUtil:Lcom/oplus/oshare/OplusOshareServiceUtil;

    .line 285
    invoke-virtual {v1}, Lcom/oplus/oshare/OplusOshareServiceUtil;->initShareEngine()V

    .line 287
    :cond_2
    return-void
.end method

.method blacklist initOShareView(Landroid/view/View;)V
    .locals 5
    .param p1, "oShareView"    # Landroid/view/View;

    .line 290
    invoke-direct {p0}, Lcom/oplus/resolver/OplusResolverOshare;->isOshareExist()Z

    move-result v0

    .line 291
    .local v0, "oshareExist":Z
    if-nez v0, :cond_0

    .line 292
    return-void

    .line 294
    :cond_0
    invoke-direct {p0}, Lcom/oplus/resolver/OplusResolverOshare;->isOshareDisabledByCustomize()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 295
    const-string v1, "OplusResolverOshare"

    const-string v2, "Oshare is disabled by customize."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    return-void

    .line 298
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oplus/resolver/OplusResolverOshare;->mIsOshareApplicationEnable:Z

    .line 299
    iput-boolean v1, p0, Lcom/oplus/resolver/OplusResolverOshare;->isPause:Z

    .line 300
    const v2, 0xc02004b

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oplus/resolver/OplusResolverOshareLayout;

    iput-object v2, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOshareLayout:Lcom/oplus/resolver/OplusResolverOshareLayout;

    .line 301
    iget-boolean v3, p0, Lcom/oplus/resolver/OplusResolverOshare;->mIsSplitScreenMode:Z

    invoke-virtual {v2, v3}, Lcom/oplus/resolver/OplusResolverOshareLayout;->setIsSplitScreenMode(Z)V

    .line 302
    iget-object v2, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOshareLayout:Lcom/oplus/resolver/OplusResolverOshareLayout;

    invoke-virtual {v2, v1}, Lcom/oplus/resolver/OplusResolverOshareLayout;->setVisibility(I)V

    .line 303
    iget-boolean v1, p0, Lcom/oplus/resolver/OplusResolverOshare;->mHasInitView:Z

    if-eqz v1, :cond_3

    .line 304
    const-string v1, "the view has init"

    invoke-direct {p0, v1}, Lcom/oplus/resolver/OplusResolverOshare;->logIfNeeded(Ljava/lang/String;)V

    .line 305
    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOshareDividerLine:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 306
    invoke-virtual {p0}, Lcom/oplus/resolver/OplusResolverOshare;->onResume()V

    .line 307
    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverOshare;->mResolverOshareingAdapter:Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->-$$Nest$fgetmDeviceList(Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    :goto_0
    invoke-direct {p0, v1}, Lcom/oplus/resolver/OplusResolverOshare;->updateOShareUI(Ljava/util/List;)V

    .line 308
    return-void

    .line 310
    :cond_3
    const v1, 0xc020060

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOsharePanelView:Landroid/view/View;

    .line 311
    instance-of v2, v1, Landroid/view/ViewStub;

    if-eqz v2, :cond_4

    .line 312
    check-cast v1, Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOsharePanelView:Landroid/view/View;

    .line 313
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 314
    .local v1, "observer":Landroid/view/ViewTreeObserver;
    new-instance v2, Lcom/oplus/resolver/OplusResolverOshare$4;

    invoke-direct {v2, p0}, Lcom/oplus/resolver/OplusResolverOshare$4;-><init>(Lcom/oplus/resolver/OplusResolverOshare;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 327
    .end local v1    # "observer":Landroid/view/ViewTreeObserver;
    :cond_4
    const v1, 0xc02000e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOshareDividerLine:Landroid/view/View;

    .line 328
    const v1, 0xc020061

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOshareSharingView:Landroid/view/View;

    .line 330
    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOsharePanelView:Landroid/view/View;

    const v2, 0xc020072

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOshareClosedTitle:Landroid/widget/TextView;

    .line 331
    const v2, 0xc050011

    if-eqz v1, :cond_5

    .line 332
    invoke-direct {p0, v1, v2}, Lcom/oplus/resolver/OplusResolverOshare;->formatTextViewSize(Landroid/widget/TextView;I)V

    .line 335
    :cond_5
    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOsharePanelView:Landroid/view/View;

    const v3, 0xc020073

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 336
    .local v1, "openOshareTitle":Landroid/widget/TextView;
    if-eqz v1, :cond_6

    .line 337
    invoke-direct {p0, v1, v2}, Lcom/oplus/resolver/OplusResolverOshare;->formatTextViewSize(Landroid/widget/TextView;I)V

    .line 340
    :cond_6
    iget-object v2, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOsharePanelView:Landroid/view/View;

    const v3, 0xc020065

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 341
    .local v2, "openOshareSummary":Landroid/widget/TextView;
    if-eqz v2, :cond_7

    .line 342
    const v3, 0xc050012

    invoke-direct {p0, v2, v3}, Lcom/oplus/resolver/OplusResolverOshare;->formatTextViewSize(Landroid/widget/TextView;I)V

    .line 345
    :cond_7
    iget-object v3, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOsharePanelView:Landroid/view/View;

    const v4, 0xc02004c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOshareOpenedTextLayout:Landroid/widget/RelativeLayout;

    .line 347
    iget-object v3, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOsharePanelView:Landroid/view/View;

    const v4, 0xc02004a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/oplus/resolver/OplusResolverScanLoadingIcon;

    iput-object v3, p0, Lcom/oplus/resolver/OplusResolverOshare;->mScanLoadingIcon:Lcom/oplus/resolver/OplusResolverScanLoadingIcon;

    .line 349
    invoke-direct {p0}, Lcom/oplus/resolver/OplusResolverOshare;->initOsharePanelViewAnimator()V

    .line 350
    iget-object v3, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOsharePanelView:Landroid/view/View;

    new-instance v4, Lcom/oplus/resolver/OplusResolverOshare$5;

    invoke-direct {v4, p0}, Lcom/oplus/resolver/OplusResolverOshare$5;-><init>(Lcom/oplus/resolver/OplusResolverOshare;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 365
    iget-object v3, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOsharePanelView:Landroid/view/View;

    new-instance v4, Lcom/oplus/resolver/OplusResolverOshare$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/oplus/resolver/OplusResolverOshare$$ExternalSyntheticLambda0;-><init>(Lcom/oplus/resolver/OplusResolverOshare;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 387
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/oplus/resolver/OplusResolverOshare;->mHasInitView:Z

    .line 388
    return-void
.end method

.method synthetic blacklist lambda$initOShareView$0$com-oplus-resolver-OplusResolverOshare(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 366
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mContext:Landroid/content/Context;

    const v1, 0xc0400e7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 367
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverOshare;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/oplus/resolver/ApplicationEnableUtil;->applicationEnable(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 368
    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverOshare;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/oplus/resolver/OplusResolverOshare$6;

    invoke-direct {v2, p0}, Lcom/oplus/resolver/OplusResolverOshare$6;-><init>(Lcom/oplus/resolver/OplusResolverOshare;)V

    invoke-static {v1, v0, v2}, Lcom/oplus/resolver/ApplicationEnableUtil;->showApplicationEnableDialog(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Z

    goto :goto_0

    .line 382
    :cond_0
    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOShareServiceUtil:Lcom/oplus/oshare/OplusOshareServiceUtil;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/oplus/oshare/OplusOshareServiceUtil;->isSendOn()Z

    move-result v1

    if-nez v1, :cond_1

    .line 383
    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOShareServiceUtil:Lcom/oplus/oshare/OplusOshareServiceUtil;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/oplus/oshare/OplusOshareServiceUtil;->switchSend(Z)V

    .line 386
    :cond_1
    :goto_0
    return-void
.end method

.method blacklist onDestroy()V
    .locals 2

    .line 552
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOShareServiceUtil:Lcom/oplus/oshare/OplusOshareServiceUtil;

    if-eqz v0, :cond_0

    .line 553
    invoke-virtual {v0}, Lcom/oplus/oshare/OplusOshareServiceUtil;->stop()V

    .line 554
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOShareServiceUtil:Lcom/oplus/oshare/OplusOshareServiceUtil;

    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOShareCallback:Lcom/oplus/oshare/IOplusOshareCallback;

    invoke-virtual {v0, v1}, Lcom/oplus/oshare/OplusOshareServiceUtil;->unregisterCallback(Lcom/oplus/oshare/IOplusOshareCallback;)V

    .line 555
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOShareServiceUtil:Lcom/oplus/oshare/OplusOshareServiceUtil;

    .line 557
    :cond_0
    return-void
.end method

.method blacklist onPause()V
    .locals 1

    .line 542
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOShareServiceUtil:Lcom/oplus/oshare/OplusOshareServiceUtil;

    if-eqz v0, :cond_0

    .line 544
    :try_start_0
    invoke-virtual {v0}, Lcom/oplus/oshare/OplusOshareServiceUtil;->pause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 547
    goto :goto_0

    .line 545
    :catch_0
    move-exception v0

    .line 546
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 549
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method blacklist onResume()V
    .locals 1

    .line 532
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOShareServiceUtil:Lcom/oplus/oshare/OplusOshareServiceUtil;

    if-eqz v0, :cond_0

    .line 534
    :try_start_0
    invoke-virtual {v0}, Lcom/oplus/oshare/OplusOshareServiceUtil;->resume()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 537
    goto :goto_0

    .line 535
    :catch_0
    move-exception v0

    .line 536
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 539
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist setIsSplitScreenMode(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 258
    iput-boolean p1, p0, Lcom/oplus/resolver/OplusResolverOshare;->mIsSplitScreenMode:Z

    .line 259
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare;->mOshareLayout:Lcom/oplus/resolver/OplusResolverOshareLayout;

    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {v0, p1}, Lcom/oplus/resolver/OplusResolverOshareLayout;->setIsSplitScreenMode(Z)V

    .line 262
    :cond_0
    return-void
.end method
