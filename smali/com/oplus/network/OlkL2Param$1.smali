.class Lcom/oplus/network/OlkL2Param$1;
.super Ljava/lang/Object;
.source "OlkL2Param.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/network/OlkL2Param;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/oplus/network/OlkL2Param;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/oplus/network/OlkL2Param;
    .locals 24
    .param p1, "in"    # Landroid/os/Parcel;

    .line 62
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 63
    .local v12, "mNetworkid":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 64
    .local v13, "mMCS":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 65
    .local v14, "mBandwidth_ratio":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 66
    .local v15, "mRadioOnMs":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 67
    .local v16, "mRssi":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 68
    .local v17, "mTx_retry_rate":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 69
    .local v18, "mTx_lost_rate":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 70
    .local v19, "mOPLUS_L3_SCORE":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 71
    .local v20, "mDevice_number":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 72
    .local v21, "mBw":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 73
    .local v22, "mTemperature":I
    new-instance v23, Lcom/oplus/network/OlkL2Param;

    move-object/from16 v0, v23

    move v1, v12

    move v2, v13

    move v3, v14

    move v4, v15

    move/from16 v5, v16

    move/from16 v6, v17

    move/from16 v7, v18

    move/from16 v8, v19

    move/from16 v9, v20

    move/from16 v10, v21

    move/from16 v11, v22

    invoke-direct/range {v0 .. v11}, Lcom/oplus/network/OlkL2Param;-><init>(IIIIIIIIIII)V

    return-object v23
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 60
    invoke-virtual {p0, p1}, Lcom/oplus/network/OlkL2Param$1;->createFromParcel(Landroid/os/Parcel;)Lcom/oplus/network/OlkL2Param;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/oplus/network/OlkL2Param;
    .locals 1
    .param p1, "size"    # I

    .line 77
    new-array v0, p1, [Lcom/oplus/network/OlkL2Param;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 60
    invoke-virtual {p0, p1}, Lcom/oplus/network/OlkL2Param$1;->newArray(I)[Lcom/oplus/network/OlkL2Param;

    move-result-object p1

    return-object p1
.end method
