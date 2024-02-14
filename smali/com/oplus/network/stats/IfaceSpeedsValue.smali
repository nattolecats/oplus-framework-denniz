.class public Lcom/oplus/network/stats/IfaceSpeedsValue;
.super Ljava/lang/Object;
.source "IfaceSpeedsValue.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oplus/network/stats/IfaceSpeedsValue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist mRxSpeed:J

.field public blacklist mTxSpeed:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lcom/oplus/network/stats/IfaceSpeedsValue$1;

    invoke-direct {v0}, Lcom/oplus/network/stats/IfaceSpeedsValue$1;-><init>()V

    sput-object v0, Lcom/oplus/network/stats/IfaceSpeedsValue;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(JJ)V
    .locals 0
    .param p1, "mRxSpeed"    # J
    .param p3, "mTxSpeed"    # J

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-wide p1, p0, Lcom/oplus/network/stats/IfaceSpeedsValue;->mRxSpeed:J

    .line 12
    iput-wide p3, p0, Lcom/oplus/network/stats/IfaceSpeedsValue;->mTxSpeed:J

    .line 13
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 17
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 50
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 51
    return v0

    .line 54
    :cond_0
    instance-of v1, p1, Lcom/oplus/network/stats/IfaceSpeedsValue;

    if-eqz v1, :cond_2

    .line 55
    iget-wide v1, p0, Lcom/oplus/network/stats/IfaceSpeedsValue;->mTxSpeed:J

    move-object v3, p1

    check-cast v3, Lcom/oplus/network/stats/IfaceSpeedsValue;

    iget-wide v3, v3, Lcom/oplus/network/stats/IfaceSpeedsValue;->mTxSpeed:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/oplus/network/stats/IfaceSpeedsValue;->mRxSpeed:J

    move-object v3, p1

    check-cast v3, Lcom/oplus/network/stats/IfaceSpeedsValue;

    iget-wide v3, v3, Lcom/oplus/network/stats/IfaceSpeedsValue;->mRxSpeed:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 59
    :cond_2
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IfaceSpeedsValue{mRxSpeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/oplus/network/stats/IfaceSpeedsValue;->mRxSpeed:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTxSpeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/oplus/network/stats/IfaceSpeedsValue;->mTxSpeed:J

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

    .line 22
    iget-wide v0, p0, Lcom/oplus/network/stats/IfaceSpeedsValue;->mRxSpeed:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 23
    iget-wide v0, p0, Lcom/oplus/network/stats/IfaceSpeedsValue;->mTxSpeed:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 24
    return-void
.end method
