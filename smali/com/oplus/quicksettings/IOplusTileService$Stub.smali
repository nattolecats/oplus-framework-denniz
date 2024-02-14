.class public abstract Lcom/oplus/quicksettings/IOplusTileService$Stub;
.super Landroid/os/Binder;
.source "IOplusTileService.java"

# interfaces
.implements Lcom/oplus/quicksettings/IOplusTileService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quicksettings/IOplusTileService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quicksettings/IOplusTileService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getOplusTile:I = 0x1

.field static final blacklist TRANSACTION_updateOplusTile:I = 0x2


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 50
    const-string v0, "com.oplus.quicksettings.IOplusTileService"

    invoke-virtual {p0, p0, v0}, Lcom/oplus/quicksettings/IOplusTileService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public static whitelist asInterface(Landroid/os/IBinder;)Lcom/oplus/quicksettings/IOplusTileService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 58
    if-nez p0, :cond_0

    .line 59
    const/4 v0, 0x0

    return-object v0

    .line 61
    :cond_0
    const-string v0, "com.oplus.quicksettings.IOplusTileService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 62
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/oplus/quicksettings/IOplusTileService;

    if-eqz v1, :cond_1

    .line 63
    move-object v1, v0

    check-cast v1, Lcom/oplus/quicksettings/IOplusTileService;

    return-object v1

    .line 65
    :cond_1
    new-instance v1, Lcom/oplus/quicksettings/IOplusTileService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/oplus/quicksettings/IOplusTileService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 69
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

    .line 73
    const-string v0, "com.oplus.quicksettings.IOplusTileService"

    .line 74
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 75
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 85
    packed-switch p1, :pswitch_data_1

    .line 109
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 81
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    return v1

    .line 100
    :pswitch_1
    sget-object v2, Lcom/oplus/quicksettings/OplusTile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/quicksettings/OplusTile;

    .line 102
    .local v2, "_arg0":Lcom/oplus/quicksettings/OplusTile;
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 103
    .local v3, "_arg1":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 104
    invoke-virtual {p0, v2, v3}, Lcom/oplus/quicksettings/IOplusTileService$Stub;->updateOplusTile(Lcom/oplus/quicksettings/OplusTile;Landroid/content/ComponentName;)V

    .line 105
    goto :goto_0

    .line 90
    .end local v2    # "_arg0":Lcom/oplus/quicksettings/OplusTile;
    .end local v3    # "_arg1":Landroid/content/ComponentName;
    :pswitch_2
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 91
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 92
    invoke-virtual {p0, v2}, Lcom/oplus/quicksettings/IOplusTileService$Stub;->getOplusTile(Landroid/content/ComponentName;)Lcom/oplus/quicksettings/OplusTile;

    move-result-object v3

    .line 93
    .local v3, "_result":Lcom/oplus/quicksettings/OplusTile;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 95
    nop

    .line 112
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Lcom/oplus/quicksettings/OplusTile;
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
