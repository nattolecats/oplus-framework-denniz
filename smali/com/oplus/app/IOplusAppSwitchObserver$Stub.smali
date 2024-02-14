.class public abstract Lcom/oplus/app/IOplusAppSwitchObserver$Stub;
.super Landroid/os/Binder;
.source "IOplusAppSwitchObserver.java"

# interfaces
.implements Lcom/oplus/app/IOplusAppSwitchObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/app/IOplusAppSwitchObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/app/IOplusAppSwitchObserver$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onActivityEnter:I = 0x3

.field static final blacklist TRANSACTION_onActivityExit:I = 0x4

.field static final blacklist TRANSACTION_onAppEnter:I = 0x1

.field static final blacklist TRANSACTION_onAppExit:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 34
    const-string v0, "com.oplus.app.IOplusAppSwitchObserver"

    invoke-virtual {p0, p0, v0}, Lcom/oplus/app/IOplusAppSwitchObserver$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/oplus/app/IOplusAppSwitchObserver;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 42
    if-nez p0, :cond_0

    .line 43
    const/4 v0, 0x0

    return-object v0

    .line 45
    :cond_0
    const-string v0, "com.oplus.app.IOplusAppSwitchObserver"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 46
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/oplus/app/IOplusAppSwitchObserver;

    if-eqz v1, :cond_1

    .line 47
    move-object v1, v0

    check-cast v1, Lcom/oplus/app/IOplusAppSwitchObserver;

    return-object v1

    .line 49
    :cond_1
    new-instance v1, Lcom/oplus/app/IOplusAppSwitchObserver$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/oplus/app/IOplusAppSwitchObserver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 53
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

    .line 57
    const-string v0, "com.oplus.app.IOplusAppSwitchObserver"

    .line 58
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 59
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 69
    packed-switch p1, :pswitch_data_1

    .line 105
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 65
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    return v1

    .line 98
    :pswitch_1
    sget-object v2, Lcom/oplus/app/OplusAppExitInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/app/OplusAppExitInfo;

    .line 99
    .local v2, "_arg0":Lcom/oplus/app/OplusAppExitInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 100
    invoke-virtual {p0, v2}, Lcom/oplus/app/IOplusAppSwitchObserver$Stub;->onActivityExit(Lcom/oplus/app/OplusAppExitInfo;)V

    .line 101
    goto :goto_0

    .line 90
    .end local v2    # "_arg0":Lcom/oplus/app/OplusAppExitInfo;
    :pswitch_2
    sget-object v2, Lcom/oplus/app/OplusAppEnterInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/app/OplusAppEnterInfo;

    .line 91
    .local v2, "_arg0":Lcom/oplus/app/OplusAppEnterInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 92
    invoke-virtual {p0, v2}, Lcom/oplus/app/IOplusAppSwitchObserver$Stub;->onActivityEnter(Lcom/oplus/app/OplusAppEnterInfo;)V

    .line 93
    goto :goto_0

    .line 82
    .end local v2    # "_arg0":Lcom/oplus/app/OplusAppEnterInfo;
    :pswitch_3
    sget-object v2, Lcom/oplus/app/OplusAppExitInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/app/OplusAppExitInfo;

    .line 83
    .local v2, "_arg0":Lcom/oplus/app/OplusAppExitInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 84
    invoke-virtual {p0, v2}, Lcom/oplus/app/IOplusAppSwitchObserver$Stub;->onAppExit(Lcom/oplus/app/OplusAppExitInfo;)V

    .line 85
    goto :goto_0

    .line 74
    .end local v2    # "_arg0":Lcom/oplus/app/OplusAppExitInfo;
    :pswitch_4
    sget-object v2, Lcom/oplus/app/OplusAppEnterInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/app/OplusAppEnterInfo;

    .line 75
    .local v2, "_arg0":Lcom/oplus/app/OplusAppEnterInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 76
    invoke-virtual {p0, v2}, Lcom/oplus/app/IOplusAppSwitchObserver$Stub;->onAppEnter(Lcom/oplus/app/OplusAppEnterInfo;)V

    .line 77
    nop

    .line 108
    .end local v2    # "_arg0":Lcom/oplus/app/OplusAppEnterInfo;
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
