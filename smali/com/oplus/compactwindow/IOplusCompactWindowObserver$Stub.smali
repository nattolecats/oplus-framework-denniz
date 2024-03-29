.class public abstract Lcom/oplus/compactwindow/IOplusCompactWindowObserver$Stub;
.super Landroid/os/Binder;
.source "IOplusCompactWindowObserver.java"

# interfaces
.implements Lcom/oplus/compactwindow/IOplusCompactWindowObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/compactwindow/IOplusCompactWindowObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/compactwindow/IOplusCompactWindowObserver$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onCompactWindowDied:I = 0x3

.field static final blacklist TRANSACTION_onCompactWindowExit:I = 0x2

.field static final blacklist TRANSACTION_onCompactWindowInfoChanged:I = 0x4

.field static final blacklist TRANSACTION_onCompactWindowStart:I = 0x1


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 40
    const-string v0, "com.oplus.compactwindow.IOplusCompactWindowObserver"

    invoke-virtual {p0, p0, v0}, Lcom/oplus/compactwindow/IOplusCompactWindowObserver$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public static whitelist asInterface(Landroid/os/IBinder;)Lcom/oplus/compactwindow/IOplusCompactWindowObserver;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 48
    if-nez p0, :cond_0

    .line 49
    const/4 v0, 0x0

    return-object v0

    .line 51
    :cond_0
    const-string v0, "com.oplus.compactwindow.IOplusCompactWindowObserver"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 52
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/oplus/compactwindow/IOplusCompactWindowObserver;

    if-eqz v1, :cond_1

    .line 53
    move-object v1, v0

    check-cast v1, Lcom/oplus/compactwindow/IOplusCompactWindowObserver;

    return-object v1

    .line 55
    :cond_1
    new-instance v1, Lcom/oplus/compactwindow/IOplusCompactWindowObserver$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/oplus/compactwindow/IOplusCompactWindowObserver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 59
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

    .line 63
    const-string v0, "com.oplus.compactwindow.IOplusCompactWindowObserver"

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

    .line 111
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 71
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    return v1

    .line 104
    :pswitch_1
    sget-object v2, Lcom/oplus/compactwindow/OplusCompactWindowInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/compactwindow/OplusCompactWindowInfo;

    .line 105
    .local v2, "_arg0":Lcom/oplus/compactwindow/OplusCompactWindowInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 106
    invoke-virtual {p0, v2}, Lcom/oplus/compactwindow/IOplusCompactWindowObserver$Stub;->onCompactWindowInfoChanged(Lcom/oplus/compactwindow/OplusCompactWindowInfo;)V

    .line 107
    goto :goto_0

    .line 96
    .end local v2    # "_arg0":Lcom/oplus/compactwindow/OplusCompactWindowInfo;
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 98
    invoke-virtual {p0, v2}, Lcom/oplus/compactwindow/IOplusCompactWindowObserver$Stub;->onCompactWindowDied(Ljava/lang/String;)V

    .line 99
    goto :goto_0

    .line 88
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_3
    sget-object v2, Lcom/oplus/compactwindow/OplusCompactWindowInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/compactwindow/OplusCompactWindowInfo;

    .line 89
    .local v2, "_arg0":Lcom/oplus/compactwindow/OplusCompactWindowInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 90
    invoke-virtual {p0, v2}, Lcom/oplus/compactwindow/IOplusCompactWindowObserver$Stub;->onCompactWindowExit(Lcom/oplus/compactwindow/OplusCompactWindowInfo;)V

    .line 91
    goto :goto_0

    .line 80
    .end local v2    # "_arg0":Lcom/oplus/compactwindow/OplusCompactWindowInfo;
    :pswitch_4
    sget-object v2, Lcom/oplus/compactwindow/OplusCompactWindowInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/compactwindow/OplusCompactWindowInfo;

    .line 81
    .restart local v2    # "_arg0":Lcom/oplus/compactwindow/OplusCompactWindowInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 82
    invoke-virtual {p0, v2}, Lcom/oplus/compactwindow/IOplusCompactWindowObserver$Stub;->onCompactWindowStart(Lcom/oplus/compactwindow/OplusCompactWindowInfo;)V

    .line 83
    nop

    .line 114
    .end local v2    # "_arg0":Lcom/oplus/compactwindow/OplusCompactWindowInfo;
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
