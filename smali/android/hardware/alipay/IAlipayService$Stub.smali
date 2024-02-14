.class public abstract Landroid/hardware/alipay/IAlipayService$Stub;
.super Landroid/os/Binder;
.source "IAlipayService.java"

# interfaces
.implements Landroid/hardware/alipay/IAlipayService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/alipay/IAlipayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/alipay/IAlipayService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_alipayInvokeCommand:I = 0x1

.field static final blacklist TRANSACTION_cancel:I = 0x2

.field static final blacklist TRANSACTION_getDeviceModel:I = 0x5

.field static final blacklist TRANSACTION_getFingerprintIconDiameter:I = 0x6

.field static final blacklist TRANSACTION_getFingerprintIconExternalCircleXY:I = 0x7

.field static final blacklist TRANSACTION_getSupportBIOTypes:I = 0x3

.field static final blacklist TRANSACTION_getSupportIFAAVersion:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 54
    const-string v0, "android.hardware.alipay.IAlipayService"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/alipay/IAlipayService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/alipay/IAlipayService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 62
    if-nez p0, :cond_0

    .line 63
    const/4 v0, 0x0

    return-object v0

    .line 65
    :cond_0
    const-string v0, "android.hardware.alipay.IAlipayService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 66
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/alipay/IAlipayService;

    if-eqz v1, :cond_1

    .line 67
    move-object v1, v0

    check-cast v1, Landroid/hardware/alipay/IAlipayService;

    return-object v1

    .line 69
    :cond_1
    new-instance v1, Landroid/hardware/alipay/IAlipayService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/alipay/IAlipayService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 73
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

    .line 77
    const-string v0, "android.hardware.alipay.IAlipayService"

    .line 78
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 79
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 89
    packed-switch p1, :pswitch_data_1

    .line 151
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 85
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    return v1

    .line 142
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 144
    invoke-virtual {p0, v2}, Landroid/hardware/alipay/IAlipayService$Stub;->getFingerprintIconExternalCircleXY(Ljava/lang/String;)I

    move-result v3

    .line 145
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    goto :goto_0

    .line 134
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_2
    invoke-virtual {p0}, Landroid/hardware/alipay/IAlipayService$Stub;->getFingerprintIconDiameter()I

    move-result v2

    .line 135
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    goto :goto_0

    .line 127
    .end local v2    # "_result":I
    :pswitch_3
    invoke-virtual {p0}, Landroid/hardware/alipay/IAlipayService$Stub;->getDeviceModel()Ljava/lang/String;

    move-result-object v2

    .line 128
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    goto :goto_0

    .line 120
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_4
    invoke-virtual {p0}, Landroid/hardware/alipay/IAlipayService$Stub;->getSupportIFAAVersion()I

    move-result v2

    .line 121
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    goto :goto_0

    .line 113
    .end local v2    # "_result":I
    :pswitch_5
    invoke-virtual {p0}, Landroid/hardware/alipay/IAlipayService$Stub;->getSupportBIOTypes()I

    move-result v2

    .line 114
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    goto :goto_0

    .line 104
    .end local v2    # "_result":I
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 106
    invoke-virtual {p0, v2}, Landroid/hardware/alipay/IAlipayService$Stub;->cancel(Ljava/lang/String;)I

    move-result v3

    .line 107
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    goto :goto_0

    .line 94
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 95
    .local v2, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 96
    invoke-virtual {p0, v2}, Landroid/hardware/alipay/IAlipayService$Stub;->alipayInvokeCommand([B)[B

    move-result-object v3

    .line 97
    .local v3, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 99
    nop

    .line 154
    .end local v2    # "_arg0":[B
    .end local v3    # "_result":[B
    :goto_0
    return v1

    nop

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
