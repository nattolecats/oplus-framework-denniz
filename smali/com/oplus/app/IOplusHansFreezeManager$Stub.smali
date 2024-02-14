.class public abstract Lcom/oplus/app/IOplusHansFreezeManager$Stub;
.super Landroid/os/Binder;
.source "IOplusHansFreezeManager.java"

# interfaces
.implements Lcom/oplus/app/IOplusHansFreezeManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/app/IOplusHansFreezeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/app/IOplusHansFreezeManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getFreezeInfo:I = 0x3

.field static final blacklist TRANSACTION_getFrozenPackageList:I = 0x4

.field static final blacklist TRANSACTION_registerFreezeInfoListener:I = 0x1

.field static final blacklist TRANSACTION_report:I = 0x5

.field static final blacklist TRANSACTION_unregisterFreezeInfoListener:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 42
    const-string v0, "com.oplus.app.IOplusHansFreezeManager"

    invoke-virtual {p0, p0, v0}, Lcom/oplus/app/IOplusHansFreezeManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/oplus/app/IOplusHansFreezeManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 50
    if-nez p0, :cond_0

    .line 51
    const/4 v0, 0x0

    return-object v0

    .line 53
    :cond_0
    const-string v0, "com.oplus.app.IOplusHansFreezeManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 54
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/oplus/app/IOplusHansFreezeManager;

    if-eqz v1, :cond_1

    .line 55
    move-object v1, v0

    check-cast v1, Lcom/oplus/app/IOplusHansFreezeManager;

    return-object v1

    .line 57
    :cond_1
    new-instance v1, Lcom/oplus/app/IOplusHansFreezeManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/oplus/app/IOplusHansFreezeManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 61
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    const-string v0, "com.oplus.app.IOplusHansFreezeManager"

    .line 66
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 67
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 77
    packed-switch p1, :pswitch_data_1

    .line 137
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 73
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    return v1

    .line 123
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 125
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 127
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 129
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 130
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 131
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/oplus/app/IOplusHansFreezeManager$Stub;->report(IILjava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    goto :goto_0

    .line 115
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p0}, Lcom/oplus/app/IOplusHansFreezeManager$Stub;->getFrozenPackageList()Ljava/util/List;

    move-result-object v2

    .line 116
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 118
    goto :goto_0

    .line 106
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 108
    invoke-virtual {p0, v2}, Lcom/oplus/app/IOplusHansFreezeManager$Stub;->getFreezeInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 109
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/app/OplusFreezeInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 111
    goto :goto_0

    .line 94
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/app/OplusFreezeInfo;>;"
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 96
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/oplus/app/IOplusFreezeInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/app/IOplusFreezeInfoListener;

    move-result-object v3

    .line 97
    .local v3, "_arg1":Lcom/oplus/app/IOplusFreezeInfoListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 98
    invoke-virtual {p0, v2, v3}, Lcom/oplus/app/IOplusHansFreezeManager$Stub;->unregisterFreezeInfoListener(Ljava/lang/String;Lcom/oplus/app/IOplusFreezeInfoListener;)Z

    move-result v4

    .line 99
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 101
    goto :goto_0

    .line 82
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Lcom/oplus/app/IOplusFreezeInfoListener;
    .end local v4    # "_result":Z
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 84
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/oplus/app/IOplusFreezeInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/app/IOplusFreezeInfoListener;

    move-result-object v3

    .line 85
    .restart local v3    # "_arg1":Lcom/oplus/app/IOplusFreezeInfoListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 86
    invoke-virtual {p0, v2, v3}, Lcom/oplus/app/IOplusHansFreezeManager$Stub;->registerFreezeInfoListener(Ljava/lang/String;Lcom/oplus/app/IOplusFreezeInfoListener;)Z

    move-result v4

    .line 87
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 89
    nop

    .line 140
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Lcom/oplus/app/IOplusFreezeInfoListener;
    .end local v4    # "_result":Z
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
