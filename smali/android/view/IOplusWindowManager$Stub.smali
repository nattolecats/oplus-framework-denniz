.class public abstract Landroid/view/IOplusWindowManager$Stub;
.super Landroid/os/Binder;
.source "IOplusWindowManager.java"

# interfaces
.implements Landroid/view/IOplusWindowManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IOplusWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IOplusWindowManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_clearOplusLaunchViewInfoForWindow:I = 0x2f

.field static final blacklist TRANSACTION_directFindCmd:I = 0x2b

.field static final blacklist TRANSACTION_getAllVisibleWindowInfo:I = 0x26

.field static final blacklist TRANSACTION_getApkUnlockWindow:I = 0x3

.field static final blacklist TRANSACTION_getCurrentFocus:I = 0x11

.field static final blacklist TRANSACTION_getFloatWindowRect:I = 0x12

.field static final blacklist TRANSACTION_getFocusedWindowFrame:I = 0x30

.field static final blacklist TRANSACTION_getFocusedWindowIgnoreHomeMenuKey:I = 0x1d

.field static final blacklist TRANSACTION_getFreeformStackBounds:I = 0x17

.field static final blacklist TRANSACTION_getImeBgOplusFromAdaptation:I = 0x1b

.field static final blacklist TRANSACTION_getLongshotSurfaceLayer:I = 0x31

.field static final blacklist TRANSACTION_getLongshotSurfaceLayerByType:I = 0x32

.field static final blacklist TRANSACTION_getLongshotWindowByType:I = 0x3a

.field static final blacklist TRANSACTION_getLongshotWindowByTypeForR:I = 0x3b

.field static final blacklist TRANSACTION_getNavBarOplusFromAdaptation:I = 0x19

.field static final blacklist TRANSACTION_getScreenshot:I = 0x3c

.field static final blacklist TRANSACTION_getSplitAreaRegion:I = 0x27

.field static final blacklist TRANSACTION_getStatusBarOplusFromAdaptation:I = 0x1a

.field static final blacklist TRANSACTION_getTypedWindowLayer:I = 0x1c

.field static final blacklist TRANSACTION_getWindowVisibleDisplayFrame:I = 0x25

.field static final blacklist TRANSACTION_isActivityNeedPalette:I = 0x18

.field static final blacklist TRANSACTION_isEdgePanelExpand:I = 0x3f

.field static final blacklist TRANSACTION_isFloatAssistExpand:I = 0x3e

.field static final blacklist TRANSACTION_isFullScreen:I = 0x8

.field static final blacklist TRANSACTION_isInFreeformMode:I = 0x16

.field static final blacklist TRANSACTION_isInputShow:I = 0x7

.field static final blacklist TRANSACTION_isKeyguardShowingAndNotOccluded:I = 0x37

.field static final blacklist TRANSACTION_isLockOnShow:I = 0x5

.field static final blacklist TRANSACTION_isLockWndShow:I = 0x1

.field static final blacklist TRANSACTION_isNavigationBarVisible:I = 0x34

.field static final blacklist TRANSACTION_isRotatingLw:I = 0xa

.field static final blacklist TRANSACTION_isSIMUnlockRunning:I = 0x6

.field static final blacklist TRANSACTION_isShortcutsPanelShow:I = 0x35

.field static final blacklist TRANSACTION_isStatusBarVisible:I = 0x9

.field static final blacklist TRANSACTION_isVolumeShow:I = 0x3d

.field static final blacklist TRANSACTION_isWindowShownForUid:I = 0xf

.field static final blacklist TRANSACTION_keyguardSetApkLockScreenShowing:I = 0x2

.field static final blacklist TRANSACTION_keyguardShowSecureApkLock:I = 0x4

.field static final blacklist TRANSACTION_longshotInjectInput:I = 0x36

.field static final blacklist TRANSACTION_longshotInjectInputBegin:I = 0x38

.field static final blacklist TRANSACTION_longshotInjectInputEnd:I = 0x39

.field static final blacklist TRANSACTION_longshotNotifyConnected:I = 0x33

.field static final blacklist TRANSACTION_registerOnUiModeConfigurationChangeFinishListener:I = 0x1e

.field static final blacklist TRANSACTION_registerOplusWindowStateObserver:I = 0x14

.field static final blacklist TRANSACTION_registerRemoteAnimationsForWindow:I = 0x2c

.field static final blacklist TRANSACTION_removeWindowShownOnKeyguard:I = 0x10

.field static final blacklist TRANSACTION_requestDismissKeyguard:I = 0xd

.field static final blacklist TRANSACTION_requestKeyguard:I = 0xe

.field static final blacklist TRANSACTION_requestScrollCapture:I = 0x40

.field static final blacklist TRANSACTION_requestVisibleWindows:I = 0x42

.field static final blacklist TRANSACTION_setBootAnimationRotationLock:I = 0x20

.field static final blacklist TRANSACTION_setInsetAnimationTid:I = 0x2a

.field static final blacklist TRANSACTION_setJoyStickConfig:I = 0x22

.field static final blacklist TRANSACTION_setJoyStickStatus:I = 0x23

.field static final blacklist TRANSACTION_setJoyStickSwitch:I = 0x24

.field static final blacklist TRANSACTION_setMagnification:I = 0xb

.field static final blacklist TRANSACTION_setMagnificationSpecEx:I = 0xc

.field static final blacklist TRANSACTION_setOplusLaunchViewInfoForWindow:I = 0x2e

.field static final blacklist TRANSACTION_showTransientNavbar:I = 0x28

.field static final blacklist TRANSACTION_startGestureAnmation:I = 0x29

.field static final blacklist TRANSACTION_startOplusDragWindow:I = 0x13

.field static final blacklist TRANSACTION_transferTouchFocus:I = 0x41

.field static final blacklist TRANSACTION_unregisterOnUiModeConfigurationChangeFinishListener:I = 0x1f

.field static final blacklist TRANSACTION_unregisterOplusWindowStateObserver:I = 0x15

.field static final blacklist TRANSACTION_unregisterRemoteAnimationsForWindow:I = 0x2d

.field static final blacklist TRANSACTION_updateInvalidRegion:I = 0x21


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 330
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 331
    const-string v0, "android.view.IOplusWindowManager"

    invoke-virtual {p0, p0, v0}, Landroid/view/IOplusWindowManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 332
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/view/IOplusWindowManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 339
    if-nez p0, :cond_0

    .line 340
    const/4 v0, 0x0

    return-object v0

    .line 342
    :cond_0
    const-string v0, "android.view.IOplusWindowManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 343
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/IOplusWindowManager;

    if-eqz v1, :cond_1

    .line 344
    move-object v1, v0

    check-cast v1, Landroid/view/IOplusWindowManager;

    return-object v1

    .line 346
    :cond_1
    new-instance v1, Landroid/view/IOplusWindowManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/IOplusWindowManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 350
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 17
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 354
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v10, "android.view.IOplusWindowManager"

    .line 355
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v7, v11, :cond_0

    const v0, 0xffffff

    if-gt v7, v0, :cond_0

    .line 356
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 358
    :cond_0
    packed-switch v7, :pswitch_data_0

    .line 366
    packed-switch v7, :pswitch_data_1

    .line 969
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 362
    :pswitch_0
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 363
    return v11

    .line 962
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/IOplusWindowManager$Stub;->requestVisibleWindows()Ljava/util/List;

    move-result-object v0

    .line 963
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 964
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 965
    goto/16 :goto_0

    .line 952
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 954
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 955
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 956
    invoke-virtual {v6, v0, v1}, Landroid/view/IOplusWindowManager$Stub;->transferTouchFocus(Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 957
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 958
    goto/16 :goto_0

    .line 935
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/os/IBinder;
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 937
    .local v12, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v13

    .line 939
    .local v13, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 941
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/screenshot/IOplusScrollCaptureResponseListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/screenshot/IOplusScrollCaptureResponseListener;

    move-result-object v15

    .line 943
    .local v15, "_arg3":Lcom/oplus/screenshot/IOplusScrollCaptureResponseListener;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/Bundle;

    .line 944
    .local v16, "_arg4":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 945
    move-object/from16 v0, p0

    move v1, v12

    move-object v2, v13

    move v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/view/IOplusWindowManager$Stub;->requestScrollCapture(ILandroid/os/IBinder;ILcom/oplus/screenshot/IOplusScrollCaptureResponseListener;Landroid/os/Bundle;)V

    .line 946
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 947
    goto/16 :goto_0

    .line 927
    .end local v12    # "_arg0":I
    .end local v13    # "_arg1":Landroid/os/IBinder;
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":Lcom/oplus/screenshot/IOplusScrollCaptureResponseListener;
    .end local v16    # "_arg4":Landroid/os/Bundle;
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/IOplusWindowManager$Stub;->isEdgePanelExpand()Z

    move-result v0

    .line 928
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 929
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 930
    goto/16 :goto_0

    .line 920
    .end local v0    # "_result":Z
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Landroid/view/IOplusWindowManager$Stub;->isFloatAssistExpand()Z

    move-result v0

    .line 921
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 922
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 923
    goto/16 :goto_0

    .line 913
    .end local v0    # "_result":Z
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Landroid/view/IOplusWindowManager$Stub;->isVolumeShow()Z

    move-result v0

    .line 914
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 915
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 916
    goto/16 :goto_0

    .line 904
    .end local v0    # "_result":Z
    :pswitch_7
    sget-object v0, Lcom/oplus/app/OplusScreenShotOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/app/OplusScreenShotOptions;

    .line 905
    .local v0, "_arg0":Lcom/oplus/app/OplusScreenShotOptions;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 906
    invoke-virtual {v6, v0}, Landroid/view/IOplusWindowManager$Stub;->getScreenshot(Lcom/oplus/app/OplusScreenShotOptions;)Lcom/oplus/app/OplusScreenShotResult;

    move-result-object v1

    .line 907
    .local v1, "_result":Lcom/oplus/app/OplusScreenShotResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 908
    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 909
    goto/16 :goto_0

    .line 894
    .end local v0    # "_arg0":Lcom/oplus/app/OplusScreenShotOptions;
    .end local v1    # "_result":Lcom/oplus/app/OplusScreenShotResult;
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 895
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 896
    invoke-virtual {v6, v0}, Landroid/view/IOplusWindowManager$Stub;->getLongshotWindowByTypeForR(I)Landroid/view/SurfaceControl;

    move-result-object v1

    .line 897
    .local v1, "_result":Landroid/view/SurfaceControl;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 898
    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 899
    goto/16 :goto_0

    .line 884
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/view/SurfaceControl;
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 885
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 886
    invoke-virtual {v6, v0}, Landroid/view/IOplusWindowManager$Stub;->getLongshotWindowByType(I)Landroid/os/IBinder;

    move-result-object v1

    .line 887
    .local v1, "_result":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 888
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 889
    goto/16 :goto_0

    .line 878
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/os/IBinder;
    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Landroid/view/IOplusWindowManager$Stub;->longshotInjectInputEnd()V

    .line 879
    goto/16 :goto_0

    .line 873
    :pswitch_b
    invoke-virtual/range {p0 .. p0}, Landroid/view/IOplusWindowManager$Stub;->longshotInjectInputBegin()V

    .line 874
    goto/16 :goto_0

    .line 866
    :pswitch_c
    invoke-virtual/range {p0 .. p0}, Landroid/view/IOplusWindowManager$Stub;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    .line 867
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 868
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 869
    goto/16 :goto_0

    .line 857
    .end local v0    # "_result":Z
    :pswitch_d
    sget-object v0, Landroid/view/InputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InputEvent;

    .line 859
    .local v0, "_arg0":Landroid/view/InputEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 860
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 861
    invoke-virtual {v6, v0, v1}, Landroid/view/IOplusWindowManager$Stub;->longshotInjectInput(Landroid/view/InputEvent;I)V

    .line 862
    goto/16 :goto_0

    .line 849
    .end local v0    # "_arg0":Landroid/view/InputEvent;
    .end local v1    # "_arg1":I
    :pswitch_e
    invoke-virtual/range {p0 .. p0}, Landroid/view/IOplusWindowManager$Stub;->isShortcutsPanelShow()Z

    move-result v0

    .line 850
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 851
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 852
    goto/16 :goto_0

    .line 842
    .end local v0    # "_result":Z
    :pswitch_f
    invoke-virtual/range {p0 .. p0}, Landroid/view/IOplusWindowManager$Stub;->isNavigationBarVisible()Z

    move-result v0

    .line 843
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 844
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 845
    goto/16 :goto_0

    .line 835
    .end local v0    # "_result":Z
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 836
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 837
    invoke-virtual {v6, v0}, Landroid/view/IOplusWindowManager$Stub;->longshotNotifyConnected(Z)V

    .line 838
    goto/16 :goto_0

    .line 825
    .end local v0    # "_arg0":Z
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 826
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 827
    invoke-virtual {v6, v0}, Landroid/view/IOplusWindowManager$Stub;->getLongshotSurfaceLayerByType(I)I

    move-result v1

    .line 828
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 829
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 830
    goto/16 :goto_0

    .line 817
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_12
    invoke-virtual/range {p0 .. p0}, Landroid/view/IOplusWindowManager$Stub;->getLongshotSurfaceLayer()I

    move-result v0

    .line 818
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 819
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 820
    goto/16 :goto_0

    .line 808
    .end local v0    # "_result":I
    :pswitch_13
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 809
    .local v0, "_arg0":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 810
    invoke-virtual {v6, v0}, Landroid/view/IOplusWindowManager$Stub;->getFocusedWindowFrame(Landroid/graphics/Rect;)V

    .line 811
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 812
    invoke-virtual {v9, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 813
    goto/16 :goto_0

    .line 799
    .end local v0    # "_arg0":Landroid/graphics/Rect;
    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 800
    .local v0, "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 801
    invoke-virtual {v6, v0}, Landroid/view/IOplusWindowManager$Stub;->clearOplusLaunchViewInfoForWindow(Landroid/view/IWindow;)V

    .line 802
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 803
    goto/16 :goto_0

    .line 788
    .end local v0    # "_arg0":Landroid/view/IWindow;
    :pswitch_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 790
    .restart local v0    # "_arg0":Landroid/view/IWindow;
    sget-object v1, Lcom/oplus/animation/LaunchViewInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/animation/LaunchViewInfo;

    .line 791
    .local v1, "_arg1":Lcom/oplus/animation/LaunchViewInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 792
    invoke-virtual {v6, v0, v1}, Landroid/view/IOplusWindowManager$Stub;->setOplusLaunchViewInfoForWindow(Landroid/view/IWindow;Lcom/oplus/animation/LaunchViewInfo;)V

    .line 793
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 794
    goto/16 :goto_0

    .line 779
    .end local v0    # "_arg0":Landroid/view/IWindow;
    .end local v1    # "_arg1":Lcom/oplus/animation/LaunchViewInfo;
    :pswitch_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 780
    .restart local v0    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 781
    invoke-virtual {v6, v0}, Landroid/view/IOplusWindowManager$Stub;->unregisterRemoteAnimationsForWindow(Landroid/view/IWindow;)V

    .line 782
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 783
    goto/16 :goto_0

    .line 768
    .end local v0    # "_arg0":Landroid/view/IWindow;
    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 770
    .restart local v0    # "_arg0":Landroid/view/IWindow;
    sget-object v1, Landroid/view/RemoteAnimationDefinition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/RemoteAnimationDefinition;

    .line 771
    .local v1, "_arg1":Landroid/view/RemoteAnimationDefinition;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 772
    invoke-virtual {v6, v0, v1}, Landroid/view/IOplusWindowManager$Stub;->registerRemoteAnimationsForWindow(Landroid/view/IWindow;Landroid/view/RemoteAnimationDefinition;)V

    .line 773
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 774
    goto/16 :goto_0

    .line 760
    .end local v0    # "_arg0":Landroid/view/IWindow;
    .end local v1    # "_arg1":Landroid/view/RemoteAnimationDefinition;
    :pswitch_18
    sget-object v0, Lcom/oplus/direct/OplusDirectFindCmd;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/direct/OplusDirectFindCmd;

    .line 761
    .local v0, "_arg0":Lcom/oplus/direct/OplusDirectFindCmd;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 762
    invoke-virtual {v6, v0}, Landroid/view/IOplusWindowManager$Stub;->directFindCmd(Lcom/oplus/direct/OplusDirectFindCmd;)V

    .line 763
    goto/16 :goto_0

    .line 746
    .end local v0    # "_arg0":Lcom/oplus/direct/OplusDirectFindCmd;
    :pswitch_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 748
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 750
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 751
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 752
    invoke-virtual {v6, v0, v1, v2}, Landroid/view/IOplusWindowManager$Stub;->setInsetAnimationTid(IIZ)Z

    move-result v3

    .line 753
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 754
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 755
    goto/16 :goto_0

    .line 735
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Z
    .end local v3    # "_result":Z
    :pswitch_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IOplusGestureAnimationRunner$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IOplusGestureAnimationRunner;

    move-result-object v0

    .line 737
    .local v0, "_arg0":Landroid/view/IOplusGestureAnimationRunner;
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 738
    .local v1, "_arg1":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 739
    invoke-virtual {v6, v0, v1}, Landroid/view/IOplusWindowManager$Stub;->startGestureAnmation(Landroid/view/IOplusGestureAnimationRunner;Landroid/os/Bundle;)V

    .line 740
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 741
    goto/16 :goto_0

    .line 727
    .end local v0    # "_arg0":Landroid/view/IOplusGestureAnimationRunner;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :pswitch_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 728
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 729
    invoke-virtual {v6, v0}, Landroid/view/IOplusWindowManager$Stub;->showTransientNavbar(I)V

    .line 730
    goto/16 :goto_0

    .line 719
    .end local v0    # "_arg0":I
    :pswitch_1c
    invoke-virtual/range {p0 .. p0}, Landroid/view/IOplusWindowManager$Stub;->getSplitAreaRegion()Ljava/util/List;

    move-result-object v0

    .line 720
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 721
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 722
    goto/16 :goto_0

    .line 712
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    :pswitch_1d
    invoke-virtual/range {p0 .. p0}, Landroid/view/IOplusWindowManager$Stub;->getAllVisibleWindowInfo()Ljava/util/List;

    move-result-object v0

    .line 713
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/app/OplusWindowInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 714
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 715
    goto/16 :goto_0

    .line 699
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/app/OplusWindowInfo;>;"
    :pswitch_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowSession;

    move-result-object v0

    .line 701
    .local v0, "_arg0":Landroid/view/IWindowSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    .line 703
    .local v1, "_arg1":Landroid/view/IWindow;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 704
    .local v2, "_arg2":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 705
    invoke-virtual {v6, v0, v1, v2}, Landroid/view/IOplusWindowManager$Stub;->getWindowVisibleDisplayFrame(Landroid/view/IWindowSession;Landroid/view/IWindow;Landroid/graphics/Rect;)V

    .line 706
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 707
    invoke-virtual {v9, v2, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 708
    goto/16 :goto_0

    .line 689
    .end local v0    # "_arg0":Landroid/view/IWindowSession;
    .end local v1    # "_arg1":Landroid/view/IWindow;
    .end local v2    # "_arg2":Landroid/graphics/Rect;
    :pswitch_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 690
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 691
    invoke-virtual {v6, v0}, Landroid/view/IOplusWindowManager$Stub;->setJoyStickSwitch(I)Z

    move-result v1

    .line 692
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 693
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 694
    goto/16 :goto_0

    .line 679
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 680
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 681
    invoke-virtual {v6, v0}, Landroid/view/IOplusWindowManager$Stub;->setJoyStickStatus(I)Z

    move-result v1

    .line 682
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 683
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 684
    goto/16 :goto_0

    .line 667
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 669
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 670
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 671
    invoke-virtual {v6, v0, v1}, Landroid/view/IOplusWindowManager$Stub;->setJoyStickConfig(ILjava/lang/String;)Z

    move-result v2

    .line 672
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 673
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 674
    goto/16 :goto_0

    .line 649
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 651
    .local v12, "_arg0":Ljava/lang/String;
    sget-object v0, Landroid/graphics/RectF;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v13

    .line 653
    .local v13, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v14

    .line 655
    .local v14, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v15

    .line 657
    .local v15, "_arg3":Z
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/Bundle;

    .line 658
    .restart local v16    # "_arg4":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 659
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    move v3, v14

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/view/IOplusWindowManager$Stub;->updateInvalidRegion(Ljava/lang/String;Ljava/util/List;ZZLandroid/os/Bundle;)Z

    move-result v0

    .line 660
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 661
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 662
    goto/16 :goto_0

    .line 640
    .end local v0    # "_result":Z
    .end local v12    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    .end local v14    # "_arg2":Z
    .end local v15    # "_arg3":Z
    .end local v16    # "_arg4":Landroid/os/Bundle;
    :pswitch_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 641
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 642
    invoke-virtual {v6, v0}, Landroid/view/IOplusWindowManager$Stub;->setBootAnimationRotationLock(Z)V

    .line 643
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 644
    goto/16 :goto_0

    .line 632
    .end local v0    # "_arg0":Z
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/darkmode/IOplusDarkModeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/darkmode/IOplusDarkModeListener;

    move-result-object v0

    .line 633
    .local v0, "_arg0":Lcom/oplus/darkmode/IOplusDarkModeListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 634
    invoke-virtual {v6, v0}, Landroid/view/IOplusWindowManager$Stub;->unregisterOnUiModeConfigurationChangeFinishListener(Lcom/oplus/darkmode/IOplusDarkModeListener;)V

    .line 635
    goto/16 :goto_0

    .line 624
    .end local v0    # "_arg0":Lcom/oplus/darkmode/IOplusDarkModeListener;
    :pswitch_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/darkmode/IOplusDarkModeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/darkmode/IOplusDarkModeListener;

    move-result-object v0

    .line 625
    .restart local v0    # "_arg0":Lcom/oplus/darkmode/IOplusDarkModeListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 626
    invoke-virtual {v6, v0}, Landroid/view/IOplusWindowManager$Stub;->registerOnUiModeConfigurationChangeFinishListener(Lcom/oplus/darkmode/IOplusDarkModeListener;)V

    .line 627
    goto/16 :goto_0

    .line 616
    .end local v0    # "_arg0":Lcom/oplus/darkmode/IOplusDarkModeListener;
    :pswitch_26
    invoke-virtual/range {p0 .. p0}, Landroid/view/IOplusWindowManager$Stub;->getFocusedWindowIgnoreHomeMenuKey()I

    move-result v0

    .line 617
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 618
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 619
    goto/16 :goto_0

    .line 607
    .end local v0    # "_result":I
    :pswitch_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 608
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 609
    invoke-virtual {v6, v0}, Landroid/view/IOplusWindowManager$Stub;->getTypedWindowLayer(I)I

    move-result v1

    .line 610
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 611
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 612
    goto/16 :goto_0

    .line 597
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 598
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 599
    invoke-virtual {v6, v0}, Landroid/view/IOplusWindowManager$Stub;->getImeBgOplusFromAdaptation(Ljava/lang/String;)I

    move-result v1

    .line 600
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 601
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 602
    goto/16 :goto_0

    .line 585
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 587
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 588
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 589
    invoke-virtual {v6, v0, v1}, Landroid/view/IOplusWindowManager$Stub;->getStatusBarOplusFromAdaptation(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 590
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 591
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 592
    goto/16 :goto_0

    .line 573
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 575
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 576
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 577
    invoke-virtual {v6, v0, v1}, Landroid/view/IOplusWindowManager$Stub;->getNavBarOplusFromAdaptation(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 578
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 579
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 580
    goto/16 :goto_0

    .line 561
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 563
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 564
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 565
    invoke-virtual {v6, v0, v1}, Landroid/view/IOplusWindowManager$Stub;->isActivityNeedPalette(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 566
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 567
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 568
    goto/16 :goto_0

    .line 551
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_2c
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 552
    .local v0, "_arg0":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 553
    invoke-virtual {v6, v0}, Landroid/view/IOplusWindowManager$Stub;->getFreeformStackBounds(Landroid/graphics/Rect;)V

    .line 554
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 555
    invoke-virtual {v9, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 556
    goto/16 :goto_0

    .line 543
    .end local v0    # "_arg0":Landroid/graphics/Rect;
    :pswitch_2d
    invoke-virtual/range {p0 .. p0}, Landroid/view/IOplusWindowManager$Stub;->isInFreeformMode()Z

    move-result v0

    .line 544
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 545
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 546
    goto/16 :goto_0

    .line 535
    .end local v0    # "_result":Z
    :pswitch_2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IOplusWindowStateObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IOplusWindowStateObserver;

    move-result-object v0

    .line 536
    .local v0, "_arg0":Landroid/view/IOplusWindowStateObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 537
    invoke-virtual {v6, v0}, Landroid/view/IOplusWindowManager$Stub;->unregisterOplusWindowStateObserver(Landroid/view/IOplusWindowStateObserver;)V

    .line 538
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 539
    goto/16 :goto_0

    .line 526
    .end local v0    # "_arg0":Landroid/view/IOplusWindowStateObserver;
    :pswitch_2f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IOplusWindowStateObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IOplusWindowStateObserver;

    move-result-object v0

    .line 527
    .restart local v0    # "_arg0":Landroid/view/IOplusWindowStateObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 528
    invoke-virtual {v6, v0}, Landroid/view/IOplusWindowManager$Stub;->registerOplusWindowStateObserver(Landroid/view/IOplusWindowStateObserver;)V

    .line 529
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 530
    goto/16 :goto_0

    .line 511
    .end local v0    # "_arg0":Landroid/view/IOplusWindowStateObserver;
    :pswitch_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 513
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 515
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 517
    .local v2, "_arg2":I
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 518
    .local v3, "_arg3":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 519
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/view/IOplusWindowManager$Stub;->startOplusDragWindow(Ljava/lang/String;IILandroid/os/Bundle;)V

    .line 520
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 521
    goto/16 :goto_0

    .line 501
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Landroid/os/Bundle;
    :pswitch_31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 502
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 503
    invoke-virtual {v6, v0}, Landroid/view/IOplusWindowManager$Stub;->getFloatWindowRect(I)Landroid/graphics/Rect;

    move-result-object v1

    .line 504
    .local v1, "_result":Landroid/graphics/Rect;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 505
    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 506
    goto/16 :goto_0

    .line 493
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/graphics/Rect;
    :pswitch_32
    invoke-virtual/range {p0 .. p0}, Landroid/view/IOplusWindowManager$Stub;->getCurrentFocus()Ljava/lang/String;

    move-result-object v0

    .line 494
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 495
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 496
    goto/16 :goto_0

    .line 487
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_33
    invoke-virtual/range {p0 .. p0}, Landroid/view/IOplusWindowManager$Stub;->removeWindowShownOnKeyguard()V

    .line 488
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 489
    goto/16 :goto_0

    .line 478
    :pswitch_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 479
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 480
    invoke-virtual {v6, v0}, Landroid/view/IOplusWindowManager$Stub;->isWindowShownForUid(I)Z

    move-result v1

    .line 481
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 482
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 483
    goto/16 :goto_0

    .line 469
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 470
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 471
    invoke-virtual {v6, v0}, Landroid/view/IOplusWindowManager$Stub;->requestKeyguard(Ljava/lang/String;)V

    .line 472
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 473
    goto/16 :goto_0

    .line 462
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_36
    invoke-virtual/range {p0 .. p0}, Landroid/view/IOplusWindowManager$Stub;->requestDismissKeyguard()V

    .line 463
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 464
    goto/16 :goto_0

    .line 454
    :pswitch_37
    sget-object v0, Landroid/view/MagnificationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MagnificationSpec;

    .line 455
    .local v0, "_arg0":Landroid/view/MagnificationSpec;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 456
    invoke-virtual {v6, v0}, Landroid/view/IOplusWindowManager$Stub;->setMagnificationSpecEx(Landroid/view/MagnificationSpec;)V

    .line 457
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 458
    goto/16 :goto_0

    .line 445
    .end local v0    # "_arg0":Landroid/view/MagnificationSpec;
    :pswitch_38
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 446
    .local v0, "_arg0":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 447
    invoke-virtual {v6, v0}, Landroid/view/IOplusWindowManager$Stub;->setMagnification(Landroid/os/Bundle;)V

    .line 448
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 449
    goto/16 :goto_0

    .line 437
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :pswitch_39
    invoke-virtual/range {p0 .. p0}, Landroid/view/IOplusWindowManager$Stub;->isRotatingLw()Z

    move-result v0

    .line 438
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 439
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 440
    goto :goto_0

    .line 430
    .end local v0    # "_result":Z
    :pswitch_3a
    invoke-virtual/range {p0 .. p0}, Landroid/view/IOplusWindowManager$Stub;->isStatusBarVisible()Z

    move-result v0

    .line 431
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 432
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 433
    goto :goto_0

    .line 423
    .end local v0    # "_result":Z
    :pswitch_3b
    invoke-virtual/range {p0 .. p0}, Landroid/view/IOplusWindowManager$Stub;->isFullScreen()Z

    move-result v0

    .line 424
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 425
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 426
    goto :goto_0

    .line 416
    .end local v0    # "_result":Z
    :pswitch_3c
    invoke-virtual/range {p0 .. p0}, Landroid/view/IOplusWindowManager$Stub;->isInputShow()Z

    move-result v0

    .line 417
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 418
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 419
    goto :goto_0

    .line 409
    .end local v0    # "_result":Z
    :pswitch_3d
    invoke-virtual/range {p0 .. p0}, Landroid/view/IOplusWindowManager$Stub;->isSIMUnlockRunning()Z

    move-result v0

    .line 410
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 412
    goto :goto_0

    .line 402
    .end local v0    # "_result":Z
    :pswitch_3e
    invoke-virtual/range {p0 .. p0}, Landroid/view/IOplusWindowManager$Stub;->isLockOnShow()Z

    move-result v0

    .line 403
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 404
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 405
    goto :goto_0

    .line 394
    .end local v0    # "_result":Z
    :pswitch_3f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 395
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 396
    invoke-virtual {v6, v0}, Landroid/view/IOplusWindowManager$Stub;->keyguardShowSecureApkLock(Z)V

    .line 397
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 398
    goto :goto_0

    .line 386
    .end local v0    # "_arg0":Z
    :pswitch_40
    invoke-virtual/range {p0 .. p0}, Landroid/view/IOplusWindowManager$Stub;->getApkUnlockWindow()Landroid/os/IBinder;

    move-result-object v0

    .line 387
    .local v0, "_result":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 388
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 389
    goto :goto_0

    .line 378
    .end local v0    # "_result":Landroid/os/IBinder;
    :pswitch_41
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 379
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 380
    invoke-virtual {v6, v0}, Landroid/view/IOplusWindowManager$Stub;->keyguardSetApkLockScreenShowing(Z)V

    .line 381
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 382
    goto :goto_0

    .line 370
    .end local v0    # "_arg0":Z
    :pswitch_42
    invoke-virtual/range {p0 .. p0}, Landroid/view/IOplusWindowManager$Stub;->isLockWndShow()Z

    move-result v0

    .line 371
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 373
    nop

    .line 972
    .end local v0    # "_result":Z
    :goto_0
    return v11

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
