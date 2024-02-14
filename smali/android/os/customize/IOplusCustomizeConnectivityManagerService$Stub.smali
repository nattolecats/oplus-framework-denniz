.class public abstract Landroid/os/customize/IOplusCustomizeConnectivityManagerService$Stub;
.super Landroid/os/Binder;
.source "IOplusCustomizeConnectivityManagerService.java"

# interfaces
.implements Landroid/os/customize/IOplusCustomizeConnectivityManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/customize/IOplusCustomizeConnectivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/customize/IOplusCustomizeConnectivityManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addBluetoothDevicesToBlackLists:I = 0x9

.field static final blacklist TRANSACTION_addBluetoothDevicesToWhiteLists:I = 0x5

.field static final blacklist TRANSACTION_getBluetoothDevicesFromBlackLists:I = 0xb

.field static final blacklist TRANSACTION_getBluetoothDevicesFromWhiteLists:I = 0x7

.field static final blacklist TRANSACTION_getBluetoothPolicies:I = 0x3

.field static final blacklist TRANSACTION_getDevicePosition:I = 0x26

.field static final blacklist TRANSACTION_getSecurityLevel:I = 0x15

.field static final blacklist TRANSACTION_getWifiApPolicies:I = 0x1b

.field static final blacklist TRANSACTION_getWifiMacAddress:I = 0x21

.field static final blacklist TRANSACTION_getWifiRestrictionList:I = 0x11

.field static final blacklist TRANSACTION_getWlanApClientBlackList:I = 0x1d

.field static final blacklist TRANSACTION_getWlanApClientWhiteList:I = 0x1c

.field static final blacklist TRANSACTION_getWlanConfiguration:I = 0x20

.field static final blacklist TRANSACTION_getWlanPolicies:I = 0x2a

.field static final blacklist TRANSACTION_isBlackListedDevice:I = 0xa

.field static final blacklist TRANSACTION_isGPSDisabled:I = 0x25

.field static final blacklist TRANSACTION_isGPSTurnOn:I = 0x23

.field static final blacklist TRANSACTION_isNetworkSettingsResetDisabled:I = 0x2e

.field static final blacklist TRANSACTION_isUnSecureSoftApDisabled:I = 0x28

.field static final blacklist TRANSACTION_isUserProfilesDisabled:I = 0x2

.field static final blacklist TRANSACTION_isWhiteListedDevice:I = 0x6

.field static final blacklist TRANSACTION_isWifiApDisabled:I = 0x17

.field static final blacklist TRANSACTION_isWifiAutoConnectionDisabled:I = 0x13

.field static final blacklist TRANSACTION_isWifiEditDisabled:I = 0xe

.field static final blacklist TRANSACTION_isWifiP2pDisabled:I = 0x19

.field static final blacklist TRANSACTION_isWlanForceDisabled:I = 0x2c

.field static final blacklist TRANSACTION_isWlanForceEnabled:I = 0x2b

.field static final blacklist TRANSACTION_removeBluetoothDevicesFromBlackLists:I = 0xc

.field static final blacklist TRANSACTION_removeBluetoothDevicesFromWhiteLists:I = 0x8

.field static final blacklist TRANSACTION_removeFromRestrictionList:I = 0x10

.field static final blacklist TRANSACTION_removeWlanApClientBlackList:I = 0x1f

.field static final blacklist TRANSACTION_setBluetoothPolicies:I = 0x4

.field static final blacklist TRANSACTION_setGPSDisabled:I = 0x24

.field static final blacklist TRANSACTION_setNetworkSettingsResetDisabled:I = 0x2d

.field static final blacklist TRANSACTION_setSecurityLevel:I = 0x14

.field static final blacklist TRANSACTION_setUnSecureSoftApDisabled:I = 0x27

.field static final blacklist TRANSACTION_setUserProfilesDisabled:I = 0x1

.field static final blacklist TRANSACTION_setWifiApDisabled:I = 0x16

.field static final blacklist TRANSACTION_setWifiApPolicies:I = 0x1a

.field static final blacklist TRANSACTION_setWifiAutoConnectionDisabled:I = 0x12

.field static final blacklist TRANSACTION_setWifiEditDisabled:I = 0xd

.field static final blacklist TRANSACTION_setWifiP2pDisabled:I = 0x18

.field static final blacklist TRANSACTION_setWifiRestrictionList:I = 0xf

.field static final blacklist TRANSACTION_setWlanApClientBlackList:I = 0x1e

.field static final blacklist TRANSACTION_setWlanPolicies:I = 0x29

.field static final blacklist TRANSACTION_turnOnGPS:I = 0x22


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 373
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 374
    const-string v0, "android.os.customize.IOplusCustomizeConnectivityManagerService"

    invoke-virtual {p0, p0, v0}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 375
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/os/customize/IOplusCustomizeConnectivityManagerService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 382
    if-nez p0, :cond_0

    .line 383
    const/4 v0, 0x0

    return-object v0

    .line 385
    :cond_0
    const-string v0, "android.os.customize.IOplusCustomizeConnectivityManagerService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 386
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/customize/IOplusCustomizeConnectivityManagerService;

    if-eqz v1, :cond_1

    .line 387
    move-object v1, v0

    check-cast v1, Landroid/os/customize/IOplusCustomizeConnectivityManagerService;

    return-object v1

    .line 389
    :cond_1
    new-instance v1, Landroid/os/customize/IOplusCustomizeConnectivityManagerService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 393
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

    .line 397
    const-string v0, "android.os.customize.IOplusCustomizeConnectivityManagerService"

    .line 398
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 399
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 401
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 409
    packed-switch p1, :pswitch_data_1

    .line 827
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 405
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 406
    return v1

    .line 820
    :pswitch_1
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService$Stub;->isNetworkSettingsResetDisabled()Z

    move-result v2

    .line 821
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 822
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 823
    goto/16 :goto_0

    .line 811
    .end local v2    # "_result":Z
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 812
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 813
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService$Stub;->setNetworkSettingsResetDisabled(Z)Z

    move-result v3

    .line 814
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 815
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 816
    goto/16 :goto_0

    .line 803
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_3
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService$Stub;->isWlanForceDisabled()Z

    move-result v2

    .line 804
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 805
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 806
    goto/16 :goto_0

    .line 796
    .end local v2    # "_result":Z
    :pswitch_4
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService$Stub;->isWlanForceEnabled()Z

    move-result v2

    .line 797
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 798
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 799
    goto/16 :goto_0

    .line 787
    .end local v2    # "_result":Z
    :pswitch_5
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 788
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 789
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService$Stub;->getWlanPolicies(Landroid/content/ComponentName;)I

    move-result v3

    .line 790
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 791
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 792
    goto/16 :goto_0

    .line 775
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":I
    :pswitch_6
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 777
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 778
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 779
    invoke-virtual {p0, v2, v3}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService$Stub;->setWlanPolicies(Landroid/content/ComponentName;I)Z

    move-result v4

    .line 780
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 781
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 782
    goto/16 :goto_0

    .line 767
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_7
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService$Stub;->isUnSecureSoftApDisabled()Z

    move-result v2

    .line 768
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 769
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 770
    goto/16 :goto_0

    .line 758
    .end local v2    # "_result":Z
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 759
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 760
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService$Stub;->setUnSecureSoftApDisabled(Z)Z

    move-result v3

    .line 761
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 762
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 763
    goto/16 :goto_0

    .line 748
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_9
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 749
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 750
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService$Stub;->getDevicePosition(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    .line 751
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 752
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 753
    goto/16 :goto_0

    .line 738
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_a
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 739
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 740
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService$Stub;->isGPSDisabled(Landroid/content/ComponentName;)Z

    move-result v3

    .line 741
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 742
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 743
    goto/16 :goto_0

    .line 727
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_b
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 729
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 730
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 731
    invoke-virtual {p0, v2, v3}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService$Stub;->setGPSDisabled(Landroid/content/ComponentName;Z)V

    .line 732
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 733
    goto/16 :goto_0

    .line 717
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    :pswitch_c
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 718
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 719
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService$Stub;->isGPSTurnOn(Landroid/content/ComponentName;)Z

    move-result v3

    .line 720
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 721
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 722
    goto/16 :goto_0

    .line 706
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_d
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 708
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 709
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 710
    invoke-virtual {p0, v2, v3}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService$Stub;->turnOnGPS(Landroid/content/ComponentName;Z)V

    .line 711
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 712
    goto/16 :goto_0

    .line 698
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    :pswitch_e
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService$Stub;->getWifiMacAddress()Ljava/lang/String;

    move-result-object v2

    .line 699
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 700
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 701
    goto/16 :goto_0

    .line 691
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_f
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService$Stub;->getWlanConfiguration()Ljava/util/List;

    move-result-object v2

    .line 692
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 693
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 694
    goto/16 :goto_0

    .line 682
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 683
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 684
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService$Stub;->removeWlanApClientBlackList(Ljava/util/List;)Z

    move-result v3

    .line 685
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 686
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 687
    goto/16 :goto_0

    .line 672
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "_result":Z
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 673
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 674
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService$Stub;->setWlanApClientBlackList(Ljava/util/List;)Z

    move-result v3

    .line 675
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 676
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 677
    goto/16 :goto_0

    .line 664
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "_result":Z
    :pswitch_12
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService$Stub;->getWlanApClientBlackList()Ljava/util/List;

    move-result-object v2

    .line 665
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 666
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 667
    goto/16 :goto_0

    .line 657
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_13
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService$Stub;->getWlanApClientWhiteList()Ljava/util/List;

    move-result-object v2

    .line 658
    .restart local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 659
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 660
    goto/16 :goto_0

    .line 650
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_14
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService$Stub;->getWifiApPolicies()I

    move-result v2

    .line 651
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 652
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 653
    goto/16 :goto_0

    .line 641
    .end local v2    # "_result":I
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 642
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 643
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService$Stub;->setWifiApPolicies(I)Z

    move-result v3

    .line 644
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 645
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 646
    goto/16 :goto_0

    .line 633
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_16
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService$Stub;->isWifiP2pDisabled()Z

    move-result v2

    .line 634
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 635
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 636
    goto/16 :goto_0

    .line 624
    .end local v2    # "_result":Z
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 625
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 626
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService$Stub;->setWifiP2pDisabled(Z)Z

    move-result v3

    .line 627
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 628
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 629
    goto/16 :goto_0

    .line 616
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_18
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService$Stub;->isWifiApDisabled()Z

    move-result v2

    .line 617
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 618
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 619
    goto/16 :goto_0

    .line 607
    .end local v2    # "_result":Z
    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 608
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 609
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService$Stub;->setWifiApDisabled(Z)Z

    move-result v3

    .line 610
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 611
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 612
    goto/16 :goto_0

    .line 599
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_1a
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService$Stub;->getSecurityLevel()I

    move-result v2

    .line 600
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 601
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 602
    goto/16 :goto_0

    .line 590
    .end local v2    # "_result":I
    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 591
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 592
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService$Stub;->setSecurityLevel(I)Z

    move-result v3

    .line 593
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 594
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 595
    goto/16 :goto_0

    .line 582
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_1c
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService$Stub;->isWifiAutoConnectionDisabled()Z

    move-result v2

    .line 583
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 584
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 585
    goto/16 :goto_0

    .line 573
    .end local v2    # "_result":Z
    :pswitch_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 574
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 575
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService$Stub;->setWifiAutoConnectionDisabled(Z)Z

    move-result v3

    .line 576
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 577
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 578
    goto/16 :goto_0

    .line 563
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 564
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 565
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService$Stub;->getWifiRestrictionList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 566
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 567
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 568
    goto/16 :goto_0

    .line 551
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 553
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 554
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 555
    invoke-virtual {p0, v2, v3}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService$Stub;->removeFromRestrictionList(Ljava/util/List;Ljava/lang/String;)Z

    move-result v4

    .line 556
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 557
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 558
    goto/16 :goto_0

    .line 539
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 541
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 542
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 543
    invoke-virtual {p0, v2, v3}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService$Stub;->setWifiRestrictionList(Ljava/util/List;Ljava/lang/String;)Z

    move-result v4

    .line 544
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 545
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 546
    goto/16 :goto_0

    .line 531
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_21
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService$Stub;->isWifiEditDisabled()Z

    move-result v2

    .line 532
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 533
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 534
    goto/16 :goto_0

    .line 522
    .end local v2    # "_result":Z
    :pswitch_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 523
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 524
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService$Stub;->setWifiEditDisabled(Z)Z

    move-result v3

    .line 525
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 526
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 527
    goto/16 :goto_0

    .line 512
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 513
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 514
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService$Stub;->removeBluetoothDevicesFromBlackLists(Ljava/util/List;)Z

    move-result v3

    .line 515
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 516
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 517
    goto/16 :goto_0

    .line 504
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "_result":Z
    :pswitch_24
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService$Stub;->getBluetoothDevicesFromBlackLists()Ljava/util/List;

    move-result-object v2

    .line 505
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 506
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 507
    goto/16 :goto_0

    .line 495
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 496
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 497
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService$Stub;->isBlackListedDevice(Ljava/lang/String;)Z

    move-result v3

    .line 498
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 499
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 500
    goto/16 :goto_0

    .line 485
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_26
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 486
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 487
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService$Stub;->addBluetoothDevicesToBlackLists(Ljava/util/List;)Z

    move-result v3

    .line 488
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 489
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 490
    goto/16 :goto_0

    .line 475
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "_result":Z
    :pswitch_27
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 476
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 477
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService$Stub;->removeBluetoothDevicesFromWhiteLists(Ljava/util/List;)Z

    move-result v3

    .line 478
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 479
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 480
    goto :goto_0

    .line 467
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "_result":Z
    :pswitch_28
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService$Stub;->getBluetoothDevicesFromWhiteLists()Ljava/util/List;

    move-result-object v2

    .line 468
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 469
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 470
    goto :goto_0

    .line 458
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 459
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 460
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService$Stub;->isWhiteListedDevice(Ljava/lang/String;)Z

    move-result v3

    .line 461
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 462
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 463
    goto :goto_0

    .line 448
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 449
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 450
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService$Stub;->addBluetoothDevicesToWhiteLists(Ljava/util/List;)Z

    move-result v3

    .line 451
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 452
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 453
    goto :goto_0

    .line 438
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "_result":Z
    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 439
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 440
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService$Stub;->setBluetoothPolicies(I)Z

    move-result v3

    .line 441
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 442
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 443
    goto :goto_0

    .line 430
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_2c
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService$Stub;->getBluetoothPolicies()I

    move-result v2

    .line 431
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 432
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 433
    goto :goto_0

    .line 423
    .end local v2    # "_result":I
    :pswitch_2d
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService$Stub;->isUserProfilesDisabled()Z

    move-result v2

    .line 424
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 425
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 426
    goto :goto_0

    .line 414
    .end local v2    # "_result":Z
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 415
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 416
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeConnectivityManagerService$Stub;->setUserProfilesDisabled(Z)Z

    move-result v3

    .line 417
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 418
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 419
    nop

    .line 830
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
