.class public Lcom/android/internal/telephony/OplusTxRxInfo;
.super Ljava/lang/Object;
.source "OplusTxRxInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/telephony/OplusTxRxInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mRxChain0:Lcom/android/internal/telephony/OplusRxChainInfo;

.field private blacklist mRxChain0Valid:I

.field private blacklist mRxChain1:Lcom/android/internal/telephony/OplusRxChainInfo;

.field private blacklist mRxChain1Valid:I

.field private blacklist mRxChain2:Lcom/android/internal/telephony/OplusRxChainInfo;

.field private blacklist mRxChain2Valid:I

.field private blacklist mRxChain3:Lcom/android/internal/telephony/OplusRxChainInfo;

.field private blacklist mRxChain3Valid:I

.field private blacklist mTx:Lcom/android/internal/telephony/OplusTxInfo;

.field private blacklist mTxValid:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/android/internal/telephony/OplusTxRxInfo$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/OplusTxRxInfo$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/OplusTxRxInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(ILcom/android/internal/telephony/OplusRxChainInfo;ILcom/android/internal/telephony/OplusRxChainInfo;ILcom/android/internal/telephony/OplusRxChainInfo;ILcom/android/internal/telephony/OplusRxChainInfo;ILcom/android/internal/telephony/OplusTxInfo;)V
    .locals 0
    .param p1, "mRxChain0Valid"    # I
    .param p2, "mRxChain0"    # Lcom/android/internal/telephony/OplusRxChainInfo;
    .param p3, "mRxChain1Valid"    # I
    .param p4, "mRxChain1"    # Lcom/android/internal/telephony/OplusRxChainInfo;
    .param p5, "mRxChain2Valid"    # I
    .param p6, "mRxChain2"    # Lcom/android/internal/telephony/OplusRxChainInfo;
    .param p7, "mRxChain3Valid"    # I
    .param p8, "mRxChain3"    # Lcom/android/internal/telephony/OplusRxChainInfo;
    .param p9, "mTxValid"    # I
    .param p10, "mTx"    # Lcom/android/internal/telephony/OplusTxInfo;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Lcom/android/internal/telephony/OplusTxRxInfo;->mRxChain0Valid:I

    .line 43
    iput-object p2, p0, Lcom/android/internal/telephony/OplusTxRxInfo;->mRxChain0:Lcom/android/internal/telephony/OplusRxChainInfo;

    .line 44
    iput p3, p0, Lcom/android/internal/telephony/OplusTxRxInfo;->mRxChain1Valid:I

    .line 45
    iput-object p4, p0, Lcom/android/internal/telephony/OplusTxRxInfo;->mRxChain1:Lcom/android/internal/telephony/OplusRxChainInfo;

    .line 46
    iput p5, p0, Lcom/android/internal/telephony/OplusTxRxInfo;->mRxChain2Valid:I

    .line 47
    iput-object p6, p0, Lcom/android/internal/telephony/OplusTxRxInfo;->mRxChain2:Lcom/android/internal/telephony/OplusRxChainInfo;

    .line 48
    iput p7, p0, Lcom/android/internal/telephony/OplusTxRxInfo;->mRxChain3Valid:I

    .line 49
    iput-object p8, p0, Lcom/android/internal/telephony/OplusTxRxInfo;->mRxChain3:Lcom/android/internal/telephony/OplusRxChainInfo;

    .line 50
    iput p9, p0, Lcom/android/internal/telephony/OplusTxRxInfo;->mTxValid:I

    .line 51
    iput-object p10, p0, Lcom/android/internal/telephony/OplusTxRxInfo;->mTx:Lcom/android/internal/telephony/OplusTxInfo;

    .line 52
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/OplusTxRxInfo;->mRxChain0Valid:I

    .line 56
    const-class v0, Lcom/android/internal/telephony/OplusRxChainInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/OplusRxChainInfo;

    iput-object v0, p0, Lcom/android/internal/telephony/OplusTxRxInfo;->mRxChain0:Lcom/android/internal/telephony/OplusRxChainInfo;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/OplusTxRxInfo;->mRxChain1Valid:I

    .line 58
    const-class v0, Lcom/android/internal/telephony/OplusRxChainInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/OplusRxChainInfo;

    iput-object v0, p0, Lcom/android/internal/telephony/OplusTxRxInfo;->mRxChain1:Lcom/android/internal/telephony/OplusRxChainInfo;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/OplusTxRxInfo;->mRxChain2Valid:I

    .line 60
    const-class v0, Lcom/android/internal/telephony/OplusRxChainInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/OplusRxChainInfo;

    iput-object v0, p0, Lcom/android/internal/telephony/OplusTxRxInfo;->mRxChain2:Lcom/android/internal/telephony/OplusRxChainInfo;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/OplusTxRxInfo;->mRxChain3Valid:I

    .line 62
    const-class v0, Lcom/android/internal/telephony/OplusRxChainInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/OplusRxChainInfo;

    iput-object v0, p0, Lcom/android/internal/telephony/OplusTxRxInfo;->mRxChain3:Lcom/android/internal/telephony/OplusRxChainInfo;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/OplusTxRxInfo;->mTxValid:I

    .line 64
    const-class v0, Lcom/android/internal/telephony/OplusTxInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/OplusTxInfo;

    iput-object v0, p0, Lcom/android/internal/telephony/OplusTxRxInfo;->mTx:Lcom/android/internal/telephony/OplusTxInfo;

    .line 65
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getRxChain0()Lcom/android/internal/telephony/OplusRxChainInfo;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/android/internal/telephony/OplusTxRxInfo;->mRxChain0:Lcom/android/internal/telephony/OplusRxChainInfo;

    return-object v0
.end method

.method public blacklist getRxChain0Valid()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/android/internal/telephony/OplusTxRxInfo;->mRxChain0Valid:I

    return v0
.end method

.method public blacklist getRxChain1()Lcom/android/internal/telephony/OplusRxChainInfo;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/android/internal/telephony/OplusTxRxInfo;->mRxChain1:Lcom/android/internal/telephony/OplusRxChainInfo;

    return-object v0
.end method

.method public blacklist getRxChain1Valid()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/android/internal/telephony/OplusTxRxInfo;->mRxChain1Valid:I

    return v0
.end method

.method public blacklist getRxChain2()Lcom/android/internal/telephony/OplusRxChainInfo;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/android/internal/telephony/OplusTxRxInfo;->mRxChain2:Lcom/android/internal/telephony/OplusRxChainInfo;

    return-object v0
.end method

.method public blacklist getRxChain2Valid()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/android/internal/telephony/OplusTxRxInfo;->mRxChain2Valid:I

    return v0
.end method

.method public blacklist getRxChain3()Lcom/android/internal/telephony/OplusRxChainInfo;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/android/internal/telephony/OplusTxRxInfo;->mRxChain3:Lcom/android/internal/telephony/OplusRxChainInfo;

    return-object v0
.end method

.method public blacklist getRxChain3Valid()I
    .locals 1

    .line 82
    iget v0, p0, Lcom/android/internal/telephony/OplusTxRxInfo;->mRxChain3Valid:I

    return v0
.end method

.method public blacklist getTx()Lcom/android/internal/telephony/OplusTxInfo;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/android/internal/telephony/OplusTxRxInfo;->mTx:Lcom/android/internal/telephony/OplusTxInfo;

    return-object v0
.end method

.method public blacklist getTxValid()I
    .locals 1

    .line 87
    iget v0, p0, Lcom/android/internal/telephony/OplusTxRxInfo;->mTxValid:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRxChain0Valid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/OplusTxRxInfo;->mRxChain0Valid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRxChain0=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/OplusTxRxInfo;->mRxChain0:Lcom/android/internal/telephony/OplusRxChainInfo;

    invoke-virtual {v1}, Lcom/android/internal/telephony/OplusRxChainInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), mRxChain1Valid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/OplusTxRxInfo;->mRxChain1Valid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRxChain1=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/OplusTxRxInfo;->mRxChain1:Lcom/android/internal/telephony/OplusRxChainInfo;

    .line 119
    invoke-virtual {v1}, Lcom/android/internal/telephony/OplusRxChainInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "),"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/OplusTxRxInfo;->mRxChain2Valid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRxChain2=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/OplusTxRxInfo;->mRxChain2:Lcom/android/internal/telephony/OplusRxChainInfo;

    .line 120
    invoke-virtual {v1}, Lcom/android/internal/telephony/OplusRxChainInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), mRxChain3Valid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/OplusTxRxInfo;->mRxChain3Valid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRxChain3=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/OplusTxRxInfo;->mRxChain3:Lcom/android/internal/telephony/OplusRxChainInfo;

    .line 121
    invoke-virtual {v1}, Lcom/android/internal/telephony/OplusRxChainInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "),mTxValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/OplusTxRxInfo;->mTxValid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTx=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/OplusTxRxInfo;->mTx:Lcom/android/internal/telephony/OplusTxInfo;

    .line 122
    invoke-virtual {v1}, Lcom/android/internal/telephony/OplusTxInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 117
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .line 132
    iget v0, p0, Lcom/android/internal/telephony/OplusTxRxInfo;->mRxChain0Valid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    iget-object v0, p0, Lcom/android/internal/telephony/OplusTxRxInfo;->mRxChain0:Lcom/android/internal/telephony/OplusRxChainInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 134
    iget v0, p0, Lcom/android/internal/telephony/OplusTxRxInfo;->mRxChain1Valid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    iget-object v0, p0, Lcom/android/internal/telephony/OplusTxRxInfo;->mRxChain1:Lcom/android/internal/telephony/OplusRxChainInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 136
    iget v0, p0, Lcom/android/internal/telephony/OplusTxRxInfo;->mRxChain2Valid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    iget-object v0, p0, Lcom/android/internal/telephony/OplusTxRxInfo;->mRxChain2:Lcom/android/internal/telephony/OplusRxChainInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 138
    iget v0, p0, Lcom/android/internal/telephony/OplusTxRxInfo;->mRxChain3Valid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    iget-object v0, p0, Lcom/android/internal/telephony/OplusTxRxInfo;->mRxChain3:Lcom/android/internal/telephony/OplusRxChainInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 140
    iget v0, p0, Lcom/android/internal/telephony/OplusTxRxInfo;->mTxValid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    iget-object v0, p0, Lcom/android/internal/telephony/OplusTxRxInfo;->mTx:Lcom/android/internal/telephony/OplusTxInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 142
    return-void
.end method
