.class public abstract Landroid/os/customize/IOplusCustomizeContactManagerService$Stub;
.super Landroid/os/Binder;
.source "IOplusCustomizeContactManagerService.java"

# interfaces
.implements Landroid/os/customize/IOplusCustomizeContactManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/customize/IOplusCustomizeContactManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/customize/IOplusCustomizeContactManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getContactBlockPattern:I = 0x4

.field static final blacklist TRANSACTION_getContactMatchPattern:I = 0x6

.field static final blacklist TRANSACTION_getContactNumberHideMode:I = 0xa

.field static final blacklist TRANSACTION_getContactNumberMaskEnable:I = 0xc

.field static final blacklist TRANSACTION_getContactOutgoOrIncomePattern:I = 0x8

.field static final blacklist TRANSACTION_isContactBlackListEnable:I = 0x2

.field static final blacklist TRANSACTION_isForbidCallLogEnable:I = 0xe

.field static final blacklist TRANSACTION_setContactBlackListEnable:I = 0x1

.field static final blacklist TRANSACTION_setContactBlockPattern:I = 0x3

.field static final blacklist TRANSACTION_setContactMatchPattern:I = 0x5

.field static final blacklist TRANSACTION_setContactNumberHideMode:I = 0x9

.field static final blacklist TRANSACTION_setContactNumberMaskEnable:I = 0xb

.field static final blacklist TRANSACTION_setContactOutgoOrIncomePattern:I = 0x7

.field static final blacklist TRANSACTION_setForbidCallLogEnable:I = 0xd


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 77
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 78
    const-string v0, "android.os.customize.IOplusCustomizeContactManagerService"

    invoke-virtual {p0, p0, v0}, Landroid/os/customize/IOplusCustomizeContactManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/os/customize/IOplusCustomizeContactManagerService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 86
    if-nez p0, :cond_0

    .line 87
    const/4 v0, 0x0

    return-object v0

    .line 89
    :cond_0
    const-string v0, "android.os.customize.IOplusCustomizeContactManagerService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 90
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/customize/IOplusCustomizeContactManagerService;

    if-eqz v1, :cond_1

    .line 91
    move-object v1, v0

    check-cast v1, Landroid/os/customize/IOplusCustomizeContactManagerService;

    return-object v1

    .line 93
    :cond_1
    new-instance v1, Landroid/os/customize/IOplusCustomizeContactManagerService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/customize/IOplusCustomizeContactManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 97
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

    .line 101
    const-string v0, "android.os.customize.IOplusCustomizeContactManagerService"

    .line 102
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 103
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 113
    packed-switch p1, :pswitch_data_1

    .line 236
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 109
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    return v1

    .line 229
    :pswitch_1
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeContactManagerService$Stub;->isForbidCallLogEnable()Z

    move-result v2

    .line 230
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 232
    goto/16 :goto_0

    .line 220
    .end local v2    # "_result":Z
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 221
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 222
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeContactManagerService$Stub;->setForbidCallLogEnable(I)Z

    move-result v3

    .line 223
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 225
    goto/16 :goto_0

    .line 212
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_3
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeContactManagerService$Stub;->getContactNumberMaskEnable()I

    move-result v2

    .line 213
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    goto/16 :goto_0

    .line 203
    .end local v2    # "_result":I
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 204
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 205
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeContactManagerService$Stub;->setContactNumberMaskEnable(I)Z

    move-result v3

    .line 206
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 208
    goto/16 :goto_0

    .line 195
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_5
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeContactManagerService$Stub;->getContactNumberHideMode()I

    move-result v2

    .line 196
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    goto/16 :goto_0

    .line 186
    .end local v2    # "_result":I
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 187
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 188
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeContactManagerService$Stub;->setContactNumberHideMode(I)Z

    move-result v3

    .line 189
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 191
    goto/16 :goto_0

    .line 178
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_7
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeContactManagerService$Stub;->getContactOutgoOrIncomePattern()I

    move-result v2

    .line 179
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    goto :goto_0

    .line 169
    .end local v2    # "_result":I
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 170
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 171
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeContactManagerService$Stub;->setContactOutgoOrIncomePattern(I)Z

    move-result v3

    .line 172
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 174
    goto :goto_0

    .line 161
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_9
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeContactManagerService$Stub;->getContactMatchPattern()I

    move-result v2

    .line 162
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    goto :goto_0

    .line 152
    .end local v2    # "_result":I
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 153
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 154
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeContactManagerService$Stub;->setContactMatchPattern(I)Z

    move-result v3

    .line 155
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 157
    goto :goto_0

    .line 144
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_b
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeContactManagerService$Stub;->getContactBlockPattern()I

    move-result v2

    .line 145
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    goto :goto_0

    .line 135
    .end local v2    # "_result":I
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 136
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 137
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeContactManagerService$Stub;->setContactBlockPattern(I)Z

    move-result v3

    .line 138
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 140
    goto :goto_0

    .line 127
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_d
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeContactManagerService$Stub;->isContactBlackListEnable()Z

    move-result v2

    .line 128
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 130
    goto :goto_0

    .line 118
    .end local v2    # "_result":Z
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 119
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 120
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeContactManagerService$Stub;->setContactBlackListEnable(Z)Z

    move-result v3

    .line 121
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 123
    nop

    .line 239
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
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
