.class public Lcom/oplus/network/stats/AppFreezeStatsInfo;
.super Ljava/lang/Object;
.source "AppFreezeStatsInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oplus/network/stats/AppFreezeStatsInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "AppFreezeStatsInfo"


# instance fields
.field public blacklist mAppName:Ljava/lang/String;

.field public blacklist mCount:I

.field public blacklist mHistory:Lcom/oplus/network/stats/AppFreezeHistory;

.field public blacklist mStats:Lcom/oplus/network/stats/AppFreezeStats;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lcom/oplus/network/stats/AppFreezeStatsInfo$1;

    invoke-direct {v0}, Lcom/oplus/network/stats/AppFreezeStatsInfo$1;-><init>()V

    sput-object v0, Lcom/oplus/network/stats/AppFreezeStatsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/oplus/network/stats/AppFreezeStats;Lcom/oplus/network/stats/AppFreezeHistory;Ljava/lang/String;I)V
    .locals 0
    .param p1, "mStats"    # Lcom/oplus/network/stats/AppFreezeStats;
    .param p2, "mHistory"    # Lcom/oplus/network/stats/AppFreezeHistory;
    .param p3, "mAppName"    # Ljava/lang/String;
    .param p4, "mCount"    # I

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/oplus/network/stats/AppFreezeStatsInfo;->mStats:Lcom/oplus/network/stats/AppFreezeStats;

    .line 17
    iput-object p2, p0, Lcom/oplus/network/stats/AppFreezeStatsInfo;->mHistory:Lcom/oplus/network/stats/AppFreezeHistory;

    .line 18
    iput-object p3, p0, Lcom/oplus/network/stats/AppFreezeStatsInfo;->mAppName:Ljava/lang/String;

    .line 19
    iput p4, p0, Lcom/oplus/network/stats/AppFreezeStatsInfo;->mCount:I

    .line 20
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppFreezeStatsInfo{mStats="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/network/stats/AppFreezeStatsInfo;->mStats:Lcom/oplus/network/stats/AppFreezeStats;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHistory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/network/stats/AppFreezeStatsInfo;->mHistory:Lcom/oplus/network/stats/AppFreezeHistory;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAppName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/network/stats/AppFreezeStatsInfo;->mAppName:Ljava/lang/String;

    .line 62
    invoke-static {v1}, Lcom/oplus/network/stats/OplusNetworkUtils;->getHashPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/network/stats/AppFreezeStatsInfo;->mCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 29
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 30
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/oplus/network/stats/AppFreezeStatsInfo;->mStats:Lcom/oplus/network/stats/AppFreezeStats;

    const-string v2, "mStats"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 31
    iget-object v1, p0, Lcom/oplus/network/stats/AppFreezeStatsInfo;->mHistory:Lcom/oplus/network/stats/AppFreezeHistory;

    const-string v2, "mHistory"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 32
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 33
    iget-object v1, p0, Lcom/oplus/network/stats/AppFreezeStatsInfo;->mAppName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    iget v1, p0, Lcom/oplus/network/stats/AppFreezeStatsInfo;->mCount:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    return-void
.end method
