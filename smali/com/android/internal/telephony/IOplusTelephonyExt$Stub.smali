.class public abstract Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;
.super Landroid/os/Binder;
.source "IOplusTelephonyExt.java"

# interfaces
.implements Lcom/android/internal/telephony/IOplusTelephonyExt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IOplusTelephonyExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IOplusTelephonyExt$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addGeoFenceEventCallBack:I = 0x4c

.field static final blacklist TRANSACTION_backgroundSearch:I = 0x6e

.field static final blacklist TRANSACTION_barCell:I = 0x6a

.field static final blacklist TRANSACTION_canSupSlotSaSupport:I = 0x45

.field static final blacklist TRANSACTION_changeEsimStatus:I = 0x1a

.field static final blacklist TRANSACTION_cleanApnState:I = 0x6d

.field static final blacklist TRANSACTION_cleanupConnections:I = 0x30

.field static final blacklist TRANSACTION_clearCellBlacklist:I = 0x37

.field static final blacklist TRANSACTION_delCellBlacklist:I = 0x36

.field static final blacklist TRANSACTION_disableEndc:I = 0x2c

.field static final blacklist TRANSACTION_enableUiccApplications:I = 0x44

.field static final blacklist TRANSACTION_forcePlmnScan:I = 0x5b

.field static final blacklist TRANSACTION_getActionExecuteTime:I = 0x12

.field static final blacklist TRANSACTION_getAnchorCellInfo:I = 0x2f

.field static final blacklist TRANSACTION_getCardType:I = 0xa

.field static final blacklist TRANSACTION_getCellIdentity:I = 0x61

.field static final blacklist TRANSACTION_getCellIdentityOperator:I = 0x1d

.field static final blacklist TRANSACTION_getCellInfo:I = 0x1c

.field static final blacklist TRANSACTION_getCurrentTransport:I = 0x21

.field static final blacklist TRANSACTION_getDataCallListAction:I = 0x2b

.field static final blacklist TRANSACTION_getEcholocateMetrics:I = 0x55

.field static final blacklist TRANSACTION_getFiveGUperLayerIndAvailable:I = 0x23

.field static final blacklist TRANSACTION_getFullIccId:I = 0x1b

.field static final blacklist TRANSACTION_getHasNrSecondaryServingCell:I = 0x57

.field static final blacklist TRANSACTION_getIccCardType:I = 0x65

.field static final blacklist TRANSACTION_getIsNrAvailable:I = 0x56

.field static final blacklist TRANSACTION_getLastAction:I = 0x13

.field static final blacklist TRANSACTION_getLteCdmaImsi:I = 0x18

.field static final blacklist TRANSACTION_getModemTxTime:I = 0x29

.field static final blacklist TRANSACTION_getNetworkConfig:I = 0x26

.field static final blacklist TRANSACTION_getNewPreferredNetworkMode:I = 0x64

.field static final blacklist TRANSACTION_getNrBearerAllocation:I = 0x24

.field static final blacklist TRANSACTION_getNrConnect:I = 0x25

.field static final blacklist TRANSACTION_getNrModeChangedAllow:I = 0x4a

.field static final blacklist TRANSACTION_getNrModeChangedEvent:I = 0x4b

.field static final blacklist TRANSACTION_getNrModeToCheck:I = 0x54

.field static final blacklist TRANSACTION_getOemSpn:I = 0x60

.field static final blacklist TRANSACTION_getOperatorNumericForData:I = 0x6

.field static final blacklist TRANSACTION_getOrigSignalStrength:I = 0x70

.field static final blacklist TRANSACTION_getPreferSubId:I = 0x66

.field static final blacklist TRANSACTION_getPreferredDefaultNetMode:I = 0x63

.field static final blacklist TRANSACTION_getPreferredNetworkType:I = 0x2e

.field static final blacklist TRANSACTION_getRealNrState:I = 0x3a

.field static final blacklist TRANSACTION_getRemoteMessenger:I = 0x3f

.field static final blacklist TRANSACTION_getRoamingReduction:I = 0x1e

.field static final blacklist TRANSACTION_getSaMode:I = 0x31

.field static final blacklist TRANSACTION_getSelectConfig:I = 0x4e

.field static final blacklist TRANSACTION_getSoftSimCardSlotId:I = 0x5

.field static final blacklist TRANSACTION_getSubId:I = 0x43

.field static final blacklist TRANSACTION_getSupSlotSaSupport:I = 0x47

.field static final blacklist TRANSACTION_getTelephonyPowerLost:I = 0x28

.field static final blacklist TRANSACTION_getTelephonyPowerState:I = 0x27

.field static final blacklist TRANSACTION_getTempDdsSwitch:I = 0x48

.field static final blacklist TRANSACTION_getUserSaMode:I = 0x41

.field static final blacklist TRANSACTION_getVoNrVisible:I = 0x40

.field static final blacklist TRANSACTION_isAlreadyUpdated:I = 0x2a

.field static final blacklist TRANSACTION_isApnEnabled:I = 0x39

.field static final blacklist TRANSACTION_isApnInException:I = 0x6c

.field static final blacklist TRANSACTION_isImsUseEnabled:I = 0x1f

.field static final blacklist TRANSACTION_isImsValid:I = 0x20

.field static final blacklist TRANSACTION_isInDelayOOSState:I = 0x42

.field static final blacklist TRANSACTION_isUriFileExist:I = 0x58

.field static final blacklist TRANSACTION_lockCellAction:I = 0x67

.field static final blacklist TRANSACTION_performLteAcqScanReq:I = 0x5a

.field static final blacklist TRANSACTION_psDetachAttachAction:I = 0x33

.field static final blacklist TRANSACTION_qcBackgroundSearch:I = 0x5c

.field static final blacklist TRANSACTION_radioPower:I = 0x34

.field static final blacklist TRANSACTION_registerCallback:I = 0x3

.field static final blacklist TRANSACTION_removeGeoFenceEventCallBack:I = 0x4d

.field static final blacklist TRANSACTION_reportGameEnterOrLeave:I = 0x16

.field static final blacklist TRANSACTION_reportGameErrorCauseToCenter:I = 0x53

.field static final blacklist TRANSACTION_reportGameInfo:I = 0x52

.field static final blacklist TRANSACTION_reportNetWorkLatency:I = 0x14

.field static final blacklist TRANSACTION_reportNetWorkLevel:I = 0x15

.field static final blacklist TRANSACTION_requestForTelephonyEvent:I = 0x2

.field static final blacklist TRANSACTION_reregisterNetwork:I = 0x3b

.field static final blacklist TRANSACTION_researchNetwork:I = 0x3c

.field static final blacklist TRANSACTION_resetBarCell:I = 0x6b

.field static final blacklist TRANSACTION_resetRadioSmooth:I = 0x38

.field static final blacklist TRANSACTION_resetRsrpBackoff:I = 0x69

.field static final blacklist TRANSACTION_rsrpBackoff:I = 0x68

.field static final blacklist TRANSACTION_sendMultipartTextForSubscriberWithOptionsOem:I = 0x9

.field static final blacklist TRANSACTION_sendRecoveryRequest:I = 0x11

.field static final blacklist TRANSACTION_sendTextForSubscriberWithOptionsOem:I = 0x8

.field static final blacklist TRANSACTION_set5gIconDelayTimer:I = 0x5e

.field static final blacklist TRANSACTION_setAllowedNetworkTypesBitmap:I = 0x50

.field static final blacklist TRANSACTION_setCellBlackList:I = 0x35

.field static final blacklist TRANSACTION_setDisplayNumberExt:I = 0x17

.field static final blacklist TRANSACTION_setIgnorePsPaging:I = 0x3e

.field static final blacklist TRANSACTION_setNrMode:I = 0x5d

.field static final blacklist TRANSACTION_setNrModeChangedAllow:I = 0x49

.field static final blacklist TRANSACTION_setPreferredNetworkType:I = 0x2d

.field static final blacklist TRANSACTION_setSaLtePingpongState:I = 0x3d

.field static final blacklist TRANSACTION_setSaMode:I = 0x32

.field static final blacklist TRANSACTION_setSelectConfig:I = 0x4f

.field static final blacklist TRANSACTION_setSupSlotSaSupport:I = 0x46

.field static final blacklist TRANSACTION_setViceCardGameMode:I = 0x19

.field static final blacklist TRANSACTION_startMobileDataHongbaoPolicy:I = 0x7

.field static final blacklist TRANSACTION_stopBGSearch:I = 0x6f

.field static final blacklist TRANSACTION_unRegisterCallback:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 506
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 507
    const-string v0, "com.android.internal.telephony.IOplusTelephonyExt"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 508
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IOplusTelephonyExt;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 515
    if-nez p0, :cond_0

    .line 516
    const/4 v0, 0x0

    return-object v0

    .line 518
    :cond_0
    const-string v0, "com.android.internal.telephony.IOplusTelephonyExt"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 519
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/IOplusTelephonyExt;

    if-eqz v1, :cond_1

    .line 520
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/IOplusTelephonyExt;

    return-object v1

    .line 522
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 526
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 29
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 530
    move-object/from16 v13, p0

    move/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v12, p3

    const-string v11, "com.android.internal.telephony.IOplusTelephonyExt"

    .line 531
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v14, v10, :cond_0

    const v0, 0xffffff

    if-gt v14, v0, :cond_0

    .line 532
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 534
    :cond_0
    packed-switch v14, :pswitch_data_0

    .line 542
    packed-switch v14, :pswitch_data_1

    .line 1614
    :pswitch_0
    move-object v14, v12

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 538
    :pswitch_1
    invoke-virtual {v12, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 539
    return v10

    .line 1605
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1606
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1607
    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->getOrigSignalStrength(I)Landroid/telephony/SignalStrength;

    move-result-object v1

    .line 1608
    .local v1, "_result":Landroid/telephony/SignalStrength;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1609
    invoke-virtual {v12, v1, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1610
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1594
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/telephony/SignalStrength;
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1596
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1597
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1598
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->stopBGSearch(II)V

    .line 1599
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1600
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1582
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1584
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1585
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1586
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->backgroundSearch(II)Z

    move-result v2

    .line 1587
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1588
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1589
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1572
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1573
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1574
    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->cleanApnState(I)Z

    move-result v1

    .line 1575
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1576
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1577
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1562
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1563
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1564
    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->isApnInException(I)Z

    move-result v1

    .line 1565
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1566
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1567
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1546
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1548
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1550
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1552
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1553
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1554
    invoke-virtual {v13, v0, v1, v2, v3}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->resetBarCell(IIII)Z

    move-result v4

    .line 1555
    .local v4, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1556
    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1557
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1528
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    .end local v4    # "_result":Z
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1530
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1532
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1534
    .local v9, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1536
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v17

    .line 1537
    .local v17, "_arg4":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1538
    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move v3, v9

    move/from16 v4, v16

    move-wide/from16 v5, v17

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->barCell(IIIIJ)Z

    move-result v0

    .line 1539
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1540
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1541
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1512
    .end local v0    # "_result":Z
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":J
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1514
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1516
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1518
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1519
    .restart local v3    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1520
    invoke-virtual {v13, v0, v1, v2, v3}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->resetRsrpBackoff(ILjava/lang/String;II)Z

    move-result v4

    .line 1521
    .restart local v4    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1522
    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1523
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1494
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    .end local v4    # "_result":Z
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1496
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1498
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1500
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1502
    .local v9, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1503
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1504
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move v3, v8

    move v4, v9

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->rsrpBackoff(ILjava/lang/String;III)Z

    move-result v0

    .line 1505
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1506
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1507
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1482
    .end local v0    # "_result":Z
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":I
    .end local v16    # "_arg4":I
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1484
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1485
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1486
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->lockCellAction(ILjava/lang/String;)Z

    move-result v2

    .line 1487
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1488
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1489
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1474
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->getPreferSubId()I

    move-result v0

    .line 1475
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1476
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1477
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1465
    .end local v0    # "_result":I
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1466
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1467
    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->getIccCardType(I)Ljava/lang/String;

    move-result-object v1

    .line 1468
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1469
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1470
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1455
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1456
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1457
    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->getNewPreferredNetworkMode(I)I

    move-result v1

    .line 1458
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1459
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1460
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1445
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1446
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1447
    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->getPreferredDefaultNetMode(I)I

    move-result v1

    .line 1448
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1449
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1450
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1431
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1433
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1435
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1436
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1437
    invoke-virtual {v13, v0, v1, v2}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->getCellIdentity(ILjava/lang/String;Ljava/lang/String;)Landroid/telephony/CellIdentity;

    move-result-object v3

    .line 1438
    .local v3, "_result":Landroid/telephony/CellIdentity;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1439
    invoke-virtual {v12, v3, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1440
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1421
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Landroid/telephony/CellIdentity;
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1422
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1423
    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->getOemSpn(I)Ljava/lang/String;

    move-result-object v1

    .line 1424
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1425
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1426
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1409
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1411
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1412
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1413
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->set5gIconDelayTimer(II)Z

    move-result v2

    .line 1414
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1415
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1416
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1395
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1397
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1399
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1400
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1401
    invoke-virtual {v13, v0, v1, v2}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->setNrMode(IILjava/lang/String;)Z

    move-result v3

    .line 1402
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1403
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1404
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1381
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1383
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1385
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1386
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1387
    invoke-virtual {v13, v0, v1, v2}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->qcBackgroundSearch(III)Z

    move-result v3

    .line 1388
    .restart local v3    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1389
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1390
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1367
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1369
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1371
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1372
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1373
    invoke-virtual {v13, v0, v1, v2}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->forcePlmnScan(IILjava/lang/String;)Z

    move-result v3

    .line 1374
    .restart local v3    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1375
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1376
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1357
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1358
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1359
    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->performLteAcqScanReq(I)Z

    move-result v1

    .line 1360
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1361
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1362
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1347
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1348
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1349
    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->isUriFileExist(Ljava/lang/String;)Z

    move-result v1

    .line 1350
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1351
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1352
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1339
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->getHasNrSecondaryServingCell()Z

    move-result v0

    .line 1340
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1341
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1342
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1332
    .end local v0    # "_result":Z
    :pswitch_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->getIsNrAvailable()Z

    move-result v0

    .line 1333
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1334
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1335
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1323
    .end local v0    # "_result":Z
    :pswitch_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1324
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1325
    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->getEcholocateMetrics(I)Ljava/util/List;

    move-result-object v1

    .line 1326
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1327
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1328
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1312
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1314
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 1315
    .local v1, "_arg1":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1316
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->getNrModeToCheck(ILandroid/os/Bundle;)V

    .line 1317
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1318
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1304
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :pswitch_1c
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->reportGameErrorCauseToCenter()Ljava/lang/String;

    move-result-object v0

    .line 1305
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1306
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1307
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1296
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1297
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1298
    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->reportGameInfo(Ljava/lang/String;)V

    .line 1299
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1300
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1284
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1286
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1287
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1288
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->setAllowedNetworkTypesBitmap(II)Z

    move-result v2

    .line 1289
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1290
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1291
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1272
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1274
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1275
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1276
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->setSelectConfig(ILjava/lang/String;)Z

    move-result v2

    .line 1277
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1278
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1279
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1262
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1263
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1264
    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->getSelectConfig(I)Ljava/lang/String;

    move-result-object v1

    .line 1265
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1266
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1267
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1253
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/IOplusGeoFenceEventCallBack$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/IOplusGeoFenceEventCallBack;

    move-result-object v0

    .line 1254
    .local v0, "_arg0":Landroid/telephony/IOplusGeoFenceEventCallBack;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1255
    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->removeGeoFenceEventCallBack(Landroid/telephony/IOplusGeoFenceEventCallBack;)V

    .line 1256
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1257
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1244
    .end local v0    # "_arg0":Landroid/telephony/IOplusGeoFenceEventCallBack;
    :pswitch_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/IOplusGeoFenceEventCallBack$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/IOplusGeoFenceEventCallBack;

    move-result-object v0

    .line 1245
    .restart local v0    # "_arg0":Landroid/telephony/IOplusGeoFenceEventCallBack;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1246
    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->addGeoFenceEventCallBack(Landroid/telephony/IOplusGeoFenceEventCallBack;)V

    .line 1247
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1248
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1236
    .end local v0    # "_arg0":Landroid/telephony/IOplusGeoFenceEventCallBack;
    :pswitch_23
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->getNrModeChangedEvent()Landroid/os/Bundle;

    move-result-object v0

    .line 1237
    .local v0, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1238
    invoke-virtual {v12, v0, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1239
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1229
    .end local v0    # "_result":Landroid/os/Bundle;
    :pswitch_24
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->getNrModeChangedAllow()Z

    move-result v0

    .line 1230
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1231
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1232
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1221
    .end local v0    # "_result":Z
    :pswitch_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1222
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1223
    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->setNrModeChangedAllow(Z)V

    .line 1224
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1225
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1213
    .end local v0    # "_arg0":Z
    :pswitch_26
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->getTempDdsSwitch()Z

    move-result v0

    .line 1214
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1215
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1216
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1206
    .end local v0    # "_result":Z
    :pswitch_27
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->getSupSlotSaSupport()Z

    move-result v0

    .line 1207
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1208
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1209
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1198
    .end local v0    # "_result":Z
    :pswitch_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1199
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1200
    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->setSupSlotSaSupport(Z)V

    .line 1201
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1202
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1190
    .end local v0    # "_arg0":Z
    :pswitch_29
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->canSupSlotSaSupport()Z

    move-result v0

    .line 1191
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1192
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1193
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1180
    .end local v0    # "_result":Z
    :pswitch_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1182
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1183
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1184
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->enableUiccApplications(IZ)V

    .line 1185
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1186
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1170
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1171
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1172
    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->getSubId(I)I

    move-result v1

    .line 1173
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1174
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1175
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1160
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1161
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1162
    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->isInDelayOOSState(I)Z

    move-result v1

    .line 1163
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1164
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1165
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1152
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_2d
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->getUserSaMode()I

    move-result v0

    .line 1153
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1154
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1155
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1143
    .end local v0    # "_result":I
    :pswitch_2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1144
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1145
    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->getVoNrVisible(I)Z

    move-result v1

    .line 1146
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1147
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1148
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1135
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_2f
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->getRemoteMessenger()Landroid/os/IBinder;

    move-result-object v0

    .line 1136
    .local v0, "_result":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1137
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1138
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1127
    .end local v0    # "_result":Landroid/os/IBinder;
    :pswitch_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1128
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1129
    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->setIgnorePsPaging(Z)V

    .line 1130
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1131
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1115
    .end local v0    # "_arg0":Z
    :pswitch_31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1117
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1118
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1119
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->setSaLtePingpongState(II)Z

    move-result v2

    .line 1120
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1121
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1122
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1105
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1106
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1107
    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->researchNetwork(I)Z

    move-result v1

    .line 1108
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1109
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1110
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1095
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1096
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1097
    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->reregisterNetwork(I)Z

    move-result v1

    .line 1098
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1099
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1100
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1085
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1086
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1087
    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->getRealNrState(I)I

    move-result v1

    .line 1088
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1089
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1090
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1075
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1076
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1077
    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->isApnEnabled(I)Z

    move-result v1

    .line 1078
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1079
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1080
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1065
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1066
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1067
    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->resetRadioSmooth(I)Z

    move-result v1

    .line 1068
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1069
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1070
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1055
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_37
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1056
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1057
    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->clearCellBlacklist(I)Z

    move-result v1

    .line 1058
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1059
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1060
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1043
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_38
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1045
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 1046
    .local v1, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1047
    invoke-virtual {v13, v0, v1, v2}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->delCellBlacklist(IJ)Z

    move-result v3

    .line 1048
    .restart local v3    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1049
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1050
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1031
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":J
    .end local v3    # "_result":Z
    :pswitch_39
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1033
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 1034
    .restart local v1    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1035
    invoke-virtual {v13, v0, v1, v2}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->setCellBlackList(IJ)Z

    move-result v3

    .line 1036
    .restart local v3    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1037
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1038
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1021
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":J
    .end local v3    # "_result":Z
    :pswitch_3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1022
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1023
    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->radioPower(I)Z

    move-result v1

    .line 1024
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1025
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1026
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1011
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_3b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1012
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1013
    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->psDetachAttachAction(I)Z

    move-result v1

    .line 1014
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1015
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1016
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 999
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_3c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1001
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1002
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1003
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->setSaMode(II)Z

    move-result v2

    .line 1004
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1005
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1006
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 989
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_3d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 990
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 991
    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->getSaMode(I)I

    move-result v1

    .line 992
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 993
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 994
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 979
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_3e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 980
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 981
    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->cleanupConnections(I)Z

    move-result v1

    .line 982
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 983
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 984
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 969
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_3f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 970
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 971
    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->getAnchorCellInfo(I)Z

    move-result v1

    .line 972
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 973
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 974
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 959
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_40
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 960
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 961
    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->getPreferredNetworkType(I)I

    move-result v1

    .line 962
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 963
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 964
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 947
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_41
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 949
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 950
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 951
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->setPreferredNetworkType(II)Z

    move-result v2

    .line 952
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 953
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 954
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 937
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_42
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 938
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 939
    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->disableEndc(I)Z

    move-result v1

    .line 940
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 941
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 942
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 927
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_43
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 928
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 929
    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->getDataCallListAction(I)Z

    move-result v1

    .line 930
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 931
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 932
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 919
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_44
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->isAlreadyUpdated()Z

    move-result v0

    .line 920
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 921
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 922
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 912
    .end local v0    # "_result":Z
    :pswitch_45
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->getModemTxTime()[J

    move-result-object v0

    .line 913
    .local v0, "_result":[J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 914
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 915
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 905
    .end local v0    # "_result":[J
    :pswitch_46
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->getTelephonyPowerLost()D

    move-result-wide v0

    .line 906
    .local v0, "_result":D
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 907
    invoke-virtual {v12, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 908
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 898
    .end local v0    # "_result":D
    :pswitch_47
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->getTelephonyPowerState()Ljava/lang/String;

    move-result-object v0

    .line 899
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 900
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 901
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 889
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_48
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 890
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 891
    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->getNetworkConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 892
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 893
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 894
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 881
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_49
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->getNrConnect()Z

    move-result v0

    .line 882
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 883
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 884
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 872
    .end local v0    # "_result":Z
    :pswitch_4a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 873
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 874
    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->getNrBearerAllocation(I)I

    move-result v1

    .line 875
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 876
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 877
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 862
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_4b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 863
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 864
    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->getFiveGUperLayerIndAvailable(I)I

    move-result v1

    .line 865
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 866
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 867
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 850
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_4c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 852
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 853
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 854
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->getCurrentTransport(II)I

    move-result v2

    .line 855
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 856
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 857
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 840
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_4d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 841
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 842
    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->isImsValid(I)Z

    move-result v1

    .line 843
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 844
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 845
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 830
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_4e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 831
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 832
    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->isImsUseEnabled(I)Z

    move-result v1

    .line 833
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 834
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 835
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 822
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_4f
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->getRoamingReduction()Z

    move-result v0

    .line 823
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 824
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 825
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 813
    .end local v0    # "_result":Z
    :pswitch_50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 814
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 815
    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->getCellIdentityOperator(I)Ljava/lang/String;

    move-result-object v1

    .line 816
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 817
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 818
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 803
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_51
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 804
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 805
    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->getCellInfo(I)Landroid/os/Bundle;

    move-result-object v1

    .line 806
    .local v1, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 807
    invoke-virtual {v12, v1, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 808
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 793
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/os/Bundle;
    :pswitch_52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 794
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 795
    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->getFullIccId(I)Ljava/lang/String;

    move-result-object v1

    .line 796
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 797
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 798
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 784
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 785
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 786
    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->changeEsimStatus(I)V

    .line 787
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 788
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 771
    .end local v0    # "_arg0":I
    :pswitch_54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 773
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 775
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 776
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 777
    invoke-virtual {v13, v0, v1, v2}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->setViceCardGameMode(ZLjava/lang/String;Ljava/lang/String;)V

    .line 778
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 779
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 761
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 762
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 763
    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->getLteCdmaImsi(I)[Ljava/lang/String;

    move-result-object v1

    .line 764
    .local v1, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 765
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 766
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 749
    .end local v0    # "_arg0":I
    .end local v1    # "_result":[Ljava/lang/String;
    :pswitch_56
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 751
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 752
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 753
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->setDisplayNumberExt(Ljava/lang/String;I)I

    move-result v2

    .line 754
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 755
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 756
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 736
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_57
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 738
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 740
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 741
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 742
    invoke-virtual {v13, v0, v1, v2}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->reportGameEnterOrLeave(ILjava/lang/String;Z)V

    .line 743
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 744
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 727
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Z
    :pswitch_58
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 728
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 729
    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->reportNetWorkLevel(Ljava/lang/String;)V

    .line 730
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 731
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 718
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_59
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 719
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 720
    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->reportNetWorkLatency(Ljava/lang/String;)V

    .line 721
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 722
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 708
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_5a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 709
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 710
    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->getLastAction(I)I

    move-result v1

    .line 711
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 712
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 713
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 696
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_5b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 698
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 699
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 700
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->getActionExecuteTime(II)J

    move-result-wide v2

    .line 701
    .local v2, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 702
    invoke-virtual {v12, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 703
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 685
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":J
    :pswitch_5c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 687
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 688
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 689
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->sendRecoveryRequest(II)V

    .line 690
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 691
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 675
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_5d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 676
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 677
    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->getCardType(I)I

    move-result v1

    .line 678
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 679
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 680
    move v4, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 644
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_5e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 646
    .local v16, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 648
    .local v17, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 650
    .local v18, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 652
    .local v19, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v20

    .line 654
    .local v20, "_arg4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v21

    .line 656
    .local v21, "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v22

    .line 658
    .local v22, "_arg6":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v23

    .line 660
    .local v23, "_arg7":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 662
    .local v24, "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v25

    .line 664
    .local v25, "_arg9":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .line 666
    .local v26, "_arg10":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 667
    .local v27, "_arg11":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 668
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    move/from16 v8, v23

    move/from16 v9, v24

    move v14, v10

    move/from16 v10, v25

    move-object/from16 v28, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .local v28, "descriptor":Ljava/lang/String;
    move/from16 v11, v26

    move-object v14, v12

    move/from16 v12, v27

    invoke-virtual/range {v0 .. v12}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->sendMultipartTextForSubscriberWithOptionsOem(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZIZII)V

    .line 669
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 670
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 613
    .end local v16    # "_arg0":I
    .end local v17    # "_arg1":Ljava/lang/String;
    .end local v18    # "_arg2":Ljava/lang/String;
    .end local v19    # "_arg3":Ljava/lang/String;
    .end local v20    # "_arg4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v21    # "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .end local v22    # "_arg6":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .end local v23    # "_arg7":Z
    .end local v24    # "_arg8":I
    .end local v25    # "_arg9":Z
    .end local v26    # "_arg10":I
    .end local v27    # "_arg11":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_5f
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 615
    .restart local v16    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 617
    .restart local v17    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 619
    .restart local v18    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 621
    .restart local v19    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 623
    .local v20, "_arg4":Ljava/lang/String;
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, Landroid/app/PendingIntent;

    .line 625
    .local v21, "_arg5":Landroid/app/PendingIntent;
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Landroid/app/PendingIntent;

    .line 627
    .local v22, "_arg6":Landroid/app/PendingIntent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v23

    .line 629
    .restart local v23    # "_arg7":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 631
    .restart local v24    # "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v25

    .line 633
    .restart local v25    # "_arg9":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .line 635
    .restart local v26    # "_arg10":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 636
    .restart local v27    # "_arg11":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 637
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    move/from16 v8, v23

    move/from16 v9, v24

    move/from16 v10, v25

    move/from16 v11, v26

    move/from16 v12, v27

    invoke-virtual/range {v0 .. v12}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->sendTextForSubscriberWithOptionsOem(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIZII)V

    .line 638
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 639
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 598
    .end local v16    # "_arg0":I
    .end local v17    # "_arg1":Ljava/lang/String;
    .end local v18    # "_arg2":Ljava/lang/String;
    .end local v19    # "_arg3":Ljava/lang/String;
    .end local v20    # "_arg4":Ljava/lang/String;
    .end local v21    # "_arg5":Landroid/app/PendingIntent;
    .end local v22    # "_arg6":Landroid/app/PendingIntent;
    .end local v23    # "_arg7":Z
    .end local v24    # "_arg8":I
    .end local v25    # "_arg9":Z
    .end local v26    # "_arg10":I
    .end local v27    # "_arg11":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_60
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 600
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 602
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 604
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 605
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 606
    invoke-virtual {v13, v0, v1, v2, v3}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->startMobileDataHongbaoPolicy(IILjava/lang/String;Ljava/lang/String;)V

    .line 607
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 608
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 588
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_61
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 589
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 590
    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->getOperatorNumericForData(I)Ljava/lang/String;

    move-result-object v1

    .line 591
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 592
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 593
    const/4 v4, 0x1

    goto :goto_0

    .line 580
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_62
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->getSoftSimCardSlotId()I

    move-result v0

    .line 581
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 582
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 583
    const/4 v4, 0x1

    goto :goto_0

    .line 572
    .end local v0    # "_result":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_63
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IOplusTelephonyExtCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IOplusTelephonyExtCallback;

    move-result-object v0

    .line 573
    .local v0, "_arg0":Lcom/android/internal/telephony/IOplusTelephonyExtCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 574
    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->unRegisterCallback(Lcom/android/internal/telephony/IOplusTelephonyExtCallback;)V

    .line 575
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 576
    const/4 v4, 0x1

    goto :goto_0

    .line 561
    .end local v0    # "_arg0":Lcom/android/internal/telephony/IOplusTelephonyExtCallback;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_64
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 563
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IOplusTelephonyExtCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IOplusTelephonyExtCallback;

    move-result-object v1

    .line 564
    .local v1, "_arg1":Lcom/android/internal/telephony/IOplusTelephonyExtCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 565
    invoke-virtual {v13, v0, v1}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->registerCallback(Ljava/lang/String;Lcom/android/internal/telephony/IOplusTelephonyExtCallback;)V

    .line 566
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 567
    const/4 v4, 0x1

    goto :goto_0

    .line 547
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/android/internal/telephony/IOplusTelephonyExtCallback;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_65
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 549
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 551
    .local v1, "_arg1":I
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 552
    .local v2, "_arg2":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 553
    invoke-virtual {v13, v0, v1, v2}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->requestForTelephonyEvent(IILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 554
    .local v3, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 555
    const/4 v4, 0x1

    invoke-virtual {v14, v3, v4}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 556
    nop

    .line 1617
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/os/Bundle;
    .end local v3    # "_result":Landroid/os/Bundle;
    :goto_0
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
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
        :pswitch_0
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
        :pswitch_0
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_0
        :pswitch_11
        :pswitch_10
        :pswitch_0
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
    .end packed-switch
.end method
