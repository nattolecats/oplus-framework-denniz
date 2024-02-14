.class Lcom/oplus/commscene/ICommScene$Stub$Proxy;
.super Ljava/lang/Object;
.source "ICommScene.java"

# interfaces
.implements Lcom/oplus/commscene/ICommScene;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/commscene/ICommScene$Stub;
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

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/oplus/commscene/ICommScene$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 86
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/oplus/commscene/ICommScene$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 93
    const-string v0, "com.oplus.commscene.ICommScene"

    return-object v0
.end method

.method public blacklist listen(Ljava/lang/String;Lcom/oplus/commscene/ICommSceneListener;I)V
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/oplus/commscene/ICommSceneListener;
    .param p3, "events"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 97
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 99
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.oplus.commscene.ICommScene"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 102
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    iget-object v1, p0, Lcom/oplus/commscene/ICommScene$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 107
    nop

    .line 108
    return-void

    .line 106
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 107
    throw v1
.end method
