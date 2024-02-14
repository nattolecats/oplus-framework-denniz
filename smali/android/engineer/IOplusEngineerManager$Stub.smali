.class public abstract Landroid/engineer/IOplusEngineerManager$Stub;
.super Landroid/os/Binder;
.source "IOplusEngineerManager.java"

# interfaces
.implements Landroid/engineer/IOplusEngineerManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/engineer/IOplusEngineerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/engineer/IOplusEngineerManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_fastbootUnlock:I = 0xc

.field static final blacklist TRANSACTION_getBootImgWaterMark:I = 0x9

.field static final blacklist TRANSACTION_getCalibrationStatusFromNvram:I = 0x6

.field static final blacklist TRANSACTION_getCarrierVersion:I = 0x2

.field static final blacklist TRANSACTION_getCarrierVersionFromNvram:I = 0x4

.field static final blacklist TRANSACTION_getDownloadStatus:I = 0x1

.field static final blacklist TRANSACTION_getSimOperatorSwitchStatus:I = 0x8

.field static final blacklist TRANSACTION_getSystemProperties:I = 0xe

.field static final blacklist TRANSACTION_isEngineerItemInBlackList:I = 0xf

.field static final blacklist TRANSACTION_readEngineerData:I = 0xa

.field static final blacklist TRANSACTION_saveCarrierVersionToNvram:I = 0x5

.field static final blacklist TRANSACTION_saveEngineerData:I = 0xb

.field static final blacklist TRANSACTION_setCarrierVersion:I = 0x3

.field static final blacklist TRANSACTION_setSimOperatorSwitch:I = 0x7

.field static final blacklist TRANSACTION_setSystemProperties:I = 0xd


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 93
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 94
    const-string v0, "android.engineer.IOplusEngineerManager"

    invoke-virtual {p0, p0, v0}, Landroid/engineer/IOplusEngineerManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public static whitelist asInterface(Landroid/os/IBinder;)Landroid/engineer/IOplusEngineerManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 102
    if-nez p0, :cond_0

    .line 103
    const/4 v0, 0x0

    return-object v0

    .line 105
    :cond_0
    const-string v0, "android.engineer.IOplusEngineerManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 106
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/engineer/IOplusEngineerManager;

    if-eqz v1, :cond_1

    .line 107
    move-object v1, v0

    check-cast v1, Landroid/engineer/IOplusEngineerManager;

    return-object v1

    .line 109
    :cond_1
    new-instance v1, Landroid/engineer/IOplusEngineerManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/engineer/IOplusEngineerManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 113
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

    .line 117
    const-string v0, "android.engineer.IOplusEngineerManager"

    .line 118
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 119
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 129
    packed-switch p1, :pswitch_data_1

    .line 276
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 125
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    return v1

    .line 265
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 267
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 268
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 269
    invoke-virtual {p0, v2, v3}, Landroid/engineer/IOplusEngineerManager$Stub;->isEngineerItemInBlackList(ILjava/lang/String;)Z

    move-result v4

    .line 270
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 272
    goto/16 :goto_0

    .line 253
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 255
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 256
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 257
    invoke-virtual {p0, v2, v3}, Landroid/engineer/IOplusEngineerManager$Stub;->getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 258
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 260
    goto/16 :goto_0

    .line 242
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Ljava/lang/String;
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 244
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 245
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 246
    invoke-virtual {p0, v2, v3}, Landroid/engineer/IOplusEngineerManager$Stub;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    goto/16 :goto_0

    .line 230
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 232
    .local v2, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 233
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 234
    invoke-virtual {p0, v2, v3}, Landroid/engineer/IOplusEngineerManager$Stub;->fastbootUnlock([BI)Z

    move-result v4

    .line 235
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 237
    goto/16 :goto_0

    .line 216
    .end local v2    # "_arg0":[B
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 218
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 220
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 221
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 222
    invoke-virtual {p0, v2, v3, v4}, Landroid/engineer/IOplusEngineerManager$Stub;->saveEngineerData(I[BI)Z

    move-result v5

    .line 223
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 225
    goto/16 :goto_0

    .line 206
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[B
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Z
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 207
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 208
    invoke-virtual {p0, v2}, Landroid/engineer/IOplusEngineerManager$Stub;->readEngineerData(I)[B

    move-result-object v3

    .line 209
    .local v3, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 211
    goto/16 :goto_0

    .line 198
    .end local v2    # "_arg0":I
    .end local v3    # "_result":[B
    :pswitch_7
    invoke-virtual {p0}, Landroid/engineer/IOplusEngineerManager$Stub;->getBootImgWaterMark()Ljava/lang/String;

    move-result-object v2

    .line 199
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 201
    goto :goto_0

    .line 191
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_8
    invoke-virtual {p0}, Landroid/engineer/IOplusEngineerManager$Stub;->getSimOperatorSwitchStatus()Ljava/lang/String;

    move-result-object v2

    .line 192
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 194
    goto :goto_0

    .line 182
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 183
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 184
    invoke-virtual {p0, v2}, Landroid/engineer/IOplusEngineerManager$Stub;->setSimOperatorSwitch(Ljava/lang/String;)Z

    move-result v3

    .line 185
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 187
    goto :goto_0

    .line 174
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_a
    invoke-virtual {p0}, Landroid/engineer/IOplusEngineerManager$Stub;->getCalibrationStatusFromNvram()[B

    move-result-object v2

    .line 175
    .local v2, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 177
    goto :goto_0

    .line 165
    .end local v2    # "_result":[B
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 166
    .local v2, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 167
    invoke-virtual {p0, v2}, Landroid/engineer/IOplusEngineerManager$Stub;->saveCarrierVersionToNvram([B)Z

    move-result v3

    .line 168
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 170
    goto :goto_0

    .line 157
    .end local v2    # "_arg0":[B
    .end local v3    # "_result":Z
    :pswitch_c
    invoke-virtual {p0}, Landroid/engineer/IOplusEngineerManager$Stub;->getCarrierVersionFromNvram()[B

    move-result-object v2

    .line 158
    .local v2, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 160
    goto :goto_0

    .line 148
    .end local v2    # "_result":[B
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 149
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 150
    invoke-virtual {p0, v2}, Landroid/engineer/IOplusEngineerManager$Stub;->setCarrierVersion(Ljava/lang/String;)Z

    move-result v3

    .line 151
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 153
    goto :goto_0

    .line 140
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_e
    invoke-virtual {p0}, Landroid/engineer/IOplusEngineerManager$Stub;->getCarrierVersion()Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    goto :goto_0

    .line 133
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_f
    invoke-virtual {p0}, Landroid/engineer/IOplusEngineerManager$Stub;->getDownloadStatus()Ljava/lang/String;

    move-result-object v2

    .line 134
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    nop

    .line 279
    .end local v2    # "_result":Ljava/lang/String;
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
