.class public abstract Lcom/oplus/network/IOlk$Stub;
.super Landroid/os/Binder;
.source "IOlk.java"

# interfaces
.implements Lcom/oplus/network/IOlk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/network/IOlk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/network/IOlk$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addAuthResultInfo:I = 0x7

.field static final blacklist TRANSACTION_getVersion:I = 0x4

.field static final blacklist TRANSACTION_registerEventChange:I = 0x1

.field static final blacklist TRANSACTION_registerInternalCallback:I = 0x5

.field static final blacklist TRANSACTION_request:I = 0x3

.field static final blacklist TRANSACTION_unregisterEventChange:I = 0x2

.field static final blacklist TRANSACTION_unregisterInternalCallback:I = 0x6


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 50
    const-string v0, "com.oplus.network.IOlk"

    invoke-virtual {p0, p0, v0}, Lcom/oplus/network/IOlk$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/oplus/network/IOlk;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 58
    if-nez p0, :cond_0

    .line 59
    const/4 v0, 0x0

    return-object v0

    .line 61
    :cond_0
    const-string v0, "com.oplus.network.IOlk"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 62
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/oplus/network/IOlk;

    if-eqz v1, :cond_1

    .line 63
    move-object v1, v0

    check-cast v1, Lcom/oplus/network/IOlk;

    return-object v1

    .line 65
    :cond_1
    new-instance v1, Lcom/oplus/network/IOlk$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/oplus/network/IOlk$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 69
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

    .line 73
    const-string v0, "com.oplus.network.IOlk"

    .line 74
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 75
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 85
    packed-switch p1, :pswitch_data_1

    .line 160
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 81
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    return v1

    .line 146
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 148
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 150
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 152
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 153
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 154
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/oplus/network/IOlk$Stub;->addAuthResultInfo(IIILjava/lang/String;)V

    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    goto :goto_0

    .line 137
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/oplus/network/IOlkInternalCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/network/IOlkInternalCallback;

    move-result-object v2

    .line 138
    .local v2, "_arg0":Lcom/oplus/network/IOlkInternalCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 139
    invoke-virtual {p0, v2}, Lcom/oplus/network/IOlk$Stub;->unregisterInternalCallback(Lcom/oplus/network/IOlkInternalCallback;)V

    .line 140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    goto :goto_0

    .line 128
    .end local v2    # "_arg0":Lcom/oplus/network/IOlkInternalCallback;
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/oplus/network/IOlkInternalCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/network/IOlkInternalCallback;

    move-result-object v2

    .line 129
    .restart local v2    # "_arg0":Lcom/oplus/network/IOlkInternalCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 130
    invoke-virtual {p0, v2}, Lcom/oplus/network/IOlk$Stub;->registerInternalCallback(Lcom/oplus/network/IOlkInternalCallback;)V

    .line 131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    goto :goto_0

    .line 120
    .end local v2    # "_arg0":Lcom/oplus/network/IOlkInternalCallback;
    :pswitch_4
    invoke-virtual {p0}, Lcom/oplus/network/IOlk$Stub;->getVersion()Ljava/lang/String;

    move-result-object v2

    .line 121
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    goto :goto_0

    .line 111
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_5
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 112
    .local v2, "_arg0":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 113
    invoke-virtual {p0, v2}, Lcom/oplus/network/IOlk$Stub;->request(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 114
    .local v3, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 116
    goto :goto_0

    .line 102
    .end local v2    # "_arg0":Landroid/os/Bundle;
    .end local v3    # "_result":Landroid/os/Bundle;
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/oplus/network/IOlkEventChange$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/network/IOlkEventChange;

    move-result-object v2

    .line 103
    .local v2, "_arg0":Lcom/oplus/network/IOlkEventChange;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 104
    invoke-virtual {p0, v2}, Lcom/oplus/network/IOlk$Stub;->unregisterEventChange(Lcom/oplus/network/IOlkEventChange;)V

    .line 105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    goto :goto_0

    .line 90
    .end local v2    # "_arg0":Lcom/oplus/network/IOlkEventChange;
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 92
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/oplus/network/IOlkEventChange$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/network/IOlkEventChange;

    move-result-object v3

    .line 93
    .local v3, "_arg1":Lcom/oplus/network/IOlkEventChange;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 94
    invoke-virtual {p0, v2, v3}, Lcom/oplus/network/IOlk$Stub;->registerEventChange(ILcom/oplus/network/IOlkEventChange;)I

    move-result v4

    .line 95
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    nop

    .line 163
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lcom/oplus/network/IOlkEventChange;
    .end local v4    # "_result":I
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
