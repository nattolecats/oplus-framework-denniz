.class public Lcom/oplus/network/stats/SpeedsValue;
.super Ljava/lang/Object;
.source "SpeedsValue.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oplus/network/stats/SpeedsValue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist mIfindex:I

.field public blacklist mRxSpeed:J

.field public blacklist mTxSpeed:J

.field public blacklist mUid:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lcom/oplus/network/stats/SpeedsValue$1;

    invoke-direct {v0}, Lcom/oplus/network/stats/SpeedsValue$1;-><init>()V

    sput-object v0, Lcom/oplus/network/stats/SpeedsValue;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IIJJ)V
    .locals 0
    .param p1, "mUid"    # I
    .param p2, "mIfindex"    # I
    .param p3, "mRxSpeed"    # J
    .param p5, "mTxSpeed"    # J

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/oplus/network/stats/SpeedsValue;->mUid:I

    .line 14
    iput p2, p0, Lcom/oplus/network/stats/SpeedsValue;->mIfindex:I

    .line 15
    iput-wide p3, p0, Lcom/oplus/network/stats/SpeedsValue;->mRxSpeed:J

    .line 16
    iput-wide p5, p0, Lcom/oplus/network/stats/SpeedsValue;->mTxSpeed:J

    .line 17
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 21
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 60
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 61
    return v0

    .line 64
    :cond_0
    instance-of v1, p1, Lcom/oplus/network/stats/SpeedsValue;

    if-eqz v1, :cond_2

    .line 65
    iget v1, p0, Lcom/oplus/network/stats/SpeedsValue;->mUid:I

    move-object v2, p1

    check-cast v2, Lcom/oplus/network/stats/SpeedsValue;

    iget v2, v2, Lcom/oplus/network/stats/SpeedsValue;->mUid:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/oplus/network/stats/SpeedsValue;->mIfindex:I

    move-object v2, p1

    check-cast v2, Lcom/oplus/network/stats/SpeedsValue;

    iget v2, v2, Lcom/oplus/network/stats/SpeedsValue;->mIfindex:I

    if-ne v1, v2, :cond_1

    iget-wide v1, p0, Lcom/oplus/network/stats/SpeedsValue;->mRxSpeed:J

    move-object v3, p1

    check-cast v3, Lcom/oplus/network/stats/SpeedsValue;

    iget-wide v3, v3, Lcom/oplus/network/stats/SpeedsValue;->mRxSpeed:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/oplus/network/stats/SpeedsValue;->mTxSpeed:J

    move-object v3, p1

    check-cast v3, Lcom/oplus/network/stats/SpeedsValue;

    iget-wide v3, v3, Lcom/oplus/network/stats/SpeedsValue;->mTxSpeed:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 71
    :cond_2
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpeedsValue{mUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/network/stats/SpeedsValue;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIfindex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/network/stats/SpeedsValue;->mIfindex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRxSpeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/oplus/network/stats/SpeedsValue;->mRxSpeed:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTxSpeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/oplus/network/stats/SpeedsValue;->mTxSpeed:J

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

    .line 26
    iget v0, p0, Lcom/oplus/network/stats/SpeedsValue;->mUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 27
    iget v0, p0, Lcom/oplus/network/stats/SpeedsValue;->mIfindex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    iget-wide v0, p0, Lcom/oplus/network/stats/SpeedsValue;->mRxSpeed:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 29
    iget-wide v0, p0, Lcom/oplus/network/stats/SpeedsValue;->mTxSpeed:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 30
    return-void
.end method
