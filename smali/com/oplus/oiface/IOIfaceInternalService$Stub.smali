.class public abstract Lcom/oplus/oiface/IOIfaceInternalService$Stub;
.super Landroid/os/Binder;
.source "IOIfaceInternalService.java"

# interfaces
.implements Lcom/oplus/oiface/IOIfaceInternalService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/oiface/IOIfaceInternalService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/oiface/IOIfaceInternalService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.oplus.oiface.IOIfaceService"

.field static final blacklist TRANSACTION_bindGameTask:I = 0x7

.field static final blacklist TRANSACTION_currentNetwork:I = 0x1

.field static final blacklist TRANSACTION_currentPkgStatus:I = 0x323

.field static final blacklist TRANSACTION_enableHQV:I = 0xb

.field static final blacklist TRANSACTION_enableHapticScreenCaptureService:I = 0x385

.field static final blacklist TRANSACTION_generalOifaceSignal:I = 0x354

.field static final blacklist TRANSACTION_getAllLoadInfo:I = 0xd4

.field static final blacklist TRANSACTION_getBatteryCurrentNow:I = 0x3eb

.field static final blacklist TRANSACTION_getBatteryFCC:I = 0x3f8

.field static final blacklist TRANSACTION_getBatteryRemain:I = 0x3ea

.field static final blacklist TRANSACTION_getChipName:I = 0x3f6

.field static final blacklist TRANSACTION_getCpuAvailableFreqTable:I = 0x358

.field static final blacklist TRANSACTION_getCpuClusterInfo:I = 0x3f7

.field static final blacklist TRANSACTION_getCpuClusterNum:I = 0x357

.field static final blacklist TRANSACTION_getCpuCurrentFreq:I = 0x35a

.field static final blacklist TRANSACTION_getCpuLimitedFreqs:I = 0x359

.field static final blacklist TRANSACTION_getCpuLoads:I = 0x35b

.field static final blacklist TRANSACTION_getCpuTimeInState:I = 0x3f4

.field static final blacklist TRANSACTION_getCurrentGamePackage:I = 0x3f1

.field static final blacklist TRANSACTION_getDeviceID:I = 0x1f8

.field static final blacklist TRANSACTION_getFPS:I = 0x353

.field static final blacklist TRANSACTION_getGPASystemInfo:I = 0x3ed

.field static final blacklist TRANSACTION_getGameModeStatus:I = 0x3f0

.field static final blacklist TRANSACTION_getGpuAvailableFreqTable:I = 0x35c

.field static final blacklist TRANSACTION_getGpuCurrentFreq:I = 0x35e

.field static final blacklist TRANSACTION_getGpuLimitedFreqs:I = 0x35d

.field static final blacklist TRANSACTION_getGpuLoad:I = 0x35f

.field static final blacklist TRANSACTION_getInstalledGameList:I = 0x3f3

.field static final blacklist TRANSACTION_getSuperVOOCStatus:I = 0x3ec

.field static final blacklist TRANSACTION_getSupportGameStartPackage:I = 0xce

.field static final blacklist TRANSACTION_getThermalTemps:I = 0x360

.field static final blacklist TRANSACTION_notifyScreenEvent:I = 0x1f7

.field static final blacklist TRANSACTION_oifaceControl:I = 0x356

.field static final blacklist TRANSACTION_oifaceDecision:I = 0x355

.field static final blacklist TRANSACTION_registerClientThroughCosa:I = 0xa1

.field static final blacklist TRANSACTION_registerGameRoleListener:I = 0xcc

.field static final blacklist TRANSACTION_registerHQV:I = 0xc

.field static final blacklist TRANSACTION_registerNetworkListener:I = 0xca

.field static final blacklist TRANSACTION_registerOifaceCallback:I = 0x3e9

.field static final blacklist TRANSACTION_setCoolExFilterType:I = 0x3ee

.field static final blacklist TRANSACTION_setGCPEffectMode:I = 0xd3

.field static final blacklist TRANSACTION_setGameModeStatus:I = 0x3ef

.field static final blacklist TRANSACTION_setGeneralSignalCosa:I = 0xa2

.field static final blacklist TRANSACTION_setGyroscopeLevel:I = 0x388

.field static final blacklist TRANSACTION_setHalfHQV:I = 0xd

.field static final blacklist TRANSACTION_setInstalledGameList:I = 0x3f2

.field static final blacklist TRANSACTION_setPerfMode:I = 0x1f6

.field static final blacklist TRANSACTION_setTouchProtection:I = 0x389

.field static final blacklist TRANSACTION_setTouchResponsiveness:I = 0x387

.field static final blacklist TRANSACTION_setTouchSensibility:I = 0x386

.field static final blacklist TRANSACTION_triggerFrameStat:I = 0x3f5

.field static final blacklist TRANSACTION_unRegisterGameRoleListener:I = 0xcd


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 299
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 300
    const-string v0, "com.oplus.oiface.IOIfaceService"

    invoke-virtual {p0, p0, v0}, Lcom/oplus/oiface/IOIfaceInternalService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 301
    return-void
.end method

.method public static whitelist asInterface(Landroid/os/IBinder;)Lcom/oplus/oiface/IOIfaceInternalService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 308
    if-nez p0, :cond_0

    .line 309
    const/4 v0, 0x0

    return-object v0

    .line 311
    :cond_0
    const-string v0, "com.oplus.oiface.IOIfaceService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 312
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/oplus/oiface/IOIfaceInternalService;

    if-eqz v1, :cond_1

    .line 313
    move-object v1, v0

    check-cast v1, Lcom/oplus/oiface/IOIfaceInternalService;

    return-object v1

    .line 315
    :cond_1
    new-instance v1, Lcom/oplus/oiface/IOIfaceInternalService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/oplus/oiface/IOIfaceInternalService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static whitelist getDefaultImpl()Lcom/oplus/oiface/IOIfaceInternalService;
    .locals 1

    .line 1966
    sget-object v0, Lcom/oplus/oiface/IOIfaceInternalService$Stub$Proxy;->sDefaultImpl:Lcom/oplus/oiface/IOIfaceInternalService;

    return-object v0
.end method

.method public static whitelist setDefaultImpl(Lcom/oplus/oiface/IOIfaceInternalService;)Z
    .locals 1
    .param p0, "impl"    # Lcom/oplus/oiface/IOIfaceInternalService;

    .line 1959
    sget-object v0, Lcom/oplus/oiface/IOIfaceInternalService$Stub$Proxy;->sDefaultImpl:Lcom/oplus/oiface/IOIfaceInternalService;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 1960
    sput-object p0, Lcom/oplus/oiface/IOIfaceInternalService$Stub$Proxy;->sDefaultImpl:Lcom/oplus/oiface/IOIfaceInternalService;

    .line 1961
    const/4 v0, 0x1

    return v0

    .line 1963
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 319
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 323
    const-string v0, "com.oplus.oiface.IOIfaceService"

    .line 324
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    .line 834
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 328
    :sswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 329
    return v1

    .line 826
    :sswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 827
    invoke-virtual {p0}, Lcom/oplus/oiface/IOIfaceInternalService$Stub;->getBatteryFCC()I

    move-result v2

    .line 828
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 829
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 830
    return v1

    .line 818
    .end local v2    # "_result":I
    :sswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 819
    invoke-virtual {p0}, Lcom/oplus/oiface/IOIfaceInternalService$Stub;->getCpuClusterInfo()[I

    move-result-object v2

    .line 820
    .local v2, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 821
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 822
    return v1

    .line 810
    .end local v2    # "_result":[I
    :sswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 811
    invoke-virtual {p0}, Lcom/oplus/oiface/IOIfaceInternalService$Stub;->getChipName()Ljava/lang/String;

    move-result-object v2

    .line 812
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 813
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 814
    return v1

    .line 798
    .end local v2    # "_result":Ljava/lang/String;
    :sswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 800
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 802
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 803
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Lcom/oplus/oiface/IOIfaceInternalService$Stub;->triggerFrameStat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 804
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 805
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 806
    return v1

    .line 790
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 791
    invoke-virtual {p0}, Lcom/oplus/oiface/IOIfaceInternalService$Stub;->getCpuTimeInState()Ljava/lang/String;

    move-result-object v2

    .line 792
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 793
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 794
    return v1

    .line 782
    .end local v2    # "_result":Ljava/lang/String;
    :sswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 783
    invoke-virtual {p0}, Lcom/oplus/oiface/IOIfaceInternalService$Stub;->getInstalledGameList()[Ljava/lang/String;

    move-result-object v2

    .line 784
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 785
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 786
    return v1

    .line 773
    .end local v2    # "_result":[Ljava/lang/String;
    :sswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 775
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 776
    .local v2, "_arg0":[Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/oplus/oiface/IOIfaceInternalService$Stub;->setInstalledGameList([Ljava/lang/String;)V

    .line 777
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 778
    return v1

    .line 765
    .end local v2    # "_arg0":[Ljava/lang/String;
    :sswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 766
    invoke-virtual {p0}, Lcom/oplus/oiface/IOIfaceInternalService$Stub;->getCurrentGamePackage()Ljava/lang/String;

    move-result-object v2

    .line 767
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 768
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 769
    return v1

    .line 757
    .end local v2    # "_result":Ljava/lang/String;
    :sswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 758
    invoke-virtual {p0}, Lcom/oplus/oiface/IOIfaceInternalService$Stub;->getGameModeStatus()I

    move-result v2

    .line 759
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 760
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 761
    return v1

    .line 746
    .end local v2    # "_result":I
    :sswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 748
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 750
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 751
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Lcom/oplus/oiface/IOIfaceInternalService$Stub;->setGameModeStatus(ILjava/lang/String;)V

    .line 752
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 753
    return v1

    .line 735
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :sswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 737
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 739
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 740
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Lcom/oplus/oiface/IOIfaceInternalService$Stub;->setCoolExFilterType(ILjava/lang/String;)V

    .line 741
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 742
    return v1

    .line 727
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :sswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 728
    invoke-virtual {p0}, Lcom/oplus/oiface/IOIfaceInternalService$Stub;->getGPASystemInfo()[F

    move-result-object v2

    .line 729
    .local v2, "_result":[F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 730
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 731
    return v1

    .line 719
    .end local v2    # "_result":[F
    :sswitch_d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 720
    invoke-virtual {p0}, Lcom/oplus/oiface/IOIfaceInternalService$Stub;->getSuperVOOCStatus()I

    move-result v2

    .line 721
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 722
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 723
    return v1

    .line 711
    .end local v2    # "_result":I
    :sswitch_e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 712
    invoke-virtual {p0}, Lcom/oplus/oiface/IOIfaceInternalService$Stub;->getBatteryCurrentNow()F

    move-result v2

    .line 713
    .local v2, "_result":F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 714
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 715
    return v1

    .line 703
    .end local v2    # "_result":F
    :sswitch_f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 704
    invoke-virtual {p0}, Lcom/oplus/oiface/IOIfaceInternalService$Stub;->getBatteryRemain()I

    move-result v2

    .line 705
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 706
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 707
    return v1

    .line 694
    .end local v2    # "_result":I
    :sswitch_10
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 696
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/oplus/oiface/IOIfaceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/oiface/IOIfaceCallback;

    move-result-object v2

    .line 697
    .local v2, "_arg0":Lcom/oplus/oiface/IOIfaceCallback;
    invoke-virtual {p0, v2}, Lcom/oplus/oiface/IOIfaceInternalService$Stub;->registerOifaceCallback(Lcom/oplus/oiface/IOIfaceCallback;)V

    .line 698
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 699
    return v1

    .line 685
    .end local v2    # "_arg0":Lcom/oplus/oiface/IOIfaceCallback;
    :sswitch_11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 687
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 688
    .local v2, "_arg0":Z
    :goto_0
    invoke-virtual {p0, v2}, Lcom/oplus/oiface/IOIfaceInternalService$Stub;->setTouchProtection(Z)V

    .line 689
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 690
    return v1

    .line 676
    .end local v2    # "_arg0":Z
    :sswitch_12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 678
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 679
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Lcom/oplus/oiface/IOIfaceInternalService$Stub;->setGyroscopeLevel(I)V

    .line 680
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 681
    return v1

    .line 667
    .end local v2    # "_arg0":I
    :sswitch_13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 669
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 670
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/oplus/oiface/IOIfaceInternalService$Stub;->setTouchResponsiveness(I)V

    .line 671
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 672
    return v1

    .line 658
    .end local v2    # "_arg0":I
    :sswitch_14
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 660
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 661
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/oplus/oiface/IOIfaceInternalService$Stub;->setTouchSensibility(I)V

    .line 662
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 663
    return v1

    .line 649
    .end local v2    # "_arg0":I
    :sswitch_15
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 651
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 652
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/oplus/oiface/IOIfaceInternalService$Stub;->enableHapticScreenCaptureService(I)V

    .line 653
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 654
    return v1

    .line 639
    .end local v2    # "_arg0":I
    :sswitch_16
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 641
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 642
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/oplus/oiface/IOIfaceInternalService$Stub;->getThermalTemps(I)[F

    move-result-object v3

    .line 643
    .local v3, "_result":[F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 644
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 645
    return v1

    .line 631
    .end local v2    # "_arg0":I
    .end local v3    # "_result":[F
    :sswitch_17
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 632
    invoke-virtual {p0}, Lcom/oplus/oiface/IOIfaceInternalService$Stub;->getGpuLoad()F

    move-result v2

    .line 633
    .local v2, "_result":F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 634
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 635
    return v1

    .line 623
    .end local v2    # "_result":F
    :sswitch_18
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 624
    invoke-virtual {p0}, Lcom/oplus/oiface/IOIfaceInternalService$Stub;->getGpuCurrentFreq()J

    move-result-wide v2

    .line 625
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 626
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 627
    return v1

    .line 615
    .end local v2    # "_result":J
    :sswitch_19
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 616
    invoke-virtual {p0}, Lcom/oplus/oiface/IOIfaceInternalService$Stub;->getGpuLimitedFreqs()[J

    move-result-object v2

    .line 617
    .local v2, "_result":[J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 618
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 619
    return v1

    .line 607
    .end local v2    # "_result":[J
    :sswitch_1a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 608
    invoke-virtual {p0}, Lcom/oplus/oiface/IOIfaceInternalService$Stub;->getGpuAvailableFreqTable()[J

    move-result-object v2

    .line 609
    .restart local v2    # "_result":[J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 610
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 611
    return v1

    .line 597
    .end local v2    # "_result":[J
    :sswitch_1b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 599
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 600
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Lcom/oplus/oiface/IOIfaceInternalService$Stub;->getCpuLoads(I)[F

    move-result-object v3

    .line 601
    .restart local v3    # "_result":[F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 602
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 603
    return v1

    .line 587
    .end local v2    # "_arg0":I
    .end local v3    # "_result":[F
    :sswitch_1c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 589
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 590
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/oplus/oiface/IOIfaceInternalService$Stub;->getCpuCurrentFreq(I)[J

    move-result-object v3

    .line 591
    .local v3, "_result":[J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 592
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 593
    return v1

    .line 577
    .end local v2    # "_arg0":I
    .end local v3    # "_result":[J
    :sswitch_1d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 579
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 580
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/oplus/oiface/IOIfaceInternalService$Stub;->getCpuLimitedFreqs(I)[J

    move-result-object v3

    .line 581
    .restart local v3    # "_result":[J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 582
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 583
    return v1

    .line 567
    .end local v2    # "_arg0":I
    .end local v3    # "_result":[J
    :sswitch_1e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 569
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 570
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/oplus/oiface/IOIfaceInternalService$Stub;->getCpuAvailableFreqTable(I)[J

    move-result-object v3

    .line 571
    .restart local v3    # "_result":[J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 572
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 573
    return v1

    .line 559
    .end local v2    # "_arg0":I
    .end local v3    # "_result":[J
    :sswitch_1f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 560
    invoke-virtual {p0}, Lcom/oplus/oiface/IOIfaceInternalService$Stub;->getCpuClusterNum()I

    move-result v2

    .line 561
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 562
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 563
    return v1

    .line 550
    .end local v2    # "_result":I
    :sswitch_20
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 552
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 553
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/oplus/oiface/IOIfaceInternalService$Stub;->oifaceControl(Ljava/lang/String;)V

    .line 554
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 555
    return v1

    .line 541
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_21
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 543
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 544
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/oplus/oiface/IOIfaceInternalService$Stub;->oifaceDecision(Ljava/lang/String;)V

    .line 545
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 546
    return v1

    .line 531
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_22
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 533
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 534
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/oplus/oiface/IOIfaceInternalService$Stub;->generalOifaceSignal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 535
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 536
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 537
    return v1

    .line 519
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_23
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 521
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 523
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 524
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Lcom/oplus/oiface/IOIfaceInternalService$Stub;->getFPS(Ljava/lang/String;I)I

    move-result v4

    .line 525
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 526
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 527
    return v1

    .line 504
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :sswitch_24
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 506
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 508
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 510
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 512
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 513
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/oplus/oiface/IOIfaceInternalService$Stub;->currentPkgStatus(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 515
    return v1

    .line 496
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":Ljava/lang/String;
    :sswitch_25
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 497
    invoke-virtual {p0}, Lcom/oplus/oiface/IOIfaceInternalService$Stub;->getDeviceID()Ljava/lang/String;

    move-result-object v2

    .line 498
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 499
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 500
    return v1

    .line 487
    .end local v2    # "_result":Ljava/lang/String;
    :sswitch_26
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 489
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 490
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Lcom/oplus/oiface/IOIfaceInternalService$Stub;->notifyScreenEvent(I)V

    .line 491
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 492
    return v1

    .line 478
    .end local v2    # "_arg0":I
    :sswitch_27
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 480
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 481
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/oplus/oiface/IOIfaceInternalService$Stub;->setPerfMode(I)V

    .line 482
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 483
    return v1

    .line 458
    .end local v2    # "_arg0":I
    :sswitch_28
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 460
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 461
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/oplus/oiface/IOIfaceInternalService$Stub;->getAllLoadInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 462
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 463
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 464
    return v1

    .line 468
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_29
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 470
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 471
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Lcom/oplus/oiface/IOIfaceInternalService$Stub;->setGCPEffectMode(I)Ljava/lang/String;

    move-result-object v3

    .line 472
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 473
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 474
    return v1

    .line 450
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_2a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 451
    invoke-virtual {p0}, Lcom/oplus/oiface/IOIfaceInternalService$Stub;->getSupportGameStartPackage()Ljava/lang/String;

    move-result-object v2

    .line 452
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 453
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 454
    return v1

    .line 441
    .end local v2    # "_result":Ljava/lang/String;
    :sswitch_2b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 443
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/oplus/oiface/IOIfaceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/oiface/IOIfaceCallback;

    move-result-object v2

    .line 444
    .local v2, "_arg0":Lcom/oplus/oiface/IOIfaceCallback;
    invoke-virtual {p0, v2}, Lcom/oplus/oiface/IOIfaceInternalService$Stub;->unRegisterGameRoleListener(Lcom/oplus/oiface/IOIfaceCallback;)V

    .line 445
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 446
    return v1

    .line 428
    .end local v2    # "_arg0":Lcom/oplus/oiface/IOIfaceCallback;
    :sswitch_2c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 430
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 432
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 434
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/oplus/oiface/IOIfaceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/oiface/IOIfaceCallback;

    move-result-object v4

    .line 435
    .local v4, "_arg2":Lcom/oplus/oiface/IOIfaceCallback;
    invoke-virtual {p0, v2, v3, v4}, Lcom/oplus/oiface/IOIfaceInternalService$Stub;->registerGameRoleListener(ILjava/lang/String;Lcom/oplus/oiface/IOIfaceCallback;)V

    .line 436
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 437
    return v1

    .line 415
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Lcom/oplus/oiface/IOIfaceCallback;
    :sswitch_2d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 417
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 419
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 421
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/oplus/oiface/IOIfaceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/oiface/IOIfaceCallback;

    move-result-object v4

    .line 422
    .restart local v4    # "_arg2":Lcom/oplus/oiface/IOIfaceCallback;
    invoke-virtual {p0, v2, v3, v4}, Lcom/oplus/oiface/IOIfaceInternalService$Stub;->registerNetworkListener(IILcom/oplus/oiface/IOIfaceCallback;)V

    .line 423
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 424
    return v1

    .line 401
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Lcom/oplus/oiface/IOIfaceCallback;
    :sswitch_2e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 403
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 405
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 407
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 408
    .local v4, "_arg2":I
    invoke-virtual {p0, v2, v3, v4}, Lcom/oplus/oiface/IOIfaceInternalService$Stub;->setGeneralSignalCosa(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    .line 409
    .local v5, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 410
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 411
    return v1

    .line 385
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Ljava/lang/String;
    :sswitch_2f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 387
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/oplus/oiface/IOIfaceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/oiface/IOIfaceCallback;

    move-result-object v2

    .line 389
    .local v2, "_arg0":Lcom/oplus/oiface/IOIfaceCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 391
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 393
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 394
    .local v5, "_arg3":I
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/oplus/oiface/IOIfaceInternalService$Stub;->registerClientThroughCosa(Lcom/oplus/oiface/IOIfaceCallback;Ljava/lang/String;II)I

    move-result v6

    .line 395
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 396
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 397
    return v1

    .line 376
    .end local v2    # "_arg0":Lcom/oplus/oiface/IOIfaceCallback;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    .end local v6    # "_result":I
    :sswitch_30
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 378
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 379
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Lcom/oplus/oiface/IOIfaceInternalService$Stub;->setHalfHQV(I)V

    .line 380
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 381
    return v1

    .line 362
    .end local v2    # "_arg0":I
    :sswitch_31
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 366
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 368
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 369
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v2, v3, v4}, Lcom/oplus/oiface/IOIfaceInternalService$Stub;->registerHQV(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 370
    .local v5, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 371
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 372
    return v1

    .line 353
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Ljava/lang/String;
    :sswitch_32
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 355
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 356
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Lcom/oplus/oiface/IOIfaceInternalService$Stub;->enableHQV(I)V

    .line 357
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    return v1

    .line 342
    .end local v2    # "_arg0":I
    :sswitch_33
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 344
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 346
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 347
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Lcom/oplus/oiface/IOIfaceInternalService$Stub;->bindGameTask(II)V

    .line 348
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 349
    return v1

    .line 333
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :sswitch_34
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 336
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/oplus/oiface/IOIfaceInternalService$Stub;->currentNetwork(I)V

    .line 337
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 338
    return v1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_34
        0x7 -> :sswitch_33
        0xb -> :sswitch_32
        0xc -> :sswitch_31
        0xd -> :sswitch_30
        0xa1 -> :sswitch_2f
        0xa2 -> :sswitch_2e
        0xca -> :sswitch_2d
        0xcc -> :sswitch_2c
        0xcd -> :sswitch_2b
        0xce -> :sswitch_2a
        0xd3 -> :sswitch_29
        0xd4 -> :sswitch_28
        0x1f6 -> :sswitch_27
        0x1f7 -> :sswitch_26
        0x1f8 -> :sswitch_25
        0x323 -> :sswitch_24
        0x353 -> :sswitch_23
        0x354 -> :sswitch_22
        0x355 -> :sswitch_21
        0x356 -> :sswitch_20
        0x357 -> :sswitch_1f
        0x358 -> :sswitch_1e
        0x359 -> :sswitch_1d
        0x35a -> :sswitch_1c
        0x35b -> :sswitch_1b
        0x35c -> :sswitch_1a
        0x35d -> :sswitch_19
        0x35e -> :sswitch_18
        0x35f -> :sswitch_17
        0x360 -> :sswitch_16
        0x385 -> :sswitch_15
        0x386 -> :sswitch_14
        0x387 -> :sswitch_13
        0x388 -> :sswitch_12
        0x389 -> :sswitch_11
        0x3e9 -> :sswitch_10
        0x3ea -> :sswitch_f
        0x3eb -> :sswitch_e
        0x3ec -> :sswitch_d
        0x3ed -> :sswitch_c
        0x3ee -> :sswitch_b
        0x3ef -> :sswitch_a
        0x3f0 -> :sswitch_9
        0x3f1 -> :sswitch_8
        0x3f2 -> :sswitch_7
        0x3f3 -> :sswitch_6
        0x3f4 -> :sswitch_5
        0x3f5 -> :sswitch_4
        0x3f6 -> :sswitch_3
        0x3f7 -> :sswitch_2
        0x3f8 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
