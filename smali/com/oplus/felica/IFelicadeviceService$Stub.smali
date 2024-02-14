.class public abstract Lcom/oplus/felica/IFelicadeviceService$Stub;
.super Landroid/os/Binder;
.source "IFelicadeviceService.java"

# interfaces
.implements Lcom/oplus/felica/IFelicadeviceService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/felica/IFelicadeviceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/felica/IFelicadeviceService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_oplusPnscrGetCurrent:I = 0x4

.field static final blacklist TRANSACTION_oplusPnscrGetFreq:I = 0x3

.field static final blacklist TRANSACTION_oplusPnscrTestCardEmulation:I = 0x2

.field static final blacklist TRANSACTION_oplusPnscrTestGpFelicaSpc:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 41
    const-string v0, "com.oplus.felica.IFelicadeviceService"

    invoke-virtual {p0, p0, v0}, Lcom/oplus/felica/IFelicadeviceService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/oplus/felica/IFelicadeviceService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 49
    if-nez p0, :cond_0

    .line 50
    const/4 v0, 0x0

    return-object v0

    .line 52
    :cond_0
    const-string v0, "com.oplus.felica.IFelicadeviceService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 53
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/oplus/felica/IFelicadeviceService;

    if-eqz v1, :cond_1

    .line 54
    move-object v1, v0

    check-cast v1, Lcom/oplus/felica/IFelicadeviceService;

    return-object v1

    .line 56
    :cond_1
    new-instance v1, Lcom/oplus/felica/IFelicadeviceService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/oplus/felica/IFelicadeviceService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 60
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

    .line 64
    const-string v0, "com.oplus.felica.IFelicadeviceService"

    .line 65
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 66
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 76
    packed-switch p1, :pswitch_data_1

    .line 108
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 72
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    return v1

    .line 101
    :pswitch_1
    invoke-virtual {p0}, Lcom/oplus/felica/IFelicadeviceService$Stub;->oplusPnscrGetCurrent()I

    move-result v2

    .line 102
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    goto :goto_0

    .line 94
    .end local v2    # "_result":I
    :pswitch_2
    invoke-virtual {p0}, Lcom/oplus/felica/IFelicadeviceService$Stub;->oplusPnscrGetFreq()I

    move-result v2

    .line 95
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    goto :goto_0

    .line 87
    .end local v2    # "_result":I
    :pswitch_3
    invoke-virtual {p0}, Lcom/oplus/felica/IFelicadeviceService$Stub;->oplusPnscrTestCardEmulation()Z

    move-result v2

    .line 88
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 90
    goto :goto_0

    .line 80
    .end local v2    # "_result":Z
    :pswitch_4
    invoke-virtual {p0}, Lcom/oplus/felica/IFelicadeviceService$Stub;->oplusPnscrTestGpFelicaSpc()I

    move-result v2

    .line 81
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    nop

    .line 111
    .end local v2    # "_result":I
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
