.class public abstract Landroid/bluetooth/IOplusBluetooth$Stub;
.super Landroid/os/Binder;
.source "IOplusBluetooth.java"

# interfaces
.implements Landroid/bluetooth/IOplusBluetooth;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IOplusBluetooth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IOplusBluetooth$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addCarkit:I = 0xa

.field static final blacklist TRANSACTION_disableAutoConnectPolicy:I = 0x6

.field static final blacklist TRANSACTION_enableAutoConnectPolicy:I = 0x5

.field static final blacklist TRANSACTION_getBluetoothConnectedAppPID:I = 0x4

.field static final blacklist TRANSACTION_getBluetoothConnectionCount:I = 0x3

.field static final blacklist TRANSACTION_getBluetoothMonitorReport:I = 0xc

.field static final blacklist TRANSACTION_getBluetoothRecordConnectedType:I = 0x10

.field static final blacklist TRANSACTION_getRandomAddress:I = 0x15

.field static final blacklist TRANSACTION_isBluetoothRecordConnected:I = 0x11

.field static final blacklist TRANSACTION_isBluetoothScoAvailableOffCall:I = 0x2

.field static final blacklist TRANSACTION_isCarkit:I = 0x9

.field static final blacklist TRANSACTION_oplusEnableVerboseLogging:I = 0x8

.field static final blacklist TRANSACTION_oplusSetBTCTddMode:I = 0x17

.field static final blacklist TRANSACTION_registerBluetoothCallback:I = 0xd

.field static final blacklist TRANSACTION_rejectScoState:I = 0x16

.field static final blacklist TRANSACTION_removeCarkit:I = 0xb

.field static final blacklist TRANSACTION_setBLBlackOrWhiteList:I = 0x1

.field static final blacklist TRANSACTION_setMode:I = 0xf

.field static final blacklist TRANSACTION_setSpeakerphoneOn:I = 0x12

.field static final blacklist TRANSACTION_startBluetoothSco:I = 0x13

.field static final blacklist TRANSACTION_stopBluetoothSco:I = 0x14

.field static final blacklist TRANSACTION_triggerFirmwareCrash:I = 0x7

.field static final blacklist TRANSACTION_unRegisterBluetoothCallback:I = 0xe


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 103
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 104
    const-string v0, "android.bluetooth.IOplusBluetooth"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IOplusBluetooth$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IOplusBluetooth;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 112
    if-nez p0, :cond_0

    .line 113
    const/4 v0, 0x0

    return-object v0

    .line 115
    :cond_0
    const-string v0, "android.bluetooth.IOplusBluetooth"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 116
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/IOplusBluetooth;

    if-eqz v1, :cond_1

    .line 117
    move-object v1, v0

    check-cast v1, Landroid/bluetooth/IOplusBluetooth;

    return-object v1

    .line 119
    :cond_1
    new-instance v1, Landroid/bluetooth/IOplusBluetooth$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IOplusBluetooth$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method static synthetic blacklist lambda$onTransact$0(Landroid/os/Parcel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "reply"    # Landroid/os/Parcel;
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;

    .line 246
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 248
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 123
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 23
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 127
    move-object/from16 v9, p0

    move/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    const-string v13, "android.bluetooth.IOplusBluetooth"

    .line 128
    .local v13, "descriptor":Ljava/lang/String;
    const/4 v14, 0x1

    if-lt v10, v14, :cond_0

    const v0, 0xffffff

    if-gt v10, v0, :cond_0

    .line 129
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    :cond_0
    packed-switch v10, :pswitch_data_0

    .line 139
    packed-switch v10, :pswitch_data_1

    .line 367
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 135
    :pswitch_0
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    return v14

    .line 358
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 359
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 360
    invoke-virtual {v9, v0}, Landroid/bluetooth/IOplusBluetooth$Stub;->oplusSetBTCTddMode(I)Z

    move-result v1

    .line 361
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 363
    goto/16 :goto_0

    .line 336
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v15

    .line 338
    .local v15, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    .line 340
    .local v16, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    .line 342
    .local v17, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v18

    .line 344
    .local v18, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v19

    .line 346
    .local v19, "_arg4":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v20

    .line 348
    .local v20, "_arg5":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 350
    .local v21, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v22

    .line 351
    .local v22, "_arg7":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 352
    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    move/from16 v5, v19

    move/from16 v6, v20

    move-object/from16 v7, v21

    move/from16 v8, v22

    invoke-virtual/range {v0 .. v8}, Landroid/bluetooth/IOplusBluetooth$Stub;->rejectScoState(ZZZZZZLjava/lang/String;Z)V

    .line 353
    goto/16 :goto_0

    .line 328
    .end local v15    # "_arg0":Z
    .end local v16    # "_arg1":Z
    .end local v17    # "_arg2":Z
    .end local v18    # "_arg3":Z
    .end local v19    # "_arg4":Z
    .end local v20    # "_arg5":Z
    .end local v21    # "_arg6":Ljava/lang/String;
    .end local v22    # "_arg7":Z
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IOplusBluetooth$Stub;->getRandomAddress()Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 331
    goto/16 :goto_0

    .line 319
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 321
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 322
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 323
    invoke-virtual {v9, v0, v1}, Landroid/bluetooth/IOplusBluetooth$Stub;->stopBluetoothSco(ILjava/lang/String;)V

    .line 324
    goto/16 :goto_0

    .line 309
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 311
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 312
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 313
    invoke-virtual {v9, v0, v1}, Landroid/bluetooth/IOplusBluetooth$Stub;->startBluetoothSco(ILjava/lang/String;)V

    .line 314
    goto/16 :goto_0

    .line 297
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 299
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 301
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 302
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 303
    invoke-virtual {v9, v0, v1, v2}, Landroid/bluetooth/IOplusBluetooth$Stub;->setSpeakerphoneOn(ZILjava/lang/String;)V

    .line 304
    goto/16 :goto_0

    .line 289
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IOplusBluetooth$Stub;->isBluetoothRecordConnected()Z

    move-result v0

    .line 290
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 292
    goto/16 :goto_0

    .line 282
    .end local v0    # "_result":Z
    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IOplusBluetooth$Stub;->getBluetoothRecordConnectedType()I

    move-result v0

    .line 283
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 285
    goto/16 :goto_0

    .line 271
    .end local v0    # "_result":I
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 273
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 275
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 276
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 277
    invoke-virtual {v9, v0, v1, v2}, Landroid/bluetooth/IOplusBluetooth$Stub;->setMode(IILjava/lang/String;)V

    .line 278
    goto/16 :goto_0

    .line 263
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/IOplusBluetoothCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IOplusBluetoothCallback;

    move-result-object v0

    .line 264
    .local v0, "_arg0":Landroid/bluetooth/IOplusBluetoothCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 265
    invoke-virtual {v9, v0}, Landroid/bluetooth/IOplusBluetooth$Stub;->unRegisterBluetoothCallback(Landroid/bluetooth/IOplusBluetoothCallback;)V

    .line 266
    goto/16 :goto_0

    .line 255
    .end local v0    # "_arg0":Landroid/bluetooth/IOplusBluetoothCallback;
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/IOplusBluetoothCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IOplusBluetoothCallback;

    move-result-object v0

    .line 256
    .restart local v0    # "_arg0":Landroid/bluetooth/IOplusBluetoothCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 257
    invoke-virtual {v9, v0}, Landroid/bluetooth/IOplusBluetooth$Stub;->registerBluetoothCallback(Landroid/bluetooth/IOplusBluetoothCallback;)V

    .line 258
    goto/16 :goto_0

    .line 235
    .end local v0    # "_arg0":Landroid/bluetooth/IOplusBluetoothCallback;
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 237
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 238
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 239
    invoke-virtual {v9, v0, v1}, Landroid/bluetooth/IOplusBluetooth$Stub;->getBluetoothMonitorReport(IZ)Ljava/util/Map;

    move-result-object v2

    .line 240
    .local v2, "_result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    if-nez v2, :cond_1

    .line 242
    const/4 v3, -0x1

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 244
    :cond_1
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    new-instance v3, Landroid/bluetooth/IOplusBluetooth$Stub$$ExternalSyntheticLambda0;

    invoke-direct {v3, v12}, Landroid/bluetooth/IOplusBluetooth$Stub$$ExternalSyntheticLambda0;-><init>(Landroid/os/Parcel;)V

    invoke-interface {v2, v3}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 250
    goto/16 :goto_0

    .line 227
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_d
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 228
    .local v0, "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 229
    invoke-virtual {v9, v0}, Landroid/bluetooth/IOplusBluetooth$Stub;->removeCarkit(Landroid/bluetooth/BluetoothDevice;)V

    .line 230
    goto/16 :goto_0

    .line 219
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :pswitch_e
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 220
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 221
    invoke-virtual {v9, v0}, Landroid/bluetooth/IOplusBluetooth$Stub;->addCarkit(Landroid/bluetooth/BluetoothDevice;)V

    .line 222
    goto/16 :goto_0

    .line 209
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :pswitch_f
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 210
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 211
    invoke-virtual {v9, v0}, Landroid/bluetooth/IOplusBluetooth$Stub;->isCarkit(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    .line 212
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 214
    goto :goto_0

    .line 201
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_result":Z
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 202
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 203
    invoke-virtual {v9, v0}, Landroid/bluetooth/IOplusBluetooth$Stub;->oplusEnableVerboseLogging(Z)V

    .line 204
    goto :goto_0

    .line 193
    .end local v0    # "_arg0":Z
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 195
    invoke-virtual {v9, v0}, Landroid/bluetooth/IOplusBluetooth$Stub;->triggerFirmwareCrash(Ljava/lang/String;)V

    .line 196
    goto :goto_0

    .line 185
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_12
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 186
    .local v0, "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 187
    invoke-virtual {v9, v0}, Landroid/bluetooth/IOplusBluetooth$Stub;->disableAutoConnectPolicy(Landroid/bluetooth/BluetoothDevice;)V

    .line 188
    goto :goto_0

    .line 177
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :pswitch_13
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 178
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 179
    invoke-virtual {v9, v0}, Landroid/bluetooth/IOplusBluetooth$Stub;->enableAutoConnectPolicy(Landroid/bluetooth/BluetoothDevice;)V

    .line 180
    goto :goto_0

    .line 169
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :pswitch_14
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IOplusBluetooth$Stub;->getBluetoothConnectedAppPID()[I

    move-result-object v0

    .line 170
    .local v0, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 172
    goto :goto_0

    .line 162
    .end local v0    # "_result":[I
    :pswitch_15
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IOplusBluetooth$Stub;->getBluetoothConnectionCount()I

    move-result v0

    .line 163
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    goto :goto_0

    .line 155
    .end local v0    # "_result":I
    :pswitch_16
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IOplusBluetooth$Stub;->isBluetoothScoAvailableOffCall()Z

    move-result v0

    .line 156
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 158
    goto :goto_0

    .line 144
    .end local v0    # "_result":Z
    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 146
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 148
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 149
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 150
    invoke-virtual {v9, v0, v1, v2}, Landroid/bluetooth/IOplusBluetooth$Stub;->setBLBlackOrWhiteList(Ljava/util/List;IZ)V

    .line 151
    nop

    .line 370
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Z
    :goto_0
    return v14

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
