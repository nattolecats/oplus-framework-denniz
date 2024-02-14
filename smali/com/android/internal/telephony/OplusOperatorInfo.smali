.class public Lcom/android/internal/telephony/OplusOperatorInfo;
.super Lcom/android/internal/telephony/OperatorInfo;
.source "OplusOperatorInfo.java"


# instance fields
.field private blacklist mNetworktype:Ljava/lang/String;

.field private blacklist networktype:Ljava/lang/String;

.field private blacklist statestring:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/OperatorInfo$State;Ljava/lang/String;)V
    .locals 0
    .param p1, "operatorAlphaLong"    # Ljava/lang/String;
    .param p2, "operatorAlphaShort"    # Ljava/lang/String;
    .param p3, "operatorNumeric"    # Ljava/lang/String;
    .param p4, "state"    # Lcom/android/internal/telephony/OperatorInfo$State;
    .param p5, "networktype"    # Ljava/lang/String;

    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/OperatorInfo$State;)V

    .line 41
    iput-object p5, p0, Lcom/android/internal/telephony/OplusOperatorInfo;->mNetworktype:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "operatorAlphaLong"    # Ljava/lang/String;
    .param p2, "operatorAlphaShort"    # Ljava/lang/String;
    .param p3, "operatorNumeric"    # Ljava/lang/String;
    .param p4, "stateString"    # Ljava/lang/String;
    .param p5, "networktype"    # Ljava/lang/String;

    .line 49
    nop

    .line 50
    invoke-static {p4}, Lcom/android/internal/telephony/OplusOperatorInfo;->OplusRILStateToState(Ljava/lang/String;)Lcom/android/internal/telephony/OperatorInfo$State;

    move-result-object v4

    .line 49
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/OplusOperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/OperatorInfo$State;Ljava/lang/String;)V

    .line 51
    iput-object p4, p0, Lcom/android/internal/telephony/OplusOperatorInfo;->statestring:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public static greylist OplusRILStateToState(Ljava/lang/String;)Lcom/android/internal/telephony/OperatorInfo$State;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .line 87
    const-string v0, "unknown"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    sget-object v0, Lcom/android/internal/telephony/OperatorInfo$State;->UNKNOWN:Lcom/android/internal/telephony/OperatorInfo$State;

    return-object v0

    .line 89
    :cond_0
    const-string v0, "available"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    sget-object v0, Lcom/android/internal/telephony/OperatorInfo$State;->AVAILABLE:Lcom/android/internal/telephony/OperatorInfo$State;

    return-object v0

    .line 91
    :cond_1
    const-string v0, "current"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 92
    sget-object v0, Lcom/android/internal/telephony/OperatorInfo$State;->CURRENT:Lcom/android/internal/telephony/OperatorInfo$State;

    return-object v0

    .line 93
    :cond_2
    const-string v0, "forbidden"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 94
    sget-object v0, Lcom/android/internal/telephony/OperatorInfo$State;->FORBIDDEN:Lcom/android/internal/telephony/OperatorInfo$State;

    return-object v0

    .line 96
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RIL impl error: Invalid network state \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist getNetworktype()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/android/internal/telephony/OplusOperatorInfo;->mNetworktype:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getStatestring()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/android/internal/telephony/OplusOperatorInfo;->statestring:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist setNetworktype(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .line 68
    iput-object p1, p0, Lcom/android/internal/telephony/OplusOperatorInfo;->mNetworktype:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public blacklist setNetworktypeFromOperatorNumeric()V
    .locals 3

    .line 75
    invoke-virtual {p0}, Lcom/android/internal/telephony/OplusOperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "strAlphaLong":Ljava/lang/String;
    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "networktype":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/OplusOperatorInfo;->setNetworktype(Ljava/lang/String;)V

    .line 80
    .end local v1    # "networktype":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OperatorInfo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/OplusOperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 104
    invoke-virtual {p0}, Lcom/android/internal/telephony/OplusOperatorInfo;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 105
    invoke-virtual {p0}, Lcom/android/internal/telephony/OplusOperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/OplusOperatorInfo;->statestring:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/OplusOperatorInfo;->mNetworktype:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    return-object v0
.end method
