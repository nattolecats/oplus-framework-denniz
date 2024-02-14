.class public Landroid/app/OplusActivityTaskManager;
.super Ljava/lang/Object;
.source "OplusActivityTaskManager.java"


# static fields
.field private static final blacklist IOplusActivityTaskManagerSingleton:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Landroid/app/IOplusActivityTaskManager;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sInstance:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Landroid/app/OplusActivityTaskManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 139
    new-instance v0, Landroid/app/OplusActivityTaskManager$1;

    invoke-direct {v0}, Landroid/app/OplusActivityTaskManager$1;-><init>()V

    sput-object v0, Landroid/app/OplusActivityTaskManager;->sInstance:Landroid/util/Singleton;

    .line 165
    new-instance v0, Landroid/app/OplusActivityTaskManager$2;

    invoke-direct {v0}, Landroid/app/OplusActivityTaskManager$2;-><init>()V

    sput-object v0, Landroid/app/OplusActivityTaskManager;->IOplusActivityTaskManagerSingleton:Landroid/util/Singleton;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    return-void
.end method

.method public static whitelist getInstance()Landroid/app/OplusActivityTaskManager;
    .locals 1

    .line 152
    sget-object v0, Landroid/app/OplusActivityTaskManager;->sInstance:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/OplusActivityTaskManager;

    return-object v0
.end method

.method public static blacklist getService()Landroid/app/IOplusActivityTaskManager;
    .locals 1

    .line 159
    sget-object v0, Landroid/app/OplusActivityTaskManager;->IOplusActivityTaskManagerSingleton:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IOplusActivityTaskManager;

    return-object v0
.end method


# virtual methods
.method public blacklist addBracketWindowConfigChangedListener(Lcom/oplus/bracket/IOplusBracketModeChangedListener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/oplus/bracket/IOplusBracketModeChangedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 976
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityTaskManager;->addBracketWindowConfigChangedListener(Lcom/oplus/bracket/IOplusBracketModeChangedListener;)Z

    move-result v0

    return v0
.end method

.method public blacklist addFreeformConfigChangedListener(Lcom/oplus/app/IOplusFreeformConfigChangedListener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/oplus/app/IOplusFreeformConfigChangedListener;

    .line 230
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist addZoomWindowConfigChangedListener(Lcom/oplus/app/IOplusZoomWindowConfigChangedListener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/oplus/app/IOplusZoomWindowConfigChangedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 395
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityTaskManager;->addZoomWindowConfigChangedListener(Lcom/oplus/app/IOplusZoomWindowConfigChangedListener;)Z

    move-result v0

    return v0
.end method

.method public whitelist callMethod(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "param1"    # I
    .param p4, "param2"    # Z
    .param p5, "param3"    # Ljava/lang/String;
    .param p6, "object"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 961
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/app/IOplusActivityTaskManager;->callMethod(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public whitelist clientTransactionComplete(Landroid/os/IBinder;I)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 828
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IOplusActivityTaskManager;->clientTransactionComplete(Landroid/os/IBinder;I)V

    .line 829
    return-void
.end method

.method public whitelist createMirageDisplay(Landroid/view/Surface;)I
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 695
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityTaskManager;->createMirageDisplay(Landroid/view/Surface;)I

    move-result v0

    return v0
.end method

.method public blacklist createMirageWindowSession(Lcom/oplus/miragewindow/IOplusMirageSessionCallback;)Lcom/oplus/miragewindow/IOplusMirageWindowSession;
    .locals 1
    .param p1, "callback"    # Lcom/oplus/miragewindow/IOplusMirageSessionCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 767
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityTaskManager;->createMirageWindowSession(Lcom/oplus/miragewindow/IOplusMirageSessionCallback;)Lcom/oplus/miragewindow/IOplusMirageWindowSession;

    move-result-object v0

    return-object v0
.end method

.method public whitelist dismissSplitScreenMode(I)Z
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 526
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityTaskManager;->dismissSplitScreenMode(I)Z

    move-result v0

    return v0
.end method

.method public whitelist exitCompactWindow()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 909
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IOplusActivityTaskManager;->exitCompactWindow()I

    move-result v0

    return v0
.end method

.method public whitelist expandToFullScreen()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 731
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IOplusActivityTaskManager;->expandToFullScreen()V

    .line 732
    return-void
.end method

.method public whitelist feedbackUserSelection(IILandroid/os/Bundle;)V
    .locals 1
    .param p1, "eventId"    # I
    .param p2, "selection"    # I
    .param p3, "extension"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 687
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IOplusActivityTaskManager;->feedbackUserSelection(IILandroid/os/Bundle;)V

    .line 688
    return-void
.end method

.method public whitelist getAllTopAppInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/app/OplusAppInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 211
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IOplusActivityTaskManager;->getAllTopAppInfos()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getAppThemeVersion(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "change"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 867
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IOplusActivityTaskManager;->getAppThemeVersion(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getConfineMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 479
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IOplusActivityTaskManager;->getConfineMode()I

    move-result v0

    return v0
.end method

.method public whitelist getCurrentZoomWindowState()Lcom/oplus/zoomwindow/OplusZoomWindowInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 296
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IOplusActivityTaskManager;->getCurrentZoomWindowState()Lcom/oplus/zoomwindow/OplusZoomWindowInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getFocusBounds(Z)Landroid/graphics/Rect;
    .locals 1
    .param p1, "isPrimary"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 948
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityTaskManager;->getFocusBounds(Z)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getFocusComponent(Z)Landroid/content/ComponentName;
    .locals 1
    .param p1, "isPrimary"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 952
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityTaskManager;->getFocusComponent(Z)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getFocusMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 944
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IOplusActivityTaskManager;->getFocusMode()I

    move-result v0

    return v0
.end method

.method public whitelist getFreeformConfigList(I)Ljava/util/List;
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 217
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getGetDisplayIdForPackageName(Ljava/lang/String;)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 771
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityTaskManager;->getGetDisplayIdForPackageName(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist getGlobalDragAndDropConfig()Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfig;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 658
    new-instance v0, Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfig;

    invoke-direct {v0}, Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfig;-><init>()V

    .line 659
    .local v0, "config":Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfig;
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IOplusActivityTaskManager;->getGlobalDragAndDropConfig()Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfig;

    move-result-object v0

    .line 660
    return-object v0
.end method

.method public blacklist getLeftRightBoundsForIme()Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 591
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IOplusActivityTaskManager;->getLeftRightBoundsForIme()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMinimizedBounds(I)Landroid/graphics/Rect;
    .locals 1
    .param p1, "dockedSide"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 575
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityTaskManager;->getMinimizedBounds(I)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMirageDisplayCastMode(I)I
    .locals 1
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 727
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityTaskManager;->getMirageDisplayCastMode(I)I

    move-result v0

    return v0
.end method

.method public whitelist getMirageWindowInfo()Lcom/oplus/miragewindow/OplusMirageWindowInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 743
    new-instance v0, Lcom/oplus/miragewindow/OplusMirageWindowInfo;

    invoke-direct {v0}, Lcom/oplus/miragewindow/OplusMirageWindowInfo;-><init>()V

    .line 744
    .local v0, "info":Lcom/oplus/miragewindow/OplusMirageWindowInfo;
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IOplusActivityTaskManager;->getMirageWindowInfo()Lcom/oplus/miragewindow/OplusMirageWindowInfo;

    move-result-object v0

    .line 745
    return-object v0
.end method

.method public blacklist getMultiSearchSession()Lcom/oplus/multisearch/IOplusMultiSearchManagerSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 891
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IOplusActivityTaskManager;->getMultiSearchSession()Lcom/oplus/multisearch/IOplusMultiSearchManagerSession;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPWAppInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 933
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IOplusActivityTaskManager;->getPWAppInfo()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getRealSize()Landroid/graphics/Point;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 956
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IOplusActivityTaskManager;->getRealSize()Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSecurityFlagCurrentPage()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 854
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IOplusActivityTaskManager;->getSecurityFlagCurrentPage()Z

    move-result v0

    return v0
.end method

.method public blacklist getSplitScreenSession()Lcom/oplus/splitscreen/IOplusSplitScreenSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 581
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IOplusActivityTaskManager;->getSplitScreenSession()Lcom/oplus/splitscreen/IOplusSplitScreenSession;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSplitScreenState(Landroid/content/Intent;)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 205
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityTaskManager;->getSplitScreenState(Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public whitelist getSplitScreenStatus(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 540
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityTaskManager;->getSplitScreenStatus(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTopActivityComponentName()Landroid/content/ComponentName;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 190
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IOplusActivityTaskManager;->getTopActivityComponentName()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTopApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 194
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IOplusActivityTaskManager;->getTopApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getZoomAppConfigList(I)Ljava/util/List;
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 306
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityTaskManager;->getZoomAppConfigList(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getZoomWindowConfig()Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 332
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IOplusActivityTaskManager;->getZoomWindowConfig()Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;

    move-result-object v0

    return-object v0
.end method

.method public whitelist handleShowCompatibilityToast(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;I)Z
    .locals 6
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "callPkg"    # Ljava/lang/String;
    .param p4, "extension"    # Landroid/os/Bundle;
    .param p5, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 365
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/app/IOplusActivityTaskManager;->handleShowCompatibilityToast(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;I)Z

    move-result v0

    return v0
.end method

.method public whitelist hasColorSplitFeature()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 598
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IOplusActivityTaskManager;->hasColorSplitFeature()Z

    move-result v0

    return v0
.end method

.method public whitelist hasLargeScreenFeature()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 567
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IOplusActivityTaskManager;->hasLargeScreenFeature()Z

    move-result v0

    return v0
.end method

.method public whitelist hideZoomWindow(I)V
    .locals 1
    .param p1, "flag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 301
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityTaskManager;->hideZoomWindow(I)V

    .line 302
    return-void
.end method

.method public whitelist invokeSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "params"    # Ljava/lang/String;
    .param p4, "objects"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 965
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/app/IOplusActivityTaskManager;->invokeSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public whitelist isCurrentAppSupportCompactMode()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 913
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IOplusActivityTaskManager;->isCurrentAppSupportCompactMode()Z

    move-result v0

    return v0
.end method

.method public whitelist isFolderInnerScreen()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 571
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IOplusActivityTaskManager;->isFolderInnerScreen()Z

    move-result v0

    return v0
.end method

.method public whitelist isFreeformEnabled()Z
    .locals 1

    .line 221
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isInSplitScreenMode()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 522
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IOplusActivityTaskManager;->isInSplitScreenMode()Z

    move-result v0

    return v0
.end method

.method public whitelist isLockDeviceMode()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 425
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IOplusActivityTaskManager;->isLockDeviceMode()Z

    move-result v0

    return v0
.end method

.method public whitelist isMirageWindowShow()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 707
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IOplusActivityTaskManager;->isMirageWindowShow()Z

    move-result v0

    return v0
.end method

.method public whitelist isSupportEdgeTouchPrevent()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 446
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IOplusActivityTaskManager;->isSupportEdgeTouchPrevent()Z

    move-result v0

    return v0
.end method

.method public whitelist isSupportMirageWindowMode()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 739
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IOplusActivityTaskManager;->isSupportMirageWindowMode()Z

    move-result v0

    return v0
.end method

.method public whitelist isSupportZoomMode(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "callPkg"    # Ljava/lang/String;
    .param p4, "extension"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 328
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/app/IOplusActivityTaskManager;->isSupportZoomMode(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public whitelist isSupportZoomWindowMode()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 323
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IOplusActivityTaskManager;->isSupportZoomWindowMode()Z

    move-result v0

    return v0
.end method

.method public whitelist isTouchNodeSupport(II)Z
    .locals 1
    .param p1, "deviceId"    # I
    .param p2, "nodeFlag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 821
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IOplusActivityTaskManager;->isTouchNodeSupport(II)Z

    move-result v0

    return v0
.end method

.method public whitelist isZoomSimpleModeEnable()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 373
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IOplusActivityTaskManager;->isZoomSimpleModeEnable()Z

    move-result v0

    return v0
.end method

.method public whitelist lockRotationInGame(I[Ljava/lang/String;)Z
    .locals 1
    .param p1, "state"    # I
    .param p2, "packages"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 874
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IOplusActivityTaskManager;->lockRotationInGame(I[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist moveCompactWindowToLeft()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 917
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IOplusActivityTaskManager;->moveCompactWindowToLeft()I

    move-result v0

    return v0
.end method

.method public whitelist moveCompactWindowToRight()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 921
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IOplusActivityTaskManager;->moveCompactWindowToRight()I

    move-result v0

    return v0
.end method

.method public whitelist notifySplitScreenStateChanged(Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "broadcast"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 514
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IOplusActivityTaskManager;->notifySplitScreenStateChanged(Ljava/lang/String;Landroid/os/Bundle;Z)V

    .line 515
    return-void
.end method

.method public whitelist notifyUiSwitched(Ljava/lang/String;I)V
    .locals 1
    .param p1, "uiInfo"    # Ljava/lang/String;
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 997
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IOplusActivityTaskManager;->notifyUiSwitched(Ljava/lang/String;I)V

    .line 998
    return-void
.end method

.method public blacklist notifyZoomStateChange(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "action"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 380
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IOplusActivityTaskManager;->notifyZoomStateChange(Ljava/lang/String;I)V

    .line 381
    return-void
.end method

.method public whitelist onControlViewChanged(Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;)V
    .locals 1
    .param p1, "cvInfo"    # Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 314
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityTaskManager;->onControlViewChanged(Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;)V

    .line 315
    return-void
.end method

.method public whitelist onFloatHandleViewChanged(Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;)V
    .locals 1
    .param p1, "floatHandleInfo"    # Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 344
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityTaskManager;->onFloatHandleViewChanged(Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;)V

    .line 345
    return-void
.end method

.method public whitelist onInputEvent(Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;)V
    .locals 1
    .param p1, "inputEventInfo"    # Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 310
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityTaskManager;->onInputEvent(Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;)V

    .line 311
    return-void
.end method

.method public whitelist onProtocolUpdated(Ljava/lang/String;)Z
    .locals 1
    .param p1, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 937
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityTaskManager;->onProtocolUpdated(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist readNodeFile(I)Ljava/lang/String;
    .locals 1
    .param p1, "nodeFlag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 805
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityTaskManager;->readNodeFile(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist readNodeFileByDevice(II)Ljava/lang/String;
    .locals 1
    .param p1, "deviceId"    # I
    .param p2, "nodeFlag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 809
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IOplusActivityTaskManager;->readNodeFileByDevice(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist rebindDisplayIfNeeded(II)Z
    .locals 1
    .param p1, "castDisplayId"    # I
    .param p2, "mirageDisplayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 775
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IOplusActivityTaskManager;->rebindDisplayIfNeeded(II)Z

    move-result v0

    return v0
.end method

.method public blacklist registerAppSwitchObserver(Ljava/lang/String;Lcom/oplus/app/IOplusAppSwitchObserver;Lcom/oplus/app/OplusAppSwitchConfig;)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "observer"    # Lcom/oplus/app/IOplusAppSwitchObserver;
    .param p3, "config"    # Lcom/oplus/app/OplusAppSwitchConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 254
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IOplusActivityTaskManager;->registerAppSwitchObserver(Ljava/lang/String;Lcom/oplus/app/IOplusAppSwitchObserver;Lcom/oplus/app/OplusAppSwitchConfig;)Z

    move-result v0

    return v0
.end method

.method public whitelist registerCompactWindowObserver(Lcom/oplus/compactwindow/IOplusCompactWindowObserver;)Z
    .locals 1
    .param p1, "observer"    # Lcom/oplus/compactwindow/IOplusCompactWindowObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 925
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityTaskManager;->registerCompactWindowObserver(Lcom/oplus/compactwindow/IOplusCompactWindowObserver;)Z

    move-result v0

    return v0
.end method

.method public blacklist registerConfineModeObserver(Lcom/oplus/confinemode/IOplusConfineModeObserver;)Z
    .locals 1
    .param p1, "observer"    # Lcom/oplus/confinemode/IOplusConfineModeObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 789
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityTaskManager;->registerConfineModeObserver(Lcom/oplus/confinemode/IOplusConfineModeObserver;)Z

    move-result v0

    return v0
.end method

.method public blacklist registerKeyEventInterceptor(Ljava/lang/String;Landroid/os/IOplusKeyEventObserver;Ljava/util/Map;)Z
    .locals 1
    .param p1, "interceptorFingerPrint"    # Ljava/lang/String;
    .param p2, "observer"    # Landroid/os/IOplusKeyEventObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/IOplusKeyEventObserver;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 646
    .local p3, "configs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IOplusActivityTaskManager;->registerKeyEventInterceptor(Ljava/lang/String;Landroid/os/IOplusKeyEventObserver;Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method public blacklist registerKeyEventObserver(Ljava/lang/String;Landroid/os/IOplusKeyEventObserver;I)Z
    .locals 1
    .param p1, "observerFingerPrint"    # Ljava/lang/String;
    .param p2, "observer"    # Landroid/os/IOplusKeyEventObserver;
    .param p3, "listenFlag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 612
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IOplusActivityTaskManager;->registerKeyEventObserver(Ljava/lang/String;Landroid/os/IOplusKeyEventObserver;I)Z

    move-result v0

    return v0
.end method

.method public whitelist registerLockScreenCallback(Lcom/oplus/lockscreen/IOplusLockScreenCallback;)Z
    .locals 1
    .param p1, "callback"    # Lcom/oplus/lockscreen/IOplusLockScreenCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 502
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityTaskManager;->registerLockScreenCallback(Lcom/oplus/lockscreen/IOplusLockScreenCallback;)Z

    move-result v0

    return v0
.end method

.method public whitelist registerMirageDisplayObserver(Lcom/oplus/miragewindow/IOplusMirageDisplayObserver;)Z
    .locals 1
    .param p1, "observer"    # Lcom/oplus/miragewindow/IOplusMirageDisplayObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 679
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityTaskManager;->registerMirageDisplayObserver(Lcom/oplus/miragewindow/IOplusMirageDisplayObserver;)Z

    move-result v0

    return v0
.end method

.method public whitelist registerMirageWindowObserver(Lcom/oplus/miragewindow/IOplusMirageWindowObserver;)Z
    .locals 1
    .param p1, "observer"    # Lcom/oplus/miragewindow/IOplusMirageWindowObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 671
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityTaskManager;->registerMirageWindowObserver(Lcom/oplus/miragewindow/IOplusMirageWindowObserver;)Z

    move-result v0

    return v0
.end method

.method public whitelist registerSecurityPageCallback(Lcom/oplus/app/ISecurityPageController;)Z
    .locals 1
    .param p1, "observer"    # Lcom/oplus/app/ISecurityPageController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 846
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityTaskManager;->registerSecurityPageCallback(Lcom/oplus/app/ISecurityPageController;)Z

    move-result v0

    return v0
.end method

.method public whitelist registerSplitScreenObserver(ILcom/oplus/app/IOplusSplitScreenObserver;)Z
    .locals 1
    .param p1, "observerId"    # I
    .param p2, "observer"    # Lcom/oplus/app/IOplusSplitScreenObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 531
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IOplusActivityTaskManager;->registerSplitScreenObserver(ILcom/oplus/app/IOplusSplitScreenObserver;)Z

    move-result v0

    return v0
.end method

.method public whitelist registerSysStateChangeObserver(Ljava/lang/String;Lcom/oplus/datasync/ISysStateChangeCallback;)Z
    .locals 1
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/oplus/datasync/ISysStateChangeCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 628
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IOplusActivityTaskManager;->registerSysStateChangeObserver(Ljava/lang/String;Lcom/oplus/datasync/ISysStateChangeCallback;)Z

    move-result v0

    return v0
.end method

.method public whitelist registerZoomAppObserver(Lcom/oplus/zoomwindow/IOplusZoomAppObserver;)Z
    .locals 1
    .param p1, "observer"    # Lcom/oplus/zoomwindow/IOplusZoomAppObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 835
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityTaskManager;->registerZoomAppObserver(Lcom/oplus/zoomwindow/IOplusZoomAppObserver;)Z

    move-result v0

    return v0
.end method

.method public blacklist registerZoomWindowObserver(Lcom/oplus/zoomwindow/IOplusZoomWindowObserver;)Z
    .locals 1
    .param p1, "observer"    # Lcom/oplus/zoomwindow/IOplusZoomWindowObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 280
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityTaskManager;->registerZoomWindowObserver(Lcom/oplus/zoomwindow/IOplusZoomWindowObserver;)Z

    move-result v0

    return v0
.end method

.method public blacklist removeBracketWindowConfigChangedListener(Lcom/oplus/bracket/IOplusBracketModeChangedListener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/oplus/bracket/IOplusBracketModeChangedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 983
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityTaskManager;->removeBracketWindowConfigChangedListener(Lcom/oplus/bracket/IOplusBracketModeChangedListener;)Z

    move-result v0

    return v0
.end method

.method public blacklist removeFreeformConfigChangedListener(Lcom/oplus/app/IOplusFreeformConfigChangedListener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/oplus/app/IOplusFreeformConfigChangedListener;

    .line 239
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist removeZoomWindowConfigChangedListener(Lcom/oplus/app/IOplusZoomWindowConfigChangedListener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/oplus/app/IOplusZoomWindowConfigChangedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 408
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityTaskManager;->addZoomWindowConfigChangedListener(Lcom/oplus/app/IOplusZoomWindowConfigChangedListener;)Z

    move-result v0

    return v0
.end method

.method public whitelist resetDefaultEdgeTouchPreventParam(Ljava/lang/String;)Z
    .locals 1
    .param p1, "callPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 442
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityTaskManager;->resetDefaultEdgeTouchPreventParam(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist setConfineMode(IZ)V
    .locals 1
    .param p1, "mode"    # I
    .param p2, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 475
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IOplusActivityTaskManager;->setConfineMode(IZ)V

    .line 476
    return-void
.end method

.method public whitelist setDefaultEdgeTouchPreventParam(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "callPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 438
    .local p2, "paramCmdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IOplusActivityTaskManager;->setDefaultEdgeTouchPreventParam(Ljava/lang/String;Ljava/util/List;)V

    .line 439
    return-void
.end method

.method public whitelist setEdgeTouchCallRules(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "callPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 451
    .local p2, "rulesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IOplusActivityTaskManager;->setEdgeTouchCallRules(Ljava/lang/String;Ljava/util/Map;)V

    .line 452
    return-void
.end method

.method public whitelist setGimbalLaunchPkg(Ljava/lang/String;)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 491
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityTaskManager;->setGimbalLaunchPkg(Ljava/lang/String;)V

    .line 492
    return-void
.end method

.method public whitelist setGlobalDragAndDropConfig(Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfig;)V
    .locals 1
    .param p1, "config"    # Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 664
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityTaskManager;->setGlobalDragAndDropConfig(Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfig;)V

    .line 665
    return-void
.end method

.method public blacklist setIMECrop(I)V
    .locals 1
    .param p1, "imeCropY"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 353
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityTaskManager;->setIMECrop(I)V

    .line 354
    return-void
.end method

.method public whitelist setMirageDisplaySurfaceById(ILandroid/view/Surface;)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 719
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IOplusActivityTaskManager;->setMirageDisplaySurfaceById(ILandroid/view/Surface;)V

    .line 720
    return-void
.end method

.method public whitelist setMirageDisplaySurfaceByMode(ILandroid/view/Surface;)V
    .locals 1
    .param p1, "mode"    # I
    .param p2, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 723
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IOplusActivityTaskManager;->setMirageDisplaySurfaceByMode(ILandroid/view/Surface;)V

    .line 724
    return-void
.end method

.method public whitelist setMirageWindowSilent(Ljava/lang/String;)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 735
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityTaskManager;->setMirageWindowSilent(Ljava/lang/String;)V

    .line 736
    return-void
.end method

.method public whitelist setPackagesState(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 498
    .local p1, "packageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityTaskManager;->setPackagesState(Ljava/util/Map;)V

    .line 499
    return-void
.end method

.method public whitelist setPermitList(IILjava/util/List;Z)V
    .locals 1
    .param p1, "mode"    # I
    .param p2, "type"    # I
    .param p4, "isMultiApp"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 484
    .local p3, "permits":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/app/IOplusActivityTaskManager;->setPermitList(IILjava/util/List;Z)V

    .line 485
    return-void
.end method

.method public blacklist setSecureController(Landroid/app/IActivityController;)V
    .locals 1
    .param p1, "watcher"    # Landroid/app/IActivityController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 186
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityTaskManager;->setSecureController(Landroid/app/IActivityController;)V

    .line 187
    return-void
.end method

.method public whitelist setSplitScreenObserver(Lcom/oplus/app/IOplusSplitScreenObserver;)Z
    .locals 1
    .param p1, "observer"    # Lcom/oplus/app/IOplusSplitScreenObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 518
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityTaskManager;->setSplitScreenObserver(Lcom/oplus/app/IOplusSplitScreenObserver;)Z

    move-result v0

    return v0
.end method

.method public blacklist setTaskWindowingModeSplitScreen(I)I
    .locals 1
    .param p1, "taskId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 555
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityTaskManager;->setTaskWindowingModeSplitScreen(I)I

    move-result v0

    return v0
.end method

.method public whitelist setZoomWindowConfig(Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;)V
    .locals 1
    .param p1, "config"    # Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 336
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityTaskManager;->setZoomWindowConfig(Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;)V

    .line 337
    return-void
.end method

.method public blacklist shouldInterceptBackKeyForMultiSearch(Landroid/os/IBinder;Z)Z
    .locals 1
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "down"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 884
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IOplusActivityTaskManager;->shouldInterceptBackKeyForMultiSearch(Landroid/os/IBinder;Z)Z

    move-result v0

    return v0
.end method

.method public blacklist splitScreenForApplication(Landroid/content/Context;Landroid/content/Intent;I)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "position"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 468
    const/4 v0, 0x0

    const/high16 v1, 0x44000000    # 512.0f

    const/4 v2, 0x0

    invoke-static {p1, v0, p2, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 469
    .local v0, "pendingIntent":Landroid/app/PendingIntent;
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v1

    invoke-interface {v1, v0, p3}, Landroid/app/IOplusActivityTaskManager;->splitScreenForApplication(Landroid/app/PendingIntent;I)Z

    move-result v1

    return v1
.end method

.method public whitelist splitScreenForEdgePanel(Landroid/content/Intent;I)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 458
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IOplusActivityTaskManager;->splitScreenForEdgePanel(Landroid/content/Intent;I)I

    move-result v0

    return v0
.end method

.method public whitelist splitScreenForEdgePanelExt(Landroid/content/Intent;ZI)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "launchToPrimary"    # Z
    .param p3, "launchArea"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 563
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IOplusActivityTaskManager;->splitScreenForEdgePanelExt(Landroid/content/Intent;ZI)Z

    move-result v0

    return v0
.end method

.method public whitelist splitScreenForRecentTasks(I)Z
    .locals 1
    .param p1, "taskId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 548
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityTaskManager;->splitScreenForRecentTasks(I)Z

    move-result v0

    return v0
.end method

.method public whitelist splitScreenForTopApp(I)Z
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 544
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityTaskManager;->splitScreenForTopApp(I)Z

    move-result v0

    return v0
.end method

.method public whitelist startCompactWindow()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 905
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IOplusActivityTaskManager;->startCompactWindow()I

    move-result v0

    return v0
.end method

.method public whitelist startLockDeviceMode(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "rootPkg"    # Ljava/lang/String;
    .param p2, "packages"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 416
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IOplusActivityTaskManager;->startLockDeviceMode(Ljava/lang/String;[Ljava/lang/String;)V

    .line 417
    return-void
.end method

.method public whitelist startMiniZoomFromZoom(I)V
    .locals 1
    .param p1, "startWay"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 369
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityTaskManager;->startMiniZoomFromZoom(I)V

    .line 370
    return-void
.end method

.method public whitelist startMirageWindowMode(Landroid/content/Intent;Landroid/os/Bundle;)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 703
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IOplusActivityTaskManager;->startMirageWindowMode(Landroid/content/Intent;Landroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method public whitelist startMirageWindowModeWithName(Landroid/content/ComponentName;IILandroid/os/Bundle;)V
    .locals 1
    .param p1, "cpnName"    # Landroid/content/ComponentName;
    .param p2, "taskId"    # I
    .param p3, "flags"    # I
    .param p4, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 699
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/app/IOplusActivityTaskManager;->startMirageWindowModeWithName(Landroid/content/ComponentName;IILandroid/os/Bundle;)V

    .line 700
    return-void
.end method

.method public whitelist startZoomWindow(Landroid/content/Intent;Landroid/os/Bundle;ILjava/lang/String;)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "userId"    # I
    .param p4, "callPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 269
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/app/IOplusActivityTaskManager;->startZoomWindow(Landroid/content/Intent;Landroid/os/Bundle;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist stopLockDeviceMode()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 421
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IOplusActivityTaskManager;->stopLockDeviceMode()V

    .line 422
    return-void
.end method

.method public whitelist stopMirageWindowMode(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 715
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityTaskManager;->stopMirageWindowMode(Landroid/os/Bundle;)V

    .line 716
    return-void
.end method

.method public whitelist stopMirageWindowModeOld()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 711
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IOplusActivityTaskManager;->stopMirageWindowModeOld()V

    .line 712
    return-void
.end method

.method public whitelist swapDockedFullscreenStack()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 201
    return-void
.end method

.method public blacklist takeScreenshot(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl;
    .locals 1
    .param p1, "windowContainerToken"    # Landroid/window/WindowContainerToken;
    .param p2, "outSurfaceControl"    # Landroid/view/SurfaceControl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 898
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IOplusActivityTaskManager;->takeScreenshot(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method public whitelist unregisterAppSwitchObserver(Ljava/lang/String;Lcom/oplus/app/OplusAppSwitchConfig;)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "config"    # Lcom/oplus/app/OplusAppSwitchConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 260
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IOplusActivityTaskManager;->unregisterAppSwitchObserver(Ljava/lang/String;Lcom/oplus/app/OplusAppSwitchConfig;)Z

    move-result v0

    return v0
.end method

.method public whitelist unregisterCompactWindowObserver(Lcom/oplus/compactwindow/IOplusCompactWindowObserver;)Z
    .locals 1
    .param p1, "observer"    # Lcom/oplus/compactwindow/IOplusCompactWindowObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 929
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityTaskManager;->unregisterCompactWindowObserver(Lcom/oplus/compactwindow/IOplusCompactWindowObserver;)Z

    move-result v0

    return v0
.end method

.method public blacklist unregisterConfineModeObserver(Lcom/oplus/confinemode/IOplusConfineModeObserver;)Z
    .locals 1
    .param p1, "observer"    # Lcom/oplus/confinemode/IOplusConfineModeObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 798
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityTaskManager;->unregisterConfineModeObserver(Lcom/oplus/confinemode/IOplusConfineModeObserver;)Z

    move-result v0

    return v0
.end method

.method public whitelist unregisterKeyEventInterceptor(Ljava/lang/String;)Z
    .locals 1
    .param p1, "interceptorFingerPrint"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 650
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityTaskManager;->unregisterKeyEventInterceptor(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist unregisterKeyEventObserver(Ljava/lang/String;)Z
    .locals 1
    .param p1, "observerFingerPrint"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 616
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityTaskManager;->unregisterKeyEventObserver(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist unregisterLockScreenCallback(Lcom/oplus/lockscreen/IOplusLockScreenCallback;)Z
    .locals 1
    .param p1, "callback"    # Lcom/oplus/lockscreen/IOplusLockScreenCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 506
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityTaskManager;->unregisterLockScreenCallback(Lcom/oplus/lockscreen/IOplusLockScreenCallback;)Z

    move-result v0

    return v0
.end method

.method public whitelist unregisterMirageDisplayObserver(Lcom/oplus/miragewindow/IOplusMirageDisplayObserver;)Z
    .locals 1
    .param p1, "observer"    # Lcom/oplus/miragewindow/IOplusMirageDisplayObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 683
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityTaskManager;->unregisterMirageDisplayObserver(Lcom/oplus/miragewindow/IOplusMirageDisplayObserver;)Z

    move-result v0

    return v0
.end method

.method public whitelist unregisterMirageWindowObserver(Lcom/oplus/miragewindow/IOplusMirageWindowObserver;)Z
    .locals 1
    .param p1, "observer"    # Lcom/oplus/miragewindow/IOplusMirageWindowObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 675
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityTaskManager;->unregisterMirageWindowObserver(Lcom/oplus/miragewindow/IOplusMirageWindowObserver;)Z

    move-result v0

    return v0
.end method

.method public whitelist unregisterSecurityPageCallback(Lcom/oplus/app/ISecurityPageController;)Z
    .locals 1
    .param p1, "observer"    # Lcom/oplus/app/ISecurityPageController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 850
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityTaskManager;->unregisterSecurityPageCallback(Lcom/oplus/app/ISecurityPageController;)Z

    move-result v0

    return v0
.end method

.method public whitelist unregisterSplitScreenObserver(ILcom/oplus/app/IOplusSplitScreenObserver;)Z
    .locals 1
    .param p1, "observerId"    # I
    .param p2, "observer"    # Lcom/oplus/app/IOplusSplitScreenObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 536
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IOplusActivityTaskManager;->unregisterSplitScreenObserver(ILcom/oplus/app/IOplusSplitScreenObserver;)Z

    move-result v0

    return v0
.end method

.method public whitelist unregisterSysStateChangeObserver(Ljava/lang/String;Lcom/oplus/datasync/ISysStateChangeCallback;)Z
    .locals 1
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/oplus/datasync/ISysStateChangeCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 632
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IOplusActivityTaskManager;->unregisterSysStateChangeObserver(Ljava/lang/String;Lcom/oplus/datasync/ISysStateChangeCallback;)Z

    move-result v0

    return v0
.end method

.method public whitelist unregisterZoomAppObserver(Lcom/oplus/zoomwindow/IOplusZoomAppObserver;)Z
    .locals 1
    .param p1, "observer"    # Lcom/oplus/zoomwindow/IOplusZoomAppObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 839
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityTaskManager;->unregisterZoomAppObserver(Lcom/oplus/zoomwindow/IOplusZoomAppObserver;)Z

    move-result v0

    return v0
.end method

.method public blacklist unregisterZoomWindowObserver(Lcom/oplus/zoomwindow/IOplusZoomWindowObserver;)Z
    .locals 1
    .param p1, "observer"    # Lcom/oplus/zoomwindow/IOplusZoomWindowObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 291
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityTaskManager;->unregisterZoomWindowObserver(Lcom/oplus/zoomwindow/IOplusZoomWindowObserver;)Z

    move-result v0

    return v0
.end method

.method public whitelist updateAppData(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 623
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IOplusActivityTaskManager;->updateAppData(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public whitelist updateCarModeMultiLaunchWhiteList(Ljava/lang/String;)Z
    .locals 1
    .param p1, "list"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 691
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusActivityTaskManager;->updateCarModeMultiLaunchWhiteList(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist updateDeferStartingWindowApps(Ljava/util/List;Z)V
    .locals 1
    .param p2, "removeImmdiately"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 860
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IOplusActivityTaskManager;->updateDeferStartingWindowApps(Ljava/util/List;Z)V

    .line 861
    return-void
.end method

.method public whitelist updateMirageWindowCastFlag(ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "castFlag"    # I
    .param p2, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 749
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IOplusActivityTaskManager;->updateMirageWindowCastFlag(ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public whitelist updatePrivacyProtectionList(Ljava/util/List;Z)Z
    .locals 1
    .param p2, "replace"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 753
    .local p1, "name":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IOplusActivityTaskManager;->updatePrivacyProtectionList(Ljava/util/List;Z)Z

    move-result v0

    return v0
.end method

.method public whitelist updatePrivacyProtectionListWithBundle(Ljava/util/List;ZZLandroid/os/Bundle;)Z
    .locals 1
    .param p2, "append"    # Z
    .param p3, "isDefault"    # Z
    .param p4, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
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

    .line 758
    .local p1, "name":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/app/IOplusActivityTaskManager;->updatePrivacyProtectionListWithBundle(Ljava/util/List;ZZLandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public whitelist updateUntrustedTouchConfig(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "configData"    # Ljava/lang/String;
    .param p2, "isRus"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 359
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IOplusActivityTaskManager;->updateUntrustedTouchConfig(Ljava/lang/String;Z)V

    .line 360
    return-void
.end method

.method public whitelist writeEdgeTouchPreventParam(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z
    .locals 1
    .param p1, "callPkg"    # Ljava/lang/String;
    .param p2, "scenePkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 433
    .local p3, "paramCmdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IOplusActivityTaskManager;->writeEdgeTouchPreventParam(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public whitelist writeNodeFile(ILjava/lang/String;)Z
    .locals 1
    .param p1, "nodeFlag"    # I
    .param p2, "info"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 813
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IOplusActivityTaskManager;->writeNodeFile(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist writeNodeFileByDevice(IILjava/lang/String;)Z
    .locals 1
    .param p1, "deviceId"    # I
    .param p2, "nodeFlag"    # I
    .param p3, "info"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 817
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getService()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IOplusActivityTaskManager;->writeNodeFileByDevice(IILjava/lang/String;)Z

    move-result v0

    return v0
.end method
