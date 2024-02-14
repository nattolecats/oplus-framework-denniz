.class public abstract Landroid/hardware/fingerprint/IOplusFingerprintManager$Stub;
.super Landroid/os/Binder;
.source "IOplusFingerprintManager.java"

# interfaces
.implements Landroid/hardware/fingerprint/IOplusFingerprintManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/fingerprint/IOplusFingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/fingerprint/IOplusFingerprintManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_cancelFingerprintExtraInfo:I = 0xb

.field static final blacklist TRANSACTION_cancelTouchEventListener:I = 0xd

.field static final blacklist TRANSACTION_continueEnroll:I = 0x5

.field static final blacklist TRANSACTION_getCurrentIconStatus:I = 0x10

.field static final blacklist TRANSACTION_getEnrolledFingerprints:I = 0x12

.field static final blacklist TRANSACTION_getEnrollmentTotalTimes:I = 0x6

.field static final blacklist TRANSACTION_getFailedAttempts:I = 0x8

.field static final blacklist TRANSACTION_getFingerprintExtraInfo:I = 0xa

.field static final blacklist TRANSACTION_getLockoutAttemptDeadline:I = 0x7

.field static final blacklist TRANSACTION_hideFingerprintIcon:I = 0xf

.field static final blacklist TRANSACTION_needForceUseFingerprintFirst:I = 0x11

.field static final blacklist TRANSACTION_pauseEnroll:I = 0x4

.field static final blacklist TRANSACTION_regsiterFingerprintCmdCallback:I = 0x1

.field static final blacklist TRANSACTION_sendFingerprintCmd:I = 0x9

.field static final blacklist TRANSACTION_setFingerKeymode:I = 0x3

.field static final blacklist TRANSACTION_setFingerprintFlags:I = 0x13

.field static final blacklist TRANSACTION_setTouchEventListener:I = 0xc

.field static final blacklist TRANSACTION_showFingerprintIcon:I = 0xe

.field static final blacklist TRANSACTION_unregsiterFingerprintCmdCallback:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 92
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 93
    const-string v0, "android.hardware.fingerprint.IOplusFingerprintManager"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/fingerprint/IOplusFingerprintManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IOplusFingerprintManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 101
    if-nez p0, :cond_0

    .line 102
    const/4 v0, 0x0

    return-object v0

    .line 104
    :cond_0
    const-string v0, "android.hardware.fingerprint.IOplusFingerprintManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 105
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/fingerprint/IOplusFingerprintManager;

    if-eqz v1, :cond_1

    .line 106
    move-object v1, v0

    check-cast v1, Landroid/hardware/fingerprint/IOplusFingerprintManager;

    return-object v1

    .line 108
    :cond_1
    new-instance v1, Landroid/hardware/fingerprint/IOplusFingerprintManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/fingerprint/IOplusFingerprintManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 112
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

    .line 116
    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p3

    const-string v11, "android.hardware.fingerprint.IOplusFingerprintManager"

    .line 117
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v12, 0x1

    if-lt v9, v12, :cond_0

    const v0, 0xffffff

    if-gt v9, v0, :cond_0

    .line 118
    move-object/from16 v13, p2

    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :cond_0
    move-object/from16 v13, p2

    .line 120
    :goto_0
    packed-switch v9, :pswitch_data_0

    .line 128
    packed-switch v9, :pswitch_data_1

    .line 370
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 124
    :pswitch_0
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    return v12

    .line 353
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 355
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 357
    .local v7, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 359
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 361
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 362
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 363
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move v3, v14

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/IOplusFingerprintManager$Stub;->setFingerprintFlags(IIIII)I

    move-result v0

    .line 364
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 365
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 366
    goto/16 :goto_1

    .line 341
    .end local v0    # "_result":I
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":I
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 343
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 344
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 345
    invoke-virtual {v8, v0, v1}, Landroid/hardware/fingerprint/IOplusFingerprintManager$Stub;->getEnrolledFingerprints(II)Ljava/util/List;

    move-result-object v2

    .line 346
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/OplusFingerprint;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 347
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 348
    goto/16 :goto_1

    .line 331
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/OplusFingerprint;>;"
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 333
    invoke-virtual {v8, v0}, Landroid/hardware/fingerprint/IOplusFingerprintManager$Stub;->needForceUseFingerprintFirst(Ljava/lang/String;)Z

    move-result v1

    .line 334
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 336
    goto/16 :goto_1

    .line 319
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 321
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 322
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 323
    invoke-virtual {v8, v0, v1}, Landroid/hardware/fingerprint/IOplusFingerprintManager$Stub;->getCurrentIconStatus(Landroid/os/IBinder;Ljava/lang/String;)I

    move-result v2

    .line 324
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 326
    goto/16 :goto_1

    .line 308
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 310
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 311
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 312
    invoke-virtual {v8, v0, v1}, Landroid/hardware/fingerprint/IOplusFingerprintManager$Stub;->hideFingerprintIcon(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 313
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    goto/16 :goto_1

    .line 297
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 299
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 300
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 301
    invoke-virtual {v8, v0, v1}, Landroid/hardware/fingerprint/IOplusFingerprintManager$Stub;->showFingerprintIcon(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 302
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 303
    goto/16 :goto_1

    .line 282
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 284
    .local v6, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 286
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 288
    .local v14, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .line 289
    .local v15, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 290
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v14

    move-wide v4, v15

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/IOplusFingerprintManager$Stub;->cancelTouchEventListener(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;J)V

    .line 291
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    goto/16 :goto_1

    .line 262
    .end local v6    # "_arg0":Landroid/os/IBinder;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":J
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 264
    .local v7, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 266
    .local v14, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 268
    .local v15, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 270
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/fingerprint/IOplusFingerprintServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IOplusFingerprintServiceReceiver;

    move-result-object v17

    .line 272
    .local v17, "_arg4":Landroid/hardware/fingerprint/IOplusFingerprintServiceReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 273
    .local v18, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 274
    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v14

    move-object v3, v15

    move/from16 v4, v16

    move-object/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/fingerprint/IOplusFingerprintManager$Stub;->setTouchEventListener(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;ILandroid/hardware/fingerprint/IOplusFingerprintServiceReceiver;I)J

    move-result-wide v0

    .line 275
    .local v0, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    invoke-virtual {v10, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 277
    goto/16 :goto_1

    .line 247
    .end local v0    # "_result":J
    .end local v7    # "_arg0":Landroid/os/IBinder;
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v15    # "_arg2":Ljava/lang/String;
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":Landroid/hardware/fingerprint/IOplusFingerprintServiceReceiver;
    .end local v18    # "_arg5":I
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 249
    .restart local v6    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 251
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 253
    .local v14, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .line 254
    .local v15, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 255
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v14

    move-wide v4, v15

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/IOplusFingerprintManager$Stub;->cancelFingerprintExtraInfo(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;J)V

    .line 256
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    goto/16 :goto_1

    .line 225
    .end local v6    # "_arg0":Landroid/os/IBinder;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":J
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    .line 227
    .local v14, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 229
    .local v15, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 231
    .local v16, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 233
    .local v17, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/fingerprint/IOplusFingerprintServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IOplusFingerprintServiceReceiver;

    move-result-object v18

    .line 235
    .local v18, "_arg4":Landroid/hardware/fingerprint/IOplusFingerprintServiceReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 237
    .local v19, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 238
    .local v20, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 239
    move-object/from16 v0, p0

    move-object v1, v14

    move-object v2, v15

    move-object/from16 v3, v16

    move/from16 v4, v17

    move-object/from16 v5, v18

    move/from16 v6, v19

    move/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/fingerprint/IOplusFingerprintManager$Stub;->getFingerprintExtraInfo(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;ILandroid/hardware/fingerprint/IOplusFingerprintServiceReceiver;II)J

    move-result-wide v0

    .line 240
    .restart local v0    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    invoke-virtual {v10, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 242
    goto/16 :goto_1

    .line 211
    .end local v0    # "_result":J
    .end local v14    # "_arg0":Landroid/os/IBinder;
    .end local v15    # "_arg1":Ljava/lang/String;
    .end local v16    # "_arg2":Ljava/lang/String;
    .end local v17    # "_arg3":I
    .end local v18    # "_arg4":Landroid/hardware/fingerprint/IOplusFingerprintServiceReceiver;
    .end local v19    # "_arg5":I
    .end local v20    # "_arg6":I
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 213
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 215
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 216
    .local v2, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 217
    invoke-virtual {v8, v0, v1, v2}, Landroid/hardware/fingerprint/IOplusFingerprintManager$Stub;->sendFingerprintCmd(II[B)I

    move-result v3

    .line 218
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    goto/16 :goto_1

    .line 203
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":[B
    .end local v3    # "_result":I
    :pswitch_c
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/fingerprint/IOplusFingerprintManager$Stub;->getFailedAttempts()I

    move-result v0

    .line 204
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    goto/16 :goto_1

    .line 194
    .end local v0    # "_result":I
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 195
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 196
    invoke-virtual {v8, v0}, Landroid/hardware/fingerprint/IOplusFingerprintManager$Stub;->getLockoutAttemptDeadline(I)J

    move-result-wide v1

    .line 197
    .local v1, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    invoke-virtual {v10, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 199
    goto/16 :goto_1

    .line 184
    .end local v0    # "_arg0":I
    .end local v1    # "_result":J
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 185
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 186
    invoke-virtual {v8, v0}, Landroid/hardware/fingerprint/IOplusFingerprintManager$Stub;->getEnrollmentTotalTimes(I)I

    move-result v1

    .line 187
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    goto :goto_1

    .line 174
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 175
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 176
    invoke-virtual {v8, v0}, Landroid/hardware/fingerprint/IOplusFingerprintManager$Stub;->continueEnroll(I)I

    move-result v1

    .line 177
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    goto :goto_1

    .line 164
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 165
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 166
    invoke-virtual {v8, v0}, Landroid/hardware/fingerprint/IOplusFingerprintManager$Stub;->pauseEnroll(I)I

    move-result v1

    .line 167
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    goto :goto_1

    .line 153
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 155
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 156
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 157
    invoke-virtual {v8, v0, v1}, Landroid/hardware/fingerprint/IOplusFingerprintManager$Stub;->setFingerKeymode(II)V

    .line 158
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    goto :goto_1

    .line 143
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/fingerprint/IFingerprintCommandCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintCommandCallback;

    move-result-object v0

    .line 144
    .local v0, "_arg0":Landroid/hardware/fingerprint/IFingerprintCommandCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 145
    invoke-virtual {v8, v0}, Landroid/hardware/fingerprint/IOplusFingerprintManager$Stub;->unregsiterFingerprintCmdCallback(Landroid/hardware/fingerprint/IFingerprintCommandCallback;)I

    move-result v1

    .line 146
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    goto :goto_1

    .line 133
    .end local v0    # "_arg0":Landroid/hardware/fingerprint/IFingerprintCommandCallback;
    .end local v1    # "_result":I
    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/fingerprint/IFingerprintCommandCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintCommandCallback;

    move-result-object v0

    .line 134
    .restart local v0    # "_arg0":Landroid/hardware/fingerprint/IFingerprintCommandCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 135
    invoke-virtual {v8, v0}, Landroid/hardware/fingerprint/IOplusFingerprintManager$Stub;->regsiterFingerprintCmdCallback(Landroid/hardware/fingerprint/IFingerprintCommandCallback;)I

    move-result v1

    .line 136
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    nop

    .line 373
    .end local v0    # "_arg0":Landroid/hardware/fingerprint/IFingerprintCommandCallback;
    .end local v1    # "_result":I
    :goto_1
    return v12

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
