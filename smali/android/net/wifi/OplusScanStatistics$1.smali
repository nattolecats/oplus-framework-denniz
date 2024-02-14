.class Landroid/net/wifi/OplusScanStatistics$1;
.super Ljava/lang/Object;
.source "OplusScanStatistics.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/OplusScanStatistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/OplusScanStatistics;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/OplusScanStatistics;
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 97
    new-instance v0, Landroid/net/wifi/OplusScanStatistics;

    invoke-direct {v0}, Landroid/net/wifi/OplusScanStatistics;-><init>()V

    .line 98
    .local v0, "stat":Landroid/net/wifi/OplusScanStatistics;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/OplusScanStatistics;->packageName:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/OplusScanStatistics;->packageUid:I

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/net/wifi/OplusScanStatistics;->requestTimestamp:J

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, v0, Landroid/net/wifi/OplusScanStatistics;->requestStatus:Z

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/net/wifi/OplusScanStatistics;->resultTimestamp:J

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, v0, Landroid/net/wifi/OplusScanStatistics;->resultStatus:Z

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/OplusScanStatistics;->resultSize:I

    .line 105
    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 95
    invoke-virtual {p0, p1}, Landroid/net/wifi/OplusScanStatistics$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/OplusScanStatistics;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/wifi/OplusScanStatistics;
    .locals 1
    .param p1, "size"    # I

    .line 109
    new-array v0, p1, [Landroid/net/wifi/OplusScanStatistics;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 95
    invoke-virtual {p0, p1}, Landroid/net/wifi/OplusScanStatistics$1;->newArray(I)[Landroid/net/wifi/OplusScanStatistics;

    move-result-object p1

    return-object p1
.end method
