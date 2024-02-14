.class Lcom/oplus/network/stats/IfaceSpeedsValueTotal$1;
.super Ljava/lang/Object;
.source "IfaceSpeedsValueTotal.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/network/stats/IfaceSpeedsValueTotal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/oplus/network/stats/IfaceSpeedsValueTotal;",
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
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/oplus/network/stats/IfaceSpeedsValueTotal;
    .locals 11
    .param p1, "in"    # Landroid/os/Parcel;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 36
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 37
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;Lcom/oplus/network/stats/IfaceSpeedsValue;>;"
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 39
    .local v3, "key":Ljava/lang/String;
    :try_start_0
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 40
    .local v4, "k":J
    const-wide/16 v6, -0x1

    and-long/2addr v6, v4

    long-to-int v6, v6

    .line 41
    .local v6, "ifindex":I
    const/16 v7, 0x20

    shr-long v7, v4, v7

    long-to-int v7, v7

    .line 42
    .local v7, "uid":I
    new-instance v8, Landroid/util/Pair;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Lcom/oplus/network/stats/IfaceSpeedsValue;

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    nop

    .line 47
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "k":J
    .end local v6    # "ifindex":I
    .end local v7    # "uid":I
    goto :goto_0

    .line 43
    .restart local v3    # "key":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 44
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 45
    goto :goto_0

    .line 48
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v2, Lcom/oplus/network/stats/IfaceSpeedsValueTotal;

    invoke-direct {v2, v1}, Lcom/oplus/network/stats/IfaceSpeedsValueTotal;-><init>(Ljava/util/HashMap;)V

    return-object v2
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lcom/oplus/network/stats/IfaceSpeedsValueTotal$1;->createFromParcel(Landroid/os/Parcel;)Lcom/oplus/network/stats/IfaceSpeedsValueTotal;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/oplus/network/stats/IfaceSpeedsValueTotal;
    .locals 1
    .param p1, "size"    # I

    .line 52
    new-array v0, p1, [Lcom/oplus/network/stats/IfaceSpeedsValueTotal;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lcom/oplus/network/stats/IfaceSpeedsValueTotal$1;->newArray(I)[Lcom/oplus/network/stats/IfaceSpeedsValueTotal;

    move-result-object p1

    return-object p1
.end method
