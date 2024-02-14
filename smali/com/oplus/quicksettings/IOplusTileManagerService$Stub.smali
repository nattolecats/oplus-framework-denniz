.class public abstract Lcom/oplus/quicksettings/IOplusTileManagerService$Stub;
.super Landroid/os/Binder;
.source "IOplusTileManagerService.java"

# interfaces
.implements Lcom/oplus/quicksettings/IOplusTileManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quicksettings/IOplusTileManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quicksettings/IOplusTileManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getOplusTile:I = 0x2

.field static final blacklist TRANSACTION_registerOplusTileService:I = 0x1

.field static final blacklist TRANSACTION_updateOplusTile:I = 0x3


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 61
    const-string v0, "com.oplus.quicksettings.IOplusTileManagerService"

    invoke-virtual {p0, p0, v0}, Lcom/oplus/quicksettings/IOplusTileManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public static whitelist asInterface(Landroid/os/IBinder;)Lcom/oplus/quicksettings/IOplusTileManagerService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 69
    if-nez p0, :cond_0

    .line 70
    const/4 v0, 0x0

    return-object v0

    .line 72
    :cond_0
    const-string v0, "com.oplus.quicksettings.IOplusTileManagerService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 73
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/oplus/quicksettings/IOplusTileManagerService;

    if-eqz v1, :cond_1

    .line 74
    move-object v1, v0

    check-cast v1, Lcom/oplus/quicksettings/IOplusTileManagerService;

    return-object v1

    .line 76
    :cond_1
    new-instance v1, Lcom/oplus/quicksettings/IOplusTileManagerService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/oplus/quicksettings/IOplusTileManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 80
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

    .line 84
    const-string v0, "com.oplus.quicksettings.IOplusTileManagerService"

    .line 85
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 86
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 96
    packed-switch p1, :pswitch_data_1

    .line 128
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 92
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    return v1

    .line 119
    :pswitch_1
    sget-object v2, Lcom/oplus/quicksettings/OplusTile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/quicksettings/OplusTile;

    .line 121
    .local v2, "_arg0":Lcom/oplus/quicksettings/OplusTile;
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 122
    .local v3, "_arg1":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 123
    invoke-virtual {p0, v2, v3}, Lcom/oplus/quicksettings/IOplusTileManagerService$Stub;->updateOplusTile(Lcom/oplus/quicksettings/OplusTile;Landroid/content/ComponentName;)V

    .line 124
    goto :goto_0

    .line 109
    .end local v2    # "_arg0":Lcom/oplus/quicksettings/OplusTile;
    .end local v3    # "_arg1":Landroid/content/ComponentName;
    :pswitch_2
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 110
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 111
    invoke-virtual {p0, v2}, Lcom/oplus/quicksettings/IOplusTileManagerService$Stub;->getOplusTile(Landroid/content/ComponentName;)Lcom/oplus/quicksettings/OplusTile;

    move-result-object v3

    .line 112
    .local v3, "_result":Lcom/oplus/quicksettings/OplusTile;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 114
    goto :goto_0

    .line 101
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Lcom/oplus/quicksettings/OplusTile;
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/oplus/quicksettings/IOplusTileService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/quicksettings/IOplusTileService;

    move-result-object v2

    .line 102
    .local v2, "_arg0":Lcom/oplus/quicksettings/IOplusTileService;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 103
    invoke-virtual {p0, v2}, Lcom/oplus/quicksettings/IOplusTileManagerService$Stub;->registerOplusTileService(Lcom/oplus/quicksettings/IOplusTileService;)V

    .line 104
    nop

    .line 131
    .end local v2    # "_arg0":Lcom/oplus/quicksettings/IOplusTileService;
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
