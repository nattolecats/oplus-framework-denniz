.class Lcom/oplus/network/IOplusUidNwChange$Stub$Proxy;
.super Ljava/lang/Object;
.source "IOplusUidNwChange.java"

# interfaces
.implements Lcom/oplus/network/IOplusUidNwChange;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/network/IOplusUidNwChange$Stub;
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

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/oplus/network/IOplusUidNwChange$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 101
    return-void
.end method


# virtual methods
.method public blacklist appFreezeDataNotify(Ljava/lang/String;)V
    .locals 5
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 130
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 132
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.oplus.network.IOplusUidNwChange"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    iget-object v1, p0, Lcom/oplus/network/IOplusUidNwChange$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 138
    nop

    .line 139
    return-void

    .line 137
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 138
    throw v1
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/oplus/network/IOplusUidNwChange$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 108
    const-string v0, "com.oplus.network.IOplusUidNwChange"

    return-object v0
.end method

.method public blacklist uidNetworkChange(IZZ)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "networkFail"    # Z
    .param p3, "isForegroundApp"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 116
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 118
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.oplus.network.IOplusUidNwChange"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 121
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 122
    iget-object v1, p0, Lcom/oplus/network/IOplusUidNwChange$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 126
    nop

    .line 127
    return-void

    .line 125
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 126
    throw v1
.end method
