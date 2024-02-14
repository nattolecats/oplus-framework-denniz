.class public abstract Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;
.super Landroid/os/Binder;
.source "IOplusCustomizeRestrictionManagerService.java"

# interfaces
.implements Landroid/os/customize/IOplusCustomizeRestrictionManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/customize/IOplusCustomizeRestrictionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addAppInstallPackageBlacklist:I = 0x6

.field static final blacklist TRANSACTION_addAppInstallPackageWhitelist:I = 0x7

.field static final blacklist TRANSACTION_addDisallowedClearDataCacheApps:I = 0xaa

.field static final blacklist TRANSACTION_allowWifiCellularNetwork:I = 0x51

.field static final blacklist TRANSACTION_applyQSRestriction:I = 0x2b

.field static final blacklist TRANSACTION_disableQSRestriction:I = 0x2c

.field static final blacklist TRANSACTION_disableWifiSar:I = 0xc3

.field static final blacklist TRANSACTION_getAirplanePolices:I = 0x5d

.field static final blacklist TRANSACTION_getAppInstallPackageList:I = 0x5

.field static final blacklist TRANSACTION_getAppInstallRestrictionPolicies:I = 0x4

.field static final blacklist TRANSACTION_getAppUninstallationPackageList:I = 0x1b

.field static final blacklist TRANSACTION_getAppUninstallationPolicies:I = 0x1c

.field static final blacklist TRANSACTION_getApplicationDisabledInLauncherOrRecentTask:I = 0x5b

.field static final blacklist TRANSACTION_getBluetoothDisabledProfiles:I = 0x46

.field static final blacklist TRANSACTION_getCameraPolicies:I = 0x53

.field static final blacklist TRANSACTION_getClipboardStatus:I = 0x2

.field static final blacklist TRANSACTION_getDefaultDataCard:I = 0x7e

.field static final blacklist TRANSACTION_getDisallowedClearDataCacheApps:I = 0xac

.field static final blacklist TRANSACTION_getFileSharedDisabled:I = 0x32

.field static final blacklist TRANSACTION_getForbidRecordScreenState:I = 0x19

.field static final blacklist TRANSACTION_getGpsPolicies:I = 0x7d

.field static final blacklist TRANSACTION_getLocalBluetoothAddress:I = 0xb7

.field static final blacklist TRANSACTION_getLocalBtRandomAddress:I = 0xb8

.field static final blacklist TRANSACTION_getMobileDataMode:I = 0x4f

.field static final blacklist TRANSACTION_getNfcPolicies:I = 0x4e

.field static final blacklist TRANSACTION_getPasswordExpirationTimeout:I = 0xa5

.field static final blacklist TRANSACTION_getPasswordNumSequenceMaxLength:I = 0x71

.field static final blacklist TRANSACTION_getPasswordRepeatMaxLength:I = 0x6f

.field static final blacklist TRANSACTION_getPowerDisable:I = 0x79

.field static final blacklist TRANSACTION_getQSRestrictionState:I = 0x2e

.field static final blacklist TRANSACTION_getQSRestrictionValue:I = 0x2d

.field static final blacklist TRANSACTION_getRequiredStrongAuthTime:I = 0x17

.field static final blacklist TRANSACTION_getSideBarPolicies:I = 0xa0

.field static final blacklist TRANSACTION_getSlot1DataConnectivityDisabled:I = 0x80

.field static final blacklist TRANSACTION_getSlot2DataConnectivityDisabled:I = 0x81

.field static final blacklist TRANSACTION_getSplitScreenDisable:I = 0x63

.field static final blacklist TRANSACTION_getSystemUpdatePolicies:I = 0x9a

.field static final blacklist TRANSACTION_getTorchPolicies:I = 0x55

.field static final blacklist TRANSACTION_getUnlockByFacePolicies:I = 0x69

.field static final blacklist TRANSACTION_getUnlockByFingerprintPolicies:I = 0x67

.field static final blacklist TRANSACTION_getUserPasswordPolicies:I = 0x65

.field static final blacklist TRANSACTION_getWifiAssistantPolicies:I = 0xbc

.field static final blacklist TRANSACTION_getWifiSarPwrDbm:I = 0xbf

.field static final blacklist TRANSACTION_getWifiSarPwrMw:I = 0xc0

.field static final blacklist TRANSACTION_getWlanAllowListWithoutScanLimit:I = 0xba

.field static final blacklist TRANSACTION_isAdbDisabled:I = 0x94

.field static final blacklist TRANSACTION_isAndroidAnimationDisabled:I = 0xa8

.field static final blacklist TRANSACTION_isAndroidBeamDisabled:I = 0x4c

.field static final blacklist TRANSACTION_isAppInCustomVoipRecordList:I = 0xa3

.field static final blacklist TRANSACTION_isAppLockDisabled:I = 0xae

.field static final blacklist TRANSACTION_isBackButtonDisabled:I = 0x77

.field static final blacklist TRANSACTION_isBiometricDisabled:I = 0xf

.field static final blacklist TRANSACTION_isBluetoothDataTransferDisabled:I = 0x42

.field static final blacklist TRANSACTION_isBluetoothDisabled:I = 0x36

.field static final blacklist TRANSACTION_isBluetoothEnabled:I = 0x38

.field static final blacklist TRANSACTION_isBluetoothOutGoingCallDisabled:I = 0x40

.field static final blacklist TRANSACTION_isBluetoothPairingDisabled:I = 0x3e

.field static final blacklist TRANSACTION_isBluetoothRandomEnabled:I = 0xb6

.field static final blacklist TRANSACTION_isBluetoothTetheringDisabled:I = 0x44

.field static final blacklist TRANSACTION_isChangePictorialDisabled:I = 0xa2

.field static final blacklist TRANSACTION_isChangeWallpaperDisabled:I = 0x57

.field static final blacklist TRANSACTION_isCustomizeDozeModeDisabled:I = 0xb4

.field static final blacklist TRANSACTION_isDataRoamingDisabled:I = 0x2a

.field static final blacklist TRANSACTION_isDataSyncDisabled:I = 0x9c

.field static final blacklist TRANSACTION_isDiscoverableDisabled:I = 0x3a

.field static final blacklist TRANSACTION_isEchoPasswordDisabled:I = 0x89

.field static final blacklist TRANSACTION_isExternalStorageDisabled:I = 0x13

.field static final blacklist TRANSACTION_isFindMyPhoneDisabled:I = 0xb0

.field static final blacklist TRANSACTION_isFloatTaskDisabled:I = 0x5f

.field static final blacklist TRANSACTION_isHomeButtonDisabled:I = 0x75

.field static final blacklist TRANSACTION_isLanguageChangeDisabled:I = 0x83

.field static final blacklist TRANSACTION_isLimitedDiscoverableDisabled:I = 0x3c

.field static final blacklist TRANSACTION_isLongPressLauncherDisabled:I = 0x98

.field static final blacklist TRANSACTION_isLongPressVolumeUpDisabled:I = 0x7b

.field static final blacklist TRANSACTION_isMmsDisabled:I = 0x8b

.field static final blacklist TRANSACTION_isMmsSendReceiveDisabled:I = 0x8e

.field static final blacklist TRANSACTION_isMultiAppSupport:I = 0x60

.field static final blacklist TRANSACTION_isNFCDisabled:I = 0x48

.field static final blacklist TRANSACTION_isNFCTurnOn:I = 0x4a

.field static final blacklist TRANSACTION_isNavigationBarDisabled:I = 0x96

.field static final blacklist TRANSACTION_isNavigationModeRevertible:I = 0x34

.field static final blacklist TRANSACTION_isPowerSavingModeDisabled:I = 0x26

.field static final blacklist TRANSACTION_isPrivateSafeDisabled:I = 0xb1

.field static final blacklist TRANSACTION_isSafeModeDisabled:I = 0x11

.field static final blacklist TRANSACTION_isSettingsApplicationDisabled:I = 0x59

.field static final blacklist TRANSACTION_isSleepByPowerButtonDisabled:I = 0x30

.field static final blacklist TRANSACTION_isSleepStandbyOptimizationDisabled:I = 0x90

.field static final blacklist TRANSACTION_isSmsReceiveDisabled:I = 0x8c

.field static final blacklist TRANSACTION_isSmsSendDisabled:I = 0x8d

.field static final blacklist TRANSACTION_isSuperPowerSavingModeDisabled:I = 0x28

.field static final blacklist TRANSACTION_isSwipeUpUnlockDisabled:I = 0xa7

.field static final blacklist TRANSACTION_isTaskButtonDisabled:I = 0x73

.field static final blacklist TRANSACTION_isUSBDataDisabled:I = 0x9

.field static final blacklist TRANSACTION_isUSBFileTransferDisabled:I = 0xb

.field static final blacklist TRANSACTION_isUSBOtgDisabled:I = 0xd

.field static final blacklist TRANSACTION_isUnknownSourceAppInstallDisabled:I = 0x9e

.field static final blacklist TRANSACTION_isUnlockByFaceDisabled:I = 0x6d

.field static final blacklist TRANSACTION_isUnlockByFingerprintDisabled:I = 0x6b

.field static final blacklist TRANSACTION_isUsbDebugSwitchDisabled:I = 0x92

.field static final blacklist TRANSACTION_isUsbTetheringDisabled:I = 0x15

.field static final blacklist TRANSACTION_isVoiceDisabled:I = 0x21

.field static final blacklist TRANSACTION_isVoiceIncomingDisabled:I = 0x23

.field static final blacklist TRANSACTION_isVoiceOutgoingDisabled:I = 0x24

.field static final blacklist TRANSACTION_isWifiDisabled:I = 0x86

.field static final blacklist TRANSACTION_isWifiOpen:I = 0x84

.field static final blacklist TRANSACTION_isWifiRandomMacForceDisable:I = 0xbe

.field static final blacklist TRANSACTION_openCloseNFC:I = 0x49

.field static final blacklist TRANSACTION_removeDisallowedClearDataCacheApps:I = 0xab

.field static final blacklist TRANSACTION_setAdbDisabled:I = 0x93

.field static final blacklist TRANSACTION_setAirplanePolices:I = 0x5c

.field static final blacklist TRANSACTION_setAndroidAnimationDisabled:I = 0xa9

.field static final blacklist TRANSACTION_setAndroidBeamDisabled:I = 0x4b

.field static final blacklist TRANSACTION_setAppInstallRestrictionPolicies:I = 0x3

.field static final blacklist TRANSACTION_setAppLockDisabled:I = 0xad

.field static final blacklist TRANSACTION_setAppUninstallationPolicies:I = 0x1a

.field static final blacklist TRANSACTION_setApplicationDisabledInLauncherOrRecentTask:I = 0x5a

.field static final blacklist TRANSACTION_setBackButtonDisabled:I = 0x76

.field static final blacklist TRANSACTION_setBiometricDisabled:I = 0xe

.field static final blacklist TRANSACTION_setBluetoothDataTransferDisable:I = 0x41

.field static final blacklist TRANSACTION_setBluetoothDisabled:I = 0x35

.field static final blacklist TRANSACTION_setBluetoothDisabledProfiles:I = 0x45

.field static final blacklist TRANSACTION_setBluetoothEnabled:I = 0x37

.field static final blacklist TRANSACTION_setBluetoothOutGoingCallDisable:I = 0x3f

.field static final blacklist TRANSACTION_setBluetoothPairingDisable:I = 0x3d

.field static final blacklist TRANSACTION_setBluetoothRandomEnabled:I = 0xb5

.field static final blacklist TRANSACTION_setBluetoothTetheringDisable:I = 0x43

.field static final blacklist TRANSACTION_setCameraPolicies:I = 0x52

.field static final blacklist TRANSACTION_setChangePictorialDisable:I = 0xa1

.field static final blacklist TRANSACTION_setChangeWallpaperDisable:I = 0x56

.field static final blacklist TRANSACTION_setClipboardEnabled:I = 0x1

.field static final blacklist TRANSACTION_setCustomizeDozeModeDisabled:I = 0xb3

.field static final blacklist TRANSACTION_setDataRoamingDisabled:I = 0x29

.field static final blacklist TRANSACTION_setDataSyncDisabled:I = 0x9b

.field static final blacklist TRANSACTION_setDefaultDataCard:I = 0x7f

.field static final blacklist TRANSACTION_setDiscoverableDisabled:I = 0x39

.field static final blacklist TRANSACTION_setEchoPasswordDisabled:I = 0x88

.field static final blacklist TRANSACTION_setExternalStorageDisabled:I = 0x12

.field static final blacklist TRANSACTION_setFileSharedDisabled:I = 0x31

.field static final blacklist TRANSACTION_setFindMyPhoneDisabled:I = 0xaf

.field static final blacklist TRANSACTION_setFloatTaskDisabled:I = 0x5e

.field static final blacklist TRANSACTION_setGpsPolicies:I = 0x7c

.field static final blacklist TRANSACTION_setHomeButtonDisabled:I = 0x74

.field static final blacklist TRANSACTION_setLanguageChangeDisabled:I = 0x82

.field static final blacklist TRANSACTION_setLimitedDiscoverableDisable:I = 0x3b

.field static final blacklist TRANSACTION_setLongPressLauncherDisabled:I = 0x97

.field static final blacklist TRANSACTION_setLongPressVolumeUpDisabled:I = 0x7a

.field static final blacklist TRANSACTION_setMmsDisabled:I = 0x8a

.field static final blacklist TRANSACTION_setMobileDataMode:I = 0x50

.field static final blacklist TRANSACTION_setMultiAppSupport:I = 0x61

.field static final blacklist TRANSACTION_setNFCDisabled:I = 0x47

.field static final blacklist TRANSACTION_setNavigationBarDisabled:I = 0x95

.field static final blacklist TRANSACTION_setNavigationMode:I = 0x33

.field static final blacklist TRANSACTION_setNfcPolicies:I = 0x4d

.field static final blacklist TRANSACTION_setPasswordExpirationTimeout:I = 0xa4

.field static final blacklist TRANSACTION_setPasswordNumSequenceMaxLength:I = 0x70

.field static final blacklist TRANSACTION_setPasswordRepeatMaxLength:I = 0x6e

.field static final blacklist TRANSACTION_setPowerDisable:I = 0x78

.field static final blacklist TRANSACTION_setPowerSavingModeDisabled:I = 0x25

.field static final blacklist TRANSACTION_setPrivateSafeDisabled:I = 0xb2

.field static final blacklist TRANSACTION_setRequiredStrongAuthTime:I = 0x16

.field static final blacklist TRANSACTION_setSafeModeDisabled:I = 0x10

.field static final blacklist TRANSACTION_setScreenCaptureDisabled:I = 0x18

.field static final blacklist TRANSACTION_setSettingsApplicationDisabled:I = 0x58

.field static final blacklist TRANSACTION_setSideBarPolicies:I = 0x9f

.field static final blacklist TRANSACTION_setSleepByPowerButtonDisabled:I = 0x2f

.field static final blacklist TRANSACTION_setSleepStandbyOptimizationDisabled:I = 0x8f

.field static final blacklist TRANSACTION_setSlot1DataConnectivityDisabled:I = 0x1d

.field static final blacklist TRANSACTION_setSlot2DataConnectivityDisabled:I = 0x1e

.field static final blacklist TRANSACTION_setSplitScreenDisable:I = 0x62

.field static final blacklist TRANSACTION_setSuperPowerSavingModeDisabled:I = 0x27

.field static final blacklist TRANSACTION_setSwipeUpUnlockDisabled:I = 0xa6

.field static final blacklist TRANSACTION_setSystemUpdatePolicies:I = 0x99

.field static final blacklist TRANSACTION_setTaskButtonDisabled:I = 0x72

.field static final blacklist TRANSACTION_setTorchPolicies:I = 0x54

.field static final blacklist TRANSACTION_setUSBDataDisabled:I = 0x8

.field static final blacklist TRANSACTION_setUSBFileTransferDisabled:I = 0xa

.field static final blacklist TRANSACTION_setUSBOtgDisabled:I = 0xc

.field static final blacklist TRANSACTION_setUnknownSourceAppInstallDisabled:I = 0x9d

.field static final blacklist TRANSACTION_setUnlockByFaceDisabled:I = 0x6c

.field static final blacklist TRANSACTION_setUnlockByFacePolicies:I = 0x68

.field static final blacklist TRANSACTION_setUnlockByFingerprintDisabled:I = 0x6a

.field static final blacklist TRANSACTION_setUnlockByFingerprintPolicies:I = 0x66

.field static final blacklist TRANSACTION_setUsbDebugSwitchDisabled:I = 0x91

.field static final blacklist TRANSACTION_setUsbTetheringDisable:I = 0x14

.field static final blacklist TRANSACTION_setUserPasswordPolicies:I = 0x64

.field static final blacklist TRANSACTION_setVoiceDisabled:I = 0x22

.field static final blacklist TRANSACTION_setVoiceIncomingDisable:I = 0x20

.field static final blacklist TRANSACTION_setVoiceOutgoingDisable:I = 0x1f

.field static final blacklist TRANSACTION_setWifiAssistantPolicies:I = 0xbb

.field static final blacklist TRANSACTION_setWifiDisabled:I = 0x87

.field static final blacklist TRANSACTION_setWifiInBackground:I = 0x85

.field static final blacklist TRANSACTION_setWifiRandomMacForceDisable:I = 0xbd

.field static final blacklist TRANSACTION_setWifiSarPwrDbm:I = 0xc1

.field static final blacklist TRANSACTION_setWifiSarPwrMw:I = 0xc2

.field static final blacklist TRANSACTION_setWlanAllowListWithoutScanLimit:I = 0xb9


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 978
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 979
    const-string v0, "android.os.customize.IOplusCustomizeRestrictionManagerService"

    invoke-virtual {p0, p0, v0}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 980
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/os/customize/IOplusCustomizeRestrictionManagerService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 987
    if-nez p0, :cond_0

    .line 988
    const/4 v0, 0x0

    return-object v0

    .line 990
    :cond_0
    const-string v0, "android.os.customize.IOplusCustomizeRestrictionManagerService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 991
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    if-eqz v1, :cond_1

    .line 992
    move-object v1, v0

    check-cast v1, Landroid/os/customize/IOplusCustomizeRestrictionManagerService;

    return-object v1

    .line 994
    :cond_1
    new-instance v1, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 998
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1002
    const-string v0, "android.os.customize.IOplusCustomizeRestrictionManagerService"

    .line 1003
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 1004
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1006
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1014
    packed-switch p1, :pswitch_data_1

    .line 2850
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 1010
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1011
    return v1

    .line 2843
    :pswitch_1
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->disableWifiSar()Z

    move-result v2

    .line 2844
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2845
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2846
    goto/16 :goto_0

    .line 2834
    .end local v2    # "_result":Z
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 2835
    .local v2, "_arg0":F
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2836
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->setWifiSarPwrMw(F)Z

    move-result v3

    .line 2837
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2838
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2839
    goto/16 :goto_0

    .line 2824
    .end local v2    # "_arg0":F
    .end local v3    # "_result":Z
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 2825
    .restart local v2    # "_arg0":F
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2826
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->setWifiSarPwrDbm(F)Z

    move-result v3

    .line 2827
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2828
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2829
    goto/16 :goto_0

    .line 2816
    .end local v2    # "_arg0":F
    .end local v3    # "_result":Z
    :pswitch_4
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->getWifiSarPwrMw()F

    move-result v2

    .line 2817
    .local v2, "_result":F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2818
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2819
    goto/16 :goto_0

    .line 2809
    .end local v2    # "_result":F
    :pswitch_5
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->getWifiSarPwrDbm()F

    move-result v2

    .line 2810
    .restart local v2    # "_result":F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2811
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2812
    goto/16 :goto_0

    .line 2800
    .end local v2    # "_result":F
    :pswitch_6
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 2801
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2802
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->isWifiRandomMacForceDisable(Landroid/content/ComponentName;)Z

    move-result v3

    .line 2803
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2804
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2805
    goto/16 :goto_0

    .line 2788
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_7
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 2790
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 2791
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2792
    invoke-virtual {p0, v2, v3}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->setWifiRandomMacForceDisable(Landroid/content/ComponentName;Z)Z

    move-result v4

    .line 2793
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2794
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2795
    goto/16 :goto_0

    .line 2778
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Z
    :pswitch_8
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 2779
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2780
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->getWifiAssistantPolicies(Landroid/content/ComponentName;)I

    move-result v3

    .line 2781
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2782
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2783
    goto/16 :goto_0

    .line 2766
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":I
    :pswitch_9
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 2768
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2769
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2770
    invoke-virtual {p0, v2, v3}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->setWifiAssistantPolicies(Landroid/content/ComponentName;I)Z

    move-result v4

    .line 2771
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2772
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2773
    goto/16 :goto_0

    .line 2756
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_a
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 2757
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2758
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->getWlanAllowListWithoutScanLimit(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v3

    .line 2759
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2760
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 2761
    goto/16 :goto_0

    .line 2744
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_b
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 2746
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 2747
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2748
    invoke-virtual {p0, v2, v3}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->setWlanAllowListWithoutScanLimit(Landroid/content/ComponentName;Ljava/util/List;)Z

    move-result v4

    .line 2749
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2750
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2751
    goto/16 :goto_0

    .line 2736
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "_result":Z
    :pswitch_c
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->getLocalBtRandomAddress()Ljava/lang/String;

    move-result-object v2

    .line 2737
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2738
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2739
    goto/16 :goto_0

    .line 2729
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_d
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->getLocalBluetoothAddress()Ljava/lang/String;

    move-result-object v2

    .line 2730
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2731
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2732
    goto/16 :goto_0

    .line 2722
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_e
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->isBluetoothRandomEnabled()Z

    move-result v2

    .line 2723
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2724
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2725
    goto/16 :goto_0

    .line 2713
    .end local v2    # "_result":Z
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2714
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2715
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->setBluetoothRandomEnabled(Z)Z

    move-result v3

    .line 2716
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2717
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2718
    goto/16 :goto_0

    .line 2705
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_10
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->isCustomizeDozeModeDisabled()Z

    move-result v2

    .line 2706
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2707
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2708
    goto/16 :goto_0

    .line 2696
    .end local v2    # "_result":Z
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2697
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2698
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->setCustomizeDozeModeDisabled(Z)Z

    move-result v3

    .line 2699
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2700
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2701
    goto/16 :goto_0

    .line 2686
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2687
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2688
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->setPrivateSafeDisabled(Z)Z

    move-result v3

    .line 2689
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2690
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2691
    goto/16 :goto_0

    .line 2678
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_13
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->isPrivateSafeDisabled()Z

    move-result v2

    .line 2679
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2680
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2681
    goto/16 :goto_0

    .line 2671
    .end local v2    # "_result":Z
    :pswitch_14
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->isFindMyPhoneDisabled()Z

    move-result v2

    .line 2672
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2673
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2674
    goto/16 :goto_0

    .line 2662
    .end local v2    # "_result":Z
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2663
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2664
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->setFindMyPhoneDisabled(Z)Z

    move-result v3

    .line 2665
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2666
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2667
    goto/16 :goto_0

    .line 2654
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_16
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->isAppLockDisabled()Z

    move-result v2

    .line 2655
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2656
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2657
    goto/16 :goto_0

    .line 2646
    .end local v2    # "_result":Z
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2647
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2648
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->setAppLockDisabled(Z)V

    .line 2649
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2650
    goto/16 :goto_0

    .line 2638
    .end local v2    # "_arg0":Z
    :pswitch_18
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->getDisallowedClearDataCacheApps()Ljava/util/List;

    move-result-object v2

    .line 2639
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2640
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 2641
    goto/16 :goto_0

    .line 2629
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 2630
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2631
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->removeDisallowedClearDataCacheApps(Ljava/util/List;)Z

    move-result v3

    .line 2632
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2633
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2634
    goto/16 :goto_0

    .line 2619
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "_result":Z
    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 2620
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2621
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->addDisallowedClearDataCacheApps(Ljava/util/List;)Z

    move-result v3

    .line 2622
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2623
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2624
    goto/16 :goto_0

    .line 2609
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "_result":Z
    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2610
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2611
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->setAndroidAnimationDisabled(Z)Z

    move-result v3

    .line 2612
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2613
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2614
    goto/16 :goto_0

    .line 2601
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_1c
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->isAndroidAnimationDisabled()Z

    move-result v2

    .line 2602
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2603
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2604
    goto/16 :goto_0

    .line 2594
    .end local v2    # "_result":Z
    :pswitch_1d
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->isSwipeUpUnlockDisabled()Z

    move-result v2

    .line 2595
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2596
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2597
    goto/16 :goto_0

    .line 2583
    .end local v2    # "_result":Z
    :pswitch_1e
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 2585
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 2586
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2587
    invoke-virtual {p0, v2, v3}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->setSwipeUpUnlockDisabled(Landroid/content/ComponentName;Z)Z

    move-result v4

    .line 2588
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2589
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2590
    goto/16 :goto_0

    .line 2573
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Z
    :pswitch_1f
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 2574
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2575
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->getPasswordExpirationTimeout(Landroid/content/ComponentName;)J

    move-result-wide v3

    .line 2576
    .local v3, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2577
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 2578
    goto/16 :goto_0

    .line 2562
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":J
    :pswitch_20
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 2564
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 2565
    .local v3, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2566
    invoke-virtual {p0, v2, v3, v4}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->setPasswordExpirationTimeout(Landroid/content/ComponentName;J)V

    .line 2567
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2568
    goto/16 :goto_0

    .line 2552
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":J
    :pswitch_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2553
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2554
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->isAppInCustomVoipRecordList(Ljava/lang/String;)Z

    move-result v3

    .line 2555
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2556
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2557
    goto/16 :goto_0

    .line 2542
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_22
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 2543
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2544
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->isChangePictorialDisabled(Landroid/content/ComponentName;)Z

    move-result v3

    .line 2545
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2546
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2547
    goto/16 :goto_0

    .line 2531
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_23
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 2533
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 2534
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2535
    invoke-virtual {p0, v2, v3}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->setChangePictorialDisable(Landroid/content/ComponentName;Z)V

    .line 2536
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2537
    goto/16 :goto_0

    .line 2521
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    :pswitch_24
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 2522
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2523
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->getSideBarPolicies(Landroid/content/ComponentName;)I

    move-result v3

    .line 2524
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2525
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2526
    goto/16 :goto_0

    .line 2509
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":I
    :pswitch_25
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 2511
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2512
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2513
    invoke-virtual {p0, v2, v3}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->setSideBarPolicies(Landroid/content/ComponentName;I)Z

    move-result v4

    .line 2514
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2515
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2516
    goto/16 :goto_0

    .line 2499
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_26
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 2500
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2501
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->isUnknownSourceAppInstallDisabled(Landroid/content/ComponentName;)Z

    move-result v3

    .line 2502
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2503
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2504
    goto/16 :goto_0

    .line 2487
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_27
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 2489
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 2490
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2491
    invoke-virtual {p0, v2, v3}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->setUnknownSourceAppInstallDisabled(Landroid/content/ComponentName;Z)Z

    move-result v4

    .line 2492
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2493
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2494
    goto/16 :goto_0

    .line 2479
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Z
    :pswitch_28
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->isDataSyncDisabled()Z

    move-result v2

    .line 2480
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2481
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2482
    goto/16 :goto_0

    .line 2470
    .end local v2    # "_result":Z
    :pswitch_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2471
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2472
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->setDataSyncDisabled(Z)Z

    move-result v3

    .line 2473
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2474
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2475
    goto/16 :goto_0

    .line 2460
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_2a
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 2461
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2462
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->getSystemUpdatePolicies(Landroid/content/ComponentName;)I

    move-result v3

    .line 2463
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2464
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2465
    goto/16 :goto_0

    .line 2448
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":I
    :pswitch_2b
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 2450
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2451
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2452
    invoke-virtual {p0, v2, v3}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->setSystemUpdatePolicies(Landroid/content/ComponentName;I)Z

    move-result v4

    .line 2453
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2454
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2455
    goto/16 :goto_0

    .line 2440
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_2c
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->isLongPressLauncherDisabled()Z

    move-result v2

    .line 2441
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2442
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2443
    goto/16 :goto_0

    .line 2432
    .end local v2    # "_result":Z
    :pswitch_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2433
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2434
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->setLongPressLauncherDisabled(Z)V

    .line 2435
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2436
    goto/16 :goto_0

    .line 2424
    .end local v2    # "_arg0":Z
    :pswitch_2e
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->isNavigationBarDisabled()Z

    move-result v2

    .line 2425
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2426
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2427
    goto/16 :goto_0

    .line 2416
    .end local v2    # "_result":Z
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2417
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2418
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->setNavigationBarDisabled(Z)V

    .line 2419
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2420
    goto/16 :goto_0

    .line 2406
    .end local v2    # "_arg0":Z
    :pswitch_30
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 2407
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2408
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->isAdbDisabled(Landroid/content/ComponentName;)Z

    move-result v3

    .line 2409
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2410
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2411
    goto/16 :goto_0

    .line 2395
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_31
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 2397
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 2398
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2399
    invoke-virtual {p0, v2, v3}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->setAdbDisabled(Landroid/content/ComponentName;Z)V

    .line 2400
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2401
    goto/16 :goto_0

    .line 2385
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    :pswitch_32
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 2386
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2387
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->isUsbDebugSwitchDisabled(Landroid/content/ComponentName;)Z

    move-result v3

    .line 2388
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2389
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2390
    goto/16 :goto_0

    .line 2374
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_33
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 2376
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 2377
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2378
    invoke-virtual {p0, v2, v3}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->setUsbDebugSwitchDisabled(Landroid/content/ComponentName;Z)V

    .line 2379
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2380
    goto/16 :goto_0

    .line 2366
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    :pswitch_34
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->isSleepStandbyOptimizationDisabled()Z

    move-result v2

    .line 2367
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2368
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2369
    goto/16 :goto_0

    .line 2357
    .end local v2    # "_result":Z
    :pswitch_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2358
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2359
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->setSleepStandbyOptimizationDisabled(Z)Z

    move-result v3

    .line 2360
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2361
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2362
    goto/16 :goto_0

    .line 2349
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_36
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->isMmsSendReceiveDisabled()Z

    move-result v2

    .line 2350
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2351
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2352
    goto/16 :goto_0

    .line 2342
    .end local v2    # "_result":Z
    :pswitch_37
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->isSmsSendDisabled()Z

    move-result v2

    .line 2343
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2344
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2345
    goto/16 :goto_0

    .line 2335
    .end local v2    # "_result":Z
    :pswitch_38
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->isSmsReceiveDisabled()Z

    move-result v2

    .line 2336
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2337
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2338
    goto/16 :goto_0

    .line 2328
    .end local v2    # "_result":Z
    :pswitch_39
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->isMmsDisabled()Z

    move-result v2

    .line 2329
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2330
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2331
    goto/16 :goto_0

    .line 2320
    .end local v2    # "_result":Z
    :pswitch_3a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2321
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2322
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->setMmsDisabled(Z)V

    .line 2323
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2324
    goto/16 :goto_0

    .line 2312
    .end local v2    # "_arg0":Z
    :pswitch_3b
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->isEchoPasswordDisabled()Z

    move-result v2

    .line 2313
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2314
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2315
    goto/16 :goto_0

    .line 2303
    .end local v2    # "_result":Z
    :pswitch_3c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2304
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2305
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->setEchoPasswordDisabled(Z)Z

    move-result v3

    .line 2306
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2307
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2308
    goto/16 :goto_0

    .line 2292
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_3d
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 2294
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 2295
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2296
    invoke-virtual {p0, v2, v3}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->setWifiDisabled(Landroid/content/ComponentName;Z)V

    .line 2297
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2298
    goto/16 :goto_0

    .line 2282
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    :pswitch_3e
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 2283
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2284
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->isWifiDisabled(Landroid/content/ComponentName;)Z

    move-result v3

    .line 2285
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2286
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2287
    goto/16 :goto_0

    .line 2270
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_3f
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 2272
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 2273
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2274
    invoke-virtual {p0, v2, v3}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->setWifiInBackground(Landroid/content/ComponentName;Z)Z

    move-result v4

    .line 2275
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2276
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2277
    goto/16 :goto_0

    .line 2260
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Z
    :pswitch_40
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 2261
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2262
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->isWifiOpen(Landroid/content/ComponentName;)Z

    move-result v3

    .line 2263
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2264
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2265
    goto/16 :goto_0

    .line 2250
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_41
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 2251
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2252
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->isLanguageChangeDisabled(Landroid/content/ComponentName;)Z

    move-result v3

    .line 2253
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2254
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2255
    goto/16 :goto_0

    .line 2239
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_42
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 2241
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 2242
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2243
    invoke-virtual {p0, v2, v3}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->setLanguageChangeDisabled(Landroid/content/ComponentName;Z)V

    .line 2244
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2245
    goto/16 :goto_0

    .line 2229
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    :pswitch_43
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 2230
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2231
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->getSlot2DataConnectivityDisabled(Landroid/content/ComponentName;)I

    move-result v3

    .line 2232
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2233
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2234
    goto/16 :goto_0

    .line 2219
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":I
    :pswitch_44
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 2220
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2221
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->getSlot1DataConnectivityDisabled(Landroid/content/ComponentName;)I

    move-result v3

    .line 2222
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2223
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2224
    goto/16 :goto_0

    .line 2207
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":I
    :pswitch_45
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 2209
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2210
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2211
    invoke-virtual {p0, v2, v3}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->setDefaultDataCard(Landroid/content/ComponentName;I)Landroid/os/Bundle;

    move-result-object v4

    .line 2212
    .local v4, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2213
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2214
    goto/16 :goto_0

    .line 2197
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Landroid/os/Bundle;
    :pswitch_46
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 2198
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2199
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->getDefaultDataCard(Landroid/content/ComponentName;)I

    move-result v3

    .line 2200
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2201
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2202
    goto/16 :goto_0

    .line 2187
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":I
    :pswitch_47
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 2188
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2189
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->getGpsPolicies(Landroid/content/ComponentName;)I

    move-result v3

    .line 2190
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2191
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2192
    goto/16 :goto_0

    .line 2175
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":I
    :pswitch_48
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 2177
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2178
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2179
    invoke-virtual {p0, v2, v3}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->setGpsPolicies(Landroid/content/ComponentName;I)Z

    move-result v4

    .line 2180
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2181
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2182
    goto/16 :goto_0

    .line 2167
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_49
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->isLongPressVolumeUpDisabled()Z

    move-result v2

    .line 2168
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2169
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2170
    goto/16 :goto_0

    .line 2159
    .end local v2    # "_result":Z
    :pswitch_4a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2160
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2161
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->setLongPressVolumeUpDisabled(Z)V

    .line 2162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2163
    goto/16 :goto_0

    .line 2151
    .end local v2    # "_arg0":Z
    :pswitch_4b
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->getPowerDisable()Z

    move-result v2

    .line 2152
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2153
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2154
    goto/16 :goto_0

    .line 2143
    .end local v2    # "_result":Z
    :pswitch_4c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2144
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2145
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->setPowerDisable(Z)V

    .line 2146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2147
    goto/16 :goto_0

    .line 2135
    .end local v2    # "_arg0":Z
    :pswitch_4d
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->isBackButtonDisabled()Z

    move-result v2

    .line 2136
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2137
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2138
    goto/16 :goto_0

    .line 2127
    .end local v2    # "_result":Z
    :pswitch_4e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2128
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2129
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->setBackButtonDisabled(Z)V

    .line 2130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2131
    goto/16 :goto_0

    .line 2119
    .end local v2    # "_arg0":Z
    :pswitch_4f
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->isHomeButtonDisabled()Z

    move-result v2

    .line 2120
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2121
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2122
    goto/16 :goto_0

    .line 2111
    .end local v2    # "_result":Z
    :pswitch_50
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2112
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2113
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->setHomeButtonDisabled(Z)V

    .line 2114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2115
    goto/16 :goto_0

    .line 2103
    .end local v2    # "_arg0":Z
    :pswitch_51
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->isTaskButtonDisabled()Z

    move-result v2

    .line 2104
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2105
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2106
    goto/16 :goto_0

    .line 2095
    .end local v2    # "_result":Z
    :pswitch_52
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2096
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2097
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->setTaskButtonDisabled(Z)V

    .line 2098
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2099
    goto/16 :goto_0

    .line 2087
    .end local v2    # "_arg0":Z
    :pswitch_53
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->getPasswordNumSequenceMaxLength()I

    move-result v2

    .line 2088
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2089
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2090
    goto/16 :goto_0

    .line 2078
    .end local v2    # "_result":I
    :pswitch_54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2079
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2080
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->setPasswordNumSequenceMaxLength(I)Z

    move-result v3

    .line 2081
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2082
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2083
    goto/16 :goto_0

    .line 2070
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_55
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->getPasswordRepeatMaxLength()I

    move-result v2

    .line 2071
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2072
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2073
    goto/16 :goto_0

    .line 2061
    .end local v2    # "_result":I
    :pswitch_56
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2062
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2063
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->setPasswordRepeatMaxLength(I)Z

    move-result v3

    .line 2064
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2065
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2066
    goto/16 :goto_0

    .line 2051
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_57
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 2052
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2053
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->isUnlockByFaceDisabled(Landroid/content/ComponentName;)Z

    move-result v3

    .line 2054
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2055
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2056
    goto/16 :goto_0

    .line 2039
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_58
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 2041
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 2042
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2043
    invoke-virtual {p0, v2, v3}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->setUnlockByFaceDisabled(Landroid/content/ComponentName;Z)Z

    move-result v4

    .line 2044
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2045
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2046
    goto/16 :goto_0

    .line 2029
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Z
    :pswitch_59
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 2030
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2031
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->isUnlockByFingerprintDisabled(Landroid/content/ComponentName;)Z

    move-result v3

    .line 2032
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2033
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2034
    goto/16 :goto_0

    .line 2017
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_5a
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 2019
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 2020
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2021
    invoke-virtual {p0, v2, v3}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->setUnlockByFingerprintDisabled(Landroid/content/ComponentName;Z)Z

    move-result v4

    .line 2022
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2023
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2024
    goto/16 :goto_0

    .line 2007
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Z
    :pswitch_5b
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 2008
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2009
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->getUnlockByFacePolicies(Landroid/content/ComponentName;)I

    move-result v3

    .line 2010
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2011
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2012
    goto/16 :goto_0

    .line 1995
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":I
    :pswitch_5c
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1997
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1998
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1999
    invoke-virtual {p0, v2, v3}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->setUnlockByFacePolicies(Landroid/content/ComponentName;I)Z

    move-result v4

    .line 2000
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2001
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2002
    goto/16 :goto_0

    .line 1985
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_5d
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1986
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1987
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->getUnlockByFingerprintPolicies(Landroid/content/ComponentName;)I

    move-result v3

    .line 1988
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1989
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1990
    goto/16 :goto_0

    .line 1973
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":I
    :pswitch_5e
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1975
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1976
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1977
    invoke-virtual {p0, v2, v3}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->setUnlockByFingerprintPolicies(Landroid/content/ComponentName;I)Z

    move-result v4

    .line 1978
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1979
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1980
    goto/16 :goto_0

    .line 1963
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_5f
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1964
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1965
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->getUserPasswordPolicies(Landroid/content/ComponentName;)I

    move-result v3

    .line 1966
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1967
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1968
    goto/16 :goto_0

    .line 1951
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":I
    :pswitch_60
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1953
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1954
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1955
    invoke-virtual {p0, v2, v3}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->setUserPasswordPolicies(Landroid/content/ComponentName;I)Z

    move-result v4

    .line 1956
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1957
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1958
    goto/16 :goto_0

    .line 1941
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_61
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1942
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1943
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->getSplitScreenDisable(Landroid/content/ComponentName;)Z

    move-result v3

    .line 1944
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1945
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1946
    goto/16 :goto_0

    .line 1929
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_62
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1931
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1932
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1933
    invoke-virtual {p0, v2, v3}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->setSplitScreenDisable(Landroid/content/ComponentName;Z)Z

    move-result v4

    .line 1934
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1935
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1936
    goto/16 :goto_0

    .line 1920
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Z
    :pswitch_63
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1921
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1922
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->setMultiAppSupport(Z)V

    .line 1923
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1924
    goto/16 :goto_0

    .line 1912
    .end local v2    # "_arg0":Z
    :pswitch_64
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->isMultiAppSupport()Z

    move-result v2

    .line 1913
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1914
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1915
    goto/16 :goto_0

    .line 1903
    .end local v2    # "_result":Z
    :pswitch_65
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1904
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1905
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->isFloatTaskDisabled(Landroid/content/ComponentName;)Z

    move-result v3

    .line 1906
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1907
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1908
    goto/16 :goto_0

    .line 1891
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_66
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1893
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1894
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1895
    invoke-virtual {p0, v2, v3}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->setFloatTaskDisabled(Landroid/content/ComponentName;Z)Z

    move-result v4

    .line 1896
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1897
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1898
    goto/16 :goto_0

    .line 1881
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Z
    :pswitch_67
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1882
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1883
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->getAirplanePolices(Landroid/content/ComponentName;)I

    move-result v3

    .line 1884
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1885
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1886
    goto/16 :goto_0

    .line 1869
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":I
    :pswitch_68
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1871
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1872
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1873
    invoke-virtual {p0, v2, v3}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->setAirplanePolices(Landroid/content/ComponentName;I)Z

    move-result v4

    .line 1874
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1875
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1876
    goto/16 :goto_0

    .line 1859
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1860
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1861
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->getApplicationDisabledInLauncherOrRecentTask(I)Ljava/util/List;

    move-result-object v3

    .line 1862
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1863
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1864
    goto/16 :goto_0

    .line 1848
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_6a
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 1850
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1851
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1852
    invoke-virtual {p0, v2, v3}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->setApplicationDisabledInLauncherOrRecentTask(Ljava/util/List;I)V

    .line 1853
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1854
    goto/16 :goto_0

    .line 1838
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "_arg1":I
    :pswitch_6b
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1839
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1840
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->isSettingsApplicationDisabled(Landroid/content/ComponentName;)Z

    move-result v3

    .line 1841
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1842
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1843
    goto/16 :goto_0

    .line 1827
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_6c
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1829
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1830
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1831
    invoke-virtual {p0, v2, v3}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->setSettingsApplicationDisabled(Landroid/content/ComponentName;Z)V

    .line 1832
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1833
    goto/16 :goto_0

    .line 1817
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    :pswitch_6d
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1818
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1819
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->isChangeWallpaperDisabled(Landroid/content/ComponentName;)Z

    move-result v3

    .line 1820
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1821
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1822
    goto/16 :goto_0

    .line 1806
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_6e
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1808
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1809
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1810
    invoke-virtual {p0, v2, v3}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->setChangeWallpaperDisable(Landroid/content/ComponentName;Z)V

    .line 1811
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1812
    goto/16 :goto_0

    .line 1798
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    :pswitch_6f
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->getTorchPolicies()I

    move-result v2

    .line 1799
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1800
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1801
    goto/16 :goto_0

    .line 1789
    .end local v2    # "_result":I
    :pswitch_70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1790
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1791
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->setTorchPolicies(I)Z

    move-result v3

    .line 1792
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1793
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1794
    goto/16 :goto_0

    .line 1781
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_71
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->getCameraPolicies()I

    move-result v2

    .line 1782
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1783
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1784
    goto/16 :goto_0

    .line 1772
    .end local v2    # "_result":I
    :pswitch_72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1773
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1774
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->setCameraPolicies(I)Z

    move-result v3

    .line 1775
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1776
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1777
    goto/16 :goto_0

    .line 1760
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_73
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1762
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1763
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1764
    invoke-virtual {p0, v2, v3}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->allowWifiCellularNetwork(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v4

    .line 1765
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1766
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1767
    goto/16 :goto_0

    .line 1749
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_74
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1751
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1752
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1753
    invoke-virtual {p0, v2, v3}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->setMobileDataMode(Landroid/content/ComponentName;I)V

    .line 1754
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1755
    goto/16 :goto_0

    .line 1739
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":I
    :pswitch_75
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1740
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1741
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->getMobileDataMode(Landroid/content/ComponentName;)I

    move-result v3

    .line 1742
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1743
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1744
    goto/16 :goto_0

    .line 1729
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":I
    :pswitch_76
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1730
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1731
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->getNfcPolicies(Landroid/content/ComponentName;)I

    move-result v3

    .line 1732
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1733
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1734
    goto/16 :goto_0

    .line 1717
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":I
    :pswitch_77
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1719
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1720
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1721
    invoke-virtual {p0, v2, v3}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->setNfcPolicies(Landroid/content/ComponentName;I)Z

    move-result v4

    .line 1722
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1723
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1724
    goto/16 :goto_0

    .line 1707
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_78
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1708
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1709
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->isAndroidBeamDisabled(Landroid/content/ComponentName;)Z

    move-result v3

    .line 1710
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1711
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1712
    goto/16 :goto_0

    .line 1695
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_79
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1697
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1698
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1699
    invoke-virtual {p0, v2, v3}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->setAndroidBeamDisabled(Landroid/content/ComponentName;Z)Z

    move-result v4

    .line 1700
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1701
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1702
    goto/16 :goto_0

    .line 1685
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Z
    :pswitch_7a
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1686
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1687
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->isNFCTurnOn(Landroid/content/ComponentName;)Z

    move-result v3

    .line 1688
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1689
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1690
    goto/16 :goto_0

    .line 1674
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_7b
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1676
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1677
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1678
    invoke-virtual {p0, v2, v3}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->openCloseNFC(Landroid/content/ComponentName;Z)V

    .line 1679
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1680
    goto/16 :goto_0

    .line 1664
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    :pswitch_7c
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1665
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1666
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->isNFCDisabled(Landroid/content/ComponentName;)Z

    move-result v3

    .line 1667
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1668
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1669
    goto/16 :goto_0

    .line 1653
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_7d
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1655
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1656
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1657
    invoke-virtual {p0, v2, v3}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->setNFCDisabled(Landroid/content/ComponentName;Z)V

    .line 1658
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1659
    goto/16 :goto_0

    .line 1645
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    :pswitch_7e
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->getBluetoothDisabledProfiles()Ljava/util/List;

    move-result-object v2

    .line 1646
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1647
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1648
    goto/16 :goto_0

    .line 1636
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_7f
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 1637
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1638
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->setBluetoothDisabledProfiles(Ljava/util/List;)Z

    move-result v3

    .line 1639
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1640
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1641
    goto/16 :goto_0

    .line 1628
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "_result":Z
    :pswitch_80
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->isBluetoothTetheringDisabled()Z

    move-result v2

    .line 1629
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1630
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1631
    goto/16 :goto_0

    .line 1619
    .end local v2    # "_result":Z
    :pswitch_81
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1620
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1621
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->setBluetoothTetheringDisable(Z)Z

    move-result v3

    .line 1622
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1623
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1624
    goto/16 :goto_0

    .line 1611
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_82
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->isBluetoothDataTransferDisabled()Z

    move-result v2

    .line 1612
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1613
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1614
    goto/16 :goto_0

    .line 1602
    .end local v2    # "_result":Z
    :pswitch_83
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1603
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1604
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->setBluetoothDataTransferDisable(Z)Z

    move-result v3

    .line 1605
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1606
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1607
    goto/16 :goto_0

    .line 1594
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_84
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->isBluetoothOutGoingCallDisabled()Z

    move-result v2

    .line 1595
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1596
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1597
    goto/16 :goto_0

    .line 1585
    .end local v2    # "_result":Z
    :pswitch_85
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1586
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1587
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->setBluetoothOutGoingCallDisable(Z)Z

    move-result v3

    .line 1588
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1589
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1590
    goto/16 :goto_0

    .line 1577
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_86
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->isBluetoothPairingDisabled()Z

    move-result v2

    .line 1578
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1579
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1580
    goto/16 :goto_0

    .line 1568
    .end local v2    # "_result":Z
    :pswitch_87
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1569
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1570
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->setBluetoothPairingDisable(Z)Z

    move-result v3

    .line 1571
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1572
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1573
    goto/16 :goto_0

    .line 1560
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_88
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->isLimitedDiscoverableDisabled()Z

    move-result v2

    .line 1561
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1562
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1563
    goto/16 :goto_0

    .line 1551
    .end local v2    # "_result":Z
    :pswitch_89
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1552
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1553
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->setLimitedDiscoverableDisable(Z)Z

    move-result v3

    .line 1554
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1555
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1556
    goto/16 :goto_0

    .line 1543
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_8a
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->isDiscoverableDisabled()Z

    move-result v2

    .line 1544
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1545
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1546
    goto/16 :goto_0

    .line 1534
    .end local v2    # "_result":Z
    :pswitch_8b
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1535
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1536
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->setDiscoverableDisabled(Z)Z

    move-result v3

    .line 1537
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1538
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1539
    goto/16 :goto_0

    .line 1526
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_8c
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->isBluetoothEnabled()Z

    move-result v2

    .line 1527
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1528
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1529
    goto/16 :goto_0

    .line 1518
    .end local v2    # "_result":Z
    :pswitch_8d
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1519
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1520
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->setBluetoothEnabled(Z)V

    .line 1521
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1522
    goto/16 :goto_0

    .line 1510
    .end local v2    # "_arg0":Z
    :pswitch_8e
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->isBluetoothDisabled()Z

    move-result v2

    .line 1511
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1512
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1513
    goto/16 :goto_0

    .line 1502
    .end local v2    # "_result":Z
    :pswitch_8f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1503
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1504
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->setBluetoothDisabled(Z)V

    .line 1505
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1506
    goto/16 :goto_0

    .line 1494
    .end local v2    # "_arg0":Z
    :pswitch_90
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->isNavigationModeRevertible()Z

    move-result v2

    .line 1495
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1496
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1497
    goto/16 :goto_0

    .line 1483
    .end local v2    # "_result":Z
    :pswitch_91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1485
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1486
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1487
    invoke-virtual {p0, v2, v3}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->setNavigationMode(IZ)Z

    move-result v4

    .line 1488
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1489
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1490
    goto/16 :goto_0

    .line 1475
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Z
    :pswitch_92
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->getFileSharedDisabled()Z

    move-result v2

    .line 1476
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1477
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1478
    goto/16 :goto_0

    .line 1466
    .end local v2    # "_result":Z
    :pswitch_93
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1467
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1468
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->setFileSharedDisabled(Z)Z

    move-result v3

    .line 1469
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1470
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1471
    goto/16 :goto_0

    .line 1456
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_94
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1457
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1458
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->isSleepByPowerButtonDisabled(Landroid/content/ComponentName;)Z

    move-result v3

    .line 1459
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1460
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1461
    goto/16 :goto_0

    .line 1444
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_95
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1446
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1447
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1448
    invoke-virtual {p0, v2, v3}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->setSleepByPowerButtonDisabled(Landroid/content/ComponentName;Z)Z

    move-result v4

    .line 1449
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1450
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1451
    goto/16 :goto_0

    .line 1432
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Z
    :pswitch_96
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1434
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1435
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1436
    invoke-virtual {p0, v2, v3}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->getQSRestrictionState(Ljava/lang/String;I)Z

    move-result v4

    .line 1437
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1438
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1439
    goto/16 :goto_0

    .line 1422
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_97
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1423
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1424
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->getQSRestrictionValue(Ljava/lang/String;)I

    move-result v3

    .line 1425
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1426
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1427
    goto/16 :goto_0

    .line 1411
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_98
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1413
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1414
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1415
    invoke-virtual {p0, v2, v3}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->disableQSRestriction(Ljava/lang/String;I)V

    .line 1416
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1417
    goto/16 :goto_0

    .line 1400
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_99
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1402
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1403
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1404
    invoke-virtual {p0, v2, v3}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->applyQSRestriction(Ljava/lang/String;I)V

    .line 1405
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1406
    goto/16 :goto_0

    .line 1392
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_9a
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->isDataRoamingDisabled()Z

    move-result v2

    .line 1393
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1394
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1395
    goto/16 :goto_0

    .line 1383
    .end local v2    # "_result":Z
    :pswitch_9b
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1384
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1385
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->setDataRoamingDisabled(Z)Z

    move-result v3

    .line 1386
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1387
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1388
    goto/16 :goto_0

    .line 1375
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_9c
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->isSuperPowerSavingModeDisabled()Z

    move-result v2

    .line 1376
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1377
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1378
    goto/16 :goto_0

    .line 1366
    .end local v2    # "_result":Z
    :pswitch_9d
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1367
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1368
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->setSuperPowerSavingModeDisabled(Z)Z

    move-result v3

    .line 1369
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1370
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1371
    goto/16 :goto_0

    .line 1358
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_9e
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->isPowerSavingModeDisabled()Z

    move-result v2

    .line 1359
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1360
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1361
    goto/16 :goto_0

    .line 1350
    .end local v2    # "_result":Z
    :pswitch_9f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1351
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1352
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->setPowerSavingModeDisabled(Z)V

    .line 1353
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1354
    goto/16 :goto_0

    .line 1338
    .end local v2    # "_arg0":Z
    :pswitch_a0
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1340
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1341
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1342
    invoke-virtual {p0, v2, v3}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->isVoiceOutgoingDisabled(Landroid/content/ComponentName;I)Z

    move-result v4

    .line 1343
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1344
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1345
    goto/16 :goto_0

    .line 1326
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_a1
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1328
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1329
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1330
    invoke-virtual {p0, v2, v3}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->isVoiceIncomingDisabled(Landroid/content/ComponentName;I)Z

    move-result v4

    .line 1331
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1332
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1333
    goto/16 :goto_0

    .line 1315
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_a2
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1317
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1318
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1319
    invoke-virtual {p0, v2, v3}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->setVoiceDisabled(Landroid/content/ComponentName;Z)V

    .line 1320
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1321
    goto/16 :goto_0

    .line 1305
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    :pswitch_a3
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1306
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1307
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->isVoiceDisabled(Landroid/content/ComponentName;)Z

    move-result v3

    .line 1308
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1309
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1310
    goto/16 :goto_0

    .line 1294
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_a4
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1296
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1297
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1298
    invoke-virtual {p0, v2, v3}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->setVoiceIncomingDisable(Landroid/content/ComponentName;Z)V

    .line 1299
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1300
    goto/16 :goto_0

    .line 1283
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    :pswitch_a5
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1285
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1286
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1287
    invoke-virtual {p0, v2, v3}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->setVoiceOutgoingDisable(Landroid/content/ComponentName;Z)V

    .line 1288
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1289
    goto/16 :goto_0

    .line 1272
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    :pswitch_a6
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1274
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1275
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1276
    invoke-virtual {p0, v2, v3}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->setSlot2DataConnectivityDisabled(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 1277
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1278
    goto/16 :goto_0

    .line 1261
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_a7
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1263
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1264
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1265
    invoke-virtual {p0, v2, v3}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->setSlot1DataConnectivityDisabled(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 1266
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1267
    goto/16 :goto_0

    .line 1253
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_a8
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->getAppUninstallationPolicies()I

    move-result v2

    .line 1254
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1255
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1256
    goto/16 :goto_0

    .line 1244
    .end local v2    # "_result":I
    :pswitch_a9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1245
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1246
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->getAppUninstallationPackageList(I)Ljava/util/List;

    move-result-object v3

    .line 1247
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1248
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1249
    goto/16 :goto_0

    .line 1233
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_aa
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1235
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 1236
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1237
    invoke-virtual {p0, v2, v3}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->setAppUninstallationPolicies(ILjava/util/List;)V

    .line 1238
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1239
    goto/16 :goto_0

    .line 1225
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_ab
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->getForbidRecordScreenState()Z

    move-result v2

    .line 1226
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1227
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1228
    goto/16 :goto_0

    .line 1216
    .end local v2    # "_result":Z
    :pswitch_ac
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1217
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1218
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->setScreenCaptureDisabled(Z)Z

    move-result v3

    .line 1219
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1220
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1221
    goto/16 :goto_0

    .line 1206
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_ad
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1207
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1208
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->getRequiredStrongAuthTime(Landroid/content/ComponentName;)J

    move-result-wide v3

    .line 1209
    .local v3, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1210
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 1211
    goto/16 :goto_0

    .line 1195
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":J
    :pswitch_ae
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1197
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 1198
    .local v3, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1199
    invoke-virtual {p0, v2, v3, v4}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->setRequiredStrongAuthTime(Landroid/content/ComponentName;J)V

    .line 1200
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1201
    goto/16 :goto_0

    .line 1187
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":J
    :pswitch_af
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->isUsbTetheringDisabled()Z

    move-result v2

    .line 1188
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1189
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1190
    goto/16 :goto_0

    .line 1179
    .end local v2    # "_result":Z
    :pswitch_b0
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1180
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1181
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->setUsbTetheringDisable(Z)V

    .line 1182
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1183
    goto/16 :goto_0

    .line 1171
    .end local v2    # "_arg0":Z
    :pswitch_b1
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->isExternalStorageDisabled()Z

    move-result v2

    .line 1172
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1173
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1174
    goto/16 :goto_0

    .line 1163
    .end local v2    # "_result":Z
    :pswitch_b2
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1164
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1165
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->setExternalStorageDisabled(Z)V

    .line 1166
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1167
    goto/16 :goto_0

    .line 1155
    .end local v2    # "_arg0":Z
    :pswitch_b3
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->isSafeModeDisabled()Z

    move-result v2

    .line 1156
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1157
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1158
    goto/16 :goto_0

    .line 1147
    .end local v2    # "_result":Z
    :pswitch_b4
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1148
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1149
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->setSafeModeDisabled(Z)V

    .line 1150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1151
    goto/16 :goto_0

    .line 1139
    .end local v2    # "_arg0":Z
    :pswitch_b5
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->isBiometricDisabled()Z

    move-result v2

    .line 1140
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1141
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1142
    goto/16 :goto_0

    .line 1131
    .end local v2    # "_result":Z
    :pswitch_b6
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1132
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1133
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->setBiometricDisabled(Z)V

    .line 1134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1135
    goto/16 :goto_0

    .line 1123
    .end local v2    # "_arg0":Z
    :pswitch_b7
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->isUSBOtgDisabled()Z

    move-result v2

    .line 1124
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1125
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1126
    goto/16 :goto_0

    .line 1115
    .end local v2    # "_result":Z
    :pswitch_b8
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1116
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1117
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->setUSBOtgDisabled(Z)V

    .line 1118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1119
    goto/16 :goto_0

    .line 1107
    .end local v2    # "_arg0":Z
    :pswitch_b9
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->isUSBFileTransferDisabled()Z

    move-result v2

    .line 1108
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1109
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1110
    goto/16 :goto_0

    .line 1099
    .end local v2    # "_result":Z
    :pswitch_ba
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1100
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1101
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->setUSBFileTransferDisabled(Z)V

    .line 1102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1103
    goto/16 :goto_0

    .line 1091
    .end local v2    # "_arg0":Z
    :pswitch_bb
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->isUSBDataDisabled()Z

    move-result v2

    .line 1092
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1093
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1094
    goto/16 :goto_0

    .line 1083
    .end local v2    # "_result":Z
    :pswitch_bc
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1084
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1085
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->setUSBDataDisabled(Z)V

    .line 1086
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1087
    goto :goto_0

    .line 1072
    .end local v2    # "_arg0":Z
    :pswitch_bd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1074
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 1075
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1076
    invoke-virtual {p0, v2, v3}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->addAppInstallPackageWhitelist(ILjava/util/List;)V

    .line 1077
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1078
    goto :goto_0

    .line 1061
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_be
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1063
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 1064
    .restart local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1065
    invoke-virtual {p0, v2, v3}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->addAppInstallPackageBlacklist(ILjava/util/List;)V

    .line 1066
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1067
    goto :goto_0

    .line 1051
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_bf
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1052
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1053
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->getAppInstallPackageList(I)Ljava/util/List;

    move-result-object v3

    .line 1054
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1055
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1056
    goto :goto_0

    .line 1043
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_c0
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->getAppInstallRestrictionPolicies()I

    move-result v2

    .line 1044
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1045
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1046
    goto :goto_0

    .line 1035
    .end local v2    # "_result":I
    :pswitch_c1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1036
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1037
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->setAppInstallRestrictionPolicies(I)V

    .line 1038
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1039
    goto :goto_0

    .line 1027
    .end local v2    # "_arg0":I
    :pswitch_c2
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->getClipboardStatus()Z

    move-result v2

    .line 1028
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1029
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1030
    goto :goto_0

    .line 1019
    .end local v2    # "_result":Z
    :pswitch_c3
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1020
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1021
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeRestrictionManagerService$Stub;->setClipboardEnabled(Z)V

    .line 1022
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1023
    nop

    .line 2853
    .end local v2    # "_arg0":Z
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_c3
        :pswitch_c2
        :pswitch_c1
        :pswitch_c0
        :pswitch_bf
        :pswitch_be
        :pswitch_bd
        :pswitch_bc
        :pswitch_bb
        :pswitch_ba
        :pswitch_b9
        :pswitch_b8
        :pswitch_b7
        :pswitch_b6
        :pswitch_b5
        :pswitch_b4
        :pswitch_b3
        :pswitch_b2
        :pswitch_b1
        :pswitch_b0
        :pswitch_af
        :pswitch_ae
        :pswitch_ad
        :pswitch_ac
        :pswitch_ab
        :pswitch_aa
        :pswitch_a9
        :pswitch_a8
        :pswitch_a7
        :pswitch_a6
        :pswitch_a5
        :pswitch_a4
        :pswitch_a3
        :pswitch_a2
        :pswitch_a1
        :pswitch_a0
        :pswitch_9f
        :pswitch_9e
        :pswitch_9d
        :pswitch_9c
        :pswitch_9b
        :pswitch_9a
        :pswitch_99
        :pswitch_98
        :pswitch_97
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
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
