.class public Landroid/view/OplusWindowManager;
.super Ljava/lang/Object;
.source "OplusWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/OplusWindowManager$LazyHolder;
    }
.end annotation


# static fields
.field private static final blacklist IOplusActivityManagerSingleton:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Landroid/view/IOplusWindowManager;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist OFFERTX:Ljava/lang/String; = "offertX"

.field private static final blacklist OFFERTY:Ljava/lang/String; = "offertY"

.field private static final blacklist SCALE:Ljava/lang/String; = "scale"

.field private static final blacklist TAG:Ljava/lang/String; = "OplusWindowManager"


# instance fields
.field private final blacklist mOplusLongshot:Landroid/view/IOplusLongshotWindowManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 60
    new-instance v0, Landroid/view/OplusWindowManager$1;

    invoke-direct {v0}, Landroid/view/OplusWindowManager$1;-><init>()V

    sput-object v0, Landroid/view/OplusWindowManager;->IOplusActivityManagerSingleton:Landroid/util/Singleton;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 2

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    sget-object v0, Lcom/oplus/screenshot/IOplusScreenShotEuclidManager;->DEFAULT:Lcom/oplus/screenshot/IOplusScreenShotEuclidManager;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Lcom/oplus/screenshot/IOplusScreenShotEuclidManager;

    invoke-interface {v0}, Lcom/oplus/screenshot/IOplusScreenShotEuclidManager;->getIOplusLongshotWindowManager()Landroid/view/IOplusLongshotWindowManager;

    move-result-object v0

    iput-object v0, p0, Landroid/view/OplusWindowManager;->mOplusLongshot:Landroid/view/IOplusLongshotWindowManager;

    .line 80
    return-void
.end method

.method public static whitelist getInstance()Landroid/view/OplusWindowManager;
    .locals 1

    .line 83
    invoke-static {}, Landroid/view/OplusWindowManager$LazyHolder;->-$$Nest$sfgetINSTANCE()Landroid/view/OplusWindowManager;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getService()Landroid/view/IOplusWindowManager;
    .locals 1

    .line 57
    sget-object v0, Landroid/view/OplusWindowManager;->IOplusActivityManagerSingleton:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/IOplusWindowManager;

    return-object v0
.end method


# virtual methods
.method public blacklist clearOplusLaunchViewInfoForWindow(Landroid/view/IWindow;)V
    .locals 2
    .param p1, "window"    # Landroid/view/IWindow;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 743
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 744
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/IOplusWindowManager;->clearOplusLaunchViewInfoForWindow(Landroid/view/IWindow;)V

    goto :goto_0

    .line 746
    :cond_0
    const-string v0, "OplusWindowManager"

    const-string v1, "clearOplusLaunchViewInfoForWindow failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    :goto_0
    return-void
.end method

.method public whitelist directFindCmd(Lcom/oplus/direct/OplusDirectFindCmd;)V
    .locals 2
    .param p1, "findCmd"    # Lcom/oplus/direct/OplusDirectFindCmd;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 637
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 638
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/IOplusWindowManager;->directFindCmd(Lcom/oplus/direct/OplusDirectFindCmd;)V

    goto :goto_0

    .line 640
    :cond_0
    const-string v0, "OplusWindowManager"

    const-string v1, "isEdgePanelExpand failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    :goto_0
    return-void
.end method

.method public whitelist getAllVisibleWindowInfo()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/app/OplusWindowInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 654
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 655
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IOplusWindowManager;->getAllVisibleWindowInfo()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 657
    :cond_0
    const-string v0, "OplusWindowManager"

    const-string v1, "isEdgePanelExpand failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getApkUnlockWindow()Landroid/os/IBinder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 108
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IOplusWindowManager;->getApkUnlockWindow()Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    .line 111
    :cond_0
    const-string v0, "OplusWindowManager"

    const-string v1, "getApkUnlockWindow failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getCurrentFocus()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 252
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 253
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IOplusWindowManager;->getCurrentFocus()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 255
    :cond_0
    const-string v0, "OplusWindowManager"

    const-string v1, "getCurrentFocus failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const-string v0, ""

    return-object v0
.end method

.method public whitelist getFloatWindowRect(I)Landroid/graphics/Rect;
    .locals 2
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 262
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 263
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/IOplusWindowManager;->getFloatWindowRect(I)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    .line 265
    :cond_0
    const-string v0, "OplusWindowManager"

    const-string v1, "getFloatWindowRect failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getFocusedWindowFrame(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "frame"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 462
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 463
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/IOplusWindowManager;->getFocusedWindowFrame(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 465
    :cond_0
    const-string v0, "OplusWindowManager"

    const-string v1, "getFocusedWindowFrame failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :goto_0
    return-void
.end method

.method public whitelist getFocusedWindowIgnoreHomeMenuKey()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 358
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 359
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IOplusWindowManager;->getFocusedWindowIgnoreHomeMenuKey()I

    move-result v0

    return v0

    .line 361
    :cond_0
    const-string v0, "OplusWindowManager"

    const-string v1, "getFocusedWindowIgnoreHomeMenuKey failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getFreeformStackBounds(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "outBounds"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 305
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 306
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/IOplusWindowManager;->getFreeformStackBounds(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 308
    :cond_0
    const-string v0, "OplusWindowManager"

    const-string v1, "getFreeformStackBounds failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :goto_0
    return-void
.end method

.method public whitelist getImeBgOplusFromAdaptation(Ljava/lang/String;)I
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 340
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 341
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/IOplusWindowManager;->getImeBgOplusFromAdaptation(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 343
    :cond_0
    const-string v0, "OplusWindowManager"

    const-string v1, "getImeBgOplusFromAdaptation failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getLongshotSurfaceLayer()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 471
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 472
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IOplusWindowManager;->getLongshotSurfaceLayer()I

    move-result v0

    return v0

    .line 474
    :cond_0
    const-string v0, "OplusWindowManager"

    const-string v1, "getLongshotSurfaceLayer failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getLongshotSurfaceLayerByType(I)I
    .locals 2
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 481
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 482
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/IOplusWindowManager;->getLongshotSurfaceLayerByType(I)I

    move-result v0

    return v0

    .line 484
    :cond_0
    const-string v0, "OplusWindowManager"

    const-string v1, "getLongshotSurfaceLayerByType failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getLongshotWindowByType(I)Landroid/os/IBinder;
    .locals 2
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 557
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 558
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/IOplusWindowManager;->getLongshotWindowByType(I)Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    .line 560
    :cond_0
    const-string v0, "OplusWindowManager"

    const-string v1, "getLongshotWindowByType failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getLongshotWindowByTypeForR(I)Landroid/view/SurfaceControl;
    .locals 2
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 567
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 568
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/IOplusWindowManager;->getLongshotWindowByTypeForR(I)Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0

    .line 570
    :cond_0
    const-string v0, "OplusWindowManager"

    const-string v1, "getLongshotWindowByTypeForR failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getNavBarOplusFromAdaptation(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 322
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 323
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/IOplusWindowManager;->getNavBarOplusFromAdaptation(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 325
    :cond_0
    const-string v0, "OplusWindowManager"

    const-string v1, "getNavBarOplusFromAdaptation failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getScreenshot(Lcom/oplus/app/OplusScreenShotOptions;)Lcom/oplus/app/OplusScreenShotResult;
    .locals 2
    .param p1, "options"    # Lcom/oplus/app/OplusScreenShotOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 761
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 762
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/IOplusWindowManager;->getScreenshot(Lcom/oplus/app/OplusScreenShotOptions;)Lcom/oplus/app/OplusScreenShotResult;

    move-result-object v0

    return-object v0

    .line 764
    :cond_0
    const-string v0, "OplusWindowManager"

    const-string v1, "getScreenshot failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSplitAreaRegion()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 671
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 672
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IOplusWindowManager;->getSplitAreaRegion()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 674
    :cond_0
    const-string v0, "TAG"

    const-string v1, "isEdgePanelExpand failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getStatusBarOplusFromAdaptation(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 331
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 332
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/IOplusWindowManager;->getStatusBarOplusFromAdaptation(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 334
    :cond_0
    const-string v0, "OplusWindowManager"

    const-string v1, "getStatusBarOplusFromAdaptation failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getTypedWindowLayer(I)I
    .locals 2
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 349
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 350
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/IOplusWindowManager;->getTypedWindowLayer(I)I

    move-result v0

    return v0

    .line 352
    :cond_0
    const-string v0, "OplusWindowManager"

    const-string v1, "getTypedWindowLayer failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getWindowVisibleDisplayFrame(Landroid/view/IWindowSession;Landroid/view/IWindow;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "session"    # Landroid/view/IWindowSession;
    .param p2, "client"    # Landroid/view/IWindow;
    .param p3, "outDisplayFrame"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 440
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 441
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/view/IOplusWindowManager;->getWindowVisibleDisplayFrame(Landroid/view/IWindowSession;Landroid/view/IWindow;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 443
    :cond_0
    const-string v0, "OplusWindowManager"

    const-string v1, "setJoyStickSwitch failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :goto_0
    return-void
.end method

.method public whitelist isActivityNeedPalette(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 313
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 314
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/IOplusWindowManager;->isActivityNeedPalette(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 316
    :cond_0
    const-string v0, "OplusWindowManager"

    const-string v1, "isActivityNeedPalette failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isEdgePanelExpand()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 597
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 598
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IOplusWindowManager;->isEdgePanelExpand()Z

    move-result v0

    return v0

    .line 600
    :cond_0
    const-string v0, "OplusWindowManager"

    const-string v1, "isEdgePanelExpand failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isFloatAssistExpand()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 587
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 588
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IOplusWindowManager;->isFloatAssistExpand()Z

    move-result v0

    return v0

    .line 590
    :cond_0
    const-string v0, "OplusWindowManager"

    const-string v1, "isFloatAssistExpand failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isFullScreen()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 155
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 156
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IOplusWindowManager;->isFullScreen()Z

    move-result v0

    return v0

    .line 158
    :cond_0
    const-string v0, "OplusWindowManager"

    const-string v1, "isFullScreen failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isInFreeformMode()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 296
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 297
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IOplusWindowManager;->isInFreeformMode()Z

    move-result v0

    return v0

    .line 299
    :cond_0
    const-string v0, "OplusWindowManager"

    const-string v1, "isInFreeformMode failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isInputShow()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 146
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 147
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IOplusWindowManager;->isInputShow()Z

    move-result v0

    return v0

    .line 149
    :cond_0
    const-string v0, "OplusWindowManager"

    const-string v1, "isInputShow failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isKeyguardShowingAndNotOccluded()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 529
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 530
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IOplusWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    return v0

    .line 532
    :cond_0
    const-string v0, "OplusWindowManager"

    const-string v1, "isShortcutsPanelShow failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isLockOnShow()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 125
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IOplusWindowManager;->isLockOnShow()Z

    move-result v0

    return v0

    .line 128
    :cond_0
    const-string v0, "OplusWindowManager"

    const-string v1, "isLockOnShow failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isLockWndShow()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 91
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IOplusWindowManager;->isLockWndShow()Z

    move-result v0

    return v0

    .line 94
    :cond_0
    const-string v0, "OplusWindowManager"

    const-string v1, "isLockWndShow failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isNavigationBarVisible()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 500
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 501
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IOplusWindowManager;->isNavigationBarVisible()Z

    move-result v0

    return v0

    .line 503
    :cond_0
    const-string v0, "OplusWindowManager"

    const-string v1, "isNavigationBarVisible failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isRotatingLw()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 179
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 180
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IOplusWindowManager;->isRotatingLw()Z

    move-result v0

    return v0

    .line 182
    :cond_0
    const-string v0, "OplusWindowManager"

    const-string v1, "isRotatingLw failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isSIMUnlockRunning()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 134
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IOplusWindowManager;->isSIMUnlockRunning()Z

    move-result v0

    return v0

    .line 137
    :cond_0
    const-string v0, "OplusWindowManager"

    const-string v1, "isSIMUnlockRunning failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isShortcutsPanelShow()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 510
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 511
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IOplusWindowManager;->isShortcutsPanelShow()Z

    move-result v0

    return v0

    .line 513
    :cond_0
    const-string v0, "OplusWindowManager"

    const-string v1, "isShortcutsPanelShow failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isStatusBarVisible()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 166
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IOplusWindowManager;->isStatusBarVisible()Z

    move-result v0

    return v0

    .line 169
    :cond_0
    const-string v0, "OplusWindowManager"

    const-string v1, "isStatusBarVisible failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isVolumeShow()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 577
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 578
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IOplusWindowManager;->isVolumeShow()Z

    move-result v0

    return v0

    .line 580
    :cond_0
    const-string v0, "OplusWindowManager"

    const-string v1, "isVolumeShow failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isWindowShownForUid(I)Z
    .locals 2
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 233
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 234
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/IOplusWindowManager;->isWindowShownForUid(I)Z

    move-result v0

    return v0

    .line 236
    :cond_0
    const-string v0, "OplusWindowManager"

    const-string v1, "isWindowShownForUid failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist keyguardSetApkLockScreenShowing(Z)V
    .locals 2
    .param p1, "showing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 100
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/IOplusWindowManager;->keyguardSetApkLockScreenShowing(Z)V

    goto :goto_0

    .line 103
    :cond_0
    const-string v0, "OplusWindowManager"

    const-string v1, "keyguardSetApkLockScreenShowing failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :goto_0
    return-void
.end method

.method public whitelist keyguardShowSecureApkLock(Z)V
    .locals 2
    .param p1, "show"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 117
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/IOplusWindowManager;->keyguardShowSecureApkLock(Z)V

    goto :goto_0

    .line 120
    :cond_0
    const-string v0, "OplusWindowManager"

    const-string v1, "keyguardShowSecureApkLock failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :goto_0
    return-void
.end method

.method public whitelist longshotInjectInput(Landroid/view/InputEvent;I)V
    .locals 2
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 520
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 521
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/IOplusWindowManager;->longshotInjectInput(Landroid/view/InputEvent;I)V

    goto :goto_0

    .line 523
    :cond_0
    const-string v0, "OplusWindowManager"

    const-string v1, "isShortcutsPanelShow failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :goto_0
    return-void
.end method

.method public whitelist longshotInjectInputBegin()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 539
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 540
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IOplusWindowManager;->longshotInjectInputBegin()V

    goto :goto_0

    .line 542
    :cond_0
    const-string v0, "OplusWindowManager"

    const-string v1, "isShortcutsPanelShow failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :goto_0
    return-void
.end method

.method public whitelist longshotInjectInputEnd()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 548
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 549
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IOplusWindowManager;->longshotInjectInputEnd()V

    goto :goto_0

    .line 551
    :cond_0
    const-string v0, "OplusWindowManager"

    const-string v1, "isShortcutsPanelShow failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    :goto_0
    return-void
.end method

.method public whitelist longshotNotifyConnected(Z)V
    .locals 2
    .param p1, "isConnected"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 491
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 492
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/IOplusWindowManager;->longshotNotifyConnected(Z)V

    goto :goto_0

    .line 494
    :cond_0
    const-string v0, "OplusWindowManager"

    const-string v1, "longshotNotifyConnected failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :goto_0
    return-void
.end method

.method public whitelist registerOnUiModeConfigurationChangeFinishListener(Lcom/oplus/darkmode/IOplusDarkModeListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/oplus/darkmode/IOplusDarkModeListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 369
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 370
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/IOplusWindowManager;->registerOnUiModeConfigurationChangeFinishListener(Lcom/oplus/darkmode/IOplusDarkModeListener;)V

    goto :goto_0

    .line 372
    :cond_0
    const-string v0, "OplusWindowManager"

    const-string v1, "registerOnUiModeConfigurationChangeFinishListener failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :goto_0
    return-void
.end method

.method public whitelist registerOplusWindowStateObserver(Landroid/view/IOplusWindowStateObserver;)V
    .locals 2
    .param p1, "observer"    # Landroid/view/IOplusWindowStateObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 280
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 281
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/IOplusWindowManager;->registerOplusWindowStateObserver(Landroid/view/IOplusWindowStateObserver;)V

    goto :goto_0

    .line 283
    :cond_0
    const-string v0, "OplusWindowManager"

    const-string v1, "registerOplusWindowStateObserver failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :goto_0
    return-void
.end method

.method public blacklist registerRemoteAnimationsForWindow(Landroid/view/IWindow;Landroid/view/RemoteAnimationDefinition;)V
    .locals 2
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "definition"    # Landroid/view/RemoteAnimationDefinition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 708
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 709
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/IOplusWindowManager;->registerRemoteAnimationsForWindow(Landroid/view/IWindow;Landroid/view/RemoteAnimationDefinition;)V

    goto :goto_0

    .line 711
    :cond_0
    const-string v0, "OplusWindowManager"

    const-string v1, "registerRemoteAnimationsForWindow failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    :goto_0
    return-void
.end method

.method public whitelist removeWindowShownOnKeyguard()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 243
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 244
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IOplusWindowManager;->removeWindowShownOnKeyguard()V

    goto :goto_0

    .line 246
    :cond_0
    const-string v0, "OplusWindowManager"

    const-string v1, "removeWindowShownOnKeyguard failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :goto_0
    return-void
.end method

.method public whitelist requestDismissKeyguard()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 215
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 216
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IOplusWindowManager;->requestDismissKeyguard()V

    goto :goto_0

    .line 218
    :cond_0
    const-string v0, "OplusWindowManager"

    const-string v1, "requestDismissKeyguard failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :goto_0
    return-void
.end method

.method public whitelist requestKeyguard(Ljava/lang/String;)V
    .locals 2
    .param p1, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 224
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 225
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/IOplusWindowManager;->requestKeyguard(Ljava/lang/String;)V

    goto :goto_0

    .line 227
    :cond_0
    const-string v0, "OplusWindowManager"

    const-string v1, "requestKeyguard failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :goto_0
    return-void
.end method

.method public whitelist requestScrollCapture(ILandroid/os/IBinder;ILcom/oplus/screenshot/IOplusScrollCaptureResponseListener;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "displayId"    # I
    .param p2, "behindClient"    # Landroid/os/IBinder;
    .param p3, "taskId"    # I
    .param p4, "listener"    # Lcom/oplus/screenshot/IOplusScrollCaptureResponseListener;
    .param p5, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 622
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 623
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v1

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Landroid/view/IOplusWindowManager;->requestScrollCapture(ILandroid/os/IBinder;ILcom/oplus/screenshot/IOplusScrollCaptureResponseListener;Landroid/os/Bundle;)V

    goto :goto_0

    .line 625
    :cond_0
    const-string v0, "OplusWindowManager"

    const-string v1, "requestScrollCapture failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    :goto_0
    return-void
.end method

.method public whitelist requestVisibleWindows()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 789
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 790
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IOplusWindowManager;->requestVisibleWindows()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 792
    :cond_0
    const-string v0, "OplusWindowManager"

    const-string v1, "requestVisibleWindows failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist setBootAnimationRotationLock(Z)V
    .locals 2
    .param p1, "lockRotation"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 387
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 388
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/IOplusWindowManager;->setBootAnimationRotationLock(Z)V

    goto :goto_0

    .line 390
    :cond_0
    const-string v0, "OplusWindowManager"

    const-string v1, "setBootAnimationRotationLock failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :goto_0
    return-void
.end method

.method public whitelist setInsetAnimationTid(IIZ)Z
    .locals 2
    .param p1, "pid"    # I
    .param p2, "tid"    # I
    .param p3, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 694
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 695
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/view/IOplusWindowManager;->setInsetAnimationTid(IIZ)Z

    move-result v0

    return v0

    .line 697
    :cond_0
    const-string v0, "OplusWindowManager"

    const-string v1, "isEdgePanelExpand failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setJoyStickConfig(ILjava/lang/String;)Z
    .locals 2
    .param p1, "configType"    # I
    .param p2, "config"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 407
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 408
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/IOplusWindowManager;->setJoyStickConfig(ILjava/lang/String;)Z

    move-result v0

    return v0

    .line 410
    :cond_0
    const-string v0, "OplusWindowManager"

    const-string v1, "setJoyStickConfig failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setJoyStickStatus(I)Z
    .locals 2
    .param p1, "configStatus"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 417
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 418
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/IOplusWindowManager;->setJoyStickStatus(I)Z

    move-result v0

    return v0

    .line 420
    :cond_0
    const-string v0, "OplusWindowManager"

    const-string v1, "setJoyStickStatus failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setJoyStickSwitch(I)Z
    .locals 2
    .param p1, "switchStatus"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 426
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 427
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/IOplusWindowManager;->setJoyStickSwitch(I)Z

    move-result v0

    return v0

    .line 429
    :cond_0
    const-string v0, "OplusWindowManager"

    const-string v1, "setJoyStickSwitch failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setMagnification(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 201
    return-void
.end method

.method public blacklist setMagnificationSpecEx(Landroid/view/MagnificationSpec;)V
    .locals 2
    .param p1, "spec"    # Landroid/view/MagnificationSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 207
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 208
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/IOplusWindowManager;->setMagnificationSpecEx(Landroid/view/MagnificationSpec;)V

    goto :goto_0

    .line 210
    :cond_0
    const-string v0, "OplusWindowManager"

    const-string v1, "setMagnificationSpecEx failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :goto_0
    return-void
.end method

.method public blacklist setOplusLaunchViewInfoForWindow(Landroid/view/IWindow;Lcom/oplus/animation/LaunchViewInfo;)V
    .locals 2
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "viewInfo"    # Lcom/oplus/animation/LaunchViewInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 732
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 733
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/IOplusWindowManager;->setOplusLaunchViewInfoForWindow(Landroid/view/IWindow;Lcom/oplus/animation/LaunchViewInfo;)V

    goto :goto_0

    .line 735
    :cond_0
    const-string v0, "OplusWindowManager"

    const-string v1, "setOplusLaunchViewInfoForWindow failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    :goto_0
    return-void
.end method

.method public whitelist showTransientNavbar(I)V
    .locals 2
    .param p1, "showFlag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 450
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 451
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/IOplusWindowManager;->showTransientNavbar(I)V

    goto :goto_0

    .line 453
    :cond_0
    const-string v0, "OplusWindowManager"

    const-string v1, "showTransientNavbar failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :goto_0
    return-void
.end method

.method public blacklist startGestureAnmation(Landroid/view/IOplusGestureAnimationRunner;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "guestureAnimationRunner"    # Landroid/view/IOplusGestureAnimationRunner;
    .param p2, "bOptions"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 685
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 686
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/IOplusWindowManager;->startGestureAnmation(Landroid/view/IOplusGestureAnimationRunner;Landroid/os/Bundle;)V

    goto :goto_0

    .line 688
    :cond_0
    const-string v0, "OplusWindowManager"

    const-string v1, "isEdgePanelExpand failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    :goto_0
    return-void
.end method

.method public whitelist startOplusDragWindow(Ljava/lang/String;IILandroid/os/Bundle;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resId"    # I
    .param p3, "mode"    # I
    .param p4, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 272
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 273
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/IOplusWindowManager;->startOplusDragWindow(Ljava/lang/String;IILandroid/os/Bundle;)V

    goto :goto_0

    .line 275
    :cond_0
    const-string v0, "OplusWindowManager"

    const-string v1, "startOplusDragWindow failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :goto_0
    return-void
.end method

.method public blacklist transferTouchFocus(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "fromChannelToken"    # Landroid/os/IBinder;
    .param p2, "toChannelToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 774
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 775
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/IOplusWindowManager;->transferTouchFocus(Landroid/os/IBinder;Landroid/os/IBinder;)V

    goto :goto_0

    .line 777
    :cond_0
    const-string v0, "OplusWindowManager"

    const-string v1, "transferTouchFocus failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    :goto_0
    return-void
.end method

.method public whitelist unregisterOnUiModeConfigurationChangeFinishListener(Lcom/oplus/darkmode/IOplusDarkModeListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/oplus/darkmode/IOplusDarkModeListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 377
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 378
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/IOplusWindowManager;->unregisterOnUiModeConfigurationChangeFinishListener(Lcom/oplus/darkmode/IOplusDarkModeListener;)V

    goto :goto_0

    .line 380
    :cond_0
    const-string v0, "OplusWindowManager"

    const-string v1, "unregisterOnUiModeConfigurationChangeFinishListener failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :goto_0
    return-void
.end method

.method public whitelist unregisterOplusWindowStateObserver(Landroid/view/IOplusWindowStateObserver;)V
    .locals 2
    .param p1, "observer"    # Landroid/view/IOplusWindowStateObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 288
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 289
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/IOplusWindowManager;->unregisterOplusWindowStateObserver(Landroid/view/IOplusWindowStateObserver;)V

    goto :goto_0

    .line 291
    :cond_0
    const-string v0, "OplusWindowManager"

    const-string v1, "unregisterOplusWindowStateObserver failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :goto_0
    return-void
.end method

.method public blacklist unregisterRemoteAnimationsForWindow(Landroid/view/IWindow;)V
    .locals 2
    .param p1, "window"    # Landroid/view/IWindow;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 721
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 722
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/IOplusWindowManager;->unregisterRemoteAnimationsForWindow(Landroid/view/IWindow;)V

    goto :goto_0

    .line 724
    :cond_0
    const-string v0, "OplusWindowManager"

    const-string v1, "unregisterRemoteAnimationsForWindow failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    :goto_0
    return-void
.end method

.method public whitelist updateInvalidRegion(Ljava/lang/String;Ljava/util/List;ZZLandroid/os/Bundle;)Z
    .locals 7
    .param p1, "regionKey"    # Ljava/lang/String;
    .param p3, "disposable"    # Z
    .param p4, "isDelete"    # Z
    .param p5, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;ZZ",
            "Landroid/os/Bundle;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 397
    .local p2, "region":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 398
    invoke-static {}, Landroid/view/OplusWindowManager;->getService()Landroid/view/IOplusWindowManager;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Landroid/view/IOplusWindowManager;->updateInvalidRegion(Ljava/lang/String;Ljava/util/List;ZZLandroid/os/Bundle;)Z

    move-result v0

    return v0

    .line 400
    :cond_0
    const-string v0, "OplusWindowManager"

    const-string v1, "updateInvalidRegion failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    const/4 v0, 0x0

    return v0
.end method
