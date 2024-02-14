.class Lcom/oplus/network/stats/AppFreezeSyncInfo$1;
.super Ljava/lang/Object;
.source "AppFreezeSyncInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/network/stats/AppFreezeSyncInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/oplus/network/stats/AppFreezeSyncInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/oplus/network/stats/AppFreezeSyncInfo;
    .locals 6
    .param p1, "source"    # Landroid/os/Parcel;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 43
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "mSyn"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/oplus/network/stats/AppFreezeSync;

    .line 44
    .local v1, "stats":Lcom/oplus/network/stats/AppFreezeSync;
    const-string v2, "mHistory"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/oplus/network/stats/AppFreezeHistory;

    .line 45
    .local v2, "history":Lcom/oplus/network/stats/AppFreezeHistory;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 46
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 48
    .local v4, "count":I
    new-instance v5, Lcom/oplus/network/stats/AppFreezeSyncInfo;

    invoke-direct {v5, v1, v2, v3, v4}, Lcom/oplus/network/stats/AppFreezeSyncInfo;-><init>(Lcom/oplus/network/stats/AppFreezeSync;Lcom/oplus/network/stats/AppFreezeHistory;Ljava/lang/String;I)V

    return-object v5
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/oplus/network/stats/AppFreezeSyncInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/oplus/network/stats/AppFreezeSyncInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/oplus/network/stats/AppFreezeSyncInfo;
    .locals 1
    .param p1, "size"    # I

    .line 53
    new-array v0, p1, [Lcom/oplus/network/stats/AppFreezeSyncInfo;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/oplus/network/stats/AppFreezeSyncInfo$1;->newArray(I)[Lcom/oplus/network/stats/AppFreezeSyncInfo;

    move-result-object p1

    return-object p1
.end method
