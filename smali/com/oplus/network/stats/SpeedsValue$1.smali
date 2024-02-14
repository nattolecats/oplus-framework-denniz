.class Lcom/oplus/network/stats/SpeedsValue$1;
.super Ljava/lang/Object;
.source "SpeedsValue.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/network/stats/SpeedsValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/oplus/network/stats/SpeedsValue;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/oplus/network/stats/SpeedsValue;
    .locals 14
    .param p1, "in"    # Landroid/os/Parcel;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 36
    .local v7, "uid":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 37
    .local v8, "ifindex":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .line 38
    .local v9, "rxSpeed":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 40
    .local v11, "txSpeed":J
    new-instance v13, Lcom/oplus/network/stats/SpeedsValue;

    move-object v0, v13

    move v1, v7

    move v2, v8

    move-wide v3, v9

    move-wide v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/oplus/network/stats/SpeedsValue;-><init>(IIJJ)V

    return-object v13
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lcom/oplus/network/stats/SpeedsValue$1;->createFromParcel(Landroid/os/Parcel;)Lcom/oplus/network/stats/SpeedsValue;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/oplus/network/stats/SpeedsValue;
    .locals 1
    .param p1, "size"    # I

    .line 44
    new-array v0, p1, [Lcom/oplus/network/stats/SpeedsValue;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lcom/oplus/network/stats/SpeedsValue$1;->newArray(I)[Lcom/oplus/network/stats/SpeedsValue;

    move-result-object p1

    return-object p1
.end method
