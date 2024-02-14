.class public Landroid/app/IOplusActivityTaskManager$Default;
.super Ljava/lang/Object;
.source "IOplusActivityTaskManager.java"

# interfaces
.implements Landroid/app/IOplusActivityTaskManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IOplusActivityTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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

    .line 674
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist addFreeformConfigChangedListener(Lcom/oplus/app/IOplusFreeformConfigChangedListener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/oplus/app/IOplusFreeformConfigChangedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
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

    .line 202
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 707
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist callMethod(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
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

    .line 663
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist clientTransactionComplete(Landroid/os/IBinder;I)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 582
    return-void
.end method

.method public blacklist createMirageDisplay(Landroid/view/Surface;)I
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 457
    const/4 v0, 0x0

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

    .line 518
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist dismissSplitScreenMode(I)Z
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 341
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist exitCompactWindow()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 612
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist expandToFullScreen()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 488
    return-void
.end method

.method public blacklist feedbackUserSelection(IILandroid/os/Bundle;)V
    .locals 0
    .param p1, "eventId"    # I
    .param p2, "selection"    # I
    .param p3, "extension"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 526
    return-void
.end method

.method public blacklist getAllTopAppInfos()Ljava/util/List;
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

    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAppThemeVersion(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "change"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 594
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getConfineMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 270
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCurrentZoomWindowState()Lcom/oplus/zoomwindow/OplusZoomWindowInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 118
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getFocusBounds(Z)Landroid/graphics/Rect;
    .locals 1
    .param p1, "isPrimary"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 651
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getFocusComponent(Z)Landroid/content/ComponentName;
    .locals 1
    .param p1, "isPrimary"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 655
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getFocusMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 647
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getFreeformConfigList(I)Ljava/util/List;
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

    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getGetDisplayIdForPackageName(Ljava/lang/String;)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 522
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getGlobalDragAndDropConfig()Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 431
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getLeftRightBoundsForIme()Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 402
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getMinimizedBounds(I)Landroid/graphics/Rect;
    .locals 1
    .param p1, "dockedSide"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 384
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getMirageDisplayCastMode(I)I
    .locals 1
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 484
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getMirageWindowInfo()Lcom/oplus/miragewindow/OplusMirageWindowInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 498
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getMultiSearchSession()Lcom/oplus/multisearch/IOplusMultiSearchManagerSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 691
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getPWAppInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 636
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getRealSize()Landroid/graphics/Point;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 659
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSecurityFlagCurrentPage()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 167
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getSplitScreenSession()Lcom/oplus/splitscreen/IOplusSplitScreenSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 388
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSplitScreenState(Landroid/content/Intent;)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getSplitScreenStatus(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 353
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getTopActivityComponentName()Landroid/content/ComponentName;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getTopApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getZoomAppConfigList(I)Ljava/util/List;
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

    .line 125
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getZoomWindowConfig()Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 186
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist handleShowCompatibilityToast(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;I)Z
    .locals 1
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

    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hasColorSplitFeature()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 409
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hasLargeScreenFeature()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 376
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hideZoomWindow(I)V
    .locals 0
    .param p1, "flag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 122
    return-void
.end method

.method public blacklist invokeSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
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

    .line 667
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist isCurrentAppSupportCompactMode()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 616
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isFolderInnerScreen()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 380
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isFreeformEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isInSplitScreenMode()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 337
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isLockDeviceMode()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 225
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isMirageWindowShow()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 468
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isSupportEdgeTouchPrevent()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 250
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isSupportMirageWindowMode()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 494
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isSupportZoomMode(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)Z
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

    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isSupportZoomWindowMode()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isTouchNodeSupport(II)Z
    .locals 1
    .param p1, "deviceId"    # I
    .param p2, "nodeFlag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 575
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isZoomSimpleModeEnable()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 232
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist lockRotationInGame(I[Ljava/lang/String;)Z
    .locals 1
    .param p1, "state"    # I
    .param p2, "packages"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 601
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist moveCompactWindowToLeft()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 620
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist moveCompactWindowToRight()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 624
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist notifySplitScreenStateChanged(Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 0
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "broadcast"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 330
    return-void
.end method

.method public blacklist notifyUiSwitched(Ljava/lang/String;I)V
    .locals 0
    .param p1, "uiInfo"    # Ljava/lang/String;
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 704
    return-void
.end method

.method public blacklist notifyZoomStateChange(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "action"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 140
    return-void
.end method

.method public blacklist onControlViewChanged(Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;)V
    .locals 0
    .param p1, "cvInfo"    # Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 146
    return-void
.end method

.method public blacklist onFloatHandleViewChanged(Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;)V
    .locals 0
    .param p1, "floatHandleInfo"    # Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 178
    return-void
.end method

.method public blacklist onInputEvent(Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;)V
    .locals 0
    .param p1, "inputEventInfo"    # Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 143
    return-void
.end method

.method public blacklist onProtocolUpdated(Ljava/lang/String;)Z
    .locals 1
    .param p1, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 640
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist readNodeFile(I)Ljava/lang/String;
    .locals 1
    .param p1, "nodeFlag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 559
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist readNodeFileByDevice(II)Ljava/lang/String;
    .locals 1
    .param p1, "deviceId"    # I
    .param p2, "nodeFlag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 563
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist rebindDisplayIfNeeded(II)Z
    .locals 1
    .param p1, "castDisplayId"    # I
    .param p2, "mirageDisplayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 533
    const/4 v0, 0x0

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

    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist registerCompactWindowObserver(Lcom/oplus/compactwindow/IOplusCompactWindowObserver;)Z
    .locals 1
    .param p1, "observer"    # Lcom/oplus/compactwindow/IOplusCompactWindowObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 628
    const/4 v0, 0x0

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

    .line 544
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist registerKeyEventInterceptor(Ljava/lang/String;Landroid/os/IOplusKeyEventObserver;Ljava/util/Map;)Z
    .locals 1
    .param p1, "interceptorFingerPrint"    # Ljava/lang/String;
    .param p2, "observer"    # Landroid/os/IOplusKeyEventObserver;
    .param p3, "configs"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 420
    const/4 v0, 0x0

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

    .line 284
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist registerLockScreenCallback(Lcom/oplus/lockscreen/IOplusLockScreenCallback;)Z
    .locals 1
    .param p1, "callback"    # Lcom/oplus/lockscreen/IOplusLockScreenCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 319
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist registerMirageDisplayObserver(Lcom/oplus/miragewindow/IOplusMirageDisplayObserver;)Z
    .locals 1
    .param p1, "observer"    # Lcom/oplus/miragewindow/IOplusMirageDisplayObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 449
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist registerMirageWindowObserver(Lcom/oplus/miragewindow/IOplusMirageWindowObserver;)Z
    .locals 1
    .param p1, "observer"    # Lcom/oplus/miragewindow/IOplusMirageWindowObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 441
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist registerSecurityPageCallback(Lcom/oplus/app/ISecurityPageController;)Z
    .locals 1
    .param p1, "observer"    # Lcom/oplus/app/ISecurityPageController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist registerSplitScreenObserver(ILcom/oplus/app/IOplusSplitScreenObserver;)Z
    .locals 1
    .param p1, "observerId"    # I
    .param p2, "observer"    # Lcom/oplus/app/IOplusSplitScreenObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 345
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist registerSysStateChangeObserver(Ljava/lang/String;Lcom/oplus/datasync/ISysStateChangeCallback;)Z
    .locals 1
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/oplus/datasync/ISysStateChangeCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 299
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist registerZoomAppObserver(Lcom/oplus/zoomwindow/IOplusZoomAppObserver;)Z
    .locals 1
    .param p1, "observer"    # Lcom/oplus/zoomwindow/IOplusZoomAppObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 149
    const/4 v0, 0x0

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

    .line 106
    const/4 v0, 0x0

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

    .line 678
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist removeFreeformConfigChangedListener(Lcom/oplus/app/IOplusFreeformConfigChangedListener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/oplus/app/IOplusFreeformConfigChangedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
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

    .line 213
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist resetDefaultEdgeTouchPreventParam(Ljava/lang/String;)Z
    .locals 1
    .param p1, "callPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 246
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setConfineMode(IZ)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 267
    return-void
.end method

.method public blacklist setDefaultEdgeTouchPreventParam(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
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

    .line 243
    .local p2, "paramCmdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public blacklist setEdgeTouchCallRules(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
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

    .line 254
    .local p2, "rulesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    return-void
.end method

.method public blacklist setGimbalLaunchPkg(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 310
    return-void
.end method

.method public blacklist setGlobalDragAndDropConfig(Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfig;)V
    .locals 0
    .param p1, "config"    # Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 435
    return-void
.end method

.method public blacklist setIMECrop(I)V
    .locals 0
    .param p1, "imeCropY"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 701
    return-void
.end method

.method public blacklist setMirageDisplaySurfaceById(ILandroid/view/Surface;)V
    .locals 0
    .param p1, "displyId"    # I
    .param p2, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 478
    return-void
.end method

.method public blacklist setMirageDisplaySurfaceByMode(ILandroid/view/Surface;)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 481
    return-void
.end method

.method public blacklist setMirageWindowSilent(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 491
    return-void
.end method

.method public blacklist setPackagesState(Ljava/util/Map;)V
    .locals 0
    .param p1, "packageMap"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 316
    return-void
.end method

.method public blacklist setPermitList(IILjava/util/List;Z)V
    .locals 0
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

    .line 274
    .local p3, "permits":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public blacklist setSecureController(Landroid/app/IActivityController;)V
    .locals 0
    .param p1, "controller"    # Landroid/app/IActivityController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method

.method public blacklist setSplitScreenObserver(Lcom/oplus/app/IOplusSplitScreenObserver;)Z
    .locals 1
    .param p1, "observer"    # Lcom/oplus/app/IOplusSplitScreenObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 333
    const/4 v0, 0x0

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

    .line 365
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setZoomWindowConfig(Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;)V
    .locals 0
    .param p1, "config"    # Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 190
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

    .line 686
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist splitScreenForApplication(Landroid/app/PendingIntent;I)Z
    .locals 1
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 395
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist splitScreenForEdgePanel(Landroid/content/Intent;I)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 260
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist splitScreenForEdgePanelExt(Landroid/content/Intent;ZI)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "launchToPrimary"    # Z
    .param p3, "launchArea"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 372
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist splitScreenForRecentTasks(I)Z
    .locals 1
    .param p1, "taskId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 361
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist splitScreenForTopApp(I)Z
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 357
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist startCompactWindow()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 608
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist startLockDeviceMode(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "rootPkg"    # Ljava/lang/String;
    .param p2, "packages"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 219
    return-void
.end method

.method public blacklist startMiniZoomFromZoom(I)V
    .locals 0
    .param p1, "startWay"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 137
    return-void
.end method

.method public blacklist startMirageWindowMode(Landroid/content/Intent;Landroid/os/Bundle;)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 464
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist startMirageWindowModeWithName(Landroid/content/ComponentName;IILandroid/os/Bundle;)V
    .locals 0
    .param p1, "cpnName"    # Landroid/content/ComponentName;
    .param p2, "taskId"    # I
    .param p3, "flags"    # I
    .param p4, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 461
    return-void
.end method

.method public blacklist startZoomWindow(Landroid/content/Intent;Landroid/os/Bundle;ILjava/lang/String;)I
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

    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist stopLockDeviceMode()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 222
    return-void
.end method

.method public blacklist stopMirageWindowMode(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 475
    return-void
.end method

.method public blacklist stopMirageWindowModeOld()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 472
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

    .line 696
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist unregisterAppSwitchObserver(Ljava/lang/String;Lcom/oplus/app/OplusAppSwitchConfig;)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "config"    # Lcom/oplus/app/OplusAppSwitchConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist unregisterCompactWindowObserver(Lcom/oplus/compactwindow/IOplusCompactWindowObserver;)Z
    .locals 1
    .param p1, "observer"    # Lcom/oplus/compactwindow/IOplusCompactWindowObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 632
    const/4 v0, 0x0

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

    .line 552
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist unregisterKeyEventInterceptor(Ljava/lang/String;)Z
    .locals 1
    .param p1, "interceptorFingerPrint"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 424
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist unregisterKeyEventObserver(Ljava/lang/String;)Z
    .locals 1
    .param p1, "observerFingerPrint"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 288
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist unregisterLockScreenCallback(Lcom/oplus/lockscreen/IOplusLockScreenCallback;)Z
    .locals 1
    .param p1, "callback"    # Lcom/oplus/lockscreen/IOplusLockScreenCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 323
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist unregisterMirageDisplayObserver(Lcom/oplus/miragewindow/IOplusMirageDisplayObserver;)Z
    .locals 1
    .param p1, "observer"    # Lcom/oplus/miragewindow/IOplusMirageDisplayObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 453
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist unregisterMirageWindowObserver(Lcom/oplus/miragewindow/IOplusMirageWindowObserver;)Z
    .locals 1
    .param p1, "observer"    # Lcom/oplus/miragewindow/IOplusMirageWindowObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 445
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist unregisterSecurityPageCallback(Lcom/oplus/app/ISecurityPageController;)Z
    .locals 1
    .param p1, "observer"    # Lcom/oplus/app/ISecurityPageController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist unregisterSplitScreenObserver(ILcom/oplus/app/IOplusSplitScreenObserver;)Z
    .locals 1
    .param p1, "observerId"    # I
    .param p2, "observer"    # Lcom/oplus/app/IOplusSplitScreenObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 349
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist unregisterSysStateChangeObserver(Ljava/lang/String;Lcom/oplus/datasync/ISysStateChangeCallback;)Z
    .locals 1
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/oplus/datasync/ISysStateChangeCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 303
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist unregisterZoomAppObserver(Lcom/oplus/zoomwindow/IOplusZoomAppObserver;)Z
    .locals 1
    .param p1, "observer"    # Lcom/oplus/zoomwindow/IOplusZoomAppObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 153
    const/4 v0, 0x0

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

    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist updateAppData(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 295
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist updateCarModeMultiLaunchWhiteList(Ljava/lang/String;)Z
    .locals 1
    .param p1, "list"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 529
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist updateDeferStartingWindowApps(Ljava/util/List;Z)V
    .locals 0
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

    .line 173
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public blacklist updateMirageWindowCastFlag(ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "castFlag"    # I
    .param p2, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 502
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist updatePrivacyProtectionList(Ljava/util/List;Z)Z
    .locals 1
    .param p2, "append"    # Z
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

    .line 506
    .local p1, "name":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist updatePrivacyProtectionListWithBundle(Ljava/util/List;ZZLandroid/os/Bundle;)Z
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

    .line 510
    .local p1, "name":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist updateUntrustedTouchConfig(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "configData"    # Ljava/lang/String;
    .param p2, "isRus"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 588
    return-void
.end method

.method public blacklist writeEdgeTouchPreventParam(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z
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

    .line 239
    .local p3, "paramCmdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist writeNodeFile(ILjava/lang/String;)Z
    .locals 1
    .param p1, "nodeFlag"    # I
    .param p2, "info"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 567
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist writeNodeFileByDevice(IILjava/lang/String;)Z
    .locals 1
    .param p1, "deviceId"    # I
    .param p2, "nodeFlag"    # I
    .param p3, "info"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 571
    const/4 v0, 0x0

    return v0
.end method
