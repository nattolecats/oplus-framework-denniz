.class public Lcom/oplus/network/stats/AppFreezeStats;
.super Ljava/lang/Object;
.source "AppFreezeStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oplus/network/stats/AppFreezeStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist mExpired:I

.field public blacklist mOccurFlag:I

.field public blacklist mRxBytes:J

.field public blacklist mRxCount:I

.field public blacklist mTxBytes:J

.field public blacklist mTxCount:I

.field public blacklist mUid:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lcom/oplus/network/stats/AppFreezeStats$1;

    invoke-direct {v0}, Lcom/oplus/network/stats/AppFreezeStats$1;-><init>()V

    sput-object v0, Lcom/oplus/network/stats/AppFreezeStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IIJJIII)V
    .locals 0
    .param p1, "mUid"    # I
    .param p2, "mExpired"    # I
    .param p3, "mRxBytes"    # J
    .param p5, "mTxBytes"    # J
    .param p7, "mRxCount"    # I
    .param p8, "mTxCount"    # I
    .param p9, "mOccurFlag"    # I

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/oplus/network/stats/AppFreezeStats;->mUid:I

    .line 17
    iput p2, p0, Lcom/oplus/network/stats/AppFreezeStats;->mExpired:I

    .line 18
    iput-wide p3, p0, Lcom/oplus/network/stats/AppFreezeStats;->mRxBytes:J

    .line 19
    iput-wide p5, p0, Lcom/oplus/network/stats/AppFreezeStats;->mTxBytes:J

    .line 20
    iput p7, p0, Lcom/oplus/network/stats/AppFreezeStats;->mRxCount:I

    .line 21
    iput p8, p0, Lcom/oplus/network/stats/AppFreezeStats;->mTxCount:I

    .line 22
    iput p9, p0, Lcom/oplus/network/stats/AppFreezeStats;->mOccurFlag:I

    .line 23
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 77
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 78
    return v0

    .line 81
    :cond_0
    instance-of v1, p1, Lcom/oplus/network/stats/AppFreezeStats;

    if-eqz v1, :cond_2

    .line 82
    iget v1, p0, Lcom/oplus/network/stats/AppFreezeStats;->mUid:I

    move-object v2, p1

    check-cast v2, Lcom/oplus/network/stats/AppFreezeStats;

    iget v2, v2, Lcom/oplus/network/stats/AppFreezeStats;->mUid:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/oplus/network/stats/AppFreezeStats;->mExpired:I

    move-object v2, p1

    check-cast v2, Lcom/oplus/network/stats/AppFreezeStats;

    iget v2, v2, Lcom/oplus/network/stats/AppFreezeStats;->mExpired:I

    if-ne v1, v2, :cond_1

    iget-wide v1, p0, Lcom/oplus/network/stats/AppFreezeStats;->mRxBytes:J

    move-object v3, p1

    check-cast v3, Lcom/oplus/network/stats/AppFreezeStats;

    iget-wide v3, v3, Lcom/oplus/network/stats/AppFreezeStats;->mRxBytes:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/oplus/network/stats/AppFreezeStats;->mTxBytes:J

    move-object v3, p1

    check-cast v3, Lcom/oplus/network/stats/AppFreezeStats;

    iget-wide v3, v3, Lcom/oplus/network/stats/AppFreezeStats;->mTxBytes:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    iget v1, p0, Lcom/oplus/network/stats/AppFreezeStats;->mRxCount:I

    move-object v2, p1

    check-cast v2, Lcom/oplus/network/stats/AppFreezeStats;

    iget v2, v2, Lcom/oplus/network/stats/AppFreezeStats;->mRxCount:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/oplus/network/stats/AppFreezeStats;->mTxCount:I

    move-object v2, p1

    check-cast v2, Lcom/oplus/network/stats/AppFreezeStats;

    iget v2, v2, Lcom/oplus/network/stats/AppFreezeStats;->mTxCount:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/oplus/network/stats/AppFreezeStats;->mOccurFlag:I

    move-object v2, p1

    check-cast v2, Lcom/oplus/network/stats/AppFreezeStats;

    iget v2, v2, Lcom/oplus/network/stats/AppFreezeStats;->mOccurFlag:I

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 91
    :cond_2
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppFreezeStats{mUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/network/stats/AppFreezeStats;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mExpired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/network/stats/AppFreezeStats;->mExpired:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRxBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/oplus/network/stats/AppFreezeStats;->mRxBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTxBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/oplus/network/stats/AppFreezeStats;->mTxBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRxCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/network/stats/AppFreezeStats;->mRxCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTxCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/network/stats/AppFreezeStats;->mTxCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOccurFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/network/stats/AppFreezeStats;->mOccurFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    .line 32
    iget v0, p0, Lcom/oplus/network/stats/AppFreezeStats;->mUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 33
    iget v0, p0, Lcom/oplus/network/stats/AppFreezeStats;->mExpired:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    iget-wide v0, p0, Lcom/oplus/network/stats/AppFreezeStats;->mRxBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 35
    iget-wide v0, p0, Lcom/oplus/network/stats/AppFreezeStats;->mTxBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 36
    iget v0, p0, Lcom/oplus/network/stats/AppFreezeStats;->mRxCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    iget v0, p0, Lcom/oplus/network/stats/AppFreezeStats;->mTxCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    iget v0, p0, Lcom/oplus/network/stats/AppFreezeStats;->mOccurFlag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    return-void
.end method
