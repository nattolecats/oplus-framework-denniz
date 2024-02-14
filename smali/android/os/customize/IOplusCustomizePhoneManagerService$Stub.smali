.class public abstract Landroid/os/customize/IOplusCustomizePhoneManagerService$Stub;
.super Landroid/os/Binder;
.source "IOplusCustomizePhoneManagerService.java"

# interfaces
.implements Landroid/os/customize/IOplusCustomizePhoneManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/customize/IOplusCustomizePhoneManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/customize/IOplusCustomizePhoneManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addPreciseCallStateChangedCallback:I = 0x32

.field static final blacklist TRANSACTION_answerRingingCall:I = 0x2d

.field static final blacklist TRANSACTION_endCall:I = 0x1e

.field static final blacklist TRANSACTION_getDefaultVoiceCard:I = 0x28

.field static final blacklist TRANSACTION_getPropSetNonEmergencyCallDisabled:I = 0x2

.field static final blacklist TRANSACTION_getSlot1SmsLimitation:I = 0x12

.field static final blacklist TRANSACTION_getSlot1SmsReceiveDisabled:I = 0x16

.field static final blacklist TRANSACTION_getSlot1SmsSendDisabled:I = 0x18

.field static final blacklist TRANSACTION_getSlot2SmsLimitation:I = 0x13

.field static final blacklist TRANSACTION_getSlot2SmsReceiveDisabled:I = 0x17

.field static final blacklist TRANSACTION_getSlot2SmsSendDisabled:I = 0x19

.field static final blacklist TRANSACTION_isCallForwardSettingDisabled:I = 0x4

.field static final blacklist TRANSACTION_isEnablePhoneCallLimit:I = 0x6

.field static final blacklist TRANSACTION_isInComingThirdCallDisabled:I = 0x26

.field static final blacklist TRANSACTION_isRoamingCallDisabled:I = 0x24

.field static final blacklist TRANSACTION_isSlotDisabled:I = 0x2c

.field static final blacklist TRANSACTION_isSlotTwoDisabled:I = 0x2a

.field static final blacklist TRANSACTION_propEnablePhoneCallLimit:I = 0x5

.field static final blacklist TRANSACTION_propGetPhoneCallLimitation:I = 0x8

.field static final blacklist TRANSACTION_propGetSms1LimitationTime:I = 0x2f

.field static final blacklist TRANSACTION_propGetSms2LimitationTime:I = 0x2e

.field static final blacklist TRANSACTION_propRemoveCallLimitation:I = 0x9

.field static final blacklist TRANSACTION_propSetCallForwardSettingDisabled:I = 0x3

.field static final blacklist TRANSACTION_propSetCallLimitTime:I = 0xa

.field static final blacklist TRANSACTION_propSetNonEmergencyCallDisabled:I = 0x1

.field static final blacklist TRANSACTION_propSetPhoneCallLimitation:I = 0x7

.field static final blacklist TRANSACTION_removePreciseCallStateChangedCallback:I = 0x33

.field static final blacklist TRANSACTION_removeSlot1SmsLimitation:I = 0x14

.field static final blacklist TRANSACTION_removeSlot2SmsLimitation:I = 0x15

.field static final blacklist TRANSACTION_removeSmsLimitation:I = 0x11

.field static final blacklist TRANSACTION_setDefaultVoiceCard:I = 0x27

.field static final blacklist TRANSACTION_setIncomingThirdCallDisabled:I = 0x25

.field static final blacklist TRANSACTION_setRoamingCallDisabled:I = 0x23

.field static final blacklist TRANSACTION_setSlot1SmsLimitation:I = 0xf

.field static final blacklist TRANSACTION_setSlot1SmsReceiveDisabled:I = 0xc

.field static final blacklist TRANSACTION_setSlot1SmsSendDisabled:I = 0xb

.field static final blacklist TRANSACTION_setSlot2SmsLimitation:I = 0x10

.field static final blacklist TRANSACTION_setSlot2SmsReceiveDisabled:I = 0xe

.field static final blacklist TRANSACTION_setSlot2SmsSendDisabled:I = 0xd

.field static final blacklist TRANSACTION_setSlotDisabled:I = 0x2b

.field static final blacklist TRANSACTION_setSlotOneSmsLimitation:I = 0x30

.field static final blacklist TRANSACTION_setSlotTwoDisabled:I = 0x29

.field static final blacklist TRANSACTION_setSlotTwoSmsLimitation:I = 0x31

.field static final blacklist TRANSACTION_setVoiceIncomingDisabledforSlot1:I = 0x1f

.field static final blacklist TRANSACTION_setVoiceIncomingDisabledforSlot2:I = 0x21

.field static final blacklist TRANSACTION_setVoiceOutgoingDisabledforSlot1:I = 0x20

.field static final blacklist TRANSACTION_setVoiceOutgoingDisabledforSlot2:I = 0x22

.field static final blacklist TRANSACTION_showSlot1SmsTimes:I = 0x1a

.field static final blacklist TRANSACTION_showSlot2SmsTimes:I = 0x1c

.field static final blacklist TRANSACTION_storeSlot1SmsTimes:I = 0x1b

.field static final blacklist TRANSACTION_storeSlot2SmsTimes:I = 0x1d


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 288
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 289
    const-string v0, "android.os.customize.IOplusCustomizePhoneManagerService"

    invoke-virtual {p0, p0, v0}, Landroid/os/customize/IOplusCustomizePhoneManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 290
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/os/customize/IOplusCustomizePhoneManagerService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 297
    if-nez p0, :cond_0

    .line 298
    const/4 v0, 0x0

    return-object v0

    .line 300
    :cond_0
    const-string v0, "android.os.customize.IOplusCustomizePhoneManagerService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 301
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/customize/IOplusCustomizePhoneManagerService;

    if-eqz v1, :cond_1

    .line 302
    move-object v1, v0

    check-cast v1, Landroid/os/customize/IOplusCustomizePhoneManagerService;

    return-object v1

    .line 304
    :cond_1
    new-instance v1, Landroid/os/customize/IOplusCustomizePhoneManagerService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/customize/IOplusCustomizePhoneManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 308
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

    .line 312
    const-string v0, "android.os.customize.IOplusCustomizePhoneManagerService"

    .line 313
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 314
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 316
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 324
    packed-switch p1, :pswitch_data_1

    .line 859
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 320
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 321
    return v1

    .line 851
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/customize/IOplusPreciseCallStateChangedInnerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/customize/IOplusPreciseCallStateChangedInnerCallback;

    move-result-object v2

    .line 852
    .local v2, "_arg0":Landroid/os/customize/IOplusPreciseCallStateChangedInnerCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 853
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizePhoneManagerService$Stub;->removePreciseCallStateChangedCallback(Landroid/os/customize/IOplusPreciseCallStateChangedInnerCallback;)V

    .line 854
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 855
    goto/16 :goto_0

    .line 842
    .end local v2    # "_arg0":Landroid/os/customize/IOplusPreciseCallStateChangedInnerCallback;
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/customize/IOplusPreciseCallStateChangedInnerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/customize/IOplusPreciseCallStateChangedInnerCallback;

    move-result-object v2

    .line 843
    .restart local v2    # "_arg0":Landroid/os/customize/IOplusPreciseCallStateChangedInnerCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 844
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizePhoneManagerService$Stub;->addPreciseCallStateChangedCallback(Landroid/os/customize/IOplusPreciseCallStateChangedInnerCallback;)V

    .line 845
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 846
    goto/16 :goto_0

    .line 826
    .end local v2    # "_arg0":Landroid/os/customize/IOplusPreciseCallStateChangedInnerCallback;
    :pswitch_3
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 828
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 830
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 832
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 833
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 834
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/os/customize/IOplusCustomizePhoneManagerService$Stub;->setSlotTwoSmsLimitation(Landroid/content/ComponentName;ZII)Z

    move-result v6

    .line 835
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 836
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 837
    goto/16 :goto_0

    .line 810
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    .end local v6    # "_result":Z
    :pswitch_4
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 812
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 814
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 816
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 817
    .restart local v5    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 818
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/os/customize/IOplusCustomizePhoneManagerService$Stub;->setSlotOneSmsLimitation(Landroid/content/ComponentName;ZII)Z

    move-result v6

    .line 819
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 820
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 821
    goto/16 :goto_0

    .line 800
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    .end local v6    # "_result":Z
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 801
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 802
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizePhoneManagerService$Stub;->propGetSms1LimitationTime(Z)J

    move-result-wide v3

    .line 803
    .local v3, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 804
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 805
    goto/16 :goto_0

    .line 790
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":J
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 791
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 792
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizePhoneManagerService$Stub;->propGetSms2LimitationTime(Z)J

    move-result-wide v3

    .line 793
    .restart local v3    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 794
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 795
    goto/16 :goto_0

    .line 783
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":J
    :pswitch_7
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizePhoneManagerService$Stub;->answerRingingCall()V

    .line 784
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 785
    goto/16 :goto_0

    .line 772
    :pswitch_8
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 774
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 775
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 776
    invoke-virtual {p0, v2, v3}, Landroid/os/customize/IOplusCustomizePhoneManagerService$Stub;->isSlotDisabled(Landroid/content/ComponentName;I)Z

    move-result v4

    .line 777
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 778
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 779
    goto/16 :goto_0

    .line 759
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_9
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 761
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 763
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 764
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 765
    invoke-virtual {p0, v2, v3, v4}, Landroid/os/customize/IOplusCustomizePhoneManagerService$Stub;->setSlotDisabled(Landroid/content/ComponentName;IZ)V

    .line 766
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 767
    goto/16 :goto_0

    .line 751
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Z
    :pswitch_a
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizePhoneManagerService$Stub;->isSlotTwoDisabled()Z

    move-result v2

    .line 752
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 753
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 754
    goto/16 :goto_0

    .line 743
    .end local v2    # "_result":Z
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 744
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 745
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizePhoneManagerService$Stub;->setSlotTwoDisabled(Z)V

    .line 746
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 747
    goto/16 :goto_0

    .line 733
    .end local v2    # "_arg0":Z
    :pswitch_c
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 734
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 735
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizePhoneManagerService$Stub;->getDefaultVoiceCard(Landroid/content/ComponentName;)I

    move-result v3

    .line 736
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 737
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 738
    goto/16 :goto_0

    .line 721
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":I
    :pswitch_d
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 723
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 724
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 725
    invoke-virtual {p0, v2, v3}, Landroid/os/customize/IOplusCustomizePhoneManagerService$Stub;->setDefaultVoiceCard(Landroid/content/ComponentName;I)Landroid/os/Bundle;

    move-result-object v4

    .line 726
    .local v4, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 727
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 728
    goto/16 :goto_0

    .line 711
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Landroid/os/Bundle;
    :pswitch_e
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 712
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 713
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizePhoneManagerService$Stub;->isInComingThirdCallDisabled(Landroid/content/ComponentName;)Z

    move-result v3

    .line 714
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 715
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 716
    goto/16 :goto_0

    .line 699
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_f
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 701
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 702
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 703
    invoke-virtual {p0, v2, v3}, Landroid/os/customize/IOplusCustomizePhoneManagerService$Stub;->setIncomingThirdCallDisabled(Landroid/content/ComponentName;Z)Z

    move-result v4

    .line 704
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 705
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 706
    goto/16 :goto_0

    .line 689
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Z
    :pswitch_10
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 690
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 691
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizePhoneManagerService$Stub;->isRoamingCallDisabled(Landroid/content/ComponentName;)Z

    move-result v3

    .line 692
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 693
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 694
    goto/16 :goto_0

    .line 677
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_11
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 679
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 680
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 681
    invoke-virtual {p0, v2, v3}, Landroid/os/customize/IOplusCustomizePhoneManagerService$Stub;->setRoamingCallDisabled(Landroid/content/ComponentName;Z)Z

    move-result v4

    .line 682
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 683
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 684
    goto/16 :goto_0

    .line 665
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Z
    :pswitch_12
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 667
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 668
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 669
    invoke-virtual {p0, v2, v3}, Landroid/os/customize/IOplusCustomizePhoneManagerService$Stub;->setVoiceOutgoingDisabledforSlot2(Landroid/content/ComponentName;Z)Z

    move-result v4

    .line 670
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 671
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 672
    goto/16 :goto_0

    .line 653
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Z
    :pswitch_13
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 655
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 656
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 657
    invoke-virtual {p0, v2, v3}, Landroid/os/customize/IOplusCustomizePhoneManagerService$Stub;->setVoiceIncomingDisabledforSlot2(Landroid/content/ComponentName;Z)Z

    move-result v4

    .line 658
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 659
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 660
    goto/16 :goto_0

    .line 641
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Z
    :pswitch_14
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 643
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 644
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 645
    invoke-virtual {p0, v2, v3}, Landroid/os/customize/IOplusCustomizePhoneManagerService$Stub;->setVoiceOutgoingDisabledforSlot1(Landroid/content/ComponentName;Z)Z

    move-result v4

    .line 646
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 647
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 648
    goto/16 :goto_0

    .line 629
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Z
    :pswitch_15
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 631
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 632
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 633
    invoke-virtual {p0, v2, v3}, Landroid/os/customize/IOplusCustomizePhoneManagerService$Stub;->setVoiceIncomingDisabledforSlot1(Landroid/content/ComponentName;Z)Z

    move-result v4

    .line 634
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 635
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 636
    goto/16 :goto_0

    .line 620
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Z
    :pswitch_16
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 621
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 622
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizePhoneManagerService$Stub;->endCall(Landroid/content/ComponentName;)V

    .line 623
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 624
    goto/16 :goto_0

    .line 609
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 611
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 612
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 613
    invoke-virtual {p0, v2, v3}, Landroid/os/customize/IOplusCustomizePhoneManagerService$Stub;->storeSlot2SmsTimes(Ljava/lang/String;Z)V

    .line 614
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 615
    goto/16 :goto_0

    .line 599
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 600
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 601
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizePhoneManagerService$Stub;->showSlot2SmsTimes(Z)I

    move-result v3

    .line 602
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 603
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 604
    goto/16 :goto_0

    .line 588
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":I
    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 590
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 591
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 592
    invoke-virtual {p0, v2, v3}, Landroid/os/customize/IOplusCustomizePhoneManagerService$Stub;->storeSlot1SmsTimes(Ljava/lang/String;Z)V

    .line 593
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 594
    goto/16 :goto_0

    .line 578
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 579
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 580
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizePhoneManagerService$Stub;->showSlot1SmsTimes(Z)I

    move-result v3

    .line 581
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 582
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 583
    goto/16 :goto_0

    .line 570
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":I
    :pswitch_1b
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizePhoneManagerService$Stub;->getSlot2SmsSendDisabled()Ljava/lang/String;

    move-result-object v2

    .line 571
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 572
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 573
    goto/16 :goto_0

    .line 563
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_1c
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizePhoneManagerService$Stub;->getSlot1SmsSendDisabled()Ljava/lang/String;

    move-result-object v2

    .line 564
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 565
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 566
    goto/16 :goto_0

    .line 556
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_1d
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizePhoneManagerService$Stub;->getSlot2SmsReceiveDisabled()Ljava/lang/String;

    move-result-object v2

    .line 557
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 558
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 559
    goto/16 :goto_0

    .line 549
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_1e
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizePhoneManagerService$Stub;->getSlot1SmsReceiveDisabled()Ljava/lang/String;

    move-result-object v2

    .line 550
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 551
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 552
    goto/16 :goto_0

    .line 539
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_1f
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 541
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 542
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 543
    invoke-virtual {p0, v2, v3}, Landroid/os/customize/IOplusCustomizePhoneManagerService$Stub;->removeSlot2SmsLimitation(Landroid/content/ComponentName;Z)V

    .line 544
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 545
    goto/16 :goto_0

    .line 528
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    :pswitch_20
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 530
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 531
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 532
    invoke-virtual {p0, v2, v3}, Landroid/os/customize/IOplusCustomizePhoneManagerService$Stub;->removeSlot1SmsLimitation(Landroid/content/ComponentName;Z)V

    .line 533
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 534
    goto/16 :goto_0

    .line 516
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    :pswitch_21
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 518
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 519
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 520
    invoke-virtual {p0, v2, v3}, Landroid/os/customize/IOplusCustomizePhoneManagerService$Stub;->getSlot2SmsLimitation(Landroid/content/ComponentName;Z)I

    move-result v4

    .line 521
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 522
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 523
    goto/16 :goto_0

    .line 504
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":I
    :pswitch_22
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 506
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 507
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 508
    invoke-virtual {p0, v2, v3}, Landroid/os/customize/IOplusCustomizePhoneManagerService$Stub;->getSlot1SmsLimitation(Landroid/content/ComponentName;Z)I

    move-result v4

    .line 509
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 510
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 511
    goto/16 :goto_0

    .line 495
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":I
    :pswitch_23
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 496
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 497
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizePhoneManagerService$Stub;->removeSmsLimitation(Landroid/content/ComponentName;)V

    .line 498
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 499
    goto/16 :goto_0

    .line 484
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    :pswitch_24
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 486
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 487
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 488
    invoke-virtual {p0, v2, v3}, Landroid/os/customize/IOplusCustomizePhoneManagerService$Stub;->setSlot2SmsLimitation(Landroid/content/ComponentName;I)V

    .line 489
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 490
    goto/16 :goto_0

    .line 473
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":I
    :pswitch_25
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 475
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 476
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 477
    invoke-virtual {p0, v2, v3}, Landroid/os/customize/IOplusCustomizePhoneManagerService$Stub;->setSlot1SmsLimitation(Landroid/content/ComponentName;I)V

    .line 478
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 479
    goto/16 :goto_0

    .line 462
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":I
    :pswitch_26
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 464
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 465
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 466
    invoke-virtual {p0, v2, v3}, Landroid/os/customize/IOplusCustomizePhoneManagerService$Stub;->setSlot2SmsReceiveDisabled(Landroid/content/ComponentName;Z)V

    .line 467
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 468
    goto/16 :goto_0

    .line 451
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    :pswitch_27
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 453
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 454
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 455
    invoke-virtual {p0, v2, v3}, Landroid/os/customize/IOplusCustomizePhoneManagerService$Stub;->setSlot2SmsSendDisabled(Landroid/content/ComponentName;Z)V

    .line 456
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 457
    goto/16 :goto_0

    .line 440
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    :pswitch_28
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 442
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 443
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 444
    invoke-virtual {p0, v2, v3}, Landroid/os/customize/IOplusCustomizePhoneManagerService$Stub;->setSlot1SmsReceiveDisabled(Landroid/content/ComponentName;Z)V

    .line 445
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 446
    goto/16 :goto_0

    .line 429
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    :pswitch_29
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 431
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 432
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 433
    invoke-virtual {p0, v2, v3}, Landroid/os/customize/IOplusCustomizePhoneManagerService$Stub;->setSlot1SmsSendDisabled(Landroid/content/ComponentName;Z)V

    .line 434
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 435
    goto/16 :goto_0

    .line 417
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 419
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 420
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 421
    invoke-virtual {p0, v2, v3}, Landroid/os/customize/IOplusCustomizePhoneManagerService$Stub;->propSetCallLimitTime(ZI)Z

    move-result v4

    .line 422
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 423
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 424
    goto/16 :goto_0

    .line 407
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 408
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 409
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizePhoneManagerService$Stub;->propRemoveCallLimitation(Z)Z

    move-result v3

    .line 410
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 412
    goto/16 :goto_0

    .line 397
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 398
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 399
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizePhoneManagerService$Stub;->propGetPhoneCallLimitation(Z)I

    move-result v3

    .line 400
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 401
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 402
    goto/16 :goto_0

    .line 385
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":I
    :pswitch_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 387
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 388
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 389
    invoke-virtual {p0, v2, v3}, Landroid/os/customize/IOplusCustomizePhoneManagerService$Stub;->propSetPhoneCallLimitation(ZI)Z

    move-result v4

    .line 390
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 391
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 392
    goto :goto_0

    .line 375
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 376
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 377
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizePhoneManagerService$Stub;->isEnablePhoneCallLimit(Z)Z

    move-result v3

    .line 378
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 380
    goto :goto_0

    .line 363
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 365
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 366
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 367
    invoke-virtual {p0, v2, v3}, Landroid/os/customize/IOplusCustomizePhoneManagerService$Stub;->propEnablePhoneCallLimit(ZZ)Z

    move-result v4

    .line 368
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 369
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 370
    goto :goto_0

    .line 355
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Z
    :pswitch_30
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizePhoneManagerService$Stub;->isCallForwardSettingDisabled()Z

    move-result v2

    .line 356
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 357
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 358
    goto :goto_0

    .line 346
    .end local v2    # "_result":Z
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 347
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 348
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizePhoneManagerService$Stub;->propSetCallForwardSettingDisabled(Z)Z

    move-result v3

    .line 349
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 350
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 351
    goto :goto_0

    .line 338
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_32
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizePhoneManagerService$Stub;->getPropSetNonEmergencyCallDisabled()Z

    move-result v2

    .line 339
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 340
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 341
    goto :goto_0

    .line 329
    .end local v2    # "_result":Z
    :pswitch_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 330
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 331
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizePhoneManagerService$Stub;->propSetNonEmergencyCallDisabled(Z)Z

    move-result v3

    .line 332
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 333
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 334
    nop

    .line 862
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
