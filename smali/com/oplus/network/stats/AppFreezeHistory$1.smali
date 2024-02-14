.class Lcom/oplus/network/stats/AppFreezeHistory$1;
.super Ljava/lang/Object;
.source "AppFreezeHistory.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/network/stats/AppFreezeHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/oplus/network/stats/AppFreezeHistory;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/oplus/network/stats/AppFreezeHistory;
    .locals 26
    .param p1, "in"    # Landroid/os/Parcel;

    .line 54
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    .line 55
    .local v13, "addBlockTime":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .line 56
    .local v15, "removeBlockTime":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v17

    .line 57
    .local v17, "sendResetTime":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v19

    .line 58
    .local v19, "enterFgTime":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v21

    .line 59
    .local v21, "enterBgTime":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v23

    .line 61
    .local v23, "networkType":J
    new-instance v25, Lcom/oplus/network/stats/AppFreezeHistory;

    move-object/from16 v0, v25

    move-wide v1, v13

    move-wide v3, v15

    move-wide/from16 v5, v17

    move-wide/from16 v7, v19

    move-wide/from16 v9, v21

    move-wide/from16 v11, v23

    invoke-direct/range {v0 .. v12}, Lcom/oplus/network/stats/AppFreezeHistory;-><init>(JJJJJJ)V

    return-object v25
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/oplus/network/stats/AppFreezeHistory$1;->createFromParcel(Landroid/os/Parcel;)Lcom/oplus/network/stats/AppFreezeHistory;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/oplus/network/stats/AppFreezeHistory;
    .locals 1
    .param p1, "size"    # I

    .line 66
    new-array v0, p1, [Lcom/oplus/network/stats/AppFreezeHistory;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/oplus/network/stats/AppFreezeHistory$1;->newArray(I)[Lcom/oplus/network/stats/AppFreezeHistory;

    move-result-object p1

    return-object p1
.end method
