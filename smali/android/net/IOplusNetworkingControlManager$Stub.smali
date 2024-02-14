.class public abstract Landroid/net/IOplusNetworkingControlManager$Stub;
.super Landroid/os/Binder;
.source "IOplusNetworkingControlManager.java"

# interfaces
.implements Landroid/net/IOplusNetworkingControlManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IOplusNetworkingControlManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IOplusNetworkingControlManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_factoryReset:I = 0x4

.field static final blacklist TRANSACTION_getPolicyList:I = 0x5

.field static final blacklist TRANSACTION_getUidPolicy:I = 0x2

.field static final blacklist TRANSACTION_getUidsWithPolicy:I = 0x3

.field static final blacklist TRANSACTION_setUidPolicy:I = 0x1


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 40
    const-string v0, "android.net.IOplusNetworkingControlManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/IOplusNetworkingControlManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public static whitelist asInterface(Landroid/os/IBinder;)Landroid/net/IOplusNetworkingControlManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 48
    if-nez p0, :cond_0

    .line 49
    const/4 v0, 0x0

    return-object v0

    .line 51
    :cond_0
    const-string v0, "android.net.IOplusNetworkingControlManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 52
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/IOplusNetworkingControlManager;

    if-eqz v1, :cond_1

    .line 53
    move-object v1, v0

    check-cast v1, Landroid/net/IOplusNetworkingControlManager;

    return-object v1

    .line 55
    :cond_1
    new-instance v1, Landroid/net/IOplusNetworkingControlManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/IOplusNetworkingControlManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 59
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

    .line 63
    const-string v0, "android.net.IOplusNetworkingControlManager"

    .line 64
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 65
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 75
    packed-switch p1, :pswitch_data_1

    .line 123
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 71
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    return v1

    .line 116
    :pswitch_1
    invoke-virtual {p0}, Landroid/net/IOplusNetworkingControlManager$Stub;->getPolicyList()Ljava/util/Map;

    move-result-object v2

    .line 117
    .local v2, "_result":Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 119
    goto :goto_0

    .line 110
    .end local v2    # "_result":Ljava/util/Map;
    :pswitch_2
    invoke-virtual {p0}, Landroid/net/IOplusNetworkingControlManager$Stub;->factoryReset()V

    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    goto :goto_0

    .line 101
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 102
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 103
    invoke-virtual {p0, v2}, Landroid/net/IOplusNetworkingControlManager$Stub;->getUidsWithPolicy(I)[I

    move-result-object v3

    .line 104
    .local v3, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 106
    goto :goto_0

    .line 91
    .end local v2    # "_arg0":I
    .end local v3    # "_result":[I
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 92
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 93
    invoke-virtual {p0, v2}, Landroid/net/IOplusNetworkingControlManager$Stub;->getUidPolicy(I)I

    move-result v3

    .line 94
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    goto :goto_0

    .line 80
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 82
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 83
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 84
    invoke-virtual {p0, v2, v3}, Landroid/net/IOplusNetworkingControlManager$Stub;->setUidPolicy(II)V

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    nop

    .line 126
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
