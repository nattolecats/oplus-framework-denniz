.class public Lcom/oplus/screenshot/OplusScreenShotEuclidManager;
.super Ljava/lang/Object;
.source "OplusScreenShotEuclidManager.java"

# interfaces
.implements Lcom/oplus/screenshot/IOplusScreenShotEuclidManager;


# static fields
.field private static volatile blacklist sInstance:Lcom/oplus/screenshot/OplusScreenShotEuclidManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/oplus/screenshot/OplusScreenShotEuclidManager;->sInstance:Lcom/oplus/screenshot/OplusScreenShotEuclidManager;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method public static whitelist getInstance()Lcom/oplus/screenshot/OplusScreenShotEuclidManager;
    .locals 2

    .line 42
    sget-object v0, Lcom/oplus/screenshot/OplusScreenShotEuclidManager;->sInstance:Lcom/oplus/screenshot/OplusScreenShotEuclidManager;

    if-nez v0, :cond_1

    .line 43
    const-class v0, Lcom/oplus/screenshot/OplusScreenShotEuclidManager;

    monitor-enter v0

    .line 44
    :try_start_0
    sget-object v1, Lcom/oplus/screenshot/OplusScreenShotEuclidManager;->sInstance:Lcom/oplus/screenshot/OplusScreenShotEuclidManager;

    if-nez v1, :cond_0

    .line 45
    new-instance v1, Lcom/oplus/screenshot/OplusScreenShotEuclidManager;

    invoke-direct {v1}, Lcom/oplus/screenshot/OplusScreenShotEuclidManager;-><init>()V

    sput-object v1, Lcom/oplus/screenshot/OplusScreenShotEuclidManager;->sInstance:Lcom/oplus/screenshot/OplusScreenShotEuclidManager;

    .line 47
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 49
    :cond_1
    :goto_0
    sget-object v0, Lcom/oplus/screenshot/OplusScreenShotEuclidManager;->sInstance:Lcom/oplus/screenshot/OplusScreenShotEuclidManager;

    return-object v0
.end method

.method private blacklist isLandscape(Landroid/content/Context;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 130
    invoke-static {p1}, Lcom/oplus/screenshot/OplusLongshotUtils;->getScreenshotManager(Landroid/content/Context;)Lcom/oplus/screenshot/OplusScreenshotManager;

    move-result-object v0

    .line 131
    .local v0, "sm":Lcom/oplus/screenshot/OplusScreenshotManager;
    invoke-virtual {v0}, Lcom/oplus/screenshot/OplusScreenshotManager;->isLaunching()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 132
    invoke-virtual {v0}, Lcom/oplus/screenshot/OplusScreenshotManager;->getRatation()I

    move-result v1

    if-eq v1, v3, :cond_0

    invoke-virtual {v0}, Lcom/oplus/screenshot/OplusScreenshotManager;->getRatation()I

    move-result v1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_1

    :cond_0
    move v2, v3

    :cond_1
    return v2

    .line 134
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/OplusBaseConfiguration;

    move-result-object v1

    .line 135
    .local v1, "configuration":Landroid/content/res/OplusBaseConfiguration;
    iget v4, v1, Landroid/content/res/OplusBaseConfiguration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    move v2, v3

    :cond_3
    return v2
.end method


# virtual methods
.method public whitelist getIOplusLongshotWindowManager()Landroid/view/IOplusLongshotWindowManager;
    .locals 1

    .line 122
    new-instance v0, Landroid/view/OplusLongshotWindowManager;

    invoke-direct {v0}, Landroid/view/OplusLongshotWindowManager;-><init>()V

    return-object v0
.end method

.method public whitelist getScreenShotHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;

    .line 117
    new-instance v0, Lcom/oplus/screenshot/OplusGlobalActionHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oplus/screenshot/OplusGlobalActionHandler;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method public whitelist isSpecialAppWindow(ZLandroid/view/WindowManager$LayoutParams;)Z
    .locals 1
    .param p1, "appWindow"    # Z
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 85
    invoke-static {p2}, Lcom/oplus/view/OplusWindowManager$LayoutParams;->isFullscreen(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-static {v0}, Lcom/oplus/view/OplusWindowManager$LayoutParams;->isLongshotWindow(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    const/4 v0, 0x1

    return v0

    .line 90
    :cond_0
    return p1
.end method

.method public whitelist skipSystemUiVisibility(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 4
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;

    .line 68
    const-class v0, Landroid/view/OplusBaseLayoutParams;

    invoke-static {v0, p1}, Lcom/oplus/util/OplusTypeCastingHelper;->typeCasting(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/OplusBaseLayoutParams;

    .line 69
    .local v0, "cbp":Landroid/view/OplusBaseLayoutParams;
    const/4 v1, 0x0

    .line 70
    .local v1, "result":Z
    if-eqz v0, :cond_0

    .line 71
    iget-object v2, v0, Landroid/view/OplusBaseLayoutParams;->mOplusLayoutParams:Lcom/oplus/view/OplusLayoutParams;

    invoke-virtual {v2}, Lcom/oplus/view/OplusLayoutParams;->getSkipSystemUiVisibility()Z

    move-result v1

    .line 77
    :cond_0
    if-eqz v1, :cond_1

    sget-boolean v2, Lcom/oplus/screenshot/OplusLongshotDump;->DBG:Z

    if-eqz v2, :cond_1

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSystemUiVisibilityLw : skip "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LongshotDump"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_1
    return v1
.end method

.method public whitelist takeScreenshot(Landroid/content/Context;IZZLandroid/os/Handler;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "screenshotType"    # I
    .param p3, "hasStatus"    # Z
    .param p4, "hasNav"    # Z
    .param p5, "handler"    # Landroid/os/Handler;

    .line 95
    invoke-static {p1}, Lcom/oplus/screenshot/OplusLongshotUtils;->getScreenshotManager(Landroid/content/Context;)Lcom/oplus/screenshot/OplusScreenshotManager;

    move-result-object v0

    .line 96
    .local v0, "sm":Lcom/oplus/screenshot/OplusScreenshotManager;
    const-string v1, "LongshotDump"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oplus/screenshot/OplusScreenshotManager;->isScreenshotSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 97
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 98
    .local v2, "extras":Landroid/os/Bundle;
    instance-of v3, p5, Lcom/oplus/screenshot/IOplusScreenshotHelper;

    if-eqz v3, :cond_0

    .line 99
    move-object v3, p5

    check-cast v3, Lcom/oplus/screenshot/IOplusScreenshotHelper;

    .line 100
    .local v3, "helper":Lcom/oplus/screenshot/IOplusScreenshotHelper;
    invoke-interface {v3}, Lcom/oplus/screenshot/IOplusScreenshotHelper;->getSource()Ljava/lang/String;

    move-result-object v4

    const-string v5, "screenshot_source"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-interface {v3}, Lcom/oplus/screenshot/IOplusScreenshotHelper;->isGlobalAction()Z

    move-result v4

    const-string v5, "global_action_visible"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 103
    .end local v3    # "helper":Lcom/oplus/screenshot/IOplusScreenshotHelper;
    :cond_0
    const-string v3, "statusbar_visible"

    invoke-virtual {v2, v3, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 104
    const-string v3, "navigationbar_visible"

    invoke-virtual {v2, v3, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 105
    invoke-direct {p0, p1}, Lcom/oplus/screenshot/OplusScreenShotEuclidManager;->isLandscape(Landroid/content/Context;)Z

    move-result v3

    const-string v4, "screenshot_orientation"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 106
    invoke-virtual {v0, v2}, Lcom/oplus/screenshot/OplusScreenshotManager;->takeScreenshot(Landroid/os/Bundle;)V

    .line 107
    const-string v3, "takeScreenshot : PASS"

    invoke-static {v1, v3}, Lcom/oplus/util/OplusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const/4 v1, 0x1

    return v1

    .line 110
    .end local v2    # "extras":Landroid/os/Bundle;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "takeScreenshot : FAIL sm = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v0, :cond_2

    move v4, v3

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/oplus/screenshot/OplusScreenshotManager;->isScreenshotSupported()Z

    move-result v4

    :goto_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oplus/util/OplusLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return v3
.end method

.method public whitelist updateSpecialSystemBar(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 2
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;

    .line 57
    invoke-static {p1}, Lcom/oplus/view/OplusWindowManager;->isUseLastStatusBarTint(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 58
    return v1

    .line 60
    :cond_0
    invoke-static {p1}, Lcom/oplus/view/OplusWindowManager;->updateDarkNavigationBar(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    return v1

    .line 63
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
