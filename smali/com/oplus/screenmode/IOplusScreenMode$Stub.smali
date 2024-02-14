.class public abstract Lcom/oplus/screenmode/IOplusScreenMode$Stub;
.super Landroid/os/Binder;
.source "IOplusScreenMode.java"

# interfaces
.implements Lcom/oplus/screenmode/IOplusScreenMode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/screenmode/IOplusScreenMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/screenmode/IOplusScreenMode$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addCallback:I = 0x1

.field static final blacklist TRANSACTION_enterDCAndLowBrightnessMode:I = 0x7

.field static final blacklist TRANSACTION_enterPSMode:I = 0x9

.field static final blacklist TRANSACTION_enterPSModeOnRate:I = 0xa

.field static final blacklist TRANSACTION_enterPSModeOnRateWithToken:I = 0xf

.field static final blacklist TRANSACTION_getAppOverrideRefreshRate:I = 0x18

.field static final blacklist TRANSACTION_getAppOverrideRefreshRateList:I = 0x19

.field static final blacklist TRANSACTION_getDisableOverrideViewList:I = 0xe

.field static final blacklist TRANSACTION_getDownScale:I = 0x16

.field static final blacklist TRANSACTION_getGameList:I = 0xd

.field static final blacklist TRANSACTION_isDisplayCompat:I = 0x8

.field static final blacklist TRANSACTION_keepHighRefreshRate:I = 0x11

.field static final blacklist TRANSACTION_overrideWindowRefreshRate:I = 0x10

.field static final blacklist TRANSACTION_remove:I = 0x2

.field static final blacklist TRANSACTION_removeAllCustomizeRefreshRate:I = 0x1b

.field static final blacklist TRANSACTION_removeCustomizeRefreshRate:I = 0x1a

.field static final blacklist TRANSACTION_requestGameRefreshRate:I = 0xb

.field static final blacklist TRANSACTION_requestMemcRefreshRate:I = 0x14

.field static final blacklist TRANSACTION_requestRefreshRate:I = 0x4

.field static final blacklist TRANSACTION_requestRefreshRateWithToken:I = 0xc

.field static final blacklist TRANSACTION_setAppOverrideRefreshRate:I = 0x17

.field static final blacklist TRANSACTION_setClientRefreshRate:I = 0x3

.field static final blacklist TRANSACTION_setDownScale:I = 0x15

.field static final blacklist TRANSACTION_setHighTemperatureStatus:I = 0x6

.field static final blacklist TRANSACTION_setMemcWorkStatus:I = 0x13

.field static final blacklist TRANSACTION_supportDisplayCompat:I = 0x5

.field static final blacklist TRANSACTION_updateFpsWhenDcChange:I = 0x12


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 158
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 159
    const-string v0, "com.oplus.screenmode.IOplusScreenMode"

    invoke-virtual {p0, p0, v0}, Lcom/oplus/screenmode/IOplusScreenMode$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public static whitelist asInterface(Landroid/os/IBinder;)Lcom/oplus/screenmode/IOplusScreenMode;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 167
    if-nez p0, :cond_0

    .line 168
    const/4 v0, 0x0

    return-object v0

    .line 170
    :cond_0
    const-string v0, "com.oplus.screenmode.IOplusScreenMode"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 171
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/oplus/screenmode/IOplusScreenMode;

    if-eqz v1, :cond_1

    .line 172
    move-object v1, v0

    check-cast v1, Lcom/oplus/screenmode/IOplusScreenMode;

    return-object v1

    .line 174
    :cond_1
    new-instance v1, Lcom/oplus/screenmode/IOplusScreenMode$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/oplus/screenmode/IOplusScreenMode$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 178
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

    .line 182
    const-string v0, "com.oplus.screenmode.IOplusScreenMode"

    .line 183
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 184
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 194
    packed-switch p1, :pswitch_data_1

    .line 490
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 190
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 191
    return v1

    .line 483
    :pswitch_1
    invoke-virtual {p0}, Lcom/oplus/screenmode/IOplusScreenMode$Stub;->removeAllCustomizeRefreshRate()Z

    move-result v2

    .line 484
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 485
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 486
    goto/16 :goto_0

    .line 474
    .end local v2    # "_result":Z
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 475
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 476
    invoke-virtual {p0, v2}, Lcom/oplus/screenmode/IOplusScreenMode$Stub;->removeCustomizeRefreshRate(Ljava/lang/String;)Z

    move-result v3

    .line 477
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 478
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 479
    goto/16 :goto_0

    .line 466
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_3
    invoke-virtual {p0}, Lcom/oplus/screenmode/IOplusScreenMode$Stub;->getAppOverrideRefreshRateList()Landroid/os/Bundle;

    move-result-object v2

    .line 467
    .local v2, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 468
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 469
    goto/16 :goto_0

    .line 455
    .end local v2    # "_result":Landroid/os/Bundle;
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 457
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 458
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 459
    invoke-virtual {p0, v2, v3}, Lcom/oplus/screenmode/IOplusScreenMode$Stub;->getAppOverrideRefreshRate(Ljava/lang/String;I)I

    move-result v4

    .line 460
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 461
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 462
    goto/16 :goto_0

    .line 441
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 443
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 445
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 446
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 447
    invoke-virtual {p0, v2, v3, v4}, Lcom/oplus/screenmode/IOplusScreenMode$Stub;->setAppOverrideRefreshRate(Ljava/lang/String;II)Z

    move-result v5

    .line 448
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 449
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 450
    goto/16 :goto_0

    .line 431
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Z
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 432
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 433
    invoke-virtual {p0, v2}, Lcom/oplus/screenmode/IOplusScreenMode$Stub;->getDownScale(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 434
    .local v3, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 435
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 436
    goto/16 :goto_0

    .line 415
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/os/Bundle;
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 417
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 419
    .local v3, "_arg1":F
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 421
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 422
    .local v5, "_arg3":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 423
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/oplus/screenmode/IOplusScreenMode$Stub;->setDownScale(Ljava/lang/String;FZZ)I

    move-result v6

    .line 424
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 425
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 426
    goto/16 :goto_0

    .line 403
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":F
    .end local v4    # "_arg2":Z
    .end local v5    # "_arg3":Z
    .end local v6    # "_result":I
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 405
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 406
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 407
    invoke-virtual {p0, v2, v3}, Lcom/oplus/screenmode/IOplusScreenMode$Stub;->requestMemcRefreshRate(ZI)Z

    move-result v4

    .line 408
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 409
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 410
    goto/16 :goto_0

    .line 395
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 396
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 397
    invoke-virtual {p0, v2}, Lcom/oplus/screenmode/IOplusScreenMode$Stub;->setMemcWorkStatus(Z)V

    .line 398
    goto/16 :goto_0

    .line 386
    .end local v2    # "_arg0":Z
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 387
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 388
    invoke-virtual {p0, v2}, Lcom/oplus/screenmode/IOplusScreenMode$Stub;->updateFpsWhenDcChange(Z)V

    .line 389
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 390
    goto/16 :goto_0

    .line 378
    .end local v2    # "_arg0":Z
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 379
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 380
    invoke-virtual {p0, v2}, Lcom/oplus/screenmode/IOplusScreenMode$Stub;->keepHighRefreshRate(I)V

    .line 381
    goto/16 :goto_0

    .line 368
    .end local v2    # "_arg0":I
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 370
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 371
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 372
    invoke-virtual {p0, v2, v3}, Lcom/oplus/screenmode/IOplusScreenMode$Stub;->overrideWindowRefreshRate(Landroid/os/IBinder;I)V

    .line 373
    goto/16 :goto_0

    .line 355
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 357
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 359
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 360
    .local v4, "_arg2":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 361
    invoke-virtual {p0, v2, v3, v4}, Lcom/oplus/screenmode/IOplusScreenMode$Stub;->enterPSModeOnRateWithToken(ZILandroid/os/IBinder;)V

    .line 362
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 363
    goto/16 :goto_0

    .line 345
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/os/IBinder;
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 346
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 347
    invoke-virtual {p0, v2}, Lcom/oplus/screenmode/IOplusScreenMode$Stub;->getDisableOverrideViewList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 348
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 349
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 350
    goto/16 :goto_0

    .line 334
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_f
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 335
    .local v2, "_arg0":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 336
    invoke-virtual {p0, v2}, Lcom/oplus/screenmode/IOplusScreenMode$Stub;->getGameList(Landroid/os/Bundle;)Z

    move-result v3

    .line 337
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 338
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 339
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 340
    goto/16 :goto_0

    .line 320
    .end local v2    # "_arg0":Landroid/os/Bundle;
    .end local v3    # "_result":Z
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 322
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 324
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 325
    .restart local v4    # "_arg2":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 326
    invoke-virtual {p0, v2, v3, v4}, Lcom/oplus/screenmode/IOplusScreenMode$Stub;->requestRefreshRateWithToken(ZILandroid/os/IBinder;)Z

    move-result v5

    .line 327
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 328
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 329
    goto/16 :goto_0

    .line 308
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/os/IBinder;
    .end local v5    # "_result":Z
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 310
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 311
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 312
    invoke-virtual {p0, v2, v3}, Lcom/oplus/screenmode/IOplusScreenMode$Stub;->requestGameRefreshRate(Ljava/lang/String;I)Z

    move-result v4

    .line 313
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 315
    goto/16 :goto_0

    .line 297
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 299
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 300
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 301
    invoke-virtual {p0, v2, v3}, Lcom/oplus/screenmode/IOplusScreenMode$Stub;->enterPSModeOnRate(ZI)V

    .line 302
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 303
    goto/16 :goto_0

    .line 288
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":I
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 289
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 290
    invoke-virtual {p0, v2}, Lcom/oplus/screenmode/IOplusScreenMode$Stub;->enterPSMode(Z)V

    .line 291
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    goto/16 :goto_0

    .line 276
    .end local v2    # "_arg0":Z
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 278
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 279
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 280
    invoke-virtual {p0, v2, v3}, Lcom/oplus/screenmode/IOplusScreenMode$Stub;->isDisplayCompat(Ljava/lang/String;I)Z

    move-result v4

    .line 281
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 283
    goto/16 :goto_0

    .line 267
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 268
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 269
    invoke-virtual {p0, v2}, Lcom/oplus/screenmode/IOplusScreenMode$Stub;->enterDCAndLowBrightnessMode(Z)V

    .line 270
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    goto/16 :goto_0

    .line 255
    .end local v2    # "_arg0":Z
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 257
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 258
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 259
    invoke-virtual {p0, v2, v3}, Lcom/oplus/screenmode/IOplusScreenMode$Stub;->setHighTemperatureStatus(II)Z

    move-result v4

    .line 260
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 262
    goto :goto_0

    .line 243
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 245
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 246
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 247
    invoke-virtual {p0, v2, v3}, Lcom/oplus/screenmode/IOplusScreenMode$Stub;->supportDisplayCompat(Ljava/lang/String;I)Z

    move-result v4

    .line 248
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 250
    goto :goto_0

    .line 231
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 233
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 234
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 235
    invoke-virtual {p0, v2, v3}, Lcom/oplus/screenmode/IOplusScreenMode$Stub;->requestRefreshRate(ZI)Z

    move-result v4

    .line 236
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 238
    goto :goto_0

    .line 221
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 223
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 224
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 225
    invoke-virtual {p0, v2, v3}, Lcom/oplus/screenmode/IOplusScreenMode$Stub;->setClientRefreshRate(Landroid/os/IBinder;I)V

    .line 226
    goto :goto_0

    .line 210
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 212
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/oplus/screenmode/IOplusScreenModeCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/screenmode/IOplusScreenModeCallback;

    move-result-object v3

    .line 213
    .local v3, "_arg1":Lcom/oplus/screenmode/IOplusScreenModeCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 214
    invoke-virtual {p0, v2, v3}, Lcom/oplus/screenmode/IOplusScreenMode$Stub;->remove(ILcom/oplus/screenmode/IOplusScreenModeCallback;)V

    .line 215
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    goto :goto_0

    .line 199
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lcom/oplus/screenmode/IOplusScreenModeCallback;
    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 201
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/oplus/screenmode/IOplusScreenModeCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/screenmode/IOplusScreenModeCallback;

    move-result-object v3

    .line 202
    .restart local v3    # "_arg1":Lcom/oplus/screenmode/IOplusScreenModeCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 203
    invoke-virtual {p0, v2, v3}, Lcom/oplus/screenmode/IOplusScreenMode$Stub;->addCallback(ILcom/oplus/screenmode/IOplusScreenModeCallback;)V

    .line 204
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    nop

    .line 493
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lcom/oplus/screenmode/IOplusScreenModeCallback;
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
