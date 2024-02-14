.class Lcom/oplus/network/stats/IfaceUidStatsTotal$1;
.super Ljava/lang/Object;
.source "IfaceUidStatsTotal.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/network/stats/IfaceUidStatsTotal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/oplus/network/stats/IfaceUidStatsTotal;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/oplus/network/stats/IfaceUidStatsTotal;
    .locals 10
    .param p1, "in"    # Landroid/os/Parcel;

    .line 38
    const-string v0, "IfaceUidStatsTotal"

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 39
    .local v1, "bundle":Landroid/os/Bundle;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 40
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;Lcom/oplus/network/stats/StatsValue;>;"
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 42
    .local v4, "key":Ljava/lang/String;
    :try_start_0
    const-string v5, "\\|"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 43
    .local v5, "arr":[Ljava/lang/String;
    if-eqz v5, :cond_1

    array-length v6, v5

    const/4 v7, 0x2

    if-eq v6, v7, :cond_0

    goto :goto_1

    .line 47
    :cond_0
    const/4 v6, 0x1

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 48
    .local v6, "uid":I
    new-instance v7, Landroid/util/Pair;

    const/4 v8, 0x0

    aget-object v8, v5, v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Lcom/oplus/network/stats/StatsValue;

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    nop

    .end local v5    # "arr":[Ljava/lang/String;
    .end local v6    # "uid":I
    goto :goto_2

    .line 44
    .restart local v5    # "arr":[Ljava/lang/String;
    :cond_1
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "arr invalid!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    goto :goto_0

    .line 49
    .end local v5    # "arr":[Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 50
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 51
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parse failed!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_2
    goto :goto_0

    .line 54
    :cond_2
    new-instance v0, Lcom/oplus/network/stats/IfaceUidStatsTotal;

    invoke-direct {v0, v2}, Lcom/oplus/network/stats/IfaceUidStatsTotal;-><init>(Ljava/util/HashMap;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/oplus/network/stats/IfaceUidStatsTotal$1;->createFromParcel(Landroid/os/Parcel;)Lcom/oplus/network/stats/IfaceUidStatsTotal;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/oplus/network/stats/IfaceUidStatsTotal;
    .locals 1
    .param p1, "size"    # I

    .line 58
    new-array v0, p1, [Lcom/oplus/network/stats/IfaceUidStatsTotal;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/oplus/network/stats/IfaceUidStatsTotal$1;->newArray(I)[Lcom/oplus/network/stats/IfaceUidStatsTotal;

    move-result-object p1

    return-object p1
.end method
