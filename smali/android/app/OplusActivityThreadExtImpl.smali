.class public Landroid/app/OplusActivityThreadExtImpl;
.super Ljava/lang/Object;
.source "OplusActivityThreadExtImpl.java"

# interfaces
.implements Landroid/app/IActivityThreadExt;


# static fields
.field private static final blacklist LAUNCHER_PACKAGE_NAME:Ljava/lang/String; = "com.android.launcher"

.field private static final blacklist MIRAGE_ID_BASE:I = 0x2710

.field private static final blacklist OSENSE_TIMEOUT:I = 0x258

.field public static blacklist sDoFrameOptEnabled:Z = false

.field private static blacklist sIs64Bit:Z = false

.field private static blacklist sPid:I = 0x0

.field private static final blacklist sSYSTEM_UI_PKG:Ljava/lang/String; = "com.android.systemui"

.field private static blacklist sUid:I

.field private static blacklist sVersionCode:J


# instance fields
.field private blacklist mBase:Landroid/app/ActivityThread;

.field private blacklist mExecuteTransaction:Z

.field private blacklist mFreezeDuration:J

.field private blacklist mFreezeEnable:Z

.field private blacklist mIsTopApp:Z

.field private blacklist mIsZoomSupportMultiWindow:Ljava/lang/Boolean;

.field private blacklist mLastFreezeTime:J

.field private blacklist mLaunchActivityStartTime:J

.field private blacklist mOnCreateState:Z

.field private blacklist mPauseActivityStartTime:J

.field private blacklist mResumeActivityStartTime:J

.field private blacklist mShouldCallActivityConfigChange:Z

.field private blacklist mShouldReportExtraConfigChange:Z

.field private blacklist mSkipFramesCnt:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 91
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/OplusActivityThreadExtImpl;->sDoFrameOptEnabled:Z

    .line 98
    const/4 v1, -0x1

    sput v1, Landroid/app/OplusActivityThreadExtImpl;->sUid:I

    .line 99
    sput v1, Landroid/app/OplusActivityThreadExtImpl;->sPid:I

    .line 100
    sput-boolean v0, Landroid/app/OplusActivityThreadExtImpl;->sIs64Bit:Z

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 5
    .param p1, "base"    # Ljava/lang/Object;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/OplusActivityThreadExtImpl;->mShouldCallActivityConfigChange:Z

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/OplusActivityThreadExtImpl;->mShouldReportExtraConfigChange:Z

    .line 107
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/app/OplusActivityThreadExtImpl;->mLaunchActivityStartTime:J

    .line 108
    iput-wide v1, p0, Landroid/app/OplusActivityThreadExtImpl;->mResumeActivityStartTime:J

    .line 109
    iput-wide v1, p0, Landroid/app/OplusActivityThreadExtImpl;->mPauseActivityStartTime:J

    .line 110
    iput-boolean v0, p0, Landroid/app/OplusActivityThreadExtImpl;->mOnCreateState:Z

    .line 113
    iput-boolean v0, p0, Landroid/app/OplusActivityThreadExtImpl;->mIsTopApp:Z

    .line 114
    iput-boolean v0, p0, Landroid/app/OplusActivityThreadExtImpl;->mExecuteTransaction:Z

    .line 119
    const-string v3, "persist.sys.hans.skipframe.enable"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/OplusActivityThreadExtImpl;->mFreezeEnable:Z

    .line 120
    const-string v0, "persist.sys.hans.skipframe.count"

    const/16 v3, 0x1e

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v3, v0

    iput-wide v3, p0, Landroid/app/OplusActivityThreadExtImpl;->mSkipFramesCnt:J

    .line 121
    const-string v0, "persist.sys.hans.skipframe.f_duration"

    const-wide/16 v3, 0x7530

    invoke-static {v0, v3, v4}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/app/OplusActivityThreadExtImpl;->mFreezeDuration:J

    .line 122
    iput-wide v1, p0, Landroid/app/OplusActivityThreadExtImpl;->mLastFreezeTime:J

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/OplusActivityThreadExtImpl;->mIsZoomSupportMultiWindow:Ljava/lang/Boolean;

    .line 133
    move-object v0, p1

    check-cast v0, Landroid/app/ActivityThread;

    iput-object v0, p0, Landroid/app/OplusActivityThreadExtImpl;->mBase:Landroid/app/ActivityThread;

    .line 134
    return-void
.end method

.method private blacklist getAutoLayoutManager()Landroid/view/autolayout/IOplusAutoLayoutManager;
    .locals 2

    .line 527
    sget-object v0, Landroid/view/autolayout/IOplusAutoLayoutManager;->mDefault:Landroid/view/autolayout/IOplusAutoLayoutManager;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Landroid/view/autolayout/IOplusAutoLayoutManager;

    return-object v0
.end method

.method public static blacklist getPackageVersionCode()J
    .locals 2

    .line 146
    sget-wide v0, Landroid/app/OplusActivityThreadExtImpl;->sVersionCode:J

    return-wide v0
.end method

.method public static blacklist getPid()I
    .locals 1

    .line 154
    sget v0, Landroid/app/OplusActivityThreadExtImpl;->sPid:I

    return v0
.end method

.method private blacklist getRGBNormalizeManager()Landroid/view/rgbnormalize/IOplusRGBNormalizeManager;
    .locals 2

    .line 532
    sget-object v0, Landroid/view/rgbnormalize/IOplusRGBNormalizeManager;->DEFAULT:Landroid/view/rgbnormalize/IOplusRGBNormalizeManager;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Landroid/view/rgbnormalize/IOplusRGBNormalizeManager;

    return-object v0
.end method

.method public static blacklist getUid()I
    .locals 1

    .line 150
    sget v0, Landroid/app/OplusActivityThreadExtImpl;->sUid:I

    return v0
.end method

.method private blacklist initVersionInfo(Landroid/content/pm/ApplicationInfo;)V
    .locals 2
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;

    .line 139
    iget-wide v0, p1, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    sput-wide v0, Landroid/app/OplusActivityThreadExtImpl;->sVersionCode:J

    .line 140
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    sput v0, Landroid/app/OplusActivityThreadExtImpl;->sUid:I

    .line 141
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Landroid/app/OplusActivityThreadExtImpl;->sPid:I

    .line 142
    invoke-static {}, Landroid/os/Process;->is64Bit()Z

    move-result v0

    sput-boolean v0, Landroid/app/OplusActivityThreadExtImpl;->sIs64Bit:Z

    .line 143
    return-void
.end method

.method public static blacklist is64Bit()Z
    .locals 1

    .line 158
    sget-boolean v0, Landroid/app/OplusActivityThreadExtImpl;->sIs64Bit:Z

    return v0
.end method

.method static synthetic blacklist lambda$onTransact$0(I)V
    .locals 3
    .param p0, "level"    # I

    .line 335
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowManagerGlobal;->getWrapper()Landroid/view/IWindowManagerGlobalWrapper;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/IWindowManagerGlobalWrapper;->trimMemoryIfAllowed(I)Z

    move-result v0

    .line 336
    .local v0, "success":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "do gfx trim "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v0, :cond_0

    const-string v2, " success"

    goto :goto_0

    :cond_0
    const-string v2, " failed"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityThread"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    return-void
.end method

.method private blacklist setZoomSensorState(Z)V
    .locals 2
    .param p1, "isZoom"    # Z

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setZoomSensorState: isZoom "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityThread"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    sput-boolean p1, Landroid/hardware/SystemSensorManagerExtImpl;->sInZoomWindow:Z

    .line 349
    return-void
.end method


# virtual methods
.method public blacklist asyncReportFrames(J)V
    .locals 6
    .param p1, "skippedFrames"    # J

    .line 427
    iget-boolean v0, p0, Landroid/app/OplusActivityThreadExtImpl;->mFreezeEnable:Z

    if-nez v0, :cond_0

    .line 428
    return-void

    .line 430
    :cond_0
    iget-wide v0, p0, Landroid/app/OplusActivityThreadExtImpl;->mSkipFramesCnt:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 431
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 432
    .local v0, "curTime":J
    iget-wide v2, p0, Landroid/app/OplusActivityThreadExtImpl;->mLastFreezeTime:J

    sub-long v2, v0, v2

    iget-wide v4, p0, Landroid/app/OplusActivityThreadExtImpl;->mFreezeDuration:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 434
    :try_start_0
    invoke-static {}, Landroid/app/OplusActivityManager;->getInstance()Landroid/app/OplusActivityManager;

    move-result-object v2

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v3

    long-to-int v4, p1

    invoke-virtual {v2, v3, v4}, Landroid/app/OplusActivityManager;->asyncReportFrames(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    goto :goto_0

    .line 435
    :catch_0
    move-exception v2

    .line 436
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "ActivityThread"

    const-string v4, "asyncReportFrames ERROR"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    iput-wide v0, p0, Landroid/app/OplusActivityThreadExtImpl;->mLastFreezeTime:J

    .line 441
    .end local v0    # "curTime":J
    :cond_1
    return-void
.end method

.method public blacklist changeToSpecialModel(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 186
    new-instance v0, Lcom/oplus/uamodel/OplusModelUtil;

    invoke-direct {v0}, Lcom/oplus/uamodel/OplusModelUtil;-><init>()V

    .line 187
    .local v0, "oplusModel":Lcom/oplus/uamodel/OplusModelUtil;
    invoke-virtual {v0, p1}, Lcom/oplus/uamodel/OplusModelUtil;->setModelOk(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    invoke-virtual {v0}, Lcom/oplus/uamodel/OplusModelUtil;->changeToSpecialModel()V

    .line 190
    :cond_0
    return-void
.end method

.method public blacklist checkOplusExSystemService(ZLandroid/content/Intent;)Z
    .locals 1
    .param p1, "systemThread"    # Z
    .param p2, "intent"    # Landroid/content/Intent;

    .line 199
    invoke-static {}, Landroid/app/OplusExSystemServiceHelper;->getInstance()Landroid/app/OplusExSystemServiceHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/OplusExSystemServiceHelper;->checkOplusExSystemService(ZLandroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public blacklist checkOplusExSystemService(ZLjava/lang/String;)Z
    .locals 1
    .param p1, "systemThread"    # Z
    .param p2, "className"    # Ljava/lang/String;

    .line 194
    invoke-static {}, Landroid/app/OplusExSystemServiceHelper;->getInstance()Landroid/app/OplusExSystemServiceHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/OplusExSystemServiceHelper;->checkOplusExSystemService(ZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableDoFrameOpt(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 213
    sput-boolean p1, Landroid/app/OplusActivityThreadExtImpl;->sDoFrameOptEnabled:Z

    .line 214
    return-void
.end method

.method public blacklist enableDynamicalLogIfNeed()V
    .locals 0

    .line 284
    invoke-static {}, Landroid/app/ActivityDynamicLogHelper;->enableDynamicalLogIfNeed()V

    .line 285
    return-void
.end method

.method public blacklist excludeExtConfigDiff(I)V
    .locals 1
    .param p1, "diff"    # I

    .line 492
    const/high16 v0, 0x10000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    .line 493
    const v0, -0x10000001

    and-int/2addr p1, v0

    .line 495
    :cond_0
    return-void
.end method

.method public blacklist getShouldCallActivityConfigChangeState(Z)Z
    .locals 2
    .param p1, "shouldReportChange"    # Z

    .line 204
    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-boolean v1, p0, Landroid/app/OplusActivityThreadExtImpl;->mShouldReportExtraConfigChange:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 205
    .local v1, "configChange":Z
    :goto_1
    iput-boolean v0, p0, Landroid/app/OplusActivityThreadExtImpl;->mShouldReportExtraConfigChange:Z

    .line 206
    return v1
.end method

.method public blacklist handleLaunchActivity()V
    .locals 4

    .line 254
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/OplusActivityThreadExtImpl;->mLaunchActivityStartTime:J

    .line 257
    :try_start_0
    invoke-static {}, Landroid/app/OplusActivityManager;->getInstance()Landroid/app/OplusActivityManager;

    move-result-object v0

    const-string v1, ""

    const-string v2, "OSENSE_ACTION_ACTIVITY_START"

    const/16 v3, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/OplusActivityManager;->setSceneActionTransit(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    goto :goto_0

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityThread"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public blacklist handlePauseActivity()V
    .locals 2

    .line 370
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/OplusActivityThreadExtImpl;->mPauseActivityStartTime:J

    .line 371
    return-void
.end method

.method public blacklist handleResumeActivity()V
    .locals 2

    .line 365
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/OplusActivityThreadExtImpl;->mResumeActivityStartTime:J

    .line 366
    return-void
.end method

.method public final blacklist hasImportMessage()Z
    .locals 1

    .line 353
    iget-boolean v0, p0, Landroid/app/OplusActivityThreadExtImpl;->mExecuteTransaction:Z

    return v0
.end method

.method public blacklist hookConfigurationChangedActivity(Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "configuration"    # Landroid/content/res/Configuration;

    .line 524
    return-void
.end method

.method public blacklist hookHandleBindApplication(Landroid/app/ActivityThread$AppBindData;Landroid/content/Context;)V
    .locals 2
    .param p1, "data"    # Landroid/app/ActivityThread$AppBindData;
    .param p2, "context"    # Landroid/content/Context;

    .line 513
    invoke-direct {p0}, Landroid/app/OplusActivityThreadExtImpl;->getRGBNormalizeManager()Landroid/view/rgbnormalize/IOplusRGBNormalizeManager;

    move-result-object v0

    iget-object v1, p1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v0, v1}, Landroid/view/rgbnormalize/IOplusRGBNormalizeManager;->hookHandleBindApplication(Landroid/content/pm/ApplicationInfo;)V

    .line 514
    return-void
.end method

.method public blacklist hookPerformLaunchActivity(Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .param p3, "configuration"    # Landroid/content/res/Configuration;

    .line 507
    invoke-direct {p0}, Landroid/app/OplusActivityThreadExtImpl;->getAutoLayoutManager()Landroid/view/autolayout/IOplusAutoLayoutManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/autolayout/IOplusAutoLayoutManager;->setAutoLayoutPackageName(Ljava/lang/String;)V

    .line 508
    invoke-direct {p0}, Landroid/app/OplusActivityThreadExtImpl;->getRGBNormalizeManager()Landroid/view/rgbnormalize/IOplusRGBNormalizeManager;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/view/rgbnormalize/IOplusRGBNormalizeManager;->hookPerformLaunchActivity(Landroid/content/pm/ActivityInfo;)V

    .line 509
    return-void
.end method

.method public blacklist hookPerformResumeActivity(Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "configuration"    # Landroid/content/res/Configuration;

    .line 518
    invoke-direct {p0}, Landroid/app/OplusActivityThreadExtImpl;->getRGBNormalizeManager()Landroid/view/rgbnormalize/IOplusRGBNormalizeManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/rgbnormalize/IOplusRGBNormalizeManager;->hookPerformResumeActivity(Landroid/content/pm/ActivityInfo;)V

    .line 519
    return-void
.end method

.method public blacklist initCompactApplicationInfo(Landroid/content/pm/ApplicationInfo;)V
    .locals 2
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;

    .line 448
    sget-object v0, Landroid/app/IOplusCompactWindowAppManager;->DEFAULT:Landroid/app/IOplusCompactWindowAppManager;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Landroid/app/IOplusCompactWindowAppManager;

    invoke-interface {v0, p1}, Landroid/app/IOplusCompactWindowAppManager;->initCompactApplicationInfo(Landroid/content/pm/ApplicationInfo;)V

    .line 449
    return-void
.end method

.method public blacklist initDisplayCompat(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)V
    .locals 2
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "ci"    # Landroid/content/res/CompatibilityInfo;

    .line 298
    sget-object v0, Lcom/oplus/screenmode/IOplusAutoResolutionFeature;->DEFAULT:Lcom/oplus/screenmode/IOplusAutoResolutionFeature;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Lcom/oplus/screenmode/IOplusAutoResolutionFeature;

    invoke-interface {v0, p1, p2}, Lcom/oplus/screenmode/IOplusAutoResolutionFeature;->initDisplayCompat(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)V

    .line 299
    return-void
.end method

.method public blacklist isTopApp()Z
    .locals 1

    .line 314
    iget-boolean v0, p0, Landroid/app/OplusActivityThreadExtImpl;->mIsTopApp:Z

    return v0
.end method

.method public blacklist isWindowModeChanged(IILjava/lang/String;)Z
    .locals 4
    .param p1, "currentMode"    # I
    .param p2, "newMode"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 231
    const/4 v0, 0x0

    .line 235
    .local v0, "windowModeChanged":Z
    iget-object v1, p0, Landroid/app/OplusActivityThreadExtImpl;->mBase:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 236
    const v2, 0xc070048

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 235
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 237
    .local v1, "zoomPackageList":Ljava/util/List;
    if-eqz v1, :cond_0

    invoke-interface {v1, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 238
    const-string v2, "ActivityThread"

    const-string v3, "Avoid updating and notifying config for these zoom window packages "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    return v0

    .line 241
    :cond_0
    const/16 v2, 0x64

    if-ne p1, v2, :cond_1

    if-eq p2, v2, :cond_1

    .line 243
    const/4 v0, 0x1

    .line 245
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/app/OplusActivityThreadExtImpl;->mShouldReportExtraConfigChange:Z

    .line 247
    :cond_1
    return v0
.end method

.method public blacklist isZoomSupportMultiWindow(Landroid/app/Activity;I)Z
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "windowingMode"    # I

    .line 539
    const/16 v0, 0x64

    if-eq p2, v0, :cond_0

    .line 540
    const/4 v0, 0x0

    return v0

    .line 543
    :cond_0
    iget-object v0, p0, Landroid/app/OplusActivityThreadExtImpl;->mIsZoomSupportMultiWindow:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 544
    const-string v0, "com.tencent.mm"

    .line 545
    .local v0, "zoomMultiPkg":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.tencent.mm"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroid/app/OplusActivityThreadExtImpl;->mIsZoomSupportMultiWindow:Ljava/lang/Boolean;

    .line 548
    .end local v0    # "zoomMultiPkg":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Landroid/app/OplusActivityThreadExtImpl;->mIsZoomSupportMultiWindow:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist onDisplayChanged(I)V
    .locals 2
    .param p1, "displayId"    # I

    .line 304
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.systemui"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x7e4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2710

    if-lt p1, v0, :cond_1

    .line 305
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Landroid/hardware/SystemSensorManager;->mInMirage:Z

    goto :goto_0

    .line 307
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Landroid/hardware/SystemSensorManager;->mInMirage:Z

    .line 309
    :goto_0
    return-void
.end method

.method public blacklist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I

    .line 324
    const/4 v0, 0x0

    const-string v1, "android.app.IApplicationThread"

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 341
    return v0

    .line 332
    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 333
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 334
    .local v0, "level":I
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v1

    new-instance v3, Landroid/app/OplusActivityThreadExtImpl$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Landroid/app/OplusActivityThreadExtImpl$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 338
    return v2

    .line 326
    .end local v0    # "level":I
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v2, v1, :cond_0

    move v0, v2

    .line 328
    .local v0, "on":Z
    :cond_0
    invoke-direct {p0, v0}, Landroid/app/OplusActivityThreadExtImpl;->setZoomSensorState(Z)V

    .line 329
    return v2

    :pswitch_data_0
    .packed-switch 0x2715
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist reportBindApplicationFinishedInActivityThread(Landroid/app/Application;Landroid/content/pm/ApplicationInfo;)V
    .locals 4
    .param p1, "app"    # Landroid/app/Application;
    .param p2, "ai"    # Landroid/content/pm/ApplicationInfo;

    .line 266
    :try_start_0
    invoke-static {}, Landroid/app/OplusActivityManager;->getInstance()Landroid/app/OplusActivityManager;

    move-result-object v0

    .line 267
    invoke-virtual {p1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/Application;->getUserId()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    .line 266
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/OplusActivityManager;->reportBindApplicationFinished(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    goto :goto_0

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityThread"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    invoke-direct {p0, p2}, Landroid/app/OplusActivityThreadExtImpl;->initVersionInfo(Landroid/content/pm/ApplicationInfo;)V

    .line 275
    return-void
.end method

.method public blacklist resetOptState()V
    .locals 2

    .line 407
    invoke-static {}, Landroid/view/OplusSlideAnimOptHelper;->isCurrentSceneEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    invoke-static {}, Landroid/view/OplusSlideAnimOptHelper;->getInstance()Landroid/view/OplusSlideAnimOptHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/OplusSlideAnimOptHelper;->updateCurrentActivity(Ljava/lang/String;)V

    .line 409
    invoke-static {}, Landroid/view/OplusSlideAnimOptHelper;->getInstance()Landroid/view/OplusSlideAnimOptHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/OplusSlideAnimOptHelper;->resetOptState()V

    .line 413
    :cond_0
    invoke-static {}, Landroid/view/Choreographer;->getMainThreadInstance()Landroid/view/Choreographer;

    move-result-object v0

    .line 414
    .local v0, "choreographer":Landroid/view/Choreographer;
    if-eqz v0, :cond_1

    .line 415
    iget-object v1, v0, Landroid/view/Choreographer;->mChoreographerExt:Landroid/view/IChoreographerExt;

    if-eqz v1, :cond_1

    .line 416
    iget-object v1, v0, Landroid/view/Choreographer;->mChoreographerExt:Landroid/view/IChoreographerExt;

    invoke-interface {v1}, Landroid/view/IChoreographerExt;->makePauseActivityEnd()V

    .line 420
    :cond_1
    return-void
.end method

.method public blacklist setDynamicalLogConfig(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 289
    .local p1, "configs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/app/AppDynamicalLogEnabler;->getInstance()Landroid/app/AppDynamicalLogEnabler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AppDynamicalLogEnabler;->setDynamicalLogConfig(Ljava/util/List;)V

    .line 290
    return-void
.end method

.method public blacklist setDynamicalLogEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 279
    invoke-static {p1}, Landroid/app/ActivityDynamicLogHelper;->setDynamicalLogEnable(Z)V

    .line 280
    return-void
.end method

.method public blacklist setImportMessage(Z)V
    .locals 0
    .param p1, "isFirstFrame"    # Z

    .line 357
    iput-boolean p1, p0, Landroid/app/OplusActivityThreadExtImpl;->mExecuteTransaction:Z

    .line 358
    return-void
.end method

.method public blacklist setLifecycleState(I)V
    .locals 11
    .param p1, "state"    # I

    .line 375
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 376
    iput-boolean v0, p0, Landroid/app/OplusActivityThreadExtImpl;->mOnCreateState:Z

    .line 377
    return-void

    .line 379
    :cond_0
    invoke-static {}, Landroid/view/Choreographer;->getMainThreadInstance()Landroid/view/Choreographer;

    move-result-object v0

    if-nez v0, :cond_1

    .line 382
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    .line 384
    :cond_1
    invoke-static {}, Landroid/view/Choreographer;->getMainThreadInstance()Landroid/view/Choreographer;

    move-result-object v0

    .line 385
    .local v0, "choreographer":Landroid/view/Choreographer;
    if-eqz v0, :cond_2

    .line 386
    iget-object v1, v0, Landroid/view/Choreographer;->mChoreographerExt:Landroid/view/IChoreographerExt;

    if-eqz v1, :cond_2

    .line 387
    iget-object v2, v0, Landroid/view/Choreographer;->mChoreographerExt:Landroid/view/IChoreographerExt;

    iget-boolean v4, p0, Landroid/app/OplusActivityThreadExtImpl;->mOnCreateState:Z

    iget-wide v5, p0, Landroid/app/OplusActivityThreadExtImpl;->mLaunchActivityStartTime:J

    iget-wide v7, p0, Landroid/app/OplusActivityThreadExtImpl;->mResumeActivityStartTime:J

    iget-wide v9, p0, Landroid/app/OplusActivityThreadExtImpl;->mPauseActivityStartTime:J

    move v3, p1

    invoke-interface/range {v2 .. v10}, Landroid/view/IChoreographerExt;->setLifecycleState(IZJJJ)V

    .line 389
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/OplusActivityThreadExtImpl;->mOnCreateState:Z

    .line 390
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/app/OplusActivityThreadExtImpl;->mLaunchActivityStartTime:J

    .line 391
    iput-wide v1, p0, Landroid/app/OplusActivityThreadExtImpl;->mResumeActivityStartTime:J

    .line 392
    iput-wide v1, p0, Landroid/app/OplusActivityThreadExtImpl;->mPauseActivityStartTime:J

    .line 395
    :cond_2
    return-void
.end method

.method public blacklist setTopApp(Z)V
    .locals 0
    .param p1, "topApp"    # Z

    .line 318
    iput-boolean p1, p0, Landroid/app/OplusActivityThreadExtImpl;->mIsTopApp:Z

    .line 319
    return-void
.end method

.method public blacklist shouldConfigChangeByMultiSystem(ZIILjava/lang/String;)Z
    .locals 2
    .param p1, "change"    # Z
    .param p2, "realConfigChange"    # I
    .param p3, "diff"    # I
    .param p4, "pkgName"    # Ljava/lang/String;

    .line 220
    if-nez p1, :cond_0

    and-int v0, p2, p3

    if-eqz v0, :cond_0

    .line 221
    const-string v0, "com.android.launcher"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    const-string v0, "ActivityThread"

    const-string v1, "performActivityConfigurationChanged no relaunch need reportChange"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/OplusActivityThreadExtImpl;->mShouldReportExtraConfigChange:Z

    .line 224
    return v0

    .line 226
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist shouldInterceptConfigForSplit(Landroid/os/IBinder;Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/Configuration;ZLjava/lang/Boolean;)Z
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "config"    # Landroid/content/res/Configuration;
    .param p3, "newConfig"    # Landroid/content/res/Configuration;
    .param p4, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p5, "displayChanged"    # Z
    .param p6, "configChanged"    # Ljava/lang/Boolean;

    .line 456
    const/4 v0, 0x0

    if-eqz p6, :cond_0

    invoke-static {}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getInstance()Lcom/oplus/splitscreen/OplusSplitScreenManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->isInSplitScreenMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 457
    return v0

    .line 460
    :cond_0
    if-nez p2, :cond_1

    .line 461
    return v0

    .line 464
    :cond_1
    if-eqz p5, :cond_2

    .line 465
    return v0

    .line 468
    :cond_2
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v1

    invoke-virtual {v1, p1, p4}, Landroid/app/ResourcesManager;->isSameResourcesOverrideConfig(Landroid/os/IBinder;Landroid/content/res/Configuration;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 469
    return v0

    .line 472
    :cond_3
    const/4 v1, 0x1

    .line 473
    .local v1, "rotationChanged":Z
    iget-object v2, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getDisplayRotation()I

    move-result v2

    .line 474
    .local v2, "origRot":I
    iget-object v3, p3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getDisplayRotation()I

    move-result v3

    .line 476
    .local v3, "newRot":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    if-ne v2, v4, :cond_5

    .line 478
    :cond_4
    const/4 v1, 0x0

    .line 480
    :cond_5
    const/4 v4, 0x1

    if-eq v2, v3, :cond_6

    move v5, v4

    goto :goto_0

    :cond_6
    move v5, v0

    :goto_0
    move v1, v5

    .line 482
    if-nez v1, :cond_7

    invoke-virtual {p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_7

    .line 483
    return v4

    .line 485
    :cond_7
    return v0
.end method

.method public blacklist shouldInterceptConfigRelaunch(ILandroid/content/res/Configuration;)V
    .locals 2
    .param p1, "diff"    # I
    .param p2, "configuration"    # Landroid/content/res/Configuration;

    .line 164
    sget-object v0, Lcom/oplus/darkmode/IOplusDarkModeManager;->DEFAULT:Lcom/oplus/darkmode/IOplusDarkModeManager;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Lcom/oplus/darkmode/IOplusDarkModeManager;

    invoke-interface {v0, p1, p2}, Lcom/oplus/darkmode/IOplusDarkModeManager;->shouldInterceptConfigRelaunch(ILandroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/OplusActivityThreadExtImpl;->mShouldCallActivityConfigChange:Z

    .line 167
    :cond_0
    return-void
.end method

.method public blacklist shouldReportExtraConfig(Landroid/content/pm/ActivityInfo;Landroid/content/pm/IPackageManager;Landroid/content/res/Configuration;Landroid/content/res/Configuration;Z)Z
    .locals 5
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "pm"    # Landroid/content/pm/IPackageManager;
    .param p3, "currentConfig"    # Landroid/content/res/Configuration;
    .param p4, "newConfig"    # Landroid/content/res/Configuration;
    .param p5, "shouldReportChange"    # Z

    .line 172
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getRealConfigChanged()I

    move-result v0

    .line 173
    .local v0, "realChanges":I
    invoke-virtual {p3, p4}, Landroid/content/res/Configuration;->diffPublicOnly(Landroid/content/res/Configuration;)I

    move-result v1

    .line 174
    .local v1, "extraDiff":I
    if-eqz p5, :cond_0

    .line 175
    invoke-virtual {p0, v1, p3}, Landroid/app/OplusActivityThreadExtImpl;->shouldInterceptConfigRelaunch(ILandroid/content/res/Configuration;)V

    .line 177
    :cond_0
    const/4 v2, 0x0

    if-nez p5, :cond_2

    sget-object v3, Landroid/content/res/IOplusThemeManager;->DEFAULT:Landroid/content/res/IOplusThemeManager;

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v3

    check-cast v3, Landroid/content/res/IOplusThemeManager;

    invoke-interface {v3, v1, v0}, Landroid/content/res/IOplusThemeManager;->shouldReportExtraConfig(II)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Landroid/content/res/IOplusThemeManager;->DEFAULT:Landroid/content/res/IOplusThemeManager;

    new-array v4, v2, [Ljava/lang/Object;

    .line 178
    invoke-static {v3, v4}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v3

    check-cast v3, Landroid/content/res/IOplusThemeManager;

    invoke-interface {v3, p1, p2, p4, v1}, Landroid/content/res/IOplusThemeManager;->interceptOplusConfigChange(Landroid/content/pm/ActivityInfo;Landroid/content/pm/IPackageManager;Landroid/content/res/Configuration;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 179
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/app/OplusActivityThreadExtImpl;->mShouldReportExtraConfigChange:Z

    .line 181
    :cond_2
    return v2
.end method

.method public blacklist shouldSendConfigration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/os/IBinder;)Z
    .locals 1
    .param p1, "currentConfig"    # Landroid/content/res/Configuration;
    .param p2, "newConfig"    # Landroid/content/res/Configuration;
    .param p3, "token"    # Landroid/os/IBinder;

    .line 500
    invoke-static {}, Lcom/oplus/compactwindow/OplusCompactWindowManager;->getInstance()Lcom/oplus/compactwindow/OplusCompactWindowManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/oplus/compactwindow/OplusCompactWindowManager;->shouldSendConfigration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method public blacklist updateCurrentActivity(Ljava/lang/String;)V
    .locals 1
    .param p1, "activityName"    # Ljava/lang/String;

    .line 401
    invoke-static {}, Landroid/view/OplusSlideAnimOptHelper;->isOptEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    invoke-static {}, Landroid/view/OplusSlideAnimOptHelper;->getInstance()Landroid/view/OplusSlideAnimOptHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/OplusSlideAnimOptHelper;->updateCurrentActivity(Ljava/lang/String;)V

    .line 404
    :cond_0
    return-void
.end method
