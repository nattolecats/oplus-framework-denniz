.class public Lcom/oplus/network/stats/AppFreezeHistory;
.super Ljava/lang/Object;
.source "AppFreezeHistory.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oplus/network/stats/AppFreezeHistory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist mAddBlockTime:J

.field public blacklist mEnterBgTime:J

.field public blacklist mEnterFgTime:J

.field public blacklist mNetworkType:J

.field public blacklist mRemoveBlockTime:J

.field public blacklist mSendResetTime:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 51
    new-instance v0, Lcom/oplus/network/stats/AppFreezeHistory$1;

    invoke-direct {v0}, Lcom/oplus/network/stats/AppFreezeHistory$1;-><init>()V

    sput-object v0, Lcom/oplus/network/stats/AppFreezeHistory;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oplus/network/stats/AppFreezeHistory;->mAddBlockTime:J

    .line 19
    iput-wide v0, p0, Lcom/oplus/network/stats/AppFreezeHistory;->mRemoveBlockTime:J

    .line 20
    iput-wide v0, p0, Lcom/oplus/network/stats/AppFreezeHistory;->mSendResetTime:J

    .line 21
    iput-wide v0, p0, Lcom/oplus/network/stats/AppFreezeHistory;->mEnterFgTime:J

    .line 22
    iput-wide v0, p0, Lcom/oplus/network/stats/AppFreezeHistory;->mEnterBgTime:J

    .line 23
    iput-wide v0, p0, Lcom/oplus/network/stats/AppFreezeHistory;->mNetworkType:J

    .line 24
    return-void
.end method

.method public constructor blacklist <init>(JJJJJJ)V
    .locals 0
    .param p1, "mAddBlockTime"    # J
    .param p3, "mRemoveBlockTime"    # J
    .param p5, "mSendResetTime"    # J
    .param p7, "mEnterFgTime"    # J
    .param p9, "mEnterBgTime"    # J
    .param p11, "mNetworkType"    # J

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-wide p1, p0, Lcom/oplus/network/stats/AppFreezeHistory;->mAddBlockTime:J

    .line 28
    iput-wide p3, p0, Lcom/oplus/network/stats/AppFreezeHistory;->mRemoveBlockTime:J

    .line 29
    iput-wide p5, p0, Lcom/oplus/network/stats/AppFreezeHistory;->mSendResetTime:J

    .line 30
    iput-wide p7, p0, Lcom/oplus/network/stats/AppFreezeHistory;->mEnterFgTime:J

    .line 31
    iput-wide p9, p0, Lcom/oplus/network/stats/AppFreezeHistory;->mEnterBgTime:J

    .line 32
    iput-wide p11, p0, Lcom/oplus/network/stats/AppFreezeHistory;->mNetworkType:J

    .line 33
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppFreezeHistory{mAddBlockTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/oplus/network/stats/AppFreezeHistory;->mAddBlockTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRemoveBlockTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/oplus/network/stats/AppFreezeHistory;->mRemoveBlockTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSendResetTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/oplus/network/stats/AppFreezeHistory;->mSendResetTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEnterFgTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/oplus/network/stats/AppFreezeHistory;->mEnterFgTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEnterBgTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/oplus/network/stats/AppFreezeHistory;->mEnterBgTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNetworkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/oplus/network/stats/AppFreezeHistory;->mNetworkType:J

    .line 78
    invoke-static {v1, v2}, Lcom/android/internal/util/BitUtils;->unpackBits(J)[I

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .line 42
    iget-wide v0, p0, Lcom/oplus/network/stats/AppFreezeHistory;->mAddBlockTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 43
    iget-wide v0, p0, Lcom/oplus/network/stats/AppFreezeHistory;->mRemoveBlockTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 44
    iget-wide v0, p0, Lcom/oplus/network/stats/AppFreezeHistory;->mSendResetTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 45
    iget-wide v0, p0, Lcom/oplus/network/stats/AppFreezeHistory;->mEnterFgTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 46
    iget-wide v0, p0, Lcom/oplus/network/stats/AppFreezeHistory;->mEnterBgTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 47
    iget-wide v0, p0, Lcom/oplus/network/stats/AppFreezeHistory;->mNetworkType:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 48
    return-void
.end method
