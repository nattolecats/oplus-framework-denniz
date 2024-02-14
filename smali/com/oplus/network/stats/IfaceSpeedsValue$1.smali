.class Lcom/oplus/network/stats/IfaceSpeedsValue$1;
.super Ljava/lang/Object;
.source "IfaceSpeedsValue.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/network/stats/IfaceSpeedsValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/oplus/network/stats/IfaceSpeedsValue;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/oplus/network/stats/IfaceSpeedsValue;
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 30
    .local v0, "rxSpeed":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 32
    .local v2, "txSpeed":J
    new-instance v4, Lcom/oplus/network/stats/IfaceSpeedsValue;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/oplus/network/stats/IfaceSpeedsValue;-><init>(JJ)V

    return-object v4
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/oplus/network/stats/IfaceSpeedsValue$1;->createFromParcel(Landroid/os/Parcel;)Lcom/oplus/network/stats/IfaceSpeedsValue;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/oplus/network/stats/IfaceSpeedsValue;
    .locals 1
    .param p1, "size"    # I

    .line 36
    new-array v0, p1, [Lcom/oplus/network/stats/IfaceSpeedsValue;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/oplus/network/stats/IfaceSpeedsValue$1;->newArray(I)[Lcom/oplus/network/stats/IfaceSpeedsValue;

    move-result-object p1

    return-object p1
.end method
