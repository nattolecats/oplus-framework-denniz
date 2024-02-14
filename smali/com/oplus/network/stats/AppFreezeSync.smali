.class public Lcom/oplus/network/stats/AppFreezeSync;
.super Ljava/lang/Object;
.source "AppFreezeSync.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oplus/network/stats/AppFreezeSync;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist mExpired:I

.field public blacklist mOccurFlag:I

.field public blacklist mSynAckFlag:I

.field public blacklist mUid:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lcom/oplus/network/stats/AppFreezeSync$1;

    invoke-direct {v0}, Lcom/oplus/network/stats/AppFreezeSync$1;-><init>()V

    sput-object v0, Lcom/oplus/network/stats/AppFreezeSync;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IIII)V
    .locals 0
    .param p1, "mUid"    # I
    .param p2, "mExpired"    # I
    .param p3, "mOccurFlag"    # I
    .param p4, "mSynAckFlag"    # I

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/oplus/network/stats/AppFreezeSync;->mUid:I

    .line 14
    iput p2, p0, Lcom/oplus/network/stats/AppFreezeSync;->mExpired:I

    .line 15
    iput p3, p0, Lcom/oplus/network/stats/AppFreezeSync;->mOccurFlag:I

    .line 16
    iput p4, p0, Lcom/oplus/network/stats/AppFreezeSync;->mSynAckFlag:I

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
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 62
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 63
    return v0

    .line 66
    :cond_0
    instance-of v1, p1, Lcom/oplus/network/stats/AppFreezeSync;

    if-eqz v1, :cond_2

    .line 67
    iget v1, p0, Lcom/oplus/network/stats/AppFreezeSync;->mUid:I

    move-object v2, p1

    check-cast v2, Lcom/oplus/network/stats/AppFreezeSync;

    iget v2, v2, Lcom/oplus/network/stats/AppFreezeSync;->mUid:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/oplus/network/stats/AppFreezeSync;->mExpired:I

    move-object v2, p1

    check-cast v2, Lcom/oplus/network/stats/AppFreezeSync;

    iget v2, v2, Lcom/oplus/network/stats/AppFreezeSync;->mExpired:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/oplus/network/stats/AppFreezeSync;->mOccurFlag:I

    move-object v2, p1

    check-cast v2, Lcom/oplus/network/stats/AppFreezeSync;

    iget v2, v2, Lcom/oplus/network/stats/AppFreezeSync;->mOccurFlag:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/oplus/network/stats/AppFreezeSync;->mSynAckFlag:I

    move-object v2, p1

    check-cast v2, Lcom/oplus/network/stats/AppFreezeSync;

    iget v2, v2, Lcom/oplus/network/stats/AppFreezeSync;->mSynAckFlag:I

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 73
    :cond_2
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppFreezeSync{mUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/network/stats/AppFreezeSync;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mExpired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/network/stats/AppFreezeSync;->mExpired:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOccurFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/network/stats/AppFreezeSync;->mOccurFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSynAckFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/network/stats/AppFreezeSync;->mSynAckFlag:I

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
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .line 26
    iget v0, p0, Lcom/oplus/network/stats/AppFreezeSync;->mUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 27
    iget v0, p0, Lcom/oplus/network/stats/AppFreezeSync;->mExpired:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    iget v0, p0, Lcom/oplus/network/stats/AppFreezeSync;->mOccurFlag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    iget v0, p0, Lcom/oplus/network/stats/AppFreezeSync;->mSynAckFlag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 30
    return-void
.end method
