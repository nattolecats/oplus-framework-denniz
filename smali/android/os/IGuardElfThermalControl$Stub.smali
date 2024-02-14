.class public abstract Landroid/os/IGuardElfThermalControl$Stub;
.super Landroid/os/Binder;
.source "IGuardElfThermalControl.java"

# interfaces
.implements Landroid/os/IGuardElfThermalControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IGuardElfThermalControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IGuardElfThermalControl$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getBattPPSChgIng:I = 0x15

.field static final blacklist TRANSACTION_getBattPPSChgPower:I = 0x16

.field static final blacklist TRANSACTION_getBeginDecimal:I = 0x3

.field static final blacklist TRANSACTION_getBmsHeatingStatus:I = 0x1c

.field static final blacklist TRANSACTION_getChargerTechnology:I = 0x7

.field static final blacklist TRANSACTION_getCustomSelectChgMode:I = 0x17

.field static final blacklist TRANSACTION_getEndDecimal:I = 0x4

.field static final blacklist TRANSACTION_getPsyBatteryHmac:I = 0x6

.field static final blacklist TRANSACTION_getPsyBatteryNotify:I = 0x11

.field static final blacklist TRANSACTION_getPsyBatteryRm:I = 0xf

.field static final blacklist TRANSACTION_getPsyChargeTech:I = 0x19

.field static final blacklist TRANSACTION_getPsyOtgOnline:I = 0x5

.field static final blacklist TRANSACTION_getQuickModeGain:I = 0x1b

.field static final blacklist TRANSACTION_getSmartChgMode:I = 0x13

.field static final blacklist TRANSACTION_getUIsohValue:I = 0x1d

.field static final blacklist TRANSACTION_getWiredOtgOnline:I = 0x10

.field static final blacklist TRANSACTION_getWirelessAdapterPower:I = 0x12

.field static final blacklist TRANSACTION_getWirelessPenPresent:I = 0x8

.field static final blacklist TRANSACTION_getWirelessTXEnable:I = 0xb

.field static final blacklist TRANSACTION_getWirelessUserSleepMode:I = 0xd

.field static final blacklist TRANSACTION_isCameraOn:I = 0x2

.field static final blacklist TRANSACTION_setChargeLevel:I = 0x1

.field static final blacklist TRANSACTION_setChargerCycle:I = 0x1e

.field static final blacklist TRANSACTION_setCustomSelectChgMode:I = 0x18

.field static final blacklist TRANSACTION_setPsyMmiChgEn:I = 0xe

.field static final blacklist TRANSACTION_setSmartChgMode:I = 0x14

.field static final blacklist TRANSACTION_setSmartCoolDown:I = 0x1a

.field static final blacklist TRANSACTION_setWirelessPenSoc:I = 0x9

.field static final blacklist TRANSACTION_setWirelessTXEnable:I = 0xa

.field static final blacklist TRANSACTION_setWirelessUserSleepMode:I = 0xc


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 141
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 142
    const-string v0, "android.os.IGuardElfThermalControl"

    invoke-virtual {p0, p0, v0}, Landroid/os/IGuardElfThermalControl$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/os/IGuardElfThermalControl;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 150
    if-nez p0, :cond_0

    .line 151
    const/4 v0, 0x0

    return-object v0

    .line 153
    :cond_0
    const-string v0, "android.os.IGuardElfThermalControl"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 154
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IGuardElfThermalControl;

    if-eqz v1, :cond_1

    .line 155
    move-object v1, v0

    check-cast v1, Landroid/os/IGuardElfThermalControl;

    return-object v1

    .line 157
    :cond_1
    new-instance v1, Landroid/os/IGuardElfThermalControl$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IGuardElfThermalControl$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 161
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 165
    const-string v0, "android.os.IGuardElfThermalControl"

    .line 166
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 167
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 177
    packed-switch p1, :pswitch_data_1

    .line 421
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 173
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 174
    return v1

    .line 412
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 413
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 414
    invoke-virtual {p0, v2}, Landroid/os/IGuardElfThermalControl$Stub;->setChargerCycle(Ljava/lang/String;)I

    move-result v3

    .line 415
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 416
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 417
    goto/16 :goto_0

    .line 404
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_2
    invoke-virtual {p0}, Landroid/os/IGuardElfThermalControl$Stub;->getUIsohValue()I

    move-result v2

    .line 405
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 406
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 407
    goto/16 :goto_0

    .line 397
    .end local v2    # "_result":I
    :pswitch_3
    invoke-virtual {p0}, Landroid/os/IGuardElfThermalControl$Stub;->getBmsHeatingStatus()I

    move-result v2

    .line 398
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 399
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 400
    goto/16 :goto_0

    .line 390
    .end local v2    # "_result":I
    :pswitch_4
    invoke-virtual {p0}, Landroid/os/IGuardElfThermalControl$Stub;->getQuickModeGain()Ljava/lang/String;

    move-result-object v2

    .line 391
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 392
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 393
    goto/16 :goto_0

    .line 377
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 379
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 381
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 382
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 383
    invoke-virtual {p0, v2, v3, v4}, Landroid/os/IGuardElfThermalControl$Stub;->setSmartCoolDown(IILjava/lang/String;)I

    move-result v5

    .line 384
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 385
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 386
    goto/16 :goto_0

    .line 369
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":I
    :pswitch_6
    invoke-virtual {p0}, Landroid/os/IGuardElfThermalControl$Stub;->getPsyChargeTech()I

    move-result v2

    .line 370
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 371
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 372
    goto/16 :goto_0

    .line 358
    .end local v2    # "_result":I
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 360
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 361
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 362
    invoke-virtual {p0, v2, v3}, Landroid/os/IGuardElfThermalControl$Stub;->setCustomSelectChgMode(IZ)I

    move-result v4

    .line 363
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 365
    goto/16 :goto_0

    .line 350
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":I
    :pswitch_8
    invoke-virtual {p0}, Landroid/os/IGuardElfThermalControl$Stub;->getCustomSelectChgMode()I

    move-result v2

    .line 351
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 353
    goto/16 :goto_0

    .line 343
    .end local v2    # "_result":I
    :pswitch_9
    invoke-virtual {p0}, Landroid/os/IGuardElfThermalControl$Stub;->getBattPPSChgPower()I

    move-result v2

    .line 344
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 346
    goto/16 :goto_0

    .line 336
    .end local v2    # "_result":I
    :pswitch_a
    invoke-virtual {p0}, Landroid/os/IGuardElfThermalControl$Stub;->getBattPPSChgIng()I

    move-result v2

    .line 337
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 338
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 339
    goto/16 :goto_0

    .line 327
    .end local v2    # "_result":I
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 328
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 329
    invoke-virtual {p0, v2}, Landroid/os/IGuardElfThermalControl$Stub;->setSmartChgMode(Ljava/lang/String;)I

    move-result v3

    .line 330
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 331
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 332
    goto/16 :goto_0

    .line 319
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_c
    invoke-virtual {p0}, Landroid/os/IGuardElfThermalControl$Stub;->getSmartChgMode()I

    move-result v2

    .line 320
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 321
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 322
    goto/16 :goto_0

    .line 312
    .end local v2    # "_result":I
    :pswitch_d
    invoke-virtual {p0}, Landroid/os/IGuardElfThermalControl$Stub;->getWirelessAdapterPower()I

    move-result v2

    .line 313
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 315
    goto/16 :goto_0

    .line 305
    .end local v2    # "_result":I
    :pswitch_e
    invoke-virtual {p0}, Landroid/os/IGuardElfThermalControl$Stub;->getPsyBatteryNotify()I

    move-result v2

    .line 306
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 308
    goto/16 :goto_0

    .line 298
    .end local v2    # "_result":I
    :pswitch_f
    invoke-virtual {p0}, Landroid/os/IGuardElfThermalControl$Stub;->getWiredOtgOnline()I

    move-result v2

    .line 299
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 301
    goto/16 :goto_0

    .line 291
    .end local v2    # "_result":I
    :pswitch_10
    invoke-virtual {p0}, Landroid/os/IGuardElfThermalControl$Stub;->getPsyBatteryRm()I

    move-result v2

    .line 292
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    goto/16 :goto_0

    .line 283
    .end local v2    # "_result":I
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 284
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 285
    invoke-virtual {p0, v2}, Landroid/os/IGuardElfThermalControl$Stub;->setPsyMmiChgEn(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    goto/16 :goto_0

    .line 275
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_12
    invoke-virtual {p0}, Landroid/os/IGuardElfThermalControl$Stub;->getWirelessUserSleepMode()I

    move-result v2

    .line 276
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 278
    goto/16 :goto_0

    .line 267
    .end local v2    # "_result":I
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 268
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 269
    invoke-virtual {p0, v2}, Landroid/os/IGuardElfThermalControl$Stub;->setWirelessUserSleepMode(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    goto/16 :goto_0

    .line 259
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_14
    invoke-virtual {p0}, Landroid/os/IGuardElfThermalControl$Stub;->getWirelessTXEnable()Ljava/lang/String;

    move-result-object v2

    .line 260
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 262
    goto/16 :goto_0

    .line 251
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 252
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 253
    invoke-virtual {p0, v2}, Landroid/os/IGuardElfThermalControl$Stub;->setWirelessTXEnable(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    goto/16 :goto_0

    .line 242
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 243
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 244
    invoke-virtual {p0, v2}, Landroid/os/IGuardElfThermalControl$Stub;->setWirelessPenSoc(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    goto :goto_0

    .line 234
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_17
    invoke-virtual {p0}, Landroid/os/IGuardElfThermalControl$Stub;->getWirelessPenPresent()I

    move-result v2

    .line 235
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    goto :goto_0

    .line 227
    .end local v2    # "_result":I
    :pswitch_18
    invoke-virtual {p0}, Landroid/os/IGuardElfThermalControl$Stub;->getChargerTechnology()I

    move-result v2

    .line 228
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    goto :goto_0

    .line 220
    .end local v2    # "_result":I
    :pswitch_19
    invoke-virtual {p0}, Landroid/os/IGuardElfThermalControl$Stub;->getPsyBatteryHmac()I

    move-result v2

    .line 221
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    goto :goto_0

    .line 213
    .end local v2    # "_result":I
    :pswitch_1a
    invoke-virtual {p0}, Landroid/os/IGuardElfThermalControl$Stub;->getPsyOtgOnline()I

    move-result v2

    .line 214
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    goto :goto_0

    .line 206
    .end local v2    # "_result":I
    :pswitch_1b
    invoke-virtual {p0}, Landroid/os/IGuardElfThermalControl$Stub;->getEndDecimal()F

    move-result v2

    .line 207
    .local v2, "_result":F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 209
    goto :goto_0

    .line 199
    .end local v2    # "_result":F
    :pswitch_1c
    invoke-virtual {p0}, Landroid/os/IGuardElfThermalControl$Stub;->getBeginDecimal()F

    move-result v2

    .line 200
    .restart local v2    # "_result":F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 202
    goto :goto_0

    .line 192
    .end local v2    # "_result":F
    :pswitch_1d
    invoke-virtual {p0}, Landroid/os/IGuardElfThermalControl$Stub;->isCameraOn()Z

    move-result v2

    .line 193
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 195
    goto :goto_0

    .line 182
    .end local v2    # "_result":Z
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 184
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 185
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 186
    invoke-virtual {p0, v2, v3}, Landroid/os/IGuardElfThermalControl$Stub;->setChargeLevel(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    nop

    .line 424
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
