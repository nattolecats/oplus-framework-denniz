.class public abstract Lcom/oplus/oshare/IOplusOshareService$Stub;
.super Landroid/os/Binder;
.source "IOplusOshareService.java"

# interfaces
.implements Lcom/oplus/oshare/IOplusOshareService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/oshare/IOplusOshareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/oshare/IOplusOshareService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_cancelTask:I = 0x7

.field static final blacklist TRANSACTION_isSendOn:I = 0x1

.field static final blacklist TRANSACTION_pause:I = 0x8

.field static final blacklist TRANSACTION_registerCallback:I = 0x4

.field static final blacklist TRANSACTION_resume:I = 0x9

.field static final blacklist TRANSACTION_scan:I = 0x3

.field static final blacklist TRANSACTION_sendData:I = 0x6

.field static final blacklist TRANSACTION_stop:I = 0xa

.field static final blacklist TRANSACTION_switchSend:I = 0x2

.field static final blacklist TRANSACTION_unregisterCallback:I = 0x5


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 52
    const-string v0, "com.oplus.oshare.IOplusOshareService"

    invoke-virtual {p0, p0, v0}, Lcom/oplus/oshare/IOplusOshareService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public static whitelist asInterface(Landroid/os/IBinder;)Lcom/oplus/oshare/IOplusOshareService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 60
    if-nez p0, :cond_0

    .line 61
    const/4 v0, 0x0

    return-object v0

    .line 63
    :cond_0
    const-string v0, "com.oplus.oshare.IOplusOshareService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 64
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/oplus/oshare/IOplusOshareService;

    if-eqz v1, :cond_1

    .line 65
    move-object v1, v0

    check-cast v1, Lcom/oplus/oshare/IOplusOshareService;

    return-object v1

    .line 67
    :cond_1
    new-instance v1, Lcom/oplus/oshare/IOplusOshareService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/oplus/oshare/IOplusOshareService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 71
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 75
    const-string v0, "com.oplus.oshare.IOplusOshareService"

    .line 76
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 77
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 87
    packed-switch p1, :pswitch_data_1

    .line 169
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 83
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    return v1

    .line 163
    :pswitch_1
    invoke-virtual {p0}, Lcom/oplus/oshare/IOplusOshareService$Stub;->stop()V

    .line 164
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    goto/16 :goto_0

    .line 157
    :pswitch_2
    invoke-virtual {p0}, Lcom/oplus/oshare/IOplusOshareService$Stub;->resume()V

    .line 158
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    goto/16 :goto_0

    .line 151
    :pswitch_3
    invoke-virtual {p0}, Lcom/oplus/oshare/IOplusOshareService$Stub;->pause()V

    .line 152
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    goto :goto_0

    .line 143
    :pswitch_4
    sget-object v2, Lcom/oplus/oshare/OplusOshareDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/oshare/OplusOshareDevice;

    .line 144
    .local v2, "_arg0":Lcom/oplus/oshare/OplusOshareDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 145
    invoke-virtual {p0, v2}, Lcom/oplus/oshare/IOplusOshareService$Stub;->cancelTask(Lcom/oplus/oshare/OplusOshareDevice;)V

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    goto :goto_0

    .line 132
    .end local v2    # "_arg0":Lcom/oplus/oshare/OplusOshareDevice;
    :pswitch_5
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 134
    .local v2, "_arg0":Landroid/content/Intent;
    sget-object v3, Lcom/oplus/oshare/OplusOshareDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/oshare/OplusOshareDevice;

    .line 135
    .local v3, "_arg1":Lcom/oplus/oshare/OplusOshareDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 136
    invoke-virtual {p0, v2, v3}, Lcom/oplus/oshare/IOplusOshareService$Stub;->sendData(Landroid/content/Intent;Lcom/oplus/oshare/OplusOshareDevice;)V

    .line 137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    goto :goto_0

    .line 123
    .end local v2    # "_arg0":Landroid/content/Intent;
    .end local v3    # "_arg1":Lcom/oplus/oshare/OplusOshareDevice;
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/oplus/oshare/IOplusOshareCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/oshare/IOplusOshareCallback;

    move-result-object v2

    .line 124
    .local v2, "_arg0":Lcom/oplus/oshare/IOplusOshareCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 125
    invoke-virtual {p0, v2}, Lcom/oplus/oshare/IOplusOshareService$Stub;->unregisterCallback(Lcom/oplus/oshare/IOplusOshareCallback;)V

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    goto :goto_0

    .line 114
    .end local v2    # "_arg0":Lcom/oplus/oshare/IOplusOshareCallback;
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/oplus/oshare/IOplusOshareCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/oshare/IOplusOshareCallback;

    move-result-object v2

    .line 115
    .restart local v2    # "_arg0":Lcom/oplus/oshare/IOplusOshareCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 116
    invoke-virtual {p0, v2}, Lcom/oplus/oshare/IOplusOshareService$Stub;->registerCallback(Lcom/oplus/oshare/IOplusOshareCallback;)V

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    goto :goto_0

    .line 107
    .end local v2    # "_arg0":Lcom/oplus/oshare/IOplusOshareCallback;
    :pswitch_8
    invoke-virtual {p0}, Lcom/oplus/oshare/IOplusOshareService$Stub;->scan()V

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    goto :goto_0

    .line 99
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 100
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 101
    invoke-virtual {p0, v2}, Lcom/oplus/oshare/IOplusOshareService$Stub;->switchSend(Z)V

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    goto :goto_0

    .line 91
    .end local v2    # "_arg0":Z
    :pswitch_a
    invoke-virtual {p0}, Lcom/oplus/oshare/IOplusOshareService$Stub;->isSendOn()Z

    move-result v2

    .line 92
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 94
    nop

    .line 172
    .end local v2    # "_result":Z
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
