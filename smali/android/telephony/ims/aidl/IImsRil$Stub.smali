.class public abstract Landroid/telephony/ims/aidl/IImsRil$Stub;
.super Landroid/os/Binder;
.source "IImsRil.java"

# interfaces
.implements Landroid/telephony/ims/aidl/IImsRil;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/aidl/IImsRil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/aidl/IImsRil$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_commonReqToIms:I = 0x1

.field static final blacklist TRANSACTION_getIImsExtBinder:I = 0x4

.field static final blacklist TRANSACTION_registerIndication:I = 0x2

.field static final blacklist TRANSACTION_unRegisterIndication:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 34
    const-string v0, "android.telephony.ims.aidl.IImsRil"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/ims/aidl/IImsRil$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRil;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 42
    if-nez p0, :cond_0

    .line 43
    const/4 v0, 0x0

    return-object v0

    .line 45
    :cond_0
    const-string v0, "android.telephony.ims.aidl.IImsRil"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 46
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/telephony/ims/aidl/IImsRil;

    if-eqz v1, :cond_1

    .line 47
    move-object v1, v0

    check-cast v1, Landroid/telephony/ims/aidl/IImsRil;

    return-object v1

    .line 49
    :cond_1
    new-instance v1, Landroid/telephony/ims/aidl/IImsRil$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/telephony/ims/aidl/IImsRil$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 53
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

    .line 57
    const-string v0, "android.telephony.ims.aidl.IImsRil"

    .line 58
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 59
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 69
    packed-switch p1, :pswitch_data_1

    .line 111
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 65
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    return v1

    .line 104
    :pswitch_1
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/IImsRil$Stub;->getIImsExtBinder()Lcom/oplus/ims/IImsExt;

    move-result-object v2

    .line 105
    .local v2, "_result":Lcom/oplus/ims/IImsExt;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 107
    goto :goto_0

    .line 96
    .end local v2    # "_result":Lcom/oplus/ims/IImsExt;
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ims/aidl/IImsRilInd$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRilInd;

    move-result-object v2

    .line 97
    .local v2, "_arg0":Landroid/telephony/ims/aidl/IImsRilInd;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 98
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsRil$Stub;->unRegisterIndication(Landroid/telephony/ims/aidl/IImsRilInd;)V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    goto :goto_0

    .line 87
    .end local v2    # "_arg0":Landroid/telephony/ims/aidl/IImsRilInd;
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ims/aidl/IImsRilInd$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRilInd;

    move-result-object v2

    .line 88
    .restart local v2    # "_arg0":Landroid/telephony/ims/aidl/IImsRilInd;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 89
    invoke-virtual {p0, v2}, Landroid/telephony/ims/aidl/IImsRil$Stub;->registerIndication(Landroid/telephony/ims/aidl/IImsRilInd;)V

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    goto :goto_0

    .line 74
    .end local v2    # "_arg0":Landroid/telephony/ims/aidl/IImsRilInd;
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 76
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 78
    .local v3, "_arg1":I
    sget-object v4, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Message;

    .line 79
    .local v4, "_arg2":Landroid/os/Message;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 80
    invoke-virtual {p0, v2, v3, v4}, Landroid/telephony/ims/aidl/IImsRil$Stub;->commonReqToIms(IILandroid/os/Message;)V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    nop

    .line 114
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/os/Message;
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
