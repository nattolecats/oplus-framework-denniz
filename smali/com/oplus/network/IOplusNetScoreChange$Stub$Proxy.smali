.class Lcom/oplus/network/IOplusNetScoreChange$Stub$Proxy;
.super Ljava/lang/Object;
.source "IOplusNetScoreChange.java"

# interfaces
.implements Lcom/oplus/network/IOplusNetScoreChange;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/network/IOplusNetScoreChange$Stub;
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
    iput-object p1, p0, Lcom/oplus/network/IOplusNetScoreChange$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 96
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/oplus/network/IOplusNetScoreChange$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 103
    const-string v0, "com.oplus.network.IOplusNetScoreChange"

    return-object v0
.end method

.method public blacklist networkScoreChange(IIIZII)V
    .locals 4
    .param p1, "networkId"    # I
    .param p2, "oldScore"    # I
    .param p3, "newScore"    # I
    .param p4, "better"    # Z
    .param p5, "dnsScore"    # I
    .param p6, "tcpScore"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 111
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 113
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.oplus.network.IOplusNetScoreChange"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 118
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    iget-object v1, p0, Lcom/oplus/network/IOplusNetScoreChange$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 124
    nop

    .line 125
    return-void

    .line 123
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 124
    throw v1
.end method
