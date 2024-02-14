.class public Lcom/oplus/uifirst/OplusUIFirstManager;
.super Ljava/lang/Object;
.source "OplusUIFirstManager.java"

# interfaces
.implements Lcom/oplus/uifirst/IOplusUIFirstManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;,
        Lcom/oplus/uifirst/OplusUIFirstManager$UIFirstHandler;
    }
.end annotation


# static fields
.field static final blacklist APP_MOVE_TO_BG_DELAY:I = 0x3e8

.field private static final blacklist FRAME_BOOST_DEBUG:Ljava/lang/String; = "/proc/sys/fbg/frame_boost_debug"

.field static final blacklist HANDLE_THREAD_OP_DELAY:I = 0x3e8

.field static final blacklist HOT_LAUNCH_BOOST_DURATION:I = 0x3e8

.field private static final blacklist INKERNEL_FBT_CPU_PARAM_BHR_OPP:Ljava/lang/String; = "sys/module/fbt_cpu/parameters/bhr_opp"

.field static final blacklist LAUNCH_BOOST_DURATION:I = 0xbb8

.field static final blacklist MSG_APP_MOVE_TO_BG:I = 0x2

.field static final blacklist MSG_APP_MOVE_TO_BG_DELAY:I = 0x3

.field static final blacklist MSG_APP_STATUS_CHANGED:I = 0x0

.field static final blacklist MSG_DISABLE_LAUNCH_BOOST:I = 0x1

.field static final blacklist MSG_HANDEL_FBTHREAD_OP:I = 0x8

.field static final blacklist MSG_HANDEL_FBTHREAD_OP_BY_PKG:I = 0x9

.field static final blacklist MSG_HANDLE_GLTHREAD_OP:I = 0x4

.field static final blacklist MSG_HANDLE_GLTHREAD_OP_BY_PKG:I = 0x5

.field static final blacklist MSG_HANDLE_TPD_THREAD_OP:I = 0x6

.field static final blacklist MSG_HANDLE_TPD_THREAD_OP_BY_PKG:I = 0x7

.field static final blacklist PKG_ASSISTANT_SCREEN:Ljava/lang/String; = "com.coloros.assistantscreen"

.field static final blacklist PKG_LAUNCHER:Ljava/lang/String; = "com.android.launcher"

.field static final blacklist PKG_SYSTEMUI:Ljava/lang/String; = "com.android.systemui"

.field private static final blacklist SCHED_ASSIST_DEBUG:Ljava/lang/String; = "/proc/oplus_scheduler/sched_assist/debug_enabled"

.field private static final blacklist SCHED_ASSIST_JNI_LIB:Ljava/lang/String; = "SchedAssistJni"

.field private static final blacklist TAG:Ljava/lang/String; = "OplusUIFirst"

.field private static blacklist sInstance:Lcom/oplus/uifirst/OplusUIFirstManager;


# instance fields
.field private blacklist mAssistantScreen:Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;

.field private blacklist mAssistantScreenShowed:Z

.field private blacklist mFBThreadManager:Lcom/oplus/uifirst/FBThreadManager;

.field private blacklist mFilterService:Lcom/oplus/filter/IDynamicFilterService;

.field private blacklist mGlThreadManager:Lcom/oplus/uifirst/GlThreadManager;

.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mOnTopApp:Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;

.field private blacklist mOnTopAppLast:Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;

.field private blacklist mOnTopSystemUi:Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;

.field private blacklist mSystemUiShowed:Z

.field private blacklist mThread:Landroid/os/HandlerThread;

.field private blacklist mTpdManager:Lcom/oplus/uifirst/TpdManager;

.field private blacklist mbhropp:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmFBThreadManager(Lcom/oplus/uifirst/OplusUIFirstManager;)Lcom/oplus/uifirst/FBThreadManager;
    .locals 0

    iget-object p0, p0, Lcom/oplus/uifirst/OplusUIFirstManager;->mFBThreadManager:Lcom/oplus/uifirst/FBThreadManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmGlThreadManager(Lcom/oplus/uifirst/OplusUIFirstManager;)Lcom/oplus/uifirst/GlThreadManager;
    .locals 0

    iget-object p0, p0, Lcom/oplus/uifirst/OplusUIFirstManager;->mGlThreadManager:Lcom/oplus/uifirst/GlThreadManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTpdManager(Lcom/oplus/uifirst/OplusUIFirstManager;)Lcom/oplus/uifirst/TpdManager;
    .locals 0

    iget-object p0, p0, Lcom/oplus/uifirst/OplusUIFirstManager;->mTpdManager:Lcom/oplus/uifirst/TpdManager;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 79
    const/4 v0, 0x0

    sput-object v0, Lcom/oplus/uifirst/OplusUIFirstManager;->sInstance:Lcom/oplus/uifirst/OplusUIFirstManager;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/uifirst/OplusUIFirstManager;->mAssistantScreen:Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;

    .line 90
    iput-object v0, p0, Lcom/oplus/uifirst/OplusUIFirstManager;->mOnTopSystemUi:Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;

    .line 91
    iput-object v0, p0, Lcom/oplus/uifirst/OplusUIFirstManager;->mOnTopApp:Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;

    .line 92
    iput-object v0, p0, Lcom/oplus/uifirst/OplusUIFirstManager;->mOnTopAppLast:Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/uifirst/OplusUIFirstManager;->mSystemUiShowed:Z

    .line 94
    iput-boolean v0, p0, Lcom/oplus/uifirst/OplusUIFirstManager;->mAssistantScreenShowed:Z

    .line 98
    const-string v0, "SchedAssistJni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public static whitelist getInstance()Lcom/oplus/uifirst/OplusUIFirstManager;
    .locals 1

    .line 128
    sget-object v0, Lcom/oplus/uifirst/OplusUIFirstManager;->sInstance:Lcom/oplus/uifirst/OplusUIFirstManager;

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Lcom/oplus/uifirst/OplusUIFirstManager;

    invoke-direct {v0}, Lcom/oplus/uifirst/OplusUIFirstManager;-><init>()V

    sput-object v0, Lcom/oplus/uifirst/OplusUIFirstManager;->sInstance:Lcom/oplus/uifirst/OplusUIFirstManager;

    .line 131
    :cond_0
    sget-object v0, Lcom/oplus/uifirst/OplusUIFirstManager;->sInstance:Lcom/oplus/uifirst/OplusUIFirstManager;

    return-object v0
.end method

.method static synthetic blacklist lambda$uxTrace$0(I)Z
    .locals 1
    .param p0, "e"    # I

    .line 297
    if-lez p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static native blacklist nativeOfbBoostHint(IIIIIIJJJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method static native blacklist nativeOfbCfgAppFrameParam(III)V
.end method

.method static native blacklist nativeOfbCfgEnabled(Z)V
.end method

.method static native blacklist nativeOfbCfgFrameTask(IIIII)V
.end method

.method static native blacklist nativeOfbCfgUxTask(IIIII)V
.end method

.method static native blacklist nativeOfbEndFrame(IIJ)V
.end method

.method static native blacklist nativeOfbSetFps(IIJJ)V
.end method

.method static native blacklist nativeSetUxValue(II)V
.end method

.method private blacklist updateTopApp()V
    .locals 6

    .line 697
    const/4 v0, 0x0

    .line 699
    .local v0, "info":Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;
    iget-object v1, p0, Lcom/oplus/uifirst/OplusUIFirstManager;->mOnTopSystemUi:Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;

    if-eqz v1, :cond_0

    iget v1, v1, Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;->mAppPid:I

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/oplus/uifirst/OplusUIFirstManager;->mSystemUiShowed:Z

    if-eqz v1, :cond_0

    .line 700
    iget-object v0, p0, Lcom/oplus/uifirst/OplusUIFirstManager;->mOnTopSystemUi:Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;

    goto :goto_0

    .line 702
    :cond_0
    iget-object v1, p0, Lcom/oplus/uifirst/OplusUIFirstManager;->mAssistantScreen:Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;

    if-eqz v1, :cond_1

    iget v1, v1, Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;->mAppPid:I

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/oplus/uifirst/OplusUIFirstManager;->mAssistantScreenShowed:Z

    if-eqz v1, :cond_1

    .line 703
    iget-object v0, p0, Lcom/oplus/uifirst/OplusUIFirstManager;->mAssistantScreen:Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;

    goto :goto_0

    .line 705
    :cond_1
    iget-object v0, p0, Lcom/oplus/uifirst/OplusUIFirstManager;->mOnTopApp:Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;

    .line 709
    :goto_0
    if-eqz v0, :cond_5

    .line 710
    iget-object v1, p0, Lcom/oplus/uifirst/OplusUIFirstManager;->mOnTopAppLast:Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;

    if-nez v1, :cond_2

    .line 711
    new-instance v1, Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;

    iget-object v2, v0, Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;->mPackageName:Ljava/lang/String;

    iget v3, v0, Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;->mAppPid:I

    iget v4, v0, Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;->mRenderThreadTid:I

    iget-object v5, v0, Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;->mHwuiTasks:Landroid/util/IntArray;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;-><init>(Ljava/lang/String;IILandroid/util/IntArray;)V

    iput-object v1, p0, Lcom/oplus/uifirst/OplusUIFirstManager;->mOnTopAppLast:Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;

    goto :goto_1

    .line 713
    :cond_2
    iget v1, v1, Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;->mAppPid:I

    iget v2, v0, Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;->mAppPid:I

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/oplus/uifirst/OplusUIFirstManager;->mOnTopAppLast:Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;

    iget v1, v1, Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;->mRenderThreadTid:I

    iget v2, v0, Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;->mRenderThreadTid:I

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/oplus/uifirst/OplusUIFirstManager;->mOnTopAppLast:Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;

    iget-object v1, v1, Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;->mHwuiTasks:Landroid/util/IntArray;

    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result v1

    iget-object v2, v0, Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;->mHwuiTasks:Landroid/util/IntArray;

    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 714
    sget-boolean v1, Lcom/oplus/uifirst/Utils;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 715
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateTopApp curr freground app ingore:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;->mAppPid:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;->mRenderThreadTid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusUIFirst"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    :cond_3
    return-void

    .line 721
    :cond_4
    iget-object v1, p0, Lcom/oplus/uifirst/OplusUIFirstManager;->mOnTopAppLast:Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;

    iget-object v2, v0, Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;->mPackageName:Ljava/lang/String;

    iput-object v2, v1, Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;->mPackageName:Ljava/lang/String;

    .line 722
    iget-object v1, p0, Lcom/oplus/uifirst/OplusUIFirstManager;->mOnTopAppLast:Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;

    iget v2, v0, Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;->mAppPid:I

    iput v2, v1, Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;->mAppPid:I

    .line 723
    iget-object v1, p0, Lcom/oplus/uifirst/OplusUIFirstManager;->mOnTopAppLast:Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;

    iget v2, v0, Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;->mRenderThreadTid:I

    iput v2, v1, Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;->mRenderThreadTid:I

    .line 724
    iget-object v1, p0, Lcom/oplus/uifirst/OplusUIFirstManager;->mOnTopAppLast:Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;

    iget-object v2, v0, Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;->mHwuiTasks:Landroid/util/IntArray;

    iput-object v2, v1, Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;->mHwuiTasks:Landroid/util/IntArray;

    .line 728
    :goto_1
    iget-object v1, p0, Lcom/oplus/uifirst/OplusUIFirstManager;->mFBThreadManager:Lcom/oplus/uifirst/FBThreadManager;

    invoke-virtual {v1, v0}, Lcom/oplus/uifirst/FBThreadManager;->moveToTop(Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;)V

    .line 730
    :cond_5
    return-void
.end method


# virtual methods
.method public whitelist acquireLaunchBoost()V
    .locals 4

    .line 146
    sget-boolean v0, Lcom/oplus/uifirst/Utils;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 147
    const-string v0, "OplusUIFirst"

    const-string v1, "acquireLaunchBoost"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/oplus/uifirst/OplusUIFirstManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/oplus/uifirst/OplusUIFirstManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 152
    :cond_1
    const/16 v0, 0x81

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/PerformanceManager;->setSchedAssistScene(Ljava/lang/String;)V

    .line 154
    :goto_0
    iget-object v0, p0, Lcom/oplus/uifirst/OplusUIFirstManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 155
    return-void
.end method

.method public whitelist acquireUxSceneBoost(Ljava/lang/String;I)V
    .locals 4
    .param p1, "scene"    # Ljava/lang/String;
    .param p2, "timeout"    # I

    .line 136
    iget-object v0, p0, Lcom/oplus/uifirst/OplusUIFirstManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    return-void

    .line 139
    :cond_0
    invoke-static {p1}, Landroid/os/PerformanceManager;->setSchedAssistScene(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/oplus/uifirst/OplusUIFirstManager;->mHandler:Landroid/os/Handler;

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 142
    return-void
.end method

.method public declared-synchronized whitelist addApplicationGlThread(Ljava/lang/String;II)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "tid"    # I

    monitor-enter p0

    .line 466
    :try_start_0
    iget-object v0, p0, Lcom/oplus/uifirst/OplusUIFirstManager;->mGlThreadManager:Lcom/oplus/uifirst/GlThreadManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oplus/uifirst/GlThreadManager;->addGlThread(Ljava/lang/String;II)V

    .line 467
    iget-object v0, p0, Lcom/oplus/uifirst/OplusUIFirstManager;->mFBThreadManager:Lcom/oplus/uifirst/FBThreadManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oplus/uifirst/FBThreadManager;->addGlThread(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 468
    monitor-exit p0

    return-void

    .line 465
    .end local p0    # "this":Lcom/oplus/uifirst/OplusUIFirstManager;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "pid":I
    .end local p3    # "tid":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist adjustTopApp(Ljava/lang/String;IILandroid/util/IntArray;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appPid"    # I
    .param p3, "renderThreadTid"    # I
    .param p4, "hwuiTasks"    # Landroid/util/IntArray;

    monitor-enter p0

    .line 675
    :try_start_0
    sget-boolean v0, Lcom/oplus/uifirst/Utils;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 676
    const-string v0, "OplusUIFirst"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adjustTopApp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    .end local p0    # "this":Lcom/oplus/uifirst/OplusUIFirstManager;
    :cond_0
    const-string v0, "com.android.permissioncontroller"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 681
    monitor-exit p0

    return-void

    .line 684
    .restart local p0    # "this":Lcom/oplus/uifirst/OplusUIFirstManager;
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/oplus/uifirst/OplusUIFirstManager;->mOnTopApp:Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;

    if-nez v0, :cond_2

    .line 685
    new-instance v0, Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;-><init>(Ljava/lang/String;IILandroid/util/IntArray;)V

    iput-object v0, p0, Lcom/oplus/uifirst/OplusUIFirstManager;->mOnTopApp:Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;

    goto :goto_0

    .line 687
    .end local p0    # "this":Lcom/oplus/uifirst/OplusUIFirstManager;
    :cond_2
    iput-object p1, v0, Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;->mPackageName:Ljava/lang/String;

    .line 688
    iget-object v0, p0, Lcom/oplus/uifirst/OplusUIFirstManager;->mOnTopApp:Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;

    iput p2, v0, Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;->mAppPid:I

    .line 689
    iget-object v0, p0, Lcom/oplus/uifirst/OplusUIFirstManager;->mOnTopApp:Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;

    iput p3, v0, Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;->mRenderThreadTid:I

    .line 690
    iget-object v0, p0, Lcom/oplus/uifirst/OplusUIFirstManager;->mOnTopApp:Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;

    iput-object p4, v0, Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;->mHwuiTasks:Landroid/util/IntArray;

    .line 693
    :goto_0
    invoke-direct {p0}, Lcom/oplus/uifirst/OplusUIFirstManager;->updateTopApp()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 694
    monitor-exit p0

    return-void

    .line 674
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "appPid":I
    .end local p3    # "renderThreadTid":I
    .end local p4    # "hwuiTasks":Landroid/util/IntArray;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist adjustUxProcess(Ljava/lang/String;IIILandroid/util/IntArray;Ljava/util/Collection;Z)[I
    .locals 17
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "appPid"    # I
    .param p4, "renderThreadTid"    # I
    .param p5, "hwuiTasks"    # Landroid/util/IntArray;
    .param p7, "isRemoteAnimation"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III",
            "Landroid/util/IntArray;",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;Z)[I"
        }
    .end annotation

    .local p6, "glThreads":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    monitor-enter p0

    .line 353
    :try_start_0
    const-string v6, "com.android.systemui"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_3

    .line 354
    if-ne v2, v7, :cond_1

    .line 355
    iget-object v6, v1, Lcom/oplus/uifirst/OplusUIFirstManager;->mOnTopSystemUi:Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;

    if-nez v6, :cond_0

    .line 356
    new-instance v6, Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;

    invoke-direct {v6, v0, v3, v4, v5}, Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;-><init>(Ljava/lang/String;IILandroid/util/IntArray;)V

    iput-object v6, v1, Lcom/oplus/uifirst/OplusUIFirstManager;->mOnTopSystemUi:Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;

    goto :goto_0

    .line 358
    .end local p0    # "this":Lcom/oplus/uifirst/OplusUIFirstManager;
    :cond_0
    iput v3, v6, Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;->mAppPid:I

    .line 359
    iget-object v6, v1, Lcom/oplus/uifirst/OplusUIFirstManager;->mOnTopSystemUi:Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;

    iput v4, v6, Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;->mRenderThreadTid:I

    .line 360
    iget-object v6, v1, Lcom/oplus/uifirst/OplusUIFirstManager;->mOnTopSystemUi:Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;

    iput-object v5, v6, Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;->mHwuiTasks:Landroid/util/IntArray;

    goto :goto_0

    .line 363
    :cond_1
    iget-object v6, v1, Lcom/oplus/uifirst/OplusUIFirstManager;->mOnTopSystemUi:Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;

    if-eqz v6, :cond_2

    .line 364
    iput v8, v6, Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;->mAppPid:I

    .line 367
    :cond_2
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/oplus/uifirst/OplusUIFirstManager;->updateTopApp()V

    goto :goto_2

    .line 368
    :cond_3
    const-string v6, "com.coloros.assistantscreen"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 369
    if-ne v2, v7, :cond_5

    .line 370
    iget-object v6, v1, Lcom/oplus/uifirst/OplusUIFirstManager;->mAssistantScreen:Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;

    if-nez v6, :cond_4

    .line 371
    new-instance v6, Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;

    invoke-direct {v6, v0, v3, v4, v5}, Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;-><init>(Ljava/lang/String;IILandroid/util/IntArray;)V

    iput-object v6, v1, Lcom/oplus/uifirst/OplusUIFirstManager;->mAssistantScreen:Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;

    goto :goto_1

    .line 373
    :cond_4
    iput v3, v6, Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;->mAppPid:I

    .line 374
    iget-object v6, v1, Lcom/oplus/uifirst/OplusUIFirstManager;->mAssistantScreen:Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;

    iput v4, v6, Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;->mRenderThreadTid:I

    .line 375
    iget-object v6, v1, Lcom/oplus/uifirst/OplusUIFirstManager;->mAssistantScreen:Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;

    iput-object v5, v6, Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;->mHwuiTasks:Landroid/util/IntArray;

    goto :goto_1

    .line 378
    :cond_5
    iget-object v6, v1, Lcom/oplus/uifirst/OplusUIFirstManager;->mAssistantScreen:Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;

    if-eqz v6, :cond_6

    .line 379
    iput v8, v6, Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;->mAppPid:I

    .line 382
    :cond_6
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/oplus/uifirst/OplusUIFirstManager;->updateTopApp()V

    .line 386
    :cond_7
    :goto_2
    const/4 v6, 0x0

    .line 387
    .local v6, "ret":[I
    const/4 v9, 0x0

    .line 389
    .local v9, "sceneValue":Ljava/lang/String;
    const-string v10, "ui_first_black"

    invoke-virtual {v1, v10, v0}, Lcom/oplus/uifirst/OplusUIFirstManager;->inFilter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v10, :cond_8

    .line 390
    const/4 v7, 0x0

    monitor-exit p0

    return-object v7

    .line 393
    .restart local p0    # "this":Lcom/oplus/uifirst/OplusUIFirstManager;
    :cond_8
    :try_start_1
    const-string v10, "gl_thread_ux"

    invoke-virtual {v1, v10, v0}, Lcom/oplus/uifirst/OplusUIFirstManager;->inFilter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    .line 394
    .local v10, "enableGlThreadUx":Z
    sget-boolean v11, Lcom/oplus/uifirst/Utils;->DEBUG:Z

    if-eqz v11, :cond_9

    .line 395
    const-string v11, "OplusUIFirst"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "adjustUxProcess: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", pid: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", glthread: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", status: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    .end local p0    # "this":Lcom/oplus/uifirst/OplusUIFirstManager;
    :cond_9
    const-string v11, "com.android.systemui"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 399
    .local v11, "isSystemui":Z
    const-string v12, "com.android.launcher"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 400
    .local v12, "isLauncher":Z
    const/4 v13, 0x2

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_5

    .line 433
    :pswitch_0
    if-eqz v11, :cond_a

    .line 434
    const-string v14, "OplusUIFirst"

    const-string v15, "disable slide boost in system ui"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    const/16 v14, 0x10

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    move-object v9, v14

    .line 436
    invoke-static {v9}, Landroid/os/PerformanceManager;->setSchedAssistScene(Ljava/lang/String;)V

    .line 439
    :cond_a
    if-nez v12, :cond_b

    .line 440
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v3, v3, v14}, Lcom/oplus/uifirst/OplusUIFirstManager;->setUxThreadValue(IILjava/lang/String;)V

    .line 441
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v3, v4, v14}, Lcom/oplus/uifirst/OplusUIFirstManager;->setUxThreadValue(IILjava/lang/String;)V

    .line 443
    :cond_b
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_3
    invoke-virtual/range {p5 .. p5}, Landroid/util/IntArray;->size()I

    move-result v15

    if-ge v14, v15, :cond_c

    .line 444
    invoke-virtual {v5, v14}, Landroid/util/IntArray;->get(I)I

    move-result v15

    .line 445
    .local v15, "thread":I
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v3, v15, v7}, Lcom/oplus/uifirst/OplusUIFirstManager;->setUxThreadValue(IILjava/lang/String;)V

    .line 443
    .end local v15    # "thread":I
    add-int/lit8 v14, v14, 0x1

    const/4 v7, 0x1

    goto :goto_3

    .line 448
    .end local v14    # "i":I
    :cond_c
    if-eqz v10, :cond_d

    .line 449
    iget-object v7, v1, Lcom/oplus/uifirst/OplusUIFirstManager;->mGlThreadManager:Lcom/oplus/uifirst/GlThreadManager;

    invoke-virtual {v7, v0, v3}, Lcom/oplus/uifirst/GlThreadManager;->moveToBack(Ljava/lang/String;I)V

    .line 451
    :cond_d
    iget-object v7, v1, Lcom/oplus/uifirst/OplusUIFirstManager;->mFBThreadManager:Lcom/oplus/uifirst/FBThreadManager;

    invoke-virtual {v7, v0, v3}, Lcom/oplus/uifirst/FBThreadManager;->moveToBack(Ljava/lang/String;I)V

    .line 453
    new-array v7, v13, [I

    aput v8, v7, v8

    const/4 v13, 0x1

    aput v8, v7, v13

    move-object v6, v7

    .line 454
    invoke-virtual/range {p5 .. p5}, Landroid/util/IntArray;->toArray()[I

    move-result-object v7

    invoke-virtual {v1, v3, v4, v7, v8}, Lcom/oplus/uifirst/OplusUIFirstManager;->uxTrace(II[IZ)V

    .line 455
    goto :goto_5

    .line 402
    :pswitch_1
    const/16 v7, 0x82

    .line 404
    .local v7, "value":I
    invoke-virtual/range {p0 .. p1}, Lcom/oplus/uifirst/OplusUIFirstManager;->checkIsListPickPkg(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 405
    add-int/lit8 v7, v7, 0x8

    .line 408
    :cond_e
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v3, v3, v14}, Lcom/oplus/uifirst/OplusUIFirstManager;->setUxThreadValue(IILjava/lang/String;)V

    .line 409
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v3, v4, v14}, Lcom/oplus/uifirst/OplusUIFirstManager;->setUxThreadValue(IILjava/lang/String;)V

    .line 411
    if-eqz v11, :cond_f

    .line 412
    const-string v14, "OplusUIFirst"

    const-string v15, "set slide boost in system ui"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    const/16 v14, 0x90

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    move-object v9, v14

    .line 414
    invoke-static {v9}, Landroid/os/PerformanceManager;->setSchedAssistScene(Ljava/lang/String;)V

    .line 417
    :cond_f
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_4
    invoke-virtual/range {p5 .. p5}, Landroid/util/IntArray;->size()I

    move-result v15

    if-ge v14, v15, :cond_10

    .line 418
    invoke-virtual {v5, v14}, Landroid/util/IntArray;->get(I)I

    move-result v15

    .line 419
    .restart local v15    # "thread":I
    const/16 v16, 0x81

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v3, v15, v8}, Lcom/oplus/uifirst/OplusUIFirstManager;->setUxThreadValue(IILjava/lang/String;)V

    .line 417
    .end local v15    # "thread":I
    add-int/lit8 v14, v14, 0x1

    const/4 v8, 0x0

    goto :goto_4

    .line 422
    .end local v14    # "i":I
    :cond_10
    if-eqz v10, :cond_11

    .line 423
    iget-object v8, v1, Lcom/oplus/uifirst/OplusUIFirstManager;->mGlThreadManager:Lcom/oplus/uifirst/GlThreadManager;

    invoke-virtual {v8, v0, v3}, Lcom/oplus/uifirst/GlThreadManager;->moveToFore(Ljava/lang/String;I)V

    .line 426
    :cond_11
    iget-object v8, v1, Lcom/oplus/uifirst/OplusUIFirstManager;->mFBThreadManager:Lcom/oplus/uifirst/FBThreadManager;

    invoke-virtual {v8, v0, v3}, Lcom/oplus/uifirst/FBThreadManager;->moveToFore(Ljava/lang/String;I)V

    .line 427
    iget-object v8, v1, Lcom/oplus/uifirst/OplusUIFirstManager;->mTpdManager:Lcom/oplus/uifirst/TpdManager;

    invoke-virtual {v8, v0, v3}, Lcom/oplus/uifirst/TpdManager;->moveToFore(Ljava/lang/String;I)V

    .line 429
    new-array v8, v13, [I

    const/16 v13, 0x82

    const/4 v14, 0x0

    aput v13, v8, v14

    if-eqz v10, :cond_12

    move v14, v7

    :cond_12
    const/4 v13, 0x1

    aput v14, v8, v13

    move-object v6, v8

    .line 430
    invoke-virtual/range {p5 .. p5}, Landroid/util/IntArray;->toArray()[I

    move-result-object v8

    invoke-virtual {v1, v3, v4, v8, v13}, Lcom/oplus/uifirst/OplusUIFirstManager;->uxTrace(II[IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 431
    nop

    .line 460
    .end local v7    # "value":I
    :goto_5
    monitor-exit p0

    return-object v6

    .line 352
    .end local v6    # "ret":[I
    .end local v9    # "sceneValue":Ljava/lang/String;
    .end local v10    # "enableGlThreadUx":Z
    .end local v11    # "isSystemui":Z
    .end local v12    # "isLauncher":Z
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "status":I
    .end local p3    # "appPid":I
    .end local p4    # "renderThreadTid":I
    .end local p5    # "hwuiTasks":Landroid/util/IntArray;
    .end local p6    # "glThreads":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    .end local p7    # "isRemoteAnimation":Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist backfpsgoparam()V
    .locals 2

    .line 526
    sget-boolean v0, Lcom/oplus/uifirst/Utils;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 527
    const-string v0, "OplusUIFirst"

    const-string v1, "back to origin fpsgo param"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    :cond_0
    iget-object v0, p0, Lcom/oplus/uifirst/OplusUIFirstManager;->mbhropp:Ljava/lang/String;

    const-string v1, "sys/module/fbt_cpu/parameters/bhr_opp"

    invoke-virtual {p0, v1, v0}, Lcom/oplus/uifirst/OplusUIFirstManager;->writeProcNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    return-void
.end method

.method blacklist checkIsListPickPkg(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 316
    if-eqz p1, :cond_0

    const-string v0, "ro.oplus.system.camera.name"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist checkUxRemoteAnimationList(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 312
    if-eqz p1, :cond_0

    const-string v0, "com.android.launcher"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist enableUXTrace(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .line 534
    const-string v0, "/proc/sys/fbg/frame_boost_debug"

    const-string v1, "/proc/oplus_scheduler/sched_assist/debug_enabled"

    if-eqz p1, :cond_0

    .line 536
    const-string v2, "1"

    invoke-virtual {p0, v1, v2}, Lcom/oplus/uifirst/OplusUIFirstManager;->writeProcNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    invoke-virtual {p0, v0, v2}, Lcom/oplus/uifirst/OplusUIFirstManager;->writeProcNode(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 539
    :cond_0
    const-string v2, "0"

    invoke-virtual {p0, v1, v2}, Lcom/oplus/uifirst/OplusUIFirstManager;->writeProcNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    invoke-virtual {p0, v0, v2}, Lcom/oplus/uifirst/OplusUIFirstManager;->writeProcNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    :goto_0
    return-void
.end method

.method public declared-synchronized whitelist getApplicationGlThreadValue(Ljava/lang/String;)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    monitor-enter p0

    .line 478
    :try_start_0
    iget-object v0, p0, Lcom/oplus/uifirst/OplusUIFirstManager;->mGlThreadManager:Lcom/oplus/uifirst/GlThreadManager;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/oplus/uifirst/GlThreadManager;->getGlThreadValue(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 478
    .end local p0    # "this":Lcom/oplus/uifirst/OplusUIFirstManager;
    .end local p1    # "packageName":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method blacklist getFilterConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 249
    :try_start_0
    iget-object v0, p0, Lcom/oplus/uifirst/OplusUIFirstManager;->mFilterService:Lcom/oplus/filter/IDynamicFilterService;

    if-eqz v0, :cond_0

    .line 250
    invoke-interface {v0, p1, p2}, Lcom/oplus/filter/IDynamicFilterService;->getFilterTagValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 254
    :cond_0
    goto :goto_0

    .line 252
    :catch_0
    move-exception v0

    .line 255
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getfpsgoparamforreserve()V
    .locals 2

    .line 518
    sget-boolean v0, Lcom/oplus/uifirst/Utils;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 519
    const-string v0, "OplusUIFirst"

    const-string v1, "get now origin fpsgo param"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    :cond_0
    const-string v0, "sys/module/fbt_cpu/parameters/bhr_opp"

    invoke-virtual {p0, v0}, Lcom/oplus/uifirst/OplusUIFirstManager;->readProcNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/uifirst/OplusUIFirstManager;->mbhropp:Ljava/lang/String;

    .line 522
    return-void
.end method

.method public declared-synchronized whitelist handleProcessStart(Ljava/lang/String;IIZLjava/lang/String;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "pid"    # I
    .param p4, "isolated"    # Z
    .param p5, "processName"    # Ljava/lang/String;

    monitor-enter p0

    .line 499
    :try_start_0
    sget-boolean v0, Lcom/oplus/uifirst/Utils;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 500
    const-string v0, "OplusUIFirst"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleProcessStart: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    .end local p0    # "this":Lcom/oplus/uifirst/OplusUIFirstManager;
    :cond_0
    iget-object v0, p0, Lcom/oplus/uifirst/OplusUIFirstManager;->mGlThreadManager:Lcom/oplus/uifirst/GlThreadManager;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/oplus/uifirst/GlThreadManager;->handleProcessStart(Ljava/lang/String;IIZLjava/lang/String;)V

    .line 504
    iget-object v1, p0, Lcom/oplus/uifirst/OplusUIFirstManager;->mFBThreadManager:Lcom/oplus/uifirst/FBThreadManager;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/oplus/uifirst/FBThreadManager;->handleProcessStart(Ljava/lang/String;IIZLjava/lang/String;)V

    .line 505
    iget-object v2, p0, Lcom/oplus/uifirst/OplusUIFirstManager;->mTpdManager:Lcom/oplus/uifirst/TpdManager;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/oplus/uifirst/TpdManager;->handleProcessStart(Ljava/lang/String;IIZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 506
    monitor-exit p0

    return-void

    .line 498
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "uid":I
    .end local p3    # "pid":I
    .end local p4    # "isolated":Z
    .end local p5    # "processName":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist handleProcessStop(Ljava/lang/String;II)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "pid"    # I

    monitor-enter p0

    .line 546
    :try_start_0
    sget-boolean v0, Lcom/oplus/uifirst/Utils;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 547
    const-string v0, "OplusUIFirst"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleProcessStop: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    .end local p0    # "this":Lcom/oplus/uifirst/OplusUIFirstManager;
    :cond_0
    iget-object v0, p0, Lcom/oplus/uifirst/OplusUIFirstManager;->mOnTopSystemUi:Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;->mAppPid:I

    if-ne v0, p3, :cond_1

    .line 550
    iget-object v0, p0, Lcom/oplus/uifirst/OplusUIFirstManager;->mOnTopSystemUi:Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;

    iput v1, v0, Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;->mAppPid:I

    goto :goto_0

    .line 551
    :cond_1
    iget-object v0, p0, Lcom/oplus/uifirst/OplusUIFirstManager;->mAssistantScreen:Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;

    if-eqz v0, :cond_2

    iget v0, v0, Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;->mAppPid:I

    if-ne v0, p3, :cond_2

    .line 552
    iget-object v0, p0, Lcom/oplus/uifirst/OplusUIFirstManager;->mAssistantScreen:Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;

    iput v1, v0, Lcom/oplus/uifirst/OplusUIFirstManager$AppInfo;->mAppPid:I

    .line 555
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/oplus/uifirst/OplusUIFirstManager;->mGlThreadManager:Lcom/oplus/uifirst/GlThreadManager;

    invoke-virtual {v0, p1, p3}, Lcom/oplus/uifirst/GlThreadManager;->removeGlThread(Ljava/lang/String;I)V

    .line 556
    iget-object v0, p0, Lcom/oplus/uifirst/OplusUIFirstManager;->mFBThreadManager:Lcom/oplus/uifirst/FBThreadManager;

    invoke-virtual {v0, p1, p3}, Lcom/oplus/uifirst/FBThreadManager;->removeAppPid(Ljava/lang/String;I)V

    .line 557
    iget-object v0, p0, Lcom/oplus/uifirst/OplusUIFirstManager;->mTpdManager:Lcom/oplus/uifirst/TpdManager;

    invoke-virtual {v0, p1, p3}, Lcom/oplus/uifirst/TpdManager;->removePid(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 558
    monitor-exit p0

    return-void

    .line 545
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "uid":I
    .end local p3    # "pid":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method blacklist inFilter(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 239
    :try_start_0
    iget-object v0, p0, Lcom/oplus/uifirst/OplusUIFirstManager;->mFilterService:Lcom/oplus/filter/IDynamicFilterService;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/oplus/filter/IDynamicFilterService;->inFilter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    .line 240
    const/4 v0, 0x1

    return v0

    .line 243
    :cond_0
    goto :goto_0

    .line 242
    :catch_0
    move-exception v0

    .line 244
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized whitelist notifyUiSwitched(Ljava/lang/String;I)V
    .locals 4
    .param p1, "uiInfo"    # Ljava/lang/String;
    .param p2, "status"    # I

    monitor-enter p0

    .line 562
    :try_start_0
    sget-boolean v0, Lcom/oplus/uifirst/Utils;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 563
    const-string v0, "OplusUIFirst"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyUiSwitched: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    .end local p0    # "this":Lcom/oplus/uifirst/OplusUIFirstManager;
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch v1, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v1, "com.android.systemui"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v3

    goto :goto_0

    :sswitch_1
    const-string v1, "com.coloros.assistantscreen"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v2

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_3

    .line 570
    :pswitch_0
    if-lez p2, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/oplus/uifirst/OplusUIFirstManager;->mAssistantScreenShowed:Z

    .line 571
    goto :goto_3

    .line 567
    :pswitch_1
    if-lez p2, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lcom/oplus/uifirst/OplusUIFirstManager;->mSystemUiShowed:Z

    .line 568
    nop

    .line 575
    :goto_3
    invoke-direct {p0}, Lcom/oplus/uifirst/OplusUIFirstManager;->updateTopApp()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 576
    monitor-exit p0

    return-void

    .line 561
    .end local p1    # "uiInfo":Ljava/lang/String;
    .end local p2    # "status":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x26a7100a -> :sswitch_1
        0x653aae6f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist ofbBoostHint(IIIIIIJJJ)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "tid"    # I
    .param p3, "hwtid1"    # I
    .param p4, "hwtid2"    # I
    .param p5, "stage"    # I
    .param p6, "level"    # I
    .param p7, "fnumber"    # J
    .param p9, "sourceDelta"    # J
    .param p11, "targetDelta"    # J

    .line 746
    invoke-static/range {p1 .. p12}, Lcom/oplus/uifirst/OplusUIFirstManager;->nativeOfbBoostHint(IIIIIIJJJ)V

    .line 751
    return-void
.end method

.method public blacklist ofbCfgUxTask(IIIII)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "tid"    # I
    .param p3, "value"    # I
    .param p4, "depth"    # I
    .param p5, "width"    # I

    .line 773
    invoke-static {p1, p2, p3, p4, p5}, Lcom/oplus/uifirst/OplusUIFirstManager;->nativeOfbCfgUxTask(IIIII)V

    .line 774
    return-void
.end method

.method public whitelist ofbEndFrame(IIJ)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "tid"    # I
    .param p3, "fnumber"    # J

    .line 758
    invoke-static {p1, p2, p3, p4}, Lcom/oplus/uifirst/OplusUIFirstManager;->nativeOfbEndFrame(IIJ)V

    .line 759
    return-void
.end method

.method public whitelist ofbSetFps(IIJJ)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "tid"    # I
    .param p3, "fpsNs"    # J
    .param p5, "vsyncNs"    # J

    .line 737
    invoke-static/range {p1 .. p6}, Lcom/oplus/uifirst/OplusUIFirstManager;->nativeOfbSetFps(IIJJ)V

    .line 738
    return-void
.end method

.method public declared-synchronized whitelist onAppStatusChanged(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "activityName"    # Ljava/lang/String;

    monitor-enter p0

    .line 488
    :try_start_0
    sget-boolean v0, Lcom/oplus/uifirst/Utils;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 489
    const-string v0, "OplusUIFirst"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAppStatusChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    .end local p0    # "this":Lcom/oplus/uifirst/OplusUIFirstManager;
    :cond_0
    iget-object v0, p0, Lcom/oplus/uifirst/OplusUIFirstManager;->mGlThreadManager:Lcom/oplus/uifirst/GlThreadManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oplus/uifirst/GlThreadManager;->handleActivityEvent(ILjava/lang/String;Ljava/lang/String;)V

    .line 493
    iget-object v0, p0, Lcom/oplus/uifirst/OplusUIFirstManager;->mFBThreadManager:Lcom/oplus/uifirst/FBThreadManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oplus/uifirst/FBThreadManager;->handleActivityEvent(ILjava/lang/String;Ljava/lang/String;)V

    .line 494
    iget-object v0, p0, Lcom/oplus/uifirst/OplusUIFirstManager;->mTpdManager:Lcom/oplus/uifirst/TpdManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oplus/uifirst/TpdManager;->handleActivityEvent(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 495
    monitor-exit p0

    return-void

    .line 487
    .end local p1    # "status":I
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "activityName":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public whitelist readProcNode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;

    .line 281
    invoke-static {p1}, Lcom/oplus/uifirst/Utils;->readProcNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized whitelist removeApplicationGlThread(Ljava/lang/String;II)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "tid"    # I

    monitor-enter p0

    .line 472
    :try_start_0
    iget-object v0, p0, Lcom/oplus/uifirst/OplusUIFirstManager;->mGlThreadManager:Lcom/oplus/uifirst/GlThreadManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oplus/uifirst/GlThreadManager;->removeGlThread(Ljava/lang/String;II)V

    .line 473
    iget-object v0, p0, Lcom/oplus/uifirst/OplusUIFirstManager;->mFBThreadManager:Lcom/oplus/uifirst/FBThreadManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oplus/uifirst/FBThreadManager;->removeGlThread(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 474
    monitor-exit p0

    return-void

    .line 471
    .end local p0    # "this":Lcom/oplus/uifirst/OplusUIFirstManager;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "pid":I
    .end local p3    # "tid":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public whitelist serviceReady()V
    .locals 3

    .line 115
    const-string v0, "dynamic_filter"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/filter/IDynamicFilterService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/filter/IDynamicFilterService;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/uifirst/OplusUIFirstManager;->mFilterService:Lcom/oplus/filter/IDynamicFilterService;

    .line 117
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "OplusUIFirst"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/oplus/uifirst/OplusUIFirstManager;->mThread:Landroid/os/HandlerThread;

    .line 118
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 119
    new-instance v0, Lcom/oplus/uifirst/OplusUIFirstManager$UIFirstHandler;

    iget-object v1, p0, Lcom/oplus/uifirst/OplusUIFirstManager;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oplus/uifirst/OplusUIFirstManager$UIFirstHandler;-><init>(Lcom/oplus/uifirst/OplusUIFirstManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oplus/uifirst/OplusUIFirstManager;->mHandler:Landroid/os/Handler;

    .line 120
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iget-object v1, p0, Lcom/oplus/uifirst/OplusUIFirstManager;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v1

    const/16 v2, 0x81

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/oplus/uifirst/OplusUIFirstManager;->setUxThreadValue(IILjava/lang/String;)V

    .line 122
    new-instance v0, Lcom/oplus/uifirst/GlThreadManager;

    iget-object v1, p0, Lcom/oplus/uifirst/OplusUIFirstManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/oplus/uifirst/GlThreadManager;-><init>(Lcom/oplus/uifirst/OplusUIFirstManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oplus/uifirst/OplusUIFirstManager;->mGlThreadManager:Lcom/oplus/uifirst/GlThreadManager;

    .line 123
    new-instance v0, Lcom/oplus/uifirst/FBThreadManager;

    iget-object v1, p0, Lcom/oplus/uifirst/OplusUIFirstManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/oplus/uifirst/FBThreadManager;-><init>(Lcom/oplus/uifirst/OplusUIFirstManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oplus/uifirst/OplusUIFirstManager;->mFBThreadManager:Lcom/oplus/uifirst/FBThreadManager;

    .line 124
    new-instance v0, Lcom/oplus/uifirst/TpdManager;

    iget-object v1, p0, Lcom/oplus/uifirst/OplusUIFirstManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/oplus/uifirst/TpdManager;-><init>(Lcom/oplus/uifirst/OplusUIFirstManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oplus/uifirst/OplusUIFirstManager;->mTpdManager:Lcom/oplus/uifirst/TpdManager;

    .line 125
    return-void
.end method

.method public whitelist setProcessUxValue(II)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "value"    # I

    .line 766
    invoke-static {p1, p2}, Lcom/oplus/uifirst/OplusUIFirstManager;->nativeSetUxValue(II)V

    .line 767
    return-void
.end method

.method public declared-synchronized whitelist setRenderThreadTid(Ljava/lang/String;II)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "tid"    # I

    monitor-enter p0

    .line 483
    :try_start_0
    iget-object v0, p0, Lcom/oplus/uifirst/OplusUIFirstManager;->mGlThreadManager:Lcom/oplus/uifirst/GlThreadManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oplus/uifirst/GlThreadManager;->setRenderThreadTid(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 484
    monitor-exit p0

    return-void

    .line 482
    .end local p0    # "this":Lcom/oplus/uifirst/OplusUIFirstManager;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "pid":I
    .end local p3    # "tid":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public whitelist setResumedApp(Ljava/lang/String;II)V
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "pid"    # I

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fg "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "inStr":Ljava/lang/String;
    const-string v1, "com.android.launcher"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fgLauncher "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    :cond_0
    invoke-static {v0}, Landroid/os/PerformanceManager;->setSchedAssistImptTask(Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public whitelist setTaskAnimation(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V
    .locals 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "pid"    # I
    .param p4, "renderTid"    # I
    .param p5, "uxValue"    # Ljava/lang/String;
    .param p6, "flag"    # Ljava/lang/String;

    .line 170
    move-object v7, p0

    move/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p6

    const/4 v11, 0x0

    .line 171
    .local v11, "sceneValue":Ljava/lang/String;
    const/4 v1, 0x0

    .line 173
    .local v1, "processValue":I
    sget-boolean v0, Lcom/oplus/uifirst/Utils;->DEBUG:Z

    const-string v12, "OplusUIFirst"

    if-eqz v0, :cond_0

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTaskAnimation: package is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v13, p1

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " type is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " flag is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " pid is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 173
    :cond_0
    move-object/from16 v13, p1

    .line 177
    :goto_0
    const/16 v0, 0x90

    const/4 v2, 0x0

    const-wide/16 v3, 0x40

    packed-switch v8, :pswitch_data_0

    goto/16 :goto_6

    .line 219
    :pswitch_0
    :try_start_0
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move v14, v0

    .line 221
    .end local v1    # "processValue":I
    .local v14, "processValue":I
    const/16 v0, 0x80

    const-string v1, "Set Process Ux: "

    if-le v14, v0, :cond_1

    .line 222
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0, v9}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    goto :goto_1

    .line 224
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0, v9}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 227
    :goto_1
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move/from16 v2, p3

    move/from16 v3, p3

    move v4, v14

    invoke-virtual/range {v1 .. v6}, Lcom/oplus/uifirst/OplusUIFirstManager;->ofbCfgUxTask(IIIII)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 230
    move v1, v14

    goto/16 :goto_6

    .line 228
    :catch_0
    move-exception v0

    move v1, v14

    goto :goto_2

    .end local v14    # "processValue":I
    .restart local v1    # "processValue":I
    :catch_1
    move-exception v0

    .line 229
    .local v0, "e":Ljava/lang/NumberFormatException;
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set process ux value error, msg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_6

    .line 179
    :pswitch_1
    const/16 v5, 0x18

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 180
    .end local v11    # "sceneValue":Ljava/lang/String;
    .local v5, "sceneValue":Ljava/lang/String;
    const/4 v1, 0x4

    .line 181
    const-string v6, "1"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v11, "0"

    if-eqz v6, :cond_2

    .line 182
    const/16 v0, 0x88

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 183
    .end local v5    # "sceneValue":Ljava/lang/String;
    .local v0, "sceneValue":Ljava/lang/String;
    const/16 v1, 0x84

    goto :goto_3

    .line 185
    .end local v0    # "sceneValue":Ljava/lang/String;
    .restart local v5    # "sceneValue":Ljava/lang/String;
    :cond_2
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 186
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 187
    .end local v5    # "sceneValue":Ljava/lang/String;
    .restart local v0    # "sceneValue":Ljava/lang/String;
    const/16 v1, 0x84

    goto :goto_3

    .line 185
    .end local v0    # "sceneValue":Ljava/lang/String;
    .restart local v5    # "sceneValue":Ljava/lang/String;
    :cond_3
    move-object v0, v5

    .line 190
    .end local v5    # "sceneValue":Ljava/lang/String;
    .restart local v0    # "sceneValue":Ljava/lang/String;
    :goto_3
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "Task Animation"

    if-nez v5, :cond_4

    .line 191
    invoke-static {v3, v4, v6, v2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    goto :goto_4

    .line 193
    :cond_4
    invoke-static {v3, v4, v6, v2}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 196
    :goto_4
    invoke-static {v0}, Landroid/os/PerformanceManager;->setSchedAssistScene(Ljava/lang/String;)V

    .line 197
    invoke-virtual/range {p0 .. p1}, Lcom/oplus/uifirst/OplusUIFirstManager;->checkUxRemoteAnimationList(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 198
    invoke-virtual {p0, v9, v1}, Lcom/oplus/uifirst/OplusUIFirstManager;->setProcessUxValue(II)V

    .line 235
    :cond_5
    move-object v11, v0

    goto :goto_6

    .line 202
    .end local v0    # "sceneValue":Ljava/lang/String;
    .restart local v11    # "sceneValue":Ljava/lang/String;
    :pswitch_2
    const/16 v5, 0x10

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 204
    .end local v11    # "sceneValue":Ljava/lang/String;
    .restart local v5    # "sceneValue":Ljava/lang/String;
    const-string v6, "4"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v11, "Task SI Animation"

    if-eqz v6, :cond_7

    .line 205
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 206
    .end local v5    # "sceneValue":Ljava/lang/String;
    .restart local v0    # "sceneValue":Ljava/lang/String;
    const/16 v1, 0x84

    .line 207
    invoke-virtual/range {p0 .. p1}, Lcom/oplus/uifirst/OplusUIFirstManager;->checkUxRemoteAnimationList(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 208
    invoke-virtual {p0, v9, v1}, Lcom/oplus/uifirst/OplusUIFirstManager;->setProcessUxValue(II)V

    .line 210
    :cond_6
    invoke-static {v3, v4, v11, v2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    move-object v11, v0

    goto :goto_5

    .line 212
    .end local v0    # "sceneValue":Ljava/lang/String;
    .restart local v5    # "sceneValue":Ljava/lang/String;
    :cond_7
    invoke-static {v3, v4, v11, v2}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    move-object v11, v5

    .line 215
    .end local v5    # "sceneValue":Ljava/lang/String;
    .restart local v11    # "sceneValue":Ljava/lang/String;
    :goto_5
    invoke-static {v11}, Landroid/os/PerformanceManager;->setSchedAssistScene(Ljava/lang/String;)V

    .line 216
    nop

    .line 235
    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist setTaskAsRemoteAnimationUx(IILandroid/util/IntArray;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "appPid"    # I
    .param p2, "renderThreadTid"    # I
    .param p3, "hwuiTasks"    # Landroid/util/IntArray;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "isRemoteAnimation"    # Z

    .line 346
    return-void
.end method

.method public whitelist setUxThreadValue(IILjava/lang/String;)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "tid"    # I
    .param p3, "value"    # Ljava/lang/String;

    .line 260
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 264
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/oplus/uifirst/Utils;->setUxThreadValue(IILjava/lang/String;)V

    .line 265
    return-void

    .line 261
    :cond_1
    :goto_0
    return-void
.end method

.method public whitelist setfpsgoparamforperformance()V
    .locals 2

    .line 510
    sget-boolean v0, Lcom/oplus/uifirst/Utils;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 511
    const-string v0, "OplusUIFirst"

    const-string v1, "set fps go para fo performance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_0
    const-string v0, "sys/module/fbt_cpu/parameters/bhr_opp"

    const-string v1, "15"

    invoke-virtual {p0, v0, v1}, Lcom/oplus/uifirst/OplusUIFirstManager;->writeProcNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    return-void
.end method

.method blacklist uxTrace(II[IZ)V
    .locals 7
    .param p1, "appPid"    # I
    .param p2, "renderThreadTid"    # I
    .param p3, "threads"    # [I
    .param p4, "boost"    # Z

    .line 285
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 286
    return-void

    .line 289
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 290
    .local v2, "tids":Ljava/lang/StringBuilder;
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 292
    const-string v3, ","

    .line 293
    .local v3, "comma":Ljava/lang/String;
    const-string v4, ","

    if-lez p2, :cond_1

    .line 294
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 296
    :cond_1
    array-length v5, p3

    if-lez v5, :cond_2

    .line 297
    invoke-static {p3}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v5

    new-instance v6, Lcom/oplus/uifirst/OplusUIFirstManager$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lcom/oplus/uifirst/OplusUIFirstManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v5, v6}, Ljava/util/stream/IntStream;->filter(Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;

    move-result-object v5

    new-instance v6, Lcom/oplus/uifirst/OplusUIFirstManager$$ExternalSyntheticLambda1;

    invoke-direct {v6}, Lcom/oplus/uifirst/OplusUIFirstManager$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v5, v6}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object v5

    .line 298
    invoke-static {v4}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 299
    .local v5, "hwuiTasks":Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .end local v5    # "hwuiTasks":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 303
    .local v4, "tidsStr":Ljava/lang/String;
    const-string v5, "UX Boost: "

    if-eqz p4, :cond_3

    .line 304
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v1, v5, p1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    goto :goto_0

    .line 306
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v1, v5, p1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 308
    :goto_0
    return-void
.end method

.method public whitelist writeProcNode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .line 271
    if-eqz p2, :cond_0

    .line 272
    invoke-static {p1, p2}, Lcom/oplus/uifirst/Utils;->writeProcNode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 277
    :cond_0
    return-void
.end method
