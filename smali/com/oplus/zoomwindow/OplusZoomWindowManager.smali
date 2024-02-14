.class public Lcom/oplus/zoomwindow/OplusZoomWindowManager;
.super Ljava/lang/Object;
.source "OplusZoomWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/zoomwindow/OplusZoomWindowManager$OnConfigChangeListenerDelegate;,
        Lcom/oplus/zoomwindow/OplusZoomWindowManager$OnConfigChangedListener;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_DEFAULT_HANDLE:I = 0x1

.field public static final whitelist ACTION_DELETE_HANDLE:I = 0x10

.field public static final whitelist ACTION_INVISIBLE_HANDLE:I = 0x4

.field public static final whitelist ACTION_MASK_FOR_FLOAT_HANDLE:I = 0x1c

.field public static final whitelist ACTION_MASK_ON_SHOWING_OF_MINI_ZOOM_MODE:I = -0x2001

.field public static final whitelist ACTION_MASK_ON_SHOWING_OF_ZOOM_MODE:I = -0x2

.field public static final whitelist ACTION_NEW_HANDLE:I = 0x8

.field public static final whitelist ACTION_RELAUNCH_HANDLE:I = 0x20

.field public static final whitelist ACTION_VISIBLE_HANDLE:I = 0x2

.field public static final blacklist DEFAULT_TOP_OFFSET_OF_ZOOM_PORTRAIT:I = 0x10d

.field public static final blacklist DISMISS_SPLIT_SCREEN_FROM_ZOOM_MODE:I = 0x9

.field public static final whitelist EXTRA_WINDOW_MODE:Ljava/lang/String; = "extra_window_mode"

.field public static final whitelist FLAG_BUBBLE_ZOOM_WINDOW:I = 0x2

.field public static final whitelist FLAG_CLICKED_FULL_SCREEN_BUTTON:I = 0x5

.field public static final whitelist FLAG_CLICK_OUTSIDE_ZOOM:I = 0x3

.field public static final whitelist FLAG_DELETE_MINI_ZOOM_WINDOW:I = 0x8

.field public static final whitelist FLAG_DELETE_ON_ACTION_SIMPLE_MODE_BUTTON:I = 0x10

.field public static final whitelist FLAG_DELETE_ON_ACTION_USER_SWITCHED:I = 0xf

.field public static final whitelist FLAG_DELETE_ON_BLOCKING_PACKAGE:I = 0x11

.field public static final whitelist FLAG_DELETE_ON_CLICKED_CLOSED_ZOOM:I = 0xe

.field public static final whitelist FLAG_DELETE_ON_ENTER_DRAG_WINDOW:I = 0xa

.field public static final whitelist FLAG_DELETE_ON_ENTER_SPEC_MODE:I = 0xd

.field public static final whitelist FLAG_DELETE_ZOOM_BY_RECENTS:I = 0xc

.field public static final whitelist FLAG_DELETE_ZOOM_BY_SCREEN_OFF:I = 0xb

.field public static final whitelist FLAG_DELETE_ZOOM_WINDOW:I = 0x1

.field public static final whitelist FLAG_DELETE_ZOOM_WINDOW_BY_GLOBAL_DRAG:I = 0x9

.field public static final whitelist FLAG_EXIT_ZOOM_BY_OTHERS:I = 0x6

.field public static final whitelist FLAG_HIDE_ZOOM_WINDOW:I = 0x2

.field public static final whitelist FLAG_MOVE_TO_HOT_EDGE:I = 0x7

.field public static final whitelist FLAG_ON_DEFAULT_ACTION:I = 0x0

.field public static final whitelist FLAG_ON_DEFAULT_EVENT:I = 0x0

.field public static final whitelist FLAG_ON_DELETE_CONTROL_VIEW:I = 0x2

.field public static final whitelist FLAG_ON_DELETE_HANDLE:I = 0x8

.field public static final whitelist FLAG_ON_DELETE_MINI_ZOOM_BUTTON_RESTORE:I = 0x10000

.field public static final whitelist FLAG_ON_DELETE_MINI_ZOOM_BUTTON_SELECTED:I = 0x8000

.field public static final whitelist FLAG_ON_DELETE_MINI_ZOOM_CONTROL_VIEW:I = 0x4000

.field public static final whitelist FLAG_ON_DELETE_ZOOM_BUTTON_RESTORE:I = 0x800

.field public static final whitelist FLAG_ON_DELETE_ZOOM_BUTTON_SELECTED:I = 0x100

.field public static final whitelist FLAG_ON_DISABLE_CONTROL_VIEW:I = 0x40

.field public static final blacklist FLAG_ON_DOUBLE_TAP_TO_CLOSED_ZOOM:I = 0x800

.field public static final blacklist FLAG_ON_DRAG_TO_SCALE_LEFT_BOTTOM:I = 0x20

.field public static final blacklist FLAG_ON_DRAG_TO_SCALE_LEFT_SIDE:I = 0x80

.field public static final blacklist FLAG_ON_DRAG_TO_SCALE_RIGHT_BOTTOM:I = 0x40

.field public static final blacklist FLAG_ON_DRAG_TO_SCALE_RIGHT_SIDE:I = 0x100

.field public static final blacklist FLAG_ON_DRAG_TO_SCALE_UP:I = 0x200

.field public static final whitelist FLAG_ON_FLING:I = 0x2

.field public static final blacklist FLAG_ON_FULL_SCREEN:I = 0x400

.field public static final whitelist FLAG_ON_FULL_SCREEN_BUTTON_RESTORE:I = 0x400

.field public static final whitelist FLAG_ON_FULL_SCREEN_BUTTON_SELECTED:I = 0x80

.field public static final whitelist FLAG_ON_HIDE_HANDLE:I = 0x10

.field public static final whitelist FLAG_ON_HIDE_TIPS_VIEW:I = 0x100000

.field public static final whitelist FLAG_ON_LONG_PRESS:I = 0x1

.field public static final whitelist FLAG_ON_MINI_ZOOM_BUTTON_RESTORE:I = 0x1000

.field public static final whitelist FLAG_ON_MINI_ZOOM_BUTTON_SELECTED:I = 0x200

.field public static final whitelist FLAG_ON_MINI_ZOOM_SHOW_TIPS_VIEW:I = 0x40000

.field public static final whitelist FLAG_ON_SHOW_CONTROL_VIEW:I = 0x1

.field public static final whitelist FLAG_ON_SHOW_GUIDE:I = 0x200000

.field public static final whitelist FLAG_ON_SHOW_HANDLE:I = 0x4

.field public static final whitelist FLAG_ON_SHOW_MINI_ZOOM_CONTROL_VIEW:I = 0x2000

.field public static final whitelist FLAG_ON_SINGLE_TAP_TO_CLOSED_ZOOM:I = 0x10

.field public static final whitelist FLAG_ON_SINGLE_TAP_TO_SHOW_TIP:I = 0x8

.field public static final whitelist FLAG_ON_SING_TAP_MINI_ZOOM:I = 0x80000

.field public static final whitelist FLAG_ON_SING_TAP_SHOW_TIPS_VIEW:I = 0x20000

.field public static final whitelist FLAG_ON_START_BY_LAUNCHER_GESTURE_FROM_FULL_SCREEN:I = 0x1

.field public static final whitelist FLAG_ON_START_BY_LAUNCHER_SWIPE_UP_FROM_ZOOM:I = 0x3

.field public static final whitelist FLAG_ON_START_BY_MINI_ZOOM_BUTTON_FROM_ZOOM:I = 0x2

.field public static final whitelist FLAG_ON_START_FULL_SCREEN_FROM_RECENTS:I = 0x3

.field public static final whitelist FLAG_ON_START_MINI_BY_CHANGE_SCALE:I = 0x5

.field public static final whitelist FLAG_ON_START_MINI_BY_FLOAT_HANDLE:I = 0x6

.field public static final whitelist FLAG_ON_START_MINI_BY_THIRD_PARTY_APP:I = 0x7

.field public static final whitelist FLAG_ON_START_MINI_ZOOM_BY_LAUNCHER_CARD:I = 0x4

.field public static final whitelist FLAG_ON_START_MINI_ZOOM_FROM_FULL_SCREEN:I = 0x1

.field public static final whitelist FLAG_ON_START_MINI_ZOOM_FROM_RECENTS:I = 0x2

.field public static final whitelist FLAG_ON_START_MINI_ZOOM_FROM_THIRD_PARTY_APP:I = 0x7

.field public static final whitelist FLAG_ON_START_MINI_ZOOM_FROM_ZOOM:I = 0x2

.field public static final whitelist FLAG_ON_START_ZOOM_FROM_FLOAT_HANDLE:I = 0x4

.field public static final whitelist FLAG_ON_START_ZOOM_FROM_NOTIFICATION:I = 0x5

.field public static final whitelist FLAG_ON_START_ZOOM_FROM_NOTIFICATION_NEW_TASK:I = 0x6

.field public static final whitelist FLAG_ON_START_ZOOM_FROM_RECENTS:I = 0x1

.field public static final blacklist FLAG_ON_START_ZOOM_TO_FULL:I = 0x8

.field public static final whitelist FLAG_ON_UP:I = 0x4

.field public static final whitelist FLAG_SHOW_ZOOM_WINDOW:I = 0x1

.field public static final whitelist FLAG_TOUCH_OUTSIDE_CONTROL_VIEW:I = 0x400000

.field public static final whitelist FLAG_UNSUPPORT_ZOOM:I = 0x4

.field public static final whitelist FLOAT_HANDLE_ON_LEFT:I = 0x0

.field public static final whitelist FLOAT_HANDLE_ON_RIGHT:I = 0x1

.field public static final blacklist FOLDSCREEN_LARGE_ZOOM_RATIO:F = 1.7777778f

.field public static final blacklist FOLDSCREEN_LARGE_ZOOM_SCALE_FOR_LANDSCAPE_APP_DEFAULT:F = 0.7f

.field public static final blacklist FOLDSCREEN_LARGE_ZOOM_SCALE_FOR_PORTRAIT_DEFAULT:F = 0.7f

.field public static final blacklist FOLDSCREEN_SMALL_MINI_ZOOM_SCALE_FOR_DEFAULT:F = 0.3f

.field public static final blacklist FOLDSCREEN_SMALL_ZOOM_LANDSCAPE_RATIO:F = 1.4444444f

.field public static final blacklist FOLDSCREEN_SMALL_ZOOM_PORTRAIT_RATIO:F = 1.6666666f

.field public static final blacklist FOLDSCREEN_SMALL_ZOOM_SCALE_FOR_LANDSCAPE_APP_DEFAULT:F = 0.667f

.field public static final blacklist FOLDSCREEN_SMALL_ZOOM_SCALE_FOR_LANDSCAPE_DEFAULT:F = 0.6f

.field public static final blacklist FOLDSCREEN_SMALL_ZOOM_SCALE_FOR_PORTRAIT_DEFAULT:F = 0.667f

.field public static final blacklist FOLDSCREEN_SMALL_ZOOM_SCALE_FOR_PORTRAIT_LANDSCAPE_APP_DEFAULT:F = 0.52f

.field public static final blacklist FOLDSCREEN_ZOOM_BOTTOM_LIMIT_EDGE:I = 0x90

.field public static final blacklist FOLDSCREEN_ZOOM_LEFT_LIMIT_EDGE:I = 0x28

.field public static final blacklist FOLDSCREEN_ZOOM_RIGHT_LIMIT_EDGE:I = 0x10

.field public static final blacklist FOLDSCREEN_ZOOM_TOP_LIMIT_EDGE:I = 0x28

.field public static final whitelist KEY_OF_DELETE_MINI_ZOOM_BUTTON:Ljava/lang/String; = "delete_mini_zoom_button"

.field public static final whitelist KEY_OF_DELETE_ZOOM_BUTTON:Ljava/lang/String; = "delete_zoom_button"

.field public static final whitelist KEY_OF_FLOAT_HANDLE_INFO:Ljava/lang/String; = "float_handle_info"

.field public static final whitelist KEY_OF_FULL_SCREEN_BUTTON:Ljava/lang/String; = "full_screen_button"

.field public static final whitelist KEY_OF_MINI_ZOOM_BUTTON:Ljava/lang/String; = "mini_zoom_button"

.field public static final whitelist KEY_ZOOM_TASK_ID_FROM_RECENTS:Ljava/lang/String; = "zoom_task_id"

.field public static final whitelist KEY_ZOOM_TYPE_FROM_RECENTS:Ljava/lang/String; = "android:activity.mZoomLaunchFlags"

.field public static final blacklist LEFT_RIGHT_LIMIT_EDGE_OF_MOVE_MINI_ZOOM:I = 0x10

.field public static final blacklist MINI_ZOOM_SCALE_FOR_LANDSCAPE_DEFAULT:F = 0.3f

.field public static final blacklist MINI_ZOOM_SCALE_FOR_PORTRAIT_DEFAULT:F = 0.3f

.field public static final blacklist PAD_LEFT_RIGHT_LIMIT_EDGE_OF_MOVE_MINI_ZOOM:I = 0x18

.field public static final blacklist PAD_MINI_ZOOM_SCALE_FOR_DEFAULT:F = 0.45f

.field public static final blacklist PAD_TOP_BOTTOM_LIMIT_EDGE_OF_MOVE_MINI_ZOOM_LANDSCAPE:I = 0x30

.field public static final blacklist PAD_TOP_BOTTOM_LIMIT_EDGE_OF_MOVE_MINI_ZOOM_PORTRAIT:I = 0x30

.field public static final blacklist PAD_ZOOM_RATIO:F = 1.7777778f

.field public static final blacklist PAD_ZOOM_SCALE_FOR_DEFAULT:F = 0.85f

.field public static final whitelist STATE_CHANGE_TO_FULL:I = 0x3

.field public static final whitelist STATE_CHANGE_TO_MINI:I = 0x1

.field public static final whitelist STATE_CHANG_TO_ZOOM:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String; = "OplusZoomWindowManager"

.field public static final blacklist TOP_BOTTOM_LIMIT_EDGE_OF_MOVE_MINI_ZOOM:I = 0x28

.field public static final whitelist TOP_ZOOM_CLOSE:I = 0x1

.field public static final whitelist TOP_ZOOM_TO_FULL:I = 0x0

.field public static final whitelist TYPE_FORCED_RELAUNCH_ZOOM_CPN_LIST:I = 0x9

.field public static final whitelist TYPE_FORCES_SHOW_TOAST_LIST:I = 0x4

.field public static final whitelist TYPE_NOT_SHOW_TOAST_LIST:I = 0x5

.field public static final whitelist TYPE_SHOW_COMPATIBILITY_TOAST:I = 0x1

.field public static final whitelist TYPE_SHOW_UNSUPPORT_TOAST:I = 0x2

.field public static final whitelist TYPE_UNRELAUNCH_ZOOM_CPN_LIST:I = 0x8

.field public static final whitelist TYPE_UNREUSED_ZOOM_CPN_LIST:I = 0x7

.field public static final whitelist TYPE_UNSUPPORT_ZOOM_CPN_LIST:I = 0x6

.field public static final whitelist TYPE_ZOOM_APP_BLACK_LIST:I = 0x2

.field public static final whitelist TYPE_ZOOM_APP_REPLY_LIST:I = 0x3

.field public static final whitelist TYPE_ZOOM_APP_SUPPORT_LIST:I = 0x1

.field public static final whitelist WINDOWING_MODE_FULLSCREEN:I = 0x1

.field public static final whitelist WINDOWING_MODE_ZOOM:I = 0x64

.field public static final blacklist WINDOWING_MODE_ZOOM_LEGACY:I = 0x6

.field public static final whitelist WINDOWING_MODE_ZOOM_TO_FULLSCREEN:I = 0x65

.field public static final whitelist WINDOW_TYPE_MINIZOOM:I = 0x2

.field public static final whitelist WINDOW_TYPE_UNDEFINE:I = 0x0

.field public static final whitelist WINDOW_TYPE_ZOOM:I = 0x1

.field public static final blacklist ZOOM_CORNER_RADIUS_PORTRAIT:I = 0x16

.field public static final blacklist ZOOM_LANDSCAPE_APP_RATIO:F = 1.6666666f

.field public static final blacklist ZOOM_LANDSCAPE_RATIO:F = 1.45f

.field public static final blacklist ZOOM_PORTRAIT_APP_FOLDSCREEN:F = 0.6f

.field public static final blacklist ZOOM_RATIO:F = 1.6666666f

.field public static final blacklist ZOOM_SCALE_FOR_LANDSCAPE_APP_DEFAULT:F = 0.556f

.field public static final blacklist ZOOM_SCALE_FOR_LANDSCAPE_DEFAULT:F = 0.6f

.field public static final blacklist ZOOM_SCALE_FOR_PORTRAIT_DEFAULT:F = 0.667f

.field private static volatile blacklist sInstance:Lcom/oplus/zoomwindow/OplusZoomWindowManager;


# instance fields
.field private final blacklist mConfigListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/oplus/zoomwindow/OplusZoomWindowManager$OnConfigChangedListener;",
            "Lcom/oplus/app/IOplusZoomWindowConfigChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mOAms:Landroid/app/OplusActivityManager;


# direct methods
.method private constructor blacklist <init>()V
    .locals 1

    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 433
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->mConfigListeners:Ljava/util/Map;

    .line 452
    new-instance v0, Landroid/app/OplusActivityManager;

    invoke-direct {v0}, Landroid/app/OplusActivityManager;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->mOAms:Landroid/app/OplusActivityManager;

    .line 453
    return-void
.end method

.method public static whitelist getInstance()Lcom/oplus/zoomwindow/OplusZoomWindowManager;
    .locals 2

    .line 441
    sget-object v0, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->sInstance:Lcom/oplus/zoomwindow/OplusZoomWindowManager;

    if-nez v0, :cond_1

    .line 442
    const-class v0, Lcom/oplus/zoomwindow/OplusZoomWindowManager;

    monitor-enter v0

    .line 443
    :try_start_0
    sget-object v1, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->sInstance:Lcom/oplus/zoomwindow/OplusZoomWindowManager;

    if-nez v1, :cond_0

    .line 444
    new-instance v1, Lcom/oplus/zoomwindow/OplusZoomWindowManager;

    invoke-direct {v1}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;-><init>()V

    sput-object v1, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->sInstance:Lcom/oplus/zoomwindow/OplusZoomWindowManager;

    .line 446
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 448
    :cond_1
    :goto_0
    sget-object v0, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->sInstance:Lcom/oplus/zoomwindow/OplusZoomWindowManager;

    return-object v0
.end method


# virtual methods
.method public whitelist addOnConfigChangedListener(Lcom/oplus/zoomwindow/OplusZoomWindowManager$OnConfigChangedListener;)Z
    .locals 6
    .param p1, "listener"    # Lcom/oplus/zoomwindow/OplusZoomWindowManager$OnConfigChangedListener;

    .line 689
    const-string v0, "OplusZoomWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addOnConfigChangedListener listener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->mConfigListeners:Ljava/util/Map;

    monitor-enter v0

    .line 691
    :try_start_0
    iget-object v1, p0, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->mConfigListeners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 692
    const-string v1, "OplusZoomWindowManager"

    const-string v3, "addOnConfigChangedListener already added before"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    monitor-exit v0

    return v2

    .line 695
    :cond_0
    new-instance v1, Lcom/oplus/zoomwindow/OplusZoomWindowManager$OnConfigChangeListenerDelegate;

    .line 696
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, p0, p1, v3}, Lcom/oplus/zoomwindow/OplusZoomWindowManager$OnConfigChangeListenerDelegate;-><init>(Lcom/oplus/zoomwindow/OplusZoomWindowManager;Lcom/oplus/zoomwindow/OplusZoomWindowManager$OnConfigChangedListener;Landroid/os/Looper;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 698
    .local v1, "delegate":Lcom/oplus/zoomwindow/OplusZoomWindowManager$OnConfigChangeListenerDelegate;
    :try_start_1
    iget-object v3, p0, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->mOAms:Landroid/app/OplusActivityManager;

    if-eqz v3, :cond_1

    .line 699
    iget-object v3, p0, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->mConfigListeners:Ljava/util/Map;

    invoke-interface {v3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    iget-object v3, p0, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->mOAms:Landroid/app/OplusActivityManager;

    invoke-virtual {v3, v1}, Landroid/app/OplusActivityManager;->addZoomWindowConfigChangedListener(Lcom/oplus/app/IOplusZoomWindowConfigChangedListener;)Z

    move-result v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v2

    .line 705
    :cond_1
    goto :goto_0

    .line 702
    :catch_0
    move-exception v3

    .line 703
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "OplusZoomWindowManager"

    const-string v5, "addOnConfigChangedListener remoteException "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 706
    .end local v1    # "delegate":Lcom/oplus/zoomwindow/OplusZoomWindowManager$OnConfigChangeListenerDelegate;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 707
    return v2

    .line 706
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist getCurrentZoomWindowState()Lcom/oplus/zoomwindow/OplusZoomWindowInfo;
    .locals 3

    .line 582
    :try_start_0
    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->mOAms:Landroid/app/OplusActivityManager;

    invoke-virtual {v0}, Landroid/app/OplusActivityManager;->getCurrentZoomWindowState()Lcom/oplus/zoomwindow/OplusZoomWindowInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 583
    :catch_0
    move-exception v0

    .line 584
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusZoomWindowManager"

    const-string v2, "getCurrentZoomWindowState Exception "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getZoomAppConfigList(I)Ljava/util/List;
    .locals 3
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 616
    :try_start_0
    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->mOAms:Landroid/app/OplusActivityManager;

    invoke-virtual {v0, p1}, Landroid/app/OplusActivityManager;->getZoomAppConfigList(I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 617
    :catch_0
    move-exception v0

    .line 618
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OplusZoomWindowManager"

    const-string v2, "hideZoomWindow remoteException "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 621
    .end local v0    # "e":Landroid/os/RemoteException;
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public whitelist getZoomWindowConfig()Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;
    .locals 3

    .line 643
    const-string v0, "OplusZoomWindowManager"

    const-string v1, "getZoomWindowConfig start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    :try_start_0
    iget-object v1, p0, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->mOAms:Landroid/app/OplusActivityManager;

    invoke-virtual {v1}, Landroid/app/OplusActivityManager;->getZoomWindowConfig()Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 647
    :catch_0
    move-exception v1

    .line 648
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "getZoomWindowConfig remoteException "

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 651
    .end local v1    # "e":Landroid/os/RemoteException;
    new-instance v0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;

    invoke-direct {v0}, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;-><init>()V

    return-object v0
.end method

.method public whitelist handleShowCompatibilityToast(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;I)Z
    .locals 6
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "callPkg"    # Ljava/lang/String;
    .param p4, "extension"    # Landroid/os/Bundle;
    .param p5, "type"    # I

    .line 556
    :try_start_0
    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->mOAms:Landroid/app/OplusActivityManager;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/app/OplusActivityManager;->handleShowCompatibilityToast(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 557
    :catch_0
    move-exception v0

    .line 558
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OplusZoomWindowManager"

    const-string v2, "handleShowCompatibilityToast remoteException "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 561
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist hideZoomWindow(I)V
    .locals 3
    .param p1, "flag"    # I

    .line 591
    :try_start_0
    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->mOAms:Landroid/app/OplusActivityManager;

    invoke-virtual {v0, p1}, Landroid/app/OplusActivityManager;->hideZoomWindow(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 595
    goto :goto_0

    .line 592
    :catch_0
    move-exception v0

    .line 593
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OplusZoomWindowManager"

    const-string v2, "hideZoomWindow remoteException "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 596
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist isSupportZoomMode(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)Z
    .locals 3
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "callPkg"    # Ljava/lang/String;
    .param p4, "extension"    # Landroid/os/Bundle;

    .line 536
    :try_start_0
    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->mOAms:Landroid/app/OplusActivityManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/OplusActivityManager;->isSupportZoomMode(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 537
    :catch_0
    move-exception v0

    .line 538
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OplusZoomWindowManager"

    const-string v2, "isSupportZoomMode remoteException "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 541
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isSupportZoomWindowMode()Z
    .locals 3

    .line 518
    :try_start_0
    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->mOAms:Landroid/app/OplusActivityManager;

    invoke-virtual {v0}, Landroid/app/OplusActivityManager;->isSupportZoomWindowMode()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 519
    :catch_0
    move-exception v0

    .line 520
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OplusZoomWindowManager"

    const-string v2, "isSupportZoomWindowMode remoteException "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 523
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist isZoomSimpleModeEnable()Z
    .locals 3

    .line 835
    :try_start_0
    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->mOAms:Landroid/app/OplusActivityManager;

    invoke-virtual {v0}, Landroid/app/OplusActivityManager;->isZoomSimpleModeEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 836
    :catch_0
    move-exception v0

    .line 837
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OplusZoomWindowManager"

    const-string v2, "isZoomSimpleModeEnable remoteException "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 840
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist notifyZoomStateChange(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "action"    # I

    .line 865
    :try_start_0
    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->mOAms:Landroid/app/OplusActivityManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/OplusActivityManager;->notifyZoomStateChange(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 868
    goto :goto_0

    .line 866
    :catch_0
    move-exception v0

    .line 867
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OplusZoomWindowManager"

    const-string v2, "notifyZoomStateChange remoteException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist onControlViewChanged(Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;)V
    .locals 3
    .param p1, "cvInfo"    # Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;

    .line 802
    :try_start_0
    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->mOAms:Landroid/app/OplusActivityManager;

    invoke-virtual {v0, p1}, Landroid/app/OplusActivityManager;->onControlViewChanged(Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 806
    goto :goto_0

    .line 803
    :catch_0
    move-exception v0

    .line 804
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OplusZoomWindowManager"

    const-string v2, "onControlViewChanged remoteException "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 807
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist onFloatHandleViewChanged(Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;)V
    .locals 3
    .param p1, "floatHandleInfo"    # Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;

    .line 821
    :try_start_0
    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->mOAms:Landroid/app/OplusActivityManager;

    invoke-virtual {v0, p1}, Landroid/app/OplusActivityManager;->onFloatHandleViewChanged(Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 825
    goto :goto_0

    .line 822
    :catch_0
    move-exception v0

    .line 823
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OplusZoomWindowManager"

    const-string v2, "onFloatHandleViewChanged remoteException "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 826
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist onInputEvent(Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;)V
    .locals 3
    .param p1, "inputEventInfo"    # Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;

    .line 788
    :try_start_0
    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->mOAms:Landroid/app/OplusActivityManager;

    invoke-virtual {v0, p1}, Landroid/app/OplusActivityManager;->onInputEvent(Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 792
    goto :goto_0

    .line 789
    :catch_0
    move-exception v0

    .line 790
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OplusZoomWindowManager"

    const-string v2, "onInputEvent remoteException "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 793
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist registerZoomAppObserver(Lcom/oplus/zoomwindow/IOplusZoomAppObserver;)Z
    .locals 3
    .param p1, "observer"    # Lcom/oplus/zoomwindow/IOplusZoomAppObserver;

    .line 490
    const-string v0, "OplusZoomWindowManager"

    const-string v1, "registerZoomAppObserver start"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :try_start_0
    iget-object v1, p0, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->mOAms:Landroid/app/OplusActivityManager;

    invoke-virtual {v1, p1}, Landroid/app/OplusActivityManager;->registerZoomAppObserver(Lcom/oplus/zoomwindow/IOplusZoomAppObserver;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 493
    :catch_0
    move-exception v1

    .line 494
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "registerZoomAppObserver remoteException "

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 497
    .end local v1    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist registerZoomWindowObserver(Lcom/oplus/zoomwindow/IOplusZoomWindowObserver;)Z
    .locals 3
    .param p1, "observer"    # Lcom/oplus/zoomwindow/IOplusZoomWindowObserver;

    .line 471
    :try_start_0
    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->mOAms:Landroid/app/OplusActivityManager;

    invoke-virtual {v0, p1}, Landroid/app/OplusActivityManager;->registerZoomWindowObserver(Lcom/oplus/zoomwindow/IOplusZoomWindowObserver;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 472
    :catch_0
    move-exception v0

    .line 473
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OplusZoomWindowManager"

    const-string v2, "registerZoomWindowObserver remoteException "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 476
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist removeOnConfigChangedListener(Lcom/oplus/zoomwindow/OplusZoomWindowManager$OnConfigChangedListener;)Z
    .locals 5
    .param p1, "listener"    # Lcom/oplus/zoomwindow/OplusZoomWindowManager$OnConfigChangedListener;

    .line 716
    const-string v0, "OplusZoomWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeOnConfigChangedListener listener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->mConfigListeners:Ljava/util/Map;

    monitor-enter v0

    .line 718
    :try_start_0
    iget-object v1, p0, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->mConfigListeners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/app/IOplusZoomWindowConfigChangedListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 719
    .local v1, "delegate":Lcom/oplus/app/IOplusZoomWindowConfigChangedListener;
    if-eqz v1, :cond_1

    .line 721
    :try_start_1
    iget-object v2, p0, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->mOAms:Landroid/app/OplusActivityManager;

    if-eqz v2, :cond_0

    .line 722
    iget-object v2, p0, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->mConfigListeners:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    iget-object v2, p0, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->mOAms:Landroid/app/OplusActivityManager;

    invoke-virtual {v2, v1}, Landroid/app/OplusActivityManager;->removeZoomWindowConfigChangedListener(Lcom/oplus/app/IOplusZoomWindowConfigChangedListener;)Z

    move-result v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v2

    .line 728
    :cond_0
    goto :goto_0

    .line 725
    :catch_0
    move-exception v2

    .line 726
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "OplusZoomWindowManager"

    const-string v4, "removeOnConfigChangedListener remoteException "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 730
    .end local v1    # "delegate":Lcom/oplus/app/IOplusZoomWindowConfigChangedListener;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    monitor-exit v0

    .line 731
    const/4 v0, 0x0

    return v0

    .line 730
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist setBubbleMode(Z)V
    .locals 0
    .param p1, "inBubbleMode"    # Z

    .line 812
    return-void
.end method

.method public blacklist setIMECrop(I)V
    .locals 3
    .param p1, "imeCropY"    # I

    .line 849
    :try_start_0
    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->mOAms:Landroid/app/OplusActivityManager;

    invoke-virtual {v0, p1}, Landroid/app/OplusActivityManager;->setIMECrop(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 852
    goto :goto_0

    .line 850
    :catch_0
    move-exception v0

    .line 851
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OplusZoomWindowManager"

    const-string v2, "setIMECrop remoteException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist setZoomWindowConfig(Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;)V
    .locals 3
    .param p1, "config"    # Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;

    .line 670
    const-string v0, "OplusZoomWindowManager"

    const-string v1, "setZoomWindowConfig start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    :try_start_0
    iget-object v1, p0, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->mOAms:Landroid/app/OplusActivityManager;

    invoke-virtual {v1, p1}, Landroid/app/OplusActivityManager;->setZoomWindowConfig(Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 677
    goto :goto_0

    .line 674
    :catch_0
    move-exception v1

    .line 675
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "setZoomWindowConfig remoteException "

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 678
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist startMiniZoomFromZoom(I)V
    .locals 3
    .param p1, "startWay"    # I

    .line 570
    :try_start_0
    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->mOAms:Landroid/app/OplusActivityManager;

    invoke-virtual {v0, p1}, Landroid/app/OplusActivityManager;->startMiniZoomFromZoom(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 574
    goto :goto_0

    .line 571
    :catch_0
    move-exception v0

    .line 572
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OplusZoomWindowManager"

    const-string v2, "startMiniZoomFromZoom remoteException "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 575
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist startZoomWindow(Landroid/content/Intent;Landroid/os/Bundle;ILjava/lang/String;)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "bOptions"    # Landroid/os/Bundle;
    .param p3, "userId"    # I
    .param p4, "callPkg"    # Ljava/lang/String;

    .line 460
    const-string v0, "OplusZoomWindowManager"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startZoomWindow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " callPkg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iget-object v1, p0, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->mOAms:Landroid/app/OplusActivityManager;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/app/OplusActivityManager;->startZoomWindow(Landroid/content/Intent;Landroid/os/Bundle;ILjava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 462
    :catch_0
    move-exception v1

    .line 463
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "startZoomWindow remoteException "

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 466
    .end local v1    # "e":Landroid/os/RemoteException;
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist unregisterZoomAppObserver(Lcom/oplus/zoomwindow/IOplusZoomAppObserver;)Z
    .locals 3
    .param p1, "observer"    # Lcom/oplus/zoomwindow/IOplusZoomAppObserver;

    .line 501
    const-string v0, "OplusZoomWindowManager"

    const-string v1, "unregisterZoomAppObserver start"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :try_start_0
    iget-object v1, p0, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->mOAms:Landroid/app/OplusActivityManager;

    invoke-virtual {v1, p1}, Landroid/app/OplusActivityManager;->unregisterZoomAppObserver(Lcom/oplus/zoomwindow/IOplusZoomAppObserver;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 504
    :catch_0
    move-exception v1

    .line 505
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "unregisterZoomAppObserver remoteException "

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 508
    .end local v1    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist unregisterZoomWindowObserver(Lcom/oplus/zoomwindow/IOplusZoomWindowObserver;)Z
    .locals 3
    .param p1, "observer"    # Lcom/oplus/zoomwindow/IOplusZoomWindowObserver;

    .line 481
    :try_start_0
    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->mOAms:Landroid/app/OplusActivityManager;

    invoke-virtual {v0, p1}, Landroid/app/OplusActivityManager;->unregisterZoomWindowObserver(Lcom/oplus/zoomwindow/IOplusZoomWindowObserver;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 482
    :catch_0
    move-exception v0

    .line 483
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OplusZoomWindowManager"

    const-string v2, "unregisterZoomWindowObserver remoteException "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 486
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method
