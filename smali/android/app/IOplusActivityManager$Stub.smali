.class public abstract Landroid/app/IOplusActivityManager$Stub;
.super Landroid/os/Binder;
.source "IOplusActivityManager.java"

# interfaces
.implements Landroid/app/IOplusActivityManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IOplusActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IOplusActivityManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_activeGc:I = 0x4a

.field static final blacklist TRANSACTION_addBackgroundRestrictedInfo:I = 0x33

.field static final blacklist TRANSACTION_addFastAppThirdLogin:I = 0x31

.field static final blacklist TRANSACTION_addFastAppWCPay:I = 0x2d

.field static final blacklist TRANSACTION_addMiniProgramShare:I = 0x29

.field static final blacklist TRANSACTION_addOrRemoveOplusVerifyCodeListener:I = 0x71

.field static final blacklist TRANSACTION_addPreventIndulgeList:I = 0x35

.field static final blacklist TRANSACTION_addStageProtectInfo:I = 0x15

.field static final blacklist TRANSACTION_anrViaTheiaEvent:I = 0x66

.field static final blacklist TRANSACTION_asyncReportFrames:I = 0x75

.field static final blacklist TRANSACTION_cleanPackageResources:I = 0x72

.field static final blacklist TRANSACTION_compactProcess:I = 0x6a

.field static final blacklist TRANSACTION_dumpProcPerfData:I = 0x3e

.field static final blacklist TRANSACTION_enterFastFreezer:I = 0x5b

.field static final blacklist TRANSACTION_executeResPreload:I = 0x55

.field static final blacklist TRANSACTION_exitFastFreezer:I = 0x5c

.field static final blacklist TRANSACTION_favoriteQueryRule:I = 0x8

.field static final blacklist TRANSACTION_finishNotOrderReceiver:I = 0x4b

.field static final blacklist TRANSACTION_forceStopPackageAndSaveActivity:I = 0x73

.field static final blacklist TRANSACTION_forceTrimAppMemory:I = 0x3a

.field static final blacklist TRANSACTION_getAccidentallyTouchData:I = 0x9

.field static final blacklist TRANSACTION_getAllVisibleTasksInfo:I = 0x65

.field static final blacklist TRANSACTION_getCompatModeSession:I = 0x79

.field static final blacklist TRANSACTION_getConfigInfo:I = 0x37

.field static final blacklist TRANSACTION_getCpuLimitLatestLogs:I = 0x48

.field static final blacklist TRANSACTION_getCpuWorkingStats:I = 0x39

.field static final blacklist TRANSACTION_getDarkModeData:I = 0x3c

.field static final blacklist TRANSACTION_getDisplayCompatData:I = 0x1b

.field static final blacklist TRANSACTION_getDisplayOptimizationData:I = 0x17

.field static final blacklist TRANSACTION_getDownloadingList:I = 0x6c

.field static final blacklist TRANSACTION_getFastAppReplacePkg:I = 0x81

.field static final blacklist TRANSACTION_getFontVariationAdaptionData:I = 0x50

.field static final blacklist TRANSACTION_getGlobalPkgWhiteList:I = 0x13

.field static final blacklist TRANSACTION_getGlobalProcessWhiteList:I = 0x14

.field static final blacklist TRANSACTION_getIsSupportMultiApp:I = 0x1c

.field static final blacklist TRANSACTION_getMultiAppAccessMode:I = 0x22

.field static final blacklist TRANSACTION_getMultiAppAlias:I = 0x1e

.field static final blacklist TRANSACTION_getMultiAppAllAccessMode:I = 0x24

.field static final blacklist TRANSACTION_getMultiAppConfig:I = 0x20

.field static final blacklist TRANSACTION_getMultiAppList:I = 0x1d

.field static final blacklist TRANSACTION_getMultiAppMaxCreateNum:I = 0x27

.field static final blacklist TRANSACTION_getPackageFreezeDataInfos:I = 0x6f

.field static final blacklist TRANSACTION_getPkgPreloadFiles:I = 0x5a

.field static final blacklist TRANSACTION_getPreloadIOSize:I = 0x57

.field static final blacklist TRANSACTION_getPreloadPkgList:I = 0x59

.field static final blacklist TRANSACTION_getPreloadStatus:I = 0x58

.field static final blacklist TRANSACTION_getProcCmdline:I = 0x49

.field static final blacklist TRANSACTION_getProcCommonInfoList:I = 0x3f

.field static final blacklist TRANSACTION_getProcDependency:I = 0x40

.field static final blacklist TRANSACTION_getProcDependencyByUserId:I = 0x41

.field static final blacklist TRANSACTION_getReflectData:I = 0x2c

.field static final blacklist TRANSACTION_getResPreloadInfo:I = 0x56

.field static final blacklist TRANSACTION_getResolveData:I = 0x2b

.field static final blacklist TRANSACTION_getRunningAppProcessInfos:I = 0x6e

.field static final blacklist TRANSACTION_getRunningPidsByUid:I = 0x74

.field static final blacklist TRANSACTION_getRunningProcesses:I = 0x2f

.field static final blacklist TRANSACTION_getSecureKeyboardData:I = 0xa

.field static final blacklist TRANSACTION_getStageProtectList:I = 0x67

.field static final blacklist TRANSACTION_getStageProtectListAsUser:I = 0x68

.field static final blacklist TRANSACTION_getStageProtectListFromPkg:I = 0x18

.field static final blacklist TRANSACTION_getStageProtectListFromPkgAsUser:I = 0x19

.field static final blacklist TRANSACTION_getTaskPkgList:I = 0x42

.field static final blacklist TRANSACTION_getTerminateObservers:I = 0x7c

.field static final blacklist TRANSACTION_getTopLoadPidsInfos:I = 0x47

.field static final blacklist TRANSACTION_getTotalCpuLoadPercent:I = 0x46

.field static final blacklist TRANSACTION_getTrafficBytesList:I = 0x5e

.field static final blacklist TRANSACTION_getTrafficPacketList:I = 0x5f

.field static final blacklist TRANSACTION_getUXIconData:I = 0x69

.field static final blacklist TRANSACTION_getUidCpuWorkingStats:I = 0x45

.field static final blacklist TRANSACTION_grantOplusPermissionByGroup:I = 0xe

.field static final blacklist TRANSACTION_handleAppForNotification:I = 0x11

.field static final blacklist TRANSACTION_handleAppFromControlCenter:I = 0x1a

.field static final blacklist TRANSACTION_inDownloading:I = 0x6b

.field static final blacklist TRANSACTION_isFrozenByHans:I = 0x5d

.field static final blacklist TRANSACTION_isMultiApp:I = 0x25

.field static final blacklist TRANSACTION_isNightMode:I = 0x3d

.field static final blacklist TRANSACTION_isPermissionInterceptEnabled:I = 0xd

.field static final blacklist TRANSACTION_killPidForce:I = 0x10

.field static final blacklist TRANSACTION_notifyAppKillReason:I = 0x4f

.field static final blacklist TRANSACTION_notifyAthenaOnekeyClearRunning:I = 0x54

.field static final blacklist TRANSACTION_notifyProcessTerminate:I = 0x7d

.field static final blacklist TRANSACTION_notifyProcessTerminateFinish:I = 0x7e

.field static final blacklist TRANSACTION_notifyUiSwitched:I = 0x70

.field static final blacklist TRANSACTION_onBackPressedOnTheiaMonitor:I = 0x5

.field static final blacklist TRANSACTION_putConfigInfo:I = 0x36

.field static final blacklist TRANSACTION_queryProcessNameFromPid:I = 0x4e

.field static final blacklist TRANSACTION_queryUsageStats:I = 0x6d

.field static final blacklist TRANSACTION_registerEapDataCallback:I = 0x60

.field static final blacklist TRANSACTION_registerErrorInfoCallback:I = 0x63

.field static final blacklist TRANSACTION_registerHansListener:I = 0x51

.field static final blacklist TRANSACTION_registerTerminateObserver:I = 0x7a

.field static final blacklist TRANSACTION_registerTerminateStateObserver:I = 0x7f

.field static final blacklist TRANSACTION_removeFastAppThirdLogin:I = 0x32

.field static final blacklist TRANSACTION_removeFastAppWCPay:I = 0x2e

.field static final blacklist TRANSACTION_removeMiniProgramShare:I = 0x2a

.field static final blacklist TRANSACTION_removeStageProtectInfo:I = 0x16

.field static final blacklist TRANSACTION_reportBindApplicationFinished:I = 0x7

.field static final blacklist TRANSACTION_reportSkippedFrames:I = 0x4c

.field static final blacklist TRANSACTION_reportSkippedFramesProcName:I = 0x4d

.field static final blacklist TRANSACTION_requestDeviceFolded:I = 0x76

.field static final blacklist TRANSACTION_revokeOplusPermissionByGroup:I = 0xf

.field static final blacklist TRANSACTION_scanFileIfNeed:I = 0x28

.field static final blacklist TRANSACTION_sendFlingTransit:I = 0x77

.field static final blacklist TRANSACTION_sendTheiaEvent:I = 0x6

.field static final blacklist TRANSACTION_setAppFreeze:I = 0x53

.field static final blacklist TRANSACTION_setAppStartMonitorController:I = 0x30

.field static final blacklist TRANSACTION_setGameSpaceController:I = 0x12

.field static final blacklist TRANSACTION_setGlThreads:I = 0x4

.field static final blacklist TRANSACTION_setHwuiTaskThreads:I = 0x3

.field static final blacklist TRANSACTION_setMultiAppAccessMode:I = 0x23

.field static final blacklist TRANSACTION_setMultiAppAlias:I = 0x21

.field static final blacklist TRANSACTION_setMultiAppConfig:I = 0x1f

.field static final blacklist TRANSACTION_setMultiAppStatus:I = 0x26

.field static final blacklist TRANSACTION_setPermissionInterceptEnable:I = 0xc

.field static final blacklist TRANSACTION_setPermissionRecordController:I = 0x3b

.field static final blacklist TRANSACTION_setPreventIndulgeController:I = 0x34

.field static final blacklist TRANSACTION_setSceneActionTransit:I = 0x78

.field static final blacklist TRANSACTION_syncPermissionRecord:I = 0x43

.field static final blacklist TRANSACTION_unfreezeForKernel:I = 0x1

.field static final blacklist TRANSACTION_unfreezeForKernelTargetPid:I = 0x2

.field static final blacklist TRANSACTION_unregisterEapDataCallback:I = 0x61

.field static final blacklist TRANSACTION_unregisterErrorInfoCallback:I = 0x64

.field static final blacklist TRANSACTION_unregisterHansListener:I = 0x52

.field static final blacklist TRANSACTION_unregisterTerminateObserver:I = 0x7b

.field static final blacklist TRANSACTION_unregisterTerminateStateObserver:I = 0x80

.field static final blacklist TRANSACTION_updateANRDumpState:I = 0x62

.field static final blacklist TRANSACTION_updateCpuTracker:I = 0x38

.field static final blacklist TRANSACTION_updatePermissionChoice:I = 0xb

.field static final blacklist TRANSACTION_updateUidCpuTracker:I = 0x44


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 569
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 570
    const-string v0, "android.app.IOplusActivityManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/IOplusActivityManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 571
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/app/IOplusActivityManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 578
    if-nez p0, :cond_0

    .line 579
    const/4 v0, 0x0

    return-object v0

    .line 581
    :cond_0
    const-string v0, "android.app.IOplusActivityManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 582
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/IOplusActivityManager;

    if-eqz v1, :cond_1

    .line 583
    move-object v1, v0

    check-cast v1, Landroid/app/IOplusActivityManager;

    return-object v1

    .line 585
    :cond_1
    new-instance v1, Landroid/app/IOplusActivityManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IOplusActivityManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 589
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 21
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 593
    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    const-string v12, "android.app.IOplusActivityManager"

    .line 594
    .local v12, "descriptor":Ljava/lang/String;
    const/4 v13, 0x1

    if-lt v9, v13, :cond_0

    const v0, 0xffffff

    if-gt v9, v0, :cond_0

    .line 595
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 597
    :cond_0
    packed-switch v9, :pswitch_data_0

    .line 605
    packed-switch v9, :pswitch_data_1

    .line 1965
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 601
    :pswitch_0
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 602
    return v13

    .line 1956
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1957
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1958
    invoke-virtual {v8, v0}, Landroid/app/IOplusActivityManager$Stub;->getFastAppReplacePkg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1959
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1960
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1961
    goto/16 :goto_0

    .line 1946
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/app/ITerminateObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/app/ITerminateObserver;

    move-result-object v0

    .line 1947
    .local v0, "_arg0":Lcom/oplus/app/ITerminateObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1948
    invoke-virtual {v8, v0}, Landroid/app/IOplusActivityManager$Stub;->unregisterTerminateStateObserver(Lcom/oplus/app/ITerminateObserver;)Z

    move-result v1

    .line 1949
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1950
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1951
    goto/16 :goto_0

    .line 1936
    .end local v0    # "_arg0":Lcom/oplus/app/ITerminateObserver;
    .end local v1    # "_result":Z
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/app/ITerminateObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/app/ITerminateObserver;

    move-result-object v0

    .line 1937
    .restart local v0    # "_arg0":Lcom/oplus/app/ITerminateObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1938
    invoke-virtual {v8, v0}, Landroid/app/IOplusActivityManager$Stub;->registerTerminateStateObserver(Lcom/oplus/app/ITerminateObserver;)Z

    move-result v1

    .line 1939
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1940
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1941
    goto/16 :goto_0

    .line 1927
    .end local v0    # "_arg0":Lcom/oplus/app/ITerminateObserver;
    .end local v1    # "_result":Z
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/app/IProcessTerminateObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/app/IProcessTerminateObserver;

    move-result-object v0

    .line 1928
    .local v0, "_arg0":Lcom/oplus/app/IProcessTerminateObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1929
    invoke-virtual {v8, v0}, Landroid/app/IOplusActivityManager$Stub;->notifyProcessTerminateFinish(Lcom/oplus/app/IProcessTerminateObserver;)V

    .line 1930
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1931
    goto/16 :goto_0

    .line 1916
    .end local v0    # "_arg0":Lcom/oplus/app/IProcessTerminateObserver;
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 1918
    .local v0, "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1919
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1920
    invoke-virtual {v8, v0, v1}, Landroid/app/IOplusActivityManager$Stub;->notifyProcessTerminate([ILjava/lang/String;)V

    .line 1921
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1922
    goto/16 :goto_0

    .line 1908
    .end local v0    # "_arg0":[I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Landroid/app/IOplusActivityManager$Stub;->getTerminateObservers()[I

    move-result-object v0

    .line 1909
    .local v0, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1910
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1911
    goto/16 :goto_0

    .line 1899
    .end local v0    # "_result":[I
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/app/IProcessTerminateObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/app/IProcessTerminateObserver;

    move-result-object v0

    .line 1900
    .local v0, "_arg0":Lcom/oplus/app/IProcessTerminateObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1901
    invoke-virtual {v8, v0}, Landroid/app/IOplusActivityManager$Stub;->unregisterTerminateObserver(Lcom/oplus/app/IProcessTerminateObserver;)Z

    move-result v1

    .line 1902
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1903
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1904
    goto/16 :goto_0

    .line 1889
    .end local v0    # "_arg0":Lcom/oplus/app/IProcessTerminateObserver;
    .end local v1    # "_result":Z
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/app/IProcessTerminateObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/app/IProcessTerminateObserver;

    move-result-object v0

    .line 1890
    .restart local v0    # "_arg0":Lcom/oplus/app/IProcessTerminateObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1891
    invoke-virtual {v8, v0}, Landroid/app/IOplusActivityManager$Stub;->registerTerminateObserver(Lcom/oplus/app/IProcessTerminateObserver;)Z

    move-result v1

    .line 1892
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1893
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1894
    goto/16 :goto_0

    .line 1881
    .end local v0    # "_arg0":Lcom/oplus/app/IProcessTerminateObserver;
    .end local v1    # "_result":Z
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Landroid/app/IOplusActivityManager$Stub;->getCompatModeSession()Lcom/oplus/compatmode/IOplusCompatModeSession;

    move-result-object v0

    .line 1882
    .local v0, "_result":Lcom/oplus/compatmode/IOplusCompatModeSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1883
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1884
    goto/16 :goto_0

    .line 1870
    .end local v0    # "_result":Lcom/oplus/compatmode/IOplusCompatModeSession;
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1872
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1874
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1875
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1876
    invoke-virtual {v8, v0, v1, v2}, Landroid/app/IOplusActivityManager$Stub;->setSceneActionTransit(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1877
    goto/16 :goto_0

    .line 1860
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_b
    sget-object v0, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    .line 1862
    .local v0, "_arg0":Landroid/view/MotionEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1863
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1864
    invoke-virtual {v8, v0, v1}, Landroid/app/IOplusActivityManager$Stub;->sendFlingTransit(Landroid/view/MotionEvent;I)V

    .line 1865
    goto/16 :goto_0

    .line 1848
    .end local v0    # "_arg0":Landroid/view/MotionEvent;
    .end local v1    # "_arg1":I
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1850
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1851
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1852
    invoke-virtual {v8, v0, v1}, Landroid/app/IOplusActivityManager$Stub;->requestDeviceFolded(IZ)Z

    move-result v2

    .line 1853
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1854
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1855
    goto/16 :goto_0

    .line 1838
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Z
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1840
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1841
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1842
    invoke-virtual {v8, v0, v1}, Landroid/app/IOplusActivityManager$Stub;->asyncReportFrames(Ljava/lang/String;I)V

    .line 1843
    goto/16 :goto_0

    .line 1828
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1829
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1830
    invoke-virtual {v8, v0}, Landroid/app/IOplusActivityManager$Stub;->getRunningPidsByUid(I)[I

    move-result-object v1

    .line 1831
    .local v1, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1832
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1833
    goto/16 :goto_0

    .line 1817
    .end local v0    # "_arg0":I
    .end local v1    # "_result":[I
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1819
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1820
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1821
    invoke-virtual {v8, v0, v1}, Landroid/app/IOplusActivityManager$Stub;->forceStopPackageAndSaveActivity(Ljava/lang/String;I)V

    .line 1822
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1823
    goto/16 :goto_0

    .line 1806
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1808
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1809
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1810
    invoke-virtual {v8, v0, v1}, Landroid/app/IOplusActivityManager$Stub;->cleanPackageResources(Ljava/lang/String;I)V

    .line 1811
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1812
    goto/16 :goto_0

    .line 1794
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1796
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/verifycode/IOplusVerifyCodeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/verifycode/IOplusVerifyCodeListener;

    move-result-object v1

    .line 1797
    .local v1, "_arg1":Lcom/oplus/verifycode/IOplusVerifyCodeListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1798
    invoke-virtual {v8, v0, v1}, Landroid/app/IOplusActivityManager$Stub;->addOrRemoveOplusVerifyCodeListener(ZLcom/oplus/verifycode/IOplusVerifyCodeListener;)Z

    move-result v2

    .line 1799
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1800
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1801
    goto/16 :goto_0

    .line 1784
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Lcom/oplus/verifycode/IOplusVerifyCodeListener;
    .end local v2    # "_result":Z
    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1786
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1787
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1788
    invoke-virtual {v8, v0, v1}, Landroid/app/IOplusActivityManager$Stub;->notifyUiSwitched(Ljava/lang/String;I)V

    .line 1789
    goto/16 :goto_0

    .line 1774
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_13
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 1775
    .local v0, "_arg0":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1776
    invoke-virtual {v8, v0}, Landroid/app/IOplusActivityManager$Stub;->getPackageFreezeDataInfos(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v1

    .line 1777
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/util/OplusPackageFreezeData;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1778
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1779
    goto/16 :goto_0

    .line 1764
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/util/OplusPackageFreezeData;>;"
    :pswitch_14
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 1765
    .restart local v0    # "_arg0":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1766
    invoke-virtual {v8, v0}, Landroid/app/IOplusActivityManager$Stub;->getRunningAppProcessInfos(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v1

    .line 1767
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1768
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1769
    goto/16 :goto_0

    .line 1750
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :pswitch_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1752
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 1754
    .local v14, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 1755
    .local v16, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1756
    move-object/from16 v0, p0

    move v1, v6

    move-wide v2, v14

    move-wide/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Landroid/app/IOplusActivityManager$Stub;->queryUsageStats(IJJ)Ljava/util/List;

    move-result-object v0

    .line 1757
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1758
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1759
    goto/16 :goto_0

    .line 1738
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    .end local v6    # "_arg0":I
    .end local v14    # "_arg1":J
    .end local v16    # "_arg2":J
    :pswitch_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1740
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1741
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1742
    invoke-virtual {v8, v0, v1}, Landroid/app/IOplusActivityManager$Stub;->getDownloadingList(IZ)Ljava/util/List;

    move-result-object v2

    .line 1743
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/util/OplusPackageFreezeData;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1744
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1745
    goto/16 :goto_0

    .line 1724
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/util/OplusPackageFreezeData;>;"
    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1726
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1728
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1729
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1730
    invoke-virtual {v8, v0, v1, v2}, Landroid/app/IOplusActivityManager$Stub;->inDownloading(IIZ)Z

    move-result v3

    .line 1731
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1732
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1733
    goto/16 :goto_0

    .line 1711
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Z
    .end local v3    # "_result":Z
    :pswitch_18
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 1713
    .local v0, "_arg0":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1715
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1716
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1717
    invoke-virtual {v8, v0, v1, v2}, Landroid/app/IOplusActivityManager$Stub;->compactProcess(Landroid/os/Bundle;II)V

    .line 1718
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1719
    goto/16 :goto_0

    .line 1703
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_19
    invoke-virtual/range {p0 .. p0}, Landroid/app/IOplusActivityManager$Stub;->getUXIconData()Lcom/oplus/util/OplusUXIconData;

    move-result-object v0

    .line 1704
    .local v0, "_result":Lcom/oplus/util/OplusUXIconData;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1705
    invoke-virtual {v11, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1706
    goto/16 :goto_0

    .line 1692
    .end local v0    # "_result":Lcom/oplus/util/OplusUXIconData;
    :pswitch_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1694
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1695
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1696
    invoke-virtual {v8, v0, v1}, Landroid/app/IOplusActivityManager$Stub;->getStageProtectListAsUser(II)Ljava/util/List;

    move-result-object v2

    .line 1697
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1698
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1699
    goto/16 :goto_0

    .line 1682
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1683
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1684
    invoke-virtual {v8, v0}, Landroid/app/IOplusActivityManager$Stub;->getStageProtectList(I)Ljava/util/List;

    move-result-object v1

    .line 1685
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1686
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1687
    goto/16 :goto_0

    .line 1671
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1673
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1674
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1675
    invoke-virtual {v8, v0, v1}, Landroid/app/IOplusActivityManager$Stub;->anrViaTheiaEvent(ILjava/lang/String;)V

    .line 1676
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1677
    goto/16 :goto_0

    .line 1661
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1662
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1663
    invoke-virtual {v8, v0}, Landroid/app/IOplusActivityManager$Stub;->getAllVisibleTasksInfo(I)Ljava/util/List;

    move-result-object v1

    .line 1664
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1665
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1666
    goto/16 :goto_0

    .line 1652
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :pswitch_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/eventhub/sdk/aidl/IEventCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/eventhub/sdk/aidl/IEventCallback;

    move-result-object v0

    .line 1653
    .local v0, "_arg0":Lcom/oplus/eventhub/sdk/aidl/IEventCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1654
    invoke-virtual {v8, v0}, Landroid/app/IOplusActivityManager$Stub;->unregisterErrorInfoCallback(Lcom/oplus/eventhub/sdk/aidl/IEventCallback;)V

    .line 1655
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1656
    goto/16 :goto_0

    .line 1643
    .end local v0    # "_arg0":Lcom/oplus/eventhub/sdk/aidl/IEventCallback;
    :pswitch_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/eventhub/sdk/aidl/IEventCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/eventhub/sdk/aidl/IEventCallback;

    move-result-object v0

    .line 1644
    .restart local v0    # "_arg0":Lcom/oplus/eventhub/sdk/aidl/IEventCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1645
    invoke-virtual {v8, v0}, Landroid/app/IOplusActivityManager$Stub;->registerErrorInfoCallback(Lcom/oplus/eventhub/sdk/aidl/IEventCallback;)V

    .line 1646
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1647
    goto/16 :goto_0

    .line 1634
    .end local v0    # "_arg0":Lcom/oplus/eventhub/sdk/aidl/IEventCallback;
    :pswitch_20
    sget-object v0, Landroid/os/SharedMemory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SharedMemory;

    .line 1635
    .local v0, "_arg0":Landroid/os/SharedMemory;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1636
    invoke-virtual {v8, v0}, Landroid/app/IOplusActivityManager$Stub;->updateANRDumpState(Landroid/os/SharedMemory;)V

    .line 1637
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1638
    goto/16 :goto_0

    .line 1625
    .end local v0    # "_arg0":Landroid/os/SharedMemory;
    :pswitch_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/eap/IOplusEapDataCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/eap/IOplusEapDataCallback;

    move-result-object v0

    .line 1626
    .local v0, "_arg0":Lcom/oplus/eap/IOplusEapDataCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1627
    invoke-virtual {v8, v0}, Landroid/app/IOplusActivityManager$Stub;->unregisterEapDataCallback(Lcom/oplus/eap/IOplusEapDataCallback;)V

    .line 1628
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1629
    goto/16 :goto_0

    .line 1616
    .end local v0    # "_arg0":Lcom/oplus/eap/IOplusEapDataCallback;
    :pswitch_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/eap/IOplusEapDataCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/eap/IOplusEapDataCallback;

    move-result-object v0

    .line 1617
    .restart local v0    # "_arg0":Lcom/oplus/eap/IOplusEapDataCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1618
    invoke-virtual {v8, v0}, Landroid/app/IOplusActivityManager$Stub;->registerEapDataCallback(Lcom/oplus/eap/IOplusEapDataCallback;)V

    .line 1619
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1620
    goto/16 :goto_0

    .line 1603
    .end local v0    # "_arg0":Lcom/oplus/eap/IOplusEapDataCallback;
    :pswitch_23
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 1605
    .local v0, "_arg0":Landroid/os/Bundle;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1606
    .local v1, "_arg1":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1607
    invoke-virtual {v8, v0, v1}, Landroid/app/IOplusActivityManager$Stub;->getTrafficPacketList(Landroid/os/Bundle;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    .line 1608
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1609
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1610
    invoke-virtual {v11, v1, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1611
    goto/16 :goto_0

    .line 1590
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_24
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 1592
    .restart local v0    # "_arg0":Landroid/os/Bundle;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1593
    .restart local v1    # "_arg1":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1594
    invoke-virtual {v8, v0, v1}, Landroid/app/IOplusActivityManager$Stub;->getTrafficBytesList(Landroid/os/Bundle;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    .line 1595
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1596
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1597
    invoke-virtual {v11, v1, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1598
    goto/16 :goto_0

    .line 1578
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1580
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1581
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1582
    invoke-virtual {v8, v0, v1}, Landroid/app/IOplusActivityManager$Stub;->isFrozenByHans(Ljava/lang/String;I)Z

    move-result v2

    .line 1583
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1584
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1585
    goto/16 :goto_0

    .line 1567
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1569
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1570
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1571
    invoke-virtual {v8, v0, v1}, Landroid/app/IOplusActivityManager$Stub;->exitFastFreezer(Ljava/lang/String;Ljava/lang/String;)V

    .line 1572
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1573
    goto/16 :goto_0

    .line 1552
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1554
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v7

    .line 1556
    .local v7, "_arg1":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 1558
    .local v14, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 1559
    .local v16, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1560
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-wide v3, v14

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/app/IOplusActivityManager$Stub;->enterFastFreezer(Ljava/lang/String;[IJLjava/lang/String;)V

    .line 1561
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1562
    goto/16 :goto_0

    .line 1542
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":[I
    .end local v14    # "_arg2":J
    .end local v16    # "_arg3":Ljava/lang/String;
    :pswitch_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1543
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1544
    invoke-virtual {v8, v0}, Landroid/app/IOplusActivityManager$Stub;->getPkgPreloadFiles(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1545
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1546
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1547
    goto/16 :goto_0

    .line 1534
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_29
    invoke-virtual/range {p0 .. p0}, Landroid/app/IOplusActivityManager$Stub;->getPreloadPkgList()Landroid/os/Bundle;

    move-result-object v0

    .line 1535
    .local v0, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1536
    invoke-virtual {v11, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1537
    goto/16 :goto_0

    .line 1523
    .end local v0    # "_result":Landroid/os/Bundle;
    :pswitch_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1525
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1526
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1527
    invoke-virtual {v8, v0, v1}, Landroid/app/IOplusActivityManager$Stub;->getPreloadStatus(Ljava/lang/String;I)Z

    move-result v2

    .line 1528
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1529
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1530
    goto/16 :goto_0

    .line 1515
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_2b
    invoke-virtual/range {p0 .. p0}, Landroid/app/IOplusActivityManager$Stub;->getPreloadIOSize()J

    move-result-wide v0

    .line 1516
    .local v0, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1517
    invoke-virtual {v11, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1518
    goto/16 :goto_0

    .line 1504
    .end local v0    # "_result":J
    :pswitch_2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1506
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1507
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1508
    invoke-virtual {v8, v0, v1}, Landroid/app/IOplusActivityManager$Stub;->getResPreloadInfo(II)Landroid/os/Bundle;

    move-result-object v2

    .line 1509
    .local v2, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1510
    invoke-virtual {v11, v2, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1511
    goto/16 :goto_0

    .line 1490
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Landroid/os/Bundle;
    :pswitch_2d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1492
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1494
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1496
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1497
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1498
    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/app/IOplusActivityManager$Stub;->executeResPreload(Ljava/lang/String;IILjava/lang/String;)V

    .line 1499
    goto/16 :goto_0

    .line 1482
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1483
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1484
    invoke-virtual {v8, v0}, Landroid/app/IOplusActivityManager$Stub;->notifyAthenaOnekeyClearRunning(I)V

    .line 1485
    goto/16 :goto_0

    .line 1470
    .end local v0    # "_arg0":I
    :pswitch_2f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1472
    .local v0, "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 1473
    .local v1, "_arg1":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1474
    invoke-virtual {v8, v0, v1}, Landroid/app/IOplusActivityManager$Stub;->setAppFreeze(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v2

    .line 1475
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1476
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1477
    goto/16 :goto_0

    .line 1458
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v2    # "_result":Z
    :pswitch_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1460
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/app/IOplusHansListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/app/IOplusHansListener;

    move-result-object v1

    .line 1461
    .local v1, "_arg1":Lcom/oplus/app/IOplusHansListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1462
    invoke-virtual {v8, v0, v1}, Landroid/app/IOplusActivityManager$Stub;->unregisterHansListener(Ljava/lang/String;Lcom/oplus/app/IOplusHansListener;)Z

    move-result v2

    .line 1463
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1464
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1465
    goto/16 :goto_0

    .line 1446
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/oplus/app/IOplusHansListener;
    .end local v2    # "_result":Z
    :pswitch_31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1448
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/app/IOplusHansListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/app/IOplusHansListener;

    move-result-object v1

    .line 1449
    .restart local v1    # "_arg1":Lcom/oplus/app/IOplusHansListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1450
    invoke-virtual {v8, v0, v1}, Landroid/app/IOplusActivityManager$Stub;->registerHansListener(Ljava/lang/String;Lcom/oplus/app/IOplusHansListener;)Z

    move-result v2

    .line 1451
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1452
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1453
    goto/16 :goto_0

    .line 1436
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/oplus/app/IOplusHansListener;
    .end local v2    # "_result":Z
    :pswitch_32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1437
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1438
    invoke-virtual {v8, v0}, Landroid/app/IOplusActivityManager$Stub;->getFontVariationAdaptionData(Ljava/lang/String;)I

    move-result v1

    .line 1439
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1440
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1441
    goto/16 :goto_0

    .line 1420
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1422
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1424
    .local v7, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 1426
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 1428
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 1429
    .local v16, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1430
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move v3, v14

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/app/IOplusActivityManager$Stub;->notifyAppKillReason(IIIILjava/lang/String;)V

    .line 1431
    goto/16 :goto_0

    .line 1410
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":Ljava/lang/String;
    :pswitch_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1411
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1412
    invoke-virtual {v8, v0}, Landroid/app/IOplusActivityManager$Stub;->queryProcessNameFromPid(I)Ljava/lang/String;

    move-result-object v1

    .line 1413
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1414
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1415
    goto/16 :goto_0

    .line 1393
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 1395
    .local v14, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    .line 1397
    .local v16, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    .line 1399
    .local v17, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 1401
    .local v18, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1402
    .local v20, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1403
    move-object/from16 v0, p0

    move-wide v1, v14

    move/from16 v3, v16

    move/from16 v4, v17

    move-wide/from16 v5, v18

    move-object/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/app/IOplusActivityManager$Stub;->reportSkippedFramesProcName(JZZJLjava/lang/String;)V

    .line 1404
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1405
    goto/16 :goto_0

    .line 1378
    .end local v14    # "_arg0":J
    .end local v16    # "_arg1":Z
    .end local v17    # "_arg2":Z
    .end local v18    # "_arg3":J
    .end local v20    # "_arg4":Ljava/lang/String;
    :pswitch_36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 1380
    .restart local v14    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    .line 1382
    .local v7, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    .line 1384
    .local v16, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v17

    .line 1385
    .local v17, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1386
    move-object/from16 v0, p0

    move-wide v1, v14

    move v3, v7

    move/from16 v4, v16

    move-wide/from16 v5, v17

    invoke-virtual/range {v0 .. v6}, Landroid/app/IOplusActivityManager$Stub;->reportSkippedFrames(JZZJ)V

    .line 1387
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1388
    goto/16 :goto_0

    .line 1359
    .end local v7    # "_arg1":Z
    .end local v14    # "_arg0":J
    .end local v16    # "_arg2":Z
    .end local v17    # "_arg3":J
    :pswitch_37
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 1361
    .local v7, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 1363
    .local v14, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 1365
    .local v15, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 1367
    .local v16, "_arg3":Ljava/lang/String;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/Bundle;

    .line 1369
    .local v17, "_arg4":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v18

    .line 1370
    .local v18, "_arg5":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1371
    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v14

    move v3, v15

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/app/IOplusActivityManager$Stub;->finishNotOrderReceiver(Landroid/os/IBinder;IILjava/lang/String;Landroid/os/Bundle;Z)V

    .line 1372
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1373
    goto/16 :goto_0

    .line 1351
    .end local v7    # "_arg0":Landroid/os/IBinder;
    .end local v14    # "_arg1":I
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":Ljava/lang/String;
    .end local v17    # "_arg4":Landroid/os/Bundle;
    .end local v18    # "_arg5":Z
    :pswitch_38
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 1352
    .local v0, "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1353
    invoke-virtual {v8, v0}, Landroid/app/IOplusActivityManager$Stub;->activeGc([I)V

    .line 1354
    goto/16 :goto_0

    .line 1341
    .end local v0    # "_arg0":[I
    :pswitch_39
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 1342
    .restart local v0    # "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1343
    invoke-virtual {v8, v0}, Landroid/app/IOplusActivityManager$Stub;->getProcCmdline([I)Ljava/util/List;

    move-result-object v1

    .line 1344
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1345
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1346
    goto/16 :goto_0

    .line 1331
    .end local v0    # "_arg0":[I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1332
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1333
    invoke-virtual {v8, v0}, Landroid/app/IOplusActivityManager$Stub;->getCpuLimitLatestLogs(Ljava/lang/String;)Landroid/os/SharedMemory;

    move-result-object v1

    .line 1334
    .local v1, "_result":Landroid/os/SharedMemory;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1335
    invoke-virtual {v11, v1, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1336
    goto/16 :goto_0

    .line 1321
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Landroid/os/SharedMemory;
    :pswitch_3b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1322
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1323
    invoke-virtual {v8, v0}, Landroid/app/IOplusActivityManager$Stub;->getTopLoadPidsInfos(I)Ljava/util/List;

    move-result-object v1

    .line 1324
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1325
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1326
    goto/16 :goto_0

    .line 1313
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_3c
    invoke-virtual/range {p0 .. p0}, Landroid/app/IOplusActivityManager$Stub;->getTotalCpuLoadPercent()J

    move-result-wide v0

    .line 1314
    .local v0, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1315
    invoke-virtual {v11, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1316
    goto/16 :goto_0

    .line 1306
    .end local v0    # "_result":J
    :pswitch_3d
    invoke-virtual/range {p0 .. p0}, Landroid/app/IOplusActivityManager$Stub;->getUidCpuWorkingStats()Ljava/util/List;

    move-result-object v0

    .line 1307
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1308
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1309
    goto/16 :goto_0

    .line 1300
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_3e
    invoke-virtual/range {p0 .. p0}, Landroid/app/IOplusActivityManager$Stub;->updateUidCpuTracker()V

    .line 1301
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1302
    goto/16 :goto_0

    .line 1294
    :pswitch_3f
    invoke-virtual/range {p0 .. p0}, Landroid/app/IOplusActivityManager$Stub;->syncPermissionRecord()V

    .line 1295
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1296
    goto/16 :goto_0

    .line 1285
    :pswitch_40
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1286
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1287
    invoke-virtual {v8, v0}, Landroid/app/IOplusActivityManager$Stub;->getTaskPkgList(I)Ljava/util/List;

    move-result-object v1

    .line 1288
    .restart local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1289
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1290
    goto/16 :goto_0

    .line 1273
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_41
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1275
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1276
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1277
    invoke-virtual {v8, v0, v1}, Landroid/app/IOplusActivityManager$Stub;->getProcDependencyByUserId(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    .line 1278
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/util/OplusProcDependData;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1279
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1280
    goto/16 :goto_0

    .line 1263
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/util/OplusProcDependData;>;"
    :pswitch_42
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1264
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1265
    invoke-virtual {v8, v0}, Landroid/app/IOplusActivityManager$Stub;->getProcDependency(I)Ljava/util/List;

    move-result-object v1

    .line 1266
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/util/OplusProcDependData;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1267
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1268
    goto/16 :goto_0

    .line 1253
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/util/OplusProcDependData;>;"
    :pswitch_43
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1254
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1255
    invoke-virtual {v8, v0}, Landroid/app/IOplusActivityManager$Stub;->getProcCommonInfoList(I)Ljava/util/List;

    move-result-object v1

    .line 1256
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1257
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1258
    goto/16 :goto_0

    .line 1243
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_44
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 1244
    .local v0, "_arg0":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1245
    invoke-virtual {v8, v0}, Landroid/app/IOplusActivityManager$Stub;->dumpProcPerfData(Landroid/os/Bundle;)Z

    move-result v1

    .line 1246
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1247
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1248
    goto/16 :goto_0

    .line 1235
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_result":Z
    :pswitch_45
    invoke-virtual/range {p0 .. p0}, Landroid/app/IOplusActivityManager$Stub;->isNightMode()Z

    move-result v0

    .line 1236
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1237
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1238
    goto/16 :goto_0

    .line 1226
    .end local v0    # "_result":Z
    :pswitch_46
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1227
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1228
    invoke-virtual {v8, v0}, Landroid/app/IOplusActivityManager$Stub;->getDarkModeData(Ljava/lang/String;)Lcom/oplus/darkmode/OplusDarkModeData;

    move-result-object v1

    .line 1229
    .local v1, "_result":Lcom/oplus/darkmode/OplusDarkModeData;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1230
    invoke-virtual {v11, v1, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1231
    goto/16 :goto_0

    .line 1217
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Lcom/oplus/darkmode/OplusDarkModeData;
    :pswitch_47
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/app/IOplusPermissionRecordController$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/app/IOplusPermissionRecordController;

    move-result-object v0

    .line 1218
    .local v0, "_arg0":Lcom/oplus/app/IOplusPermissionRecordController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1219
    invoke-virtual {v8, v0}, Landroid/app/IOplusActivityManager$Stub;->setPermissionRecordController(Lcom/oplus/app/IOplusPermissionRecordController;)V

    .line 1220
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1221
    goto/16 :goto_0

    .line 1208
    .end local v0    # "_arg0":Lcom/oplus/app/IOplusPermissionRecordController;
    :pswitch_48
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1209
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1210
    invoke-virtual {v8, v0}, Landroid/app/IOplusActivityManager$Stub;->forceTrimAppMemory(I)V

    .line 1211
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1212
    goto/16 :goto_0

    .line 1200
    .end local v0    # "_arg0":I
    :pswitch_49
    invoke-virtual/range {p0 .. p0}, Landroid/app/IOplusActivityManager$Stub;->getCpuWorkingStats()Ljava/util/List;

    move-result-object v0

    .line 1201
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1202
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1203
    goto/16 :goto_0

    .line 1191
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_4a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 1192
    .local v0, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1193
    invoke-virtual {v8, v0, v1}, Landroid/app/IOplusActivityManager$Stub;->updateCpuTracker(J)F

    move-result v2

    .line 1194
    .local v2, "_result":F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1195
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1196
    goto/16 :goto_0

    .line 1177
    .end local v0    # "_arg0":J
    .end local v2    # "_result":F
    :pswitch_4b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1179
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1181
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1182
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1183
    invoke-virtual {v8, v0, v1, v2}, Landroid/app/IOplusActivityManager$Stub;->getConfigInfo(Ljava/lang/String;II)Landroid/os/Bundle;

    move-result-object v3

    .line 1184
    .local v3, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1185
    invoke-virtual {v11, v3, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1186
    goto/16 :goto_0

    .line 1161
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Landroid/os/Bundle;
    :pswitch_4c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1163
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 1165
    .local v1, "_arg1":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1167
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1168
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1169
    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/app/IOplusActivityManager$Stub;->putConfigInfo(Ljava/lang/String;Landroid/os/Bundle;II)Z

    move-result v4

    .line 1170
    .local v4, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1171
    invoke-virtual {v11, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1172
    goto/16 :goto_0

    .line 1152
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    .end local v4    # "_result":Z
    :pswitch_4d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 1153
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1154
    invoke-virtual {v8, v0}, Landroid/app/IOplusActivityManager$Stub;->addPreventIndulgeList(Ljava/util/List;)V

    .line 1155
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1156
    goto/16 :goto_0

    .line 1143
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_4e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/app/IOplusAppStartController$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/app/IOplusAppStartController;

    move-result-object v0

    .line 1144
    .local v0, "_arg0":Lcom/oplus/app/IOplusAppStartController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1145
    invoke-virtual {v8, v0}, Landroid/app/IOplusActivityManager$Stub;->setPreventIndulgeController(Lcom/oplus/app/IOplusAppStartController;)V

    .line 1146
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1147
    goto/16 :goto_0

    .line 1132
    .end local v0    # "_arg0":Lcom/oplus/app/IOplusAppStartController;
    :pswitch_4f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1134
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 1135
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1136
    invoke-virtual {v8, v0, v1}, Landroid/app/IOplusActivityManager$Stub;->addBackgroundRestrictedInfo(Ljava/lang/String;Ljava/util/List;)V

    .line 1137
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1138
    goto/16 :goto_0

    .line 1121
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1123
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1124
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1125
    invoke-virtual {v8, v0, v1}, Landroid/app/IOplusActivityManager$Stub;->removeFastAppThirdLogin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1127
    goto/16 :goto_0

    .line 1110
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_51
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1112
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1113
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1114
    invoke-virtual {v8, v0, v1}, Landroid/app/IOplusActivityManager$Stub;->addFastAppThirdLogin(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1116
    goto/16 :goto_0

    .line 1101
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/app/IOplusAppStartController$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/app/IOplusAppStartController;

    move-result-object v0

    .line 1102
    .local v0, "_arg0":Lcom/oplus/app/IOplusAppStartController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1103
    invoke-virtual {v8, v0}, Landroid/app/IOplusActivityManager$Stub;->setAppStartMonitorController(Lcom/oplus/app/IOplusAppStartController;)V

    .line 1104
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1105
    goto/16 :goto_0

    .line 1093
    .end local v0    # "_arg0":Lcom/oplus/app/IOplusAppStartController;
    :pswitch_53
    invoke-virtual/range {p0 .. p0}, Landroid/app/IOplusActivityManager$Stub;->getRunningProcesses()Ljava/util/List;

    move-result-object v0

    .line 1094
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/util/OplusPackageFreezeData;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1095
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1096
    goto/16 :goto_0

    .line 1083
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/util/OplusPackageFreezeData;>;"
    :pswitch_54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1085
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1086
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1087
    invoke-virtual {v8, v0, v1}, Landroid/app/IOplusActivityManager$Stub;->removeFastAppWCPay(Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1089
    goto/16 :goto_0

    .line 1072
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1074
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1075
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1076
    invoke-virtual {v8, v0, v1}, Landroid/app/IOplusActivityManager$Stub;->addFastAppWCPay(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1078
    goto/16 :goto_0

    .line 1064
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_56
    invoke-virtual/range {p0 .. p0}, Landroid/app/IOplusActivityManager$Stub;->getReflectData()Lcom/oplus/util/OplusReflectData;

    move-result-object v0

    .line 1065
    .local v0, "_result":Lcom/oplus/util/OplusReflectData;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1066
    invoke-virtual {v11, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1067
    goto/16 :goto_0

    .line 1057
    .end local v0    # "_result":Lcom/oplus/util/OplusReflectData;
    :pswitch_57
    invoke-virtual/range {p0 .. p0}, Landroid/app/IOplusActivityManager$Stub;->getResolveData()Lcom/oplus/util/OplusResolveData;

    move-result-object v0

    .line 1058
    .local v0, "_result":Lcom/oplus/util/OplusResolveData;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1059
    invoke-virtual {v11, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1060
    goto/16 :goto_0

    .line 1045
    .end local v0    # "_result":Lcom/oplus/util/OplusResolveData;
    :pswitch_58
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1047
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1049
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1050
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1051
    invoke-virtual {v8, v0, v1, v2}, Landroid/app/IOplusActivityManager$Stub;->removeMiniProgramShare(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1053
    goto/16 :goto_0

    .line 1032
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_59
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1034
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1036
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1037
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1038
    invoke-virtual {v8, v0, v1, v2}, Landroid/app/IOplusActivityManager$Stub;->addMiniProgramShare(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1040
    goto/16 :goto_0

    .line 1021
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_5a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1023
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1024
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1025
    invoke-virtual {v8, v0, v1}, Landroid/app/IOplusActivityManager$Stub;->scanFileIfNeed(ILjava/lang/String;)V

    .line 1026
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1027
    goto/16 :goto_0

    .line 1013
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_5b
    invoke-virtual/range {p0 .. p0}, Landroid/app/IOplusActivityManager$Stub;->getMultiAppMaxCreateNum()I

    move-result v0

    .line 1014
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1015
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1016
    goto/16 :goto_0

    .line 1002
    .end local v0    # "_result":I
    :pswitch_5c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1004
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1005
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1006
    invoke-virtual {v8, v0, v1}, Landroid/app/IOplusActivityManager$Stub;->setMultiAppStatus(Ljava/lang/String;I)I

    move-result v2

    .line 1007
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1008
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1009
    goto/16 :goto_0

    .line 990
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_5d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 992
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 993
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 994
    invoke-virtual {v8, v0, v1}, Landroid/app/IOplusActivityManager$Stub;->isMultiApp(ILjava/lang/String;)Z

    move-result v2

    .line 995
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 996
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 997
    goto/16 :goto_0

    .line 980
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_5e
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 981
    .local v0, "_arg0":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 982
    invoke-virtual {v8, v0}, Landroid/app/IOplusActivityManager$Stub;->getMultiAppAllAccessMode(Landroid/os/Bundle;)V

    .line 983
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 984
    invoke-virtual {v11, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 985
    goto/16 :goto_0

    .line 968
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :pswitch_5f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 970
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 971
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 972
    invoke-virtual {v8, v0, v1}, Landroid/app/IOplusActivityManager$Stub;->setMultiAppAccessMode(Ljava/lang/String;I)I

    move-result v2

    .line 973
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 974
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 975
    goto/16 :goto_0

    .line 958
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_60
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 959
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 960
    invoke-virtual {v8, v0}, Landroid/app/IOplusActivityManager$Stub;->getMultiAppAccessMode(Ljava/lang/String;)I

    move-result v1

    .line 961
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 962
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 963
    goto/16 :goto_0

    .line 946
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_61
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 948
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 949
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 950
    invoke-virtual {v8, v0, v1}, Landroid/app/IOplusActivityManager$Stub;->setMultiAppAlias(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 951
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 952
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 953
    goto/16 :goto_0

    .line 938
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_62
    invoke-virtual/range {p0 .. p0}, Landroid/app/IOplusActivityManager$Stub;->getMultiAppConfig()Lcom/oplus/multiapp/OplusMultiAppConfig;

    move-result-object v0

    .line 939
    .local v0, "_result":Lcom/oplus/multiapp/OplusMultiAppConfig;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 940
    invoke-virtual {v11, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 941
    goto/16 :goto_0

    .line 929
    .end local v0    # "_result":Lcom/oplus/multiapp/OplusMultiAppConfig;
    :pswitch_63
    sget-object v0, Lcom/oplus/multiapp/OplusMultiAppConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/multiapp/OplusMultiAppConfig;

    .line 930
    .local v0, "_arg0":Lcom/oplus/multiapp/OplusMultiAppConfig;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 931
    invoke-virtual {v8, v0}, Landroid/app/IOplusActivityManager$Stub;->setMultiAppConfig(Lcom/oplus/multiapp/OplusMultiAppConfig;)I

    move-result v1

    .line 932
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 933
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 934
    goto/16 :goto_0

    .line 919
    .end local v0    # "_arg0":Lcom/oplus/multiapp/OplusMultiAppConfig;
    .end local v1    # "_result":I
    :pswitch_64
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 920
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 921
    invoke-virtual {v8, v0}, Landroid/app/IOplusActivityManager$Stub;->getMultiAppAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 922
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 923
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 924
    goto/16 :goto_0

    .line 909
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_65
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 910
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 911
    invoke-virtual {v8, v0}, Landroid/app/IOplusActivityManager$Stub;->getMultiAppList(I)Ljava/util/List;

    move-result-object v1

    .line 912
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 913
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 914
    goto/16 :goto_0

    .line 901
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_66
    invoke-virtual/range {p0 .. p0}, Landroid/app/IOplusActivityManager$Stub;->getIsSupportMultiApp()Z

    move-result v0

    .line 902
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 903
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 904
    goto/16 :goto_0

    .line 894
    .end local v0    # "_result":Z
    :pswitch_67
    invoke-virtual/range {p0 .. p0}, Landroid/app/IOplusActivityManager$Stub;->getDisplayCompatData()Lcom/oplus/util/OplusDisplayCompatData;

    move-result-object v0

    .line 895
    .local v0, "_result":Lcom/oplus/util/OplusDisplayCompatData;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 896
    invoke-virtual {v11, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 897
    goto/16 :goto_0

    .line 884
    .end local v0    # "_result":Lcom/oplus/util/OplusDisplayCompatData;
    :pswitch_68
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 886
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 887
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 888
    invoke-virtual {v8, v0, v1}, Landroid/app/IOplusActivityManager$Stub;->handleAppFromControlCenter(Ljava/lang/String;I)V

    .line 889
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 890
    goto/16 :goto_0

    .line 870
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_69
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 872
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 874
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 875
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 876
    invoke-virtual {v8, v0, v1, v2}, Landroid/app/IOplusActivityManager$Stub;->getStageProtectListFromPkgAsUser(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v3

    .line 877
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 878
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 879
    goto/16 :goto_0

    .line 858
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_6a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 860
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 861
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 862
    invoke-virtual {v8, v0, v1}, Landroid/app/IOplusActivityManager$Stub;->getStageProtectListFromPkg(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    .line 863
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 864
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 865
    goto/16 :goto_0

    .line 850
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_6b
    invoke-virtual/range {p0 .. p0}, Landroid/app/IOplusActivityManager$Stub;->getDisplayOptimizationData()Lcom/oplus/util/OplusDisplayOptimizationData;

    move-result-object v0

    .line 851
    .local v0, "_result":Lcom/oplus/util/OplusDisplayOptimizationData;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 852
    invoke-virtual {v11, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 853
    goto/16 :goto_0

    .line 840
    .end local v0    # "_result":Lcom/oplus/util/OplusDisplayOptimizationData;
    :pswitch_6c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 842
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 843
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 844
    invoke-virtual {v8, v0, v1}, Landroid/app/IOplusActivityManager$Stub;->removeStageProtectInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 846
    goto/16 :goto_0

    .line 821
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_6d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 823
    .local v14, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 825
    .local v15, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v16

    .line 827
    .local v16, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 829
    .local v17, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 831
    .local v18, "_arg4":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/app/IOplusProtectConnection$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/app/IOplusProtectConnection;

    move-result-object v20

    .line 832
    .local v20, "_arg5":Lcom/oplus/app/IOplusProtectConnection;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 833
    move-object/from16 v0, p0

    move-object v1, v14

    move-object v2, v15

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move-wide/from16 v5, v18

    move-object/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/app/IOplusActivityManager$Stub;->addStageProtectInfo(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JLcom/oplus/app/IOplusProtectConnection;)V

    .line 834
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 835
    goto/16 :goto_0

    .line 813
    .end local v14    # "_arg0":Ljava/lang/String;
    .end local v15    # "_arg1":Ljava/lang/String;
    .end local v16    # "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17    # "_arg3":Ljava/lang/String;
    .end local v18    # "_arg4":J
    .end local v20    # "_arg5":Lcom/oplus/app/IOplusProtectConnection;
    :pswitch_6e
    invoke-virtual/range {p0 .. p0}, Landroid/app/IOplusActivityManager$Stub;->getGlobalProcessWhiteList()Ljava/util/List;

    move-result-object v0

    .line 814
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 815
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 816
    goto/16 :goto_0

    .line 804
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_6f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 805
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 806
    invoke-virtual {v8, v0}, Landroid/app/IOplusActivityManager$Stub;->getGlobalPkgWhiteList(I)Ljava/util/List;

    move-result-object v1

    .line 807
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 808
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 809
    goto/16 :goto_0

    .line 795
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_70
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/app/IOplusGameSpaceController$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/app/IOplusGameSpaceController;

    move-result-object v0

    .line 796
    .local v0, "_arg0":Lcom/oplus/app/IOplusGameSpaceController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 797
    invoke-virtual {v8, v0}, Landroid/app/IOplusActivityManager$Stub;->setGameSpaceController(Lcom/oplus/app/IOplusGameSpaceController;)V

    .line 798
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 799
    goto/16 :goto_0

    .line 782
    .end local v0    # "_arg0":Lcom/oplus/app/IOplusGameSpaceController;
    :pswitch_71
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 784
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 786
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 787
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 788
    invoke-virtual {v8, v0, v1, v2}, Landroid/app/IOplusActivityManager$Stub;->handleAppForNotification(Ljava/lang/String;II)V

    .line 789
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 790
    goto/16 :goto_0

    .line 773
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 774
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 775
    invoke-virtual {v8, v0}, Landroid/app/IOplusActivityManager$Stub;->killPidForce(I)V

    .line 776
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 777
    goto/16 :goto_0

    .line 762
    .end local v0    # "_arg0":I
    :pswitch_73
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 764
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 765
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 766
    invoke-virtual {v8, v0, v1}, Landroid/app/IOplusActivityManager$Stub;->revokeOplusPermissionByGroup(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 768
    goto/16 :goto_0

    .line 751
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_74
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 753
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 754
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 755
    invoke-virtual {v8, v0, v1}, Landroid/app/IOplusActivityManager$Stub;->grantOplusPermissionByGroup(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 757
    goto/16 :goto_0

    .line 743
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_75
    invoke-virtual/range {p0 .. p0}, Landroid/app/IOplusActivityManager$Stub;->isPermissionInterceptEnabled()Z

    move-result v0

    .line 744
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 745
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 746
    goto/16 :goto_0

    .line 735
    .end local v0    # "_result":Z
    :pswitch_76
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 736
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 737
    invoke-virtual {v8, v0}, Landroid/app/IOplusActivityManager$Stub;->setPermissionInterceptEnable(Z)V

    .line 738
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 739
    goto/16 :goto_0

    .line 722
    .end local v0    # "_arg0":Z
    :pswitch_77
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 724
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 726
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 727
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 728
    invoke-virtual {v8, v0, v1, v2}, Landroid/app/IOplusActivityManager$Stub;->updatePermissionChoice(Ljava/lang/String;Ljava/lang/String;I)V

    .line 729
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 730
    goto/16 :goto_0

    .line 714
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_78
    invoke-virtual/range {p0 .. p0}, Landroid/app/IOplusActivityManager$Stub;->getSecureKeyboardData()Lcom/oplus/util/OplusSecureKeyboardData;

    move-result-object v0

    .line 715
    .local v0, "_result":Lcom/oplus/util/OplusSecureKeyboardData;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 716
    invoke-virtual {v11, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 717
    goto/16 :goto_0

    .line 707
    .end local v0    # "_result":Lcom/oplus/util/OplusSecureKeyboardData;
    :pswitch_79
    invoke-virtual/range {p0 .. p0}, Landroid/app/IOplusActivityManager$Stub;->getAccidentallyTouchData()Lcom/oplus/util/OplusAccidentallyTouchData;

    move-result-object v0

    .line 708
    .local v0, "_result":Lcom/oplus/util/OplusAccidentallyTouchData;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 709
    invoke-virtual {v11, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 710
    goto/16 :goto_0

    .line 698
    .end local v0    # "_result":Lcom/oplus/util/OplusAccidentallyTouchData;
    :pswitch_7a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 700
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/favorite/IOplusFavoriteQueryCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/favorite/IOplusFavoriteQueryCallback;

    move-result-object v1

    .line 701
    .local v1, "_arg1":Lcom/oplus/favorite/IOplusFavoriteQueryCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 702
    invoke-virtual {v8, v0, v1}, Landroid/app/IOplusActivityManager$Stub;->favoriteQueryRule(Ljava/lang/String;Lcom/oplus/favorite/IOplusFavoriteQueryCallback;)V

    .line 703
    goto/16 :goto_0

    .line 686
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/oplus/favorite/IOplusFavoriteQueryCallback;
    :pswitch_7b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 688
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 690
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 691
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 692
    invoke-virtual {v8, v0, v1, v2}, Landroid/app/IOplusActivityManager$Stub;->reportBindApplicationFinished(Ljava/lang/String;II)V

    .line 693
    goto/16 :goto_0

    .line 676
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_7c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 678
    .local v0, "_arg0":J
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 679
    .local v2, "_arg1":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 680
    invoke-virtual {v8, v0, v1, v2}, Landroid/app/IOplusActivityManager$Stub;->sendTheiaEvent(JLandroid/content/Intent;)V

    .line 681
    goto/16 :goto_0

    .line 668
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":Landroid/content/Intent;
    :pswitch_7d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 669
    .restart local v0    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 670
    invoke-virtual {v8, v0, v1}, Landroid/app/IOplusActivityManager$Stub;->onBackPressedOnTheiaMonitor(J)V

    .line 671
    goto/16 :goto_0

    .line 658
    .end local v0    # "_arg0":J
    :pswitch_7e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 660
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 661
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 662
    invoke-virtual {v8, v0, v1}, Landroid/app/IOplusActivityManager$Stub;->setGlThreads(II)V

    .line 663
    goto/16 :goto_0

    .line 648
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_7f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 650
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 651
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 652
    invoke-virtual {v8, v0, v1}, Landroid/app/IOplusActivityManager$Stub;->setHwuiTaskThreads(II)V

    .line 653
    goto :goto_0

    .line 627
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_80
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 629
    .local v14, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 631
    .local v15, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 633
    .local v16, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 635
    .local v17, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 637
    .local v18, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 639
    .local v19, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 640
    .local v20, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 641
    move-object/from16 v0, p0

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, v17

    move/from16 v5, v18

    move-object/from16 v6, v19

    move/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/app/IOplusActivityManager$Stub;->unfreezeForKernelTargetPid(IIIIILjava/lang/String;I)V

    .line 642
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 643
    goto :goto_0

    .line 610
    .end local v14    # "_arg0":I
    .end local v15    # "_arg1":I
    .end local v16    # "_arg2":I
    .end local v17    # "_arg3":I
    .end local v18    # "_arg4":I
    .end local v19    # "_arg5":Ljava/lang/String;
    .end local v20    # "_arg6":I
    :pswitch_81
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 612
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 614
    .local v7, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 616
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 618
    .local v15, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 619
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 620
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move v3, v14

    move-object v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/app/IOplusActivityManager$Stub;->unfreezeForKernel(IIILjava/lang/String;I)V

    .line 621
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 622
    nop

    .line 1968
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":I
    :goto_0
    return v13

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
