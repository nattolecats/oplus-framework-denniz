.class public abstract Lcom/oplus/network/IOplusDataLimit$Stub;
.super Landroid/os/Binder;
.source "IOplusDataLimit.java"

# interfaces
.implements Lcom/oplus/network/IOplusDataLimit;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/network/IOplusDataLimit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/network/IOplusDataLimit$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_clearThermalDataLimit:I = 0x5

.field static final blacklist TRANSACTION_getDataLimitState:I = 0x1

.field static final blacklist TRANSACTION_registerDataLimitEvent:I = 0x2

.field static final blacklist TRANSACTION_setThermalDataLimit:I = 0x4

.field static final blacklist TRANSACTION_unregisterDataLimitEvent:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 43
    const-string v0, "com.oplus.network.IOplusDataLimit"

    invoke-virtual {p0, p0, v0}, Lcom/oplus/network/IOplusDataLimit$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/oplus/network/IOplusDataLimit;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 51
    if-nez p0, :cond_0

    .line 52
    const/4 v0, 0x0

    return-object v0

    .line 54
    :cond_0
    const-string v0, "com.oplus.network.IOplusDataLimit"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 55
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/oplus/network/IOplusDataLimit;

    if-eqz v1, :cond_1

    .line 56
    move-object v1, v0

    check-cast v1, Lcom/oplus/network/IOplusDataLimit;

    return-object v1

    .line 58
    :cond_1
    new-instance v1, Lcom/oplus/network/IOplusDataLimit$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/oplus/network/IOplusDataLimit$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 62
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 17
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 66
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p3

    const-string v9, "com.oplus.network.IOplusDataLimit"

    .line 67
    .local v9, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v7, v10, :cond_0

    const v0, 0xffffff

    if-gt v7, v0, :cond_0

    .line 68
    move-object/from16 v11, p2

    invoke-virtual {v11, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :cond_0
    move-object/from16 v11, p2

    .line 70
    :goto_0
    packed-switch v7, :pswitch_data_0

    .line 78
    packed-switch v7, :pswitch_data_1

    .line 134
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 74
    :pswitch_0
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    return v10

    .line 125
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 126
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 127
    invoke-virtual {v6, v0}, Lcom/oplus/network/IOplusDataLimit$Stub;->clearThermalDataLimit(I)Z

    move-result v1

    .line 128
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 130
    goto :goto_1

    .line 111
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 113
    .local v12, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    .line 115
    .local v13, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .line 116
    .local v15, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 117
    move-object/from16 v0, p0

    move v1, v12

    move-wide v2, v13

    move-wide v4, v15

    invoke-virtual/range {v0 .. v5}, Lcom/oplus/network/IOplusDataLimit$Stub;->setThermalDataLimit(IJJ)Z

    move-result v0

    .line 118
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 120
    goto :goto_1

    .line 102
    .end local v0    # "_result":Z
    .end local v12    # "_arg0":I
    .end local v13    # "_arg1":J
    .end local v15    # "_arg2":J
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/network/IDataLimitEventCb$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/network/IDataLimitEventCb;

    move-result-object v0

    .line 103
    .local v0, "_arg0":Lcom/oplus/network/IDataLimitEventCb;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 104
    invoke-virtual {v6, v0}, Lcom/oplus/network/IOplusDataLimit$Stub;->unregisterDataLimitEvent(Lcom/oplus/network/IDataLimitEventCb;)V

    .line 105
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    goto :goto_1

    .line 93
    .end local v0    # "_arg0":Lcom/oplus/network/IDataLimitEventCb;
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/network/IDataLimitEventCb$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/network/IDataLimitEventCb;

    move-result-object v0

    .line 94
    .restart local v0    # "_arg0":Lcom/oplus/network/IDataLimitEventCb;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 95
    invoke-virtual {v6, v0}, Lcom/oplus/network/IOplusDataLimit$Stub;->registerDataLimitEvent(Lcom/oplus/network/IDataLimitEventCb;)V

    .line 96
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    goto :goto_1

    .line 83
    .end local v0    # "_arg0":Lcom/oplus/network/IDataLimitEventCb;
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 84
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 85
    invoke-virtual {v6, v0}, Lcom/oplus/network/IOplusDataLimit$Stub;->getDataLimitState(I)I

    move-result v1

    .line 86
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    nop

    .line 137
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :goto_1
    return v10

    nop

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
