.class public Lcom/oplus/network/stats/StatsValue;
.super Ljava/lang/Object;
.source "StatsValue.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oplus/network/stats/StatsValue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist mRxBytes:J

.field public blacklist mRxPackets:J

.field public blacklist mTcpRxPackets:J

.field public blacklist mTcpTxPackets:J

.field public blacklist mTxBytes:J

.field public blacklist mTxPackets:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lcom/oplus/network/stats/StatsValue$1;

    invoke-direct {v0}, Lcom/oplus/network/stats/StatsValue$1;-><init>()V

    sput-object v0, Lcom/oplus/network/stats/StatsValue;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(JJJJJJ)V
    .locals 0
    .param p1, "mRxBytes"    # J
    .param p3, "mRxPackets"    # J
    .param p5, "mTxBytes"    # J
    .param p7, "mTxPackets"    # J
    .param p9, "mTcpRxPackets"    # J
    .param p11, "mTcpTxPackets"    # J

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-wide p1, p0, Lcom/oplus/network/stats/StatsValue;->mRxBytes:J

    .line 17
    iput-wide p3, p0, Lcom/oplus/network/stats/StatsValue;->mRxPackets:J

    .line 18
    iput-wide p5, p0, Lcom/oplus/network/stats/StatsValue;->mTxBytes:J

    .line 19
    iput-wide p7, p0, Lcom/oplus/network/stats/StatsValue;->mTxPackets:J

    .line 20
    iput-wide p9, p0, Lcom/oplus/network/stats/StatsValue;->mTcpRxPackets:J

    .line 21
    iput-wide p11, p0, Lcom/oplus/network/stats/StatsValue;->mTcpTxPackets:J

    .line 22
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 71
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 72
    return v0

    .line 75
    :cond_0
    instance-of v1, p1, Lcom/oplus/network/stats/StatsValue;

    if-eqz v1, :cond_2

    .line 76
    iget-wide v1, p0, Lcom/oplus/network/stats/StatsValue;->mRxBytes:J

    move-object v3, p1

    check-cast v3, Lcom/oplus/network/stats/StatsValue;

    iget-wide v3, v3, Lcom/oplus/network/stats/StatsValue;->mRxBytes:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/oplus/network/stats/StatsValue;->mTxBytes:J

    move-object v3, p1

    check-cast v3, Lcom/oplus/network/stats/StatsValue;

    iget-wide v3, v3, Lcom/oplus/network/stats/StatsValue;->mTxBytes:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/oplus/network/stats/StatsValue;->mRxPackets:J

    move-object v3, p1

    check-cast v3, Lcom/oplus/network/stats/StatsValue;

    iget-wide v3, v3, Lcom/oplus/network/stats/StatsValue;->mRxPackets:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/oplus/network/stats/StatsValue;->mTxPackets:J

    move-object v3, p1

    check-cast v3, Lcom/oplus/network/stats/StatsValue;

    iget-wide v3, v3, Lcom/oplus/network/stats/StatsValue;->mTxPackets:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/oplus/network/stats/StatsValue;->mTcpRxPackets:J

    move-object v3, p1

    check-cast v3, Lcom/oplus/network/stats/StatsValue;

    iget-wide v3, v3, Lcom/oplus/network/stats/StatsValue;->mTcpRxPackets:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/oplus/network/stats/StatsValue;->mTcpTxPackets:J

    move-object v3, p1

    check-cast v3, Lcom/oplus/network/stats/StatsValue;

    iget-wide v3, v3, Lcom/oplus/network/stats/StatsValue;->mTcpTxPackets:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 84
    :cond_2
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StatsValue{mRxBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/oplus/network/stats/StatsValue;->mRxBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRxPackets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/oplus/network/stats/StatsValue;->mRxPackets:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTxBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/oplus/network/stats/StatsValue;->mTxBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTxPackets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/oplus/network/stats/StatsValue;->mTxPackets:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTcpRxPackets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/oplus/network/stats/StatsValue;->mTcpRxPackets:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTcpTxPackets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/oplus/network/stats/StatsValue;->mTcpTxPackets:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .line 31
    iget-wide v0, p0, Lcom/oplus/network/stats/StatsValue;->mRxBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 32
    iget-wide v0, p0, Lcom/oplus/network/stats/StatsValue;->mRxPackets:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 33
    iget-wide v0, p0, Lcom/oplus/network/stats/StatsValue;->mTxBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 34
    iget-wide v0, p0, Lcom/oplus/network/stats/StatsValue;->mTxPackets:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 35
    iget-wide v0, p0, Lcom/oplus/network/stats/StatsValue;->mTcpRxPackets:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 36
    iget-wide v0, p0, Lcom/oplus/network/stats/StatsValue;->mTcpTxPackets:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 37
    return-void
.end method
