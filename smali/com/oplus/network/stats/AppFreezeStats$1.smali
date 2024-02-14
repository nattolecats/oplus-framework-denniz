.class Lcom/oplus/network/stats/AppFreezeStats$1;
.super Ljava/lang/Object;
.source "AppFreezeStats.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/network/stats/AppFreezeStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/oplus/network/stats/AppFreezeStats;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/oplus/network/stats/AppFreezeStats;
    .locals 20
    .param p1, "in"    # Landroid/os/Parcel;

    .line 45
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 46
    .local v10, "uid":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 47
    .local v11, "expired":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 48
    .local v12, "rxBytes":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 49
    .local v14, "txBytes":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 50
    .local v16, "rxCount":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 51
    .local v17, "txCount":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 53
    .local v18, "occurFlag":I
    new-instance v19, Lcom/oplus/network/stats/AppFreezeStats;

    move-object/from16 v0, v19

    move v1, v10

    move v2, v11

    move-wide v3, v12

    move-wide v5, v14

    move/from16 v7, v16

    move/from16 v8, v17

    move/from16 v9, v18

    invoke-direct/range {v0 .. v9}, Lcom/oplus/network/stats/AppFreezeStats;-><init>(IIJJIII)V

    return-object v19
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lcom/oplus/network/stats/AppFreezeStats$1;->createFromParcel(Landroid/os/Parcel;)Lcom/oplus/network/stats/AppFreezeStats;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/oplus/network/stats/AppFreezeStats;
    .locals 1
    .param p1, "size"    # I

    .line 58
    new-array v0, p1, [Lcom/oplus/network/stats/AppFreezeStats;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lcom/oplus/network/stats/AppFreezeStats$1;->newArray(I)[Lcom/oplus/network/stats/AppFreezeStats;

    move-result-object p1

    return-object p1
.end method
