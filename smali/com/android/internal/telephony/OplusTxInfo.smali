.class public Lcom/android/internal/telephony/OplusTxInfo;
.super Ljava/lang/Object;
.source "OplusTxInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/telephony/OplusTxInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mIsInTraffic:I

.field private blacklist mTxPwr:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/android/internal/telephony/OplusTxInfo$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/OplusTxInfo$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/OplusTxInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(II)V
    .locals 0
    .param p1, "mIsInTraffic"    # I
    .param p2, "mTxPwr"    # I

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/android/internal/telephony/OplusTxInfo;->mIsInTraffic:I

    .line 26
    iput p2, p0, Lcom/android/internal/telephony/OplusTxInfo;->mTxPwr:I

    .line 27
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/OplusTxInfo;->mIsInTraffic:I

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/OplusTxInfo;->mTxPwr:I

    .line 32
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getIsInTraffic()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/android/internal/telephony/OplusTxInfo;->mIsInTraffic:I

    return v0
.end method

.method public blacklist getTxPwr()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/android/internal/telephony/OplusTxInfo;->mTxPwr:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsInTraffic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/OplusTxInfo;->mIsInTraffic:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTxPwr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/OplusTxInfo;->mTxPwr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .line 54
    iget v0, p0, Lcom/android/internal/telephony/OplusTxInfo;->mIsInTraffic:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    iget v0, p0, Lcom/android/internal/telephony/OplusTxInfo;->mTxPwr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    return-void
.end method
