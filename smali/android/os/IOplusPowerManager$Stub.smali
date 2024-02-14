.class public abstract Landroid/os/IOplusPowerManager$Stub;
.super Landroid/os/Binder;
.source "IOplusPowerManager.java"

# interfaces
.implements Landroid/os/IOplusPowerManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IOplusPowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IOplusPowerManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getDefaultBrightness:I = 0x8

.field static final blacklist TRANSACTION_getDefaultScreenBrightnessSetting:I = 0xc

.field static final blacklist TRANSACTION_getDisplayAodStatus:I = 0x5

.field static final blacklist TRANSACTION_getDisplaysBrightnessByNit:I = 0x9

.field static final blacklist TRANSACTION_getMaxBrightness:I = 0x7

.field static final blacklist TRANSACTION_getMaximumScreenBrightnessSetting:I = 0xb

.field static final blacklist TRANSACTION_getMinBrightness:I = 0x6

.field static final blacklist TRANSACTION_getMinScreenOffTimeout:I = 0x4

.field static final blacklist TRANSACTION_getMinimumScreenBrightnessSetting:I = 0xa

.field static final blacklist TRANSACTION_registerScreenStatusListener:I = 0x1

.field static final blacklist TRANSACTION_setFlashing:I = 0xd

.field static final blacklist TRANSACTION_setMinScreenOffTimeout:I = 0x3

.field static final blacklist TRANSACTION_unregisterScreenStatusListener:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 92
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 93
    const-string v0, "android.os.IOplusPowerManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/IOplusPowerManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/os/IOplusPowerManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 101
    if-nez p0, :cond_0

    .line 102
    const/4 v0, 0x0

    return-object v0

    .line 104
    :cond_0
    const-string v0, "android.os.IOplusPowerManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 105
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IOplusPowerManager;

    if-eqz v1, :cond_1

    .line 106
    move-object v1, v0

    check-cast v1, Landroid/os/IOplusPowerManager;

    return-object v1

    .line 108
    :cond_1
    new-instance v1, Landroid/os/IOplusPowerManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IOplusPowerManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 112
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

    .line 116
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p3

    const-string v9, "android.os.IOplusPowerManager"

    .line 117
    .local v9, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v7, v10, :cond_0

    const v0, 0xffffff

    if-gt v7, v0, :cond_0

    .line 118
    move-object/from16 v11, p2

    invoke-virtual {v11, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :cond_0
    move-object/from16 v11, p2

    .line 120
    :goto_0
    packed-switch v7, :pswitch_data_0

    .line 128
    packed-switch v7, :pswitch_data_1

    .line 243
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 124
    :pswitch_0
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    return v10

    .line 227
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 229
    .local v12, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 231
    .local v13, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 233
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 235
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 236
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 237
    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    move v3, v14

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/os/IOplusPowerManager$Stub;->setFlashing(IIIII)V

    .line 238
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    goto/16 :goto_1

    .line 219
    .end local v12    # "_arg0":I
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":I
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/os/IOplusPowerManager$Stub;->getDefaultScreenBrightnessSetting()I

    move-result v0

    .line 220
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    goto/16 :goto_1

    .line 212
    .end local v0    # "_result":I
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Landroid/os/IOplusPowerManager$Stub;->getMaximumScreenBrightnessSetting()I

    move-result v0

    .line 213
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    goto/16 :goto_1

    .line 205
    .end local v0    # "_result":I
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Landroid/os/IOplusPowerManager$Stub;->getMinimumScreenBrightnessSetting()I

    move-result v0

    .line 206
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    goto/16 :goto_1

    .line 196
    .end local v0    # "_result":I
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 197
    .local v0, "_arg0":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 198
    invoke-virtual {v6, v0}, Landroid/os/IOplusPowerManager$Stub;->getDisplaysBrightnessByNit(F)[F

    move-result-object v1

    .line 199
    .local v1, "_result":[F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 201
    goto :goto_1

    .line 188
    .end local v0    # "_arg0":F
    .end local v1    # "_result":[F
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Landroid/os/IOplusPowerManager$Stub;->getDefaultBrightness()I

    move-result v0

    .line 189
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    goto :goto_1

    .line 181
    .end local v0    # "_result":I
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Landroid/os/IOplusPowerManager$Stub;->getMaxBrightness()I

    move-result v0

    .line 182
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    goto :goto_1

    .line 174
    .end local v0    # "_result":I
    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Landroid/os/IOplusPowerManager$Stub;->getMinBrightness()I

    move-result v0

    .line 175
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    goto :goto_1

    .line 167
    .end local v0    # "_result":I
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Landroid/os/IOplusPowerManager$Stub;->getDisplayAodStatus()Z

    move-result v0

    .line 168
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 170
    goto :goto_1

    .line 160
    .end local v0    # "_result":Z
    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Landroid/os/IOplusPowerManager$Stub;->getMinScreenOffTimeout()J

    move-result-wide v0

    .line 161
    .local v0, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    invoke-virtual {v8, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 163
    goto :goto_1

    .line 151
    .end local v0    # "_result":J
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 152
    .local v0, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 153
    invoke-virtual {v6, v0, v1}, Landroid/os/IOplusPowerManager$Stub;->setMinScreenOffTimeout(J)Z

    move-result v2

    .line 154
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 156
    goto :goto_1

    .line 142
    .end local v0    # "_arg0":J
    .end local v2    # "_result":Z
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/os/IOplusScreenStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/os/IOplusScreenStatusListener;

    move-result-object v0

    .line 143
    .local v0, "_arg0":Lcom/oplus/os/IOplusScreenStatusListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 144
    invoke-virtual {v6, v0}, Landroid/os/IOplusPowerManager$Stub;->unregisterScreenStatusListener(Lcom/oplus/os/IOplusScreenStatusListener;)V

    .line 145
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    goto :goto_1

    .line 133
    .end local v0    # "_arg0":Lcom/oplus/os/IOplusScreenStatusListener;
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/os/IOplusScreenStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/os/IOplusScreenStatusListener;

    move-result-object v0

    .line 134
    .restart local v0    # "_arg0":Lcom/oplus/os/IOplusScreenStatusListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 135
    invoke-virtual {v6, v0}, Landroid/os/IOplusPowerManager$Stub;->registerScreenStatusListener(Lcom/oplus/os/IOplusScreenStatusListener;)V

    .line 136
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    nop

    .line 246
    .end local v0    # "_arg0":Lcom/oplus/os/IOplusScreenStatusListener;
    :goto_1
    return v10

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
