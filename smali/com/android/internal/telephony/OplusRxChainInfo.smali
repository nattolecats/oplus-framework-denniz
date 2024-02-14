.class public Lcom/android/internal/telephony/OplusRxChainInfo;
.super Ljava/lang/Object;
.source "OplusRxChainInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/telephony/OplusRxChainInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mEcio:I

.field private blacklist mIsRadioTurned:I

.field private blacklist mPhase:I

.field private blacklist mRscp:I

.field private blacklist mRsrp:I

.field private blacklist mRxPwr:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/android/internal/telephony/OplusRxChainInfo$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/OplusRxChainInfo$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/OplusRxChainInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IIIIII)V
    .locals 0
    .param p1, "mIsRadioTurned"    # I
    .param p2, "mRxPwr"    # I
    .param p3, "mEcio"    # I
    .param p4, "mRscp"    # I
    .param p5, "mRsrp"    # I
    .param p6, "mPhase"    # I

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lcom/android/internal/telephony/OplusRxChainInfo;->mIsRadioTurned:I

    .line 30
    iput p2, p0, Lcom/android/internal/telephony/OplusRxChainInfo;->mRxPwr:I

    .line 31
    iput p3, p0, Lcom/android/internal/telephony/OplusRxChainInfo;->mEcio:I

    .line 32
    iput p4, p0, Lcom/android/internal/telephony/OplusRxChainInfo;->mRscp:I

    .line 33
    iput p5, p0, Lcom/android/internal/telephony/OplusRxChainInfo;->mRsrp:I

    .line 34
    iput p6, p0, Lcom/android/internal/telephony/OplusRxChainInfo;->mPhase:I

    .line 35
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/OplusRxChainInfo;->mIsRadioTurned:I

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/OplusRxChainInfo;->mRxPwr:I

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/OplusRxChainInfo;->mEcio:I

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/OplusRxChainInfo;->mRscp:I

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/OplusRxChainInfo;->mRsrp:I

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/OplusRxChainInfo;->mPhase:I

    .line 44
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getEcio()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/android/internal/telephony/OplusRxChainInfo;->mEcio:I

    return v0
.end method

.method public blacklist getIsRadioTurned()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/android/internal/telephony/OplusRxChainInfo;->mIsRadioTurned:I

    return v0
.end method

.method public blacklist getPhase()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/android/internal/telephony/OplusRxChainInfo;->mPhase:I

    return v0
.end method

.method public blacklist getRscp()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/android/internal/telephony/OplusRxChainInfo;->mRscp:I

    return v0
.end method

.method public blacklist getRsrp()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/android/internal/telephony/OplusRxChainInfo;->mRsrp:I

    return v0
.end method

.method public blacklist getRxPwr()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/android/internal/telephony/OplusRxChainInfo;->mRxPwr:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsRadioTurned="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/OplusRxChainInfo;->mIsRadioTurned:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRxPwr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/OplusRxChainInfo;->mRxPwr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEcio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/OplusRxChainInfo;->mEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRscp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/OplusRxChainInfo;->mRscp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRsrp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/OplusRxChainInfo;->mRsrp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPhase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/OplusRxChainInfo;->mPhase:I

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

    .line 83
    iget v0, p0, Lcom/android/internal/telephony/OplusRxChainInfo;->mIsRadioTurned:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget v0, p0, Lcom/android/internal/telephony/OplusRxChainInfo;->mRxPwr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    iget v0, p0, Lcom/android/internal/telephony/OplusRxChainInfo;->mEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    iget v0, p0, Lcom/android/internal/telephony/OplusRxChainInfo;->mRscp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget v0, p0, Lcom/android/internal/telephony/OplusRxChainInfo;->mRsrp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    iget v0, p0, Lcom/android/internal/telephony/OplusRxChainInfo;->mPhase:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    return-void
.end method
