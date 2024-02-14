.class public abstract Lcom/oplus/screenshot/IOplusLongshot$Stub;
.super Landroid/os/Binder;
.source "IOplusLongshot.java"

# interfaces
.implements Lcom/oplus/screenshot/IOplusLongshot;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/screenshot/IOplusLongshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/screenshot/IOplusLongshot$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_notifyOverScroll:I = 0x3

.field static final blacklist TRANSACTION_start:I = 0x1

.field static final blacklist TRANSACTION_stop:I = 0x2


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 38
    const-string v0, "com.oplus.screenshot.IOplusLongshot"

    invoke-virtual {p0, p0, v0}, Lcom/oplus/screenshot/IOplusLongshot$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public static whitelist asInterface(Landroid/os/IBinder;)Lcom/oplus/screenshot/IOplusLongshot;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 46
    if-nez p0, :cond_0

    .line 47
    const/4 v0, 0x0

    return-object v0

    .line 49
    :cond_0
    const-string v0, "com.oplus.screenshot.IOplusLongshot"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 50
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/oplus/screenshot/IOplusLongshot;

    if-eqz v1, :cond_1

    .line 51
    move-object v1, v0

    check-cast v1, Lcom/oplus/screenshot/IOplusLongshot;

    return-object v1

    .line 53
    :cond_1
    new-instance v1, Lcom/oplus/screenshot/IOplusLongshot$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/oplus/screenshot/IOplusLongshot$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 57
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

    .line 61
    const-string v0, "com.oplus.screenshot.IOplusLongshot"

    .line 62
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 63
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 73
    packed-switch p1, :pswitch_data_1

    .line 98
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 69
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    return v1

    .line 91
    :pswitch_1
    sget-object v2, Lcom/oplus/screenshot/OplusLongshotEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/screenshot/OplusLongshotEvent;

    .line 92
    .local v2, "_arg0":Lcom/oplus/screenshot/OplusLongshotEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 93
    invoke-virtual {p0, v2}, Lcom/oplus/screenshot/IOplusLongshot$Stub;->notifyOverScroll(Lcom/oplus/screenshot/OplusLongshotEvent;)V

    .line 94
    goto :goto_0

    .line 85
    .end local v2    # "_arg0":Lcom/oplus/screenshot/OplusLongshotEvent;
    :pswitch_2
    invoke-virtual {p0}, Lcom/oplus/screenshot/IOplusLongshot$Stub;->stop()V

    .line 86
    goto :goto_0

    .line 78
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/oplus/screenshot/IOplusLongshotCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/screenshot/IOplusLongshotCallback;

    move-result-object v2

    .line 79
    .local v2, "_arg0":Lcom/oplus/screenshot/IOplusLongshotCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 80
    invoke-virtual {p0, v2}, Lcom/oplus/screenshot/IOplusLongshot$Stub;->start(Lcom/oplus/screenshot/IOplusLongshotCallback;)V

    .line 81
    nop

    .line 101
    .end local v2    # "_arg0":Lcom/oplus/screenshot/IOplusLongshotCallback;
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
