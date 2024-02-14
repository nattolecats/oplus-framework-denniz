.class public abstract Landroid/net/wifi/IOplusWifiManager$Stub;
.super Landroid/os/Binder;
.source "IOplusWifiManager.java"

# interfaces
.implements Landroid/net/wifi/IOplusWifiManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/IOplusWifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/IOplusWifiManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_agingTestForWifi:I = 0x3f

.field static final blacklist TRANSACTION_attRequestAuthenticationBeforeTurnOnHotspot:I = 0x66

.field static final blacklist TRANSACTION_changeConnectionMode:I = 0x38

.field static final blacklist TRANSACTION_checkFWKSupplicantScanBusy:I = 0x4b

.field static final blacklist TRANSACTION_checkFWKSupportPasspoint:I = 0x20

.field static final blacklist TRANSACTION_checkInternalPasspointPresetProvider:I = 0x1f

.field static final blacklist TRANSACTION_checkPasspointCAExist:I = 0x1c

.field static final blacklist TRANSACTION_checkPasspointXMLCAExpired:I = 0x1d

.field static final blacklist TRANSACTION_checkWiFiDriverStatus:I = 0x3d

.field static final blacklist TRANSACTION_clearWifiOCloudData:I = 0x14

.field static final blacklist TRANSACTION_connect:I = 0x51

.field static final blacklist TRANSACTION_dealWithCloudBackupResult:I = 0x1a

.field static final blacklist TRANSACTION_dealWithCloudRecoveryData:I = 0x1b

.field static final blacklist TRANSACTION_disableDualSta:I = 0x4

.field static final blacklist TRANSACTION_disableQoEMonitor:I = 0x6b

.field static final blacklist TRANSACTION_doRecoveryFromSettingsForSsv:I = 0x74

.field static final blacklist TRANSACTION_enable5g160MSoftAp:I = 0x4e

.field static final blacklist TRANSACTION_enableQoEMonitor:I = 0x6a

.field static final blacklist TRANSACTION_executeDriverCommand:I = 0x3a

.field static final blacklist TRANSACTION_executeDriverCommandWithResult:I = 0x3b

.field static final blacklist TRANSACTION_getAllDualStaApps:I = 0x7

.field static final blacklist TRANSACTION_getAllScanStatisticsList:I = 0x50

.field static final blacklist TRANSACTION_getAllSlaAcceleratedApps:I = 0x6

.field static final blacklist TRANSACTION_getAllSlaAppsAndStates:I = 0x5

.field static final blacklist TRANSACTION_getAllowedHotspotClients:I = 0x29

.field static final blacklist TRANSACTION_getAvoidChannels:I = 0x45

.field static final blacklist TRANSACTION_getBlockedHotspotClients:I = 0x28

.field static final blacklist TRANSACTION_getCandiateNetwork:I = 0x52

.field static final blacklist TRANSACTION_getConnectedHotspotClients:I = 0x2a

.field static final blacklist TRANSACTION_getCurNetworkState:I = 0x53

.field static final blacklist TRANSACTION_getCurrentNetwork:I = 0x54

.field static final blacklist TRANSACTION_getDBSCapacity:I = 0x42

.field static final blacklist TRANSACTION_getDualStaEnableState:I = 0x67

.field static final blacklist TRANSACTION_getFTMState:I = 0x36

.field static final blacklist TRANSACTION_getFwStatus:I = 0x3e

.field static final blacklist TRANSACTION_getIOTConnectScanResults:I = 0x47

.field static final blacklist TRANSACTION_getL2Param:I = 0x6c

.field static final blacklist TRANSACTION_getNetStateInfo:I = 0x65

.field static final blacklist TRANSACTION_getORouterBoostSate:I = 0x69

.field static final blacklist TRANSACTION_getOplusSta2ConnectionInfo:I = 0x9

.field static final blacklist TRANSACTION_getOplusSta2CurConfigKey:I = 0xa

.field static final blacklist TRANSACTION_getOplusSupportedFeatures:I = 0x1

.field static final blacklist TRANSACTION_getPHYCapacity:I = 0x43

.field static final blacklist TRANSACTION_getPasspointCertifiedState:I = 0x23

.field static final blacklist TRANSACTION_getPasspointUserName:I = 0x22

.field static final blacklist TRANSACTION_getScanStatisticsList:I = 0x4f

.field static final blacklist TRANSACTION_getSecondaryWifiNetwork:I = 0x13

.field static final blacklist TRANSACTION_getSlaAppState:I = 0x3

.field static final blacklist TRANSACTION_getSlaWorkMode:I = 0x8

.field static final blacklist TRANSACTION_getSnifferState:I = 0x32

.field static final blacklist TRANSACTION_getSupportedChannels:I = 0x44

.field static final blacklist TRANSACTION_getULLState:I = 0x68

.field static final blacklist TRANSACTION_getWifiOCloudData:I = 0x15

.field static final blacklist TRANSACTION_getWifiRestrictionList:I = 0xc

.field static final blacklist TRANSACTION_hasOCloudDirtyData:I = 0x19

.field static final blacklist TRANSACTION_iotConnectScanBusy:I = 0x4a

.field static final blacklist TRANSACTION_isInSnifferMode:I = 0x5b

.field static final blacklist TRANSACTION_isP2p5GSupported:I = 0x24

.field static final blacklist TRANSACTION_isPrimaryWifi:I = 0x12

.field static final blacklist TRANSACTION_isSoftap5GSupported:I = 0x25

.field static final blacklist TRANSACTION_isSubwifiManuconnect:I = 0x55

.field static final blacklist TRANSACTION_isSupport5g160MSoftAp:I = 0x4c

.field static final blacklist TRANSACTION_isSupport5g160MStaForPhoneClone:I = 0x4d

.field static final blacklist TRANSACTION_isSupportSnifferCaptureWithUdp:I = 0x5a

.field static final blacklist TRANSACTION_isWifiAutoConnectionDisabled:I = 0xf

.field static final blacklist TRANSACTION_keepSnifferMode:I = 0x5c

.field static final blacklist TRANSACTION_notifyGameHighTemperature:I = 0x2d

.field static final blacklist TRANSACTION_notifyGameInfoJsonStr:I = 0x2e

.field static final blacklist TRANSACTION_notifyGameLatency:I = 0x2c

.field static final blacklist TRANSACTION_notifyGameModeState:I = 0x2b

.field static final blacklist TRANSACTION_notifyMeetingWorkingState:I = 0x2f

.field static final blacklist TRANSACTION_notifyVideoStutterToWifi:I = 0x75

.field static final blacklist TRANSACTION_passpointANQPScanResults:I = 0x1e

.field static final blacklist TRANSACTION_releaseDualStaNetwork:I = 0x11

.field static final blacklist TRANSACTION_removeFromRestrictionList:I = 0xd

.field static final blacklist TRANSACTION_removeHeIeFromProbeRequest:I = 0x40

.field static final blacklist TRANSACTION_removeNetworkByGlobalId:I = 0x17

.field static final blacklist TRANSACTION_requestDualStaNetwork:I = 0x10

.field static final blacklist TRANSACTION_resetConnectionMode:I = 0x37

.field static final blacklist TRANSACTION_resumeFWKPeriodicScan:I = 0x49

.field static final blacklist TRANSACTION_saveExternalPeerAddress:I = 0x70

.field static final blacklist TRANSACTION_sendABRchange:I = 0x6d

.field static final blacklist TRANSACTION_sendFTMCommand:I = 0x35

.field static final blacklist TRANSACTION_sendIOTConnectProbeReq:I = 0x46

.field static final blacklist TRANSACTION_sendStartScoreChange:I = 0x6e

.field static final blacklist TRANSACTION_setAllowedHotspotClients:I = 0x27

.field static final blacklist TRANSACTION_setBlockedHotspotClients:I = 0x26

.field static final blacklist TRANSACTION_setCastStatus:I = 0x73

.field static final blacklist TRANSACTION_setDirtyFlag:I = 0x18

.field static final blacklist TRANSACTION_setLogDump:I = 0x58

.field static final blacklist TRANSACTION_setLogOff:I = 0x57

.field static final blacklist TRANSACTION_setLogOn:I = 0x56

.field static final blacklist TRANSACTION_setNfcTriggered:I = 0x6f

.field static final blacklist TRANSACTION_setOshareEnabled:I = 0x71

.field static final blacklist TRANSACTION_setP2pPowerSave:I = 0x41

.field static final blacklist TRANSACTION_setPasspointCertifiedState:I = 0x21

.field static final blacklist TRANSACTION_setPcAutonomousGo:I = 0x72

.field static final blacklist TRANSACTION_setSlaAppState:I = 0x2

.field static final blacklist TRANSACTION_setSnifferParamWithUdp:I = 0x5e

.field static final blacklist TRANSACTION_setToWifiSnifferMode:I = 0x5d

.field static final blacklist TRANSACTION_setWifiAssistantPolicies:I = 0x62

.field static final blacklist TRANSACTION_setWifiAutoConnectionDisabled:I = 0xe

.field static final blacklist TRANSACTION_setWifiEnabledOnlyForTest:I = 0x61

.field static final blacklist TRANSACTION_setWifiRestrictionList:I = 0xb

.field static final blacklist TRANSACTION_setupFTMdaemon:I = 0x39

.field static final blacklist TRANSACTION_startFTMMode:I = 0x33

.field static final blacklist TRANSACTION_startRxSensTest:I = 0x63

.field static final blacklist TRANSACTION_startSnifferCaptureWithUdp:I = 0x5f

.field static final blacklist TRANSACTION_startSnifferMode:I = 0x30

.field static final blacklist TRANSACTION_stopFTMMode:I = 0x34

.field static final blacklist TRANSACTION_stopRxSensTest:I = 0x64

.field static final blacklist TRANSACTION_stopSnifferCaptureWithUdp:I = 0x60

.field static final blacklist TRANSACTION_stopSnifferMode:I = 0x31

.field static final blacklist TRANSACTION_suspendFWKPeriodicScan:I = 0x48

.field static final blacklist TRANSACTION_tryToRestoreWifiSetting:I = 0x59

.field static final blacklist TRANSACTION_updateGlobalId:I = 0x16

.field static final blacklist TRANSACTION_wifiLoadDriver:I = 0x3c


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 536
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 537
    const-string v0, "android.net.wifi.IOplusWifiManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/IOplusWifiManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 538
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IOplusWifiManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 545
    if-nez p0, :cond_0

    .line 546
    const/4 v0, 0x0

    return-object v0

    .line 548
    :cond_0
    const-string v0, "android.net.wifi.IOplusWifiManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 549
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/wifi/IOplusWifiManager;

    if-eqz v1, :cond_1

    .line 550
    move-object v1, v0

    check-cast v1, Landroid/net/wifi/IOplusWifiManager;

    return-object v1

    .line 552
    :cond_1
    new-instance v1, Landroid/net/wifi/IOplusWifiManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/wifi/IOplusWifiManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 556
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

    .line 560
    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    const-string v12, "android.net.wifi.IOplusWifiManager"

    .line 561
    .local v12, "descriptor":Ljava/lang/String;
    const/4 v13, 0x1

    if-lt v9, v13, :cond_0

    const v0, 0xffffff

    if-gt v9, v0, :cond_0

    .line 562
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 564
    :cond_0
    packed-switch v9, :pswitch_data_0

    .line 572
    packed-switch v9, :pswitch_data_1

    .line 1684
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 568
    :pswitch_0
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 569
    return v13

    .line 1674
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1676
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1677
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1678
    invoke-virtual {v8, v0, v1}, Landroid/net/wifi/IOplusWifiManager$Stub;->notifyVideoStutterToWifi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1679
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1680
    goto/16 :goto_0

    .line 1667
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IOplusWifiManager$Stub;->doRecoveryFromSettingsForSsv()V

    .line 1668
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1669
    goto/16 :goto_0

    .line 1653
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1655
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1657
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1659
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1660
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1661
    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/net/wifi/IOplusWifiManager$Stub;->setCastStatus(IIILjava/lang/String;)V

    .line 1662
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1663
    goto/16 :goto_0

    .line 1639
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1641
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1643
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1644
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1645
    invoke-virtual {v8, v0, v1, v2}, Landroid/net/wifi/IOplusWifiManager$Stub;->setPcAutonomousGo(ZILjava/lang/String;)Z

    move-result v3

    .line 1646
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1647
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1648
    goto/16 :goto_0

    .line 1624
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1626
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1628
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1630
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1631
    .local v3, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1632
    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/net/wifi/IOplusWifiManager$Stub;->setOshareEnabled(ZIZZ)V

    .line 1633
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1634
    goto/16 :goto_0

    .line 1615
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Z
    .end local v3    # "_arg3":Z
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1616
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1617
    invoke-virtual {v8, v0}, Landroid/net/wifi/IOplusWifiManager$Stub;->saveExternalPeerAddress(Ljava/lang/String;)V

    .line 1618
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1619
    goto/16 :goto_0

    .line 1605
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1606
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1607
    invoke-virtual {v8, v0}, Landroid/net/wifi/IOplusWifiManager$Stub;->setNfcTriggered(Z)Z

    move-result v1

    .line 1608
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1609
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1610
    goto/16 :goto_0

    .line 1592
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1594
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1596
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1597
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1598
    invoke-virtual {v8, v0, v1, v2}, Landroid/net/wifi/IOplusWifiManager$Stub;->sendStartScoreChange(Ljava/lang/String;II)V

    .line 1599
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1600
    goto/16 :goto_0

    .line 1579
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1581
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1583
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1584
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1585
    invoke-virtual {v8, v0, v1, v2}, Landroid/net/wifi/IOplusWifiManager$Stub;->sendABRchange(Ljava/lang/String;II)V

    .line 1586
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1587
    goto/16 :goto_0

    .line 1567
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1569
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1570
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1571
    invoke-virtual {v8, v0, v1}, Landroid/net/wifi/IOplusWifiManager$Stub;->getL2Param(Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v2

    .line 1572
    .local v2, "_result":Ljava/util/Map;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1573
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 1574
    goto/16 :goto_0

    .line 1558
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Ljava/util/Map;
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1559
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1560
    invoke-virtual {v8, v0}, Landroid/net/wifi/IOplusWifiManager$Stub;->disableQoEMonitor(Ljava/lang/String;)V

    .line 1561
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1562
    goto/16 :goto_0

    .line 1549
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1550
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1551
    invoke-virtual {v8, v0}, Landroid/net/wifi/IOplusWifiManager$Stub;->enableQoEMonitor(Ljava/lang/String;)V

    .line 1552
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1553
    goto/16 :goto_0

    .line 1539
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1540
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1541
    invoke-virtual {v8, v0}, Landroid/net/wifi/IOplusWifiManager$Stub;->getORouterBoostSate(Ljava/lang/String;)I

    move-result v1

    .line 1542
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1543
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1544
    goto/16 :goto_0

    .line 1529
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1530
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1531
    invoke-virtual {v8, v0}, Landroid/net/wifi/IOplusWifiManager$Stub;->getULLState(Ljava/lang/String;)I

    move-result v1

    .line 1532
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1533
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1534
    goto/16 :goto_0

    .line 1519
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1520
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1521
    invoke-virtual {v8, v0}, Landroid/net/wifi/IOplusWifiManager$Stub;->getDualStaEnableState(Ljava/lang/String;)I

    move-result v1

    .line 1522
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1523
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1524
    goto/16 :goto_0

    .line 1505
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1507
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1509
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1510
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1511
    invoke-virtual {v8, v0, v1, v2}, Landroid/net/wifi/IOplusWifiManager$Stub;->attRequestAuthenticationBeforeTurnOnHotspot(IZI)Z

    move-result v3

    .line 1512
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1513
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1514
    goto/16 :goto_0

    .line 1495
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1496
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1497
    invoke-virtual {v8, v0}, Landroid/net/wifi/IOplusWifiManager$Stub;->getNetStateInfo(I)Ljava/lang/String;

    move-result-object v1

    .line 1498
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1499
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1500
    goto/16 :goto_0

    .line 1488
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_12
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IOplusWifiManager$Stub;->stopRxSensTest()V

    .line 1489
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1490
    goto/16 :goto_0

    .line 1477
    :pswitch_13
    sget-object v0, Landroid/net/wifi/ExtendsWifiConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ExtendsWifiConfig;

    .line 1479
    .local v0, "_arg0":Landroid/net/wifi/ExtendsWifiConfig;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1480
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1481
    invoke-virtual {v8, v0, v1}, Landroid/net/wifi/IOplusWifiManager$Stub;->startRxSensTest(Landroid/net/wifi/ExtendsWifiConfig;Ljava/lang/String;)Z

    move-result v2

    .line 1482
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1483
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1484
    goto/16 :goto_0

    .line 1467
    .end local v0    # "_arg0":Landroid/net/wifi/ExtendsWifiConfig;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1468
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1469
    invoke-virtual {v8, v0}, Landroid/net/wifi/IOplusWifiManager$Stub;->setWifiAssistantPolicies(I)Z

    move-result v1

    .line 1470
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1471
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1472
    goto/16 :goto_0

    .line 1457
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1458
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1459
    invoke-virtual {v8, v0}, Landroid/net/wifi/IOplusWifiManager$Stub;->setWifiEnabledOnlyForTest(Z)Z

    move-result v1

    .line 1460
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1461
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1462
    goto/16 :goto_0

    .line 1449
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    :pswitch_16
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IOplusWifiManager$Stub;->stopSnifferCaptureWithUdp()I

    move-result v0

    .line 1450
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1451
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1452
    goto/16 :goto_0

    .line 1440
    .end local v0    # "_result":I
    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1441
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1442
    invoke-virtual {v8, v0}, Landroid/net/wifi/IOplusWifiManager$Stub;->startSnifferCaptureWithUdp(I)I

    move-result v1

    .line 1443
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1444
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1445
    goto/16 :goto_0

    .line 1420
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1422
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 1424
    .local v14, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v15

    .line 1426
    .local v15, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    .line 1428
    .local v16, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    .line 1430
    .local v17, "_arg4":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 1431
    .local v18, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1432
    move-object/from16 v0, p0

    move v1, v7

    move v2, v14

    move v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/net/wifi/IOplusWifiManager$Stub;->setSnifferParamWithUdp(IIZZZI)I

    move-result v0

    .line 1433
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1434
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1435
    goto/16 :goto_0

    .line 1408
    .end local v0    # "_result":I
    .end local v7    # "_arg0":I
    .end local v14    # "_arg1":I
    .end local v15    # "_arg2":Z
    .end local v16    # "_arg3":Z
    .end local v17    # "_arg4":Z
    .end local v18    # "_arg5":I
    :pswitch_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1410
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1411
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1412
    invoke-virtual {v8, v0, v1}, Landroid/net/wifi/IOplusWifiManager$Stub;->setToWifiSnifferMode(ZZ)I

    move-result v2

    .line 1413
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1414
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1415
    goto/16 :goto_0

    .line 1398
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":I
    :pswitch_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1399
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1400
    invoke-virtual {v8, v0}, Landroid/net/wifi/IOplusWifiManager$Stub;->keepSnifferMode(I)I

    move-result v1

    .line 1401
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1402
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1403
    goto/16 :goto_0

    .line 1390
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_1b
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IOplusWifiManager$Stub;->isInSnifferMode()Z

    move-result v0

    .line 1391
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1392
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1393
    goto/16 :goto_0

    .line 1383
    .end local v0    # "_result":Z
    :pswitch_1c
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IOplusWifiManager$Stub;->isSupportSnifferCaptureWithUdp()Z

    move-result v0

    .line 1384
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1385
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1386
    goto/16 :goto_0

    .line 1376
    .end local v0    # "_result":Z
    :pswitch_1d
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IOplusWifiManager$Stub;->tryToRestoreWifiSetting()I

    move-result v0

    .line 1377
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1378
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1379
    goto/16 :goto_0

    .line 1370
    .end local v0    # "_result":I
    :pswitch_1e
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IOplusWifiManager$Stub;->setLogDump()V

    .line 1371
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1372
    goto/16 :goto_0

    .line 1364
    :pswitch_1f
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IOplusWifiManager$Stub;->setLogOff()V

    .line 1365
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1366
    goto/16 :goto_0

    .line 1354
    :pswitch_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 1356
    .local v0, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1357
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1358
    invoke-virtual {v8, v0, v1, v2}, Landroid/net/wifi/IOplusWifiManager$Stub;->setLogOn(JLjava/lang/String;)V

    .line 1359
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1360
    goto/16 :goto_0

    .line 1346
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_21
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IOplusWifiManager$Stub;->isSubwifiManuconnect()Z

    move-result v0

    .line 1347
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1348
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1349
    goto/16 :goto_0

    .line 1339
    .end local v0    # "_result":Z
    :pswitch_22
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IOplusWifiManager$Stub;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v0

    .line 1340
    .local v0, "_result":Landroid/net/Network;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1341
    invoke-virtual {v11, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1342
    goto/16 :goto_0

    .line 1330
    .end local v0    # "_result":Landroid/net/Network;
    :pswitch_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1331
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1332
    invoke-virtual {v8, v0}, Landroid/net/wifi/IOplusWifiManager$Stub;->getCurNetworkState(Ljava/lang/String;)I

    move-result v1

    .line 1333
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1334
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1335
    goto/16 :goto_0

    .line 1320
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1321
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1322
    invoke-virtual {v8, v0}, Landroid/net/wifi/IOplusWifiManager$Stub;->getCandiateNetwork(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1323
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1324
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1325
    goto/16 :goto_0

    .line 1299
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :pswitch_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 1301
    .local v14, "_arg0":I
    sget-object v0, Landroid/net/wifi/ExtendsWifiConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/net/wifi/ExtendsWifiConfig;

    .line 1303
    .local v15, "_arg1":Landroid/net/wifi/ExtendsWifiConfig;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 1305
    .local v16, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1307
    .local v17, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v18

    .line 1309
    .local v18, "_arg4":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v19

    .line 1311
    .local v19, "_arg5":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 1312
    .local v20, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1313
    move-object/from16 v0, p0

    move v1, v14

    move-object v2, v15

    move-object/from16 v3, v16

    move/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/net/wifi/IOplusWifiManager$Stub;->connect(ILandroid/net/wifi/ExtendsWifiConfig;Ljava/lang/String;ILandroid/os/IBinder;Landroid/os/IBinder;I)V

    .line 1314
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1315
    goto/16 :goto_0

    .line 1289
    .end local v14    # "_arg0":I
    .end local v15    # "_arg1":Landroid/net/wifi/ExtendsWifiConfig;
    .end local v16    # "_arg2":Ljava/lang/String;
    .end local v17    # "_arg3":I
    .end local v18    # "_arg4":Landroid/os/IBinder;
    .end local v19    # "_arg5":Landroid/os/IBinder;
    .end local v20    # "_arg6":I
    :pswitch_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1290
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1291
    invoke-virtual {v8, v0}, Landroid/net/wifi/IOplusWifiManager$Stub;->getAllScanStatisticsList(I)Ljava/util/List;

    move-result-object v1

    .line 1292
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/OplusScanStatistics;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1293
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1294
    goto/16 :goto_0

    .line 1277
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/OplusScanStatistics;>;"
    :pswitch_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1279
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1280
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1281
    invoke-virtual {v8, v0, v1}, Landroid/net/wifi/IOplusWifiManager$Stub;->getScanStatisticsList(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    .line 1282
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/OplusScanStatistics;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1283
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1284
    goto/16 :goto_0

    .line 1265
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/OplusScanStatistics;>;"
    :pswitch_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1267
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1268
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1269
    invoke-virtual {v8, v0, v1}, Landroid/net/wifi/IOplusWifiManager$Stub;->enable5g160MSoftAp(ZI)I

    move-result v2

    .line 1270
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1271
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1272
    goto/16 :goto_0

    .line 1257
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_29
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IOplusWifiManager$Stub;->isSupport5g160MStaForPhoneClone()Z

    move-result v0

    .line 1258
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1259
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1260
    goto/16 :goto_0

    .line 1250
    .end local v0    # "_result":Z
    :pswitch_2a
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IOplusWifiManager$Stub;->isSupport5g160MSoftAp()Z

    move-result v0

    .line 1251
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1252
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1253
    goto/16 :goto_0

    .line 1243
    .end local v0    # "_result":Z
    :pswitch_2b
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IOplusWifiManager$Stub;->checkFWKSupplicantScanBusy()Z

    move-result v0

    .line 1244
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1245
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1246
    goto/16 :goto_0

    .line 1236
    .end local v0    # "_result":Z
    :pswitch_2c
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IOplusWifiManager$Stub;->iotConnectScanBusy()Z

    move-result v0

    .line 1237
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1238
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1239
    goto/16 :goto_0

    .line 1230
    .end local v0    # "_result":Z
    :pswitch_2d
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IOplusWifiManager$Stub;->resumeFWKPeriodicScan()V

    .line 1231
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1232
    goto/16 :goto_0

    .line 1221
    :pswitch_2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1222
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1223
    invoke-virtual {v8, v0}, Landroid/net/wifi/IOplusWifiManager$Stub;->suspendFWKPeriodicScan(I)Z

    move-result v1

    .line 1224
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1225
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1226
    goto/16 :goto_0

    .line 1213
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_2f
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IOplusWifiManager$Stub;->getIOTConnectScanResults()Ljava/util/List;

    move-result-object v0

    .line 1214
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1215
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1216
    goto/16 :goto_0

    .line 1200
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :pswitch_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1202
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 1204
    .local v1, "_arg1":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1205
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1206
    invoke-virtual {v8, v0, v1, v2}, Landroid/net/wifi/IOplusWifiManager$Stub;->sendIOTConnectProbeReq(Ljava/lang/String;[ILjava/lang/String;)Z

    move-result v3

    .line 1207
    .restart local v3    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1208
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1209
    goto/16 :goto_0

    .line 1192
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":[I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_31
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IOplusWifiManager$Stub;->getAvoidChannels()[I

    move-result-object v0

    .line 1193
    .local v0, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1194
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1195
    goto/16 :goto_0

    .line 1183
    .end local v0    # "_result":[I
    :pswitch_32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1184
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1185
    invoke-virtual {v8, v0}, Landroid/net/wifi/IOplusWifiManager$Stub;->getSupportedChannels(I)[I

    move-result-object v1

    .line 1186
    .local v1, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1187
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1188
    goto/16 :goto_0

    .line 1173
    .end local v0    # "_arg0":I
    .end local v1    # "_result":[I
    :pswitch_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1174
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1175
    invoke-virtual {v8, v0}, Landroid/net/wifi/IOplusWifiManager$Stub;->getPHYCapacity(I)I

    move-result v1

    .line 1176
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1177
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1178
    goto/16 :goto_0

    .line 1165
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_34
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IOplusWifiManager$Stub;->getDBSCapacity()I

    move-result v0

    .line 1166
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1167
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1168
    goto/16 :goto_0

    .line 1157
    .end local v0    # "_result":I
    :pswitch_35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1158
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1159
    invoke-virtual {v8, v0}, Landroid/net/wifi/IOplusWifiManager$Stub;->setP2pPowerSave(Z)V

    .line 1160
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1161
    goto/16 :goto_0

    .line 1148
    .end local v0    # "_arg0":Z
    :pswitch_36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1149
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1150
    invoke-virtual {v8, v0}, Landroid/net/wifi/IOplusWifiManager$Stub;->removeHeIeFromProbeRequest(Z)V

    .line 1151
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1152
    goto/16 :goto_0

    .line 1140
    .end local v0    # "_arg0":Z
    :pswitch_37
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IOplusWifiManager$Stub;->agingTestForWifi()Z

    move-result v0

    .line 1141
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1142
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1143
    goto/16 :goto_0

    .line 1133
    .end local v0    # "_result":Z
    :pswitch_38
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IOplusWifiManager$Stub;->getFwStatus()Ljava/lang/String;

    move-result-object v0

    .line 1134
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1135
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1136
    goto/16 :goto_0

    .line 1126
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_39
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IOplusWifiManager$Stub;->checkWiFiDriverStatus()Z

    move-result v0

    .line 1127
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1128
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1129
    goto/16 :goto_0

    .line 1117
    .end local v0    # "_result":Z
    :pswitch_3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1118
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1119
    invoke-virtual {v8, v0}, Landroid/net/wifi/IOplusWifiManager$Stub;->wifiLoadDriver(Z)Z

    move-result v1

    .line 1120
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1121
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1122
    goto/16 :goto_0

    .line 1107
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    :pswitch_3b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1108
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1109
    invoke-virtual {v8, v0}, Landroid/net/wifi/IOplusWifiManager$Stub;->executeDriverCommandWithResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1110
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1111
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1112
    goto/16 :goto_0

    .line 1097
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_3c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1098
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1099
    invoke-virtual {v8, v0}, Landroid/net/wifi/IOplusWifiManager$Stub;->executeDriverCommand(Ljava/lang/String;)Z

    move-result v1

    .line 1100
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1101
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1102
    goto/16 :goto_0

    .line 1089
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_3d
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IOplusWifiManager$Stub;->setupFTMdaemon()Z

    move-result v0

    .line 1090
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1091
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1092
    goto/16 :goto_0

    .line 1080
    .end local v0    # "_result":Z
    :pswitch_3e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1081
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1082
    invoke-virtual {v8, v0}, Landroid/net/wifi/IOplusWifiManager$Stub;->changeConnectionMode(I)Z

    move-result v1

    .line 1083
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1084
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1085
    goto/16 :goto_0

    .line 1072
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_3f
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IOplusWifiManager$Stub;->resetConnectionMode()Z

    move-result v0

    .line 1073
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1074
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1075
    goto/16 :goto_0

    .line 1065
    .end local v0    # "_result":Z
    :pswitch_40
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IOplusWifiManager$Stub;->getFTMState()I

    move-result v0

    .line 1066
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1067
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1068
    goto/16 :goto_0

    .line 1056
    .end local v0    # "_result":I
    :pswitch_41
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1057
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1058
    invoke-virtual {v8, v0}, Landroid/net/wifi/IOplusWifiManager$Stub;->sendFTMCommand(Ljava/lang/String;)I

    move-result v1

    .line 1059
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1060
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1061
    goto/16 :goto_0

    .line 1048
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_42
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IOplusWifiManager$Stub;->stopFTMMode()I

    move-result v0

    .line 1049
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1050
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1051
    goto/16 :goto_0

    .line 1041
    .end local v0    # "_result":I
    :pswitch_43
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IOplusWifiManager$Stub;->startFTMMode()I

    move-result v0

    .line 1042
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1043
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1044
    goto/16 :goto_0

    .line 1034
    .end local v0    # "_result":I
    :pswitch_44
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IOplusWifiManager$Stub;->getSnifferState()I

    move-result v0

    .line 1035
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1036
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1037
    goto/16 :goto_0

    .line 1027
    .end local v0    # "_result":I
    :pswitch_45
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IOplusWifiManager$Stub;->stopSnifferMode()I

    move-result v0

    .line 1028
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1029
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1030
    goto/16 :goto_0

    .line 1012
    .end local v0    # "_result":I
    :pswitch_46
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1014
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1016
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1018
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1019
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1020
    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/net/wifi/IOplusWifiManager$Stub;->startSnifferMode(IIII)I

    move-result v4

    .line 1021
    .local v4, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1022
    invoke-virtual {v11, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1023
    goto/16 :goto_0

    .line 1001
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    .end local v4    # "_result":I
    :pswitch_47
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1003
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1004
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1005
    invoke-virtual {v8, v0, v1}, Landroid/net/wifi/IOplusWifiManager$Stub;->notifyMeetingWorkingState(ZLjava/lang/String;)V

    .line 1006
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1007
    goto/16 :goto_0

    .line 992
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_48
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 993
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 994
    invoke-virtual {v8, v0}, Landroid/net/wifi/IOplusWifiManager$Stub;->notifyGameInfoJsonStr(Ljava/lang/String;)V

    .line 995
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 996
    goto/16 :goto_0

    .line 981
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 983
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 984
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 985
    invoke-virtual {v8, v0, v1}, Landroid/net/wifi/IOplusWifiManager$Stub;->notifyGameHighTemperature(ILjava/lang/String;)V

    .line 986
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 987
    goto/16 :goto_0

    .line 970
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_4a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 972
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 973
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 974
    invoke-virtual {v8, v0, v1}, Landroid/net/wifi/IOplusWifiManager$Stub;->notifyGameLatency(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 976
    goto/16 :goto_0

    .line 959
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_4b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 961
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 962
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 963
    invoke-virtual {v8, v0, v1}, Landroid/net/wifi/IOplusWifiManager$Stub;->notifyGameModeState(ZLjava/lang/String;)V

    .line 964
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 965
    goto/16 :goto_0

    .line 951
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_4c
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IOplusWifiManager$Stub;->getConnectedHotspotClients()Ljava/util/List;

    move-result-object v0

    .line 952
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Loplus/net/wifi/HotspotClient;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 953
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 954
    goto/16 :goto_0

    .line 944
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Loplus/net/wifi/HotspotClient;>;"
    :pswitch_4d
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IOplusWifiManager$Stub;->getAllowedHotspotClients()Ljava/util/List;

    move-result-object v0

    .line 945
    .restart local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Loplus/net/wifi/HotspotClient;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 946
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 947
    goto/16 :goto_0

    .line 937
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Loplus/net/wifi/HotspotClient;>;"
    :pswitch_4e
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IOplusWifiManager$Stub;->getBlockedHotspotClients()Ljava/util/List;

    move-result-object v0

    .line 938
    .restart local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Loplus/net/wifi/HotspotClient;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 939
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 940
    goto/16 :goto_0

    .line 929
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Loplus/net/wifi/HotspotClient;>;"
    :pswitch_4f
    sget-object v0, Loplus/net/wifi/HotspotClient;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 930
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Loplus/net/wifi/HotspotClient;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 931
    invoke-virtual {v8, v0}, Landroid/net/wifi/IOplusWifiManager$Stub;->setAllowedHotspotClients(Ljava/util/List;)V

    .line 932
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 933
    goto/16 :goto_0

    .line 920
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Loplus/net/wifi/HotspotClient;>;"
    :pswitch_50
    sget-object v0, Loplus/net/wifi/HotspotClient;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 921
    .restart local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Loplus/net/wifi/HotspotClient;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 922
    invoke-virtual {v8, v0}, Landroid/net/wifi/IOplusWifiManager$Stub;->setBlockedHotspotClients(Ljava/util/List;)V

    .line 923
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 924
    goto/16 :goto_0

    .line 912
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Loplus/net/wifi/HotspotClient;>;"
    :pswitch_51
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IOplusWifiManager$Stub;->isSoftap5GSupported()Z

    move-result v0

    .line 913
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 914
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 915
    goto/16 :goto_0

    .line 905
    .end local v0    # "_result":Z
    :pswitch_52
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IOplusWifiManager$Stub;->isP2p5GSupported()Z

    move-result v0

    .line 906
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 907
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 908
    goto/16 :goto_0

    .line 896
    .end local v0    # "_result":Z
    :pswitch_53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 897
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 898
    invoke-virtual {v8, v0}, Landroid/net/wifi/IOplusWifiManager$Stub;->getPasspointCertifiedState(Ljava/lang/String;)Z

    move-result v1

    .line 899
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 900
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 901
    goto/16 :goto_0

    .line 886
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 887
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 888
    invoke-virtual {v8, v0}, Landroid/net/wifi/IOplusWifiManager$Stub;->getPasspointUserName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 889
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 890
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 891
    goto/16 :goto_0

    .line 876
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 877
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 878
    invoke-virtual {v8, v0}, Landroid/net/wifi/IOplusWifiManager$Stub;->setPasspointCertifiedState(Ljava/lang/String;)Z

    move-result v1

    .line 879
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 880
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 881
    goto/16 :goto_0

    .line 868
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_56
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IOplusWifiManager$Stub;->checkFWKSupportPasspoint()Z

    move-result v0

    .line 869
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 870
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 871
    goto/16 :goto_0

    .line 859
    .end local v0    # "_result":Z
    :pswitch_57
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 860
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 861
    invoke-virtual {v8, v0}, Landroid/net/wifi/IOplusWifiManager$Stub;->checkInternalPasspointPresetProvider(Ljava/lang/String;)Z

    move-result v1

    .line 862
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 863
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 864
    goto/16 :goto_0

    .line 849
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_58
    sget-object v0, Landroid/net/wifi/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 850
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 851
    invoke-virtual {v8, v0}, Landroid/net/wifi/IOplusWifiManager$Stub;->passpointANQPScanResults(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 852
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 853
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 854
    goto/16 :goto_0

    .line 839
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :pswitch_59
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 840
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 841
    invoke-virtual {v8, v0}, Landroid/net/wifi/IOplusWifiManager$Stub;->checkPasspointXMLCAExpired(Ljava/lang/String;)Z

    move-result v1

    .line 842
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 843
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 844
    goto/16 :goto_0

    .line 829
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_5a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 830
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 831
    invoke-virtual {v8, v0}, Landroid/net/wifi/IOplusWifiManager$Stub;->checkPasspointCAExist(Ljava/lang/String;)Z

    move-result v1

    .line 832
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 833
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 834
    goto/16 :goto_0

    .line 818
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_5b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 820
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 821
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 822
    invoke-virtual {v8, v0, v1}, Landroid/net/wifi/IOplusWifiManager$Stub;->dealWithCloudRecoveryData(Ljava/util/List;Ljava/lang/String;)V

    .line 823
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 824
    goto/16 :goto_0

    .line 807
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_5c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 809
    .restart local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 810
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 811
    invoke-virtual {v8, v0, v1}, Landroid/net/wifi/IOplusWifiManager$Stub;->dealWithCloudBackupResult(Ljava/util/List;Ljava/lang/String;)V

    .line 812
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 813
    goto/16 :goto_0

    .line 799
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_5d
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IOplusWifiManager$Stub;->hasOCloudDirtyData()Z

    move-result v0

    .line 800
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 801
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 802
    goto/16 :goto_0

    .line 789
    .end local v0    # "_result":Z
    :pswitch_5e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 791
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 792
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 793
    invoke-virtual {v8, v0, v1}, Landroid/net/wifi/IOplusWifiManager$Stub;->setDirtyFlag(Ljava/lang/String;Z)V

    .line 794
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 795
    goto/16 :goto_0

    .line 776
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    :pswitch_5f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 778
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 780
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 781
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 782
    invoke-virtual {v8, v0, v1, v2}, Landroid/net/wifi/IOplusWifiManager$Stub;->removeNetworkByGlobalId(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 783
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 784
    goto/16 :goto_0

    .line 765
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Z
    :pswitch_60
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 767
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 768
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 769
    invoke-virtual {v8, v0, v1}, Landroid/net/wifi/IOplusWifiManager$Stub;->updateGlobalId(ILjava/lang/String;)V

    .line 770
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 771
    goto/16 :goto_0

    .line 755
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_61
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 756
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 757
    invoke-virtual {v8, v0}, Landroid/net/wifi/IOplusWifiManager$Stub;->getWifiOCloudData(Z)Ljava/util/List;

    move-result-object v1

    .line 758
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 759
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 760
    goto/16 :goto_0

    .line 746
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_62
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 747
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 748
    invoke-virtual {v8, v0}, Landroid/net/wifi/IOplusWifiManager$Stub;->clearWifiOCloudData(Z)V

    .line 749
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 750
    goto/16 :goto_0

    .line 738
    .end local v0    # "_arg0":Z
    :pswitch_63
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IOplusWifiManager$Stub;->getSecondaryWifiNetwork()Landroid/net/Network;

    move-result-object v0

    .line 739
    .local v0, "_result":Landroid/net/Network;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 740
    invoke-virtual {v11, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 741
    goto/16 :goto_0

    .line 729
    .end local v0    # "_result":Landroid/net/Network;
    :pswitch_64
    sget-object v0, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Network;

    .line 730
    .local v0, "_arg0":Landroid/net/Network;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 731
    invoke-virtual {v8, v0}, Landroid/net/wifi/IOplusWifiManager$Stub;->isPrimaryWifi(Landroid/net/Network;)Z

    move-result v1

    .line 732
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 733
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 734
    goto/16 :goto_0

    .line 720
    .end local v0    # "_arg0":Landroid/net/Network;
    .end local v1    # "_result":Z
    :pswitch_65
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 721
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 722
    invoke-virtual {v8, v0}, Landroid/net/wifi/IOplusWifiManager$Stub;->releaseDualStaNetwork(Ljava/lang/String;)V

    .line 723
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 724
    goto/16 :goto_0

    .line 711
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_66
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 712
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 713
    invoke-virtual {v8, v0}, Landroid/net/wifi/IOplusWifiManager$Stub;->requestDualStaNetwork(Ljava/lang/String;)V

    .line 714
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 715
    goto/16 :goto_0

    .line 703
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_67
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IOplusWifiManager$Stub;->isWifiAutoConnectionDisabled()Z

    move-result v0

    .line 704
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 705
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 706
    goto/16 :goto_0

    .line 694
    .end local v0    # "_result":Z
    :pswitch_68
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 695
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 696
    invoke-virtual {v8, v0}, Landroid/net/wifi/IOplusWifiManager$Stub;->setWifiAutoConnectionDisabled(Z)Z

    move-result v1

    .line 697
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 698
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 699
    goto/16 :goto_0

    .line 680
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    :pswitch_69
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 682
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 684
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 685
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 686
    invoke-virtual {v8, v0, v1, v2}, Landroid/net/wifi/IOplusWifiManager$Stub;->removeFromRestrictionList(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Z

    move-result v3

    .line 687
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 688
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 689
    goto/16 :goto_0

    .line 668
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_6a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 670
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 671
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 672
    invoke-virtual {v8, v0, v1}, Landroid/net/wifi/IOplusWifiManager$Stub;->getWifiRestrictionList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 673
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 674
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 675
    goto/16 :goto_0

    .line 654
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_6b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 656
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 658
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 659
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 660
    invoke-virtual {v8, v0, v1, v2}, Landroid/net/wifi/IOplusWifiManager$Stub;->setWifiRestrictionList(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Z

    move-result v3

    .line 661
    .restart local v3    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 662
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 663
    goto/16 :goto_0

    .line 646
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_6c
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IOplusWifiManager$Stub;->getOplusSta2CurConfigKey()Ljava/lang/String;

    move-result-object v0

    .line 647
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 648
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 649
    goto/16 :goto_0

    .line 639
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_6d
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IOplusWifiManager$Stub;->getOplusSta2ConnectionInfo()Landroid/net/wifi/ExtendsWifiInfo;

    move-result-object v0

    .line 640
    .local v0, "_result":Landroid/net/wifi/ExtendsWifiInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 641
    invoke-virtual {v11, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 642
    goto :goto_0

    .line 632
    .end local v0    # "_result":Landroid/net/wifi/ExtendsWifiInfo;
    :pswitch_6e
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IOplusWifiManager$Stub;->getSlaWorkMode()I

    move-result v0

    .line 633
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 634
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 635
    goto :goto_0

    .line 625
    .end local v0    # "_result":I
    :pswitch_6f
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IOplusWifiManager$Stub;->getAllDualStaApps()[Ljava/lang/String;

    move-result-object v0

    .line 626
    .local v0, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 627
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 628
    goto :goto_0

    .line 618
    .end local v0    # "_result":[Ljava/lang/String;
    :pswitch_70
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IOplusWifiManager$Stub;->getAllSlaAcceleratedApps()[Ljava/lang/String;

    move-result-object v0

    .line 619
    .restart local v0    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 620
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 621
    goto :goto_0

    .line 611
    .end local v0    # "_result":[Ljava/lang/String;
    :pswitch_71
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IOplusWifiManager$Stub;->getAllSlaAppsAndStates()[Ljava/lang/String;

    move-result-object v0

    .line 612
    .restart local v0    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 613
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 614
    goto :goto_0

    .line 605
    .end local v0    # "_result":[Ljava/lang/String;
    :pswitch_72
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IOplusWifiManager$Stub;->disableDualSta()V

    .line 606
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 607
    goto :goto_0

    .line 596
    :pswitch_73
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 597
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 598
    invoke-virtual {v8, v0}, Landroid/net/wifi/IOplusWifiManager$Stub;->getSlaAppState(Ljava/lang/String;)Z

    move-result v1

    .line 599
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 600
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 601
    goto :goto_0

    .line 584
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_74
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 586
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 587
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 588
    invoke-virtual {v8, v0, v1}, Landroid/net/wifi/IOplusWifiManager$Stub;->setSlaAppState(Ljava/lang/String;Z)Z

    move-result v2

    .line 589
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 590
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 591
    goto :goto_0

    .line 576
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Z
    :pswitch_75
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IOplusWifiManager$Stub;->getOplusSupportedFeatures()J

    move-result-wide v0

    .line 577
    .local v0, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 578
    invoke-virtual {v11, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 579
    nop

    .line 1687
    .end local v0    # "_result":J
    :goto_0
    return v13

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
