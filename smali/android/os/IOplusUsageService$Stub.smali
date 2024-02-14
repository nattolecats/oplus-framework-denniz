.class public abstract Landroid/os/IOplusUsageService$Stub;
.super Landroid/os/Binder;
.source "IOplusUsageService.java"

# interfaces
.implements Landroid/os/IOplusUsageService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IOplusUsageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IOplusUsageService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_accumulateDialOutDuration:I = 0x11

.field static final blacklist TRANSACTION_accumulateHistoryCountOfReceivedMsg:I = 0xe

.field static final blacklist TRANSACTION_accumulateHistoryCountOfSendedMsg:I = 0xd

.field static final blacklist TRANSACTION_accumulateInComingCallDuration:I = 0x12

.field static final blacklist TRANSACTION_deleteOplusFile:I = 0x31

.field static final blacklist TRANSACTION_engineerReadDevBlock:I = 0x1d

.field static final blacklist TRANSACTION_engineerWriteDevBlock:I = 0x1e

.field static final blacklist TRANSACTION_getApkDeleteEventRecordCount:I = 0x25

.field static final blacklist TRANSACTION_getApkDeleteEventRecords:I = 0x26

.field static final blacklist TRANSACTION_getApkInstallEventRecordCount:I = 0x28

.field static final blacklist TRANSACTION_getApkInstallEventRecords:I = 0x29

.field static final blacklist TRANSACTION_getAppUsageCountHistoryRecords:I = 0x8

.field static final blacklist TRANSACTION_getAppUsageHistoryRecordCount:I = 0x6

.field static final blacklist TRANSACTION_getAppUsageHistoryRecords:I = 0x7

.field static final blacklist TRANSACTION_getDialCountHistoryRecords:I = 0x9

.field static final blacklist TRANSACTION_getDialOutDuration:I = 0xf

.field static final blacklist TRANSACTION_getDownloadStatusString:I = 0x1f

.field static final blacklist TRANSACTION_getFileSize:I = 0x2c

.field static final blacklist TRANSACTION_getHistoryBootTime:I = 0x2

.field static final blacklist TRANSACTION_getHistoryCountOfReceivedMsg:I = 0xc

.field static final blacklist TRANSACTION_getHistoryCountOfSendedMsg:I = 0xb

.field static final blacklist TRANSACTION_getHistoryImeiNO:I = 0x4

.field static final blacklist TRANSACTION_getHistoryPcbaNO:I = 0x5

.field static final blacklist TRANSACTION_getHistoryRecordsCountOfPhoneCalls:I = 0x13

.field static final blacklist TRANSACTION_getInComingCallDuration:I = 0x10

.field static final blacklist TRANSACTION_getMaxChargeCurrent:I = 0x19

.field static final blacklist TRANSACTION_getMaxChargeTemperature:I = 0x18

.field static final blacklist TRANSACTION_getMcsConnectID:I = 0x2b

.field static final blacklist TRANSACTION_getMinChargeTemperature:I = 0x17

.field static final blacklist TRANSACTION_getOriginalSimcardData:I = 0x3

.field static final blacklist TRANSACTION_getPhoneCallHistoryRecords:I = 0x14

.field static final blacklist TRANSACTION_getProductLineLastTestFlag:I = 0x23

.field static final blacklist TRANSACTION_loadSecrecyConfig:I = 0x21

.field static final blacklist TRANSACTION_readEntireOplusDir:I = 0x33

.field static final blacklist TRANSACTION_readEntireOplusFile:I = 0x30

.field static final blacklist TRANSACTION_readOplusFile:I = 0x2d

.field static final blacklist TRANSACTION_recordApkDeleteEvent:I = 0x24

.field static final blacklist TRANSACTION_recordApkInstallEvent:I = 0x27

.field static final blacklist TRANSACTION_recordMcsConnectID:I = 0x2a

.field static final blacklist TRANSACTION_saveEntireOplusDir:I = 0x32

.field static final blacklist TRANSACTION_saveEntireOplusFile:I = 0x2f

.field static final blacklist TRANSACTION_saveOplusFile:I = 0x2e

.field static final blacklist TRANSACTION_saveSecrecyConfig:I = 0x20

.field static final blacklist TRANSACTION_setProductLineLastTestFlag:I = 0x22

.field static final blacklist TRANSACTION_shutDown:I = 0x16

.field static final blacklist TRANSACTION_testSaveSomeData:I = 0x1

.field static final blacklist TRANSACTION_updateMaxChargeCurrent:I = 0x1c

.field static final blacklist TRANSACTION_updateMaxChargeTemperature:I = 0x1b

.field static final blacklist TRANSACTION_updateMinChargeTemperature:I = 0x1a

.field static final blacklist TRANSACTION_writeAppUsageHistoryRecord:I = 0xa

.field static final blacklist TRANSACTION_writePhoneCallHistoryRecord:I = 0x15


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 289
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 290
    const-string v0, "android.os.IOplusUsageService"

    invoke-virtual {p0, p0, v0}, Landroid/os/IOplusUsageService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 291
    return-void
.end method

.method public static whitelist asInterface(Landroid/os/IBinder;)Landroid/os/IOplusUsageService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 298
    if-nez p0, :cond_0

    .line 299
    const/4 v0, 0x0

    return-object v0

    .line 301
    :cond_0
    const-string v0, "android.os.IOplusUsageService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 302
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IOplusUsageService;

    if-eqz v1, :cond_1

    .line 303
    move-object v1, v0

    check-cast v1, Landroid/os/IOplusUsageService;

    return-object v1

    .line 305
    :cond_1
    new-instance v1, Landroid/os/IOplusUsageService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IOplusUsageService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 309
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

    .line 313
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p3

    const-string v10, "android.os.IOplusUsageService"

    .line 314
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v8, v11, :cond_0

    const v0, 0xffffff

    if-gt v8, v0, :cond_0

    .line 315
    move-object/from16 v12, p2

    invoke-virtual {v12, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_0

    .line 314
    :cond_0
    move-object/from16 v12, p2

    .line 317
    :goto_0
    packed-switch v8, :pswitch_data_0

    .line 325
    packed-switch v8, :pswitch_data_1

    .line 844
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 321
    :pswitch_0
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 322
    return v11

    .line 831
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 833
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 835
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 836
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 837
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/IOplusUsageService$Stub;->readEntireOplusDir(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    .line 838
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 839
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 840
    goto/16 :goto_1

    .line 817
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Z
    .end local v3    # "_result":Z
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 819
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 821
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 822
    .restart local v2    # "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 823
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/IOplusUsageService$Stub;->saveEntireOplusDir(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    .line 824
    .restart local v3    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 825
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 826
    goto/16 :goto_1

    .line 807
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Z
    .end local v3    # "_result":Z
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 808
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 809
    invoke-virtual {v7, v0}, Landroid/os/IOplusUsageService$Stub;->deleteOplusFile(Ljava/lang/String;)Z

    move-result v1

    .line 810
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 811
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 812
    goto/16 :goto_1

    .line 793
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 795
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 797
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 798
    .restart local v2    # "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 799
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/IOplusUsageService$Stub;->readEntireOplusFile(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    .line 800
    .restart local v3    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 801
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 802
    goto/16 :goto_1

    .line 779
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Z
    .end local v3    # "_result":Z
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 781
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 783
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 784
    .restart local v2    # "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 785
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/IOplusUsageService$Stub;->saveEntireOplusFile(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v3

    .line 786
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 787
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 788
    goto/16 :goto_1

    .line 759
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Z
    .end local v3    # "_result":I
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 761
    .local v13, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 763
    .local v14, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 765
    .local v15, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    .line 767
    .local v16, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 769
    .local v17, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v18

    .line 770
    .local v18, "_arg5":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 771
    move-object/from16 v0, p0

    move v1, v13

    move-object v2, v14

    move v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/os/IOplusUsageService$Stub;->saveOplusFile(ILjava/lang/String;IZI[B)I

    move-result v0

    .line 772
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 773
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 774
    goto/16 :goto_1

    .line 745
    .end local v0    # "_result":I
    .end local v13    # "_arg0":I
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":Z
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":[B
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 747
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 749
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 750
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 751
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/IOplusUsageService$Stub;->readOplusFile(Ljava/lang/String;II)[B

    move-result-object v3

    .line 752
    .local v3, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 753
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 754
    goto/16 :goto_1

    .line 735
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":[B
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 736
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 737
    invoke-virtual {v7, v0}, Landroid/os/IOplusUsageService$Stub;->getFileSize(Ljava/lang/String;)I

    move-result v1

    .line 738
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 739
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 740
    goto/16 :goto_1

    .line 727
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Landroid/os/IOplusUsageService$Stub;->getMcsConnectID()Ljava/lang/String;

    move-result-object v0

    .line 728
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 729
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 730
    goto/16 :goto_1

    .line 718
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 719
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 720
    invoke-virtual {v7, v0}, Landroid/os/IOplusUsageService$Stub;->recordMcsConnectID(Ljava/lang/String;)Z

    move-result v1

    .line 721
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 722
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 723
    goto/16 :goto_1

    .line 706
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 708
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 709
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 710
    invoke-virtual {v7, v0, v1}, Landroid/os/IOplusUsageService$Stub;->getApkInstallEventRecords(II)Ljava/util/List;

    move-result-object v2

    .line 711
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 712
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 713
    goto/16 :goto_1

    .line 698
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_c
    invoke-virtual/range {p0 .. p0}, Landroid/os/IOplusUsageService$Stub;->getApkInstallEventRecordCount()I

    move-result v0

    .line 699
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 700
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 701
    goto/16 :goto_1

    .line 685
    .end local v0    # "_result":I
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 687
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 689
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 690
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 691
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/IOplusUsageService$Stub;->recordApkInstallEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 692
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 693
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 694
    goto/16 :goto_1

    .line 673
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 675
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 676
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 677
    invoke-virtual {v7, v0, v1}, Landroid/os/IOplusUsageService$Stub;->getApkDeleteEventRecords(II)Ljava/util/List;

    move-result-object v2

    .line 678
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 679
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 680
    goto/16 :goto_1

    .line 665
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_f
    invoke-virtual/range {p0 .. p0}, Landroid/os/IOplusUsageService$Stub;->getApkDeleteEventRecordCount()I

    move-result v0

    .line 666
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 667
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 668
    goto/16 :goto_1

    .line 652
    .end local v0    # "_result":I
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 654
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 656
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 657
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 658
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/IOplusUsageService$Stub;->recordApkDeleteEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 659
    .restart local v3    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 660
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 661
    goto/16 :goto_1

    .line 644
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_11
    invoke-virtual/range {p0 .. p0}, Landroid/os/IOplusUsageService$Stub;->getProductLineLastTestFlag()I

    move-result v0

    .line 645
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 646
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 647
    goto/16 :goto_1

    .line 635
    .end local v0    # "_result":I
    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 636
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 637
    invoke-virtual {v7, v0}, Landroid/os/IOplusUsageService$Stub;->setProductLineLastTestFlag(I)Z

    move-result v1

    .line 638
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 639
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 640
    goto/16 :goto_1

    .line 627
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_13
    invoke-virtual/range {p0 .. p0}, Landroid/os/IOplusUsageService$Stub;->loadSecrecyConfig()Ljava/lang/String;

    move-result-object v0

    .line 628
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 629
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 630
    goto/16 :goto_1

    .line 618
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 619
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 620
    invoke-virtual {v7, v0}, Landroid/os/IOplusUsageService$Stub;->saveSecrecyConfig(Ljava/lang/String;)I

    move-result v1

    .line 621
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 622
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 623
    goto/16 :goto_1

    .line 608
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 609
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 610
    invoke-virtual {v7, v0}, Landroid/os/IOplusUsageService$Stub;->getDownloadStatusString(I)Ljava/lang/String;

    move-result-object v1

    .line 611
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 612
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 613
    goto/16 :goto_1

    .line 594
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 596
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 598
    .local v1, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 599
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 600
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/IOplusUsageService$Stub;->engineerWriteDevBlock(Ljava/lang/String;[BI)I

    move-result v3

    .line 601
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 602
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 603
    goto/16 :goto_1

    .line 580
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":[B
    .end local v2    # "_arg2":I
    .end local v3    # "_result":I
    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 582
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 584
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 585
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 586
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/IOplusUsageService$Stub;->engineerReadDevBlock(Ljava/lang/String;II)[B

    move-result-object v3

    .line 587
    .local v3, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 588
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 589
    goto/16 :goto_1

    .line 570
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":[B
    :pswitch_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 571
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 572
    invoke-virtual {v7, v0}, Landroid/os/IOplusUsageService$Stub;->updateMaxChargeCurrent(I)Z

    move-result v1

    .line 573
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 574
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 575
    goto/16 :goto_1

    .line 560
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 561
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 562
    invoke-virtual {v7, v0}, Landroid/os/IOplusUsageService$Stub;->updateMaxChargeTemperature(I)Z

    move-result v1

    .line 563
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 564
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 565
    goto/16 :goto_1

    .line 550
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 551
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 552
    invoke-virtual {v7, v0}, Landroid/os/IOplusUsageService$Stub;->updateMinChargeTemperature(I)Z

    move-result v1

    .line 553
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 554
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 555
    goto/16 :goto_1

    .line 542
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_1b
    invoke-virtual/range {p0 .. p0}, Landroid/os/IOplusUsageService$Stub;->getMaxChargeCurrent()I

    move-result v0

    .line 543
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 544
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 545
    goto/16 :goto_1

    .line 535
    .end local v0    # "_result":I
    :pswitch_1c
    invoke-virtual/range {p0 .. p0}, Landroid/os/IOplusUsageService$Stub;->getMaxChargeTemperature()I

    move-result v0

    .line 536
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 537
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 538
    goto/16 :goto_1

    .line 528
    .end local v0    # "_result":I
    :pswitch_1d
    invoke-virtual/range {p0 .. p0}, Landroid/os/IOplusUsageService$Stub;->getMinChargeTemperature()I

    move-result v0

    .line 529
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 530
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 531
    goto/16 :goto_1

    .line 522
    .end local v0    # "_result":I
    :pswitch_1e
    invoke-virtual/range {p0 .. p0}, Landroid/os/IOplusUsageService$Stub;->shutDown()V

    .line 523
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 524
    goto/16 :goto_1

    .line 511
    :pswitch_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 513
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 514
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 515
    invoke-virtual {v7, v0, v1}, Landroid/os/IOplusUsageService$Stub;->writePhoneCallHistoryRecord(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 516
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 517
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 518
    goto/16 :goto_1

    .line 499
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 501
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 502
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 503
    invoke-virtual {v7, v0, v1}, Landroid/os/IOplusUsageService$Stub;->getPhoneCallHistoryRecords(II)Ljava/util/List;

    move-result-object v2

    .line 504
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 505
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 506
    goto/16 :goto_1

    .line 491
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_21
    invoke-virtual/range {p0 .. p0}, Landroid/os/IOplusUsageService$Stub;->getHistoryRecordsCountOfPhoneCalls()I

    move-result v0

    .line 492
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 493
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 494
    goto/16 :goto_1

    .line 482
    .end local v0    # "_result":I
    :pswitch_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 483
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 484
    invoke-virtual {v7, v0}, Landroid/os/IOplusUsageService$Stub;->accumulateInComingCallDuration(I)Z

    move-result v1

    .line 485
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 486
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 487
    goto/16 :goto_1

    .line 472
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 473
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 474
    invoke-virtual {v7, v0}, Landroid/os/IOplusUsageService$Stub;->accumulateDialOutDuration(I)Z

    move-result v1

    .line 475
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 476
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 477
    goto/16 :goto_1

    .line 464
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_24
    invoke-virtual/range {p0 .. p0}, Landroid/os/IOplusUsageService$Stub;->getInComingCallDuration()I

    move-result v0

    .line 465
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 466
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 467
    goto/16 :goto_1

    .line 457
    .end local v0    # "_result":I
    :pswitch_25
    invoke-virtual/range {p0 .. p0}, Landroid/os/IOplusUsageService$Stub;->getDialOutDuration()I

    move-result v0

    .line 458
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 459
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 460
    goto/16 :goto_1

    .line 448
    .end local v0    # "_result":I
    :pswitch_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 449
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 450
    invoke-virtual {v7, v0}, Landroid/os/IOplusUsageService$Stub;->accumulateHistoryCountOfReceivedMsg(I)Z

    move-result v1

    .line 451
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 452
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 453
    goto/16 :goto_1

    .line 438
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 439
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 440
    invoke-virtual {v7, v0}, Landroid/os/IOplusUsageService$Stub;->accumulateHistoryCountOfSendedMsg(I)Z

    move-result v1

    .line 441
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 442
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 443
    goto/16 :goto_1

    .line 430
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_28
    invoke-virtual/range {p0 .. p0}, Landroid/os/IOplusUsageService$Stub;->getHistoryCountOfReceivedMsg()I

    move-result v0

    .line 431
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 432
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 433
    goto/16 :goto_1

    .line 423
    .end local v0    # "_result":I
    :pswitch_29
    invoke-virtual/range {p0 .. p0}, Landroid/os/IOplusUsageService$Stub;->getHistoryCountOfSendedMsg()I

    move-result v0

    .line 424
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 425
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 426
    goto/16 :goto_1

    .line 412
    .end local v0    # "_result":I
    :pswitch_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 414
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 415
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 416
    invoke-virtual {v7, v0, v1}, Landroid/os/IOplusUsageService$Stub;->writeAppUsageHistoryRecord(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 417
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 418
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 419
    goto/16 :goto_1

    .line 400
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 402
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 403
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 404
    invoke-virtual {v7, v0, v1}, Landroid/os/IOplusUsageService$Stub;->getDialCountHistoryRecords(II)Ljava/util/List;

    move-result-object v2

    .line 405
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 406
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 407
    goto/16 :goto_1

    .line 388
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 390
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 391
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 392
    invoke-virtual {v7, v0, v1}, Landroid/os/IOplusUsageService$Stub;->getAppUsageCountHistoryRecords(II)Ljava/util/List;

    move-result-object v2

    .line 393
    .restart local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 394
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 395
    goto :goto_1

    .line 376
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_2d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 378
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 379
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 380
    invoke-virtual {v7, v0, v1}, Landroid/os/IOplusUsageService$Stub;->getAppUsageHistoryRecords(II)Ljava/util/List;

    move-result-object v2

    .line 381
    .restart local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 382
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 383
    goto :goto_1

    .line 368
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_2e
    invoke-virtual/range {p0 .. p0}, Landroid/os/IOplusUsageService$Stub;->getAppUsageHistoryRecordCount()I

    move-result v0

    .line 369
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 370
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 371
    goto :goto_1

    .line 361
    .end local v0    # "_result":I
    :pswitch_2f
    invoke-virtual/range {p0 .. p0}, Landroid/os/IOplusUsageService$Stub;->getHistoryPcbaNO()Ljava/util/List;

    move-result-object v0

    .line 362
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 363
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 364
    goto :goto_1

    .line 354
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_30
    invoke-virtual/range {p0 .. p0}, Landroid/os/IOplusUsageService$Stub;->getHistoryImeiNO()Ljava/util/List;

    move-result-object v0

    .line 355
    .restart local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 356
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 357
    goto :goto_1

    .line 347
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_31
    invoke-virtual/range {p0 .. p0}, Landroid/os/IOplusUsageService$Stub;->getOriginalSimcardData()Ljava/util/List;

    move-result-object v0

    .line 348
    .restart local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 349
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 350
    goto :goto_1

    .line 340
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_32
    invoke-virtual/range {p0 .. p0}, Landroid/os/IOplusUsageService$Stub;->getHistoryBootTime()Ljava/util/List;

    move-result-object v0

    .line 341
    .restart local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 342
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 343
    goto :goto_1

    .line 330
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 332
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 333
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 334
    invoke-virtual {v7, v0, v1}, Landroid/os/IOplusUsageService$Stub;->testSaveSomeData(ILjava/lang/String;)V

    .line 335
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 336
    nop

    .line 847
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :goto_1
    return v11

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
