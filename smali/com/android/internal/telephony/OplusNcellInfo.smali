.class public Lcom/android/internal/telephony/OplusNcellInfo;
.super Ljava/lang/Object;
.source "OplusNcellInfo.java"


# instance fields
.field private blacklist mArfcn:I

.field private blacklist mRat:I

.field private blacklist mRssi:I


# direct methods
.method public constructor blacklist <init>(III)V
    .locals 1
    .param p1, "rat"    # I
    .param p2, "arfcn"    # I
    .param p3, "rssi"    # I

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/OplusNcellInfo;->mRat:I

    .line 13
    iput p1, p0, Lcom/android/internal/telephony/OplusNcellInfo;->mRat:I

    .line 14
    iput p2, p0, Lcom/android/internal/telephony/OplusNcellInfo;->mArfcn:I

    .line 15
    iput p3, p0, Lcom/android/internal/telephony/OplusNcellInfo;->mRssi:I

    .line 16
    return-void
.end method


# virtual methods
.method public blacklist getArfcn()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/android/internal/telephony/OplusNcellInfo;->mArfcn:I

    return v0
.end method

.method public blacklist getRat()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/android/internal/telephony/OplusNcellInfo;->mRat:I

    return v0
.end method

.method public blacklist getRssi()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/android/internal/telephony/OplusNcellInfo;->mRssi:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/OplusNcellInfo;->mRat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/telephony/OplusNcellInfo;->mArfcn:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/OplusNcellInfo;->mRssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
