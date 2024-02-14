.class public Lcom/android/internal/telephony/OplusRadioInfo;
.super Ljava/lang/Object;
.source "OplusRadioInfo.java"


# instance fields
.field private blacklist mArfcn:I

.field private blacklist mBand:I

.field private blacklist mCellId:I

.field private blacklist mLac:I

.field private blacklist mMcc:I

.field private blacklist mMnc:I

.field private blacklist mNcells:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/OplusNcellInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRat:I

.field private blacklist mRrstatus:I

.field private blacklist mRssi:I

.field private blacklist mSinr:I

.field private blacklist mTxpower:I


# direct methods
.method public constructor blacklist <init>(IIIIIIIIIIILjava/util/ArrayList;)V
    .locals 1
    .param p1, "rat"    # I
    .param p2, "mcc"    # I
    .param p3, "mnc"    # I
    .param p4, "lac"    # I
    .param p5, "cellId"    # I
    .param p6, "arfcn"    # I
    .param p7, "band"    # I
    .param p8, "rssi"    # I
    .param p9, "sinr"    # I
    .param p10, "rrstatus"    # I
    .param p11, "txpower"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIIIIIIII",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/OplusNcellInfo;",
            ">;)V"
        }
    .end annotation

    .line 26
    .local p12, "ncells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/OplusNcellInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/OplusRadioInfo;->mNcells:Ljava/util/ArrayList;

    .line 27
    iput p1, p0, Lcom/android/internal/telephony/OplusRadioInfo;->mRat:I

    .line 28
    iput p2, p0, Lcom/android/internal/telephony/OplusRadioInfo;->mMcc:I

    .line 29
    iput p3, p0, Lcom/android/internal/telephony/OplusRadioInfo;->mMnc:I

    .line 30
    iput p4, p0, Lcom/android/internal/telephony/OplusRadioInfo;->mLac:I

    .line 31
    iput p5, p0, Lcom/android/internal/telephony/OplusRadioInfo;->mCellId:I

    .line 32
    iput p6, p0, Lcom/android/internal/telephony/OplusRadioInfo;->mArfcn:I

    .line 33
    iput p7, p0, Lcom/android/internal/telephony/OplusRadioInfo;->mBand:I

    .line 34
    iput p8, p0, Lcom/android/internal/telephony/OplusRadioInfo;->mRssi:I

    .line 35
    iput p9, p0, Lcom/android/internal/telephony/OplusRadioInfo;->mSinr:I

    .line 36
    iput p10, p0, Lcom/android/internal/telephony/OplusRadioInfo;->mRrstatus:I

    .line 37
    iput p11, p0, Lcom/android/internal/telephony/OplusRadioInfo;->mTxpower:I

    .line 38
    iput-object p12, p0, Lcom/android/internal/telephony/OplusRadioInfo;->mNcells:Ljava/util/ArrayList;

    .line 39
    return-void
.end method


# virtual methods
.method public blacklist getArfcn()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/android/internal/telephony/OplusRadioInfo;->mArfcn:I

    return v0
.end method

.method public blacklist getBand()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/android/internal/telephony/OplusRadioInfo;->mBand:I

    return v0
.end method

.method public blacklist getCellId()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/android/internal/telephony/OplusRadioInfo;->mCellId:I

    return v0
.end method

.method public blacklist getLac()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/android/internal/telephony/OplusRadioInfo;->mLac:I

    return v0
.end method

.method public blacklist getMcc()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/android/internal/telephony/OplusRadioInfo;->mMcc:I

    return v0
.end method

.method public blacklist getMnc()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/android/internal/telephony/OplusRadioInfo;->mMnc:I

    return v0
.end method

.method public blacklist getNcells()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/OplusNcellInfo;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/android/internal/telephony/OplusRadioInfo;->mNcells:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist getRat()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/android/internal/telephony/OplusRadioInfo;->mRat:I

    return v0
.end method

.method public blacklist getRrStatus()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/android/internal/telephony/OplusRadioInfo;->mRrstatus:I

    return v0
.end method

.method public blacklist getRssi()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/android/internal/telephony/OplusRadioInfo;->mRssi:I

    return v0
.end method

.method public blacklist getSinr()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/android/internal/telephony/OplusRadioInfo;->mSinr:I

    return v0
.end method

.method public blacklist getTxpower()I
    .locals 1

    .line 82
    iget v0, p0, Lcom/android/internal/telephony/OplusRadioInfo;->mTxpower:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/OplusRadioInfo;->mNcells:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/telephony/OplusRadioInfo;->mNcells:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/OplusNcellInfo;

    invoke-virtual {v3}, Lcom/android/internal/telephony/OplusNcellInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 98
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/OplusRadioInfo;->mRat:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mcc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/OplusRadioInfo;->mMcc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mnc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/OplusRadioInfo;->mMnc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", lac="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/OplusRadioInfo;->mLac:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ci="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/OplusRadioInfo;->mCellId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", arfcn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/OplusRadioInfo;->mArfcn:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", band="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/OplusRadioInfo;->mBand:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rssi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/OplusRadioInfo;->mRssi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sinr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/OplusRadioInfo;->mSinr:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rrstatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/OplusRadioInfo;->mRrstatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",txpower="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/OplusRadioInfo;->mTxpower:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 100
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 98
    return-object v1
.end method
