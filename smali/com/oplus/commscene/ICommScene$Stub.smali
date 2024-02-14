.class public abstract Lcom/oplus/commscene/ICommScene$Stub;
.super Landroid/os/Binder;
.source "ICommScene.java"

# interfaces
.implements Lcom/oplus/commscene/ICommScene;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/commscene/ICommScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/commscene/ICommScene$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_listen:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 24
    const-string v0, "com.oplus.commscene.ICommScene"

    invoke-virtual {p0, p0, v0}, Lcom/oplus/commscene/ICommScene$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/oplus/commscene/ICommScene;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 32
    if-nez p0, :cond_0

    .line 33
    const/4 v0, 0x0

    return-object v0

    .line 35
    :cond_0
    const-string v0, "com.oplus.commscene.ICommScene"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 36
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/oplus/commscene/ICommScene;

    if-eqz v1, :cond_1

    .line 37
    move-object v1, v0

    check-cast v1, Lcom/oplus/commscene/ICommScene;

    return-object v1

    .line 39
    :cond_1
    new-instance v1, Lcom/oplus/commscene/ICommScene$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/oplus/commscene/ICommScene$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 43
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

    .line 47
    const-string v0, "com.oplus.commscene.ICommScene"

    .line 48
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 49
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 59
    packed-switch p1, :pswitch_data_1

    .line 75
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 55
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    return v1

    .line 64
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/oplus/commscene/ICommSceneListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/commscene/ICommSceneListener;

    move-result-object v3

    .line 68
    .local v3, "_arg1":Lcom/oplus/commscene/ICommSceneListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 69
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 70
    invoke-virtual {p0, v2, v3, v4}, Lcom/oplus/commscene/ICommScene$Stub;->listen(Ljava/lang/String;Lcom/oplus/commscene/ICommSceneListener;I)V

    .line 71
    nop

    .line 78
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Lcom/oplus/commscene/ICommSceneListener;
    .end local v4    # "_arg2":I
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method
