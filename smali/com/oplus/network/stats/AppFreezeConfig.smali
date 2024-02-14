.class public Lcom/oplus/network/stats/AppFreezeConfig;
.super Ljava/lang/Object;
.source "AppFreezeConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oplus/network/stats/AppFreezeConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist mEnable:I

.field public blacklist mFgUid:I

.field public blacklist mTimeFlag:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lcom/oplus/network/stats/AppFreezeConfig$1;

    invoke-direct {v0}, Lcom/oplus/network/stats/AppFreezeConfig$1;-><init>()V

    sput-object v0, Lcom/oplus/network/stats/AppFreezeConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(III)V
    .locals 0
    .param p1, "mEnable"    # I
    .param p2, "mFgUid"    # I
    .param p3, "mTimeFlag"    # I

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/oplus/network/stats/AppFreezeConfig;->mEnable:I

    .line 13
    iput p2, p0, Lcom/oplus/network/stats/AppFreezeConfig;->mFgUid:I

    .line 14
    iput p3, p0, Lcom/oplus/network/stats/AppFreezeConfig;->mTimeFlag:I

    .line 15
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 19
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 57
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 58
    return v0

    .line 61
    :cond_0
    instance-of v1, p1, Lcom/oplus/network/stats/AppFreezeConfig;

    if-eqz v1, :cond_2

    .line 62
    iget v1, p0, Lcom/oplus/network/stats/AppFreezeConfig;->mEnable:I

    move-object v2, p1

    check-cast v2, Lcom/oplus/network/stats/AppFreezeConfig;

    iget v2, v2, Lcom/oplus/network/stats/AppFreezeConfig;->mEnable:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/oplus/network/stats/AppFreezeConfig;->mFgUid:I

    move-object v2, p1

    check-cast v2, Lcom/oplus/network/stats/AppFreezeConfig;

    iget v2, v2, Lcom/oplus/network/stats/AppFreezeConfig;->mFgUid:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/oplus/network/stats/AppFreezeConfig;->mTimeFlag:I

    move-object v2, p1

    check-cast v2, Lcom/oplus/network/stats/AppFreezeConfig;

    iget v2, v2, Lcom/oplus/network/stats/AppFreezeConfig;->mTimeFlag:I

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 67
    :cond_2
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppFreezeConfig{mEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/network/stats/AppFreezeConfig;->mEnable:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFgUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/network/stats/AppFreezeConfig;->mFgUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTimeFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/network/stats/AppFreezeConfig;->mTimeFlag:I

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

    .line 24
    iget v0, p0, Lcom/oplus/network/stats/AppFreezeConfig;->mEnable:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 25
    iget v0, p0, Lcom/oplus/network/stats/AppFreezeConfig;->mFgUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 26
    iget v0, p0, Lcom/oplus/network/stats/AppFreezeConfig;->mTimeFlag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 27
    return-void
.end method
