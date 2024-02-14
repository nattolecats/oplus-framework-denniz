.class public Landroid/view/IOplusWindowImpl;
.super Ljava/lang/Object;
.source "IOplusWindowImpl.java"

# interfaces
.implements Landroid/view/IOplusWindow;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "IOplusWindowImpl"


# instance fields
.field private final blacklist mRemote:Landroid/os/IBinder;


# direct methods
.method private constructor blacklist <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Landroid/view/IOplusWindowImpl;->mRemote:Landroid/os/IBinder;

    .line 60
    return-void
.end method

.method private constructor blacklist <init>(Landroid/view/IWindow;)V
    .locals 1
    .param p1, "client"    # Landroid/view/IWindow;

    .line 55
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/IOplusWindowImpl;-><init>(Landroid/os/IBinder;)V

    .line 56
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/view/IOplusWindow;
    .locals 1
    .param p0, "remote"    # Landroid/os/IBinder;

    .line 73
    new-instance v0, Landroid/view/IOplusWindowImpl;

    invoke-direct {v0, p0}, Landroid/view/IOplusWindowImpl;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist asInterface(Landroid/view/IWindow;)Landroid/view/IOplusWindow;
    .locals 1
    .param p0, "client"    # Landroid/view/IWindow;

    .line 66
    if-nez p0, :cond_0

    .line 67
    const/4 v0, 0x0

    return-object v0

    .line 69
    :cond_0
    new-instance v0, Landroid/view/IOplusWindowImpl;

    invoke-direct {v0, p0}, Landroid/view/IOplusWindowImpl;-><init>(Landroid/view/IWindow;)V

    return-object v0
.end method


# virtual methods
.method public blacklist directFindCmd(Lcom/oplus/direct/OplusDirectFindCmd;)V
    .locals 5
    .param p1, "findCmd"    # Lcom/oplus/direct/OplusDirectFindCmd;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 192
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 194
    .local v0, "data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.view.IWindow"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 195
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 196
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    invoke-virtual {p1, v0, v2}, Lcom/oplus/direct/OplusDirectFindCmd;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 199
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    :goto_0
    iget-object v2, p0, Landroid/view/IOplusWindowImpl;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2718

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 204
    nop

    .line 205
    return-void

    .line 203
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 204
    throw v1
.end method

.method public blacklist longshotCollectWindow(ZZ)Lcom/oplus/view/analysis/OplusWindowNode;
    .locals 6
    .param p1, "isStatusBar"    # Z
    .param p2, "isNavigationBar"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 119
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 120
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 121
    .local v1, "reply":Landroid/os/Parcel;
    const/4 v2, 0x0

    .line 123
    .local v2, "result":Lcom/oplus/view/analysis/OplusWindowNode;
    :try_start_0
    const-string v3, "android.view.IWindow"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 124
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    if-eqz p2, :cond_1

    move v3, v4

    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    iget-object v3, p0, Landroid/view/IOplusWindowImpl;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x2714

    invoke-interface {v3, v5, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 127
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 128
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 129
    sget-object v3, Lcom/oplus/view/analysis/OplusWindowNode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/view/analysis/OplusWindowNode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 132
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 133
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 134
    nop

    .line 135
    return-object v2

    .line 132
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 133
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 134
    throw v3
.end method

.method public blacklist longshotDump(Ljava/io/FileDescriptor;Ljava/util/List;Ljava/util/List;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileDescriptor;",
            "Ljava/util/List<",
            "Lcom/oplus/view/analysis/OplusWindowNode;",
            ">;",
            "Ljava/util/List<",
            "Lcom/oplus/view/analysis/OplusWindowNode;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    .local p2, "systemWindows":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/view/analysis/OplusWindowNode;>;"
    .local p3, "floatWindows":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/view/analysis/OplusWindowNode;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 96
    .local v0, "data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.view.IWindow"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 98
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    .line 99
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_0

    .line 102
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    :goto_0
    if-eqz p3, :cond_1

    .line 105
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_1

    .line 108
    :cond_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    :goto_1
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 111
    iget-object v1, p0, Landroid/view/IOplusWindowImpl;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2713

    const/4 v4, 0x0

    invoke-interface {v1, v3, v0, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 114
    nop

    .line 115
    return-void

    .line 113
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 114
    throw v1
.end method

.method public blacklist longshotInjectInput(Landroid/view/InputEvent;I)V
    .locals 5
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 140
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 142
    .local v0, "data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.view.IWindow"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 143
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 144
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    invoke-virtual {p1, v0, v2}, Landroid/view/InputEvent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 147
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    iget-object v2, p0, Landroid/view/IOplusWindowImpl;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2715

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 153
    nop

    .line 154
    return-void

    .line 152
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 153
    throw v1
.end method

.method public blacklist longshotInjectInputBegin()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 158
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 160
    .local v0, "data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.view.IWindow"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 161
    iget-object v1, p0, Landroid/view/IOplusWindowImpl;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x2716

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 164
    nop

    .line 165
    return-void

    .line 163
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 164
    throw v1
.end method

.method public blacklist longshotInjectInputEnd()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 169
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 171
    .local v0, "data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.view.IWindow"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 172
    iget-object v1, p0, Landroid/view/IOplusWindowImpl;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x2717

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 175
    nop

    .line 176
    return-void

    .line 174
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 175
    throw v1
.end method

.method public blacklist longshotNotifyConnected(Z)V
    .locals 5
    .param p1, "isConnected"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 81
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 83
    .local v0, "data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.view.IWindow"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 84
    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    iget-object v2, p0, Landroid/view/IOplusWindowImpl;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2712

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 88
    nop

    .line 89
    return-void

    .line 87
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 88
    throw v1
.end method

.method public blacklist requestScrollCapture(Lcom/oplus/screenshot/IOplusScrollCaptureResponseListener;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "listener"    # Lcom/oplus/screenshot/IOplusScrollCaptureResponseListener;
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 211
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 213
    .local v0, "data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.view.IWindow"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 214
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/oplus/screenshot/IOplusScrollCaptureResponseListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 215
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_1

    .line 216
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    invoke-virtual {p2, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 219
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    :goto_1
    iget-object v3, p0, Landroid/view/IOplusWindowImpl;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x271a

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 224
    nop

    .line 225
    return-void

    .line 223
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 224
    throw v1
.end method

.method public blacklist screenshotDump(Ljava/io/FileDescriptor;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 180
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 182
    .local v0, "data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.view.IWindow"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 184
    iget-object v1, p0, Landroid/view/IOplusWindowImpl;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x2719

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 187
    nop

    .line 188
    return-void

    .line 186
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 187
    throw v1
.end method
