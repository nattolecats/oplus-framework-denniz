.class public abstract Lcom/oplus/network/IOplusNetworkStatsService$Stub;
.super Landroid/os/Binder;
.source "IOplusNetworkStatsService.java"

# interfaces
.implements Lcom/oplus/network/IOplusNetworkStatsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/network/IOplusNetworkStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/network/IOplusNetworkStatsService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_fetchAppFreezeStats:I = 0x4

.field static final blacklist TRANSACTION_fetchAppFreezeSyns:I = 0x3

.field static final blacklist TRANSACTION_getAppFreezeConfig:I = 0x5

.field static final blacklist TRANSACTION_getIfaceStats:I = 0xf

.field static final blacklist TRANSACTION_getIfnameUidStatsTotal:I = 0xe

.field static final blacklist TRANSACTION_getSocketIsLocal:I = 0xc

.field static final blacklist TRANSACTION_getSocketSpeedsTotal:I = 0x7

.field static final blacklist TRANSACTION_getUidPurStats:I = 0x2

.field static final blacklist TRANSACTION_getUidPurStatsTotal:I = 0x1

.field static final blacklist TRANSACTION_getUidSpeedsIfindex:I = 0x8

.field static final blacklist TRANSACTION_getUidStatsTotal:I = 0xd

.field static final blacklist TRANSACTION_setAppFreezeConfig:I = 0x6

.field static final blacklist TRANSACTION_setBpfSocketSpeedsConfig:I = 0xb

.field static final blacklist TRANSACTION_startBpfSocketSpeedsCalc:I = 0x9

.field static final blacklist TRANSACTION_stopBpfSocketSpeedsCalc:I = 0xa


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 84
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 85
    const-string v0, "com.oplus.network.IOplusNetworkStatsService"

    invoke-virtual {p0, p0, v0}, Lcom/oplus/network/IOplusNetworkStatsService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/oplus/network/IOplusNetworkStatsService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 93
    if-nez p0, :cond_0

    .line 94
    const/4 v0, 0x0

    return-object v0

    .line 96
    :cond_0
    const-string v0, "com.oplus.network.IOplusNetworkStatsService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 97
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/oplus/network/IOplusNetworkStatsService;

    if-eqz v1, :cond_1

    .line 98
    move-object v1, v0

    check-cast v1, Lcom/oplus/network/IOplusNetworkStatsService;

    return-object v1

    .line 100
    :cond_1
    new-instance v1, Lcom/oplus/network/IOplusNetworkStatsService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/oplus/network/IOplusNetworkStatsService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 104
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

    .line 108
    const-string v0, "com.oplus.network.IOplusNetworkStatsService"

    .line 109
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 110
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 120
    packed-switch p1, :pswitch_data_1

    .line 262
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 116
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    return v1

    .line 253
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 254
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 255
    invoke-virtual {p0, v2}, Lcom/oplus/network/IOplusNetworkStatsService$Stub;->getIfaceStats(Ljava/lang/String;)Lcom/oplus/network/stats/StatsValue;

    move-result-object v3

    .line 256
    .local v3, "_result":Lcom/oplus/network/stats/StatsValue;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 258
    goto/16 :goto_0

    .line 245
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Lcom/oplus/network/stats/StatsValue;
    :pswitch_2
    invoke-virtual {p0}, Lcom/oplus/network/IOplusNetworkStatsService$Stub;->getIfnameUidStatsTotal()Lcom/oplus/network/stats/IfaceUidStatsTotal;

    move-result-object v2

    .line 246
    .local v2, "_result":Lcom/oplus/network/stats/IfaceUidStatsTotal;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 248
    goto/16 :goto_0

    .line 238
    .end local v2    # "_result":Lcom/oplus/network/stats/IfaceUidStatsTotal;
    :pswitch_3
    invoke-virtual {p0}, Lcom/oplus/network/IOplusNetworkStatsService$Stub;->getUidStatsTotal()Lcom/oplus/network/stats/StatsValueTotal;

    move-result-object v2

    .line 239
    .local v2, "_result":Lcom/oplus/network/stats/StatsValueTotal;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 241
    goto/16 :goto_0

    .line 229
    .end local v2    # "_result":Lcom/oplus/network/stats/StatsValueTotal;
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 230
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 231
    invoke-virtual {p0, v2, v3}, Lcom/oplus/network/IOplusNetworkStatsService$Stub;->getSocketIsLocal(J)I

    move-result v4

    .line 232
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    goto/16 :goto_0

    .line 219
    .end local v2    # "_arg0":J
    .end local v4    # "_result":I
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 220
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 221
    invoke-virtual {p0, v2}, Lcom/oplus/network/IOplusNetworkStatsService$Stub;->setBpfSocketSpeedsConfig(I)I

    move-result v3

    .line 222
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 224
    goto/16 :goto_0

    .line 209
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 210
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 211
    invoke-virtual {p0, v2}, Lcom/oplus/network/IOplusNetworkStatsService$Stub;->stopBpfSocketSpeedsCalc(I)I

    move-result v3

    .line 212
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    goto/16 :goto_0

    .line 197
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 199
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 200
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 201
    invoke-virtual {p0, v2, v3}, Lcom/oplus/network/IOplusNetworkStatsService$Stub;->startBpfSocketSpeedsCalc(IZ)I

    move-result v4

    .line 202
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    goto/16 :goto_0

    .line 187
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":I
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 188
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 189
    invoke-virtual {p0, v2}, Lcom/oplus/network/IOplusNetworkStatsService$Stub;->getUidSpeedsIfindex(I)Lcom/oplus/network/stats/IfaceSpeedsValueTotal;

    move-result-object v3

    .line 190
    .local v3, "_result":Lcom/oplus/network/stats/IfaceSpeedsValueTotal;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 192
    goto :goto_0

    .line 173
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Lcom/oplus/network/stats/IfaceSpeedsValueTotal;
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 175
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 177
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v4

    .line 178
    .local v4, "_arg2":[J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 179
    invoke-virtual {p0, v2, v3, v4}, Lcom/oplus/network/IOplusNetworkStatsService$Stub;->getSocketSpeedsTotal(II[J)Lcom/oplus/network/stats/SpeedsValueTotal;

    move-result-object v5

    .line 180
    .local v5, "_result":Lcom/oplus/network/stats/SpeedsValueTotal;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 182
    goto :goto_0

    .line 163
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":[J
    .end local v5    # "_result":Lcom/oplus/network/stats/SpeedsValueTotal;
    :pswitch_a
    sget-object v2, Lcom/oplus/network/stats/AppFreezeConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/network/stats/AppFreezeConfig;

    .line 164
    .local v2, "_arg0":Lcom/oplus/network/stats/AppFreezeConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 165
    invoke-virtual {p0, v2}, Lcom/oplus/network/IOplusNetworkStatsService$Stub;->setAppFreezeConfig(Lcom/oplus/network/stats/AppFreezeConfig;)Z

    move-result v3

    .line 166
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 168
    goto :goto_0

    .line 155
    .end local v2    # "_arg0":Lcom/oplus/network/stats/AppFreezeConfig;
    .end local v3    # "_result":Z
    :pswitch_b
    invoke-virtual {p0}, Lcom/oplus/network/IOplusNetworkStatsService$Stub;->getAppFreezeConfig()Lcom/oplus/network/stats/AppFreezeConfig;

    move-result-object v2

    .line 156
    .local v2, "_result":Lcom/oplus/network/stats/AppFreezeConfig;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 158
    goto :goto_0

    .line 148
    .end local v2    # "_result":Lcom/oplus/network/stats/AppFreezeConfig;
    :pswitch_c
    invoke-virtual {p0}, Lcom/oplus/network/IOplusNetworkStatsService$Stub;->fetchAppFreezeStats()Lcom/oplus/network/stats/AppFreezeStatsTotal;

    move-result-object v2

    .line 149
    .local v2, "_result":Lcom/oplus/network/stats/AppFreezeStatsTotal;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 151
    goto :goto_0

    .line 141
    .end local v2    # "_result":Lcom/oplus/network/stats/AppFreezeStatsTotal;
    :pswitch_d
    invoke-virtual {p0}, Lcom/oplus/network/IOplusNetworkStatsService$Stub;->fetchAppFreezeSyns()Lcom/oplus/network/stats/AppFreezeSyncTotal;

    move-result-object v2

    .line 142
    .local v2, "_result":Lcom/oplus/network/stats/AppFreezeSyncTotal;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 144
    goto :goto_0

    .line 132
    .end local v2    # "_result":Lcom/oplus/network/stats/AppFreezeSyncTotal;
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 133
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 134
    invoke-virtual {p0, v2}, Lcom/oplus/network/IOplusNetworkStatsService$Stub;->getUidPurStats(I)Lcom/oplus/network/stats/StatsValue;

    move-result-object v3

    .line 135
    .local v3, "_result":Lcom/oplus/network/stats/StatsValue;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 137
    goto :goto_0

    .line 124
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Lcom/oplus/network/stats/StatsValue;
    :pswitch_f
    invoke-virtual {p0}, Lcom/oplus/network/IOplusNetworkStatsService$Stub;->getUidPurStatsTotal()Lcom/oplus/network/stats/StatsValueTotal;

    move-result-object v2

    .line 125
    .local v2, "_result":Lcom/oplus/network/stats/StatsValueTotal;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 127
    nop

    .line 265
    .end local v2    # "_result":Lcom/oplus/network/stats/StatsValueTotal;
    :goto_0
    return v1

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
