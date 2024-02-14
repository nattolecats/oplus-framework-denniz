.class public abstract Lcom/android/internal/telephony/IOemLinkLatencyManager$Stub;
.super Landroid/os/Binder;
.source "IOemLinkLatencyManager.java"

# interfaces
.implements Lcom/android/internal/telephony/IOemLinkLatencyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IOemLinkLatencyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IOemLinkLatencyManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_gameOptimizeExit:I = 0x5

.field static final blacklist TRANSACTION_gameOptimizeSetLoad:I = 0x4

.field static final blacklist TRANSACTION_getCurrentLevel:I = 0x2

.field static final blacklist TRANSACTION_prioritizeDefaultDataSubscription:I = 0x3

.field static final blacklist TRANSACTION_setLevel:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 40
    const-string v0, "com.android.internal.telephony.IOemLinkLatencyManager"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/IOemLinkLatencyManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IOemLinkLatencyManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 48
    if-nez p0, :cond_0

    .line 49
    const/4 v0, 0x0

    return-object v0

    .line 51
    :cond_0
    const-string v0, "com.android.internal.telephony.IOemLinkLatencyManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 52
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/IOemLinkLatencyManager;

    if-eqz v1, :cond_1

    .line 53
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/IOemLinkLatencyManager;

    return-object v1

    .line 55
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/IOemLinkLatencyManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/IOemLinkLatencyManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 59
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 19
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 63
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p3

    const-string v10, "com.android.internal.telephony.IOemLinkLatencyManager"

    .line 64
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v8, v11, :cond_0

    const v0, 0xffffff

    if-gt v8, v0, :cond_0

    .line 65
    move-object/from16 v12, p2

    invoke-virtual {v12, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :cond_0
    move-object/from16 v12, p2

    .line 67
    :goto_0
    packed-switch v8, :pswitch_data_0

    .line 75
    packed-switch v8, :pswitch_data_1

    .line 128
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 71
    :pswitch_0
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    return v11

    .line 121
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IOemLinkLatencyManager$Stub;->gameOptimizeExit()Z

    move-result v0

    .line 122
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 124
    goto :goto_1

    .line 110
    .end local v0    # "_result":Z
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 112
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 114
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telephony/IOemLinkLatencyManager$Stub;->gameOptimizeSetLoad(ILjava/lang/String;)Z

    move-result v2

    .line 115
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 117
    goto :goto_1

    .line 100
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 101
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 102
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/IOemLinkLatencyManager$Stub;->prioritizeDefaultDataSubscription(Z)J

    move-result-wide v1

    .line 103
    .local v1, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    invoke-virtual {v9, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 105
    goto :goto_1

    .line 92
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":J
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IOemLinkLatencyManager$Stub;->getCurrentLevel()Lcom/android/internal/telephony/OplusLinkLatencyInfo;

    move-result-object v0

    .line 93
    .local v0, "_result":Lcom/android/internal/telephony/OplusLinkLatencyInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    invoke-virtual {v9, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 95
    goto :goto_1

    .line 80
    .end local v0    # "_result":Lcom/android/internal/telephony/OplusLinkLatencyInfo;
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    .line 82
    .local v13, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .line 84
    .local v15, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v17

    .line 85
    .local v17, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 86
    move-object/from16 v0, p0

    move-wide v1, v13

    move-wide v3, v15

    move-wide/from16 v5, v17

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/IOemLinkLatencyManager$Stub;->setLevel(JJJ)V

    .line 87
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    nop

    .line 131
    .end local v13    # "_arg0":J
    .end local v15    # "_arg1":J
    .end local v17    # "_arg2":J
    :goto_1
    return v11

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
