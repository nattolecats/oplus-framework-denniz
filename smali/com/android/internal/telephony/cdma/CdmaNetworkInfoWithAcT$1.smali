.class Lcom/android/internal/telephony/cdma/CdmaNetworkInfoWithAcT$1;
.super Ljava/lang/Object;
.source "CdmaNetworkInfoWithAcT.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CdmaNetworkInfoWithAcT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/cdma/CdmaNetworkInfoWithAcT;
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 34
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaNetworkInfoWithAcT;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaNetworkInfoWithAcT;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 36
    .local v0, "netInfoWithAct":Lcom/android/internal/telephony/cdma/CdmaNetworkInfoWithAcT;
    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaNetworkInfoWithAcT$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/cdma/CdmaNetworkInfoWithAcT;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/android/internal/telephony/cdma/CdmaNetworkInfoWithAcT;
    .locals 1
    .param p1, "size"    # I

    .line 40
    new-array v0, p1, [Lcom/android/internal/telephony/cdma/CdmaNetworkInfoWithAcT;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaNetworkInfoWithAcT$1;->newArray(I)[Lcom/android/internal/telephony/cdma/CdmaNetworkInfoWithAcT;

    move-result-object p1

    return-object p1
.end method
