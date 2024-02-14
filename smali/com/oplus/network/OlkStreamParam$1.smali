.class Lcom/oplus/network/OlkStreamParam$1;
.super Ljava/lang/Object;
.source "OlkStreamParam.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/network/OlkStreamParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/oplus/network/OlkStreamParam;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/oplus/network/OlkStreamParam;
    .locals 16
    .param p1, "in"    # Landroid/os/Parcel;

    .line 55
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 56
    .local v8, "srcIp":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 57
    .local v9, "dstIp":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 58
    .local v10, "srcPort":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 59
    .local v11, "dstPort":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 60
    .local v12, "protocol":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 61
    .local v13, "tag":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 62
    .local v14, "priority":I
    new-instance v15, Lcom/oplus/network/OlkStreamParam;

    move-object v0, v15

    move-object v1, v8

    move-object v2, v9

    move v3, v10

    move v4, v11

    move v5, v12

    move v6, v13

    move v7, v14

    invoke-direct/range {v0 .. v7}, Lcom/oplus/network/OlkStreamParam;-><init>(Ljava/lang/String;Ljava/lang/String;IIIII)V

    return-object v15
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcom/oplus/network/OlkStreamParam$1;->createFromParcel(Landroid/os/Parcel;)Lcom/oplus/network/OlkStreamParam;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/oplus/network/OlkStreamParam;
    .locals 1
    .param p1, "size"    # I

    .line 66
    new-array v0, p1, [Lcom/oplus/network/OlkStreamParam;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcom/oplus/network/OlkStreamParam$1;->newArray(I)[Lcom/oplus/network/OlkStreamParam;

    move-result-object p1

    return-object p1
.end method
