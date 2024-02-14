.class public abstract Landroid/operator/IOplusOperatorManager$Stub;
.super Landroid/os/Binder;
.source "IOplusOperatorManager.java"

# interfaces
.implements Landroid/operator/IOplusOperatorManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/operator/IOplusOperatorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/operator/IOplusOperatorManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getConfigMap:I = 0x2

.field static final blacklist TRANSACTION_getCotaAppPackageNameList:I = 0xb

.field static final blacklist TRANSACTION_getCotaInfo:I = 0xd

.field static final blacklist TRANSACTION_getCotaMountState:I = 0xa

.field static final blacklist TRANSACTION_grantCustomizedRuntimePermissions:I = 0x3

.field static final blacklist TRANSACTION_handleCotaCmd:I = 0xc

.field static final blacklist TRANSACTION_isInSimTriggeredSystemBlackList:I = 0x5

.field static final blacklist TRANSACTION_mountCotaImage:I = 0x8

.field static final blacklist TRANSACTION_notifyCotaMounted:I = 0x9

.field static final blacklist TRANSACTION_notifyRegionSwitch:I = 0x7

.field static final blacklist TRANSACTION_notifySimSwitch:I = 0x6

.field static final blacklist TRANSACTION_notifySmartCustomizationStart:I = 0x4

.field static final blacklist TRANSACTION_testAidl:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 95
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 96
    const-string v0, "android.operator.IOplusOperatorManager"

    invoke-virtual {p0, p0, v0}, Landroid/operator/IOplusOperatorManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/operator/IOplusOperatorManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 104
    if-nez p0, :cond_0

    .line 105
    const/4 v0, 0x0

    return-object v0

    .line 107
    :cond_0
    const-string v0, "android.operator.IOplusOperatorManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 108
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/operator/IOplusOperatorManager;

    if-eqz v1, :cond_1

    .line 109
    move-object v1, v0

    check-cast v1, Landroid/operator/IOplusOperatorManager;

    return-object v1

    .line 111
    :cond_1
    new-instance v1, Landroid/operator/IOplusOperatorManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/operator/IOplusOperatorManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 115
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 119
    const-string v0, "android.operator.IOplusOperatorManager"

    .line 120
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 121
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 131
    packed-switch p1, :pswitch_data_1

    .line 241
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 127
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    return v1

    .line 232
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 233
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 234
    invoke-virtual {p0, v2}, Landroid/operator/IOplusOperatorManager$Stub;->getCotaInfo(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 235
    .local v3, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 237
    goto/16 :goto_0

    .line 222
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/os/Bundle;
    :pswitch_2
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 223
    .local v2, "_arg0":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 224
    invoke-virtual {p0, v2}, Landroid/operator/IOplusOperatorManager$Stub;->handleCotaCmd(Landroid/os/Bundle;)Z

    move-result v3

    .line 225
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 227
    goto/16 :goto_0

    .line 214
    .end local v2    # "_arg0":Landroid/os/Bundle;
    .end local v3    # "_result":Z
    :pswitch_3
    invoke-virtual {p0}, Landroid/operator/IOplusOperatorManager$Stub;->getCotaAppPackageNameList()Ljava/util/List;

    move-result-object v2

    .line 215
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 217
    goto/16 :goto_0

    .line 205
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 207
    invoke-virtual {p0, v2}, Landroid/operator/IOplusOperatorManager$Stub;->getCotaMountState(Ljava/lang/String;)I

    move-result v3

    .line 208
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    goto/16 :goto_0

    .line 198
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_5
    invoke-virtual {p0}, Landroid/operator/IOplusOperatorManager$Stub;->notifyCotaMounted()V

    .line 199
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    goto :goto_0

    .line 190
    :pswitch_6
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 191
    .local v2, "_arg0":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 192
    invoke-virtual {p0, v2}, Landroid/operator/IOplusOperatorManager$Stub;->mountCotaImage(Landroid/os/Bundle;)V

    .line 193
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    goto :goto_0

    .line 181
    .end local v2    # "_arg0":Landroid/os/Bundle;
    :pswitch_7
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 182
    .restart local v2    # "_arg0":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 183
    invoke-virtual {p0, v2}, Landroid/operator/IOplusOperatorManager$Stub;->notifyRegionSwitch(Landroid/os/Bundle;)V

    .line 184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    goto :goto_0

    .line 172
    .end local v2    # "_arg0":Landroid/os/Bundle;
    :pswitch_8
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 173
    .restart local v2    # "_arg0":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 174
    invoke-virtual {p0, v2}, Landroid/operator/IOplusOperatorManager$Stub;->notifySimSwitch(Landroid/os/Bundle;)V

    .line 175
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    goto :goto_0

    .line 162
    .end local v2    # "_arg0":Landroid/os/Bundle;
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 163
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 164
    invoke-virtual {p0, v2}, Landroid/operator/IOplusOperatorManager$Stub;->isInSimTriggeredSystemBlackList(Ljava/lang/String;)Z

    move-result v3

    .line 165
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 167
    goto :goto_0

    .line 155
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_a
    invoke-virtual {p0}, Landroid/operator/IOplusOperatorManager$Stub;->notifySmartCustomizationStart()V

    .line 156
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    goto :goto_0

    .line 150
    :pswitch_b
    invoke-virtual {p0}, Landroid/operator/IOplusOperatorManager$Stub;->grantCustomizedRuntimePermissions()V

    .line 151
    goto :goto_0

    .line 141
    :pswitch_c
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 142
    .local v2, "_arg0":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 143
    invoke-virtual {p0, v2}, Landroid/operator/IOplusOperatorManager$Stub;->getConfigMap(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object v3

    .line 144
    .local v3, "_result":Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 146
    goto :goto_0

    .line 135
    .end local v2    # "_arg0":Landroid/os/Bundle;
    .end local v3    # "_result":Ljava/util/Map;
    :pswitch_d
    invoke-virtual {p0}, Landroid/operator/IOplusOperatorManager$Stub;->testAidl()V

    .line 136
    nop

    .line 244
    :goto_0
    return v1

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
