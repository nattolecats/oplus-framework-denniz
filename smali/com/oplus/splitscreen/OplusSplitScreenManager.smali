.class public Lcom/oplus/splitscreen/OplusSplitScreenManager;
.super Ljava/lang/Object;
.source "OplusSplitScreenManager.java"


# static fields
.field private static final blacklist DEBUG:Z

.field public static final whitelist DIVIDER_INSETS_FOR_FOLDER:I = 0x15

.field public static final whitelist EVENT_DISMISS_SPLIT_SCREEN:Ljava/lang/String; = "dismissSplitScreen"

.field private static final blacklist EVENT_ID_SPLIT_SCREEN_LAUNCH:Ljava/lang/String; = "split_screen_launch"

.field public static final whitelist EVENT_SPLIT_SCREEN_MINIMIZED_CHANGED:Ljava/lang/String; = "splitScreenMinimizedChange"

.field public static final whitelist EVENT_SPLIT_SCREEN_MODE_CHANGED:Ljava/lang/String; = "splitScreenModeChange"

.field public static final blacklist FIRST_OPLUS_EXIT_REASON_CODE:I = 0xc8

.field private static final blacklist FORBID_SPLITSCREEN_FEATURE:Ljava/lang/String; = "oplus.customize.splitscreen.disable"

.field public static final whitelist KEY_DISMISS_SPLIT_SCREEN_TYPE:Ljava/lang/String; = "dismissSplitScreenType"

.field public static final whitelist KEY_IS_IN_SPLIT_SCREEN_MODE:Ljava/lang/String; = "isInSplitScreenMode"

.field public static final whitelist KEY_IS_MINIMIZED:Ljava/lang/String; = "isMinimized"

.field private static final blacklist KEY_LAUNCH_STYLE:Ljava/lang/String; = "start_style"

.field public static final whitelist LAUNCH_AREA_BOTTOM:I = 0x4

.field public static final whitelist LAUNCH_AREA_INVALID:I = -0x1

.field public static final whitelist LAUNCH_AREA_LEFT:I = 0x1

.field public static final whitelist LAUNCH_AREA_RIGHT:I = 0x3

.field public static final whitelist LAUNCH_AREA_TOP:I = 0x2

.field public static final blacklist OPLUS_EXIT_REASON_APP_REQUEST:I = 0xc8

.field public static final blacklist OPLUS_EXIT_REASON_CONTROL_BAR_MENU_MAXIMIZE:I = 0xc9

.field private static final blacklist PKG_EXSERVICEUI:Ljava/lang/String; = "com.oplus.exserviceui"

.field private static final blacklist PKG_SYSTEMUI:Ljava/lang/String; = "com.android.systemui"

.field private static final blacklist SETTINGS_FORBID_SPLITSCREEN:Ljava/lang/String; = "forbid_splitscreen_by_ep"

.field public static final whitelist SPLIT_LEFT_OR_TOP_POSITION:I = 0x0

.field public static final whitelist SPLIT_RIGHT_OR_BOTTOM_POSITION:I = 0x1

.field private static final blacklist SPLIT_SCREEN_APPID:Ljava/lang/String; = "20232"

.field public static final whitelist SPLIT_SCREEN_FROM_BREENO:I = 0x5

.field public static final whitelist SPLIT_SCREEN_FROM_FLOAT_ASSISTANT:I = 0x4

.field public static final whitelist SPLIT_SCREEN_FROM_MENU:I = 0x2

.field public static final whitelist SPLIT_SCREEN_FROM_NONE:I = -0x1

.field public static final whitelist SPLIT_SCREEN_FROM_RECENT:I = 0x3

.field public static final whitelist SPLIT_SCREEN_FROM_SERVICE:I = 0x1

.field private static final blacklist SPLIT_SCREEN_STATISTIC_ID:Ljava/lang/String; = "20232001"

.field public static final whitelist STATE_APP_NOT_SUPPORT:I = 0x3ee

.field public static final whitelist STATE_BLACK_LIST:I = 0x3ec

.field public static final whitelist STATE_CHILDREN_MODE:I = 0x3ed

.field public static final whitelist STATE_FORBID_SPECIAL_APP:I = 0x3f0

.field public static final whitelist STATE_FORCE_FULLSCREEN:I = 0x3ef

.field public static final whitelist STATE_INVALID:I = 0x3e8

.field public static final whitelist STATE_SINGLE_HAND:I = 0x3eb

.field public static final whitelist STATE_SNAPSHOT:I = 0x3ea

.field public static final whitelist STATE_SUPPORT:I = 0x3e9

.field private static final blacklist TAG:Ljava/lang/String; = "OplusSplitScreenManager"

.field private static volatile blacklist sInstance:Lcom/oplus/splitscreen/OplusSplitScreenManager;

.field private static blacklist sSplitScreenSession:Lcom/oplus/splitscreen/IOplusSplitScreenSession;


# instance fields
.field private blacklist mHasColorSplitFeature:Ljava/lang/Boolean;

.field private blacklist mHasLargeScreenFeature:Ljava/lang/Boolean;

.field private blacklist mOAms:Landroid/app/OplusActivityTaskManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 114
    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oplus/splitscreen/OplusSplitScreenManager;->DEBUG:Z

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 1

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/splitscreen/OplusSplitScreenManager;->mOAms:Landroid/app/OplusActivityTaskManager;

    .line 120
    iput-object v0, p0, Lcom/oplus/splitscreen/OplusSplitScreenManager;->mHasColorSplitFeature:Ljava/lang/Boolean;

    .line 121
    iput-object v0, p0, Lcom/oplus/splitscreen/OplusSplitScreenManager;->mHasLargeScreenFeature:Ljava/lang/Boolean;

    .line 124
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getInstance()Landroid/app/OplusActivityTaskManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/splitscreen/OplusSplitScreenManager;->mOAms:Landroid/app/OplusActivityTaskManager;

    .line 125
    return-void
.end method

.method private blacklist checkCaller(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkg"    # Ljava/lang/String;

    .line 772
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 775
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 773
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist getInstance()Lcom/oplus/splitscreen/OplusSplitScreenManager;
    .locals 2

    .line 128
    sget-object v0, Lcom/oplus/splitscreen/OplusSplitScreenManager;->sInstance:Lcom/oplus/splitscreen/OplusSplitScreenManager;

    if-nez v0, :cond_1

    .line 129
    const-class v0, Lcom/oplus/splitscreen/OplusSplitScreenManager;

    monitor-enter v0

    .line 130
    :try_start_0
    sget-object v1, Lcom/oplus/splitscreen/OplusSplitScreenManager;->sInstance:Lcom/oplus/splitscreen/OplusSplitScreenManager;

    if-nez v1, :cond_0

    .line 131
    new-instance v1, Lcom/oplus/splitscreen/OplusSplitScreenManager;

    invoke-direct {v1}, Lcom/oplus/splitscreen/OplusSplitScreenManager;-><init>()V

    sput-object v1, Lcom/oplus/splitscreen/OplusSplitScreenManager;->sInstance:Lcom/oplus/splitscreen/OplusSplitScreenManager;

    .line 133
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 135
    :cond_1
    :goto_0
    sget-object v0, Lcom/oplus/splitscreen/OplusSplitScreenManager;->sInstance:Lcom/oplus/splitscreen/OplusSplitScreenManager;

    return-object v0
.end method

.method private blacklist getSplitScreenSession()Lcom/oplus/splitscreen/IOplusSplitScreenSession;
    .locals 4

    .line 561
    const-class v0, Lcom/oplus/splitscreen/OplusSplitScreenManager;

    monitor-enter v0

    .line 562
    :try_start_0
    sget-object v1, Lcom/oplus/splitscreen/OplusSplitScreenManager;->sSplitScreenSession:Lcom/oplus/splitscreen/IOplusSplitScreenSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 564
    :try_start_1
    iget-object v1, p0, Lcom/oplus/splitscreen/OplusSplitScreenManager;->mOAms:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v1}, Landroid/app/OplusActivityTaskManager;->getSplitScreenSession()Lcom/oplus/splitscreen/IOplusSplitScreenSession;

    move-result-object v1

    sput-object v1, Lcom/oplus/splitscreen/OplusSplitScreenManager;->sSplitScreenSession:Lcom/oplus/splitscreen/IOplusSplitScreenSession;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 567
    goto :goto_0

    .line 565
    :catch_0
    move-exception v1

    .line 566
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "OplusSplitScreenManager"

    const-string v3, "getSplitScreenSession error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    sget-object v1, Lcom/oplus/splitscreen/OplusSplitScreenManager;->sSplitScreenSession:Lcom/oplus/splitscreen/IOplusSplitScreenSession;

    monitor-exit v0

    return-object v1

    .line 570
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private blacklist hasForbidScreenScreenFeature()Z
    .locals 4

    .line 389
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const-string v2, "oplus.customize.splitscreen.disable"

    invoke-interface {v1, v2, v0}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 390
    :catch_0
    move-exception v1

    .line 391
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "OplusSplitScreenManager"

    const-string v3, "hasForbidScreenScreenFeature RemoteException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    return v0
.end method

.method private blacklist isEnterpriseDisableSplitScreen()Z
    .locals 4

    .line 398
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "forbid_splitscreen_by_ep"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    :cond_0
    return v0

    .line 400
    :catch_0
    move-exception v1

    .line 401
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "OplusSplitScreenManager"

    const-string v3, "isEnterpriseDisableSplitScreen error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    return v0
.end method


# virtual methods
.method public whitelist dismissSplitScreenMode(I)Z
    .locals 3
    .param p1, "type"    # I

    .line 332
    sget-boolean v0, Lcom/oplus/splitscreen/OplusSplitScreenManager;->DEBUG:Z

    const-string v1, "OplusSplitScreenManager"

    if-eqz v0, :cond_0

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismissSplitScreenMode type = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/oplus/splitscreen/OplusSplitScreenManager;->mOAms:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1}, Landroid/app/OplusActivityTaskManager;->dismissSplitScreenMode(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 337
    :catch_0
    move-exception v0

    .line 338
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "dismissSplitScreenMode RemoteException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getDividerInsets(Landroid/content/res/Resources;)I
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 553
    invoke-virtual {p0}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->hasColorSplitFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 554
    const/high16 v0, 0x41a80000    # 21.0f

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v0

    float-to-int v0, v1

    return v0

    .line 556
    :cond_0
    const v0, 0x1050131

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public whitelist getLeftRightBoundsForIme()Landroid/os/Bundle;
    .locals 3

    .line 517
    :try_start_0
    iget-object v0, p0, Lcom/oplus/splitscreen/OplusSplitScreenManager;->mOAms:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0}, Landroid/app/OplusActivityTaskManager;->getLeftRightBoundsForIme()Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 518
    :catch_0
    move-exception v0

    .line 519
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OplusSplitScreenManager"

    const-string v2, "getLeftRightBoundsForIme error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    .end local v0    # "e":Landroid/os/RemoteException;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public whitelist getMinimizedBounds(I)Landroid/graphics/Rect;
    .locals 3
    .param p1, "dockedSide"    # I

    .line 497
    :try_start_0
    iget-object v0, p0, Lcom/oplus/splitscreen/OplusSplitScreenManager;->mOAms:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1}, Landroid/app/OplusActivityTaskManager;->getMinimizedBounds(I)Landroid/graphics/Rect;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 498
    :catch_0
    move-exception v0

    .line 499
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OplusSplitScreenManager"

    const-string v2, "getMinimizedBounds error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    .end local v0    # "e":Landroid/os/RemoteException;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    return-object v0
.end method

.method public blacklist getRecentUsedApp(IJZLjava/util/List;)Ljava/util/List;
    .locals 7
    .param p1, "maxNum"    # I
    .param p2, "period"    # J
    .param p4, "supportSplitScreen"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJZ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 640
    .local p5, "exclude":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getSplitScreenSession()Lcom/oplus/splitscreen/IOplusSplitScreenSession;

    move-result-object v0

    .line 641
    .local v0, "session":Lcom/oplus/splitscreen/IOplusSplitScreenSession;
    if-eqz v0, :cond_0

    .line 642
    move-object v1, v0

    move v2, p1

    move-wide v3, p2

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/oplus/splitscreen/IOplusSplitScreenSession;->getRecentUsedApp(IJZLjava/util/List;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 646
    .end local v0    # "session":Lcom/oplus/splitscreen/IOplusSplitScreenSession;
    :cond_0
    goto :goto_0

    .line 644
    :catch_0
    move-exception v0

    .line 645
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusSplitScreenManager"

    const-string v2, "getRecentUsedApp error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSplitScreenState(Landroid/content/Intent;)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 139
    invoke-direct {p0}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->hasForbidScreenScreenFeature()Z

    move-result v0

    const/16 v1, 0x3e8

    const-string v2, "OplusSplitScreenManager"

    if-eqz v0, :cond_0

    .line 140
    const-string v0, "getSplitScreenState is disabled for enterprise order"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return v1

    .line 143
    :cond_0
    invoke-direct {p0}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->isEnterpriseDisableSplitScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    const-string v0, "getSplitScreenState isEnterpriseDisableSplitScreen"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return v1

    .line 147
    :cond_1
    if-eqz p1, :cond_3

    .line 151
    sget-boolean v0, Lcom/oplus/splitscreen/OplusSplitScreenManager;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 152
    const-string v0, "getSplitScreenState"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/oplus/splitscreen/OplusSplitScreenManager;->mOAms:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1}, Landroid/app/OplusActivityTaskManager;->getSplitScreenState(Landroid/content/Intent;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "getSplitScreenState remoteException "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 159
    return v1

    .line 148
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getSplitScreenState intent=null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getSplitScreenStatus(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .param p1, "event"    # Ljava/lang/String;

    .line 376
    sget-boolean v0, Lcom/oplus/splitscreen/OplusSplitScreenManager;->DEBUG:Z

    const-string v1, "OplusSplitScreenManager"

    if-eqz v0, :cond_0

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSplitScreenStatus event = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/oplus/splitscreen/OplusSplitScreenManager;->mOAms:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1}, Landroid/app/OplusActivityTaskManager;->getSplitScreenStatus(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 381
    :catch_0
    move-exception v0

    .line 382
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "getSplitScreenCurrentState failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getTopAppSplitScreenState()I
    .locals 4

    .line 164
    invoke-direct {p0}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->hasForbidScreenScreenFeature()Z

    move-result v0

    const/16 v1, 0x3e8

    const-string v2, "OplusSplitScreenManager"

    if-eqz v0, :cond_0

    .line 165
    const-string v0, "getTopAppSplitScreenState is disabled for enterprise order"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return v1

    .line 169
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/oplus/splitscreen/OplusSplitScreenManager;->mOAms:Landroid/app/OplusActivityTaskManager;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/OplusActivityTaskManager;->getSplitScreenState(Landroid/content/Intent;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "getTopAppSplitScreenState remoteException "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 173
    return v1
.end method

.method public whitelist getVersion()I
    .locals 1

    .line 262
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist hasColorSplitFeature()Z
    .locals 2

    .line 537
    iget-object v0, p0, Lcom/oplus/splitscreen/OplusSplitScreenManager;->mHasColorSplitFeature:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 538
    invoke-static {}, Lcom/oplus/content/OplusFeatureConfigManager;->getInstance()Lcom/oplus/content/OplusFeatureConfigManager;

    move-result-object v0

    const-string v1, "oplus.software.color_split_feature"

    invoke-virtual {v0, v1}, Lcom/oplus/content/OplusFeatureConfigManager;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 539
    const-string v0, "persist.sys.color_split_feature_enable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 538
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/splitscreen/OplusSplitScreenManager;->mHasColorSplitFeature:Ljava/lang/Boolean;

    .line 541
    :cond_1
    iget-object v0, p0, Lcom/oplus/splitscreen/OplusSplitScreenManager;->mHasColorSplitFeature:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public whitelist hasFolderFeature()Z
    .locals 1

    .line 483
    invoke-virtual {p0}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->hasLargeScreenFeature()Z

    move-result v0

    return v0
.end method

.method public whitelist hasLargeScreenFeature()Z
    .locals 2

    .line 472
    iget-object v0, p0, Lcom/oplus/splitscreen/OplusSplitScreenManager;->mHasLargeScreenFeature:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    .line 473
    invoke-virtual {p0}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->isFoldDevice()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->isTabletDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 474
    :cond_0
    const-string v0, "persist.sys.large_screen_split_feature_enable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 473
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/splitscreen/OplusSplitScreenManager;->mHasLargeScreenFeature:Ljava/lang/Boolean;

    .line 476
    :cond_2
    iget-object v0, p0, Lcom/oplus/splitscreen/OplusSplitScreenManager;->mHasLargeScreenFeature:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public whitelist hasNewDragSplitFeature()Z
    .locals 1

    .line 532
    invoke-virtual {p0}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->hasColorSplitFeature()Z

    move-result v0

    return v0
.end method

.method public whitelist isFoldDevice()Z
    .locals 2

    .line 545
    invoke-static {}, Lcom/oplus/content/OplusFeatureConfigManager;->getInstance()Lcom/oplus/content/OplusFeatureConfigManager;

    move-result-object v0

    const-string v1, "oplus.hardware.type.fold"

    invoke-virtual {v0, v1}, Lcom/oplus/content/OplusFeatureConfigManager;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist isFolderInnerScreen()Z
    .locals 3

    .line 488
    :try_start_0
    iget-object v0, p0, Lcom/oplus/splitscreen/OplusSplitScreenManager;->mOAms:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0}, Landroid/app/OplusActivityTaskManager;->isFolderInnerScreen()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 489
    :catch_0
    move-exception v0

    .line 490
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OplusSplitScreenManager"

    const-string v2, "isFolderInnerScreen error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isInSplitScreenMode()Z
    .locals 3

    .line 324
    :try_start_0
    iget-object v0, p0, Lcom/oplus/splitscreen/OplusSplitScreenManager;->mOAms:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0}, Landroid/app/OplusActivityTaskManager;->isInSplitScreenMode()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 325
    :catch_0
    move-exception v0

    .line 326
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusSplitScreenManager"

    const-string v2, "isInSplitScreenMode RemoteException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isTabletDevice()Z
    .locals 2

    .line 549
    invoke-static {}, Lcom/oplus/content/OplusFeatureConfigManager;->getInstance()Lcom/oplus/content/OplusFeatureConfigManager;

    move-result-object v0

    const-string v1, "oplus.hardware.type.tablet"

    invoke-virtual {v0, v1}, Lcom/oplus/content/OplusFeatureConfigManager;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public blacklist maintainSplitToZoomTaskState(IZ)V
    .locals 3
    .param p1, "taskId"    # I
    .param p2, "maintain"    # Z

    .line 762
    :try_start_0
    invoke-direct {p0}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getSplitScreenSession()Lcom/oplus/splitscreen/IOplusSplitScreenSession;

    move-result-object v0

    .line 763
    .local v0, "session":Lcom/oplus/splitscreen/IOplusSplitScreenSession;
    if-eqz v0, :cond_0

    .line 764
    invoke-interface {v0, p1, p2}, Lcom/oplus/splitscreen/IOplusSplitScreenSession;->maintainSplitToZoomTaskState(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 768
    .end local v0    # "session":Lcom/oplus/splitscreen/IOplusSplitScreenSession;
    :cond_0
    goto :goto_0

    .line 766
    :catch_0
    move-exception v0

    .line 767
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusSplitScreenManager"

    const-string v2, "maintainSplitToZoomTaskState error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public blacklist moveChildrenTaskToBack(I)Z
    .locals 3
    .param p1, "rootTaskId"    # I

    .line 627
    :try_start_0
    invoke-direct {p0}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getSplitScreenSession()Lcom/oplus/splitscreen/IOplusSplitScreenSession;

    move-result-object v0

    .line 628
    .local v0, "session":Lcom/oplus/splitscreen/IOplusSplitScreenSession;
    if-eqz v0, :cond_0

    .line 629
    invoke-interface {v0, p1}, Lcom/oplus/splitscreen/IOplusSplitScreenSession;->moveChildrenTaskToBack(I)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 633
    .end local v0    # "session":Lcom/oplus/splitscreen/IOplusSplitScreenSession;
    :cond_0
    goto :goto_0

    .line 631
    :catch_0
    move-exception v0

    .line 632
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusSplitScreenManager"

    const-string v2, "moveChildrenTaskToBack error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist notifySplitRootTaskId(III)V
    .locals 3
    .param p1, "root"    # I
    .param p2, "primary"    # I
    .param p3, "secondary"    # I

    .line 603
    :try_start_0
    invoke-direct {p0}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getSplitScreenSession()Lcom/oplus/splitscreen/IOplusSplitScreenSession;

    move-result-object v0

    .line 604
    .local v0, "session":Lcom/oplus/splitscreen/IOplusSplitScreenSession;
    if-eqz v0, :cond_0

    .line 605
    invoke-interface {v0, p1, p2, p3}, Lcom/oplus/splitscreen/IOplusSplitScreenSession;->notifySplitRootTaskId(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 609
    .end local v0    # "session":Lcom/oplus/splitscreen/IOplusSplitScreenSession;
    :cond_0
    goto :goto_0

    .line 607
    :catch_0
    move-exception v0

    .line 608
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusSplitScreenManager"

    const-string v2, "notifySplitRootTaskId error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public whitelist notifySplitScreenStateChanged(Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "broadcast"    # Z

    .line 312
    sget-boolean v0, Lcom/oplus/splitscreen/OplusSplitScreenManager;->DEBUG:Z

    const-string v1, "OplusSplitScreenManager"

    if-eqz v0, :cond_0

    .line 313
    const-string v0, "SystemUi notifyStateChanged"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/oplus/splitscreen/OplusSplitScreenManager;->mOAms:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/OplusActivityTaskManager;->notifySplitScreenStateChanged(Ljava/lang/String;Landroid/os/Bundle;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    goto :goto_0

    .line 317
    :catch_0
    move-exception v0

    .line 318
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "notifyStateChanged RemoteException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist onSplitScreenLaunched(I)V
    .locals 7
    .param p1, "type"    # I

    .line 226
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 227
    .local v0, "logMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "start_style"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "20232"

    const-string v3, "20232001"

    const-string v4, "split_screen_launch"

    const/4 v6, 0x0

    move-object v5, v0

    invoke-static/range {v1 .. v6}, Loplus/util/OplusStatistics;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 230
    sget-boolean v1, Lcom/oplus/splitscreen/OplusSplitScreenManager;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSplitScreenLaunched logMap:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusSplitScreenManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_0
    return-void
.end method

.method public blacklist registerActivityMultiWindowAllowanceObserver(Landroid/app/Activity;Lcom/oplus/app/IActivityMultiWindowAllowanceObserver;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "observer"    # Lcom/oplus/app/IActivityMultiWindowAllowanceObserver;

    .line 708
    :try_start_0
    invoke-direct {p0}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getSplitScreenSession()Lcom/oplus/splitscreen/IOplusSplitScreenSession;

    move-result-object v0

    .line 709
    .local v0, "session":Lcom/oplus/splitscreen/IOplusSplitScreenSession;
    if-eqz v0, :cond_0

    .line 710
    invoke-virtual {p1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p2}, Lcom/oplus/app/IActivityMultiWindowAllowanceObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oplus/splitscreen/IOplusSplitScreenSession;->registerActivityMultiWindowAllowanceObserver(Landroid/os/IBinder;Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 714
    .end local v0    # "session":Lcom/oplus/splitscreen/IOplusSplitScreenSession;
    :cond_0
    goto :goto_0

    .line 712
    :catch_0
    move-exception v0

    .line 713
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusSplitScreenManager"

    const-string v2, "registerActivityMultiWindowAllowanceObserver error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public whitelist registerSplitScreenObserver(Lcom/oplus/app/IOplusSplitScreenObserver;)Z
    .locals 4
    .param p1, "observer"    # Lcom/oplus/app/IOplusSplitScreenObserver;

    .line 344
    const/4 v0, 0x0

    const-string v1, "OplusSplitScreenManager"

    if-nez p1, :cond_0

    .line 345
    const-string v2, "registerSplitScreenObserver error, observer is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    return v0

    .line 349
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/oplus/splitscreen/OplusSplitScreenManager;->mOAms:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3, p1}, Landroid/app/OplusActivityTaskManager;->registerSplitScreenObserver(ILcom/oplus/app/IOplusSplitScreenObserver;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 350
    :catch_0
    move-exception v2

    .line 351
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "registerSplitScreenObserver failed"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    .end local v2    # "e":Landroid/os/RemoteException;
    return v0
.end method

.method public blacklist registerStackDivider(Landroid/content/Context;Lcom/oplus/splitscreen/IOplusStackDividerConnection;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "conn"    # Lcom/oplus/splitscreen/IOplusStackDividerConnection;

    .line 575
    const-string v0, "com.android.systemui"

    invoke-direct {p0, p1, v0}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->checkCaller(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 576
    return-void

    .line 579
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getSplitScreenSession()Lcom/oplus/splitscreen/IOplusSplitScreenSession;

    move-result-object v0

    .line 580
    .local v0, "session":Lcom/oplus/splitscreen/IOplusSplitScreenSession;
    if-eqz v0, :cond_1

    .line 581
    invoke-interface {v0, p2}, Lcom/oplus/splitscreen/IOplusSplitScreenSession;->registerStackDivider(Lcom/oplus/splitscreen/IOplusStackDividerConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 585
    .end local v0    # "session":Lcom/oplus/splitscreen/IOplusSplitScreenSession;
    :cond_1
    goto :goto_0

    .line 583
    :catch_0
    move-exception v0

    .line 584
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusSplitScreenManager"

    const-string v2, "registerStackDivider error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public blacklist removeSelfSplitTaskIfNeed(II)V
    .locals 3
    .param p1, "toTopTaskId"    # I
    .param p2, "toBottomTaskId"    # I

    .line 738
    :try_start_0
    invoke-direct {p0}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getSplitScreenSession()Lcom/oplus/splitscreen/IOplusSplitScreenSession;

    move-result-object v0

    .line 739
    .local v0, "session":Lcom/oplus/splitscreen/IOplusSplitScreenSession;
    if-eqz v0, :cond_0

    .line 740
    invoke-interface {v0, p1, p2}, Lcom/oplus/splitscreen/IOplusSplitScreenSession;->removeSelfSplitTaskIfNeed(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 744
    .end local v0    # "session":Lcom/oplus/splitscreen/IOplusSplitScreenSession;
    :cond_0
    goto :goto_0

    .line 742
    :catch_0
    move-exception v0

    .line 743
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusSplitScreenManager"

    const-string v2, "removeSelfSplitTaskIfNeed error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public blacklist requestSwitchToFullScreen(Landroid/app/Activity;)Z
    .locals 3
    .param p1, "requestActivity"    # Landroid/app/Activity;

    .line 689
    :try_start_0
    invoke-direct {p0}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getSplitScreenSession()Lcom/oplus/splitscreen/IOplusSplitScreenSession;

    move-result-object v0

    .line 690
    .local v0, "session":Lcom/oplus/splitscreen/IOplusSplitScreenSession;
    if-eqz v0, :cond_0

    .line 691
    invoke-virtual {p1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/oplus/splitscreen/IOplusSplitScreenSession;->requestSwitchToFullScreen(Landroid/os/IBinder;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 695
    .end local v0    # "session":Lcom/oplus/splitscreen/IOplusSplitScreenSession;
    :cond_0
    goto :goto_0

    .line 693
    :catch_0
    move-exception v0

    .line 694
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusSplitScreenManager"

    const-string v2, "requestSwitchToFullScreen error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist requestSwitchToSplitScreen(Landroid/app/Activity;Lcom/oplus/app/SplitScreenParams;)Z
    .locals 3
    .param p1, "requestActivity"    # Landroid/app/Activity;
    .param p2, "params"    # Lcom/oplus/app/SplitScreenParams;

    .line 671
    :try_start_0
    invoke-direct {p0}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getSplitScreenSession()Lcom/oplus/splitscreen/IOplusSplitScreenSession;

    move-result-object v0

    .line 672
    .local v0, "session":Lcom/oplus/splitscreen/IOplusSplitScreenSession;
    if-eqz v0, :cond_0

    .line 673
    invoke-virtual {p1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/oplus/splitscreen/IOplusSplitScreenSession;->requestSwitchToSplitScreen(Landroid/os/IBinder;Lcom/oplus/app/SplitScreenParams;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 677
    .end local v0    # "session":Lcom/oplus/splitscreen/IOplusSplitScreenSession;
    :cond_0
    goto :goto_0

    .line 675
    :catch_0
    move-exception v0

    .line 676
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusSplitScreenManager"

    const-string v2, "requestSwitchToSplitScreen error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setSplitControlBarRegion(Landroid/graphics/Rect;Z)V
    .locals 3
    .param p1, "region"    # Landroid/graphics/Rect;
    .param p2, "isPrimary"    # Z

    .line 591
    :try_start_0
    invoke-direct {p0}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getSplitScreenSession()Lcom/oplus/splitscreen/IOplusSplitScreenSession;

    move-result-object v0

    .line 592
    .local v0, "session":Lcom/oplus/splitscreen/IOplusSplitScreenSession;
    if-eqz v0, :cond_0

    .line 593
    invoke-interface {v0, p1, p2}, Lcom/oplus/splitscreen/IOplusSplitScreenSession;->setSplitControlBarRegion(Landroid/graphics/Rect;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 597
    .end local v0    # "session":Lcom/oplus/splitscreen/IOplusSplitScreenSession;
    :cond_0
    goto :goto_0

    .line 595
    :catch_0
    move-exception v0

    .line 596
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusSplitScreenManager"

    const-string v2, "setSplitControlBarRegion error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public blacklist setSplitRequestedOrientation(I)V
    .locals 3
    .param p1, "requestedOrientation"    # I

    .line 653
    :try_start_0
    invoke-direct {p0}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getSplitScreenSession()Lcom/oplus/splitscreen/IOplusSplitScreenSession;

    move-result-object v0

    .line 654
    .local v0, "session":Lcom/oplus/splitscreen/IOplusSplitScreenSession;
    if-eqz v0, :cond_0

    .line 655
    invoke-interface {v0, p1}, Lcom/oplus/splitscreen/IOplusSplitScreenSession;->setSplitRequestedOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 659
    .end local v0    # "session":Lcom/oplus/splitscreen/IOplusSplitScreenSession;
    :cond_0
    goto :goto_0

    .line 657
    :catch_0
    move-exception v0

    .line 658
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusSplitScreenManager"

    const-string v2, "setSplitRequestedOrientation error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public blacklist setSplitRootTaskAlwaysOnTop(Z)V
    .locals 3
    .param p1, "onTop"    # Z

    .line 615
    :try_start_0
    invoke-direct {p0}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getSplitScreenSession()Lcom/oplus/splitscreen/IOplusSplitScreenSession;

    move-result-object v0

    .line 616
    .local v0, "session":Lcom/oplus/splitscreen/IOplusSplitScreenSession;
    if-eqz v0, :cond_0

    .line 617
    invoke-interface {v0, p1}, Lcom/oplus/splitscreen/IOplusSplitScreenSession;->setSplitRootTaskAlwaysOnTop(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 621
    .end local v0    # "session":Lcom/oplus/splitscreen/IOplusSplitScreenSession;
    :cond_0
    goto :goto_0

    .line 619
    :catch_0
    move-exception v0

    .line 620
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusSplitScreenManager"

    const-string v2, "setSplitRootTaskAlwaysOnTop error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public whitelist setSplitScreenObserver(Lcom/oplus/app/IOplusSplitScreenObserver;)Z
    .locals 4
    .param p1, "observer"    # Lcom/oplus/app/IOplusSplitScreenObserver;

    .line 290
    const/4 v0, 0x0

    const-string v1, "OplusSplitScreenManager"

    if-nez p1, :cond_0

    .line 291
    const-string v2, "SystemUi setSplitScreenObserver error, observer is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    return v0

    .line 294
    :cond_0
    sget-boolean v2, Lcom/oplus/splitscreen/OplusSplitScreenManager;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 295
    const-string v2, "SystemUi setSplitScreenObserver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/oplus/splitscreen/OplusSplitScreenManager;->mOAms:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v2, p1}, Landroid/app/OplusActivityTaskManager;->setSplitScreenObserver(Lcom/oplus/app/IOplusSplitScreenObserver;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 299
    :catch_0
    move-exception v2

    .line 300
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "SystemUi setSplitScreenObserver RemoteException"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    .end local v2    # "e":Landroid/os/RemoteException;
    return v0
.end method

.method public blacklist setTaskWindowingModeSplitScreen(I)I
    .locals 3
    .param p1, "taskId"    # I

    .line 274
    sget-boolean v0, Lcom/oplus/splitscreen/OplusSplitScreenManager;->DEBUG:Z

    const-string v1, "OplusSplitScreenManager"

    if-eqz v0, :cond_0

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTaskWindowingModeSplitScreen, taskId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/oplus/splitscreen/OplusSplitScreenManager;->mOAms:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1}, Landroid/app/OplusActivityTaskManager;->setTaskWindowingModeSplitScreen(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 279
    :catch_0
    move-exception v0

    .line 280
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "setTaskWindowingModeSplitScreen RemoteException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist splitScreenForApplication(Landroid/content/Context;Landroid/content/Intent;I)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "position"    # I

    .line 451
    invoke-direct {p0}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->hasForbidScreenScreenFeature()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "OplusSplitScreenManager"

    if-eqz v0, :cond_0

    .line 452
    const-string v0, "splitScreenForApplication is disabled for enterprise order"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    return v1

    .line 455
    :cond_0
    invoke-direct {p0}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->isEnterpriseDisableSplitScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 456
    const-string v0, "splitScreenForApplication isEnterpriseDisableSplitScreen"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    return v1

    .line 459
    :cond_1
    if-eqz p2, :cond_3

    if-nez p1, :cond_2

    goto :goto_0

    .line 464
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/oplus/splitscreen/OplusSplitScreenManager;->mOAms:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/OplusActivityTaskManager;->splitScreenForApplication(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 465
    :catch_0
    move-exception v0

    .line 466
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "splitScreenForApplication failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    .end local v0    # "e":Ljava/lang/Exception;
    return v1

    .line 460
    :cond_3
    :goto_0
    const-string v0, "splitScreenForApplication error, intent is null"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    return v1
.end method

.method public whitelist splitScreenForEdgePanel(Landroid/content/Intent;I)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I

    .line 236
    invoke-direct {p0}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->hasForbidScreenScreenFeature()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "OplusSplitScreenManager"

    if-eqz v0, :cond_0

    .line 237
    const-string v0, "splitScreenForEdgePanel is disabled for enterprise order"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    return v1

    .line 240
    :cond_0
    invoke-direct {p0}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->isEnterpriseDisableSplitScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    const-string v0, "splitScreenForEdgePanel isEnterpriseDisableSplitScreen"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    return v1

    .line 245
    :cond_1
    if-eqz p1, :cond_3

    .line 249
    sget-boolean v0, Lcom/oplus/splitscreen/OplusSplitScreenManager;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "splitWindowForTopApp intent:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/oplus/splitscreen/OplusSplitScreenManager;->mOAms:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/OplusActivityTaskManager;->splitScreenForEdgePanel(Landroid/content/Intent;I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "splitScreenForEdgePanel failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    return v1

    .line 246
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getSplitScreenState intent=null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist splitScreenForEdgePanel(Landroid/content/Intent;ZI)Z
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "launchToPrimary"    # Z
    .param p3, "launchArea"    # I

    .line 416
    invoke-direct {p0}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->hasForbidScreenScreenFeature()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "OplusSplitScreenManager"

    if-eqz v0, :cond_0

    .line 417
    const-string v0, "splitScreenForEdgePanel is disabled for enterprise order"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    return v1

    .line 420
    :cond_0
    invoke-direct {p0}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->isEnterpriseDisableSplitScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 421
    const-string v0, "splitScreenForEdgePanel isEnterpriseDisableSplitScreen"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    return v1

    .line 424
    :cond_1
    if-nez p1, :cond_2

    .line 425
    const-string v0, "splitScreenForEdgePanel error, intent is null"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    return v1

    .line 428
    :cond_2
    sget-boolean v0, Lcom/oplus/splitscreen/OplusSplitScreenManager;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "splitScreenForEdgePanel intent:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", launchToPrimary = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/oplus/splitscreen/OplusSplitScreenManager;->mOAms:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/OplusActivityTaskManager;->splitScreenForEdgePanelExt(Landroid/content/Intent;ZI)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 433
    :catch_0
    move-exception v0

    .line 434
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "splitScreenForEdgePanel failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    .end local v0    # "e":Ljava/lang/Exception;
    return v1
.end method

.method public whitelist splitScreenForRecentTasks(I)Z
    .locals 4
    .param p1, "taskId"    # I

    .line 206
    invoke-direct {p0}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->hasForbidScreenScreenFeature()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "OplusSplitScreenManager"

    if-eqz v0, :cond_0

    .line 207
    const-string v0, "splitScreenForRecentTasks is disabled for enterprise order"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    return v1

    .line 210
    :cond_0
    invoke-direct {p0}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->isEnterpriseDisableSplitScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    const-string v0, "splitScreenForRecentTasks isEnterpriseDisableSplitScreen"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    return v1

    .line 214
    :cond_1
    sget-boolean v0, Lcom/oplus/splitscreen/OplusSplitScreenManager;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "splitScreenForRecentTasks taskId:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/oplus/splitscreen/OplusSplitScreenManager;->mOAms:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1}, Landroid/app/OplusActivityTaskManager;->splitScreenForRecentTasks(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "splitScreenForRecentTasks RemoteException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public whitelist splitScreenForTopApp(I)Z
    .locals 4
    .param p1, "type"    # I

    .line 182
    invoke-direct {p0}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->hasForbidScreenScreenFeature()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "OplusSplitScreenManager"

    if-eqz v0, :cond_0

    .line 183
    const-string v0, "splitScreenForTopApp is disabled for enterprise order"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    return v1

    .line 186
    :cond_0
    invoke-direct {p0}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->isEnterpriseDisableSplitScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    const-string v0, "splitScreenForTopApp isEnterpriseDisableSplitScreen"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    return v1

    .line 190
    :cond_1
    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    .line 194
    sget-boolean v0, Lcom/oplus/splitscreen/OplusSplitScreenManager;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "splitScreenForTopApp type:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/oplus/splitscreen/OplusSplitScreenManager;->mOAms:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v0, p1}, Landroid/app/OplusActivityTaskManager;->splitScreenForTopApp(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "splitScreenForTopApp RemoteException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1

    .line 191
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "splitScreenForTopApp type is abnormal"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist startZoomWindowFromSplit(ILandroid/graphics/Rect;F)V
    .locals 3
    .param p1, "taskId"    # I
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "scale"    # F

    .line 750
    :try_start_0
    invoke-direct {p0}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getSplitScreenSession()Lcom/oplus/splitscreen/IOplusSplitScreenSession;

    move-result-object v0

    .line 751
    .local v0, "session":Lcom/oplus/splitscreen/IOplusSplitScreenSession;
    if-eqz v0, :cond_0

    .line 752
    invoke-interface {v0, p1, p2, p3}, Lcom/oplus/splitscreen/IOplusSplitScreenSession;->startZoomWindowFromSplit(ILandroid/graphics/Rect;F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 756
    .end local v0    # "session":Lcom/oplus/splitscreen/IOplusSplitScreenSession;
    :cond_0
    goto :goto_0

    .line 754
    :catch_0
    move-exception v0

    .line 755
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusSplitScreenManager"

    const-string v2, "startZoomWindowFromSplit error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public whitelist swapDockedFullscreenStack()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 179
    return-void
.end method

.method public blacklist unregisterActivityMultiWindowAllowanceObserver(Landroid/app/Activity;Lcom/oplus/app/IActivityMultiWindowAllowanceObserver;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "observer"    # Lcom/oplus/app/IActivityMultiWindowAllowanceObserver;

    .line 726
    :try_start_0
    invoke-direct {p0}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getSplitScreenSession()Lcom/oplus/splitscreen/IOplusSplitScreenSession;

    move-result-object v0

    .line 727
    .local v0, "session":Lcom/oplus/splitscreen/IOplusSplitScreenSession;
    if-eqz v0, :cond_0

    .line 728
    invoke-virtual {p1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p2}, Lcom/oplus/app/IActivityMultiWindowAllowanceObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oplus/splitscreen/IOplusSplitScreenSession;->unregisterActivityMultiWindowAllowanceObserver(Landroid/os/IBinder;Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 732
    .end local v0    # "session":Lcom/oplus/splitscreen/IOplusSplitScreenSession;
    :cond_0
    goto :goto_0

    .line 730
    :catch_0
    move-exception v0

    .line 731
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusSplitScreenManager"

    const-string v2, "unregisterActivityMultiWindowAllowanceObserver error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public whitelist unregisterSplitScreenObserver(Lcom/oplus/app/IOplusSplitScreenObserver;)Z
    .locals 4
    .param p1, "observer"    # Lcom/oplus/app/IOplusSplitScreenObserver;

    .line 357
    const/4 v0, 0x0

    const-string v1, "OplusSplitScreenManager"

    if-nez p1, :cond_0

    .line 358
    const-string v2, "unregisterSplitScreenObserver error, observer is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    return v0

    .line 362
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/oplus/splitscreen/OplusSplitScreenManager;->mOAms:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3, p1}, Landroid/app/OplusActivityTaskManager;->unregisterSplitScreenObserver(ILcom/oplus/app/IOplusSplitScreenObserver;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 363
    :catch_0
    move-exception v2

    .line 364
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "unregisterSplitScreenObserver failed"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    .end local v2    # "e":Landroid/os/RemoteException;
    return v0
.end method
