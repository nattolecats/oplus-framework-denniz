.class Lcom/oplus/network/IOplusNetdEventCb$Stub$Proxy;
.super Ljava/lang/Object;
.source "IOplusNetdEventCb.java"

# interfaces
.implements Lcom/oplus/network/IOplusNetdEventCb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/network/IOplusNetdEventCb$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private blacklist mRemote:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/oplus/network/IOplusNetdEventCb$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 96
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/oplus/network/IOplusNetdEventCb$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 103
    const-string v0, "com.oplus.network.IOplusNetdEventCb"

    return-object v0
.end method

.method public blacklist onDnsEvent(IIIILjava/lang/String;[Ljava/lang/String;II)V
    .locals 4
    .param p1, "netId"    # I
    .param p2, "eventType"    # I
    .param p3, "returnCode"    # I
    .param p4, "latencyMs"    # I
    .param p5, "hostname"    # Ljava/lang/String;
    .param p6, "ipAddresses"    # [Ljava/lang/String;
    .param p7, "ipAddressesCount"    # I
    .param p8, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 107
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 109
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.oplus.network.IOplusNetdEventCb"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 116
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget-object v1, p0, Lcom/oplus/network/IOplusNetdEventCb$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 122
    nop

    .line 123
    return-void

    .line 121
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 122
    throw v1
.end method
