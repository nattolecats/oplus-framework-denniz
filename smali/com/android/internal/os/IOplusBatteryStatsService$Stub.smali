.class public abstract Lcom/android/internal/os/IOplusBatteryStatsService$Stub;
.super Landroid/os/Binder;
.source "IOplusBatteryStatsService.java"

# interfaces
.implements Lcom/android/internal/os/IOplusBatteryStatsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/IOplusBatteryStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/IOplusBatteryStatsService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getUidSipper:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 25
    const-string v0, "com.android.internal.os.IOplusBatteryStatsService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/os/IOplusBatteryStatsService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IOplusBatteryStatsService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 33
    if-nez p0, :cond_0

    .line 34
    const/4 v0, 0x0

    return-object v0

    .line 36
    :cond_0
    const-string v0, "com.android.internal.os.IOplusBatteryStatsService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 37
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/os/IOplusBatteryStatsService;

    if-eqz v1, :cond_1

    .line 38
    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/IOplusBatteryStatsService;

    return-object v1

    .line 40
    :cond_1
    new-instance v1, Lcom/android/internal/os/IOplusBatteryStatsService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/os/IOplusBatteryStatsService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 44
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 18
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    move/from16 v0, p1

    move-object/from16 v1, p3

    const-string v2, "com.android.internal.os.IOplusBatteryStatsService"

    .line 49
    .local v2, "descriptor":Ljava/lang/String;
    const/4 v3, 0x1

    if-lt v0, v3, :cond_0

    const v4, 0xffffff

    if-gt v0, v4, :cond_0

    .line 50
    move-object/from16 v4, p2

    invoke-virtual {v4, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :cond_0
    move-object/from16 v4, p2

    .line 52
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 60
    packed-switch v0, :pswitch_data_1

    .line 82
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    .line 56
    :pswitch_0
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    return v3

    .line 65
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v12

    .line 67
    .local v12, "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    .line 69
    .local v13, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 71
    .local v15, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    .line 73
    .local v16, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    .line 74
    .local v17, "_arg4":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 75
    move-object/from16 v5, p0

    move-object v6, v12

    move-wide v7, v13

    move v9, v15

    move/from16 v10, v16

    move/from16 v11, v17

    invoke-virtual/range {v5 .. v11}, Lcom/android/internal/os/IOplusBatteryStatsService$Stub;->getUidSipper([IJIZZ)[Lcom/android/internal/os/UidSipper;

    move-result-object v5

    .line 76
    .local v5, "_result":[Lcom/android/internal/os/UidSipper;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    invoke-virtual {v1, v5, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 78
    nop

    .line 85
    .end local v5    # "_result":[Lcom/android/internal/os/UidSipper;
    .end local v12    # "_arg0":[I
    .end local v13    # "_arg1":J
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":Z
    .end local v17    # "_arg4":Z
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method
