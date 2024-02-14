.class Lcom/oplus/network/stats/AppFreezeSync$1;
.super Ljava/lang/Object;
.source "AppFreezeSync.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/network/stats/AppFreezeSync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/oplus/network/stats/AppFreezeSync;",
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
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/oplus/network/stats/AppFreezeSync;
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 37
    .local v0, "uid":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 38
    .local v1, "expired":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 39
    .local v2, "occurFlag":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 41
    .local v3, "ackFlag":I
    new-instance v4, Lcom/oplus/network/stats/AppFreezeSync;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/oplus/network/stats/AppFreezeSync;-><init>(IIII)V

    return-object v4
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lcom/oplus/network/stats/AppFreezeSync$1;->createFromParcel(Landroid/os/Parcel;)Lcom/oplus/network/stats/AppFreezeSync;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/oplus/network/stats/AppFreezeSync;
    .locals 1
    .param p1, "size"    # I

    .line 46
    new-array v0, p1, [Lcom/oplus/network/stats/AppFreezeSync;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lcom/oplus/network/stats/AppFreezeSync$1;->newArray(I)[Lcom/oplus/network/stats/AppFreezeSync;

    move-result-object p1

    return-object p1
.end method
