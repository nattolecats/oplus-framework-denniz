.class public abstract Landroid/app/IOplusActivityTaskManager$Stub;
.super Landroid/os/Binder;
.source "IOplusActivityTaskManager.java"

# interfaces
.implements Landroid/app/IOplusActivityTaskManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IOplusActivityTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IOplusActivityTaskManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addBracketWindowConfigChangedListener:I = 0x83

.field static final blacklist TRANSACTION_addFreeformConfigChangedListener:I = 0x8

.field static final blacklist TRANSACTION_addZoomWindowConfigChangedListener:I = 0x22

.field static final blacklist TRANSACTION_callMethod:I = 0x81

.field static final blacklist TRANSACTION_clientTransactionComplete:I = 0x70

.field static final blacklist TRANSACTION_createMirageDisplay:I = 0x54

.field static final blacklist TRANSACTION_createMirageWindowSession:I = 0x64

.field static final blacklist TRANSACTION_dismissSplitScreenMode:I = 0x3d

.field static final blacklist TRANSACTION_exitCompactWindow:I = 0x75

.field static final blacklist TRANSACTION_expandToFullScreen:I = 0x5d

.field static final blacklist TRANSACTION_feedbackUserSelection:I = 0x66

.field static final blacklist TRANSACTION_getAllTopAppInfos:I = 0x5

.field static final blacklist TRANSACTION_getAppThemeVersion:I = 0x72

.field static final blacklist TRANSACTION_getConfineMode:I = 0x2f

.field static final blacklist TRANSACTION_getCurrentZoomWindowState:I = 0xf

.field static final blacklist TRANSACTION_getFocusBounds:I = 0x7e

.field static final blacklist TRANSACTION_getFocusComponent:I = 0x7f

.field static final blacklist TRANSACTION_getFocusMode:I = 0x7d

.field static final blacklist TRANSACTION_getFreeformConfigList:I = 0x6

.field static final blacklist TRANSACTION_getGetDisplayIdForPackageName:I = 0x65

.field static final blacklist TRANSACTION_getGlobalDragAndDropConfig:I = 0x4e

.field static final blacklist TRANSACTION_getLeftRightBoundsForIme:I = 0x4a

.field static final blacklist TRANSACTION_getMinimizedBounds:I = 0x47

.field static final blacklist TRANSACTION_getMirageDisplayCastMode:I = 0x5c

.field static final blacklist TRANSACTION_getMirageWindowInfo:I = 0x60

.field static final blacklist TRANSACTION_getMultiSearchSession:I = 0x86

.field static final blacklist TRANSACTION_getPWAppInfo:I = 0x7b

.field static final blacklist TRANSACTION_getRealSize:I = 0x80

.field static final blacklist TRANSACTION_getSecurityFlagCurrentPage:I = 0x1c

.field static final blacklist TRANSACTION_getSplitScreenSession:I = 0x48

.field static final blacklist TRANSACTION_getSplitScreenState:I = 0x4

.field static final blacklist TRANSACTION_getSplitScreenStatus:I = 0x40

.field static final blacklist TRANSACTION_getTopActivityComponentName:I = 0x2

.field static final blacklist TRANSACTION_getTopApplicationInfo:I = 0x3

.field static final blacklist TRANSACTION_getZoomAppConfigList:I = 0x11

.field static final blacklist TRANSACTION_getZoomWindowConfig:I = 0x20

.field static final blacklist TRANSACTION_handleShowCompatibilityToast:I = 0x13

.field static final blacklist TRANSACTION_hasColorSplitFeature:I = 0x4b

.field static final blacklist TRANSACTION_hasLargeScreenFeature:I = 0x45

.field static final blacklist TRANSACTION_hideZoomWindow:I = 0x10

.field static final blacklist TRANSACTION_invokeSync:I = 0x82

.field static final blacklist TRANSACTION_isCurrentAppSupportCompactMode:I = 0x76

.field static final blacklist TRANSACTION_isFolderInnerScreen:I = 0x46

.field static final blacklist TRANSACTION_isFreeformEnabled:I = 0x7

.field static final blacklist TRANSACTION_isInSplitScreenMode:I = 0x3c

.field static final blacklist TRANSACTION_isLockDeviceMode:I = 0x26

.field static final blacklist TRANSACTION_isMirageWindowShow:I = 0x57

.field static final blacklist TRANSACTION_isSupportEdgeTouchPrevent:I = 0x2b

.field static final blacklist TRANSACTION_isSupportMirageWindowMode:I = 0x5f

.field static final blacklist TRANSACTION_isSupportZoomMode:I = 0x12

.field static final blacklist TRANSACTION_isSupportZoomWindowMode:I = 0x1f

.field static final blacklist TRANSACTION_isTouchNodeSupport:I = 0x6f

.field static final blacklist TRANSACTION_isZoomSimpleModeEnable:I = 0x27

.field static final blacklist TRANSACTION_lockRotationInGame:I = 0x73

.field static final blacklist TRANSACTION_moveCompactWindowToLeft:I = 0x77

.field static final blacklist TRANSACTION_moveCompactWindowToRight:I = 0x78

.field static final blacklist TRANSACTION_notifySplitScreenStateChanged:I = 0x3a

.field static final blacklist TRANSACTION_notifyUiSwitched:I = 0x89

.field static final blacklist TRANSACTION_notifyZoomStateChange:I = 0x15

.field static final blacklist TRANSACTION_onControlViewChanged:I = 0x17

.field static final blacklist TRANSACTION_onFloatHandleViewChanged:I = 0x1e

.field static final blacklist TRANSACTION_onInputEvent:I = 0x16

.field static final blacklist TRANSACTION_onProtocolUpdated:I = 0x7c

.field static final blacklist TRANSACTION_readNodeFile:I = 0x6b

.field static final blacklist TRANSACTION_readNodeFileByDevice:I = 0x6c

.field static final blacklist TRANSACTION_rebindDisplayIfNeeded:I = 0x68

.field static final blacklist TRANSACTION_registerAppSwitchObserver:I = 0xa

.field static final blacklist TRANSACTION_registerCompactWindowObserver:I = 0x79

.field static final blacklist TRANSACTION_registerConfineModeObserver:I = 0x69

.field static final blacklist TRANSACTION_registerKeyEventInterceptor:I = 0x4c

.field static final blacklist TRANSACTION_registerKeyEventObserver:I = 0x31

.field static final blacklist TRANSACTION_registerLockScreenCallback:I = 0x38

.field static final blacklist TRANSACTION_registerMirageDisplayObserver:I = 0x52

.field static final blacklist TRANSACTION_registerMirageWindowObserver:I = 0x50

.field static final blacklist TRANSACTION_registerSecurityPageCallback:I = 0x1a

.field static final blacklist TRANSACTION_registerSplitScreenObserver:I = 0x3e

.field static final blacklist TRANSACTION_registerSysStateChangeObserver:I = 0x34

.field static final blacklist TRANSACTION_registerZoomAppObserver:I = 0x18

.field static final blacklist TRANSACTION_registerZoomWindowObserver:I = 0xd

.field static final blacklist TRANSACTION_removeBracketWindowConfigChangedListener:I = 0x84

.field static final blacklist TRANSACTION_removeFreeformConfigChangedListener:I = 0x9

.field static final blacklist TRANSACTION_removeZoomWindowConfigChangedListener:I = 0x23

.field static final blacklist TRANSACTION_resetDefaultEdgeTouchPreventParam:I = 0x2a

.field static final blacklist TRANSACTION_setConfineMode:I = 0x2e

.field static final blacklist TRANSACTION_setDefaultEdgeTouchPreventParam:I = 0x29

.field static final blacklist TRANSACTION_setEdgeTouchCallRules:I = 0x2c

.field static final blacklist TRANSACTION_setGimbalLaunchPkg:I = 0x36

.field static final blacklist TRANSACTION_setGlobalDragAndDropConfig:I = 0x4f

.field static final blacklist TRANSACTION_setIMECrop:I = 0x88

.field static final blacklist TRANSACTION_setMirageDisplaySurfaceById:I = 0x5a

.field static final blacklist TRANSACTION_setMirageDisplaySurfaceByMode:I = 0x5b

.field static final blacklist TRANSACTION_setMirageWindowSilent:I = 0x5e

.field static final blacklist TRANSACTION_setPackagesState:I = 0x37

.field static final blacklist TRANSACTION_setPermitList:I = 0x30

.field static final blacklist TRANSACTION_setSecureController:I = 0x1

.field static final blacklist TRANSACTION_setSplitScreenObserver:I = 0x3b

.field static final blacklist TRANSACTION_setTaskWindowingModeSplitScreen:I = 0x43

.field static final blacklist TRANSACTION_setZoomWindowConfig:I = 0x21

.field static final blacklist TRANSACTION_shouldInterceptBackKeyForMultiSearch:I = 0x85

.field static final blacklist TRANSACTION_splitScreenForApplication:I = 0x49

.field static final blacklist TRANSACTION_splitScreenForEdgePanel:I = 0x2d

.field static final blacklist TRANSACTION_splitScreenForEdgePanelExt:I = 0x44

.field static final blacklist TRANSACTION_splitScreenForRecentTasks:I = 0x42

.field static final blacklist TRANSACTION_splitScreenForTopApp:I = 0x41

.field static final blacklist TRANSACTION_startCompactWindow:I = 0x74

.field static final blacklist TRANSACTION_startLockDeviceMode:I = 0x24

.field static final blacklist TRANSACTION_startMiniZoomFromZoom:I = 0x14

.field static final blacklist TRANSACTION_startMirageWindowMode:I = 0x56

.field static final blacklist TRANSACTION_startMirageWindowModeWithName:I = 0x55

.field static final blacklist TRANSACTION_startZoomWindow:I = 0xc

.field static final blacklist TRANSACTION_stopLockDeviceMode:I = 0x25

.field static final blacklist TRANSACTION_stopMirageWindowMode:I = 0x59

.field static final blacklist TRANSACTION_stopMirageWindowModeOld:I = 0x58

.field static final blacklist TRANSACTION_takeScreenshot:I = 0x87

.field static final blacklist TRANSACTION_unregisterAppSwitchObserver:I = 0xb

.field static final blacklist TRANSACTION_unregisterCompactWindowObserver:I = 0x7a

.field static final blacklist TRANSACTION_unregisterConfineModeObserver:I = 0x6a

.field static final blacklist TRANSACTION_unregisterKeyEventInterceptor:I = 0x4d

.field static final blacklist TRANSACTION_unregisterKeyEventObserver:I = 0x32

.field static final blacklist TRANSACTION_unregisterLockScreenCallback:I = 0x39

.field static final blacklist TRANSACTION_unregisterMirageDisplayObserver:I = 0x53

.field static final blacklist TRANSACTION_unregisterMirageWindowObserver:I = 0x51

.field static final blacklist TRANSACTION_unregisterSecurityPageCallback:I = 0x1b

.field static final blacklist TRANSACTION_unregisterSplitScreenObserver:I = 0x3f

.field static final blacklist TRANSACTION_unregisterSysStateChangeObserver:I = 0x35

.field static final blacklist TRANSACTION_unregisterZoomAppObserver:I = 0x19

.field static final blacklist TRANSACTION_unregisterZoomWindowObserver:I = 0xe

.field static final blacklist TRANSACTION_updateAppData:I = 0x33

.field static final blacklist TRANSACTION_updateCarModeMultiLaunchWhiteList:I = 0x67

.field static final blacklist TRANSACTION_updateDeferStartingWindowApps:I = 0x1d

.field static final blacklist TRANSACTION_updateMirageWindowCastFlag:I = 0x61

.field static final blacklist TRANSACTION_updatePrivacyProtectionList:I = 0x62

.field static final blacklist TRANSACTION_updatePrivacyProtectionListWithBundle:I = 0x63

.field static final blacklist TRANSACTION_updateUntrustedTouchConfig:I = 0x71

.field static final blacklist TRANSACTION_writeEdgeTouchPreventParam:I = 0x28

.field static final blacklist TRANSACTION_writeNodeFile:I = 0x6d

.field static final blacklist TRANSACTION_writeNodeFileByDevice:I = 0x6e


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 715
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 716
    const-string v0, "android.app.IOplusActivityTaskManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/IOplusActivityTaskManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 717
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/app/IOplusActivityTaskManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 724
    if-nez p0, :cond_0

    .line 725
    const/4 v0, 0x0

    return-object v0

    .line 727
    :cond_0
    const-string v0, "android.app.IOplusActivityTaskManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 728
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/IOplusActivityTaskManager;

    if-eqz v1, :cond_1

    .line 729
    move-object v1, v0

    check-cast v1, Landroid/app/IOplusActivityTaskManager;

    return-object v1

    .line 731
    :cond_1
    new-instance v1, Landroid/app/IOplusActivityTaskManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IOplusActivityTaskManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method static synthetic blacklist lambda$onTransact$0(Landroid/os/Parcel;Ljava/util/Map;I)V
    .locals 2
    .param p0, "data"    # Landroid/os/Parcel;
    .param p1, "_arg1"    # Ljava/util/Map;
    .param p2, "i"    # I

    .line 1181
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1183
    .local v0, "k":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 1184
    .local v1, "v":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1185
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 735
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 19
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 739
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    const-string v11, "android.app.IOplusActivityTaskManager"

    .line 740
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v12, 0x1

    if-lt v8, v12, :cond_0

    const v0, 0xffffff

    if-gt v8, v0, :cond_0

    .line 741
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 743
    :cond_0
    packed-switch v8, :pswitch_data_0

    .line 751
    packed-switch v8, :pswitch_data_1

    .line 2146
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 747
    :pswitch_0
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 748
    return v12

    .line 2137
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2139
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2140
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2141
    invoke-virtual {v7, v0, v1}, Landroid/app/IOplusActivityTaskManager$Stub;->notifyUiSwitched(Ljava/lang/String;I)V

    .line 2142
    goto/16 :goto_1

    .line 2128
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2129
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2130
    invoke-virtual {v7, v0}, Landroid/app/IOplusActivityTaskManager$Stub;->setIMECrop(I)V

    .line 2131
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2132
    goto/16 :goto_1

    .line 2116
    .end local v0    # "_arg0":I
    :pswitch_3
    sget-object v0, Landroid/window/WindowContainerToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/WindowContainerToken;

    .line 2118
    .local v0, "_arg0":Landroid/window/WindowContainerToken;
    sget-object v1, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControl;

    .line 2119
    .local v1, "_arg1":Landroid/view/SurfaceControl;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2120
    invoke-virtual {v7, v0, v1}, Landroid/app/IOplusActivityTaskManager$Stub;->takeScreenshot(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl;

    move-result-object v2

    .line 2121
    .local v2, "_result":Landroid/view/SurfaceControl;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2122
    invoke-virtual {v10, v2, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2123
    goto/16 :goto_1

    .line 2108
    .end local v0    # "_arg0":Landroid/window/WindowContainerToken;
    .end local v1    # "_arg1":Landroid/view/SurfaceControl;
    .end local v2    # "_result":Landroid/view/SurfaceControl;
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Landroid/app/IOplusActivityTaskManager$Stub;->getMultiSearchSession()Lcom/oplus/multisearch/IOplusMultiSearchManagerSession;

    move-result-object v0

    .line 2109
    .local v0, "_result":Lcom/oplus/multisearch/IOplusMultiSearchManagerSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2110
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2111
    goto/16 :goto_1

    .line 2097
    .end local v0    # "_result":Lcom/oplus/multisearch/IOplusMultiSearchManagerSession;
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2099
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 2100
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2101
    invoke-virtual {v7, v0, v1}, Landroid/app/IOplusActivityTaskManager$Stub;->shouldInterceptBackKeyForMultiSearch(Landroid/os/IBinder;Z)Z

    move-result v2

    .line 2102
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2103
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2104
    goto/16 :goto_1

    .line 2087
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Z
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/bracket/IOplusBracketModeChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/bracket/IOplusBracketModeChangedListener;

    move-result-object v0

    .line 2088
    .local v0, "_arg0":Lcom/oplus/bracket/IOplusBracketModeChangedListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2089
    invoke-virtual {v7, v0}, Landroid/app/IOplusActivityTaskManager$Stub;->removeBracketWindowConfigChangedListener(Lcom/oplus/bracket/IOplusBracketModeChangedListener;)Z

    move-result v1

    .line 2090
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2091
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2092
    goto/16 :goto_1

    .line 2077
    .end local v0    # "_arg0":Lcom/oplus/bracket/IOplusBracketModeChangedListener;
    .end local v1    # "_result":Z
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/bracket/IOplusBracketModeChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/bracket/IOplusBracketModeChangedListener;

    move-result-object v0

    .line 2078
    .restart local v0    # "_arg0":Lcom/oplus/bracket/IOplusBracketModeChangedListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2079
    invoke-virtual {v7, v0}, Landroid/app/IOplusActivityTaskManager$Stub;->addBracketWindowConfigChangedListener(Lcom/oplus/bracket/IOplusBracketModeChangedListener;)Z

    move-result v1

    .line 2080
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2081
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2082
    goto/16 :goto_1

    .line 2061
    .end local v0    # "_arg0":Lcom/oplus/bracket/IOplusBracketModeChangedListener;
    .end local v1    # "_result":Z
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2063
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2065
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2067
    .local v2, "_arg2":Ljava/lang/String;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 2068
    .local v3, "_arg3":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2069
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/app/IOplusActivityTaskManager$Stub;->invokeSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    .line 2070
    .local v4, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2071
    invoke-virtual {v10, v4, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2072
    goto/16 :goto_1

    .line 2041
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Landroid/os/Bundle;
    .end local v4    # "_result":Landroid/os/Bundle;
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 2043
    .local v13, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 2045
    .local v14, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 2047
    .local v15, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    .line 2049
    .local v16, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 2051
    .local v17, "_arg4":Ljava/lang/String;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/Bundle;

    .line 2052
    .local v18, "_arg5":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2053
    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v14

    move v3, v15

    move/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/app/IOplusActivityTaskManager$Stub;->callMethod(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 2054
    .local v0, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2055
    invoke-virtual {v10, v0, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2056
    goto/16 :goto_1

    .line 2033
    .end local v0    # "_result":Landroid/os/Bundle;
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":Z
    .end local v17    # "_arg4":Ljava/lang/String;
    .end local v18    # "_arg5":Landroid/os/Bundle;
    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Landroid/app/IOplusActivityTaskManager$Stub;->getRealSize()Landroid/graphics/Point;

    move-result-object v0

    .line 2034
    .local v0, "_result":Landroid/graphics/Point;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2035
    invoke-virtual {v10, v0, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2036
    goto/16 :goto_1

    .line 2024
    .end local v0    # "_result":Landroid/graphics/Point;
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 2025
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2026
    invoke-virtual {v7, v0}, Landroid/app/IOplusActivityTaskManager$Stub;->getFocusComponent(Z)Landroid/content/ComponentName;

    move-result-object v1

    .line 2027
    .local v1, "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2028
    invoke-virtual {v10, v1, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2029
    goto/16 :goto_1

    .line 2014
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Landroid/content/ComponentName;
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 2015
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2016
    invoke-virtual {v7, v0}, Landroid/app/IOplusActivityTaskManager$Stub;->getFocusBounds(Z)Landroid/graphics/Rect;

    move-result-object v1

    .line 2017
    .local v1, "_result":Landroid/graphics/Rect;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2018
    invoke-virtual {v10, v1, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2019
    goto/16 :goto_1

    .line 2006
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Landroid/graphics/Rect;
    :pswitch_d
    invoke-virtual/range {p0 .. p0}, Landroid/app/IOplusActivityTaskManager$Stub;->getFocusMode()I

    move-result v0

    .line 2007
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2008
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2009
    goto/16 :goto_1

    .line 1997
    .end local v0    # "_result":I
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1998
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1999
    invoke-virtual {v7, v0}, Landroid/app/IOplusActivityTaskManager$Stub;->onProtocolUpdated(Ljava/lang/String;)Z

    move-result v1

    .line 2000
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2001
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2002
    goto/16 :goto_1

    .line 1989
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_f
    invoke-virtual/range {p0 .. p0}, Landroid/app/IOplusActivityTaskManager$Stub;->getPWAppInfo()Ljava/util/Map;

    move-result-object v0

    .line 1990
    .local v0, "_result":Ljava/util/Map;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1991
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 1992
    goto/16 :goto_1

    .line 1980
    .end local v0    # "_result":Ljava/util/Map;
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/compactwindow/IOplusCompactWindowObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/compactwindow/IOplusCompactWindowObserver;

    move-result-object v0

    .line 1981
    .local v0, "_arg0":Lcom/oplus/compactwindow/IOplusCompactWindowObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1982
    invoke-virtual {v7, v0}, Landroid/app/IOplusActivityTaskManager$Stub;->unregisterCompactWindowObserver(Lcom/oplus/compactwindow/IOplusCompactWindowObserver;)Z

    move-result v1

    .line 1983
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1984
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1985
    goto/16 :goto_1

    .line 1970
    .end local v0    # "_arg0":Lcom/oplus/compactwindow/IOplusCompactWindowObserver;
    .end local v1    # "_result":Z
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/compactwindow/IOplusCompactWindowObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/compactwindow/IOplusCompactWindowObserver;

    move-result-object v0

    .line 1971
    .restart local v0    # "_arg0":Lcom/oplus/compactwindow/IOplusCompactWindowObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1972
    invoke-virtual {v7, v0}, Landroid/app/IOplusActivityTaskManager$Stub;->registerCompactWindowObserver(Lcom/oplus/compactwindow/IOplusCompactWindowObserver;)Z

    move-result v1

    .line 1973
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1974
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1975
    goto/16 :goto_1

    .line 1962
    .end local v0    # "_arg0":Lcom/oplus/compactwindow/IOplusCompactWindowObserver;
    .end local v1    # "_result":Z
    :pswitch_12
    invoke-virtual/range {p0 .. p0}, Landroid/app/IOplusActivityTaskManager$Stub;->moveCompactWindowToRight()I

    move-result v0

    .line 1963
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1964
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1965
    goto/16 :goto_1

    .line 1955
    .end local v0    # "_result":I
    :pswitch_13
    invoke-virtual/range {p0 .. p0}, Landroid/app/IOplusActivityTaskManager$Stub;->moveCompactWindowToLeft()I

    move-result v0

    .line 1956
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1957
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1958
    goto/16 :goto_1

    .line 1948
    .end local v0    # "_result":I
    :pswitch_14
    invoke-virtual/range {p0 .. p0}, Landroid/app/IOplusActivityTaskManager$Stub;->isCurrentAppSupportCompactMode()Z

    move-result v0

    .line 1949
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1950
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1951
    goto/16 :goto_1

    .line 1941
    .end local v0    # "_result":Z
    :pswitch_15
    invoke-virtual/range {p0 .. p0}, Landroid/app/IOplusActivityTaskManager$Stub;->exitCompactWindow()I

    move-result v0

    .line 1942
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1943
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1944
    goto/16 :goto_1

    .line 1934
    .end local v0    # "_result":I
    :pswitch_16
    invoke-virtual/range {p0 .. p0}, Landroid/app/IOplusActivityTaskManager$Stub;->startCompactWindow()I

    move-result v0

    .line 1935
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1936
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1937
    goto/16 :goto_1

    .line 1923
    .end local v0    # "_result":I
    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1925
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 1926
    .local v1, "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1927
    invoke-virtual {v7, v0, v1}, Landroid/app/IOplusActivityTaskManager$Stub;->lockRotationInGame(I[Ljava/lang/String;)Z

    move-result v2

    .line 1928
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1929
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1930
    goto/16 :goto_1

    .line 1911
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1913
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1914
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1915
    invoke-virtual {v7, v0, v1}, Landroid/app/IOplusActivityTaskManager$Stub;->getAppThemeVersion(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 1916
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1917
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1918
    goto/16 :goto_1

    .line 1901
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1903
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1904
    .restart local v1    # "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1905
    invoke-virtual {v7, v0, v1}, Landroid/app/IOplusActivityTaskManager$Stub;->updateUntrustedTouchConfig(Ljava/lang/String;Z)V

    .line 1906
    goto/16 :goto_1

    .line 1890
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    :pswitch_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1892
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1893
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1894
    invoke-virtual {v7, v0, v1}, Landroid/app/IOplusActivityTaskManager$Stub;->clientTransactionComplete(Landroid/os/IBinder;I)V

    .line 1895
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1896
    goto/16 :goto_1

    .line 1878
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    :pswitch_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1880
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1881
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1882
    invoke-virtual {v7, v0, v1}, Landroid/app/IOplusActivityTaskManager$Stub;->isTouchNodeSupport(II)Z

    move-result v2

    .line 1883
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1884
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1885
    goto/16 :goto_1

    .line 1864
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1866
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1868
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1869
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1870
    invoke-virtual {v7, v0, v1, v2}, Landroid/app/IOplusActivityTaskManager$Stub;->writeNodeFileByDevice(IILjava/lang/String;)Z

    move-result v3

    .line 1871
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1872
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1873
    goto/16 :goto_1

    .line 1852
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1854
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1855
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1856
    invoke-virtual {v7, v0, v1}, Landroid/app/IOplusActivityTaskManager$Stub;->writeNodeFile(ILjava/lang/String;)Z

    move-result v2

    .line 1857
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1858
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1859
    goto/16 :goto_1

    .line 1840
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1842
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1843
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1844
    invoke-virtual {v7, v0, v1}, Landroid/app/IOplusActivityTaskManager$Stub;->readNodeFileByDevice(II)Ljava/lang/String;

    move-result-object v2

    .line 1845
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1846
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1847
    goto/16 :goto_1

    .line 1830
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1831
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1832
    invoke-virtual {v7, v0}, Landroid/app/IOplusActivityTaskManager$Stub;->readNodeFile(I)Ljava/lang/String;

    move-result-object v1

    .line 1833
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1834
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1835
    goto/16 :goto_1

    .line 1820
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/confinemode/IOplusConfineModeObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/confinemode/IOplusConfineModeObserver;

    move-result-object v0

    .line 1821
    .local v0, "_arg0":Lcom/oplus/confinemode/IOplusConfineModeObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1822
    invoke-virtual {v7, v0}, Landroid/app/IOplusActivityTaskManager$Stub;->unregisterConfineModeObserver(Lcom/oplus/confinemode/IOplusConfineModeObserver;)Z

    move-result v1

    .line 1823
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1824
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1825
    goto/16 :goto_1

    .line 1810
    .end local v0    # "_arg0":Lcom/oplus/confinemode/IOplusConfineModeObserver;
    .end local v1    # "_result":Z
    :pswitch_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/confinemode/IOplusConfineModeObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/confinemode/IOplusConfineModeObserver;

    move-result-object v0

    .line 1811
    .restart local v0    # "_arg0":Lcom/oplus/confinemode/IOplusConfineModeObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1812
    invoke-virtual {v7, v0}, Landroid/app/IOplusActivityTaskManager$Stub;->registerConfineModeObserver(Lcom/oplus/confinemode/IOplusConfineModeObserver;)Z

    move-result v1

    .line 1813
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1814
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1815
    goto/16 :goto_1

    .line 1798
    .end local v0    # "_arg0":Lcom/oplus/confinemode/IOplusConfineModeObserver;
    .end local v1    # "_result":Z
    :pswitch_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1800
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1801
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1802
    invoke-virtual {v7, v0, v1}, Landroid/app/IOplusActivityTaskManager$Stub;->rebindDisplayIfNeeded(II)Z

    move-result v2

    .line 1803
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1804
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1805
    goto/16 :goto_1

    .line 1788
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1789
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1790
    invoke-virtual {v7, v0}, Landroid/app/IOplusActivityTaskManager$Stub;->updateCarModeMultiLaunchWhiteList(Ljava/lang/String;)Z

    move-result v1

    .line 1791
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1792
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1793
    goto/16 :goto_1

    .line 1775
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1777
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1779
    .local v1, "_arg1":I
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 1780
    .local v2, "_arg2":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1781
    invoke-virtual {v7, v0, v1, v2}, Landroid/app/IOplusActivityTaskManager$Stub;->feedbackUserSelection(IILandroid/os/Bundle;)V

    .line 1782
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1783
    goto/16 :goto_1

    .line 1765
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/os/Bundle;
    :pswitch_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1766
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1767
    invoke-virtual {v7, v0}, Landroid/app/IOplusActivityTaskManager$Stub;->getGetDisplayIdForPackageName(Ljava/lang/String;)I

    move-result v1

    .line 1768
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1769
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1770
    goto/16 :goto_1

    .line 1755
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/miragewindow/IOplusMirageSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/miragewindow/IOplusMirageSessionCallback;

    move-result-object v0

    .line 1756
    .local v0, "_arg0":Lcom/oplus/miragewindow/IOplusMirageSessionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1757
    invoke-virtual {v7, v0}, Landroid/app/IOplusActivityTaskManager$Stub;->createMirageWindowSession(Lcom/oplus/miragewindow/IOplusMirageSessionCallback;)Lcom/oplus/miragewindow/IOplusMirageWindowSession;

    move-result-object v1

    .line 1758
    .local v1, "_result":Lcom/oplus/miragewindow/IOplusMirageWindowSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1759
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1760
    goto/16 :goto_1

    .line 1739
    .end local v0    # "_arg0":Lcom/oplus/miragewindow/IOplusMirageSessionCallback;
    .end local v1    # "_result":Lcom/oplus/miragewindow/IOplusMirageWindowSession;
    :pswitch_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 1741
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1743
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1745
    .local v2, "_arg2":Z
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 1746
    .local v3, "_arg3":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1747
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/app/IOplusActivityTaskManager$Stub;->updatePrivacyProtectionListWithBundle(Ljava/util/List;ZZLandroid/os/Bundle;)Z

    move-result v4

    .line 1748
    .local v4, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1749
    invoke-virtual {v10, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1750
    goto/16 :goto_1

    .line 1727
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Z
    .end local v3    # "_arg3":Landroid/os/Bundle;
    .end local v4    # "_result":Z
    :pswitch_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 1729
    .restart local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1730
    .restart local v1    # "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1731
    invoke-virtual {v7, v0, v1}, Landroid/app/IOplusActivityTaskManager$Stub;->updatePrivacyProtectionList(Ljava/util/List;Z)Z

    move-result v2

    .line 1732
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1733
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1734
    goto/16 :goto_1

    .line 1715
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Z
    :pswitch_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1717
    .local v0, "_arg0":I
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 1718
    .local v1, "_arg1":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1719
    invoke-virtual {v7, v0, v1}, Landroid/app/IOplusActivityTaskManager$Stub;->updateMirageWindowCastFlag(ILandroid/os/Bundle;)Z

    move-result v2

    .line 1720
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1721
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1722
    goto/16 :goto_1

    .line 1707
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v2    # "_result":Z
    :pswitch_2a
    invoke-virtual/range {p0 .. p0}, Landroid/app/IOplusActivityTaskManager$Stub;->getMirageWindowInfo()Lcom/oplus/miragewindow/OplusMirageWindowInfo;

    move-result-object v0

    .line 1708
    .local v0, "_result":Lcom/oplus/miragewindow/OplusMirageWindowInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1709
    invoke-virtual {v10, v0, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1710
    goto/16 :goto_1

    .line 1700
    .end local v0    # "_result":Lcom/oplus/miragewindow/OplusMirageWindowInfo;
    :pswitch_2b
    invoke-virtual/range {p0 .. p0}, Landroid/app/IOplusActivityTaskManager$Stub;->isSupportMirageWindowMode()Z

    move-result v0

    .line 1701
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1702
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1703
    goto/16 :goto_1

    .line 1692
    .end local v0    # "_result":Z
    :pswitch_2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1693
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1694
    invoke-virtual {v7, v0}, Landroid/app/IOplusActivityTaskManager$Stub;->setMirageWindowSilent(Ljava/lang/String;)V

    .line 1695
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1696
    goto/16 :goto_1

    .line 1685
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_2d
    invoke-virtual/range {p0 .. p0}, Landroid/app/IOplusActivityTaskManager$Stub;->expandToFullScreen()V

    .line 1686
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1687
    goto/16 :goto_1

    .line 1676
    :pswitch_2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1677
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1678
    invoke-virtual {v7, v0}, Landroid/app/IOplusActivityTaskManager$Stub;->getMirageDisplayCastMode(I)I

    move-result v1

    .line 1679
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1680
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1681
    goto/16 :goto_1

    .line 1665
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_2f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1667
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Surface;

    .line 1668
    .local v1, "_arg1":Landroid/view/Surface;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1669
    invoke-virtual {v7, v0, v1}, Landroid/app/IOplusActivityTaskManager$Stub;->setMirageDisplaySurfaceByMode(ILandroid/view/Surface;)V

    .line 1670
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1671
    goto/16 :goto_1

    .line 1654
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/view/Surface;
    :pswitch_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1656
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Surface;

    .line 1657
    .restart local v1    # "_arg1":Landroid/view/Surface;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1658
    invoke-virtual {v7, v0, v1}, Landroid/app/IOplusActivityTaskManager$Stub;->setMirageDisplaySurfaceById(ILandroid/view/Surface;)V

    .line 1659
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1660
    goto/16 :goto_1

    .line 1645
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/view/Surface;
    :pswitch_31
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 1646
    .local v0, "_arg0":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1647
    invoke-virtual {v7, v0}, Landroid/app/IOplusActivityTaskManager$Stub;->stopMirageWindowMode(Landroid/os/Bundle;)V

    .line 1648
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1649
    goto/16 :goto_1

    .line 1638
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :pswitch_32
    invoke-virtual/range {p0 .. p0}, Landroid/app/IOplusActivityTaskManager$Stub;->stopMirageWindowModeOld()V

    .line 1639
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1640
    goto/16 :goto_1

    .line 1631
    :pswitch_33
    invoke-virtual/range {p0 .. p0}, Landroid/app/IOplusActivityTaskManager$Stub;->isMirageWindowShow()Z

    move-result v0

    .line 1632
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1633
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1634
    goto/16 :goto_1

    .line 1620
    .end local v0    # "_result":Z
    :pswitch_34
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 1622
    .local v0, "_arg0":Landroid/content/Intent;
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 1623
    .local v1, "_arg1":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1624
    invoke-virtual {v7, v0, v1}, Landroid/app/IOplusActivityTaskManager$Stub;->startMirageWindowMode(Landroid/content/Intent;Landroid/os/Bundle;)I

    move-result v2

    .line 1625
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1626
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1627
    goto/16 :goto_1

    .line 1605
    .end local v0    # "_arg0":Landroid/content/Intent;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v2    # "_result":I
    :pswitch_35
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 1607
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1609
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1611
    .local v2, "_arg2":I
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 1612
    .restart local v3    # "_arg3":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1613
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/app/IOplusActivityTaskManager$Stub;->startMirageWindowModeWithName(Landroid/content/ComponentName;IILandroid/os/Bundle;)V

    .line 1614
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1615
    goto/16 :goto_1

    .line 1595
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Landroid/os/Bundle;
    :pswitch_36
    sget-object v0, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    .line 1596
    .local v0, "_arg0":Landroid/view/Surface;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1597
    invoke-virtual {v7, v0}, Landroid/app/IOplusActivityTaskManager$Stub;->createMirageDisplay(Landroid/view/Surface;)I

    move-result v1

    .line 1598
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1599
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1600
    goto/16 :goto_1

    .line 1585
    .end local v0    # "_arg0":Landroid/view/Surface;
    .end local v1    # "_result":I
    :pswitch_37
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/miragewindow/IOplusMirageDisplayObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/miragewindow/IOplusMirageDisplayObserver;

    move-result-object v0

    .line 1586
    .local v0, "_arg0":Lcom/oplus/miragewindow/IOplusMirageDisplayObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1587
    invoke-virtual {v7, v0}, Landroid/app/IOplusActivityTaskManager$Stub;->unregisterMirageDisplayObserver(Lcom/oplus/miragewindow/IOplusMirageDisplayObserver;)Z

    move-result v1

    .line 1588
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1589
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1590
    goto/16 :goto_1

    .line 1575
    .end local v0    # "_arg0":Lcom/oplus/miragewindow/IOplusMirageDisplayObserver;
    .end local v1    # "_result":Z
    :pswitch_38
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/miragewindow/IOplusMirageDisplayObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/miragewindow/IOplusMirageDisplayObserver;

    move-result-object v0

    .line 1576
    .restart local v0    # "_arg0":Lcom/oplus/miragewindow/IOplusMirageDisplayObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1577
    invoke-virtual {v7, v0}, Landroid/app/IOplusActivityTaskManager$Stub;->registerMirageDisplayObserver(Lcom/oplus/miragewindow/IOplusMirageDisplayObserver;)Z

    move-result v1

    .line 1578
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1579
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1580
    goto/16 :goto_1

    .line 1565
    .end local v0    # "_arg0":Lcom/oplus/miragewindow/IOplusMirageDisplayObserver;
    .end local v1    # "_result":Z
    :pswitch_39
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/miragewindow/IOplusMirageWindowObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/miragewindow/IOplusMirageWindowObserver;

    move-result-object v0

    .line 1566
    .local v0, "_arg0":Lcom/oplus/miragewindow/IOplusMirageWindowObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1567
    invoke-virtual {v7, v0}, Landroid/app/IOplusActivityTaskManager$Stub;->unregisterMirageWindowObserver(Lcom/oplus/miragewindow/IOplusMirageWindowObserver;)Z

    move-result v1

    .line 1568
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1569
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1570
    goto/16 :goto_1

    .line 1555
    .end local v0    # "_arg0":Lcom/oplus/miragewindow/IOplusMirageWindowObserver;
    .end local v1    # "_result":Z
    :pswitch_3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/miragewindow/IOplusMirageWindowObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/miragewindow/IOplusMirageWindowObserver;

    move-result-object v0

    .line 1556
    .restart local v0    # "_arg0":Lcom/oplus/miragewindow/IOplusMirageWindowObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1557
    invoke-virtual {v7, v0}, Landroid/app/IOplusActivityTaskManager$Stub;->registerMirageWindowObserver(Lcom/oplus/miragewindow/IOplusMirageWindowObserver;)Z

    move-result v1

    .line 1558
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1559
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1560
    goto/16 :goto_1

    .line 1546
    .end local v0    # "_arg0":Lcom/oplus/miragewindow/IOplusMirageWindowObserver;
    .end local v1    # "_result":Z
    :pswitch_3b
    sget-object v0, Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfig;

    .line 1547
    .local v0, "_arg0":Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfig;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1548
    invoke-virtual {v7, v0}, Landroid/app/IOplusActivityTaskManager$Stub;->setGlobalDragAndDropConfig(Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfig;)V

    .line 1549
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1550
    goto/16 :goto_1

    .line 1538
    .end local v0    # "_arg0":Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfig;
    :pswitch_3c
    invoke-virtual/range {p0 .. p0}, Landroid/app/IOplusActivityTaskManager$Stub;->getGlobalDragAndDropConfig()Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfig;

    move-result-object v0

    .line 1539
    .local v0, "_result":Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfig;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1540
    invoke-virtual {v10, v0, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1541
    goto/16 :goto_1

    .line 1529
    .end local v0    # "_result":Lcom/oplus/globaldrag/OplusGlobalDragAndDropRUSConfig;
    :pswitch_3d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1530
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1531
    invoke-virtual {v7, v0}, Landroid/app/IOplusActivityTaskManager$Stub;->unregisterKeyEventInterceptor(Ljava/lang/String;)Z

    move-result v1

    .line 1532
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1533
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1534
    goto/16 :goto_1

    .line 1514
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_3e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1516
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IOplusKeyEventObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IOplusKeyEventObserver;

    move-result-object v1

    .line 1518
    .local v1, "_arg1":Landroid/os/IOplusKeyEventObserver;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 1519
    .local v2, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v3

    .line 1520
    .local v3, "_arg2":Ljava/util/Map;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1521
    invoke-virtual {v7, v0, v1, v3}, Landroid/app/IOplusActivityTaskManager$Stub;->registerKeyEventInterceptor(Ljava/lang/String;Landroid/os/IOplusKeyEventObserver;Ljava/util/Map;)Z

    move-result v4

    .line 1522
    .restart local v4    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1523
    invoke-virtual {v10, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1524
    goto/16 :goto_1

    .line 1506
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/IOplusKeyEventObserver;
    .end local v2    # "cl":Ljava/lang/ClassLoader;
    .end local v3    # "_arg2":Ljava/util/Map;
    .end local v4    # "_result":Z
    :pswitch_3f
    invoke-virtual/range {p0 .. p0}, Landroid/app/IOplusActivityTaskManager$Stub;->hasColorSplitFeature()Z

    move-result v0

    .line 1507
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1508
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1509
    goto/16 :goto_1

    .line 1499
    .end local v0    # "_result":Z
    :pswitch_40
    invoke-virtual/range {p0 .. p0}, Landroid/app/IOplusActivityTaskManager$Stub;->getLeftRightBoundsForIme()Landroid/os/Bundle;

    move-result-object v0

    .line 1500
    .local v0, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1501
    invoke-virtual {v10, v0, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1502
    goto/16 :goto_1

    .line 1488
    .end local v0    # "_result":Landroid/os/Bundle;
    :pswitch_41
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 1490
    .local v0, "_arg0":Landroid/app/PendingIntent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1491
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1492
    invoke-virtual {v7, v0, v1}, Landroid/app/IOplusActivityTaskManager$Stub;->splitScreenForApplication(Landroid/app/PendingIntent;I)Z

    move-result v2

    .line 1493
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1494
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1495
    goto/16 :goto_1

    .line 1480
    .end local v0    # "_arg0":Landroid/app/PendingIntent;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_42
    invoke-virtual/range {p0 .. p0}, Landroid/app/IOplusActivityTaskManager$Stub;->getSplitScreenSession()Lcom/oplus/splitscreen/IOplusSplitScreenSession;

    move-result-object v0

    .line 1481
    .local v0, "_result":Lcom/oplus/splitscreen/IOplusSplitScreenSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1482
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1483
    goto/16 :goto_1

    .line 1471
    .end local v0    # "_result":Lcom/oplus/splitscreen/IOplusSplitScreenSession;
    :pswitch_43
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1472
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1473
    invoke-virtual {v7, v0}, Landroid/app/IOplusActivityTaskManager$Stub;->getMinimizedBounds(I)Landroid/graphics/Rect;

    move-result-object v1

    .line 1474
    .local v1, "_result":Landroid/graphics/Rect;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1475
    invoke-virtual {v10, v1, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1476
    goto/16 :goto_1

    .line 1463
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/graphics/Rect;
    :pswitch_44
    invoke-virtual/range {p0 .. p0}, Landroid/app/IOplusActivityTaskManager$Stub;->isFolderInnerScreen()Z

    move-result v0

    .line 1464
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1465
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1466
    goto/16 :goto_1

    .line 1456
    .end local v0    # "_result":Z
    :pswitch_45
    invoke-virtual/range {p0 .. p0}, Landroid/app/IOplusActivityTaskManager$Stub;->hasLargeScreenFeature()Z

    move-result v0

    .line 1457
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1458
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1459
    goto/16 :goto_1

    .line 1443
    .end local v0    # "_result":Z
    :pswitch_46
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 1445
    .local v0, "_arg0":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1447
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1448
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1449
    invoke-virtual {v7, v0, v1, v2}, Landroid/app/IOplusActivityTaskManager$Stub;->splitScreenForEdgePanelExt(Landroid/content/Intent;ZI)Z

    move-result v3

    .line 1450
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1451
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1452
    goto/16 :goto_1

    .line 1433
    .end local v0    # "_arg0":Landroid/content/Intent;
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_47
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1434
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1435
    invoke-virtual {v7, v0}, Landroid/app/IOplusActivityTaskManager$Stub;->setTaskWindowingModeSplitScreen(I)I

    move-result v1

    .line 1436
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1437
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1438
    goto/16 :goto_1

    .line 1423
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_48
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1424
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1425
    invoke-virtual {v7, v0}, Landroid/app/IOplusActivityTaskManager$Stub;->splitScreenForRecentTasks(I)Z

    move-result v1

    .line 1426
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1427
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1428
    goto/16 :goto_1

    .line 1413
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1414
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1415
    invoke-virtual {v7, v0}, Landroid/app/IOplusActivityTaskManager$Stub;->splitScreenForTopApp(I)Z

    move-result v1

    .line 1416
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1417
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1418
    goto/16 :goto_1

    .line 1403
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_4a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1404
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1405
    invoke-virtual {v7, v0}, Landroid/app/IOplusActivityTaskManager$Stub;->getSplitScreenStatus(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 1406
    .local v1, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1407
    invoke-virtual {v10, v1, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1408
    goto/16 :goto_1

    .line 1391
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Landroid/os/Bundle;
    :pswitch_4b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1393
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/app/IOplusSplitScreenObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/app/IOplusSplitScreenObserver;

    move-result-object v1

    .line 1394
    .local v1, "_arg1":Lcom/oplus/app/IOplusSplitScreenObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1395
    invoke-virtual {v7, v0, v1}, Landroid/app/IOplusActivityTaskManager$Stub;->unregisterSplitScreenObserver(ILcom/oplus/app/IOplusSplitScreenObserver;)Z

    move-result v2

    .line 1396
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1397
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1398
    goto/16 :goto_1

    .line 1379
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/oplus/app/IOplusSplitScreenObserver;
    .end local v2    # "_result":Z
    :pswitch_4c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1381
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/app/IOplusSplitScreenObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/app/IOplusSplitScreenObserver;

    move-result-object v1

    .line 1382
    .restart local v1    # "_arg1":Lcom/oplus/app/IOplusSplitScreenObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1383
    invoke-virtual {v7, v0, v1}, Landroid/app/IOplusActivityTaskManager$Stub;->registerSplitScreenObserver(ILcom/oplus/app/IOplusSplitScreenObserver;)Z

    move-result v2

    .line 1384
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1385
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1386
    goto/16 :goto_1

    .line 1369
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/oplus/app/IOplusSplitScreenObserver;
    .end local v2    # "_result":Z
    :pswitch_4d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1370
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1371
    invoke-virtual {v7, v0}, Landroid/app/IOplusActivityTaskManager$Stub;->dismissSplitScreenMode(I)Z

    move-result v1

    .line 1372
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1373
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1374
    goto/16 :goto_1

    .line 1361
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_4e
    invoke-virtual/range {p0 .. p0}, Landroid/app/IOplusActivityTaskManager$Stub;->isInSplitScreenMode()Z

    move-result v0

    .line 1362
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1363
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1364
    goto/16 :goto_1

    .line 1352
    .end local v0    # "_result":Z
    :pswitch_4f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/app/IOplusSplitScreenObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/app/IOplusSplitScreenObserver;

    move-result-object v0

    .line 1353
    .local v0, "_arg0":Lcom/oplus/app/IOplusSplitScreenObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1354
    invoke-virtual {v7, v0}, Landroid/app/IOplusActivityTaskManager$Stub;->setSplitScreenObserver(Lcom/oplus/app/IOplusSplitScreenObserver;)Z

    move-result v1

    .line 1355
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1356
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1357
    goto/16 :goto_1

    .line 1339
    .end local v0    # "_arg0":Lcom/oplus/app/IOplusSplitScreenObserver;
    .end local v1    # "_result":Z
    :pswitch_50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1341
    .local v0, "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 1343
    .local v1, "_arg1":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1344
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1345
    invoke-virtual {v7, v0, v1, v2}, Landroid/app/IOplusActivityTaskManager$Stub;->notifySplitScreenStateChanged(Ljava/lang/String;Landroid/os/Bundle;Z)V

    .line 1346
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1347
    goto/16 :goto_1

    .line 1329
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v2    # "_arg2":Z
    :pswitch_51
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/lockscreen/IOplusLockScreenCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/lockscreen/IOplusLockScreenCallback;

    move-result-object v0

    .line 1330
    .local v0, "_arg0":Lcom/oplus/lockscreen/IOplusLockScreenCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1331
    invoke-virtual {v7, v0}, Landroid/app/IOplusActivityTaskManager$Stub;->unregisterLockScreenCallback(Lcom/oplus/lockscreen/IOplusLockScreenCallback;)Z

    move-result v1

    .line 1332
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1333
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1334
    goto/16 :goto_1

    .line 1319
    .end local v0    # "_arg0":Lcom/oplus/lockscreen/IOplusLockScreenCallback;
    .end local v1    # "_result":Z
    :pswitch_52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/lockscreen/IOplusLockScreenCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/lockscreen/IOplusLockScreenCallback;

    move-result-object v0

    .line 1320
    .restart local v0    # "_arg0":Lcom/oplus/lockscreen/IOplusLockScreenCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1321
    invoke-virtual {v7, v0}, Landroid/app/IOplusActivityTaskManager$Stub;->registerLockScreenCallback(Lcom/oplus/lockscreen/IOplusLockScreenCallback;)Z

    move-result v1

    .line 1322
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1323
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1324
    goto/16 :goto_1

    .line 1309
    .end local v0    # "_arg0":Lcom/oplus/lockscreen/IOplusLockScreenCallback;
    .end local v1    # "_result":Z
    :pswitch_53
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 1310
    .local v0, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v1

    .line 1311
    .local v1, "_arg0":Ljava/util/Map;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1312
    invoke-virtual {v7, v1}, Landroid/app/IOplusActivityTaskManager$Stub;->setPackagesState(Ljava/util/Map;)V

    .line 1313
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1314
    goto/16 :goto_1

    .line 1300
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    .end local v1    # "_arg0":Ljava/util/Map;
    :pswitch_54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1301
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1302
    invoke-virtual {v7, v0}, Landroid/app/IOplusActivityTaskManager$Stub;->setGimbalLaunchPkg(Ljava/lang/String;)V

    .line 1303
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1304
    goto/16 :goto_1

    .line 1288
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1290
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/datasync/ISysStateChangeCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/datasync/ISysStateChangeCallback;

    move-result-object v1

    .line 1291
    .local v1, "_arg1":Lcom/oplus/datasync/ISysStateChangeCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1292
    invoke-virtual {v7, v0, v1}, Landroid/app/IOplusActivityTaskManager$Stub;->unregisterSysStateChangeObserver(Ljava/lang/String;Lcom/oplus/datasync/ISysStateChangeCallback;)Z

    move-result v2

    .line 1293
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1294
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1295
    goto/16 :goto_1

    .line 1276
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/oplus/datasync/ISysStateChangeCallback;
    .end local v2    # "_result":Z
    :pswitch_56
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1278
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/datasync/ISysStateChangeCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/datasync/ISysStateChangeCallback;

    move-result-object v1

    .line 1279
    .restart local v1    # "_arg1":Lcom/oplus/datasync/ISysStateChangeCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1280
    invoke-virtual {v7, v0, v1}, Landroid/app/IOplusActivityTaskManager$Stub;->registerSysStateChangeObserver(Ljava/lang/String;Lcom/oplus/datasync/ISysStateChangeCallback;)Z

    move-result v2

    .line 1281
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1282
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1283
    goto/16 :goto_1

    .line 1264
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/oplus/datasync/ISysStateChangeCallback;
    .end local v2    # "_result":Z
    :pswitch_57
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1266
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 1267
    .local v1, "_arg1":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1268
    invoke-virtual {v7, v0, v1}, Landroid/app/IOplusActivityTaskManager$Stub;->updateAppData(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v2

    .line 1269
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1270
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1271
    goto/16 :goto_1

    .line 1254
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v2    # "_result":Z
    :pswitch_58
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1255
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1256
    invoke-virtual {v7, v0}, Landroid/app/IOplusActivityTaskManager$Stub;->unregisterKeyEventObserver(Ljava/lang/String;)Z

    move-result v1

    .line 1257
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1258
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1259
    goto/16 :goto_1

    .line 1240
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_59
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1242
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IOplusKeyEventObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IOplusKeyEventObserver;

    move-result-object v1

    .line 1244
    .local v1, "_arg1":Landroid/os/IOplusKeyEventObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1245
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1246
    invoke-virtual {v7, v0, v1, v2}, Landroid/app/IOplusActivityTaskManager$Stub;->registerKeyEventObserver(Ljava/lang/String;Landroid/os/IOplusKeyEventObserver;I)Z

    move-result v3

    .line 1247
    .restart local v3    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1248
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1249
    goto/16 :goto_1

    .line 1225
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/IOplusKeyEventObserver;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_5a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1227
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1229
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 1231
    .local v2, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1232
    .local v3, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1233
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/app/IOplusActivityTaskManager$Stub;->setPermitList(IILjava/util/List;Z)V

    .line 1234
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1235
    goto/16 :goto_1

    .line 1217
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "_arg3":Z
    :pswitch_5b
    invoke-virtual/range {p0 .. p0}, Landroid/app/IOplusActivityTaskManager$Stub;->getConfineMode()I

    move-result v0

    .line 1218
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1219
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1220
    goto/16 :goto_1

    .line 1207
    .end local v0    # "_result":I
    :pswitch_5c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1209
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1210
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1211
    invoke-virtual {v7, v0, v1}, Landroid/app/IOplusActivityTaskManager$Stub;->setConfineMode(IZ)V

    .line 1212
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1213
    goto/16 :goto_1

    .line 1195
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_5d
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 1197
    .local v0, "_arg0":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1198
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1199
    invoke-virtual {v7, v0, v1}, Landroid/app/IOplusActivityTaskManager$Stub;->splitScreenForEdgePanel(Landroid/content/Intent;I)I

    move-result v2

    .line 1200
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1201
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1202
    goto/16 :goto_1

    .line 1175
    .end local v0    # "_arg0":Landroid/content/Intent;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_5e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1178
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1179
    .local v1, "N":I
    if-gez v1, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1180
    .local v2, "_arg1":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :goto_0
    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v3

    new-instance v4, Landroid/app/IOplusActivityTaskManager$Stub$$ExternalSyntheticLambda0;

    invoke-direct {v4, v9, v2}, Landroid/app/IOplusActivityTaskManager$Stub$$ExternalSyntheticLambda0;-><init>(Landroid/os/Parcel;Ljava/util/Map;)V

    invoke-interface {v3, v4}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 1187
    .end local v1    # "N":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1188
    invoke-virtual {v7, v0, v2}, Landroid/app/IOplusActivityTaskManager$Stub;->setEdgeTouchCallRules(Ljava/lang/String;Ljava/util/Map;)V

    .line 1189
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1190
    goto/16 :goto_1

    .line 1167
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :pswitch_5f
    invoke-virtual/range {p0 .. p0}, Landroid/app/IOplusActivityTaskManager$Stub;->isSupportEdgeTouchPrevent()Z

    move-result v0

    .line 1168
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1169
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1170
    goto/16 :goto_1

    .line 1158
    .end local v0    # "_result":Z
    :pswitch_60
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1159
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1160
    invoke-virtual {v7, v0}, Landroid/app/IOplusActivityTaskManager$Stub;->resetDefaultEdgeTouchPreventParam(Ljava/lang/String;)Z

    move-result v1

    .line 1161
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1162
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1163
    goto/16 :goto_1

    .line 1147
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_61
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1149
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 1150
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1151
    invoke-virtual {v7, v0, v1}, Landroid/app/IOplusActivityTaskManager$Stub;->setDefaultEdgeTouchPreventParam(Ljava/lang/String;Ljava/util/List;)V

    .line 1152
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1153
    goto/16 :goto_1

    .line 1133
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_62
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1135
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1137
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 1138
    .local v2, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1139
    invoke-virtual {v7, v0, v1, v2}, Landroid/app/IOplusActivityTaskManager$Stub;->writeEdgeTouchPreventParam(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    .line 1140
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1141
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1142
    goto/16 :goto_1

    .line 1125
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "_result":Z
    :pswitch_63
    invoke-virtual/range {p0 .. p0}, Landroid/app/IOplusActivityTaskManager$Stub;->isZoomSimpleModeEnable()Z

    move-result v0

    .line 1126
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1127
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1128
    goto/16 :goto_1

    .line 1118
    .end local v0    # "_result":Z
    :pswitch_64
    invoke-virtual/range {p0 .. p0}, Landroid/app/IOplusActivityTaskManager$Stub;->isLockDeviceMode()Z

    move-result v0

    .line 1119
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1120
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1121
    goto/16 :goto_1

    .line 1112
    .end local v0    # "_result":Z
    :pswitch_65
    invoke-virtual/range {p0 .. p0}, Landroid/app/IOplusActivityTaskManager$Stub;->stopLockDeviceMode()V

    .line 1113
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1114
    goto/16 :goto_1

    .line 1102
    :pswitch_66
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1104
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 1105
    .local v1, "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1106
    invoke-virtual {v7, v0, v1}, Landroid/app/IOplusActivityTaskManager$Stub;->startLockDeviceMode(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1107
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1108
    goto/16 :goto_1

    .line 1092
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":[Ljava/lang/String;
    :pswitch_67
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/app/IOplusZoomWindowConfigChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/app/IOplusZoomWindowConfigChangedListener;

    move-result-object v0

    .line 1093
    .local v0, "_arg0":Lcom/oplus/app/IOplusZoomWindowConfigChangedListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1094
    invoke-virtual {v7, v0}, Landroid/app/IOplusActivityTaskManager$Stub;->removeZoomWindowConfigChangedListener(Lcom/oplus/app/IOplusZoomWindowConfigChangedListener;)Z

    move-result v1

    .line 1095
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1096
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1097
    goto/16 :goto_1

    .line 1082
    .end local v0    # "_arg0":Lcom/oplus/app/IOplusZoomWindowConfigChangedListener;
    .end local v1    # "_result":Z
    :pswitch_68
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/app/IOplusZoomWindowConfigChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/app/IOplusZoomWindowConfigChangedListener;

    move-result-object v0

    .line 1083
    .restart local v0    # "_arg0":Lcom/oplus/app/IOplusZoomWindowConfigChangedListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1084
    invoke-virtual {v7, v0}, Landroid/app/IOplusActivityTaskManager$Stub;->addZoomWindowConfigChangedListener(Lcom/oplus/app/IOplusZoomWindowConfigChangedListener;)Z

    move-result v1

    .line 1085
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1086
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1087
    goto/16 :goto_1

    .line 1073
    .end local v0    # "_arg0":Lcom/oplus/app/IOplusZoomWindowConfigChangedListener;
    .end local v1    # "_result":Z
    :pswitch_69
    sget-object v0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;

    .line 1074
    .local v0, "_arg0":Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1075
    invoke-virtual {v7, v0}, Landroid/app/IOplusActivityTaskManager$Stub;->setZoomWindowConfig(Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;)V

    .line 1076
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1077
    goto/16 :goto_1

    .line 1065
    .end local v0    # "_arg0":Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;
    :pswitch_6a
    invoke-virtual/range {p0 .. p0}, Landroid/app/IOplusActivityTaskManager$Stub;->getZoomWindowConfig()Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;

    move-result-object v0

    .line 1066
    .local v0, "_result":Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1067
    invoke-virtual {v10, v0, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1068
    goto/16 :goto_1

    .line 1058
    .end local v0    # "_result":Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;
    :pswitch_6b
    invoke-virtual/range {p0 .. p0}, Landroid/app/IOplusActivityTaskManager$Stub;->isSupportZoomWindowMode()Z

    move-result v0

    .line 1059
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1060
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1061
    goto/16 :goto_1

    .line 1050
    .end local v0    # "_result":Z
    :pswitch_6c
    sget-object v0, Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;

    .line 1051
    .local v0, "_arg0":Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1052
    invoke-virtual {v7, v0}, Landroid/app/IOplusActivityTaskManager$Stub;->onFloatHandleViewChanged(Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;)V

    .line 1053
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1054
    goto/16 :goto_1

    .line 1040
    .end local v0    # "_arg0":Lcom/oplus/zoomwindow/OplusZoomFloatHandleViewInfo;
    :pswitch_6d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 1042
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1043
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1044
    invoke-virtual {v7, v0, v1}, Landroid/app/IOplusActivityTaskManager$Stub;->updateDeferStartingWindowApps(Ljava/util/List;Z)V

    .line 1045
    goto/16 :goto_1

    .line 1032
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "_arg1":Z
    :pswitch_6e
    invoke-virtual/range {p0 .. p0}, Landroid/app/IOplusActivityTaskManager$Stub;->getSecurityFlagCurrentPage()Z

    move-result v0

    .line 1033
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1034
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1035
    goto/16 :goto_1

    .line 1023
    .end local v0    # "_result":Z
    :pswitch_6f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/app/ISecurityPageController$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/app/ISecurityPageController;

    move-result-object v0

    .line 1024
    .local v0, "_arg0":Lcom/oplus/app/ISecurityPageController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1025
    invoke-virtual {v7, v0}, Landroid/app/IOplusActivityTaskManager$Stub;->unregisterSecurityPageCallback(Lcom/oplus/app/ISecurityPageController;)Z

    move-result v1

    .line 1026
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1027
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1028
    goto/16 :goto_1

    .line 1013
    .end local v0    # "_arg0":Lcom/oplus/app/ISecurityPageController;
    .end local v1    # "_result":Z
    :pswitch_70
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/app/ISecurityPageController$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/app/ISecurityPageController;

    move-result-object v0

    .line 1014
    .restart local v0    # "_arg0":Lcom/oplus/app/ISecurityPageController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1015
    invoke-virtual {v7, v0}, Landroid/app/IOplusActivityTaskManager$Stub;->registerSecurityPageCallback(Lcom/oplus/app/ISecurityPageController;)Z

    move-result v1

    .line 1016
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1017
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1018
    goto/16 :goto_1

    .line 1003
    .end local v0    # "_arg0":Lcom/oplus/app/ISecurityPageController;
    .end local v1    # "_result":Z
    :pswitch_71
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/zoomwindow/IOplusZoomAppObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/zoomwindow/IOplusZoomAppObserver;

    move-result-object v0

    .line 1004
    .local v0, "_arg0":Lcom/oplus/zoomwindow/IOplusZoomAppObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1005
    invoke-virtual {v7, v0}, Landroid/app/IOplusActivityTaskManager$Stub;->unregisterZoomAppObserver(Lcom/oplus/zoomwindow/IOplusZoomAppObserver;)Z

    move-result v1

    .line 1006
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1007
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1008
    goto/16 :goto_1

    .line 993
    .end local v0    # "_arg0":Lcom/oplus/zoomwindow/IOplusZoomAppObserver;
    .end local v1    # "_result":Z
    :pswitch_72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/zoomwindow/IOplusZoomAppObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/zoomwindow/IOplusZoomAppObserver;

    move-result-object v0

    .line 994
    .restart local v0    # "_arg0":Lcom/oplus/zoomwindow/IOplusZoomAppObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 995
    invoke-virtual {v7, v0}, Landroid/app/IOplusActivityTaskManager$Stub;->registerZoomAppObserver(Lcom/oplus/zoomwindow/IOplusZoomAppObserver;)Z

    move-result v1

    .line 996
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 997
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 998
    goto/16 :goto_1

    .line 984
    .end local v0    # "_arg0":Lcom/oplus/zoomwindow/IOplusZoomAppObserver;
    .end local v1    # "_result":Z
    :pswitch_73
    sget-object v0, Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;

    .line 985
    .local v0, "_arg0":Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 986
    invoke-virtual {v7, v0}, Landroid/app/IOplusActivityTaskManager$Stub;->onControlViewChanged(Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;)V

    .line 987
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 988
    goto/16 :goto_1

    .line 975
    .end local v0    # "_arg0":Lcom/oplus/zoomwindow/OplusZoomControlViewInfo;
    :pswitch_74
    sget-object v0, Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;

    .line 976
    .local v0, "_arg0":Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 977
    invoke-virtual {v7, v0}, Landroid/app/IOplusActivityTaskManager$Stub;->onInputEvent(Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;)V

    .line 978
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 979
    goto/16 :goto_1

    .line 964
    .end local v0    # "_arg0":Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;
    :pswitch_75
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 966
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 967
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 968
    invoke-virtual {v7, v0, v1}, Landroid/app/IOplusActivityTaskManager$Stub;->notifyZoomStateChange(Ljava/lang/String;I)V

    .line 969
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 970
    goto/16 :goto_1

    .line 955
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_76
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 956
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 957
    invoke-virtual {v7, v0}, Landroid/app/IOplusActivityTaskManager$Stub;->startMiniZoomFromZoom(I)V

    .line 958
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 959
    goto/16 :goto_1

    .line 937
    .end local v0    # "_arg0":I
    :pswitch_77
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 939
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 941
    .local v13, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 943
    .local v14, "_arg2":Ljava/lang/String;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/os/Bundle;

    .line 945
    .local v15, "_arg3":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 946
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 947
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v13

    move-object v3, v14

    move-object v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/app/IOplusActivityTaskManager$Stub;->handleShowCompatibilityToast(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;I)Z

    move-result v0

    .line 948
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 949
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 950
    goto/16 :goto_1

    .line 921
    .end local v0    # "_result":Z
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":Landroid/os/Bundle;
    .end local v16    # "_arg4":I
    :pswitch_78
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 923
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 925
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 927
    .local v2, "_arg2":Ljava/lang/String;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 928
    .local v3, "_arg3":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 929
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/app/IOplusActivityTaskManager$Stub;->isSupportZoomMode(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)Z

    move-result v4

    .line 930
    .restart local v4    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 931
    invoke-virtual {v10, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 932
    goto/16 :goto_1

    .line 911
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Landroid/os/Bundle;
    .end local v4    # "_result":Z
    :pswitch_79
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 912
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 913
    invoke-virtual {v7, v0}, Landroid/app/IOplusActivityTaskManager$Stub;->getZoomAppConfigList(I)Ljava/util/List;

    move-result-object v1

    .line 914
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 915
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 916
    goto/16 :goto_1

    .line 902
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_7a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 903
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 904
    invoke-virtual {v7, v0}, Landroid/app/IOplusActivityTaskManager$Stub;->hideZoomWindow(I)V

    .line 905
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 906
    goto/16 :goto_1

    .line 894
    .end local v0    # "_arg0":I
    :pswitch_7b
    invoke-virtual/range {p0 .. p0}, Landroid/app/IOplusActivityTaskManager$Stub;->getCurrentZoomWindowState()Lcom/oplus/zoomwindow/OplusZoomWindowInfo;

    move-result-object v0

    .line 895
    .local v0, "_result":Lcom/oplus/zoomwindow/OplusZoomWindowInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 896
    invoke-virtual {v10, v0, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 897
    goto/16 :goto_1

    .line 885
    .end local v0    # "_result":Lcom/oplus/zoomwindow/OplusZoomWindowInfo;
    :pswitch_7c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/zoomwindow/IOplusZoomWindowObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/zoomwindow/IOplusZoomWindowObserver;

    move-result-object v0

    .line 886
    .local v0, "_arg0":Lcom/oplus/zoomwindow/IOplusZoomWindowObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 887
    invoke-virtual {v7, v0}, Landroid/app/IOplusActivityTaskManager$Stub;->unregisterZoomWindowObserver(Lcom/oplus/zoomwindow/IOplusZoomWindowObserver;)Z

    move-result v1

    .line 888
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 889
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 890
    goto/16 :goto_1

    .line 875
    .end local v0    # "_arg0":Lcom/oplus/zoomwindow/IOplusZoomWindowObserver;
    .end local v1    # "_result":Z
    :pswitch_7d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/zoomwindow/IOplusZoomWindowObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/zoomwindow/IOplusZoomWindowObserver;

    move-result-object v0

    .line 876
    .restart local v0    # "_arg0":Lcom/oplus/zoomwindow/IOplusZoomWindowObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 877
    invoke-virtual {v7, v0}, Landroid/app/IOplusActivityTaskManager$Stub;->registerZoomWindowObserver(Lcom/oplus/zoomwindow/IOplusZoomWindowObserver;)Z

    move-result v1

    .line 878
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 879
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 880
    goto/16 :goto_1

    .line 859
    .end local v0    # "_arg0":Lcom/oplus/zoomwindow/IOplusZoomWindowObserver;
    .end local v1    # "_result":Z
    :pswitch_7e
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 861
    .local v0, "_arg0":Landroid/content/Intent;
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 863
    .local v1, "_arg1":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 865
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 866
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 867
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/app/IOplusActivityTaskManager$Stub;->startZoomWindow(Landroid/content/Intent;Landroid/os/Bundle;ILjava/lang/String;)I

    move-result v4

    .line 868
    .local v4, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 869
    invoke-virtual {v10, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 870
    goto/16 :goto_1

    .line 847
    .end local v0    # "_arg0":Landroid/content/Intent;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_7f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 849
    .local v0, "_arg0":Ljava/lang/String;
    sget-object v1, Lcom/oplus/app/OplusAppSwitchConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/app/OplusAppSwitchConfig;

    .line 850
    .local v1, "_arg1":Lcom/oplus/app/OplusAppSwitchConfig;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 851
    invoke-virtual {v7, v0, v1}, Landroid/app/IOplusActivityTaskManager$Stub;->unregisterAppSwitchObserver(Ljava/lang/String;Lcom/oplus/app/OplusAppSwitchConfig;)Z

    move-result v2

    .line 852
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 853
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 854
    goto/16 :goto_1

    .line 833
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/oplus/app/OplusAppSwitchConfig;
    .end local v2    # "_result":Z
    :pswitch_80
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 835
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/app/IOplusAppSwitchObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/app/IOplusAppSwitchObserver;

    move-result-object v1

    .line 837
    .local v1, "_arg1":Lcom/oplus/app/IOplusAppSwitchObserver;
    sget-object v2, Lcom/oplus/app/OplusAppSwitchConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/app/OplusAppSwitchConfig;

    .line 838
    .local v2, "_arg2":Lcom/oplus/app/OplusAppSwitchConfig;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 839
    invoke-virtual {v7, v0, v1, v2}, Landroid/app/IOplusActivityTaskManager$Stub;->registerAppSwitchObserver(Ljava/lang/String;Lcom/oplus/app/IOplusAppSwitchObserver;Lcom/oplus/app/OplusAppSwitchConfig;)Z

    move-result v3

    .line 840
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 841
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 842
    goto/16 :goto_1

    .line 823
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/oplus/app/IOplusAppSwitchObserver;
    .end local v2    # "_arg2":Lcom/oplus/app/OplusAppSwitchConfig;
    .end local v3    # "_result":Z
    :pswitch_81
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/app/IOplusFreeformConfigChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/app/IOplusFreeformConfigChangedListener;

    move-result-object v0

    .line 824
    .local v0, "_arg0":Lcom/oplus/app/IOplusFreeformConfigChangedListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 825
    invoke-virtual {v7, v0}, Landroid/app/IOplusActivityTaskManager$Stub;->removeFreeformConfigChangedListener(Lcom/oplus/app/IOplusFreeformConfigChangedListener;)Z

    move-result v1

    .line 826
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 827
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 828
    goto/16 :goto_1

    .line 813
    .end local v0    # "_arg0":Lcom/oplus/app/IOplusFreeformConfigChangedListener;
    .end local v1    # "_result":Z
    :pswitch_82
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/app/IOplusFreeformConfigChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/app/IOplusFreeformConfigChangedListener;

    move-result-object v0

    .line 814
    .restart local v0    # "_arg0":Lcom/oplus/app/IOplusFreeformConfigChangedListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 815
    invoke-virtual {v7, v0}, Landroid/app/IOplusActivityTaskManager$Stub;->addFreeformConfigChangedListener(Lcom/oplus/app/IOplusFreeformConfigChangedListener;)Z

    move-result v1

    .line 816
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 817
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 818
    goto :goto_1

    .line 805
    .end local v0    # "_arg0":Lcom/oplus/app/IOplusFreeformConfigChangedListener;
    .end local v1    # "_result":Z
    :pswitch_83
    invoke-virtual/range {p0 .. p0}, Landroid/app/IOplusActivityTaskManager$Stub;->isFreeformEnabled()Z

    move-result v0

    .line 806
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 807
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 808
    goto :goto_1

    .line 796
    .end local v0    # "_result":Z
    :pswitch_84
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 797
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 798
    invoke-virtual {v7, v0}, Landroid/app/IOplusActivityTaskManager$Stub;->getFreeformConfigList(I)Ljava/util/List;

    move-result-object v1

    .line 799
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 800
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 801
    goto :goto_1

    .line 788
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_85
    invoke-virtual/range {p0 .. p0}, Landroid/app/IOplusActivityTaskManager$Stub;->getAllTopAppInfos()Ljava/util/List;

    move-result-object v0

    .line 789
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/app/OplusAppInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 790
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 791
    goto :goto_1

    .line 779
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/app/OplusAppInfo;>;"
    :pswitch_86
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 780
    .local v0, "_arg0":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 781
    invoke-virtual {v7, v0}, Landroid/app/IOplusActivityTaskManager$Stub;->getSplitScreenState(Landroid/content/Intent;)I

    move-result v1

    .line 782
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 783
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 784
    goto :goto_1

    .line 771
    .end local v0    # "_arg0":Landroid/content/Intent;
    .end local v1    # "_result":I
    :pswitch_87
    invoke-virtual/range {p0 .. p0}, Landroid/app/IOplusActivityTaskManager$Stub;->getTopApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 772
    .local v0, "_result":Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 773
    invoke-virtual {v10, v0, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 774
    goto :goto_1

    .line 764
    .end local v0    # "_result":Landroid/content/pm/ApplicationInfo;
    :pswitch_88
    invoke-virtual/range {p0 .. p0}, Landroid/app/IOplusActivityTaskManager$Stub;->getTopActivityComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 765
    .local v0, "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 766
    invoke-virtual {v10, v0, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 767
    goto :goto_1

    .line 756
    .end local v0    # "_result":Landroid/content/ComponentName;
    :pswitch_89
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IActivityController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityController;

    move-result-object v0

    .line 757
    .local v0, "_arg0":Landroid/app/IActivityController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 758
    invoke-virtual {v7, v0}, Landroid/app/IOplusActivityTaskManager$Stub;->setSecureController(Landroid/app/IActivityController;)V

    .line 759
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 760
    nop

    .line 2149
    .end local v0    # "_arg0":Landroid/app/IActivityController;
    :goto_1
    return v12

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
