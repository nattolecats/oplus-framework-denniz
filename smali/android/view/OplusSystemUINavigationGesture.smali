.class public Landroid/view/OplusSystemUINavigationGesture;
.super Ljava/lang/Object;
.source "OplusSystemUINavigationGesture.java"

# interfaces
.implements Landroid/view/IOplusSystemUINavigationGesture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/OplusSystemUINavigationGesture$SystemUINavigationGestureHandler;
    }
.end annotation


# static fields
.field private static final blacklist GESTURE_MOTION_SLOW_MOVE_TIME:I = 0x190

.field private static final blacklist KEY_NAVIGATIONBAR_MODE:Ljava/lang/String; = "hide_navigationbar_enable"

.field private static final blacklist KEY_NAV_TYPE_PROGRESS_GESTURE_TYPE:Ljava/lang/String; = "nav_type_progress_gesture_type"

.field private static final blacklist LEFT_SIDE:I = 0x0

.field private static final blacklist MAX_LONG_PRESS_TIMEOUT:I

.field private static final blacklist MODE_NAVIGATIONBAR_GESTURE_SIDE:I = 0x3

.field private static final blacklist MSG_GESTURE_CONFIG_CHECK:I = 0x3ea

.field private static final blacklist MSG_GESTURE_MOTION_DOWN:I = 0x3e9

.field private static final blacklist NON_SIDE:I = -0x1

.field private static final blacklist OEM_SYSTEMUI_PACKAGE_NAME:Ljava/lang/String; = "com.android.systemui"

.field private static final blacklist PIXEL_OFFSET:F = 0.5f

.field public static final blacklist PORTRAIT_NON_DETECT_SCALE:F = 0.0f

.field private static final blacklist RIGHT_SIDE:I = 0x1

.field private static final blacklist SIDE_GESTURE_EDGE_HORIZONTAL_SCALE:F

.field private static final blacklist SIDE_GESTURE_EDGE_MOVE_SCALE:F

.field private static final blacklist SYSTEM_FOLDING_MODE_KEY:Ljava/lang/String; = "oplus_system_folding_mode"

.field private static final blacklist TAG:Ljava/lang/String; = "OplusSystemUINavigationGesture"

.field private static final blacklist gestureSideWidth:[I


# instance fields
.field private blacklist DEBUG:Z

.field private blacklist mBackupEventList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCheckForGestureButton:Z

.field private blacklist mCheckForGestureSideBar:Z

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mGestureButtonActive:Z

.field private blacklist mGestureSideBarActive:Z

.field private final blacklist mHandler:Landroid/view/OplusSystemUINavigationGesture$SystemUINavigationGestureHandler;

.field private blacklist mHasInitData:Z

.field private blacklist mIsKeyguard:Z

.field private blacklist mLongPressTimeout:I

.field private blacklist mNavProcessObserver:Landroid/database/ContentObserver;

.field private blacklist mOplusSystemUINavigationGestureExt:Landroid/view/IOplusSystemUINavigationGestureExt;

.field private blacklist mQueueMotionConsumed:Z

.field private blacklist mRawX:F

.field private blacklist mRawY:F

.field blacklist mReachDistance:Z

.field private blacklist mRotation:I

.field private blacklist mScreenHeight:I

.field private blacklist mScreenWidth:I

.field private blacklist mSideBarQueueMotionConsumed:Z

.field private blacklist mSideBarSceneRegion:Landroid/graphics/Region;

.field private blacklist mSideGestureAreaWidth:I

.field private blacklist mSideGestureButtonEnabled:Z

.field private blacklist mSideGestureKeyAnimThreshold:I

.field private blacklist mSmartSideBarEnabled:Z

.field blacklist mSwipeSide:I

.field blacklist mSwipeTimeoSlow:Z

.field blacklist mSystemGestureExclusionRegion:Landroid/graphics/Region;

.field private blacklist mViewRootImpl:Landroid/view/ViewRootImpl;

.field private blacklist mWidthProcess:I

.field private final blacklist mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mupdateSideGestureAreaWidth(Landroid/view/OplusSystemUINavigationGesture;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/OplusSystemUINavigationGesture;->updateSideGestureAreaWidth()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    .line 54
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/view/OplusSystemUINavigationGesture;->gestureSideWidth:[I

    .line 68
    nop

    .line 69
    const-string v0, "gestures.back_timeout"

    const/16 v1, 0xfa

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/view/OplusSystemUINavigationGesture;->MAX_LONG_PRESS_TIMEOUT:I

    .line 70
    nop

    .line 71
    const-string v0, "persist.gesture_button.side.move.scale"

    const/16 v2, 0x2d

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    const v2, 0x3a83126f    # 0.001f

    mul-float/2addr v0, v2

    sput v0, Landroid/view/OplusSystemUINavigationGesture;->SIDE_GESTURE_EDGE_MOVE_SCALE:F

    .line 72
    nop

    .line 73
    const-string v0, "persist.gesture_button.side.hor.scale"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3c23d70a    # 0.01f

    mul-float/2addr v0, v1

    sput v0, Landroid/view/OplusSystemUINavigationGesture;->SIDE_GESTURE_EDGE_HORIZONTAL_SCALE:F

    .line 72
    return-void

    :array_0
    .array-data 4
        0xc
        0x13
        0x18
        0x20
        0x28
    .end array-data
.end method

.method public constructor blacklist <init>(Landroid/view/ViewRootImpl;Landroid/content/Context;)V
    .locals 4
    .param p1, "viewRoot"    # Landroid/view/ViewRootImpl;
    .param p2, "context"    # Landroid/content/Context;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/OplusSystemUINavigationGesture;->DEBUG:Z

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/OplusSystemUINavigationGesture;->mBackupEventList:Ljava/util/ArrayList;

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/OplusSystemUINavigationGesture;->mQueueMotionConsumed:Z

    .line 48
    iput-boolean v1, p0, Landroid/view/OplusSystemUINavigationGesture;->mCheckForGestureButton:Z

    .line 49
    iput-boolean v1, p0, Landroid/view/OplusSystemUINavigationGesture;->mGestureButtonActive:Z

    .line 51
    iput-boolean v1, p0, Landroid/view/OplusSystemUINavigationGesture;->mSideGestureButtonEnabled:Z

    .line 52
    iput-boolean v1, p0, Landroid/view/OplusSystemUINavigationGesture;->mIsKeyguard:Z

    .line 56
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v2

    iput-object v2, p0, Landroid/view/OplusSystemUINavigationGesture;->mSystemGestureExclusionRegion:Landroid/graphics/Region;

    .line 57
    iput-boolean v1, p0, Landroid/view/OplusSystemUINavigationGesture;->mSwipeTimeoSlow:Z

    .line 58
    iput-boolean v1, p0, Landroid/view/OplusSystemUINavigationGesture;->mReachDistance:Z

    .line 60
    const/4 v2, -0x1

    iput v2, p0, Landroid/view/OplusSystemUINavigationGesture;->mSwipeSide:I

    .line 88
    const/4 v3, 0x0

    iput v3, p0, Landroid/view/OplusSystemUINavigationGesture;->mRawX:F

    iput v3, p0, Landroid/view/OplusSystemUINavigationGesture;->mRawY:F

    .line 89
    iput v1, p0, Landroid/view/OplusSystemUINavigationGesture;->mRotation:I

    .line 90
    iput v2, p0, Landroid/view/OplusSystemUINavigationGesture;->mScreenHeight:I

    .line 91
    iput v2, p0, Landroid/view/OplusSystemUINavigationGesture;->mScreenWidth:I

    .line 94
    iput-boolean v1, p0, Landroid/view/OplusSystemUINavigationGesture;->mHasInitData:Z

    .line 96
    sget-object v2, Landroid/view/OplusSystemUINavigationGestureExtPlugin;->constructor:Lcom/oplus/reflect/RefConstructor;

    invoke-virtual {v2}, Lcom/oplus/reflect/RefConstructor;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/IOplusSystemUINavigationGestureExt;

    iput-object v2, p0, Landroid/view/OplusSystemUINavigationGesture;->mOplusSystemUINavigationGestureExt:Landroid/view/IOplusSystemUINavigationGestureExt;

    .line 98
    new-instance v2, Landroid/view/OplusSystemUINavigationGesture$SystemUINavigationGestureHandler;

    invoke-direct {v2, p0}, Landroid/view/OplusSystemUINavigationGesture$SystemUINavigationGestureHandler;-><init>(Landroid/view/OplusSystemUINavigationGesture;)V

    iput-object v2, p0, Landroid/view/OplusSystemUINavigationGesture;->mHandler:Landroid/view/OplusSystemUINavigationGesture$SystemUINavigationGestureHandler;

    .line 100
    nop

    .line 101
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 100
    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v2

    iput-object v2, p0, Landroid/view/OplusSystemUINavigationGesture;->mWindowManager:Landroid/view/IWindowManager;

    .line 262
    new-instance v2, Landroid/graphics/Region;

    invoke-direct {v2}, Landroid/graphics/Region;-><init>()V

    iput-object v2, p0, Landroid/view/OplusSystemUINavigationGesture;->mSideBarSceneRegion:Landroid/graphics/Region;

    .line 263
    iput-boolean v1, p0, Landroid/view/OplusSystemUINavigationGesture;->mSmartSideBarEnabled:Z

    .line 264
    iput-boolean v0, p0, Landroid/view/OplusSystemUINavigationGesture;->mSideBarQueueMotionConsumed:Z

    .line 265
    iput-boolean v1, p0, Landroid/view/OplusSystemUINavigationGesture;->mCheckForGestureSideBar:Z

    .line 266
    iput-boolean v1, p0, Landroid/view/OplusSystemUINavigationGesture;->mGestureSideBarActive:Z

    .line 104
    iput-object p1, p0, Landroid/view/OplusSystemUINavigationGesture;->mViewRootImpl:Landroid/view/ViewRootImpl;

    .line 105
    iput-object p2, p0, Landroid/view/OplusSystemUINavigationGesture;->mContext:Landroid/content/Context;

    .line 106
    return-void
.end method

.method private blacklist dp2px(I)I
    .locals 2
    .param p1, "dp"    # I

    .line 232
    iget-object v0, p0, Landroid/view/OplusSystemUINavigationGesture;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private blacklist initData()V
    .locals 3

    .line 109
    iget-boolean v0, p0, Landroid/view/OplusSystemUINavigationGesture;->mHasInitData:Z

    if-nez v0, :cond_1

    .line 110
    iget-boolean v0, p0, Landroid/view/OplusSystemUINavigationGesture;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 111
    const-string v0, "OplusSystemUINavigationGesture"

    const-string v1, "[GESTURE_BUTTON] init data"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/OplusSystemUINavigationGesture;->mHasInitData:Z

    .line 114
    iget-object v0, p0, Landroid/view/OplusSystemUINavigationGesture;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, "nav_type_progress_gesture_type"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/view/OplusSystemUINavigationGesture;->mWidthProcess:I

    .line 115
    invoke-virtual {p0}, Landroid/view/OplusSystemUINavigationGesture;->handleGestureConfigCheck()V

    .line 116
    invoke-virtual {p0}, Landroid/view/OplusSystemUINavigationGesture;->registerNavGestureListener()V

    .line 118
    :cond_1
    return-void
.end method

.method private blacklist processSideBarSceneEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 269
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 270
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_1e

    .line 271
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 272
    .local v0, "action":I
    const-string v3, "OplusSystemUINavigationGesture"

    if-eqz v0, :cond_1

    iget-boolean v4, p0, Landroid/view/OplusSystemUINavigationGesture;->mCheckForGestureSideBar:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Landroid/view/OplusSystemUINavigationGesture;->mGestureSideBarActive:Z

    if-eqz v4, :cond_5

    .line 274
    :cond_1
    if-nez v0, :cond_2

    .line 275
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iput v4, p0, Landroid/view/OplusSystemUINavigationGesture;->mRawX:F

    .line 276
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iput v4, p0, Landroid/view/OplusSystemUINavigationGesture;->mRawY:F

    .line 278
    iget-object v4, p0, Landroid/view/OplusSystemUINavigationGesture;->mOplusSystemUINavigationGestureExt:Landroid/view/IOplusSystemUINavigationGestureExt;

    invoke-interface {v4}, Landroid/view/IOplusSystemUINavigationGestureExt;->getSmartSideBarRegion()Landroid/graphics/Region;

    move-result-object v4

    iput-object v4, p0, Landroid/view/OplusSystemUINavigationGesture;->mSideBarSceneRegion:Landroid/graphics/Region;

    .line 280
    :cond_2
    iget-boolean v4, p0, Landroid/view/OplusSystemUINavigationGesture;->DEBUG:Z

    if-eqz v4, :cond_5

    .line 281
    iget-object v4, p0, Landroid/view/OplusSystemUINavigationGesture;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v4, :cond_4

    .line 282
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[GESTURE_SIDE_BAR] View: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 283
    invoke-static {}, Lcom/oplus/debug/InputLog;->isLevelDebug()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroid/view/OplusSystemUINavigationGesture;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    goto :goto_0

    :cond_3
    iget-object v5, p0, Landroid/view/OplusSystemUINavigationGesture;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 282
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 285
    :cond_4
    const-string v4, "[GESTURE_SIDE_BAR] View: null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[GESTURE_SIDE_BAR] Motion: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[GESTURE_SIDE_BAR] raw: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 289
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 288
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[GESTURE_SIDE_BAR] Rotation: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/view/OplusSystemUINavigationGesture;->mRotation:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[GESTURE_SIDE_BAR] mCheckForGestureSideBar: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Landroid/view/OplusSystemUINavigationGesture;->mCheckForGestureSideBar:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_5
    const-string v4, ", handled="

    const-string v5, "mView does not exist, so discard the remaining points. "

    const/16 v6, 0x3e9

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_a

    .line 332
    :pswitch_1
    iget-boolean v7, p0, Landroid/view/OplusSystemUINavigationGesture;->mCheckForGestureSideBar:Z

    if-eqz v7, :cond_15

    .line 333
    iget-object v7, p0, Landroid/view/OplusSystemUINavigationGesture;->mBackupEventList:Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v9

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x190

    cmp-long v7, v7, v9

    if-lez v7, :cond_6

    .line 336
    iput-boolean v2, p0, Landroid/view/OplusSystemUINavigationGesture;->mSwipeTimeoSlow:Z

    .line 338
    :cond_6
    iget v7, p0, Landroid/view/OplusSystemUINavigationGesture;->mSideGestureKeyAnimThreshold:I

    .line 339
    .local v7, "threshold":I
    iget v8, p0, Landroid/view/OplusSystemUINavigationGesture;->mSideGestureKeyAnimThreshold:I

    int-to-float v8, v8

    sget v9, Landroid/view/OplusSystemUINavigationGesture;->SIDE_GESTURE_EDGE_HORIZONTAL_SCALE:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    .line 340
    .local v8, "horizontalThreshold":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    iget v10, p0, Landroid/view/OplusSystemUINavigationGesture;->mRawX:F

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    int-to-float v10, v7

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_7

    .line 341
    iput-boolean v2, p0, Landroid/view/OplusSystemUINavigationGesture;->mReachDistance:Z

    goto :goto_2

    .line 342
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    iget v10, p0, Landroid/view/OplusSystemUINavigationGesture;->mRawY:F

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    int-to-float v10, v8

    cmpl-float v9, v9, v10

    if-lez v9, :cond_8

    .line 343
    iput-boolean v2, p0, Landroid/view/OplusSystemUINavigationGesture;->mSwipeTimeoSlow:Z

    .line 345
    :cond_8
    :goto_2
    iget-boolean v9, p0, Landroid/view/OplusSystemUINavigationGesture;->mReachDistance:Z

    if-nez v9, :cond_9

    iget-boolean v9, p0, Landroid/view/OplusSystemUINavigationGesture;->mSwipeTimeoSlow:Z

    if-eqz v9, :cond_a

    .line 346
    :cond_9
    iget-boolean v9, p0, Landroid/view/OplusSystemUINavigationGesture;->DEBUG:Z

    if-eqz v9, :cond_a

    .line 347
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[GESTURE_SIDE_BAR] reach="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Landroid/view/OplusSystemUINavigationGesture;->mReachDistance:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " slow="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Landroid/view/OplusSystemUINavigationGesture;->mSwipeTimeoSlow:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " side="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Landroid/view/OplusSystemUINavigationGesture;->mSwipeSide:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " threshold="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " horThreshold="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " time="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 350
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v12

    sub-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " xMove="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 351
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v10

    iget v11, p0, Landroid/view/OplusSystemUINavigationGesture;->mRawX:F

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " yMove="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 352
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v10

    iget v11, p0, Landroid/view/OplusSystemUINavigationGesture;->mRawY:F

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 347
    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :cond_a
    iget-boolean v9, p0, Landroid/view/OplusSystemUINavigationGesture;->mSwipeTimeoSlow:Z

    xor-int/lit8 v10, v9, 0x1

    iget-boolean v11, p0, Landroid/view/OplusSystemUINavigationGesture;->mReachDistance:Z

    and-int/2addr v10, v11

    iget-boolean v12, p0, Landroid/view/OplusSystemUINavigationGesture;->mCheckForGestureSideBar:Z

    and-int/2addr v10, v12

    .line 357
    .local v10, "trigger":Z
    if-eqz v10, :cond_c

    .line 358
    iput-boolean v2, p0, Landroid/view/OplusSystemUINavigationGesture;->mGestureSideBarActive:Z

    .line 359
    iget-object v4, p0, Landroid/view/OplusSystemUINavigationGesture;->mHandler:Landroid/view/OplusSystemUINavigationGesture$SystemUINavigationGestureHandler;

    invoke-virtual {v4, v6}, Landroid/view/OplusSystemUINavigationGesture$SystemUINavigationGestureHandler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 360
    iget-object v4, p0, Landroid/view/OplusSystemUINavigationGesture;->mHandler:Landroid/view/OplusSystemUINavigationGesture$SystemUINavigationGestureHandler;

    invoke-virtual {v4, v6}, Landroid/view/OplusSystemUINavigationGesture$SystemUINavigationGestureHandler;->removeMessages(I)V

    .line 362
    :cond_b
    const-string v4, "[GESTURE_SIDE_BAR] trigger!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iput-boolean v1, p0, Landroid/view/OplusSystemUINavigationGesture;->mCheckForGestureSideBar:Z

    .line 365
    iput-boolean v2, p0, Landroid/view/OplusSystemUINavigationGesture;->mSideBarQueueMotionConsumed:Z

    goto/16 :goto_6

    .line 367
    :cond_c
    if-nez v11, :cond_e

    if-eqz v9, :cond_d

    goto :goto_3

    .line 390
    :cond_d
    iget-object v4, p0, Landroid/view/OplusSystemUINavigationGesture;->mHandler:Landroid/view/OplusSystemUINavigationGesture$SystemUINavigationGestureHandler;

    invoke-virtual {v4, v6}, Landroid/view/OplusSystemUINavigationGesture$SystemUINavigationGestureHandler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 392
    iget-object v4, p0, Landroid/view/OplusSystemUINavigationGesture;->mHandler:Landroid/view/OplusSystemUINavigationGesture$SystemUINavigationGestureHandler;

    invoke-virtual {v4, v6}, Landroid/view/OplusSystemUINavigationGesture$SystemUINavigationGestureHandler;->removeMessages(I)V

    .line 393
    iget-object v4, p0, Landroid/view/OplusSystemUINavigationGesture;->mHandler:Landroid/view/OplusSystemUINavigationGesture$SystemUINavigationGestureHandler;

    iget-object v5, p0, Landroid/view/OplusSystemUINavigationGesture;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-static {v4, v6, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 394
    .local v4, "msg":Landroid/os/Message;
    iput-boolean v1, p0, Landroid/view/OplusSystemUINavigationGesture;->mSideBarQueueMotionConsumed:Z

    .line 395
    iget-object v1, p0, Landroid/view/OplusSystemUINavigationGesture;->mHandler:Landroid/view/OplusSystemUINavigationGesture$SystemUINavigationGestureHandler;

    iget v5, p0, Landroid/view/OplusSystemUINavigationGesture;->mLongPressTimeout:I

    int-to-long v5, v5

    invoke-virtual {v1, v4, v5, v6}, Landroid/view/OplusSystemUINavigationGesture$SystemUINavigationGestureHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_6

    .line 369
    .end local v4    # "msg":Landroid/os/Message;
    :cond_e
    :goto_3
    iget-object v9, p0, Landroid/view/OplusSystemUINavigationGesture;->mHandler:Landroid/view/OplusSystemUINavigationGesture$SystemUINavigationGestureHandler;

    invoke-virtual {v9, v6}, Landroid/view/OplusSystemUINavigationGesture$SystemUINavigationGestureHandler;->hasMessages(I)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 370
    iget-object v9, p0, Landroid/view/OplusSystemUINavigationGesture;->mHandler:Landroid/view/OplusSystemUINavigationGesture$SystemUINavigationGestureHandler;

    invoke-virtual {v9, v6}, Landroid/view/OplusSystemUINavigationGesture$SystemUINavigationGestureHandler;->removeMessages(I)V

    .line 372
    :cond_f
    iget-boolean v6, p0, Landroid/view/OplusSystemUINavigationGesture;->mSideBarQueueMotionConsumed:Z

    if-nez v6, :cond_12

    .line 375
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_4
    :try_start_0
    iget-object v9, p0, Landroid/view/OplusSystemUINavigationGesture;->mBackupEventList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v6, v9, :cond_11

    .line 376
    iget-object v9, p0, Landroid/view/OplusSystemUINavigationGesture;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v9, v9, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v11, p0, Landroid/view/OplusSystemUINavigationGesture;->mBackupEventList:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/MotionEvent;

    invoke-virtual {v9, v11}, Landroid/view/View;->dispatchPointerEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    .line 377
    .local v9, "ishandled":Z
    iget-boolean v11, p0, Landroid/view/OplusSystemUINavigationGesture;->DEBUG:Z

    if-eqz v11, :cond_10

    .line 378
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[GESTURE_SIDE_BAR] 2 dispatch mBackupEventList: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Landroid/view/OplusSystemUINavigationGesture;->mBackupEventList:Ljava/util/ArrayList;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    .end local v9    # "ishandled":Z
    :cond_10
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 384
    .end local v6    # "i":I
    :cond_11
    goto :goto_5

    .line 382
    :catch_0
    move-exception v4

    .line 383
    .local v4, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_12
    :goto_5
    iput-boolean v1, p0, Landroid/view/OplusSystemUINavigationGesture;->mCheckForGestureSideBar:Z

    .line 388
    iput-boolean v1, p0, Landroid/view/OplusSystemUINavigationGesture;->mGestureSideBarActive:Z

    .line 389
    iput-boolean v2, p0, Landroid/view/OplusSystemUINavigationGesture;->mSideBarQueueMotionConsumed:Z

    .line 398
    :cond_13
    :goto_6
    iget-boolean v1, p0, Landroid/view/OplusSystemUINavigationGesture;->DEBUG:Z

    if-eqz v1, :cond_14

    .line 399
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[GESTURE_SIDE_BAR] reachDistance="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, p0, Landroid/view/OplusSystemUINavigationGesture;->mReachDistance:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", swipeTimeoSlow="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, p0, Landroid/view/OplusSystemUINavigationGesture;->mSwipeTimeoSlow:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_14
    return v2

    .line 404
    .end local v7    # "threshold":I
    .end local v8    # "horizontalThreshold":I
    .end local v10    # "trigger":Z
    :cond_15
    iget-boolean v3, p0, Landroid/view/OplusSystemUINavigationGesture;->mGestureSideBarActive:Z

    if-eqz v3, :cond_1e

    .line 405
    return v2

    .line 411
    :pswitch_2
    iget-boolean v7, p0, Landroid/view/OplusSystemUINavigationGesture;->mGestureButtonActive:Z

    if-eqz v7, :cond_16

    .line 413
    iput-boolean v1, p0, Landroid/view/OplusSystemUINavigationGesture;->mCheckForGestureSideBar:Z

    .line 414
    iput-boolean v1, p0, Landroid/view/OplusSystemUINavigationGesture;->mGestureSideBarActive:Z

    .line 415
    iput-boolean v2, p0, Landroid/view/OplusSystemUINavigationGesture;->mSideBarQueueMotionConsumed:Z

    .line 416
    return v2

    .line 417
    :cond_16
    iget-boolean v7, p0, Landroid/view/OplusSystemUINavigationGesture;->mCheckForGestureSideBar:Z

    if-eqz v7, :cond_1e

    .line 419
    iget-object v7, p0, Landroid/view/OplusSystemUINavigationGesture;->mHandler:Landroid/view/OplusSystemUINavigationGesture$SystemUINavigationGestureHandler;

    invoke-virtual {v7, v6}, Landroid/view/OplusSystemUINavigationGesture$SystemUINavigationGestureHandler;->hasMessages(I)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 420
    iget-object v7, p0, Landroid/view/OplusSystemUINavigationGesture;->mHandler:Landroid/view/OplusSystemUINavigationGesture$SystemUINavigationGestureHandler;

    invoke-virtual {v7, v6}, Landroid/view/OplusSystemUINavigationGesture$SystemUINavigationGestureHandler;->removeMessages(I)V

    .line 424
    :cond_17
    iget-boolean v6, p0, Landroid/view/OplusSystemUINavigationGesture;->mSideBarQueueMotionConsumed:Z

    const/4 v7, 0x3

    if-nez v6, :cond_1a

    if-eq v0, v7, :cond_1a

    .line 427
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_7
    :try_start_1
    iget-object v8, p0, Landroid/view/OplusSystemUINavigationGesture;->mBackupEventList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_19

    .line 428
    iget-object v8, p0, Landroid/view/OplusSystemUINavigationGesture;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v8, v8, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v9, p0, Landroid/view/OplusSystemUINavigationGesture;->mBackupEventList:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/MotionEvent;

    invoke-virtual {v8, v9}, Landroid/view/View;->dispatchPointerEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    .line 429
    .local v8, "ishandled":Z
    iget-boolean v9, p0, Landroid/view/OplusSystemUINavigationGesture;->DEBUG:Z

    if-eqz v9, :cond_18

    .line 430
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[GESTURE_SIDE_BAR] 3 dispatch mBackupEventList: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/view/OplusSystemUINavigationGesture;->mBackupEventList:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 427
    .end local v8    # "ishandled":Z
    :cond_18
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 436
    .end local v6    # "i":I
    :cond_19
    goto :goto_8

    .line 434
    :catch_1
    move-exception v4

    .line 435
    .restart local v4    # "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_1a
    :goto_8
    iput-boolean v2, p0, Landroid/view/OplusSystemUINavigationGesture;->mSideBarQueueMotionConsumed:Z

    .line 439
    iput-boolean v1, p0, Landroid/view/OplusSystemUINavigationGesture;->mCheckForGestureSideBar:Z

    .line 440
    iput-boolean v1, p0, Landroid/view/OplusSystemUINavigationGesture;->mGestureSideBarActive:Z

    .line 441
    if-ne v0, v7, :cond_1e

    .line 442
    return v2

    .line 296
    :pswitch_3
    iput-boolean v1, p0, Landroid/view/OplusSystemUINavigationGesture;->mCheckForGestureSideBar:Z

    .line 297
    iput-boolean v1, p0, Landroid/view/OplusSystemUINavigationGesture;->mGestureSideBarActive:Z

    .line 298
    iput-boolean v2, p0, Landroid/view/OplusSystemUINavigationGesture;->mSideBarQueueMotionConsumed:Z

    .line 299
    iget-object v4, p0, Landroid/view/OplusSystemUINavigationGesture;->mBackupEventList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 301
    const/4 v4, -0x1

    iput v4, p0, Landroid/view/OplusSystemUINavigationGesture;->mSwipeSide:I

    .line 302
    iput-boolean v1, p0, Landroid/view/OplusSystemUINavigationGesture;->mReachDistance:Z

    .line 303
    iput-boolean v1, p0, Landroid/view/OplusSystemUINavigationGesture;->mSwipeTimeoSlow:Z

    .line 304
    const/4 v4, 0x0

    .line 305
    .local v4, "hit":Z
    iget-object v5, p0, Landroid/view/OplusSystemUINavigationGesture;->mSideBarSceneRegion:Landroid/graphics/Region;

    iget v7, p0, Landroid/view/OplusSystemUINavigationGesture;->mRawX:F

    float-to-int v7, v7

    iget v8, p0, Landroid/view/OplusSystemUINavigationGesture;->mRawY:F

    float-to-int v8, v8

    invoke-virtual {v5, v7, v8}, Landroid/graphics/Region;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 306
    const/4 v4, 0x1

    .line 307
    iget v5, p0, Landroid/view/OplusSystemUINavigationGesture;->mRawX:F

    iget v7, p0, Landroid/view/OplusSystemUINavigationGesture;->mSideGestureAreaWidth:I

    int-to-float v7, v7

    cmpg-float v5, v5, v7

    if-gez v5, :cond_1b

    move v5, v1

    goto :goto_9

    :cond_1b
    move v5, v2

    :goto_9
    iput v5, p0, Landroid/view/OplusSystemUINavigationGesture;->mSwipeSide:I

    .line 308
    if-eqz v4, :cond_1c

    .line 309
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[GESTURE_SIDE_BAR] swipe from "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Landroid/view/OplusSystemUINavigationGesture;->mSwipeSide:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-boolean v5, p0, Landroid/view/OplusSystemUINavigationGesture;->mIsKeyguard:Z

    if-eqz v5, :cond_1c

    .line 312
    const/4 v4, 0x0

    .line 317
    :cond_1c
    if-eqz v4, :cond_1e

    .line 318
    iput-boolean v2, p0, Landroid/view/OplusSystemUINavigationGesture;->mCheckForGestureSideBar:Z

    .line 319
    const-string v5, "[GESTURE_SIDE_BAR] Hit Side Bar Region !"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object v5, p0, Landroid/view/OplusSystemUINavigationGesture;->mBackupEventList:Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    iget-object v5, p0, Landroid/view/OplusSystemUINavigationGesture;->mHandler:Landroid/view/OplusSystemUINavigationGesture$SystemUINavigationGestureHandler;

    iget-object v7, p0, Landroid/view/OplusSystemUINavigationGesture;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v7, v7, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-static {v5, v6, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 323
    .local v5, "msg":Landroid/os/Message;
    iput-boolean v1, p0, Landroid/view/OplusSystemUINavigationGesture;->mSideBarQueueMotionConsumed:Z

    .line 324
    iget-object v1, p0, Landroid/view/OplusSystemUINavigationGesture;->mHandler:Landroid/view/OplusSystemUINavigationGesture$SystemUINavigationGestureHandler;

    iget v6, p0, Landroid/view/OplusSystemUINavigationGesture;->mLongPressTimeout:I

    int-to-long v6, v6

    invoke-virtual {v1, v5, v6, v7}, Landroid/view/OplusSystemUINavigationGesture$SystemUINavigationGestureHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 325
    iget-boolean v1, p0, Landroid/view/OplusSystemUINavigationGesture;->DEBUG:Z

    if-eqz v1, :cond_1d

    .line 326
    const-string v1, "[GESTURE_SIDE_BAR] sendMessages for MSG_GESTURE_MOTION_DOWN "

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_1d
    return v2

    .line 452
    .end local v0    # "action":I
    .end local v4    # "hit":Z
    .end local v5    # "msg":Landroid/os/Message;
    :cond_1e
    :goto_a
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static blacklist rectsToRegion(Ljava/util/List;)Landroid/graphics/Region;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)",
            "Landroid/graphics/Region;"
        }
    .end annotation

    .line 251
    .local p0, "rects":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v0

    .line 252
    .local v0, "result":Landroid/graphics/Region;
    if-eqz p0, :cond_1

    .line 253
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 254
    .local v2, "r":Landroid/graphics/Rect;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 255
    sget-object v3, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 257
    .end local v2    # "r":Landroid/graphics/Rect;
    :cond_0
    goto :goto_0

    .line 259
    :cond_1
    return-object v0
.end method

.method private blacklist updateSideGestureAreaWidth()V
    .locals 3

    .line 224
    iget-object v0, p0, Landroid/view/OplusSystemUINavigationGesture;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nav_type_progress_gesture_type"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/view/OplusSystemUINavigationGesture;->mWidthProcess:I

    .line 225
    sget-object v1, Landroid/view/OplusSystemUINavigationGesture;->gestureSideWidth:[I

    aget v0, v1, v0

    invoke-direct {p0, v0}, Landroid/view/OplusSystemUINavigationGesture;->dp2px(I)I

    move-result v0

    iput v0, p0, Landroid/view/OplusSystemUINavigationGesture;->mSideGestureAreaWidth:I

    .line 226
    iget-boolean v0, p0, Landroid/view/OplusSystemUINavigationGesture;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSideGestureAreaWidth = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/view/OplusSystemUINavigationGesture;->mSideGestureAreaWidth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  width_dp = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/view/OplusSystemUINavigationGesture;->mWidthProcess:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  widthProcess = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/OplusSystemUINavigationGesture;->mWidthProcess:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusSystemUINavigationGesture"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist checkKeyguardAndConfig(Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .line 153
    iget-object v0, p0, Landroid/view/OplusSystemUINavigationGesture;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mBasePackageName:Ljava/lang/String;

    const-string v1, "com.android.systemui"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 154
    if-eqz p1, :cond_2

    .line 155
    const-string v0, "StatusBar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "NotificationShade"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 158
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/OplusSystemUINavigationGesture;->mIsKeyguard:Z

    goto :goto_1

    .line 156
    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/OplusSystemUINavigationGesture;->mIsKeyguard:Z

    .line 161
    :cond_2
    :goto_1
    iget-boolean v0, p0, Landroid/view/OplusSystemUINavigationGesture;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[GESTURE_BUTTON] tag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusSystemUINavigationGesture"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_3
    iget-object v0, p0, Landroid/view/OplusSystemUINavigationGesture;->mHandler:Landroid/view/OplusSystemUINavigationGesture$SystemUINavigationGestureHandler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/view/OplusSystemUINavigationGesture$SystemUINavigationGestureHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 166
    return-void
.end method

.method public blacklist handleGestureConfigCheck()V
    .locals 8

    .line 188
    iget-boolean v0, p0, Landroid/view/OplusSystemUINavigationGesture;->mHasInitData:Z

    if-eqz v0, :cond_6

    .line 189
    iget-object v0, p0, Landroid/view/OplusSystemUINavigationGesture;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v0

    .line 190
    .local v0, "screenWidth":I
    iget-object v1, p0, Landroid/view/OplusSystemUINavigationGesture;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v1

    .line 191
    .local v1, "screenHeight":I
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Landroid/view/OplusSystemUINavigationGesture;->mScreenHeight:I

    .line 192
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Landroid/view/OplusSystemUINavigationGesture;->mScreenWidth:I

    .line 193
    iget-object v2, p0, Landroid/view/OplusSystemUINavigationGesture;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, -0x1

    const-string v4, "oplus_system_folding_mode"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    .line 194
    .local v2, "isFoldOpen":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 195
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, p0, Landroid/view/OplusSystemUINavigationGesture;->mScreenHeight:I

    .line 196
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Landroid/view/OplusSystemUINavigationGesture;->mScreenWidth:I

    .line 198
    :cond_1
    iget v5, p0, Landroid/view/OplusSystemUINavigationGesture;->mScreenWidth:I

    int-to-float v5, v5

    sget v6, Landroid/view/OplusSystemUINavigationGesture;->SIDE_GESTURE_EDGE_MOVE_SCALE:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Landroid/view/OplusSystemUINavigationGesture;->mSideGestureKeyAnimThreshold:I

    .line 199
    sget v5, Landroid/view/OplusSystemUINavigationGesture;->MAX_LONG_PRESS_TIMEOUT:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, p0, Landroid/view/OplusSystemUINavigationGesture;->mLongPressTimeout:I

    .line 201
    iget-object v5, p0, Landroid/view/OplusSystemUINavigationGesture;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 203
    .local v5, "resolver":Landroid/content/ContentResolver;
    const-string v6, "hide_navigationbar_enable"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_2

    move v3, v4

    :cond_2
    iput-boolean v3, p0, Landroid/view/OplusSystemUINavigationGesture;->mSideGestureButtonEnabled:Z

    .line 205
    if-eqz v3, :cond_3

    .line 206
    sget-object v3, Landroid/view/OplusSystemUINavigationGesture;->gestureSideWidth:[I

    iget v4, p0, Landroid/view/OplusSystemUINavigationGesture;->mWidthProcess:I

    aget v3, v3, v4

    invoke-direct {p0, v3}, Landroid/view/OplusSystemUINavigationGesture;->dp2px(I)I

    move-result v3

    iput v3, p0, Landroid/view/OplusSystemUINavigationGesture;->mSideGestureAreaWidth:I

    .line 208
    :cond_3
    iget-boolean v3, p0, Landroid/view/OplusSystemUINavigationGesture;->DEBUG:Z

    if-eqz v3, :cond_6

    .line 209
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[GESTURE_BUTTON] mScreenHeight = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/OplusSystemUINavigationGesture;->mScreenHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OplusSystemUINavigationGesture"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[GESTURE_BUTTON] mScreenWidth = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, p0, Landroid/view/OplusSystemUINavigationGesture;->mScreenWidth:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[GESTURE_BUTTON] mSideGestureButtonEnabled = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v6, p0, Landroid/view/OplusSystemUINavigationGesture;->mSideGestureButtonEnabled:Z

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[GESTURE_BUTTON] mSideGestureAreaWidth = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, p0, Landroid/view/OplusSystemUINavigationGesture;->mSideGestureAreaWidth:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v3, p0, Landroid/view/OplusSystemUINavigationGesture;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v3, :cond_5

    .line 214
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[GESTURE_BUTTON] Config View: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 215
    invoke-static {}, Lcom/oplus/debug/InputLog;->isLevelDebug()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Landroid/view/OplusSystemUINavigationGesture;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    goto :goto_1

    :cond_4
    iget-object v6, p0, Landroid/view/OplusSystemUINavigationGesture;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    :goto_1
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 214
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 217
    :cond_5
    const-string v3, "[GESTURE_BUTTON] Config View: null"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    .end local v0    # "screenWidth":I
    .end local v1    # "screenHeight":I
    .end local v2    # "isFoldOpen":Z
    .end local v5    # "resolver":Landroid/content/ContentResolver;
    :cond_6
    :goto_2
    return-void
.end method

.method public blacklist handleGestureMotionDown(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .line 171
    const-string v0, "OplusSystemUINavigationGesture"

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Landroid/view/OplusSystemUINavigationGesture;->mBackupEventList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 172
    iget-object v2, p0, Landroid/view/OplusSystemUINavigationGesture;->mBackupEventList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MotionEvent;

    invoke-virtual {p1, v2}, Landroid/view/View;->dispatchPointerEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 173
    .local v2, "ishandled":Z
    iget-boolean v3, p0, Landroid/view/OplusSystemUINavigationGesture;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 174
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[GESTURE_BUTTON] MSG_GESTURE_MOTION_DOWN 1 dispatch mBackupEventList: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/OplusSystemUINavigationGesture;->mBackupEventList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", handled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .end local v2    # "ishandled":Z
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 180
    .end local v1    # "i":I
    :cond_1
    goto :goto_1

    .line 178
    :catch_0
    move-exception v1

    .line 179
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mView does not exist, so discard the remaining points. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/OplusSystemUINavigationGesture;->mQueueMotionConsumed:Z

    .line 182
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/OplusSystemUINavigationGesture;->mCheckForGestureButton:Z

    .line 183
    iput-boolean v0, p0, Landroid/view/OplusSystemUINavigationGesture;->mGestureButtonActive:Z

    .line 184
    return-void
.end method

.method public blacklist processGestureEvent(Landroid/view/MotionEvent;)Z
    .locals 16
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 457
    move-object/from16 v1, p0

    invoke-direct/range {p0 .. p0}, Landroid/view/OplusSystemUINavigationGesture;->initData()V

    .line 458
    iget-boolean v0, v1, Landroid/view/OplusSystemUINavigationGesture;->mSmartSideBarEnabled:Z

    const-string v2, "OplusSystemUINavigationGesture"

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    invoke-direct/range {p0 .. p1}, Landroid/view/OplusSystemUINavigationGesture;->processSideBarSceneEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 459
    iget-boolean v0, v1, Landroid/view/OplusSystemUINavigationGesture;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 460
    const-string v0, "[GESTURE_SIDE_BAR] SideBarGesture handled"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :cond_0
    return v3

    .line 465
    :cond_1
    iget-boolean v0, v1, Landroid/view/OplusSystemUINavigationGesture;->mSideGestureButtonEnabled:Z

    const/4 v4, 0x0

    if-eqz v0, :cond_2c

    .line 466
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-eq v0, v3, :cond_2

    .line 467
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v5, 0x5

    if-ne v0, v5, :cond_2c

    .line 468
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    .line 469
    .local v5, "action":I
    const/4 v6, 0x0

    .line 470
    .local v6, "isLandscape":Z
    const/4 v7, 0x3

    if-eqz v5, :cond_3

    iget-boolean v0, v1, Landroid/view/OplusSystemUINavigationGesture;->mCheckForGestureButton:Z

    if-nez v0, :cond_3

    iget-boolean v0, v1, Landroid/view/OplusSystemUINavigationGesture;->mGestureButtonActive:Z

    if-eqz v0, :cond_a

    .line 472
    :cond_3
    if-nez v5, :cond_5

    .line 474
    :try_start_0
    iget-object v0, v1, Landroid/view/OplusSystemUINavigationGesture;->mWindowManager:Landroid/view/IWindowManager;

    if-eqz v0, :cond_4

    .line 475
    invoke-interface {v0}, Landroid/view/IWindowManager;->getDefaultDisplayRotation()I

    move-result v0

    iput v0, v1, Landroid/view/OplusSystemUINavigationGesture;->mRotation:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    :cond_4
    goto :goto_0

    .line 477
    :catch_0
    move-exception v0

    .line 478
    .local v0, "re":Landroid/os/RemoteException;
    const-string v8, "errors occurred in getDefaultDisplayRotation"

    invoke-static {v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_5
    :goto_0
    iget v0, v1, Landroid/view/OplusSystemUINavigationGesture;->mRotation:I

    if-eq v0, v3, :cond_7

    if-ne v0, v7, :cond_6

    goto :goto_1

    :cond_6
    move v0, v4

    goto :goto_2

    :cond_7
    :goto_1
    move v0, v3

    :goto_2
    move v6, v0

    .line 483
    iget-boolean v0, v1, Landroid/view/OplusSystemUINavigationGesture;->DEBUG:Z

    if-eqz v0, :cond_a

    .line 484
    iget-object v0, v1, Landroid/view/OplusSystemUINavigationGesture;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[GESTURE_BUTTON] View: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 486
    invoke-static {}, Lcom/oplus/debug/InputLog;->isLevelDebug()Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, v1, Landroid/view/OplusSystemUINavigationGesture;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v8, v8, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    goto :goto_3

    :cond_8
    iget-object v8, v1, Landroid/view/OplusSystemUINavigationGesture;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v8, v8, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    :goto_3
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 485
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 488
    :cond_9
    const-string v0, "[GESTURE_BUTTON] View: null"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[GESTURE_BUTTON] Motion: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[GESTURE_BUTTON] raw: ["

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ","

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 492
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "]"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 491
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[GESTURE_BUTTON] mRotation: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v8, v1, Landroid/view/OplusSystemUINavigationGesture;->mRotation:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[GESTURE_BUTTON] mScreenHeight = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v8, v1, Landroid/view/OplusSystemUINavigationGesture;->mScreenHeight:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[GESTURE_BUTTON] mScreenWidth = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v8, v1, Landroid/view/OplusSystemUINavigationGesture;->mScreenWidth:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[GESTURE_BUTTON] mCheckForGestureButton: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v8, v1, Landroid/view/OplusSystemUINavigationGesture;->mCheckForGestureButton:Z

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :cond_a
    const-string v0, ", handled="

    const-string v8, "mView does not exist, so discard the remaining points. "

    const/16 v9, 0x3e9

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_f

    .line 570
    :pswitch_1
    iget-boolean v7, v1, Landroid/view/OplusSystemUINavigationGesture;->mCheckForGestureButton:Z

    if-eqz v7, :cond_1a

    .line 571
    iget-object v7, v1, Landroid/view/OplusSystemUINavigationGesture;->mBackupEventList:Ljava/util/ArrayList;

    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 573
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v12

    sub-long/2addr v10, v12

    const-wide/16 v12, 0x190

    cmp-long v7, v10, v12

    if-lez v7, :cond_b

    .line 574
    iput-boolean v3, v1, Landroid/view/OplusSystemUINavigationGesture;->mSwipeTimeoSlow:Z

    .line 576
    :cond_b
    iget v7, v1, Landroid/view/OplusSystemUINavigationGesture;->mSideGestureKeyAnimThreshold:I

    .line 577
    .local v7, "threshold":I
    iget v10, v1, Landroid/view/OplusSystemUINavigationGesture;->mSideGestureKeyAnimThreshold:I

    int-to-float v10, v10

    sget v11, Landroid/view/OplusSystemUINavigationGesture;->SIDE_GESTURE_EDGE_HORIZONTAL_SCALE:F

    mul-float/2addr v10, v11

    float-to-int v10, v10

    .line 578
    .local v10, "horizontalThreshold":I
    iget-boolean v11, v1, Landroid/view/OplusSystemUINavigationGesture;->mSideGestureButtonEnabled:Z

    if-eqz v11, :cond_d

    .line 579
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v11

    iget v12, v1, Landroid/view/OplusSystemUINavigationGesture;->mRawX:F

    sub-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    int-to-float v12, v7

    cmpl-float v11, v11, v12

    if-ltz v11, :cond_c

    .line 580
    iput-boolean v3, v1, Landroid/view/OplusSystemUINavigationGesture;->mReachDistance:Z

    goto :goto_5

    .line 581
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v11

    iget v12, v1, Landroid/view/OplusSystemUINavigationGesture;->mRawY:F

    sub-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    int-to-float v12, v10

    cmpl-float v11, v11, v12

    if-lez v11, :cond_d

    .line 582
    iput-boolean v3, v1, Landroid/view/OplusSystemUINavigationGesture;->mSwipeTimeoSlow:Z

    .line 585
    :cond_d
    :goto_5
    iget-boolean v11, v1, Landroid/view/OplusSystemUINavigationGesture;->mReachDistance:Z

    if-nez v11, :cond_e

    iget-boolean v11, v1, Landroid/view/OplusSystemUINavigationGesture;->mSwipeTimeoSlow:Z

    if-eqz v11, :cond_f

    .line 586
    :cond_e
    iget-boolean v11, v1, Landroid/view/OplusSystemUINavigationGesture;->DEBUG:Z

    if-eqz v11, :cond_f

    .line 587
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[GESTURE_BUTTON] reach="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, v1, Landroid/view/OplusSystemUINavigationGesture;->mReachDistance:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " slow="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, v1, Landroid/view/OplusSystemUINavigationGesture;->mSwipeTimeoSlow:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " side="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v1, Landroid/view/OplusSystemUINavigationGesture;->mSwipeSide:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " threshold="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " horThreshold="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " time="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 590
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v14

    sub-long/2addr v12, v14

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " xMove="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 591
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v12

    iget v13, v1, Landroid/view/OplusSystemUINavigationGesture;->mRawX:F

    sub-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " yMove="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 592
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v12

    iget v13, v1, Landroid/view/OplusSystemUINavigationGesture;->mRawY:F

    sub-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 587
    invoke-static {v2, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :cond_f
    iget-boolean v11, v1, Landroid/view/OplusSystemUINavigationGesture;->mSwipeTimeoSlow:Z

    xor-int/lit8 v12, v11, 0x1

    iget-boolean v13, v1, Landroid/view/OplusSystemUINavigationGesture;->mReachDistance:Z

    and-int/2addr v12, v13

    iget-boolean v14, v1, Landroid/view/OplusSystemUINavigationGesture;->mCheckForGestureButton:Z

    and-int/2addr v12, v14

    .line 597
    .local v12, "trigger":Z
    if-eqz v12, :cond_11

    .line 598
    iput-boolean v3, v1, Landroid/view/OplusSystemUINavigationGesture;->mGestureButtonActive:Z

    .line 599
    iget-object v0, v1, Landroid/view/OplusSystemUINavigationGesture;->mHandler:Landroid/view/OplusSystemUINavigationGesture$SystemUINavigationGestureHandler;

    invoke-virtual {v0, v9}, Landroid/view/OplusSystemUINavigationGesture$SystemUINavigationGestureHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 600
    iget-object v0, v1, Landroid/view/OplusSystemUINavigationGesture;->mHandler:Landroid/view/OplusSystemUINavigationGesture$SystemUINavigationGestureHandler;

    invoke-virtual {v0, v9}, Landroid/view/OplusSystemUINavigationGesture$SystemUINavigationGestureHandler;->removeMessages(I)V

    .line 602
    :cond_10
    const-string v0, "[GESTURE_BUTTON] trigger!"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    iput-boolean v4, v1, Landroid/view/OplusSystemUINavigationGesture;->mCheckForGestureButton:Z

    .line 605
    iput-boolean v3, v1, Landroid/view/OplusSystemUINavigationGesture;->mQueueMotionConsumed:Z

    goto/16 :goto_9

    .line 607
    :cond_11
    if-nez v13, :cond_13

    if-eqz v11, :cond_12

    goto :goto_6

    .line 630
    :cond_12
    iget-object v0, v1, Landroid/view/OplusSystemUINavigationGesture;->mHandler:Landroid/view/OplusSystemUINavigationGesture$SystemUINavigationGestureHandler;

    invoke-virtual {v0, v9}, Landroid/view/OplusSystemUINavigationGesture$SystemUINavigationGestureHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 632
    iget-object v0, v1, Landroid/view/OplusSystemUINavigationGesture;->mHandler:Landroid/view/OplusSystemUINavigationGesture$SystemUINavigationGestureHandler;

    invoke-virtual {v0, v9}, Landroid/view/OplusSystemUINavigationGesture$SystemUINavigationGestureHandler;->removeMessages(I)V

    .line 633
    iget-object v0, v1, Landroid/view/OplusSystemUINavigationGesture;->mHandler:Landroid/view/OplusSystemUINavigationGesture$SystemUINavigationGestureHandler;

    iget-object v8, v1, Landroid/view/OplusSystemUINavigationGesture;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v8, v8, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-static {v0, v9, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 634
    .local v0, "msg":Landroid/os/Message;
    iput-boolean v4, v1, Landroid/view/OplusSystemUINavigationGesture;->mQueueMotionConsumed:Z

    .line 635
    iget-object v4, v1, Landroid/view/OplusSystemUINavigationGesture;->mHandler:Landroid/view/OplusSystemUINavigationGesture$SystemUINavigationGestureHandler;

    iget v8, v1, Landroid/view/OplusSystemUINavigationGesture;->mLongPressTimeout:I

    int-to-long v8, v8

    invoke-virtual {v4, v0, v8, v9}, Landroid/view/OplusSystemUINavigationGesture$SystemUINavigationGestureHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_9

    .line 609
    .end local v0    # "msg":Landroid/os/Message;
    :cond_13
    :goto_6
    iget-object v11, v1, Landroid/view/OplusSystemUINavigationGesture;->mHandler:Landroid/view/OplusSystemUINavigationGesture$SystemUINavigationGestureHandler;

    invoke-virtual {v11, v9}, Landroid/view/OplusSystemUINavigationGesture$SystemUINavigationGestureHandler;->hasMessages(I)Z

    move-result v11

    if-eqz v11, :cond_14

    .line 610
    iget-object v11, v1, Landroid/view/OplusSystemUINavigationGesture;->mHandler:Landroid/view/OplusSystemUINavigationGesture$SystemUINavigationGestureHandler;

    invoke-virtual {v11, v9}, Landroid/view/OplusSystemUINavigationGesture$SystemUINavigationGestureHandler;->removeMessages(I)V

    .line 612
    :cond_14
    iget-boolean v9, v1, Landroid/view/OplusSystemUINavigationGesture;->mQueueMotionConsumed:Z

    if-nez v9, :cond_17

    .line 615
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_7
    :try_start_1
    iget-object v11, v1, Landroid/view/OplusSystemUINavigationGesture;->mBackupEventList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v9, v11, :cond_16

    .line 616
    iget-object v11, v1, Landroid/view/OplusSystemUINavigationGesture;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v11, v11, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v13, v1, Landroid/view/OplusSystemUINavigationGesture;->mBackupEventList:Ljava/util/ArrayList;

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/MotionEvent;

    invoke-virtual {v11, v13}, Landroid/view/View;->dispatchPointerEvent(Landroid/view/MotionEvent;)Z

    move-result v11

    .line 617
    .local v11, "ishandled":Z
    iget-boolean v13, v1, Landroid/view/OplusSystemUINavigationGesture;->DEBUG:Z

    if-eqz v13, :cond_15

    .line 618
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[GESTURE_BUTTON] 2 dispatch mBackupEventList: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v1, Landroid/view/OplusSystemUINavigationGesture;->mBackupEventList:Ljava/util/ArrayList;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v2, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 615
    .end local v11    # "ishandled":Z
    :cond_15
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 624
    .end local v9    # "i":I
    :cond_16
    goto :goto_8

    .line 622
    :catch_1
    move-exception v0

    .line 623
    .local v0, "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_17
    :goto_8
    iput-boolean v4, v1, Landroid/view/OplusSystemUINavigationGesture;->mCheckForGestureButton:Z

    .line 628
    iput-boolean v4, v1, Landroid/view/OplusSystemUINavigationGesture;->mGestureButtonActive:Z

    .line 629
    iput-boolean v3, v1, Landroid/view/OplusSystemUINavigationGesture;->mQueueMotionConsumed:Z

    .line 638
    :cond_18
    :goto_9
    iget-boolean v0, v1, Landroid/view/OplusSystemUINavigationGesture;->DEBUG:Z

    if-eqz v0, :cond_19

    .line 639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[GESTURE_BUTTON] reachDistance="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v4, v1, Landroid/view/OplusSystemUINavigationGesture;->mReachDistance:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", swipeTimeoSlow="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v4, v1, Landroid/view/OplusSystemUINavigationGesture;->mSwipeTimeoSlow:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    :cond_19
    return v3

    .line 644
    .end local v7    # "threshold":I
    .end local v10    # "horizontalThreshold":I
    .end local v12    # "trigger":Z
    :cond_1a
    iget-boolean v0, v1, Landroid/view/OplusSystemUINavigationGesture;->mGestureButtonActive:Z

    if-eqz v0, :cond_2c

    .line 645
    return v3

    .line 651
    :pswitch_2
    iget-boolean v10, v1, Landroid/view/OplusSystemUINavigationGesture;->mGestureButtonActive:Z

    if-eqz v10, :cond_1b

    .line 653
    iput-boolean v4, v1, Landroid/view/OplusSystemUINavigationGesture;->mCheckForGestureButton:Z

    .line 654
    iput-boolean v4, v1, Landroid/view/OplusSystemUINavigationGesture;->mGestureButtonActive:Z

    .line 655
    iput-boolean v3, v1, Landroid/view/OplusSystemUINavigationGesture;->mQueueMotionConsumed:Z

    .line 656
    return v3

    .line 657
    :cond_1b
    iget-boolean v10, v1, Landroid/view/OplusSystemUINavigationGesture;->mCheckForGestureButton:Z

    if-eqz v10, :cond_2c

    .line 659
    iget-object v10, v1, Landroid/view/OplusSystemUINavigationGesture;->mHandler:Landroid/view/OplusSystemUINavigationGesture$SystemUINavigationGestureHandler;

    invoke-virtual {v10, v9}, Landroid/view/OplusSystemUINavigationGesture$SystemUINavigationGestureHandler;->hasMessages(I)Z

    move-result v10

    if-eqz v10, :cond_1c

    .line 660
    iget-object v10, v1, Landroid/view/OplusSystemUINavigationGesture;->mHandler:Landroid/view/OplusSystemUINavigationGesture$SystemUINavigationGestureHandler;

    invoke-virtual {v10, v9}, Landroid/view/OplusSystemUINavigationGesture$SystemUINavigationGestureHandler;->removeMessages(I)V

    .line 664
    :cond_1c
    iget-boolean v9, v1, Landroid/view/OplusSystemUINavigationGesture;->mQueueMotionConsumed:Z

    if-nez v9, :cond_1f

    if-eq v5, v7, :cond_1f

    .line 667
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_a
    :try_start_2
    iget-object v10, v1, Landroid/view/OplusSystemUINavigationGesture;->mBackupEventList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_1e

    .line 668
    iget-object v10, v1, Landroid/view/OplusSystemUINavigationGesture;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v10, v10, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v11, v1, Landroid/view/OplusSystemUINavigationGesture;->mBackupEventList:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/MotionEvent;

    invoke-virtual {v10, v11}, Landroid/view/View;->dispatchPointerEvent(Landroid/view/MotionEvent;)Z

    move-result v10

    .line 669
    .local v10, "ishandled":Z
    iget-boolean v11, v1, Landroid/view/OplusSystemUINavigationGesture;->DEBUG:Z

    if-eqz v11, :cond_1d

    .line 670
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[GESTURE_BUTTON] 3 dispatch mBackupEventList: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v1, Landroid/view/OplusSystemUINavigationGesture;->mBackupEventList:Ljava/util/ArrayList;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 667
    .end local v10    # "ishandled":Z
    :cond_1d
    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    .line 676
    .end local v9    # "i":I
    :cond_1e
    goto :goto_b

    .line 674
    :catch_2
    move-exception v0

    .line 675
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1f
    :goto_b
    iput-boolean v3, v1, Landroid/view/OplusSystemUINavigationGesture;->mQueueMotionConsumed:Z

    .line 679
    iput-boolean v4, v1, Landroid/view/OplusSystemUINavigationGesture;->mCheckForGestureButton:Z

    .line 680
    iput-boolean v4, v1, Landroid/view/OplusSystemUINavigationGesture;->mGestureButtonActive:Z

    .line 681
    if-ne v5, v7, :cond_2c

    .line 682
    return v3

    .line 501
    :pswitch_3
    iput-boolean v4, v1, Landroid/view/OplusSystemUINavigationGesture;->mCheckForGestureButton:Z

    .line 502
    iput-boolean v4, v1, Landroid/view/OplusSystemUINavigationGesture;->mGestureButtonActive:Z

    .line 503
    iput-boolean v3, v1, Landroid/view/OplusSystemUINavigationGesture;->mQueueMotionConsumed:Z

    .line 504
    iget-object v0, v1, Landroid/view/OplusSystemUINavigationGesture;->mBackupEventList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 506
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, v1, Landroid/view/OplusSystemUINavigationGesture;->mRawX:F

    .line 507
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, v1, Landroid/view/OplusSystemUINavigationGesture;->mRawY:F

    .line 509
    const/4 v7, -0x1

    iput v7, v1, Landroid/view/OplusSystemUINavigationGesture;->mSwipeSide:I

    .line 510
    iput-boolean v4, v1, Landroid/view/OplusSystemUINavigationGesture;->mReachDistance:Z

    .line 511
    iput-boolean v4, v1, Landroid/view/OplusSystemUINavigationGesture;->mSwipeTimeoSlow:Z

    .line 512
    const/4 v7, 0x0

    .line 514
    .local v7, "hit":Z
    iget-boolean v8, v1, Landroid/view/OplusSystemUINavigationGesture;->mSideGestureButtonEnabled:Z

    if-eqz v8, :cond_2a

    .line 515
    const/4 v8, 0x0

    if-nez v6, :cond_22

    .line 516
    iget v10, v1, Landroid/view/OplusSystemUINavigationGesture;->mScreenHeight:I

    int-to-float v10, v10

    mul-float/2addr v10, v8

    cmpl-float v0, v0, v10

    if-ltz v0, :cond_25

    iget v0, v1, Landroid/view/OplusSystemUINavigationGesture;->mRawX:F

    iget v8, v1, Landroid/view/OplusSystemUINavigationGesture;->mSideGestureAreaWidth:I

    int-to-float v10, v8

    cmpg-float v10, v0, v10

    if-ltz v10, :cond_20

    iget v10, v1, Landroid/view/OplusSystemUINavigationGesture;->mScreenWidth:I

    sub-int/2addr v10, v8

    int-to-float v10, v10

    cmpl-float v10, v0, v10

    if-ltz v10, :cond_25

    .line 518
    :cond_20
    const/4 v7, 0x1

    .line 519
    int-to-float v8, v8

    cmpg-float v0, v0, v8

    if-gez v0, :cond_21

    move v0, v4

    goto :goto_c

    :cond_21
    move v0, v3

    :goto_c
    iput v0, v1, Landroid/view/OplusSystemUINavigationGesture;->mSwipeSide:I

    goto :goto_e

    .line 522
    :cond_22
    iget v10, v1, Landroid/view/OplusSystemUINavigationGesture;->mScreenWidth:I

    int-to-float v10, v10

    mul-float/2addr v10, v8

    cmpl-float v0, v0, v10

    if-ltz v0, :cond_25

    iget v0, v1, Landroid/view/OplusSystemUINavigationGesture;->mRawX:F

    iget v8, v1, Landroid/view/OplusSystemUINavigationGesture;->mSideGestureAreaWidth:I

    int-to-float v10, v8

    cmpg-float v10, v0, v10

    if-ltz v10, :cond_23

    iget v10, v1, Landroid/view/OplusSystemUINavigationGesture;->mScreenHeight:I

    sub-int/2addr v10, v8

    int-to-float v10, v10

    cmpl-float v10, v0, v10

    if-ltz v10, :cond_25

    .line 524
    :cond_23
    const/4 v7, 0x1

    .line 525
    int-to-float v8, v8

    cmpg-float v0, v0, v8

    if-gez v0, :cond_24

    move v0, v4

    goto :goto_d

    :cond_24
    move v0, v3

    :goto_d
    iput v0, v1, Landroid/view/OplusSystemUINavigationGesture;->mSwipeSide:I

    .line 528
    :cond_25
    :goto_e
    if-eqz v7, :cond_2a

    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[GESTURE_BUTTON] swipe from "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v8, v1, Landroid/view/OplusSystemUINavigationGesture;->mSwipeSide:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    iget-object v0, v1, Landroid/view/OplusSystemUINavigationGesture;->mSystemGestureExclusionRegion:Landroid/graphics/Region;

    invoke-static {v0}, Landroid/graphics/Region;->obtain(Landroid/graphics/Region;)Landroid/graphics/Region;

    move-result-object v0

    .line 531
    .local v0, "systemGestureExclusionRegion":Landroid/graphics/Region;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {v0, v8, v10}, Landroid/graphics/Region;->contains(II)Z

    move-result v8

    const-string v10, "[GESTURE_BUTTON] skip swipe from "

    if-eqz v8, :cond_27

    .line 533
    iget-boolean v8, v1, Landroid/view/OplusSystemUINavigationGesture;->DEBUG:Z

    if-eqz v8, :cond_26

    .line 534
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v11, v1, Landroid/view/OplusSystemUINavigationGesture;->mSwipeSide:I

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, " systemGestureExclusionRegion="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :cond_26
    const/4 v7, 0x0

    .line 539
    :cond_27
    iget-boolean v8, v1, Landroid/view/OplusSystemUINavigationGesture;->mIsKeyguard:Z

    if-eqz v8, :cond_28

    .line 541
    const/4 v7, 0x0

    .line 544
    :cond_28
    iget-object v8, v1, Landroid/view/OplusSystemUINavigationGesture;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v8}, Landroid/view/ViewRootImpl;->getDisplayId()I

    move-result v8

    .line 545
    .local v8, "displayId":I
    if-eqz v8, :cond_2a

    .line 546
    iget-boolean v11, v1, Landroid/view/OplusSystemUINavigationGesture;->DEBUG:Z

    if-eqz v11, :cond_29

    .line 547
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v1, Landroid/view/OplusSystemUINavigationGesture;->mSwipeSide:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " displayId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    :cond_29
    const/4 v7, 0x0

    .line 555
    .end local v0    # "systemGestureExclusionRegion":Landroid/graphics/Region;
    .end local v8    # "displayId":I
    :cond_2a
    if-eqz v7, :cond_2c

    .line 556
    iput-boolean v3, v1, Landroid/view/OplusSystemUINavigationGesture;->mCheckForGestureButton:Z

    .line 557
    const-string v0, "[GESTURE_BUTTON] Hit Gesture Region !"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    iget-object v0, v1, Landroid/view/OplusSystemUINavigationGesture;->mBackupEventList:Ljava/util/ArrayList;

    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 559
    iget-object v0, v1, Landroid/view/OplusSystemUINavigationGesture;->mHandler:Landroid/view/OplusSystemUINavigationGesture$SystemUINavigationGestureHandler;

    iget-object v8, v1, Landroid/view/OplusSystemUINavigationGesture;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v8, v8, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-static {v0, v9, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 561
    .local v0, "msg":Landroid/os/Message;
    iput-boolean v4, v1, Landroid/view/OplusSystemUINavigationGesture;->mQueueMotionConsumed:Z

    .line 562
    iget-object v4, v1, Landroid/view/OplusSystemUINavigationGesture;->mHandler:Landroid/view/OplusSystemUINavigationGesture$SystemUINavigationGestureHandler;

    iget v8, v1, Landroid/view/OplusSystemUINavigationGesture;->mLongPressTimeout:I

    int-to-long v8, v8

    invoke-virtual {v4, v0, v8, v9}, Landroid/view/OplusSystemUINavigationGesture$SystemUINavigationGestureHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 563
    iget-boolean v4, v1, Landroid/view/OplusSystemUINavigationGesture;->DEBUG:Z

    if-eqz v4, :cond_2b

    .line 564
    const-string v4, "[GESTURE_BUTTON] sendMessages for MSG_GESTURE_MOTION_DOWN "

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    :cond_2b
    return v3

    .line 693
    .end local v0    # "msg":Landroid/os/Message;
    .end local v5    # "action":I
    .end local v6    # "isLandscape":Z
    .end local v7    # "hit":Z
    :cond_2c
    :goto_f
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public blacklist registerNavGestureListener()V
    .locals 4

    .line 121
    invoke-static {}, Lcom/oplus/content/OplusFeatureConfigManager;->getInstacne()Lcom/oplus/content/OplusFeatureConfigManager;

    move-result-object v0

    const-string v1, "oplus.software.smart_sidebar"

    invoke-virtual {v0, v1}, Lcom/oplus/content/OplusFeatureConfigManager;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/OplusSystemUINavigationGesture;->mSmartSideBarEnabled:Z

    .line 122
    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Landroid/view/OplusSystemUINavigationGesture;->mOplusSystemUINavigationGestureExt:Landroid/view/IOplusSystemUINavigationGestureExt;

    iget-object v1, p0, Landroid/view/OplusSystemUINavigationGesture;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Landroid/view/IOplusSystemUINavigationGestureExt;->registerSmartSideBarRegion(Landroid/content/Context;)V

    .line 127
    :cond_0
    iget-boolean v0, p0, Landroid/view/OplusSystemUINavigationGesture;->mSideGestureButtonEnabled:Z

    if-eqz v0, :cond_1

    .line 128
    new-instance v0, Landroid/view/OplusSystemUINavigationGesture$1;

    iget-object v1, p0, Landroid/view/OplusSystemUINavigationGesture;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/view/OplusSystemUINavigationGesture$1;-><init>(Landroid/view/OplusSystemUINavigationGesture;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/view/OplusSystemUINavigationGesture;->mNavProcessObserver:Landroid/database/ContentObserver;

    .line 134
    iget-object v0, p0, Landroid/view/OplusSystemUINavigationGesture;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 135
    const-string v1, "nav_type_progress_gesture_type"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/view/OplusSystemUINavigationGesture;->mNavProcessObserver:Landroid/database/ContentObserver;

    .line 134
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 138
    :cond_1
    return-void
.end method

.method public blacklist setSystemGestureExclusionRegion(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 237
    .local p1, "rects":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    invoke-static {p1}, Landroid/view/OplusSystemUINavigationGesture;->rectsToRegion(Ljava/util/List;)Landroid/graphics/Region;

    move-result-object v0

    iput-object v0, p0, Landroid/view/OplusSystemUINavigationGesture;->mSystemGestureExclusionRegion:Landroid/graphics/Region;

    .line 238
    iget-boolean v0, p0, Landroid/view/OplusSystemUINavigationGesture;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "systemGestureExclusionChanged region="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/OplusSystemUINavigationGesture;->mSystemGestureExclusionRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " list:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusSystemUINavigationGesture"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 242
    .local v2, "rect":Landroid/graphics/Rect;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "systemGestureExclusionChanged rect="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    .end local v2    # "rect":Landroid/graphics/Rect;
    goto :goto_0

    .line 245
    :cond_0
    return-void
.end method

.method public blacklist unRegisterNavGestureListener()V
    .locals 2

    .line 142
    iget-object v0, p0, Landroid/view/OplusSystemUINavigationGesture;->mNavProcessObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Landroid/view/OplusSystemUINavigationGesture;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/view/OplusSystemUINavigationGesture;->mNavProcessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 145
    :cond_0
    iget-boolean v0, p0, Landroid/view/OplusSystemUINavigationGesture;->mSmartSideBarEnabled:Z

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Landroid/view/OplusSystemUINavigationGesture;->mOplusSystemUINavigationGestureExt:Landroid/view/IOplusSystemUINavigationGestureExt;

    invoke-interface {v0}, Landroid/view/IOplusSystemUINavigationGestureExt;->unregisterSmartSideBarRegion()V

    .line 148
    :cond_1
    return-void
.end method
