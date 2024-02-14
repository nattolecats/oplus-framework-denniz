.class public abstract Landroid/os/customize/IOplusCustomizeSecurityManagerService$Stub;
.super Landroid/os/Binder;
.source "IOplusCustomizeSecurityManagerService.java"

# interfaces
.implements Landroid/os/customize/IOplusCustomizeSecurityManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/customize/IOplusCustomizeSecurityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/customize/IOplusCustomizeSecurityManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_backupAppData:I = 0x19

.field static final blacklist TRANSACTION_captureFullScreen:I = 0xd

.field static final blacklist TRANSACTION_clearDeviceOwner:I = 0x5

.field static final blacklist TRANSACTION_clearMdmLog:I = 0x24

.field static final blacklist TRANSACTION_clearProfileOwner:I = 0x1c

.field static final blacklist TRANSACTION_copyFileToAppData:I = 0x26

.field static final blacklist TRANSACTION_deleteAppData:I = 0x25

.field static final blacklist TRANSACTION_enableThirdRecord:I = 0x13

.field static final blacklist TRANSACTION_executeShellToSetIptables:I = 0x9

.field static final blacklist TRANSACTION_getDeviceInfo:I = 0x8

.field static final blacklist TRANSACTION_getDeviceOwner:I = 0x4

.field static final blacklist TRANSACTION_getDeviceOwnerOrganizationName:I = 0x1f

.field static final blacklist TRANSACTION_getEmmAdmin:I = 0x2

.field static final blacklist TRANSACTION_getMobileCommSettings:I = 0xb

.field static final blacklist TRANSACTION_getOrganizationName:I = 0x1e

.field static final blacklist TRANSACTION_getPhoneNumber:I = 0xa

.field static final blacklist TRANSACTION_getProfileOwner:I = 0x1b

.field static final blacklist TRANSACTION_getServerType:I = 0xf

.field static final blacklist TRANSACTION_isCustomDevicePolicyEnabled:I = 0x7

.field static final blacklist TRANSACTION_isEnableThirdRecord:I = 0x14

.field static final blacklist TRANSACTION_isSetPasswordDisable:I = 0x16

.field static final blacklist TRANSACTION_isVerificationSkip:I = 0x21

.field static final blacklist TRANSACTION_listIccid:I = 0x17

.field static final blacklist TRANSACTION_listImei:I = 0x18

.field static final blacklist TRANSACTION_needHideKeyguardByMdm:I = 0x12

.field static final blacklist TRANSACTION_readMdmLog:I = 0x22

.field static final blacklist TRANSACTION_setCustomDevicePolicyEnabled:I = 0x6

.field static final blacklist TRANSACTION_setDeviceLocked:I = 0x10

.field static final blacklist TRANSACTION_setDeviceOwner:I = 0x3

.field static final blacklist TRANSACTION_setDeviceUnLocked:I = 0x11

.field static final blacklist TRANSACTION_setEmmAdmin:I = 0x1

.field static final blacklist TRANSACTION_setMobileCommSettings:I = 0xc

.field static final blacklist TRANSACTION_setOrganizationName:I = 0x1d

.field static final blacklist TRANSACTION_setPasswordDisable:I = 0x15

.field static final blacklist TRANSACTION_setProfileOwner:I = 0x1a

.field static final blacklist TRANSACTION_setServerType:I = 0xe

.field static final blacklist TRANSACTION_setVerificationSkip:I = 0x20

.field static final blacklist TRANSACTION_writeMdmLog:I = 0x23


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 184
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 185
    const-string v0, "android.os.customize.IOplusCustomizeSecurityManagerService"

    invoke-virtual {p0, p0, v0}, Landroid/os/customize/IOplusCustomizeSecurityManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/os/customize/IOplusCustomizeSecurityManagerService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 193
    if-nez p0, :cond_0

    .line 194
    const/4 v0, 0x0

    return-object v0

    .line 196
    :cond_0
    const-string v0, "android.os.customize.IOplusCustomizeSecurityManagerService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 197
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/customize/IOplusCustomizeSecurityManagerService;

    if-eqz v1, :cond_1

    .line 198
    move-object v1, v0

    check-cast v1, Landroid/os/customize/IOplusCustomizeSecurityManagerService;

    return-object v1

    .line 200
    :cond_1
    new-instance v1, Landroid/os/customize/IOplusCustomizeSecurityManagerService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/customize/IOplusCustomizeSecurityManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 204
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

    .line 208
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v10, "android.os.customize.IOplusCustomizeSecurityManagerService"

    .line 209
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v7, v11, :cond_0

    const v0, 0xffffff

    if-gt v7, v0, :cond_0

    .line 210
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    :cond_0
    packed-switch v7, :pswitch_data_0

    .line 220
    const/4 v0, 0x0

    packed-switch v7, :pswitch_data_1

    .line 597
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 216
    :pswitch_0
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 217
    return v11

    .line 583
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 585
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 587
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 589
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 590
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 591
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/os/customize/IOplusCustomizeSecurityManagerService$Stub;->copyFileToAppData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 592
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 593
    goto/16 :goto_0

    .line 568
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":I
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 570
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 572
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 574
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 575
    .restart local v3    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 576
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/os/customize/IOplusCustomizeSecurityManagerService$Stub;->deleteAppData(ZLjava/lang/String;Ljava/lang/String;I)V

    .line 577
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 578
    goto/16 :goto_0

    .line 560
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":I
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Landroid/os/customize/IOplusCustomizeSecurityManagerService$Stub;->clearMdmLog()Z

    move-result v0

    .line 561
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 562
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 563
    goto/16 :goto_0

    .line 547
    .end local v0    # "_result":Z
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 549
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 551
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 552
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 553
    invoke-virtual {v6, v0, v1, v2}, Landroid/os/customize/IOplusCustomizeSecurityManagerService$Stub;->writeMdmLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 554
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 555
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 556
    goto/16 :goto_0

    .line 539
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Landroid/os/customize/IOplusCustomizeSecurityManagerService$Stub;->readMdmLog()Ljava/lang/String;

    move-result-object v0

    .line 540
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 541
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 542
    goto/16 :goto_0

    .line 532
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Landroid/os/customize/IOplusCustomizeSecurityManagerService$Stub;->isVerificationSkip()Z

    move-result v0

    .line 533
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 534
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 535
    goto/16 :goto_0

    .line 524
    .end local v0    # "_result":Z
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 525
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 526
    invoke-virtual {v6, v0}, Landroid/os/customize/IOplusCustomizeSecurityManagerService$Stub;->setVerificationSkip(Z)V

    .line 527
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 528
    goto/16 :goto_0

    .line 510
    .end local v0    # "_arg0":Z
    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Landroid/os/customize/IOplusCustomizeSecurityManagerService$Stub;->getDeviceOwnerOrganizationName()Ljava/lang/CharSequence;

    move-result-object v1

    .line 511
    .local v1, "_result":Ljava/lang/CharSequence;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 512
    if-eqz v1, :cond_1

    .line 513
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 514
    invoke-static {v1, v9, v11}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 517
    :cond_1
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 519
    goto/16 :goto_0

    .line 495
    .end local v1    # "_result":Ljava/lang/CharSequence;
    :pswitch_9
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 496
    .local v1, "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 497
    invoke-virtual {v6, v1}, Landroid/os/customize/IOplusCustomizeSecurityManagerService$Stub;->getOrganizationName(Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 498
    .local v2, "_result":Ljava/lang/CharSequence;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 499
    if-eqz v2, :cond_2

    .line 500
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 501
    invoke-static {v2, v9, v11}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 504
    :cond_2
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 506
    goto/16 :goto_0

    .line 484
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    .end local v2    # "_result":Ljava/lang/CharSequence;
    :pswitch_a
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 486
    .local v0, "_arg0":Landroid/content/ComponentName;
    sget-object v1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 487
    .local v1, "_arg1":Ljava/lang/CharSequence;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 488
    invoke-virtual {v6, v0, v1}, Landroid/os/customize/IOplusCustomizeSecurityManagerService$Stub;->setOrganizationName(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V

    .line 489
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 490
    goto/16 :goto_0

    .line 475
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v1    # "_arg1":Ljava/lang/CharSequence;
    :pswitch_b
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 476
    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 477
    invoke-virtual {v6, v0}, Landroid/os/customize/IOplusCustomizeSecurityManagerService$Stub;->clearProfileOwner(Landroid/content/ComponentName;)V

    .line 478
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 479
    goto/16 :goto_0

    .line 467
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    :pswitch_c
    invoke-virtual/range {p0 .. p0}, Landroid/os/customize/IOplusCustomizeSecurityManagerService$Stub;->getProfileOwner()Landroid/content/ComponentName;

    move-result-object v0

    .line 468
    .local v0, "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 469
    invoke-virtual {v9, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 470
    goto/16 :goto_0

    .line 458
    .end local v0    # "_result":Landroid/content/ComponentName;
    :pswitch_d
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 459
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 460
    invoke-virtual {v6, v0}, Landroid/os/customize/IOplusCustomizeSecurityManagerService$Stub;->setProfileOwner(Landroid/content/ComponentName;)Z

    move-result v1

    .line 461
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 462
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 463
    goto/16 :goto_0

    .line 441
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v1    # "_result":Z
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 443
    .local v12, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 445
    .local v13, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 447
    .local v14, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 449
    .local v15, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 450
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 451
    move-object/from16 v0, p0

    move v1, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/os/customize/IOplusCustomizeSecurityManagerService$Stub;->backupAppData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 452
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 453
    goto/16 :goto_0

    .line 433
    .end local v12    # "_arg0":I
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":I
    :pswitch_f
    invoke-virtual/range {p0 .. p0}, Landroid/os/customize/IOplusCustomizeSecurityManagerService$Stub;->listImei()[Ljava/lang/String;

    move-result-object v0

    .line 434
    .local v0, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 435
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 436
    goto/16 :goto_0

    .line 426
    .end local v0    # "_result":[Ljava/lang/String;
    :pswitch_10
    invoke-virtual/range {p0 .. p0}, Landroid/os/customize/IOplusCustomizeSecurityManagerService$Stub;->listIccid()[Ljava/lang/String;

    move-result-object v0

    .line 427
    .restart local v0    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 428
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 429
    goto/16 :goto_0

    .line 419
    .end local v0    # "_result":[Ljava/lang/String;
    :pswitch_11
    invoke-virtual/range {p0 .. p0}, Landroid/os/customize/IOplusCustomizeSecurityManagerService$Stub;->isSetPasswordDisable()Z

    move-result v0

    .line 420
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 421
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 422
    goto/16 :goto_0

    .line 410
    .end local v0    # "_result":Z
    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 411
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 412
    invoke-virtual {v6, v0}, Landroid/os/customize/IOplusCustomizeSecurityManagerService$Stub;->setPasswordDisable(Z)Z

    move-result v1

    .line 413
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 414
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 415
    goto/16 :goto_0

    .line 402
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    :pswitch_13
    invoke-virtual/range {p0 .. p0}, Landroid/os/customize/IOplusCustomizeSecurityManagerService$Stub;->isEnableThirdRecord()Z

    move-result v0

    .line 403
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 404
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 405
    goto/16 :goto_0

    .line 393
    .end local v0    # "_result":Z
    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 394
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 395
    invoke-virtual {v6, v0}, Landroid/os/customize/IOplusCustomizeSecurityManagerService$Stub;->enableThirdRecord(Z)Z

    move-result v1

    .line 396
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 397
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 398
    goto/16 :goto_0

    .line 385
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    :pswitch_15
    invoke-virtual/range {p0 .. p0}, Landroid/os/customize/IOplusCustomizeSecurityManagerService$Stub;->needHideKeyguardByMdm()Z

    move-result v0

    .line 386
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 387
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 388
    goto/16 :goto_0

    .line 376
    .end local v0    # "_result":Z
    :pswitch_16
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 377
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 378
    invoke-virtual {v6, v0}, Landroid/os/customize/IOplusCustomizeSecurityManagerService$Stub;->setDeviceUnLocked(Landroid/content/ComponentName;)Z

    move-result v1

    .line 379
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 380
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 381
    goto/16 :goto_0

    .line 366
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v1    # "_result":Z
    :pswitch_17
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 367
    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 368
    invoke-virtual {v6, v0}, Landroid/os/customize/IOplusCustomizeSecurityManagerService$Stub;->setDeviceLocked(Landroid/content/ComponentName;)Z

    move-result v1

    .line 369
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 370
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 371
    goto/16 :goto_0

    .line 358
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v1    # "_result":Z
    :pswitch_18
    invoke-virtual/range {p0 .. p0}, Landroid/os/customize/IOplusCustomizeSecurityManagerService$Stub;->getServerType()I

    move-result v0

    .line 359
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 361
    goto/16 :goto_0

    .line 349
    .end local v0    # "_result":I
    :pswitch_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 350
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 351
    invoke-virtual {v6, v0}, Landroid/os/customize/IOplusCustomizeSecurityManagerService$Stub;->setServerType(I)Z

    move-result v1

    .line 352
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 354
    goto/16 :goto_0

    .line 341
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_1a
    invoke-virtual/range {p0 .. p0}, Landroid/os/customize/IOplusCustomizeSecurityManagerService$Stub;->captureFullScreen()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 342
    .local v0, "_result":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    invoke-virtual {v9, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 344
    goto/16 :goto_0

    .line 329
    .end local v0    # "_result":Landroid/graphics/Bitmap;
    :pswitch_1b
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 331
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 333
    .local v1, "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 334
    .local v2, "_arg2":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 335
    invoke-virtual {v6, v0, v1, v2}, Landroid/os/customize/IOplusCustomizeSecurityManagerService$Stub;->setMobileCommSettings(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 336
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 337
    goto/16 :goto_0

    .line 315
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/os/Bundle;
    :pswitch_1c
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 317
    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 319
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 320
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 321
    invoke-virtual {v6, v0, v1, v2}, Landroid/os/customize/IOplusCustomizeSecurityManagerService$Stub;->getMobileCommSettings(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 322
    .local v3, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    invoke-virtual {v9, v3, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 324
    goto/16 :goto_0

    .line 305
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Landroid/os/Bundle;
    :pswitch_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 306
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 307
    invoke-virtual {v6, v0}, Landroid/os/customize/IOplusCustomizeSecurityManagerService$Stub;->getPhoneNumber(I)Ljava/lang/String;

    move-result-object v1

    .line 308
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 310
    goto/16 :goto_0

    .line 295
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 297
    invoke-virtual {v6, v0}, Landroid/os/customize/IOplusCustomizeSecurityManagerService$Stub;->executeShellToSetIptables(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 298
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 300
    goto/16 :goto_0

    .line 285
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_1f
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 286
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 287
    invoke-virtual {v6, v0}, Landroid/os/customize/IOplusCustomizeSecurityManagerService$Stub;->getDeviceInfo(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v1

    .line 288
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 289
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 290
    goto :goto_0

    .line 277
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_20
    invoke-virtual/range {p0 .. p0}, Landroid/os/customize/IOplusCustomizeSecurityManagerService$Stub;->isCustomDevicePolicyEnabled()Z

    move-result v0

    .line 278
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 280
    goto :goto_0

    .line 269
    .end local v0    # "_result":Z
    :pswitch_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 270
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 271
    invoke-virtual {v6, v0}, Landroid/os/customize/IOplusCustomizeSecurityManagerService$Stub;->setCustomDevicePolicyEnabled(Z)V

    .line 272
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    goto :goto_0

    .line 260
    .end local v0    # "_arg0":Z
    :pswitch_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 262
    invoke-virtual {v6, v0}, Landroid/os/customize/IOplusCustomizeSecurityManagerService$Stub;->clearDeviceOwner(Ljava/lang/String;)V

    .line 263
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    goto :goto_0

    .line 252
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_23
    invoke-virtual/range {p0 .. p0}, Landroid/os/customize/IOplusCustomizeSecurityManagerService$Stub;->getDeviceOwner()Landroid/content/ComponentName;

    move-result-object v0

    .line 253
    .local v0, "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    invoke-virtual {v9, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 255
    goto :goto_0

    .line 243
    .end local v0    # "_result":Landroid/content/ComponentName;
    :pswitch_24
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 244
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 245
    invoke-virtual {v6, v0}, Landroid/os/customize/IOplusCustomizeSecurityManagerService$Stub;->setDeviceOwner(Landroid/content/ComponentName;)Z

    move-result v1

    .line 246
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 248
    goto :goto_0

    .line 235
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v1    # "_result":Z
    :pswitch_25
    invoke-virtual/range {p0 .. p0}, Landroid/os/customize/IOplusCustomizeSecurityManagerService$Stub;->getEmmAdmin()Ljava/util/List;

    move-result-object v0

    .line 236
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 238
    goto :goto_0

    .line 225
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :pswitch_26
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 227
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 228
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 229
    invoke-virtual {v6, v0, v1}, Landroid/os/customize/IOplusCustomizeSecurityManagerService$Stub;->setEmmAdmin(Landroid/content/ComponentName;Z)V

    .line 230
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    nop

    .line 600
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v1    # "_arg1":Z
    :goto_0
    return v11

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
