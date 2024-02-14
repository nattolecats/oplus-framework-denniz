.class public abstract Lcom/oplus/app/IOplusAccessControlObserver$Stub;
.super Landroid/os/Binder;
.source "IOplusAccessControlObserver.java"

# interfaces
.implements Lcom/oplus/app/IOplusAccessControlObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/app/IOplusAccessControlObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/app/IOplusAccessControlObserver$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onEncryptEnableChange:I = 0x3

.field static final blacklist TRANSACTION_onEncryptStateChange:I = 0x1

.field static final blacklist TRANSACTION_onHideEnableChange:I = 0x4

.field static final blacklist TRANSACTION_onHideStateChange:I = 0x2


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 33
    const-string v0, "com.oplus.app.IOplusAccessControlObserver"

    invoke-virtual {p0, p0, v0}, Lcom/oplus/app/IOplusAccessControlObserver$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public static whitelist asInterface(Landroid/os/IBinder;)Lcom/oplus/app/IOplusAccessControlObserver;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 41
    if-nez p0, :cond_0

    .line 42
    const/4 v0, 0x0

    return-object v0

    .line 44
    :cond_0
    const-string v0, "com.oplus.app.IOplusAccessControlObserver"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 45
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/oplus/app/IOplusAccessControlObserver;

    if-eqz v1, :cond_1

    .line 46
    move-object v1, v0

    check-cast v1, Lcom/oplus/app/IOplusAccessControlObserver;

    return-object v1

    .line 48
    :cond_1
    new-instance v1, Lcom/oplus/app/IOplusAccessControlObserver$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/oplus/app/IOplusAccessControlObserver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 52
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    const-string v0, "com.oplus.app.IOplusAccessControlObserver"

    .line 57
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 58
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 68
    packed-switch p1, :pswitch_data_1

    .line 104
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 64
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    return v1

    .line 97
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 98
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 99
    invoke-virtual {p0, v2}, Lcom/oplus/app/IOplusAccessControlObserver$Stub;->onHideEnableChange(Z)V

    .line 100
    goto :goto_0

    .line 89
    .end local v2    # "_arg0":Z
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 90
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 91
    invoke-virtual {p0, v2}, Lcom/oplus/app/IOplusAccessControlObserver$Stub;->onEncryptEnableChange(Z)V

    .line 92
    goto :goto_0

    .line 81
    .end local v2    # "_arg0":Z
    :pswitch_3
    sget-object v2, Lcom/oplus/app/OplusAccessControlInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/app/OplusAccessControlInfo;

    .line 82
    .local v2, "_arg0":Lcom/oplus/app/OplusAccessControlInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 83
    invoke-virtual {p0, v2}, Lcom/oplus/app/IOplusAccessControlObserver$Stub;->onHideStateChange(Lcom/oplus/app/OplusAccessControlInfo;)V

    .line 84
    goto :goto_0

    .line 73
    .end local v2    # "_arg0":Lcom/oplus/app/OplusAccessControlInfo;
    :pswitch_4
    sget-object v2, Lcom/oplus/app/OplusAccessControlInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/app/OplusAccessControlInfo;

    .line 74
    .restart local v2    # "_arg0":Lcom/oplus/app/OplusAccessControlInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 75
    invoke-virtual {p0, v2}, Lcom/oplus/app/IOplusAccessControlObserver$Stub;->onEncryptStateChange(Lcom/oplus/app/OplusAccessControlInfo;)V

    .line 76
    nop

    .line 107
    .end local v2    # "_arg0":Lcom/oplus/app/OplusAccessControlInfo;
    :goto_0
    return v1

    nop

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
