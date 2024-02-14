.class public abstract Landroid/os/customize/IOplusCustomizeInputMethodManagerService$Stub;
.super Landroid/os/Binder;
.source "IOplusCustomizeInputMethodManagerService.java"

# interfaces
.implements Landroid/os/customize/IOplusCustomizeInputMethodManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/customize/IOplusCustomizeInputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/customize/IOplusCustomizeInputMethodManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_clearDefaultInputMethod:I = 0x3

.field static final blacklist TRANSACTION_getDefaultInputMethod:I = 0x2

.field static final blacklist TRANSACTION_setDefaultInputMethod:I = 0x1


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 33
    const-string v0, "android.os.customize.IOplusCustomizeInputMethodManagerService"

    invoke-virtual {p0, p0, v0}, Landroid/os/customize/IOplusCustomizeInputMethodManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public static whitelist asInterface(Landroid/os/IBinder;)Landroid/os/customize/IOplusCustomizeInputMethodManagerService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 41
    if-nez p0, :cond_0

    .line 42
    const/4 v0, 0x0

    return-object v0

    .line 44
    :cond_0
    const-string v0, "android.os.customize.IOplusCustomizeInputMethodManagerService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 45
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/customize/IOplusCustomizeInputMethodManagerService;

    if-eqz v1, :cond_1

    .line 46
    move-object v1, v0

    check-cast v1, Landroid/os/customize/IOplusCustomizeInputMethodManagerService;

    return-object v1

    .line 48
    :cond_1
    new-instance v1, Landroid/os/customize/IOplusCustomizeInputMethodManagerService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/customize/IOplusCustomizeInputMethodManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 52
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

    .line 56
    const-string v0, "android.os.customize.IOplusCustomizeInputMethodManagerService"

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

    .line 96
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 64
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    return v1

    .line 89
    :pswitch_1
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeInputMethodManagerService$Stub;->clearDefaultInputMethod()Z

    move-result v2

    .line 90
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 92
    goto :goto_0

    .line 82
    .end local v2    # "_result":Z
    :pswitch_2
    invoke-virtual {p0}, Landroid/os/customize/IOplusCustomizeInputMethodManagerService$Stub;->getDefaultInputMethod()Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    goto :goto_0

    .line 73
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 74
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 75
    invoke-virtual {p0, v2}, Landroid/os/customize/IOplusCustomizeInputMethodManagerService$Stub;->setDefaultInputMethod(Ljava/lang/String;)Z

    move-result v3

    .line 76
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 78
    nop

    .line 99
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
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
