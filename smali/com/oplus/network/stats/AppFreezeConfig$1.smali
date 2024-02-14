.class Lcom/oplus/network/stats/AppFreezeConfig$1;
.super Ljava/lang/Object;
.source "AppFreezeConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/network/stats/AppFreezeConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/oplus/network/stats/AppFreezeConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/oplus/network/stats/AppFreezeConfig;
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 34
    .local v0, "enable":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 35
    .local v1, "uid":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 37
    .local v2, "timeFlag":I
    new-instance v3, Lcom/oplus/network/stats/AppFreezeConfig;

    invoke-direct {v3, v0, v1, v2}, Lcom/oplus/network/stats/AppFreezeConfig;-><init>(III)V

    return-object v3
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcom/oplus/network/stats/AppFreezeConfig$1;->createFromParcel(Landroid/os/Parcel;)Lcom/oplus/network/stats/AppFreezeConfig;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/oplus/network/stats/AppFreezeConfig;
    .locals 1
    .param p1, "size"    # I

    .line 42
    new-array v0, p1, [Lcom/oplus/network/stats/AppFreezeConfig;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcom/oplus/network/stats/AppFreezeConfig$1;->newArray(I)[Lcom/oplus/network/stats/AppFreezeConfig;

    move-result-object p1

    return-object p1
.end method
