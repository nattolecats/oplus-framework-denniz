.class public abstract Lcom/oplus/network/IOplusNetworkStack$Stub;
.super Landroid/os/Binder;
.source "IOplusNetworkStack.java"

# interfaces
.implements Lcom/oplus/network/IOplusNetworkStack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/network/IOplusNetworkStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/network/IOplusNetworkStack$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getNetworkRtt:I = 0xb

.field static final blacklist TRANSACTION_getNetworkScore:I = 0xa

.field static final blacklist TRANSACTION_oplusAddAppDnsConfig:I = 0x3

.field static final blacklist TRANSACTION_oplusClearAppDnsConfig:I = 0x5

.field static final blacklist TRANSACTION_oplusDelAppDnsConfig:I = 0x4

.field static final blacklist TRANSACTION_oplusGetUidByPort:I = 0x6

.field static final blacklist TRANSACTION_oplusSetRedirectPort:I = 0x7

.field static final blacklist TRANSACTION_registerOplusNetdEvent:I = 0xc

.field static final blacklist TRANSACTION_registerTcpScoreChange:I = 0x1

.field static final blacklist TRANSACTION_startDiagnosis:I = 0xe

.field static final blacklist TRANSACTION_unregisterOplusNetdEvent:I = 0xd

.field static final blacklist TRANSACTION_unregisterTcpScoreChange:I = 0x2

.field static final blacklist TRANSACTION_videoFrameLag:I = 0x9

.field static final blacklist TRANSACTION_videoStop:I = 0x8


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 82
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 83
    const-string v0, "com.oplus.network.IOplusNetworkStack"

    invoke-virtual {p0, p0, v0}, Lcom/oplus/network/IOplusNetworkStack$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/oplus/network/IOplusNetworkStack;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 91
    if-nez p0, :cond_0

    .line 92
    const/4 v0, 0x0

    return-object v0

    .line 94
    :cond_0
    const-string v0, "com.oplus.network.IOplusNetworkStack"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 95
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/oplus/network/IOplusNetworkStack;

    if-eqz v1, :cond_1

    .line 96
    move-object v1, v0

    check-cast v1, Lcom/oplus/network/IOplusNetworkStack;

    return-object v1

    .line 98
    :cond_1
    new-instance v1, Lcom/oplus/network/IOplusNetworkStack$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/oplus/network/IOplusNetworkStack$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 102
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 106
    const-string v0, "com.oplus.network.IOplusNetworkStack"

    .line 107
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 108
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 118
    packed-switch p1, :pswitch_data_1

    .line 258
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 114
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    return v1

    .line 247
    :pswitch_1
    sget-object v2, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Network;

    .line 249
    .local v2, "_arg0":Landroid/net/Network;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/oplus/network/INetworkDiagnosisCb$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/network/INetworkDiagnosisCb;

    move-result-object v3

    .line 250
    .local v3, "_arg1":Lcom/oplus/network/INetworkDiagnosisCb;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 251
    invoke-virtual {p0, v2, v3}, Lcom/oplus/network/IOplusNetworkStack$Stub;->startDiagnosis(Landroid/net/Network;Lcom/oplus/network/INetworkDiagnosisCb;)Z

    move-result v4

    .line 252
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 254
    goto/16 :goto_0

    .line 238
    .end local v2    # "_arg0":Landroid/net/Network;
    .end local v3    # "_arg1":Lcom/oplus/network/INetworkDiagnosisCb;
    .end local v4    # "_result":Z
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/oplus/network/IOplusNetdEventCb$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/network/IOplusNetdEventCb;

    move-result-object v2

    .line 239
    .local v2, "_arg0":Lcom/oplus/network/IOplusNetdEventCb;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 240
    invoke-virtual {p0, v2}, Lcom/oplus/network/IOplusNetworkStack$Stub;->unregisterOplusNetdEvent(Lcom/oplus/network/IOplusNetdEventCb;)V

    .line 241
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    goto/16 :goto_0

    .line 229
    .end local v2    # "_arg0":Lcom/oplus/network/IOplusNetdEventCb;
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/oplus/network/IOplusNetdEventCb$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/network/IOplusNetdEventCb;

    move-result-object v2

    .line 230
    .restart local v2    # "_arg0":Lcom/oplus/network/IOplusNetdEventCb;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 231
    invoke-virtual {p0, v2}, Lcom/oplus/network/IOplusNetworkStack$Stub;->registerOplusNetdEvent(Lcom/oplus/network/IOplusNetdEventCb;)V

    .line 232
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    goto/16 :goto_0

    .line 219
    .end local v2    # "_arg0":Lcom/oplus/network/IOplusNetdEventCb;
    :pswitch_4
    sget-object v2, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Network;

    .line 220
    .local v2, "_arg0":Landroid/net/Network;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 221
    invoke-virtual {p0, v2}, Lcom/oplus/network/IOplusNetworkStack$Stub;->getNetworkRtt(Landroid/net/Network;)I

    move-result v3

    .line 222
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 224
    goto/16 :goto_0

    .line 209
    .end local v2    # "_arg0":Landroid/net/Network;
    .end local v3    # "_result":I
    :pswitch_5
    sget-object v2, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Network;

    .line 210
    .restart local v2    # "_arg0":Landroid/net/Network;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 211
    invoke-virtual {p0, v2}, Lcom/oplus/network/IOplusNetworkStack$Stub;->getNetworkScore(Landroid/net/Network;)I

    move-result v3

    .line 212
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    goto/16 :goto_0

    .line 200
    .end local v2    # "_arg0":Landroid/net/Network;
    .end local v3    # "_result":I
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 201
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 202
    invoke-virtual {p0, v2}, Lcom/oplus/network/IOplusNetworkStack$Stub;->videoFrameLag(Z)V

    .line 203
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    goto/16 :goto_0

    .line 193
    .end local v2    # "_arg0":Z
    :pswitch_7
    invoke-virtual {p0}, Lcom/oplus/network/IOplusNetworkStack$Stub;->videoStop()V

    .line 194
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    goto/16 :goto_0

    .line 182
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 184
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 185
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 186
    invoke-virtual {p0, v2, v3}, Lcom/oplus/network/IOplusNetworkStack$Stub;->oplusSetRedirectPort(II)Z

    move-result v4

    .line 187
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 189
    goto :goto_0

    .line 170
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 172
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 173
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 174
    invoke-virtual {p0, v2, v3}, Lcom/oplus/network/IOplusNetworkStack$Stub;->oplusGetUidByPort(ILjava/lang/String;)I

    move-result v4

    .line 175
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    goto :goto_0

    .line 162
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_a
    invoke-virtual {p0}, Lcom/oplus/network/IOplusNetworkStack$Stub;->oplusClearAppDnsConfig()Z

    move-result v2

    .line 163
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 165
    goto :goto_0

    .line 153
    .end local v2    # "_result":Z
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 154
    .local v2, "_arg0":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 155
    invoke-virtual {p0, v2}, Lcom/oplus/network/IOplusNetworkStack$Stub;->oplusDelAppDnsConfig([Ljava/lang/String;)Z

    move-result v3

    .line 156
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 158
    goto :goto_0

    .line 141
    .end local v2    # "_arg0":[Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 143
    .restart local v2    # "_arg0":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 144
    .local v3, "_arg1":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 145
    invoke-virtual {p0, v2, v3}, Lcom/oplus/network/IOplusNetworkStack$Stub;->oplusAddAppDnsConfig([Ljava/lang/String;[I)Z

    move-result v4

    .line 146
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 148
    goto :goto_0

    .line 132
    .end local v2    # "_arg0":[Ljava/lang/String;
    .end local v3    # "_arg1":[I
    .end local v4    # "_result":Z
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/oplus/network/IOplusNetScoreChange$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/network/IOplusNetScoreChange;

    move-result-object v2

    .line 133
    .local v2, "_arg0":Lcom/oplus/network/IOplusNetScoreChange;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 134
    invoke-virtual {p0, v2}, Lcom/oplus/network/IOplusNetworkStack$Stub;->unregisterTcpScoreChange(Lcom/oplus/network/IOplusNetScoreChange;)V

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    goto :goto_0

    .line 123
    .end local v2    # "_arg0":Lcom/oplus/network/IOplusNetScoreChange;
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/oplus/network/IOplusNetScoreChange$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/network/IOplusNetScoreChange;

    move-result-object v2

    .line 124
    .restart local v2    # "_arg0":Lcom/oplus/network/IOplusNetScoreChange;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 125
    invoke-virtual {p0, v2}, Lcom/oplus/network/IOplusNetworkStack$Stub;->registerTcpScoreChange(Lcom/oplus/network/IOplusNetScoreChange;)V

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    nop

    .line 261
    .end local v2    # "_arg0":Lcom/oplus/network/IOplusNetScoreChange;
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
