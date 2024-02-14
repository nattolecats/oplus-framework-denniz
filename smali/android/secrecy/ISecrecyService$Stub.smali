.class public abstract Landroid/secrecy/ISecrecyService$Stub;
.super Landroid/os/Binder;
.source "ISecrecyService.java"

# interfaces
.implements Landroid/secrecy/ISecrecyService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/secrecy/ISecrecyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/secrecy/ISecrecyService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_generateCipherFromKey:I = 0x4

.field static final blacklist TRANSACTION_generateTokenFromKey:I = 0x2

.field static final blacklist TRANSACTION_getSecrecyState:I = 0x1

.field static final blacklist TRANSACTION_isInEncryptedAppList:I = 0x7

.field static final blacklist TRANSACTION_isKeyImported:I = 0x3

.field static final blacklist TRANSACTION_isSecrecySupport:I = 0x6

.field static final blacklist TRANSACTION_registerSecrecyServiceReceiver:I = 0x5


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 56
    const-string v0, "android.secrecy.ISecrecyService"

    invoke-virtual {p0, p0, v0}, Landroid/secrecy/ISecrecyService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public static whitelist asInterface(Landroid/os/IBinder;)Landroid/secrecy/ISecrecyService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 64
    if-nez p0, :cond_0

    .line 65
    const/4 v0, 0x0

    return-object v0

    .line 67
    :cond_0
    const-string v0, "android.secrecy.ISecrecyService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 68
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/secrecy/ISecrecyService;

    if-eqz v1, :cond_1

    .line 69
    move-object v1, v0

    check-cast v1, Landroid/secrecy/ISecrecyService;

    return-object v1

    .line 71
    :cond_1
    new-instance v1, Landroid/secrecy/ISecrecyService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/secrecy/ISecrecyService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 75
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

    .line 79
    const-string v0, "android.secrecy.ISecrecyService"

    .line 80
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 81
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 91
    packed-switch p1, :pswitch_data_1

    .line 162
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 87
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    return v1

    .line 147
    :pswitch_1
    sget-object v2, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ActivityInfo;

    .line 149
    .local v2, "_arg0":Landroid/content/pm/ActivityInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 151
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 153
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 154
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 155
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/secrecy/ISecrecyService$Stub;->isInEncryptedAppList(Landroid/content/pm/ActivityInfo;Ljava/lang/String;II)Z

    move-result v6

    .line 156
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 158
    goto :goto_0

    .line 139
    .end local v2    # "_arg0":Landroid/content/pm/ActivityInfo;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    .end local v6    # "_result":Z
    :pswitch_2
    invoke-virtual {p0}, Landroid/secrecy/ISecrecyService$Stub;->isSecrecySupport()Z

    move-result v2

    .line 140
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 142
    goto :goto_0

    .line 130
    .end local v2    # "_result":Z
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/secrecy/ISecrecyServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/secrecy/ISecrecyServiceReceiver;

    move-result-object v2

    .line 131
    .local v2, "_arg0":Landroid/secrecy/ISecrecyServiceReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 132
    invoke-virtual {p0, v2}, Landroid/secrecy/ISecrecyService$Stub;->registerSecrecyServiceReceiver(Landroid/secrecy/ISecrecyServiceReceiver;)Z

    move-result v3

    .line 133
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 135
    goto :goto_0

    .line 120
    .end local v2    # "_arg0":Landroid/secrecy/ISecrecyServiceReceiver;
    .end local v3    # "_result":Z
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 121
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 122
    invoke-virtual {p0, v2}, Landroid/secrecy/ISecrecyService$Stub;->generateCipherFromKey(I)[B

    move-result-object v3

    .line 123
    .local v3, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 125
    goto :goto_0

    .line 112
    .end local v2    # "_arg0":I
    .end local v3    # "_result":[B
    :pswitch_5
    invoke-virtual {p0}, Landroid/secrecy/ISecrecyService$Stub;->isKeyImported()Z

    move-result v2

    .line 113
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 115
    goto :goto_0

    .line 105
    .end local v2    # "_result":Z
    :pswitch_6
    invoke-virtual {p0}, Landroid/secrecy/ISecrecyService$Stub;->generateTokenFromKey()Ljava/lang/String;

    move-result-object v2

    .line 106
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    goto :goto_0

    .line 96
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 97
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 98
    invoke-virtual {p0, v2}, Landroid/secrecy/ISecrecyService$Stub;->getSecrecyState(I)Z

    move-result v3

    .line 99
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 101
    nop

    .line 165
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
